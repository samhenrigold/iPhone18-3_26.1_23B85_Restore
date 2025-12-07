id sub_225BC971C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v25 = 0;
    v26 = 1;
    v4 = v3;
    sub_225CCEC54();
  }

  v5 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_firstName];
  *v5 = 0;
  v5[8] = 1;
  v6 = sub_225CCEF14();
  if (v6)
  {
    v25 = 0;
    v26 = 1;
    v7 = v6;
    sub_225CCEC54();
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_lastName];
  *v8 = 0;
  v8[8] = 1;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v25 = 0;
    v26 = 1;
    v10 = v9;
    sub_225CCEC54();
  }

  v11 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_state];
  *v11 = 0;
  v11[8] = 1;
  v12 = sub_225CCEF14();
  if (v12)
  {
    v25 = 0;
    v26 = 1;
    v13 = v12;
    sub_225CCEC54();
  }

  v14 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_houseNumber];
  *v14 = 0;
  v14[8] = 1;
  v15 = sub_225CCEF14();
  if (v15)
  {
    v25 = 0;
    v26 = 1;
    v16 = v15;
    sub_225CCEC54();
  }

  v17 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_street];
  *v17 = 0;
  v17[8] = 1;
  v18 = sub_225CCEF14();
  if (v18)
  {
    v25 = 0;
    v26 = 1;
    v19 = v18;
    sub_225CCEC54();
  }

  v20 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_dob];
  *v20 = 0;
  v20[8] = 1;
  v21 = sub_225CCEF14();
  if (v21)
  {
    v25 = 0;
    v26 = 1;
    v22 = v21;
    sub_225CCEC54();
  }

  v23 = &v1[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_postalCode];
  *v23 = 0;
  v23[8] = 1;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init, v25, v26);
}

void keypath_getTm(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 4);
  *a3 = *v4;
  *(a3 + 4) = v5;
}

void keypath_setTm(int *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 4) = v6;
}

double keypath_get_96Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void keypath_get_106Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_107Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

double keypath_get_114Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

void keypath_get_100Tm(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void keypath_set_101Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

void keypath_set_163Tm(int *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = (*a2 + *a5);
  swift_beginAccess();
  *v6 = v5;
}

uint64_t dispatch thunk of FuzzyMatchAssessment.__allocating_init(firstName:lastName:state:houseNumber:street:dob:postalCode:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a12) = a12 & 1;
  return (*(v13 + 136))(a1, a2 & 1, a3, a4 & 1, a5, a6 & 1, a7, a8 & 1, a9, a10, a11, a12, a13);
}

uint64_t IQComplexSignal.debugDescription.getter()
{
  v1 = *(v0 + 32);
  sub_225CCF204();

  strcpy(v6, "identifier: ");
  v2 = IQACode.toString.getter();
  MEMORY[0x22AA6CE70](v2);

  MEMORY[0x22AA6CE70](0x7469726F6972700ALL, 0xEB00000000203A79);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0x736C616E6769730ALL, 0xEA0000000000203ALL);
  v4 = sub_225BBE6A4(v1);
  MEMORY[0x22AA6CE70](v4);

  return v6[0];
}

uint64_t IQSignal.debugDescription.getter()
{
  v1 = *(v0 + 17);
  MEMORY[0x22AA6CE70](40, 0xE100000000000000);
  v2 = IQCType.toString.getter();
  MEMORY[0x22AA6CE70](v2);

  MEMORY[0x22AA6CE70](32, 0xE100000000000000);
  v3 = 0xE500000000000000;
  v4 = 0x6C61757165;
  v5 = 0xEC0000006C617571;
  v6 = 0x4572657461657267;
  v7 = 0xE700000000000000;
  if (v1 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v8 = 0x72657461657267;
  if (v1 != 3)
  {
    v8 = 0x617571457373656CLL;
    v7 = 0xE90000000000006CLL;
  }

  if (v1 <= 4)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61757145746F6ELL;
  if (v1 != 1)
  {
    v10 = 1936942444;
    v9 = 0xE400000000000000;
  }

  if (v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v1 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x22AA6CE70](v11, v12);

  MEMORY[0x22AA6CE70](32, 0xE100000000000000);
  sub_225CCEBD4();
  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  return 0;
}

uint64_t IQOCRMatchSignal.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_225CCF204();

  v3 = sub_225CCE564();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0x6172656C6F74202CLL, 0xED0000203A65636ELL);
  v4 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x22AA6CE70](v1, v2);
  return 0x203A64726F77;
}

uint64_t IQOCRMatchSignal.word.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IQOCRMatchSignal.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall IQOCRMatchSignal.init(word:tolerance:identifier:)(CoreIDVShared::IQOCRMatchSignal *__return_ptr retstr, Swift::String word, Swift::Int tolerance, Swift::String identifier)
{
  retstr->word = word;
  retstr->tolerance = tolerance;
  retstr->identifier = identifier;
}

uint64_t sub_225BCD41C()
{
  v1 = 0x636E6172656C6F74;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1685221239;
  }
}

uint64_t sub_225BCD478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225BCF210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225BCD4A0(uint64_t a1)
{
  v2 = sub_225BCE0E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BCD4DC(uint64_t a1)
{
  v2 = sub_225BCE0E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQOCRMatchSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAB0, &qword_225CF89E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE0E0();
  sub_225CCFCE4();
  v13 = 0;
  v8 = v10[3];
  sub_225CCF784();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_225CCF7C4();
  v11 = 2;
  sub_225CCF784();
  return (*(v4 + 8))(v6, v3);
}

uint64_t IQOCRMatchSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAC0, &qword_225CF89E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE0E0();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  v9 = sub_225CCF684();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_225CCF6C4();
  v21 = 2;
  v13 = sub_225CCF684();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t IQComplexSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2259F6128(v2, v3, v4);
}

__n128 IQComplexSignal.init(identifier:priority:signals:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t sub_225BCD974()
{
  v1 = 0x797469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x736C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_225BCD9D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225BCF338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225BCD9FC(uint64_t a1)
{
  v2 = sub_225BCE134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BCDA38(uint64_t a1)
{
  v2 = sub_225BCE134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQComplexSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAC8, &qword_225CF89F0);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v8;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259F6128(v6, v7, v9);
  sub_225BCE134();
  v10 = v3;
  sub_225CCFCE4();
  v20 = v6;
  v21 = v7;
  v22 = v9;
  v23 = 0;
  sub_225BCE188();
  v11 = v18;
  sub_225CCF7E4();
  sub_2259F6140(v20, v21, v22);
  if (v11)
  {
    return (*(v19 + 8))(v5, v3);
  }

  v13 = v16;
  v14 = v19;
  LOBYTE(v20) = 1;
  sub_225CCF7C4();
  v20 = v13;
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAE0, &qword_225CF89F8);
  sub_225BCE284(&qword_27D73FAE8, sub_225BCE1DC, MEMORY[0x277D83948]);
  sub_225CCF7E4();
  return (*(v14 + 8))(v5, v10);
}

uint64_t IQComplexSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAF8, &qword_225CF8A00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE134();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  sub_225BCE230();
  sub_225CCF6E4();
  v10 = v16;
  v9 = v17;
  v19 = v18;
  LOBYTE(v16) = 1;
  v15 = sub_225CCF6C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAE0, &qword_225CF89F8);
  v20 = 2;
  sub_225BCE284(&qword_27D73FB08, sub_225BCE2FC, MEMORY[0x277D83978]);
  sub_225CCF6E4();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  v12 = v16;
  v13 = v10;
  *a2 = v10;
  *(a2 + 8) = v9;
  LOBYTE(v10) = v19;
  *(a2 + 16) = v19;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  sub_2259F6128(v13, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2259F6140(v13, v9, v10);
}

double IQSignal.type.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_225BB4C48(v2, v3, v4);
}

uint64_t IQSignal.init(type:comparator:threshold:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *(result + 16);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  *(a3 + 20) = a4;
  return result;
}

uint64_t IQComparator.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C61757165;
  v3 = 0x4572657461657267;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x72657461657267;
  if (v1 != 3)
  {
    v4 = 0x617571457373656CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C61757145746F6ELL;
  if (v1 != 1)
  {
    v5 = 1936942444;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_225BCE0E0()
{
  result = qword_27D73FAB8;
  if (!qword_27D73FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAB8);
  }

  return result;
}

unint64_t sub_225BCE134()
{
  result = qword_27D73FAD0;
  if (!qword_27D73FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAD0);
  }

  return result;
}

unint64_t sub_225BCE188()
{
  result = qword_27D73FAD8;
  if (!qword_27D73FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAD8);
  }

  return result;
}

unint64_t sub_225BCE1DC()
{
  result = qword_27D73FAF0;
  if (!qword_27D73FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAF0);
  }

  return result;
}

unint64_t sub_225BCE230()
{
  result = qword_27D73FB00;
  if (!qword_27D73FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB00);
  }

  return result;
}

uint64_t sub_225BCE284(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FAE0, &qword_225CF89F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225BCE2FC()
{
  result = qword_27D73FB10;
  if (!qword_27D73FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB10);
  }

  return result;
}

uint64_t sub_225BCE350()
{
  v1 = 0x74617261706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_225BCE3AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225BCF458(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225BCE3D4(uint64_t a1)
{
  v2 = sub_225BCE648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BCE410(uint64_t a1)
{
  v2 = sub_225BCE648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FB18, &qword_225CF8A08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  HIDWORD(v16) = *(v1 + 17);
  v9 = a1[3];
  v10 = *(v1 + 16);
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v9);
  sub_225BB4C48(v7, v8, v10);
  sub_225BCE648();
  sub_225CCFCE4();
  v19 = v7;
  v20 = v8;
  v21 = v10;
  v18 = 0;
  sub_225BB4934();
  v14 = v17;
  sub_225CCF7E4();
  sub_225BB4C60(v19, v20, v21);
  if (!v14)
  {
    LOBYTE(v19) = BYTE4(v16);
    v18 = 1;
    sub_225BCE69C();
    sub_225CCF7E4();
    LOBYTE(v19) = 2;
    sub_225CCF7B4();
  }

  return (*(v4 + 8))(v6, v13);
}

unint64_t sub_225BCE648()
{
  result = qword_27D73FB20;
  if (!qword_27D73FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB20);
  }

  return result;
}

unint64_t sub_225BCE69C()
{
  result = qword_27D73FB28;
  if (!qword_27D73FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB28);
  }

  return result;
}

uint64_t IQSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FB30, &qword_225CF8A10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE648();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  sub_225BB4AB4();
  sub_225CCF6E4();
  v10 = v20;
  v9 = v21;
  v18 = v22;
  v19 = 1;
  sub_225BCE970();
  sub_225CCF6E4();
  v17 = v20;
  LOBYTE(v20) = 2;
  sub_225CCF6B4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v14 = v10;
  *a2 = v10;
  *(a2 + 8) = v9;
  v15 = v17;
  LOBYTE(v10) = v18;
  *(a2 + 16) = v18;
  *(a2 + 17) = v15;
  *(a2 + 20) = v12;
  sub_225BB4C48(v14, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225BB4C60(v14, v9, v10);
}

unint64_t sub_225BCE970()
{
  result = qword_27D73FB38;
  if (!qword_27D73FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB38);
  }

  return result;
}

CoreIDVShared::IQComparator_optional __swiftcall IQComparator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_225BCEA60()
{
  result = qword_27D73FB40;
  if (!qword_27D73FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB40);
  }

  return result;
}

uint64_t sub_225BCEAC0(uint64_t a1)
{
  sub_225CCE5B4();
}

void sub_225BCEBE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C61757165;
  v5 = 0xEC0000006C617571;
  v6 = 0x4572657461657267;
  v7 = 0xE700000000000000;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v8 = 0x72657461657267;
  if (v2 != 3)
  {
    v8 = 0x617571457373656CLL;
    v7 = 0xE90000000000006CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61757145746F6ELL;
  if (v2 != 1)
  {
    v10 = 1936942444;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_225BCED7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225BCEDC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225BCEE1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 24))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_225BCEE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_225BCEEFC()
{
  result = qword_27D73FB48;
  if (!qword_27D73FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB48);
  }

  return result;
}

unint64_t sub_225BCEF54()
{
  result = qword_27D73FB50;
  if (!qword_27D73FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB50);
  }

  return result;
}

unint64_t sub_225BCEFAC()
{
  result = qword_27D73FB58;
  if (!qword_27D73FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB58);
  }

  return result;
}

unint64_t sub_225BCF004()
{
  result = qword_27D73FB60;
  if (!qword_27D73FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB60);
  }

  return result;
}

unint64_t sub_225BCF05C()
{
  result = qword_27D73FB68;
  if (!qword_27D73FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB68);
  }

  return result;
}

unint64_t sub_225BCF0B4()
{
  result = qword_27D73FB70;
  if (!qword_27D73FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB70);
  }

  return result;
}

unint64_t sub_225BCF10C()
{
  result = qword_27D73FB78;
  if (!qword_27D73FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB78);
  }

  return result;
}

unint64_t sub_225BCF164()
{
  result = qword_27D73FB80;
  if (!qword_27D73FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB80);
  }

  return result;
}

unint64_t sub_225BCF1BC()
{
  result = qword_27D73FB88;
  if (!qword_27D73FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB88);
  }

  return result;
}

uint64_t sub_225BCF210(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1685221239 && a2 == 0xE400000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6172656C6F74 && a2 == 0xE900000000000065 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_225BCF338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_225BCF458(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617261706D6F63 && a2 == 0xEA0000000000726FLL || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_225BCF580()
{
  result = qword_27D73FB90;
  if (!qword_27D73FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB90);
  }

  return result;
}

uint64_t PDF417ParsedData.docType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDF417ParsedData.docType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PDF417ParsedData.issuer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PDF417ParsedData.issuer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PDF417ParsedData.aamvaVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PDF417ParsedData.aamvaVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PDF417ParsedData.vehicleClass.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PDF417ParsedData.vehicleClass.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PDF417ParsedData.restrictionCodes.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PDF417ParsedData.restrictionCodes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PDF417ParsedData.endorsementCodes.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t PDF417ParsedData.endorsementCodes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t PDF417ParsedData.lastName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PDF417ParsedData.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t PDF417ParsedData.firstName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t PDF417ParsedData.firstName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t PDF417ParsedData.middleName.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t PDF417ParsedData.middleName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t PDF417ParsedData.gender.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t PDF417ParsedData.gender.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t PDF417ParsedData.eyeColor.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t PDF417ParsedData.eyeColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t PDF417ParsedData.height.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t PDF417ParsedData.height.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t PDF417ParsedData.street1.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t PDF417ParsedData.street1.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t PDF417ParsedData.city.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t PDF417ParsedData.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t PDF417ParsedData.state.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t PDF417ParsedData.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t PDF417ParsedData.postalCode.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t PDF417ParsedData.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t PDF417ParsedData.idNumber.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t PDF417ParsedData.idNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t PDF417ParsedData.documentDiscriminator.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t PDF417ParsedData.documentDiscriminator.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t PDF417ParsedData.country.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t PDF417ParsedData.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t PDF417ParsedData.lastNameTruncation.getter()
{
  v1 = *(v0 + 320);

  return v1;
}

uint64_t PDF417ParsedData.lastNameTruncation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return result;
}

uint64_t PDF417ParsedData.firstNameTruncation.getter()
{
  v1 = *(v0 + 336);

  return v1;
}

uint64_t PDF417ParsedData.firstNameTruncation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 336) = a1;
  *(v2 + 344) = a2;
  return result;
}

uint64_t PDF417ParsedData.middleNameTruncation.getter()
{
  v1 = *(v0 + 352);

  return v1;
}

uint64_t PDF417ParsedData.middleNameTruncation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  return result;
}

uint64_t PDF417ParsedData.expirationDate.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

uint64_t PDF417ParsedData.expirationDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return result;
}

uint64_t PDF417ParsedData.issueDate.getter()
{
  v1 = *(v0 + 384);

  return v1;
}

uint64_t PDF417ParsedData.issueDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 384) = a1;
  *(v2 + 392) = a2;
  return result;
}

uint64_t PDF417ParsedData.dob.getter()
{
  v1 = *(v0 + 400);

  return v1;
}

uint64_t PDF417ParsedData.dob.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
  return result;
}

uint64_t PDF417ParsedData.street2.getter()
{
  v1 = *(v0 + 416);

  return v1;
}

uint64_t PDF417ParsedData.street2.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
  return result;
}

uint64_t PDF417ParsedData.hairColor.getter()
{
  v1 = *(v0 + 432);

  return v1;
}

uint64_t PDF417ParsedData.hairColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 432) = a1;
  *(v2 + 440) = a2;
  return result;
}

uint64_t PDF417ParsedData.placeOfBirth.getter()
{
  v1 = *(v0 + 448);

  return v1;
}

uint64_t PDF417ParsedData.placeOfBirth.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 448) = a1;
  *(v2 + 456) = a2;
  return result;
}

uint64_t PDF417ParsedData.auditInfo.getter()
{
  v1 = *(v0 + 464);

  return v1;
}

uint64_t PDF417ParsedData.auditInfo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
  return result;
}

uint64_t PDF417ParsedData.inventoryControlNumber.getter()
{
  v1 = *(v0 + 480);

  return v1;
}

uint64_t PDF417ParsedData.inventoryControlNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return result;
}

uint64_t PDF417ParsedData.lastNameAlias.getter()
{
  v1 = *(v0 + 496);

  return v1;
}

uint64_t PDF417ParsedData.lastNameAlias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 496) = a1;
  *(v2 + 504) = a2;
  return result;
}

uint64_t PDF417ParsedData.firstNameAlias.getter()
{
  v1 = *(v0 + 512);

  return v1;
}

uint64_t PDF417ParsedData.firstNameAlias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
  return result;
}

uint64_t PDF417ParsedData.suffixNameAlias.getter()
{
  v1 = *(v0 + 528);

  return v1;
}

uint64_t PDF417ParsedData.suffixNameAlias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 528) = a1;
  *(v2 + 536) = a2;
  return result;
}

uint64_t PDF417ParsedData.suffix.getter()
{
  v1 = *(v0 + 544);

  return v1;
}

uint64_t PDF417ParsedData.suffix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 544) = a1;
  *(v2 + 552) = a2;
  return result;
}

uint64_t PDF417ParsedData.weightRange.getter()
{
  v1 = *(v0 + 560);

  return v1;
}

uint64_t PDF417ParsedData.weightRange.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 560) = a1;
  *(v2 + 568) = a2;
  return result;
}

uint64_t PDF417ParsedData.ethnicity.getter()
{
  v1 = *(v0 + 576);

  return v1;
}

uint64_t PDF417ParsedData.ethnicity.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 576) = a1;
  *(v2 + 584) = a2;
  return result;
}

uint64_t PDF417ParsedData.standardVehicleClassification.getter()
{
  v1 = *(v0 + 592);

  return v1;
}

uint64_t PDF417ParsedData.standardVehicleClassification.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 592) = a1;
  *(v2 + 600) = a2;
  return result;
}

uint64_t PDF417ParsedData.standardEndorsementCode.getter()
{
  v1 = *(v0 + 608);

  return v1;
}

uint64_t PDF417ParsedData.standardEndorsementCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 608) = a1;
  *(v2 + 616) = a2;
  return result;
}

uint64_t PDF417ParsedData.standardRestrictionCode.getter()
{
  v1 = *(v0 + 624);

  return v1;
}

uint64_t PDF417ParsedData.standardRestrictionCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 624) = a1;
  *(v2 + 632) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionVehicleClassification.getter()
{
  v1 = *(v0 + 640);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionVehicleClassification.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 640) = a1;
  *(v2 + 648) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionEndorsementCode.getter()
{
  v1 = *(v0 + 656);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionEndorsementCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 656) = a1;
  *(v2 + 664) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionRestrictionCode.getter()
{
  v1 = *(v0 + 672);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionRestrictionCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 672) = a1;
  *(v2 + 680) = a2;
  return result;
}

uint64_t PDF417ParsedData.complianceType.getter()
{
  v1 = *(v0 + 688);

  return v1;
}

uint64_t PDF417ParsedData.complianceType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 688) = a1;
  *(v2 + 696) = a2;
  return result;
}

uint64_t PDF417ParsedData.limitedDurationDocument.getter()
{
  v1 = *(v0 + 704);

  return v1;
}

uint64_t PDF417ParsedData.limitedDurationDocument.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 704) = a1;
  *(v2 + 712) = a2;
  return result;
}

uint64_t PDF417ParsedData.weightPounds.getter()
{
  v1 = *(v0 + 720);

  return v1;
}

uint64_t PDF417ParsedData.weightPounds.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 720) = a1;
  *(v2 + 728) = a2;
  return result;
}

uint64_t PDF417ParsedData.weightKilograms.getter()
{
  v1 = *(v0 + 736);

  return v1;
}

uint64_t PDF417ParsedData.weightKilograms.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 736) = a1;
  *(v2 + 744) = a2;
  return result;
}

uint64_t PDF417ParsedData.organDonor.getter()
{
  v1 = *(v0 + 752);

  return v1;
}

uint64_t PDF417ParsedData.organDonor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 752) = a1;
  *(v2 + 760) = a2;
  return result;
}

uint64_t PDF417ParsedData.veteran.getter()
{
  v1 = *(v0 + 768);

  return v1;
}

uint64_t PDF417ParsedData.veteran.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 768) = a1;
  *(v2 + 776) = a2;
  return result;
}

uint64_t PDF417ParsedData.cardRevisionDate.getter()
{
  v1 = *(v0 + 784);

  return v1;
}

uint64_t PDF417ParsedData.cardRevisionDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 784) = a1;
  *(v2 + 792) = a2;
  return result;
}

uint64_t PDF417ParsedData.hazmatEndorsementExpirationDate.getter()
{
  v1 = *(v0 + 800);

  return v1;
}

uint64_t PDF417ParsedData.hazmatEndorsementExpirationDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 800) = a1;
  *(v2 + 808) = a2;
  return result;
}

uint64_t PDF417ParsedData.under18Until.getter()
{
  v1 = *(v0 + 816);

  return v1;
}

uint64_t PDF417ParsedData.under18Until.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 816) = a1;
  *(v2 + 824) = a2;
  return result;
}

uint64_t PDF417ParsedData.under19Until.getter()
{
  v1 = *(v0 + 832);

  return v1;
}

uint64_t PDF417ParsedData.under19Until.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 832) = a1;
  *(v2 + 840) = a2;
  return result;
}

uint64_t PDF417ParsedData.under21Until.getter()
{
  v1 = *(v0 + 848);

  return v1;
}

uint64_t PDF417ParsedData.under21Until.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 848) = a1;
  *(v2 + 856) = a2;
  return result;
}

void __swiftcall PDF417ParsedData.init(docType:aamvaVersion:map:)(CoreIDVShared::PDF417ParsedData *__return_ptr retstr, Swift::String docType, Swift::String aamvaVersion, Swift::OpaquePointer map)
{
  v4 = MEMORY[0x28223BE20](docType._countAndFlagsBits);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  v15 = v14;
  v16 = *(v5 + 16);

  v412 = v12;
  v335 = v13;
  if (v16)
  {
    v17 = sub_2259F18D4(4277060, 0xE300000000000000);
    if (v18)
    {
      v19 = (*(v6 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v411 = v20;
    v410 = v21;
    if (*(v6 + 16))
    {
      sub_2259F18D4(4407620, 0xE300000000000000);
      if (v22)
      {
      }
    }
  }

  else
  {
    v410 = 0;
    v411 = 0;
  }

  v23 = sub_225CCE514();
  v25 = v24;

  v423[0] = v23;
  v423[1] = v25;
  sub_2259D8654();
  v26 = sub_225CCF044();
  v28 = v27;

  v409 = v26;
  v408 = v28;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4473156, 0xE300000000000000);
    if (v29)
    {
    }
  }

  v30 = sub_225CCE514();
  v32 = v31;

  v423[0] = v30;
  v423[1] = v32;
  v33 = sub_225CCF044();
  v35 = v34;

  v327 = v8;
  v407 = v33;
  v406 = v35;
  if (*(v6 + 16))
  {
    v36 = sub_2259F18D4(4407876, 0xE300000000000000);
    if (v37)
    {
      v38 = (*(v6 + 56) + 16 * v36);
      v39 = *v38;
      v40 = v38[1];
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v405 = v39;
    v404 = v40;
    if (*(v6 + 16))
    {
      sub_2259F18D4(5849412, 0xE300000000000000);
      if (v41)
      {
      }
    }
  }

  else
  {
    v404 = 0;
    v405 = 0;
  }

  v42 = sub_225CCE514();
  v44 = v43;

  v423[0] = v42;
  v423[1] = v44;
  v45 = sub_225CCF044();
  v47 = v46;

  v336 = v10;
  v403 = v45;
  if (*(v6 + 16))
  {
    v48 = sub_2259F18D4(5587268, 0xE300000000000000);
    if (v49)
    {
      v50 = (*(v6 + 56) + 16 * v48);
      v51 = *v50;
      v52 = v50[1];
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v402 = v51;
    v401 = v52;
    if (*(v6 + 16))
    {
      sub_2259F18D4(4669764, 0xE300000000000000);
      if (v53)
      {
      }
    }
  }

  else
  {
    v401 = 0;
    v402 = 0;
  }

  v54 = sub_225CCE514();
  v56 = v55;

  v423[0] = v54;
  v423[1] = v56;
  v57 = sub_225CCF044();
  v59 = v58;

  v400 = v57;
  v399 = v59;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4800836, 0xE300000000000000);
    if (v60)
    {
    }
  }

  v61 = sub_225CCE514();
  v63 = v62;

  v423[0] = v61;
  v423[1] = v63;
  v64 = sub_225CCF044();
  v397 = v65;

  v66 = *(v6 + 16);
  if (!v66)
  {
    v393 = 0uLL;
    v71 = 0;
    v70 = 0;
LABEL_41:
    v76 = 0;
    v75 = 0;
LABEL_42:
    v81 = 0;
    goto LABEL_43;
  }

  v67 = sub_2259F18D4(4866372, 0xE300000000000000);
  if (v68)
  {
    v69 = (*(v6 + 56) + 16 * v67);
    v70 = *v69;
    v71 = v69[1];

    v66 = *(v6 + 16);
    if (v66)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  v70 = 0;
  v71 = 0;
  v66 = *(v6 + 16);
  if (!v66)
  {
LABEL_40:
    v393 = 0uLL;
    goto LABEL_41;
  }

LABEL_34:
  v72 = sub_2259F18D4(4931908, 0xE300000000000000);
  if (v73)
  {
    v74 = (*(v6 + 56) + 16 * v72);
    v76 = *v74;
    v75 = v74[1];

    v66 = *(v6 + 16);
    if (v66)
    {
      goto LABEL_36;
    }

    goto LABEL_55;
  }

  v76 = 0;
  v75 = 0;
  v66 = *(v6 + 16);
  if (!v66)
  {
LABEL_55:
    v393 = 0uLL;
    goto LABEL_42;
  }

LABEL_36:
  v77 = sub_2259F18D4(5325124, 0xE300000000000000);
  if (v78)
  {
    v79 = *(*(v6 + 56) + 16 * v77);
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  *&v393 = v79;
  *(&v393 + 1) = v80;
  v66 = *(v6 + 16);
  if (!v66)
  {
    goto LABEL_42;
  }

  v97 = sub_2259F18D4(4604740, 0xE300000000000000);
  if ((v98 & 1) == 0)
  {
    v66 = 0;
    goto LABEL_42;
  }

  v99 = *(*(v6 + 56) + 16 * v97);

  v66 = v99;
LABEL_43:
  v391 = v81;
  v392 = v66;
  v394 = v75;
  v395 = v71;
  v82 = *(v6 + 16);
  v325 = v47;
  if (!v82)
  {
    v386 = 0uLL;
    v389 = 0;
    v390 = 0;
LABEL_53:
    v89 = 0;
    v90 = 0;
    v96 = 0;
    goto LABEL_70;
  }

  v83 = sub_2259F18D4(4670276, 0xE300000000000000);
  if ((v84 & 1) == 0)
  {
    v390 = 0;
    v389 = 0;
    v82 = *(v6 + 16);
    if (v82)
    {
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v85 = (*(v6 + 56) + 16 * v83);
  v390 = *v85;
  v389 = v85[1];

  v82 = *(v6 + 16);
  if (!v82)
  {
LABEL_52:
    v386 = 0uLL;
    goto LABEL_53;
  }

LABEL_46:
  v86 = sub_2259F18D4(4539460, 0xE300000000000000);
  if (v87)
  {
    v88 = (*(v6 + 56) + 16 * v86);
    v89 = *v88;
    v90 = v88[1];

    v82 = *(v6 + 16);
    if (v82)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v82 = *(v6 + 16);
    if (v82)
    {
LABEL_48:
      v91 = v89;
      v92 = sub_2259F18D4(4604996, 0xE300000000000000);
      if (v93)
      {
        v94 = *(*(v6 + 56) + 16 * v92);
      }

      else
      {
        v94 = 0;
        v95 = 0;
      }

      *&v386 = v94;
      *(&v386 + 1) = v95;
      v82 = *(v6 + 16);
      if (v82)
      {
        v100 = sub_2259F18D4(4670532, 0xE300000000000000);
        if (v101)
        {
          v102 = *(*(v6 + 56) + 16 * v100);

          v82 = v102;
LABEL_69:
          v89 = v91;
          goto LABEL_70;
        }

        v82 = 0;
      }

      v96 = 0;
      goto LABEL_69;
    }
  }

  v386 = 0uLL;
  v96 = 0;
LABEL_70:
  v384 = v96;
  v385 = v82;
  v387 = v90;
  v388 = v89;
  v398 = v64;
  v396 = v70;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4735300, 0xE300000000000000);
    if (v103)
    {
    }
  }

  v104 = sub_225CCE514();
  v106 = v105;

  v423[0] = v104;
  v423[1] = v106;
  v107 = sub_225CCF044();
  v109 = v108;

  v383 = v107;
  v382 = v109;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5914948, 0xE300000000000000);
    if (v110)
    {
    }
  }

  v111 = sub_225CCE514();
  v113 = v112;

  v423[0] = v111;
  v423[1] = v113;
  v114 = sub_225CCF044();
  v380 = v115;

  v381 = v114;
  if (!*(v6 + 16))
  {
    v375 = 0uLL;
    v378 = 0;
    v379 = 0;
LABEL_85:
    v376 = 0;
    v377 = 0;
    goto LABEL_86;
  }

  v116 = sub_2259F18D4(4801348, 0xE300000000000000);
  if (v117)
  {
    v118 = (*(v6 + 56) + 16 * v116);
    v119 = *v118;
    v120 = v118[1];
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v378 = v120;
  v379 = v119;
  if (!*(v6 + 16))
  {
    v375 = 0uLL;
    goto LABEL_85;
  }

  v121 = sub_2259F18D4(4866884, 0xE300000000000000);
  if (v122)
  {
    v123 = (*(v6 + 56) + 16 * v121);
    v124 = *v123;
    v125 = v123[1];
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v376 = v125;
  v377 = v124;
  if (*(v6 + 16))
  {
    v197 = sub_2259F18D4(4932420, 0xE300000000000000);
    if (v198)
    {
      v199 = *(*(v6 + 56) + 16 * v197);
    }

    else
    {
      v199 = 0;
      v200 = 0;
    }

    *&v375 = v199;
    *(&v375 + 1) = v200;
    if (*(v6 + 16))
    {
      sub_2259F18D4(5128772, 0xE300000000000000);
      if (v205)
      {
      }
    }
  }

  else
  {
    v375 = 0uLL;
  }

LABEL_86:
  v126 = sub_225CCE514();
  v128 = v127;

  v423[0] = v126;
  v423[1] = v128;
  v129 = sub_225CCF044();
  v131 = v130;

  v373 = v131;
  v374 = v129;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4670020, 0xE300000000000000);
    if (v132)
    {
    }
  }

  v133 = sub_225CCE514();
  v135 = v134;

  v423[0] = v133;
  v423[1] = v135;
  v136 = sub_225CCF044();
  v138 = v137;

  v371 = v138;
  v372 = v136;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5456452, 0xE300000000000000);
    if (v139)
    {
    }
  }

  v140 = sub_225CCE514();
  v142 = v141;

  v423[0] = v140;
  v423[1] = v142;
  v143 = sub_225CCF044();
  v369 = v144;

  v145 = *(v6 + 16);
  if (!v145)
  {
    v151 = v76;
    v362 = 0uLL;
    v150 = 0;
    v149 = 0;
LABEL_102:
    v156 = 0;
    v155 = 0;
LABEL_103:
    v161 = 0;
    goto LABEL_104;
  }

  v146 = sub_2259F18D4(4539204, 0xE300000000000000);
  if (v147)
  {
    v148 = (*(v6 + 56) + 16 * v146);
    v149 = *v148;
    v150 = v148[1];

    v145 = *(v6 + 16);
    if (v145)
    {
      goto LABEL_95;
    }

    goto LABEL_101;
  }

  v149 = 0;
  v150 = 0;
  v145 = *(v6 + 16);
  if (!v145)
  {
LABEL_101:
    v151 = v76;
    v362 = 0uLL;
    goto LABEL_102;
  }

LABEL_95:
  v151 = v76;
  v152 = sub_2259F18D4(4997956, 0xE300000000000000);
  if (v153)
  {
    v154 = (*(v6 + 56) + 16 * v152);
    v156 = *v154;
    v155 = v154[1];

    v145 = *(v6 + 16);
    if (v145)
    {
      goto LABEL_97;
    }

    goto LABEL_134;
  }

  v156 = 0;
  v155 = 0;
  v145 = *(v6 + 16);
  if (!v145)
  {
LABEL_134:
    v362 = 0uLL;
    goto LABEL_103;
  }

LABEL_97:
  v157 = sub_2259F18D4(5063492, 0xE300000000000000);
  if (v158)
  {
    v159 = *(*(v6 + 56) + 16 * v157);
  }

  else
  {
    v159 = 0;
    v160 = 0;
  }

  *&v362 = v159;
  *(&v362 + 1) = v160;
  v145 = *(v6 + 16);
  if (!v145)
  {
    goto LABEL_103;
  }

  v201 = sub_2259F18D4(5129028, 0xE300000000000000);
  if (v202)
  {
    v161 = *(*(v6 + 56) + 16 * v201);
  }

  else
  {
    v161 = 0;
    v145 = 0;
  }

LABEL_104:
  v363 = v145;
  v364 = v161;
  v365 = v155;
  v366 = v156;
  v367 = v150;
  v368 = v149;
  v355 = v151;
  if (!*(v6 + 16))
  {
    goto LABEL_112;
  }

  sub_2259F18D4(5391172, 0xE300000000000000);
  if (v162)
  {

    if (!*(v6 + 16))
    {
      goto LABEL_112;
    }
  }

  else if (!*(v6 + 16))
  {
    goto LABEL_112;
  }

  sub_2259F18D4(5260100, 0xE300000000000000);
  if (v163)
  {
  }

LABEL_112:
  v164 = sub_225CCE514();
  v166 = v165;

  v423[0] = v164;
  v423[1] = v166;
  v167 = sub_225CCF044();
  v169 = v168;

  v360 = v169;
  v361 = v167;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5325636, 0xE300000000000000);
    if (v170)
    {
    }
  }

  v171 = sub_225CCE514();
  v173 = v172;

  v423[0] = v171;
  v423[1] = v173;
  v174 = sub_225CCF044();
  v176 = v175;

  v359 = v174;
  v334 = v176;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5391172, 0xE300000000000000);
    if (v177)
    {
    }
  }

  v370 = v143;
  v178 = sub_225CCE514();
  v180 = v179;

  v423[0] = v178;
  v423[1] = v180;
  v358 = sub_225CCF044();
  v182 = v181;

  if (!*(v6 + 16))
  {
    v194 = 0;
    v195 = 0;
    v353 = 0;
    v354 = 0;
    v356 = 0;
    v190 = 0;
    v340 = 0;
    v196 = 0;
    v184 = v327;
    goto LABEL_152;
  }

  v183 = sub_2259F18D4(4277316, 0xE300000000000000);
  v184 = v327;
  if (v185)
  {
    v186 = (*(v6 + 56) + 16 * v183);
    v356 = *v186;
    v354 = v186[1];

    if (*(v6 + 16))
    {
      goto LABEL_121;
    }

LABEL_128:
    v194 = 0;
    v195 = 0;
    v353 = 0;
    v190 = 0;
    goto LABEL_145;
  }

  v356 = 0;
  v354 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_128;
  }

LABEL_121:
  v187 = sub_2259F18D4(4473924, 0xE300000000000000);
  if (v188)
  {
    v189 = (*(v6 + 56) + 16 * v187);
    v190 = v189[1];
    v353 = *v189;

    if (*(v6 + 16))
    {
      goto LABEL_123;
    }

LABEL_136:
    v194 = 0;
    v195 = 0;
    goto LABEL_145;
  }

  v353 = 0;
  v190 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_136;
  }

LABEL_123:
  v191 = sub_2259F18D4(5718340, 0xE300000000000000);
  if ((v192 & 1) == 0)
  {
    v195 = 0;
    v194 = 0;
    if (*(v6 + 16))
    {
      goto LABEL_143;
    }

LABEL_145:
    v340 = 0;
    v196 = 0;
    goto LABEL_152;
  }

  v193 = (*(v6 + 56) + 16 * v191);
  v195 = *v193;
  v194 = v193[1];

  if (!*(v6 + 16))
  {
    goto LABEL_145;
  }

LABEL_143:
  v203 = sub_2259F18D4(5783876, 0xE300000000000000);
  if (v204)
  {
    v340 = *(*(v6 + 56) + 16 * v203);
  }

  else
  {
    v340 = 0;
    v196 = 0;
  }

LABEL_152:
  v333 = v196;
  *(&v351 + 1) = v194;
  v352 = v190;
  v206 = *(v6 + 16);
  if (!v206)
  {
    v219 = 0;
    *&v350 = 0;
    v211 = 0;
    v210 = 0;
LABEL_162:
    v214 = 0;
    v215 = 0;
    v221 = 0;
    goto LABEL_172;
  }

  v207 = sub_2259F18D4(4932676, 0xE300000000000000);
  if (v208)
  {
    v209 = (*(v6 + 56) + 16 * v207);
    v210 = *v209;
    v211 = v209[1];

    v206 = *(v6 + 16);
    if (v206)
    {
      goto LABEL_155;
    }

    goto LABEL_161;
  }

  v210 = 0;
  v211 = 0;
  v206 = *(v6 + 16);
  if (!v206)
  {
LABEL_161:
    v219 = 0;
    *&v350 = 0;
    goto LABEL_162;
  }

LABEL_155:
  v212 = sub_2259F18D4(4998212, 0xE300000000000000);
  if ((v213 & 1) == 0)
  {
    v214 = 0;
    v215 = 0;
    v206 = *(v6 + 16);
    if (v206)
    {
      goto LABEL_157;
    }

LABEL_164:
    v219 = 0;
    *&v350 = 0;
    v221 = 0;
    goto LABEL_172;
  }

  v214 = *(*(v6 + 56) + 16 * v212);

  v206 = *(v6 + 16);
  if (!v206)
  {
    goto LABEL_164;
  }

LABEL_157:
  v413 = v215;
  v216 = sub_2259F18D4(4342852, 0xE300000000000000);
  if (v217)
  {
    v218 = (*(v6 + 56) + 16 * v216);
    v220 = *v218;
    v219 = v218[1];
  }

  else
  {
    v220 = 0;
    v219 = 0;
  }

  v206 = *(v6 + 16);
  *&v350 = v220;
  if (v206)
  {
    v338 = v211;
    v222 = v219;
    v223 = sub_2259F18D4(4408388, 0xE300000000000000);
    if (v224)
    {
      v225 = *(*(v6 + 56) + 16 * v223);

      v206 = v225;
    }

    else
    {
      v206 = 0;
      v221 = 0;
    }

    v215 = v413;
    v219 = v222;
    v211 = v338;
  }

  else
  {
    v221 = 0;
    v215 = v413;
  }

LABEL_172:
  v348 = v221;
  v349 = v206;
  *(&v350 + 1) = v219;
  v414 = v215;
  v226 = *(v6 + 16);
  v357 = v182;
  v339 = v211;
  if (!v226)
  {
    v234 = 0;
    v233 = 0;
    v230 = 0;
    v347 = 0;
LABEL_180:
    v235 = 0;
    v236 = v336;
    goto LABEL_188;
  }

  v227 = sub_2259F18D4(4736068, 0xE300000000000000);
  if ((v228 & 1) == 0)
  {
    v230 = 0;
    v347 = 0;
    v226 = *(v6 + 16);
    if (v226)
    {
      goto LABEL_175;
    }

    goto LABEL_179;
  }

  v229 = (*(v6 + 56) + 16 * v227);
  v230 = *v229;
  v347 = v229[1];

  v226 = *(v6 + 16);
  if (!v226)
  {
LABEL_179:
    v234 = 0;
    v233 = 0;
    goto LABEL_180;
  }

LABEL_175:
  v231 = sub_2259F18D4(4801604, 0xE300000000000000);
  if (v232)
  {
    v233 = *(*(v6 + 56) + 16 * v231);
  }

  else
  {
    v233 = 0;
    v234 = 0;
  }

  v226 = *(v6 + 16);
  v236 = v336;
  if (v226)
  {
    v237 = v214;
    v238 = v210;
    v239 = v233;
    v240 = v234;
    v241 = sub_2259F18D4(4867140, 0xE300000000000000);
    if (v242)
    {
      v243 = *(*(v6 + 56) + 16 * v241);

      v226 = v243;
    }

    else
    {
      v226 = 0;
      v235 = 0;
    }

    v234 = v240;
    v233 = v239;
    v210 = v238;
    v236 = v336;
    v214 = v237;
  }

  else
  {
    v235 = 0;
  }

LABEL_188:
  v344 = v235;
  v345 = v226;
  *&v346 = v233;
  *(&v346 + 1) = v234;
  *&v351 = v195;
  v337 = v214;
  v415 = v230;
  if (v236 != 12592 || v184 != 0xE200000000000000)
  {
    v244 = sub_225CCF934();

    if (v244)
    {
      goto LABEL_192;
    }

    if (*(v6 + 16))
    {
      v251 = sub_2259F18D4(4342596, 0xE300000000000000);
      v253 = v325;
      if (v252)
      {
        v254 = (*(v6 + 56) + 16 * v251);
        v255 = *v254;
        v342 = v254[1];
      }

      else
      {
        v255 = 0;
        v342 = 0;
      }

      v343 = v255;
      if (*(v6 + 16))
      {
        v307 = sub_2259F18D4(4473668, 0xE300000000000000);
        if (v308)
        {
          v306 = v210;
          v309 = (*(v6 + 56) + 16 * v307);
          v341 = *v309;
          v329 = v309[1];

LABEL_218:
          sub_225B51F64(5456708, 0xE300000000000000, v6);
          v310 = sub_225CCE514();
          v312 = v311;

          v423[0] = v310;
          v423[1] = v312;
          v313 = sub_225CCF044();
          v330 = v314;
          v331 = v313;

          v416 = sub_225B51F64(5587780, 0xE300000000000000, v6);
          v332 = v315;
          v316 = sub_225B51F64(4276804, 0xE300000000000000, v6);
          v323 = v317;
          v324 = v316;
          v288 = sub_225B51F64(4473412, 0xE300000000000000, v6);
          v287 = v318;
          v322 = sub_225B51F64(4342340, 0xE300000000000000, v6);
          v280 = v319;

          v282 = v327;
          v290 = v335;
          v291 = v336;
          v305 = v363;
          v304 = v364;
          v303 = v360;
          v302 = v361;
          v300 = v358;
          v299 = v359;
          v289 = v333;
          v301 = v334;
          v298 = v356;
          v297 = v357;
          v294 = v353;
          v296 = v354;
          v292 = *(&v351 + 1);
          v295 = v352;
          v293 = v351;
          v286 = v306;
          v284 = v337;
          v285 = v339;
          v283 = v355;
          v281 = v340;
          v276 = v329;
          goto LABEL_219;
        }
      }

      v306 = v210;
    }

    else
    {
      v306 = v210;
      v253 = v325;
      v342 = 0;
      v343 = 0;
    }

    v341 = 0;
    v329 = 0;
    goto LABEL_218;
  }

LABEL_192:
  v326 = v210;
  if (*(v6 + 16))
  {
    v245 = sub_2259F18D4(5456196, 0xE300000000000000);
    if (v246)
    {
      v247 = *(*(v6 + 56) + 16 * v245);
    }

    else
    {
      v247 = 0;
      v248 = 0;
    }

    v342 = v248;
    v343 = v247;
    if (*(v6 + 16))
    {
      v256 = sub_2259F18D4(5521732, 0xE300000000000000);
      if (v257)
      {
        v258 = (*(v6 + 56) + 16 * v256);
        v259 = *v258;
        v328 = v258[1];
      }

      else
      {
        v259 = 0;
        v328 = 0;
      }

      v341 = v259;
      if (*(v6 + 16))
      {
        sub_2259F18D4(4342084, 0xE300000000000000);
        if (v260)
        {
        }
      }

      v249 = v328;
    }

    else
    {
      v249 = 0;
      v341 = 0;
    }

    v250 = v406;
    v236 = v336;
  }

  else
  {
    v249 = 0;
    v341 = 0;
    v342 = 0;
    v343 = 0;
    v250 = v406;
  }

  sub_225CCE514();

  v261 = sub_225CCF044();
  v330 = v262;
  v331 = v261;
  v263 = v262;

  v416 = sub_225B51F64(4538692, 0xE300000000000000, v6);
  v332 = v264;
  *&__src[0] = v335;
  *(&__src[0] + 1) = v412;
  __src[1] = 0u;
  *&__src[2] = v236;
  v265 = v184;
  *(&__src[2] + 1) = v184;
  __src[3] = 0u;
  *&__src[4] = v411;
  *(&__src[4] + 1) = v410;
  *&__src[5] = v343;
  *(&__src[5] + 1) = v342;
  *&__src[6] = v341;
  *(&__src[6] + 1) = v249;
  *&__src[7] = v261;
  *(&__src[7] + 1) = v263;
  *&__src[8] = v409;
  *(&__src[8] + 1) = v408;
  *&__src[9] = v407;
  *(&__src[9] + 1) = v250;
  *&__src[10] = v405;
  *(&__src[10] + 1) = v404;
  *&__src[11] = v403;
  *(&__src[11] + 1) = v325;
  *&__src[12] = v402;
  *(&__src[12] + 1) = v401;
  *&__src[13] = v400;
  *(&__src[13] + 1) = v399;
  *&__src[14] = v398;
  *(&__src[14] + 1) = v397;
  *&__src[15] = v396;
  *(&__src[15] + 1) = v395;
  *&__src[16] = v355;
  *(&__src[16] + 1) = v394;
  __src[17] = v393;
  *&__src[18] = v392;
  *(&__src[18] + 1) = v391;
  *&__src[19] = v390;
  *(&__src[19] + 1) = v389;
  *&__src[20] = v388;
  *(&__src[20] + 1) = v387;
  __src[21] = v386;
  *&__src[22] = v385;
  *(&__src[22] + 1) = v384;
  memset(&__src[23], 0, 48);
  *&__src[26] = v383;
  *(&__src[26] + 1) = v382;
  *&__src[27] = v381;
  *(&__src[27] + 1) = v380;
  *&__src[28] = v379;
  *(&__src[28] + 1) = v378;
  *&__src[29] = v377;
  *(&__src[29] + 1) = v376;
  __src[30] = v375;
  *&__src[31] = v374;
  *(&__src[31] + 1) = v373;
  *&__src[32] = v372;
  *(&__src[32] + 1) = v371;
  *&__src[33] = v370;
  *(&__src[33] + 1) = v369;
  *&__src[34] = v416;
  *(&__src[34] + 1) = v264;
  *&__src[35] = v368;
  *(&__src[35] + 1) = v367;
  *&__src[36] = v366;
  *(&__src[36] + 1) = v365;
  __src[37] = v362;
  *&__src[38] = v364;
  *(&__src[38] + 1) = v363;
  __src[39] = 0u;
  *&__src[40] = v361;
  *(&__src[40] + 1) = v360;
  *&__src[41] = v359;
  *(&__src[41] + 1) = v334;
  *&__src[42] = v358;
  *(&__src[42] + 1) = v357;
  *&__src[43] = v356;
  *(&__src[43] + 1) = v354;
  *&__src[44] = v353;
  *(&__src[44] + 1) = v352;
  __src[45] = v351;
  *&__src[46] = v340;
  *(&__src[46] + 1) = v333;
  *&__src[47] = v326;
  *(&__src[47] + 1) = v339;
  *&__src[48] = v337;
  *(&__src[48] + 1) = v414;
  __src[49] = v350;
  *&__src[50] = v349;
  *(&__src[50] + 1) = v348;
  *&__src[51] = v415;
  *(&__src[51] + 1) = v347;
  __src[52] = v346;
  *&__src[53] = v345;
  *(&__src[53] + 1) = v344;
  memcpy(v423, __src, 0x360uLL);
  sub_225BD9800(__src, v422);
  v266 = sub_225B51F64(4276804, 0xE300000000000000, v6);
  v268 = sub_225BD36A8(v266, v267);
  v323 = v269;
  v324 = v268;
  v270 = v269;

  memcpy(__dst, v423, sizeof(__dst));
  sub_225BD9838(__dst);

  *&v420[0] = v335;
  *(&v420[0] + 1) = v412;
  v420[1] = 0u;
  *&v420[2] = v236;
  *(&v420[2] + 1) = v265;
  v420[3] = 0u;
  *&v420[4] = v411;
  *(&v420[4] + 1) = v410;
  *&v420[5] = v343;
  *(&v420[5] + 1) = v342;
  *&v420[6] = v341;
  *(&v420[6] + 1) = v249;
  *&v420[7] = v331;
  *(&v420[7] + 1) = v330;
  *&v420[8] = v409;
  *(&v420[8] + 1) = v408;
  *&v420[9] = v407;
  *(&v420[9] + 1) = v406;
  *&v420[10] = v405;
  *(&v420[10] + 1) = v404;
  *&v420[11] = v403;
  *(&v420[11] + 1) = v325;
  *&v420[12] = v402;
  *(&v420[12] + 1) = v401;
  *&v420[13] = v400;
  *(&v420[13] + 1) = v399;
  *&v420[14] = v398;
  *(&v420[14] + 1) = v397;
  *&v420[15] = v396;
  *(&v420[15] + 1) = v395;
  *&v420[16] = v355;
  *(&v420[16] + 1) = v394;
  v420[17] = v393;
  *&v420[18] = v392;
  *(&v420[18] + 1) = v391;
  *&v420[19] = v390;
  *(&v420[19] + 1) = v389;
  *&v420[20] = v388;
  *(&v420[20] + 1) = v387;
  v420[21] = v386;
  *&v420[22] = v385;
  *(&v420[22] + 1) = v384;
  *&v420[23] = v268;
  *(&v420[23] + 1) = v270;
  memset(&v420[24], 0, 32);
  *&v420[26] = v383;
  *(&v420[26] + 1) = v382;
  *&v420[27] = v381;
  *(&v420[27] + 1) = v380;
  *&v420[28] = v379;
  *(&v420[28] + 1) = v378;
  *&v420[29] = v377;
  *(&v420[29] + 1) = v376;
  v420[30] = v375;
  *&v420[31] = v374;
  *(&v420[31] + 1) = v373;
  *&v420[32] = v372;
  *(&v420[32] + 1) = v371;
  *&v420[33] = v370;
  *(&v420[33] + 1) = v369;
  *&v420[34] = v416;
  *(&v420[34] + 1) = v332;
  *&v420[35] = v368;
  *(&v420[35] + 1) = v367;
  *&v420[36] = v366;
  *(&v420[36] + 1) = v365;
  v420[37] = v362;
  *&v420[38] = v364;
  *(&v420[38] + 1) = v363;
  v420[39] = 0u;
  *&v420[40] = v361;
  *(&v420[40] + 1) = v360;
  *&v420[41] = v359;
  *(&v420[41] + 1) = v334;
  *&v420[42] = v358;
  *(&v420[42] + 1) = v357;
  *&v420[43] = v356;
  *(&v420[43] + 1) = v354;
  *&v420[44] = v353;
  *(&v420[44] + 1) = v352;
  v420[45] = v351;
  *&v420[46] = v340;
  *(&v420[46] + 1) = v333;
  *&v420[47] = v326;
  *(&v420[47] + 1) = v339;
  *&v420[48] = v337;
  *(&v420[48] + 1) = v414;
  v420[49] = v350;
  *&v420[50] = v349;
  *(&v420[50] + 1) = v348;
  *&v420[51] = v415;
  *(&v420[51] + 1) = v347;
  v420[52] = v346;
  *&v420[53] = v345;
  *(&v420[53] + 1) = v344;
  memcpy(v423, v420, 0x360uLL);
  sub_225BD9800(v420, v422);
  v271 = sub_225B51F64(4473412, 0xE300000000000000, v6);
  v320 = sub_225BD36A8(v271, v272);
  v321 = v273;
  v274 = v273;

  memcpy(v421, v423, sizeof(v421));
  sub_225BD9838(v421);

  *&v422[0] = v335;
  *(&v422[0] + 1) = v412;
  v422[1] = 0u;
  *&v422[2] = v236;
  *(&v422[2] + 1) = v265;
  v422[3] = 0u;
  *&v422[4] = v411;
  *(&v422[4] + 1) = v410;
  *&v422[5] = v343;
  *(&v422[5] + 1) = v342;
  *&v422[6] = v341;
  *(&v422[6] + 1) = v249;
  *&v422[7] = v331;
  *(&v422[7] + 1) = v330;
  *&v422[8] = v409;
  *(&v422[8] + 1) = v408;
  *&v422[9] = v407;
  *(&v422[9] + 1) = v406;
  *&v422[10] = v405;
  *(&v422[10] + 1) = v404;
  *&v422[11] = v403;
  *(&v422[11] + 1) = v325;
  *&v422[12] = v402;
  *(&v422[12] + 1) = v401;
  *&v422[13] = v400;
  *(&v422[13] + 1) = v399;
  *&v422[14] = v398;
  *(&v422[14] + 1) = v397;
  *&v422[15] = v396;
  *(&v422[15] + 1) = v395;
  *&v422[16] = v355;
  *(&v422[16] + 1) = v394;
  v422[17] = v393;
  *&v422[18] = v392;
  *(&v422[18] + 1) = v391;
  *&v422[19] = v390;
  *(&v422[19] + 1) = v389;
  *&v422[20] = v388;
  *(&v422[20] + 1) = v387;
  v422[21] = v386;
  *&v422[22] = v385;
  *(&v422[22] + 1) = v384;
  *&v422[23] = v324;
  *(&v422[23] + 1) = v323;
  *&v422[24] = v320;
  *(&v422[24] + 1) = v274;
  v422[25] = 0u;
  *&v422[26] = v383;
  *(&v422[26] + 1) = v382;
  *&v422[27] = v381;
  *(&v422[27] + 1) = v380;
  *&v422[28] = v379;
  *(&v422[28] + 1) = v378;
  *&v422[29] = v377;
  *(&v422[29] + 1) = v376;
  v422[30] = v375;
  *&v422[31] = v374;
  *(&v422[31] + 1) = v373;
  *&v422[32] = v372;
  *(&v422[32] + 1) = v371;
  *&v422[33] = v370;
  *(&v422[33] + 1) = v369;
  *&v422[34] = v416;
  *(&v422[34] + 1) = v332;
  *&v422[35] = v368;
  *(&v422[35] + 1) = v367;
  *&v422[36] = v366;
  *(&v422[36] + 1) = v365;
  v422[37] = v362;
  *&v422[38] = v364;
  *(&v422[38] + 1) = v363;
  v422[39] = 0u;
  *&v422[40] = v361;
  *(&v422[40] + 1) = v360;
  *&v422[41] = v359;
  *(&v422[41] + 1) = v334;
  *&v422[42] = v358;
  *(&v422[42] + 1) = v357;
  *&v422[43] = v356;
  *(&v422[43] + 1) = v354;
  *&v422[44] = v353;
  *(&v422[44] + 1) = v352;
  v422[45] = v351;
  *&v422[46] = v340;
  *(&v422[46] + 1) = v333;
  *&v422[47] = v326;
  *(&v422[47] + 1) = v339;
  *&v422[48] = v337;
  *(&v422[48] + 1) = v414;
  v422[49] = v350;
  *&v422[50] = v349;
  *(&v422[50] + 1) = v348;
  *&v422[51] = v415;
  *(&v422[51] + 1) = v347;
  v422[52] = v346;
  *&v422[53] = v345;
  *(&v422[53] + 1) = v344;
  memcpy(v417, v422, sizeof(v417));
  sub_225BD9800(v422, v423);
  v275 = sub_225B51F64(4342340, 0xE300000000000000, v6);
  v276 = v249;
  v278 = v277;

  v322 = sub_225BD36A8(v275, v278);
  v280 = v279;
  v281 = v340;
  v282 = v327;
  v283 = v355;

  memcpy(v423, v417, 0x360uLL);
  sub_225BD9838(v423);

  v284 = v337;
  v285 = v339;
  v253 = v325;
  v286 = v326;
  v288 = v320;
  v287 = v321;
  v289 = v333;
  v290 = v335;
  v291 = v336;
  v292 = *(&v351 + 1);
  v293 = v351;
  v295 = v352;
  v294 = v353;
  v296 = v354;
  v298 = v356;
  v297 = v357;
  v300 = v358;
  v299 = v359;
  v301 = v334;
  v303 = v360;
  v302 = v361;
  v305 = v363;
  v304 = v364;
LABEL_219:
  *v15 = v290;
  *(v15 + 8) = v412;
  *(v15 + 32) = v291;
  *(v15 + 40) = v282;
  *(v15 + 64) = v411;
  *(v15 + 72) = v410;
  *(v15 + 80) = v343;
  *(v15 + 88) = v342;
  *(v15 + 96) = v341;
  *(v15 + 104) = v276;
  *(v15 + 112) = v331;
  *(v15 + 120) = v330;
  *(v15 + 128) = v409;
  *(v15 + 136) = v408;
  *(v15 + 144) = v407;
  *(v15 + 152) = v406;
  *(v15 + 160) = v405;
  *(v15 + 168) = v404;
  *(v15 + 176) = v403;
  *(v15 + 184) = v253;
  *(v15 + 192) = v402;
  *(v15 + 200) = v401;
  *(v15 + 208) = v400;
  *(v15 + 216) = v399;
  *(v15 + 224) = v398;
  *(v15 + 232) = v397;
  *(v15 + 240) = v396;
  *(v15 + 248) = v395;
  *(v15 + 256) = v283;
  *(v15 + 264) = v394;
  *(v15 + 272) = v393;
  *(v15 + 288) = v392;
  *(v15 + 296) = v391;
  *(v15 + 304) = v390;
  *(v15 + 312) = v389;
  *(v15 + 320) = v388;
  *(v15 + 328) = v387;
  *(v15 + 336) = v386;
  *(v15 + 352) = v385;
  *(v15 + 360) = v384;
  *(v15 + 368) = v324;
  *(v15 + 376) = v323;
  *(v15 + 384) = v288;
  *(v15 + 392) = v287;
  *(v15 + 400) = v322;
  *(v15 + 408) = v280;
  *(v15 + 416) = v383;
  *(v15 + 424) = v382;
  *(v15 + 432) = v381;
  *(v15 + 440) = v380;
  *(v15 + 448) = v379;
  *(v15 + 456) = v378;
  *(v15 + 464) = v377;
  *(v15 + 472) = v376;
  *(v15 + 480) = v375;
  *(v15 + 496) = v374;
  *(v15 + 504) = v373;
  *(v15 + 512) = v372;
  *(v15 + 520) = v371;
  *(v15 + 528) = v370;
  *(v15 + 536) = v369;
  *(v15 + 544) = v416;
  *(v15 + 552) = v332;
  *(v15 + 560) = v368;
  *(v15 + 568) = v367;
  *(v15 + 576) = v366;
  *(v15 + 584) = v365;
  *(v15 + 592) = v362;
  *(v15 + 16) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 608) = v304;
  *(v15 + 616) = v305;
  *(v15 + 624) = 0u;
  *(v15 + 640) = v302;
  *(v15 + 648) = v303;
  *(v15 + 656) = v299;
  *(v15 + 664) = v301;
  *(v15 + 672) = v300;
  *(v15 + 680) = v297;
  *(v15 + 688) = v298;
  *(v15 + 696) = v296;
  *(v15 + 704) = v294;
  *(v15 + 712) = v295;
  *(v15 + 720) = v293;
  *(v15 + 728) = v292;
  *(v15 + 736) = v281;
  *(v15 + 744) = v289;
  *(v15 + 752) = v286;
  *(v15 + 760) = v285;
  *(v15 + 768) = v284;
  *(v15 + 776) = v414;
  *(v15 + 784) = v350;
  *(v15 + 800) = v349;
  *(v15 + 808) = v348;
  *(v15 + 816) = v415;
  *(v15 + 824) = v347;
  *(v15 + 832) = v346;
  *(v15 + 848) = v345;
  *(v15 + 856) = v344;
}

uint64_t sub_225BD36A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  if (sub_225CCE5D4() != 8)
  {
    if (qword_28105B910 == -1)
    {
LABEL_8:
      v51 = off_28105B918;
      v52 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v53 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v53));
      (*(v5 + 16))(v7, &v51[v52], v4);
      os_unfair_lock_unlock(&v51[v53]);
      v54 = sub_225CCD934();
      v55 = sub_225CCED14();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2259A7000, v54, v55, "Unable to convert date, did not contain the correct number of characters", v56, 2u);
        MEMORY[0x22AA6F950](v56, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      return a1;
    }

LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v61 = a1;
  v62 = a2;
  v7 = sub_2259D8654();

  v5 = sub_225CCE5C4();
  v61 = a1;
  v62 = a2;

  v8 = sub_225CCE5C4();
  v61 = a1;
  v62 = a2;

  v9 = sub_225CCE5C4();
  v61 = a1;
  v62 = a2;

  v10 = sub_225CCE5C4();
  v11 = v8;
  v4 = v9 >> 14;
  v12 = v11 >> 14;
  if (v9 >> 14 < v11 >> 14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v57 = v11;
  v58 = v5;
  result = sub_225CCE704();
  if (v4 > v10 >> 14)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v61 = sub_225CCE704();
    v62 = v21;
    v63 = v22;
    v64 = v23;
    v24 = MEMORY[0x22AA6CD90](v17, v18, v19, v20);
    v26 = v25;

    v59 = v24;
    v60 = v26;
    sub_225BDB030();
    sub_225CCE614();
    v27 = sub_225CCEFF4();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    result = v58;
    if (v12 >= v58 >> 14)
    {
      v34 = sub_225CCE704();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v61 = v34;
      v62 = v36;
      v63 = v38;
      v64 = v40;
      v41 = MEMORY[0x22AA6CD90](v27, v29, v31, v33);
      v43 = v42;

      v59 = v41;
      v60 = v43;
      sub_225CCE614();
      v44 = sub_225CCEFF4();
      v46 = v45;
      v48 = v47;
      v50 = v49;

      a1 = MEMORY[0x22AA6CD90](v44, v46, v48, v50);

      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t *PDF417ParsedData.getBindings()()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[18];
  v5 = v0[19];
  v57 = v0[27];
  v58 = v0[26];
  v59 = v0[29];
  v60 = v0[28];
  v61 = v0[31];
  v62 = v0[30];
  v63 = v0[33];
  v64 = v0[32];
  v65 = v0[39];
  v66 = v0[38];
  v7 = v0[40];
  v8 = v0[41];
  v47 = v0[42];
  v48 = v0[44];
  v68 = v0[45];
  v69 = v0[43];
  v55 = v0[53];
  v56 = v0[52];
  v67 = v0[63];
  v49 = v0[62];
  v50 = v0[65];
  v51 = v0[64];
  v52 = v0[67];
  v53 = v0[66];
  v54 = v0[68];
  v9 = v0[69];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68, &unk_225CF90E0);
  inited = swift_initStackObject();
  v11 = inited;
  if (v2)
  {
    v12 = v1;
  }

  else
  {
    v12 = 0;
  }

  *(inited + 40) = 0x8000000225D0C970;
  *(inited + 48) = v12;
  v13 = 0xE000000000000000;
  if (v2)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(inited + 56) = v14;
  *(inited + 64) = 0xD000000000000012;
  if (v4)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  *(inited + 72) = 0x8000000225D0C950;
  *(inited + 80) = v15;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (v5)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *(inited + 104) = 0x8000000225D23190;
  *(inited + 112) = v17;
  if (v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  *(inited + 120) = v18;
  *(inited + 128) = 0xD00000000000001BLL;
  if (v8)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  *(inited + 136) = 0x8000000225D231B0;
  *(inited + 144) = v19;
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  *(inited + 152) = v20;
  *(inited + 160) = 0xD00000000000001CLL;
  v21 = v47;
  if (!v69)
  {
    v21 = 0;
  }

  *(inited + 168) = 0x8000000225D231D0;
  *(inited + 176) = v21;
  if (v69)
  {
    v22 = v69;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  *(inited + 184) = v22;
  *(inited + 192) = 0xD00000000000001DLL;
  v23 = v48;
  if (!v68)
  {
    v23 = 0;
  }

  *(inited + 200) = 0x8000000225D231F0;
  *(inited + 208) = v23;
  if (v68)
  {
    v24 = v68;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  *(inited + 216) = v24;
  *(inited + 224) = 0xD000000000000016;
  v25 = v49;
  if (!v67)
  {
    v25 = 0;
  }

  *(inited + 232) = 0x8000000225D23210;
  *(inited + 240) = v25;
  if (v67)
  {
    v26 = v67;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  *(inited + 248) = v26;
  *(inited + 256) = 0xD000000000000017;
  v27 = v51;
  if (!v50)
  {
    v27 = 0;
  }

  *(inited + 264) = 0x8000000225D23230;
  *(inited + 272) = v27;
  if (v50)
  {
    v28 = v50;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  *(inited + 280) = v28;
  *(inited + 288) = 0xD000000000000018;
  v29 = v53;
  v30 = v54;
  if (!v52)
  {
    v29 = 0;
  }

  *(inited + 296) = 0x8000000225D23250;
  *(inited + 304) = v29;
  if (v52)
  {
    v31 = v52;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  if (!v9)
  {
    v30 = 0;
  }

  *(inited + 328) = 0xEF7869666675732ELL;
  *(inited + 336) = v30;
  if (v9)
  {
    v32 = v9;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = v58;
  if (!v57)
  {
    v33 = 0;
  }

  *(inited + 360) = 0x8000000225D23270;
  *(inited + 368) = v33;
  if (v57)
  {
    v34 = v57;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  *(inited + 376) = v34;
  v35 = v56;
  if (!v55)
  {
    v35 = 0;
  }

  *(inited + 392) = 0x8000000225D23290;
  *(inited + 400) = v35;
  if (v55)
  {
    v36 = v55;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  *(inited + 408) = v36;
  *(inited + 416) = 0x746E656D75636F64;
  v37 = v60;
  if (!v59)
  {
    v37 = 0;
  }

  *(inited + 424) = 0xED0000797469632ELL;
  *(inited + 432) = v37;
  *(inited + 312) = v31;
  *(inited + 320) = 0x746E656D75636F64;
  if (v59)
  {
    v38 = v59;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  *(inited + 440) = v38;
  *(inited + 448) = 0x746E656D75636F64;
  v39 = v62;
  if (!v61)
  {
    v39 = 0;
  }

  *(inited + 456) = 0xEE0065746174732ELL;
  *(inited + 464) = v39;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 88) = v16;
  *(inited + 96) = 0xD000000000000013;
  if (v61)
  {
    v40 = v61;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  *(inited + 472) = v40;
  *(inited + 480) = 0xD000000000000013;
  v41 = v64;
  if (!v63)
  {
    v41 = 0;
  }

  *(inited + 488) = 0x8000000225D232B0;
  *(inited + 496) = v41;
  if (v63)
  {
    v42 = v63;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  *(inited + 504) = v42;
  *(inited + 512) = 0xD000000000000010;
  *(inited + 344) = v32;
  *(inited + 352) = 0xD000000000000010;
  *(inited + 384) = 0xD000000000000010;
  *(inited + 520) = 0x8000000225D232D0;
  v43 = v66;
  if (!v65)
  {
    v43 = 0;
  }

  *(inited + 528) = v43;
  if (v65)
  {
    v13 = v65;
  }

  *(inited + 536) = v13;
  *(inited + 16) = xmmword_225CF90D0;

  v44 = sub_225B2E928(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70, &unk_225CDC620);
  swift_arrayDestroy();
  v45 = sub_225BD9868(v44);

  return v45;
}

unint64_t sub_225BD3F94(char a1)
{
  result = 0x65707954636F64;
  switch(a1)
  {
    case 1:
      return 0x726575737369;
    case 2:
      return 0x72655661766D6161;
    case 3:
    case 21:
      return 0xD000000000000013;
    case 4:
      return 0x43656C6369686576;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0xD000000000000010;
    case 7:
    case 31:
      return 0x656D614E7473616CLL;
    case 8:
      return 0x6D614E7473726966;
    case 9:
      return 0x614E656C6464696DLL;
    case 10:
      return 0x7265646E6567;
    case 11:
      return 0x726F6C6F43657965;
    case 12:
      return 0x746867696568;
    case 13:
      return 0x31746565727473;
    case 14:
      return 2037672291;
    case 15:
      return 0x6574617473;
    case 16:
      return 0x6F436C6174736F70;
    case 17:
      return 0x7265626D754E6469;
    case 18:
      v3 = 5;
      goto LABEL_44;
    case 19:
      return 0x7972746E756F63;
    case 20:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000014;
    case 23:
      return 0x6974617269707865;
    case 24:
      return 0x7461446575737369;
    case 25:
      return 6451044;
    case 26:
      return 0x32746565727473;
    case 27:
      return 0x6F6C6F4372696168;
    case 28:
      return 0x42664F6563616C70;
    case 29:
      return 0x666E497469647561;
    case 30:
      return 0xD000000000000016;
    case 32:
      return 0x6D614E7473726966;
    case 33:
      return 0x614E786966667573;
    case 34:
      return 0x786966667573;
    case 35:
      return 0x6152746867696577;
    case 36:
      return 0x746963696E687465;
    case 37:
      v3 = 13;
      goto LABEL_44;
    case 38:
    case 39:
    case 44:
      return 0xD000000000000017;
    case 40:
      return 0xD000000000000021;
    case 41:
    case 42:
      v3 = 11;
LABEL_44:
      result = v3 | 0xD000000000000010;
      break;
    case 43:
      result = 0x6E61696C706D6F63;
      break;
    case 45:
      result = 0x6F50746867696577;
      break;
    case 46:
      result = 0x694B746867696577;
      break;
    case 47:
      result = 0x6E6F446E6167726FLL;
      break;
    case 48:
      result = 0x6E617265746576;
      break;
    case 49:
      result = 0xD000000000000010;
      break;
    case 50:
      result = 0xD00000000000001FLL;
      break;
    case 51:
      result = 0x5538317265646E75;
      break;
    case 52:
      result = 0x5539317265646E75;
      break;
    case 53:
      result = 0x5531327265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225BD4540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_225BD9F6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_225BD4574(uint64_t a1)
{
  v2 = sub_225BD9B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BD45B0(uint64_t a1)
{
  v2 = sub_225BD9B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDF417ParsedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FB98, &qword_225CF90F0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v47 - v4;
  v6 = *v1;
  v49 = v1[1];
  v50 = v6;
  v7 = v1[2];
  v47[102] = v1[3];
  v48 = v7;
  v8 = v1[4];
  v47[100] = v1[5];
  v47[101] = v8;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v47[94] = v1[9];
  v47[95] = v10;
  v12 = v1[10];
  v47[92] = v1[11];
  v47[93] = v11;
  v13 = v1[12];
  v47[90] = v1[13];
  v47[91] = v12;
  v14 = v1[15];
  v47[98] = v1[14];
  v47[99] = v9;
  v47[97] = v14;
  v15 = v1[17];
  v47[96] = v1[16];
  v47[88] = v15;
  v47[89] = v13;
  v16 = v1[19];
  v47[86] = v1[18];
  v47[87] = v16;
  v17 = v1[21];
  v47[82] = v1[20];
  v47[81] = v17;
  v18 = v1[23];
  v47[84] = v1[22];
  v47[83] = v18;
  v19 = v1[25];
  v47[85] = v1[24];
  v47[80] = v19;
  v20 = v1[27];
  v47[78] = v1[26];
  v47[79] = v20;
  v21 = v1[29];
  v47[76] = v1[28];
  v47[77] = v21;
  v22 = v1[31];
  v47[74] = v1[30];
  v47[75] = v22;
  v23 = v1[33];
  v47[72] = v1[32];
  v47[73] = v23;
  v24 = v1[35];
  v47[2] = v1[34];
  v47[3] = v24;
  v25 = v1[37];
  v47[4] = v1[36];
  v47[5] = v25;
  v26 = v1[39];
  v47[6] = v1[38];
  v47[7] = v26;
  v27 = v1[41];
  v47[8] = v1[40];
  v47[9] = v27;
  v28 = v1[43];
  v47[10] = v1[42];
  v47[11] = v28;
  v29 = v1[45];
  v47[12] = v1[44];
  v47[13] = v29;
  v30 = v1[47];
  v47[14] = v1[46];
  v47[15] = v30;
  v31 = v1[49];
  v47[16] = v1[48];
  v47[17] = v31;
  v32 = v1[51];
  v47[18] = v1[50];
  v47[19] = v32;
  v33 = v1[53];
  v47[20] = v1[52];
  v47[21] = v33;
  v34 = v1[55];
  v47[22] = v1[54];
  v47[23] = v34;
  v35 = v1[57];
  v47[24] = v1[56];
  v47[25] = v35;
  v36 = v1[59];
  v47[26] = v1[58];
  v47[27] = v36;
  v37 = v1[61];
  v47[28] = v1[60];
  v47[29] = v37;
  v38 = v1[63];
  v47[30] = v1[62];
  v47[31] = v38;
  v47[32] = v1[64];
  v47[33] = v1[65];
  v47[34] = v1[66];
  v47[35] = v1[67];
  v47[36] = v1[68];
  v47[37] = v1[69];
  v47[38] = v1[70];
  v47[39] = v1[71];
  v47[40] = v1[72];
  v47[41] = v1[73];
  v47[42] = v1[74];
  v47[43] = v1[75];
  v47[44] = v1[76];
  v47[45] = v1[77];
  v47[46] = v1[78];
  v47[47] = v1[79];
  v47[48] = v1[80];
  v47[49] = v1[81];
  v47[50] = v1[82];
  v47[51] = v1[83];
  v47[52] = v1[84];
  v47[53] = v1[85];
  v47[54] = v1[86];
  v47[55] = v1[87];
  v47[56] = v1[88];
  v47[57] = v1[89];
  v47[58] = v1[90];
  v47[59] = v1[91];
  v47[60] = v1[92];
  v47[61] = v1[93];
  v47[62] = v1[94];
  v47[63] = v1[95];
  v47[64] = v1[96];
  v47[65] = v1[97];
  v47[66] = v1[98];
  v47[67] = v1[99];
  v47[68] = v1[100];
  v47[69] = v1[101];
  v47[70] = v1[102];
  v47[71] = v1[103];
  v39 = v1[104];
  v40 = v1[105];
  v41 = v1[106];
  v42 = v1[107];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BD9B3C();
  sub_225CCFCE4();
  v54 = 0;
  v43 = v5;
  v44 = v53;
  v45 = v51;
  sub_225CCF784();
  if (v45)
  {
    return (*(v52 + 8))(v43, v44);
  }

  v50 = v41;
  v51 = v42;
  v49 = v40;
  v47[1] = v39;
  v54 = 1;
  sub_225CCF734();
  v54 = 2;
  sub_225CCF734();
  v54 = 3;
  sub_225CCF734();
  v54 = 4;
  sub_225CCF734();
  v54 = 5;
  sub_225CCF734();
  v54 = 6;
  sub_225CCF734();
  v54 = 7;
  sub_225CCF734();
  v54 = 8;
  sub_225CCF734();
  v54 = 9;
  v48 = v43;
  sub_225CCF734();
  v54 = 10;
  sub_225CCF734();
  v54 = 11;
  sub_225CCF734();
  v54 = 12;
  sub_225CCF734();
  v54 = 13;
  sub_225CCF734();
  v54 = 14;
  sub_225CCF734();
  v54 = 15;
  sub_225CCF734();
  v54 = 16;
  sub_225CCF734();
  v54 = 17;
  sub_225CCF734();
  v54 = 18;
  sub_225CCF734();
  v54 = 19;
  sub_225CCF734();
  v54 = 20;
  sub_225CCF734();
  v54 = 21;
  sub_225CCF734();
  v54 = 22;
  sub_225CCF734();
  v54 = 23;
  sub_225CCF734();
  v54 = 24;
  sub_225CCF734();
  v54 = 25;
  sub_225CCF734();
  v54 = 26;
  sub_225CCF734();
  v54 = 27;
  sub_225CCF734();
  v54 = 28;
  sub_225CCF734();
  v54 = 29;
  sub_225CCF734();
  v54 = 30;
  sub_225CCF734();
  v54 = 31;
  sub_225CCF734();
  v54 = 32;
  sub_225CCF734();
  v54 = 33;
  sub_225CCF734();
  v54 = 34;
  sub_225CCF734();
  v54 = 35;
  sub_225CCF734();
  v54 = 36;
  sub_225CCF734();
  v54 = 37;
  sub_225CCF734();
  v54 = 38;
  sub_225CCF734();
  v54 = 39;
  sub_225CCF734();
  v54 = 40;
  sub_225CCF734();
  v54 = 41;
  sub_225CCF734();
  v54 = 42;
  sub_225CCF734();
  v54 = 43;
  sub_225CCF734();
  v54 = 44;
  sub_225CCF734();
  v54 = 45;
  sub_225CCF734();
  v54 = 46;
  sub_225CCF734();
  v54 = 47;
  sub_225CCF734();
  v54 = 48;
  sub_225CCF734();
  v54 = 49;
  sub_225CCF734();
  v54 = 50;
  sub_225CCF734();
  v54 = 51;
  sub_225CCF734();
  v54 = 52;
  sub_225CCF734();
  v54 = 53;
  sub_225CCF734();
  return (*(v52 + 8))(v48, v53);
}

uint64_t PDF417ParsedData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBA8, &qword_225CF90F8);
  v5 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v7 = &v81 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BD9B3C();
  sub_225CCFCA4();
  if (v2)
  {
    v188 = v2;
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_bridgeObjectRelease_n();
    v155 = 0;
    v153 = 0;
    v151 = 0;
    v150 = 0;
    v152 = 0;
    v154 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v189 = 0;
    v178 = 0;
    v179 = 0;
  }

  else
  {
    v8 = v5;
    v9 = a2;
    LOBYTE(v191[0]) = 0;
    v11 = sub_225CCF684();
    v148 = v12;
    LOBYTE(v191[0]) = 1;
    v135 = sub_225CCF624();
    v136 = v13;
    LOBYTE(v191[0]) = 2;
    v134 = sub_225CCF624();
    v147 = v14;
    LOBYTE(v191[0]) = 3;
    v132 = sub_225CCF624();
    v133 = v11;
    v146 = v15;
    LOBYTE(v191[0]) = 4;
    v16 = sub_225CCF624();
    v18 = v17;
    v131 = v16;
    LOBYTE(v191[0]) = 5;
    v130 = sub_225CCF624();
    v179 = v19;
    LOBYTE(v191[0]) = 6;
    v129 = sub_225CCF624();
    v178 = v20;
    LOBYTE(v191[0]) = 7;
    v21 = sub_225CCF624();
    v189 = v22;
    v128 = v21;
    LOBYTE(v191[0]) = 8;
    v127 = sub_225CCF624();
    v187 = v23;
    v188 = 0;
    v126 = a1;
    LOBYTE(v191[0]) = 9;
    v24 = sub_225CCF624();
    v186 = v25;
    v188 = 0;
    v26 = v24;
    LOBYTE(v191[0]) = 10;
    v27 = sub_225CCF624();
    v185 = v28;
    v188 = 0;
    v29 = v27;
    LOBYTE(v191[0]) = 11;
    v30 = sub_225CCF624();
    v184 = v31;
    v188 = 0;
    v32 = v30;
    LOBYTE(v191[0]) = 12;
    v125 = sub_225CCF624();
    v183 = v33;
    v188 = 0;
    LOBYTE(v191[0]) = 13;
    v124 = sub_225CCF624();
    v182 = v34;
    v188 = 0;
    LOBYTE(v191[0]) = 14;
    v123 = sub_225CCF624();
    v181 = v35;
    v188 = 0;
    LOBYTE(v191[0]) = 15;
    v122 = sub_225CCF624();
    v180 = v36;
    v188 = 0;
    LOBYTE(v191[0]) = 16;
    v121 = sub_225CCF624();
    v177 = v37;
    v188 = 0;
    LOBYTE(v191[0]) = 17;
    v120 = sub_225CCF624();
    v176 = v38;
    v188 = 0;
    LOBYTE(v191[0]) = 18;
    v119 = sub_225CCF624();
    v175 = v39;
    v188 = 0;
    LOBYTE(v191[0]) = 19;
    v118 = sub_225CCF624();
    v174 = v40;
    v188 = 0;
    LOBYTE(v191[0]) = 20;
    v117 = sub_225CCF624();
    v173 = v41;
    v188 = 0;
    LOBYTE(v191[0]) = 21;
    v116 = sub_225CCF624();
    v172 = v42;
    v188 = 0;
    LOBYTE(v191[0]) = 22;
    v115 = sub_225CCF624();
    v171 = v43;
    v188 = 0;
    LOBYTE(v191[0]) = 23;
    v114 = sub_225CCF624();
    v170 = v44;
    v188 = 0;
    LOBYTE(v191[0]) = 24;
    v113 = sub_225CCF624();
    v169 = v45;
    v188 = 0;
    LOBYTE(v191[0]) = 25;
    v112 = sub_225CCF624();
    v168 = v46;
    v188 = 0;
    LOBYTE(v191[0]) = 26;
    v111 = sub_225CCF624();
    v167 = v47;
    v188 = 0;
    LOBYTE(v191[0]) = 27;
    v110 = sub_225CCF624();
    v166 = v48;
    v188 = 0;
    LOBYTE(v191[0]) = 28;
    v109 = sub_225CCF624();
    v165 = v49;
    v188 = 0;
    LOBYTE(v191[0]) = 29;
    v108 = sub_225CCF624();
    v164 = v50;
    v188 = 0;
    LOBYTE(v191[0]) = 30;
    v107 = sub_225CCF624();
    v163 = v51;
    v188 = 0;
    LOBYTE(v191[0]) = 31;
    v106 = sub_225CCF624();
    v162 = v52;
    v188 = 0;
    LOBYTE(v191[0]) = 32;
    v105 = sub_225CCF624();
    v161 = v53;
    v188 = 0;
    LOBYTE(v191[0]) = 33;
    v104 = sub_225CCF624();
    v160 = v54;
    v188 = 0;
    LOBYTE(v191[0]) = 34;
    v103 = sub_225CCF624();
    v159 = v55;
    v188 = 0;
    LOBYTE(v191[0]) = 35;
    v102 = sub_225CCF624();
    v158 = v56;
    v188 = 0;
    LOBYTE(v191[0]) = 36;
    v101 = sub_225CCF624();
    v157 = v57;
    v188 = 0;
    LOBYTE(v191[0]) = 37;
    v100 = sub_225CCF624();
    v156 = v58;
    v188 = 0;
    LOBYTE(v191[0]) = 38;
    v99 = sub_225CCF624();
    v154 = v59;
    v188 = 0;
    LOBYTE(v191[0]) = 39;
    v98 = sub_225CCF624();
    v152 = v60;
    v188 = 0;
    LOBYTE(v191[0]) = 40;
    v97 = sub_225CCF624();
    v150 = v61;
    v188 = 0;
    LOBYTE(v191[0]) = 41;
    v96 = sub_225CCF624();
    v151 = v62;
    v188 = 0;
    LOBYTE(v191[0]) = 42;
    v95 = sub_225CCF624();
    v153 = v63;
    v188 = 0;
    LOBYTE(v191[0]) = 43;
    v94 = sub_225CCF624();
    v155 = v64;
    v188 = 0;
    LOBYTE(v191[0]) = 44;
    v93 = sub_225CCF624();
    v141 = v65;
    v188 = 0;
    LOBYTE(v191[0]) = 45;
    v92 = sub_225CCF624();
    v142 = v66;
    v188 = 0;
    LOBYTE(v191[0]) = 46;
    v91 = sub_225CCF624();
    v143 = v67;
    v188 = 0;
    LOBYTE(v191[0]) = 47;
    v90 = sub_225CCF624();
    v144 = v68;
    v188 = 0;
    LOBYTE(v191[0]) = 48;
    v89 = sub_225CCF624();
    v145 = v69;
    v188 = 0;
    LOBYTE(v191[0]) = 49;
    v88 = sub_225CCF624();
    v140 = v70;
    v188 = 0;
    LOBYTE(v191[0]) = 50;
    v87 = sub_225CCF624();
    v139 = v71;
    v188 = 0;
    LOBYTE(v191[0]) = 51;
    v86 = sub_225CCF624();
    v138 = v72;
    v188 = 0;
    LOBYTE(v191[0]) = 52;
    v85 = sub_225CCF624();
    v137 = v73;
    v188 = 0;
    v192 = 53;
    v74 = sub_225CCF624();
    v83 = v75;
    v84 = v74;
    v188 = 0;
    (*(v8 + 8))(v7, v149);
    v190[0] = v133;
    v190[1] = v148;
    v76 = v136;
    v190[2] = v135;
    v190[3] = v136;
    v190[4] = v134;
    v190[5] = v147;
    v190[6] = v132;
    v190[7] = v146;
    v190[8] = v131;
    v81 = v26;
    v82 = v18;
    v190[9] = v18;
    v190[10] = v130;
    v190[11] = v179;
    v190[12] = v129;
    v77 = v178;
    v190[13] = v178;
    v190[14] = v128;
    v190[15] = v189;
    v190[16] = v127;
    v190[17] = v187;
    v190[18] = v26;
    v78 = v186;
    v190[19] = v186;
    v190[20] = v29;
    v79 = v185;
    v190[21] = v185;
    v190[22] = v32;
    v80 = v184;
    v190[23] = v184;
    v190[24] = v125;
    v190[25] = v183;
    v190[26] = v124;
    v190[27] = v182;
    v190[28] = v123;
    v190[29] = v181;
    v190[30] = v122;
    v190[31] = v180;
    v190[32] = v121;
    v190[33] = v177;
    v190[34] = v120;
    v190[35] = v176;
    v190[36] = v119;
    v190[37] = v175;
    v190[38] = v118;
    v190[39] = v174;
    v190[40] = v117;
    v190[41] = v173;
    v190[42] = v116;
    v190[43] = v172;
    v190[44] = v115;
    v190[45] = v171;
    v190[46] = v114;
    v190[47] = v170;
    v190[48] = v113;
    v190[49] = v169;
    v190[50] = v112;
    v190[51] = v168;
    v190[52] = v111;
    v190[53] = v167;
    v190[54] = v110;
    v190[55] = v166;
    v190[56] = v109;
    v190[57] = v165;
    v190[58] = v108;
    v190[59] = v164;
    v190[60] = v107;
    v190[61] = v163;
    v190[62] = v106;
    v190[63] = v162;
    v190[64] = v105;
    v190[65] = v161;
    v190[66] = v104;
    v190[67] = v160;
    v190[68] = v103;
    v190[69] = v159;
    v190[70] = v102;
    v190[71] = v158;
    v190[72] = v101;
    v190[73] = v157;
    v190[74] = v100;
    v190[75] = v156;
    v190[76] = v99;
    v190[77] = v154;
    v190[78] = v98;
    v190[79] = v152;
    v190[80] = v97;
    v190[81] = v150;
    v190[82] = v96;
    v190[83] = v151;
    v190[84] = v95;
    v190[85] = v153;
    v190[86] = v94;
    v190[87] = v155;
    v190[88] = v93;
    v190[89] = v141;
    v190[90] = v92;
    v190[91] = v142;
    v190[92] = v91;
    v190[93] = v143;
    v190[94] = v90;
    v190[95] = v144;
    v190[96] = v89;
    v190[97] = v145;
    v190[98] = v88;
    v190[99] = v140;
    v190[100] = v87;
    v190[101] = v139;
    v190[102] = v86;
    v190[103] = v138;
    v190[104] = v85;
    v190[105] = v137;
    v190[106] = v84;
    v190[107] = v83;
    memcpy(v9, v190, 0x360uLL);
    sub_225BD9800(v190, v191);
    __swift_destroy_boxed_opaque_existential_0(v126);
    v191[0] = v133;
    v191[1] = v148;
    v191[2] = v135;
    v191[3] = v76;
    v191[4] = v134;
    v191[5] = v147;
    v191[6] = v132;
    v191[7] = v146;
    v191[8] = v131;
    v191[9] = v82;
    v191[10] = v130;
    v191[11] = v179;
    v191[12] = v129;
    v191[13] = v77;
    v191[14] = v128;
    v191[15] = v189;
    v191[16] = v127;
    v191[17] = v187;
    v191[18] = v81;
    v191[19] = v78;
    v191[20] = v29;
    v191[21] = v79;
    v191[22] = v32;
    v191[23] = v80;
    v191[24] = v125;
    v191[25] = v183;
    v191[26] = v124;
    v191[27] = v182;
    v191[28] = v123;
    v191[29] = v181;
    v191[30] = v122;
    v191[31] = v180;
    v191[32] = v121;
    v191[33] = v177;
    v191[34] = v120;
    v191[35] = v176;
    v191[36] = v119;
    v191[37] = v175;
    v191[38] = v118;
    v191[39] = v174;
    v191[40] = v117;
    v191[41] = v173;
    v191[42] = v116;
    v191[43] = v172;
    v191[44] = v115;
    v191[45] = v171;
    v191[46] = v114;
    v191[47] = v170;
    v191[48] = v113;
    v191[49] = v169;
    v191[50] = v112;
    v191[51] = v168;
    v191[52] = v111;
    v191[53] = v167;
    v191[54] = v110;
    v191[55] = v166;
    v191[56] = v109;
    v191[57] = v165;
    v191[58] = v108;
    v191[59] = v164;
    v191[60] = v107;
    v191[61] = v163;
    v191[62] = v106;
    v191[63] = v162;
    v191[64] = v105;
    v191[65] = v161;
    v191[66] = v104;
    v191[67] = v160;
    v191[68] = v103;
    v191[69] = v159;
    v191[70] = v102;
    v191[71] = v158;
    v191[72] = v101;
    v191[73] = v157;
    v191[74] = v100;
    v191[75] = v156;
    v191[76] = v99;
    v191[77] = v154;
    v191[78] = v98;
    v191[79] = v152;
    v191[80] = v97;
    v191[81] = v150;
    v191[82] = v96;
    v191[83] = v151;
    v191[84] = v95;
    v191[85] = v153;
    v191[86] = v94;
    v191[87] = v155;
    v191[88] = v93;
    v191[89] = v141;
    v191[90] = v92;
    v191[91] = v142;
    v191[92] = v91;
    v191[93] = v143;
    v191[94] = v90;
    v191[95] = v144;
    v191[96] = v89;
    v191[97] = v145;
    v191[98] = v88;
    v191[99] = v140;
    v191[100] = v87;
    v191[101] = v139;
    v191[102] = v86;
    v191[103] = v138;
    v191[104] = v85;
    v191[105] = v137;
    v191[106] = v84;
    v191[107] = v83;
    return sub_225BD9838(v191);
  }
}

uint64_t PDF417ParsedData.debugDescription.getter()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v113 = v0[1];
  v114 = v0[4];
  v5 = v0[7];
  v132 = v0[6];
  v6 = v0[9];
  v7 = v0[11];
  v115 = v0[8];
  v116 = v0[10];
  v8 = v0[13];
  v117 = v0[12];
  v118 = v0[15];
  v119 = v0[14];
  v120 = v0[17];
  v121 = v0[16];
  v122 = v0[19];
  v123 = v0[18];
  v124 = v0[21];
  v125 = v0[20];
  v126 = v0[23];
  v127 = v0[22];
  v128 = v0[25];
  v131 = v0[26];
  v129 = v0[24];
  v130 = v0[27];
  v133 = v0[29];
  v134 = v0[28];
  v135 = v0[31];
  v136 = v0[30];
  v137 = v0[33];
  v138 = v0[32];
  v139 = v0[35];
  v140 = v0[34];
  v141 = v0[37];
  v142 = v0[36];
  v143 = v0[39];
  v144 = v0[38];
  v145 = v0[41];
  v146 = v0[40];
  v147 = v0[43];
  v148 = v0[42];
  v149 = v0[45];
  v150 = v0[44];
  v151 = v0[47];
  v152 = v0[46];
  v153 = v0[49];
  v154 = v0[48];
  v155 = v0[51];
  v156 = v0[50];
  v157 = v0[53];
  v158 = v0[52];
  v159 = v0[55];
  v160 = v0[54];
  v161 = v0[57];
  v162 = v0[56];
  v163 = v0[59];
  v164 = v0[58];
  v165 = v0[61];
  v166 = v0[60];
  v167 = v0[63];
  v168 = v0[62];
  v169 = v0[65];
  v170 = v0[64];
  v171 = v0[67];
  v172 = v0[66];
  v173 = v0[69];
  v174 = v0[68];
  v175 = v0[71];
  v176 = v0[70];
  v178 = v0[72];
  v177 = v0[73];
  v180 = v0[74];
  v179 = v0[75];
  v182 = v0[76];
  v181 = v0[77];
  v186 = v0[80];
  v185 = v0[81];
  v188 = v0[82];
  v187 = v0[83];
  v184 = v0[84];
  v183 = v0[85];
  v190 = v0[86];
  v189 = v0[87];
  v192 = v0[88];
  v191 = v0[89];
  v193 = v0[91];
  v194 = v0[90];
  v195 = v0[93];
  v196 = v0[92];
  v197 = v0[95];
  v198 = v0[94];
  v199 = v0[97];
  v200 = v0[96];
  v201 = v0[99];
  v202 = v0[98];
  v203 = v0[101];
  v204 = v0[100];
  v205 = v0[103];
  v206 = v0[102];
  v207 = v0[105];
  v208 = v0[104];
  v209 = v0[107];
  v210 = v0[106];

  sub_225CCF204();
  MEMORY[0x22AA6CE70](0x746E656D75636F44, 0xEF203A6570795420);
  MEMORY[0x22AA6CE70](v1, v113);
  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D232F0);
  if (v2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v9, v2);

  MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D23310);
  if (v4)
  {
    v10 = v114;
  }

  else
  {
    v10 = 0;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v10, v11);

  MEMORY[0x22AA6CE70](0xD00000000000001ELL, 0x8000000225D23330);
  if (v5)
  {
    v12 = v132;
  }

  else
  {
    v12 = 0;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v12, v13);

  MEMORY[0x22AA6CE70]();
  if (v6)
  {
    v14 = v115;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v14, v15);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23370);
  if (v7)
  {
    v16 = v116;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v16, v17);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23390);
  if (v8)
  {
    v18 = v117;
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v18, v19);

  MEMORY[0x22AA6CE70](0x20796C696D61460ALL, 0xEE00203A656D614ELL);
  if (v118)
  {
    v20 = v119;
  }

  else
  {
    v20 = 0;
  }

  if (v118)
  {
    v21 = v118;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v20, v21);

  MEMORY[0x22AA6CE70](0x4E2074737269460ALL, 0xED0000203A656D61);
  if (v120)
  {
    v22 = v121;
  }

  else
  {
    v22 = 0;
  }

  if (v120)
  {
    v23 = v120;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v22, v23);

  MEMORY[0x22AA6CE70](0x20656C6464694D0ALL, 0xEE00203A656D614ELL);
  if (v122)
  {
    v24 = v123;
  }

  else
  {
    v24 = 0;
  }

  if (v122)
  {
    v25 = v122;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v24, v25);

  MEMORY[0x22AA6CE70](0x3A7265646E65470ALL, 0xE900000000000020);
  if (v124)
  {
    v26 = v125;
  }

  else
  {
    v26 = 0;
  }

  if (v124)
  {
    v27 = v124;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v26, v27);

  MEMORY[0x22AA6CE70](0x6C6F43206579450ALL, 0xEC000000203A726FLL);
  if (v126)
  {
    v28 = v127;
  }

  else
  {
    v28 = 0;
  }

  if (v126)
  {
    v29 = v126;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v28, v29);

  MEMORY[0x22AA6CE70](0x3A7468676965480ALL, 0xE900000000000020);
  if (v128)
  {
    v30 = v129;
  }

  else
  {
    v30 = 0;
  }

  if (v128)
  {
    v31 = v128;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v30, v31);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D233B0);
  if (v130)
  {
    v32 = v131;
  }

  else
  {
    v32 = 0;
  }

  if (v130)
  {
    v33 = v130;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v32, v33);

  MEMORY[0x22AA6CE70](0x203A797469430ALL, 0xE700000000000000);
  if (v133)
  {
    v34 = v134;
  }

  else
  {
    v34 = 0;
  }

  if (v133)
  {
    v35 = v133;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v34, v35);

  MEMORY[0x22AA6CE70](0x4E2074737269460ALL, 0xED0000203A656D61);

  MEMORY[0x22AA6CE70](v22, v23);

  MEMORY[0x22AA6CE70](0x203A65746174530ALL, 0xE800000000000000);
  if (v135)
  {
    v36 = v136;
  }

  else
  {
    v36 = 0;
  }

  if (v135)
  {
    v37 = v135;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v36, v37);

  MEMORY[0x22AA6CE70](0x206C6174736F500ALL, 0xEE00203A65646F43);
  if (v137)
  {
    v38 = v138;
  }

  else
  {
    v38 = 0;
  }

  if (v137)
  {
    v39 = v137;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v38, v39);

  MEMORY[0x22AA6CE70](0x626D754E2044490ALL, 0xEC000000203A7265);
  if (v139)
  {
    v40 = v140;
  }

  else
  {
    v40 = 0;
  }

  if (v139)
  {
    v41 = v139;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v40, v41);

  MEMORY[0x22AA6CE70](0xD000000000000019, 0x8000000225D233D0);
  if (v141)
  {
    v42 = v142;
  }

  else
  {
    v42 = 0;
  }

  if (v141)
  {
    v43 = v141;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v42, v43);

  MEMORY[0x22AA6CE70](0x7972746E756F430ALL, 0xEA0000000000203ALL);
  if (v143)
  {
    v44 = v144;
  }

  else
  {
    v44 = 0;
  }

  if (v143)
  {
    v45 = v143;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v44, v45);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D233F0);
  if (v145)
  {
    v46 = v146;
  }

  else
  {
    v46 = 0;
  }

  if (v145)
  {
    v47 = v145;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v46, v47);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D23410);
  if (v147)
  {
    v48 = v148;
  }

  else
  {
    v48 = 0;
  }

  if (v147)
  {
    v49 = v147;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v48, v49);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23430);
  if (v149)
  {
    v50 = v150;
  }

  else
  {
    v50 = 0;
  }

  if (v149)
  {
    v51 = v149;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v50, v51);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D23450);
  if (v151)
  {
    v52 = v152;
  }

  else
  {
    v52 = 0;
  }

  if (v151)
  {
    v53 = v151;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v52, v53);

  MEMORY[0x22AA6CE70](0x442065757373490ALL, 0xED0000203A657461);
  if (v153)
  {
    v54 = v154;
  }

  else
  {
    v54 = 0;
  }

  if (v153)
  {
    v55 = v153;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v54, v55);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D23470);
  if (v155)
  {
    v56 = v156;
  }

  else
  {
    v56 = 0;
  }

  if (v155)
  {
    v57 = v155;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v56, v57);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23490);
  if (v157)
  {
    v58 = v158;
  }

  else
  {
    v58 = 0;
  }

  if (v157)
  {
    v59 = v157;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v58, v59);

  MEMORY[0x22AA6CE70](0x6F4320726961480ALL, 0xED0000203A726F6CLL);
  if (v159)
  {
    v60 = v160;
  }

  else
  {
    v60 = 0;
  }

  if (v159)
  {
    v61 = v159;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v60, v61);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D234B0);
  if (v161)
  {
    v62 = v162;
  }

  else
  {
    v62 = 0;
  }

  if (v161)
  {
    v63 = v161;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v62, v63);

  MEMORY[0x22AA6CE70](0x492074696475410ALL, 0xED0000203A6F666ELL);
  if (v163)
  {
    v64 = v164;
  }

  else
  {
    v64 = 0;
  }

  if (v163)
  {
    v65 = v163;
  }

  else
  {
    v65 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v64, v65);

  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D234D0);
  if (v165)
  {
    v66 = v166;
  }

  else
  {
    v66 = 0;
  }

  if (v165)
  {
    v67 = v165;
  }

  else
  {
    v67 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v66, v67);

  MEMORY[0x22AA6CE70](0xD000000000000024, 0x8000000225D234F0);
  if (v167)
  {
    v68 = v168;
  }

  else
  {
    v68 = 0;
  }

  if (v167)
  {
    v69 = v167;
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v68, v69);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D23520);

  MEMORY[0x22AA6CE70](v68, v69);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D23540);
  if (v169)
  {
    v70 = v170;
  }

  else
  {
    v70 = 0;
  }

  if (v169)
  {
    v71 = v169;
  }

  else
  {
    v71 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v70, v71);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23560);
  if (v171)
  {
    v72 = v172;
  }

  else
  {
    v72 = 0;
  }

  if (v171)
  {
    v73 = v171;
  }

  else
  {
    v73 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v72, v73);

  MEMORY[0x22AA6CE70](0x3A7869666675530ALL, 0xE900000000000020);
  if (v173)
  {
    v74 = v174;
  }

  else
  {
    v74 = 0;
  }

  if (v173)
  {
    v75 = v173;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v74, v75);

  MEMORY[0x22AA6CE70](0x207468676965570ALL, 0xEF203A65676E6152);
  if (v175)
  {
    v76 = v176;
  }

  else
  {
    v76 = 0;
  }

  if (v175)
  {
    v77 = v175;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v76, v77);

  MEMORY[0x22AA6CE70](0x6963696E6874450ALL, 0xEC000000203A7974);
  if (v177)
  {
    v78 = v178;
  }

  else
  {
    v78 = 0;
  }

  if (v177)
  {
    v79 = v177;
  }

  else
  {
    v79 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v78, v79);

  MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D23580);
  if (v179)
  {
    v80 = v180;
  }

  else
  {
    v80 = 0;
  }

  if (v179)
  {
    v81 = v179;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v80, v81);

  MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D235B0);
  if (v181)
  {
    v82 = v182;
  }

  else
  {
    v82 = 0;
  }

  if (v181)
  {
    v83 = v181;
  }

  else
  {
    v83 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v82, v83);

  MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D235D0);
  if (v183)
  {
    v84 = v184;
  }

  else
  {
    v84 = 0;
  }

  if (v183)
  {
    v85 = v183;
  }

  else
  {
    v85 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v84, v85);

  MEMORY[0x22AA6CE70](0xD000000000000026, 0x8000000225D235F0);
  if (v185)
  {
    v86 = v186;
  }

  else
  {
    v86 = 0;
  }

  if (v185)
  {
    v87 = v185;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v86, v87);

  MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D23620);
  if (v187)
  {
    v88 = v188;
  }

  else
  {
    v88 = 0;
  }

  if (v187)
  {
    v89 = v187;
  }

  else
  {
    v89 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v88, v89);

  MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D23650);

  MEMORY[0x22AA6CE70](v84, v85);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D23680);
  if (v189)
  {
    v90 = v190;
  }

  else
  {
    v90 = 0;
  }

  if (v189)
  {
    v91 = v189;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v90, v91);

  MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D236A0);
  if (v191)
  {
    v92 = v192;
  }

  else
  {
    v92 = 0;
  }

  if (v191)
  {
    v93 = v191;
  }

  else
  {
    v93 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v92, v93);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D236C0);
  if (v193)
  {
    v94 = v194;
  }

  else
  {
    v94 = 0;
  }

  if (v193)
  {
    v95 = v193;
  }

  else
  {
    v95 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v94, v95);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D236E0);
  if (v195)
  {
    v96 = v196;
  }

  else
  {
    v96 = 0;
  }

  if (v195)
  {
    v97 = v195;
  }

  else
  {
    v97 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v96, v97);

  MEMORY[0x22AA6CE70](0x44206E6167724F0ALL, 0xEE00203A726F6E6FLL);
  if (v197)
  {
    v98 = v198;
  }

  else
  {
    v98 = 0;
  }

  if (v197)
  {
    v99 = v197;
  }

  else
  {
    v99 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v98, v99);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23700);
  if (v199)
  {
    v100 = v200;
  }

  else
  {
    v100 = 0;
  }

  if (v199)
  {
    v101 = v199;
  }

  else
  {
    v101 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v100, v101);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D23720);
  if (v201)
  {
    v102 = v202;
  }

  else
  {
    v102 = 0;
  }

  if (v201)
  {
    v103 = v201;
  }

  else
  {
    v103 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v102, v103);

  MEMORY[0x22AA6CE70](0xD000000000000025, 0x8000000225D23740);
  if (v203)
  {
    v104 = v204;
  }

  else
  {
    v104 = 0;
  }

  if (v203)
  {
    v105 = v203;
  }

  else
  {
    v105 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v104, v105);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23770);
  if (v205)
  {
    v106 = v206;
  }

  else
  {
    v106 = 0;
  }

  if (v205)
  {
    v107 = v205;
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v106, v107);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23790);
  if (v207)
  {
    v108 = v208;
  }

  else
  {
    v108 = 0;
  }

  if (v207)
  {
    v109 = v207;
  }

  else
  {
    v109 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v108, v109);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D237B0);
  if (v209)
  {
    v110 = v210;
  }

  else
  {
    v110 = 0;
  }

  if (v209)
  {
    v111 = v209;
  }

  else
  {
    v111 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v110, v111);

  return 0;
}

unint64_t *sub_225BD9868(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_225BD99C8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_225BD9AC4(v8, v4, v2);
  result = MEMORY[0x22AA6F950](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_225BD99C8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_225C0A6D4(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_225C0A6D4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225BD9AC4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_225BD99C8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_225BD9B3C()
{
  result = qword_27D73FBA0;
  if (!qword_27D73FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBA0);
  }

  return result;
}

uint64_t sub_225BD9B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 864))
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

uint64_t sub_225BD9BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 856) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 864) = 1;
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

    *(result + 864) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDF417ParsedData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PDF417ParsedData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225BD9E68()
{
  result = qword_27D73FBB0;
  if (!qword_27D73FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBB0);
  }

  return result;
}

unint64_t sub_225BD9EC0()
{
  result = qword_27D73FBB8;
  if (!qword_27D73FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBB8);
  }

  return result;
}

unint64_t sub_225BD9F18()
{
  result = qword_27D73FBC0;
  if (!qword_27D73FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBC0);
  }

  return result;
}

uint64_t sub_225BD9F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954636F64 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72655661766D6161 && a2 == 0xEC0000006E6F6973 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225D237D0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x43656C6369686576 && a2 == 0xEC0000007373616CLL || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D237F0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D23810 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (sub_225CCF934() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_225CCF934() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x31746565727473 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_225CCF934() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7265626D754E6469 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000225D23830 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000225D23850 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225D23870 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000225D23890 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_225CCF934() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_225CCF934() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 6451044 && a2 == 0xE300000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x32746565727473 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_225CCF934() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x42664F6563616C70 && a2 == 0xEC00000068747269 || (sub_225CCF934() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x666E497469647561 && a2 == 0xE90000000000006FLL || (sub_225CCF934() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000225D238B0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xED00007361696C41 || (sub_225CCF934() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xEE007361696C4165 || (sub_225CCF934() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x614E786966667573 && a2 == 0xEF7361696C41656DLL || (sub_225CCF934() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6152746867696577 && a2 == 0xEB0000000065676ELL || (sub_225CCF934() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x746963696E687465 && a2 == 0xE900000000000079 || (sub_225CCF934() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000225D238D0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000225D238F0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000225D23910 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000225D23930 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000225D23960 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000225D23980 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6E61696C706D6F63 && a2 == 0xEE00657079546563 || (sub_225CCF934() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000225D239A0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x6F50746867696577 && a2 == 0xEC00000073646E75 || (sub_225CCF934() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x694B746867696577 && a2 == 0xEF736D6172676F6CLL || (sub_225CCF934() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x6E6F446E6167726FLL && a2 == 0xEA0000000000726FLL || (sub_225CCF934() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x6E617265746576 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D239C0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000225D239E0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x5538317265646E75 && a2 == 0xEC0000006C69746ELL || (sub_225CCF934() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x5539317265646E75 && a2 == 0xEC0000006C69746ELL || (sub_225CCF934() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x5531327265646E75 && a2 == 0xEC0000006C69746ELL)
  {

    return 53;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 53;
    }

    else
    {
      return 54;
    }
  }
}

unint64_t sub_225BDB030()
{
  result = qword_27D73FBC8;
  if (!qword_27D73FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBC8);
  }

  return result;
}

void __swiftcall PDF417Parser.init(pdf417ParsingConfigs:)(CoreIDVShared::PDF417Parser *__return_ptr retstr, Swift::OpaquePointer_optional pdf417ParsingConfigs)
{
  if (!pdf417ParsingConfigs.value._rawValue)
  {
    if (qword_27D739FA0 != -1)
    {
      swift_once();
    }
  }

  v3 = vdupq_n_s64(2uLL);
  *&retstr->HEADER_SIZE = xmmword_225CF1CF0;
  *&retstr->AAMVA_VERSION_NUM_SIZE = v3;
  *&retstr->NUM_OF_ENTRIES_SIZE = v3;
  *&retstr->SUBFILE_OFFSET_SIZE = vdupq_n_s64(4uLL);
  *&retstr->SUBFILE_OFFSET = xmmword_225CF1CB0;
  retstr->DL_SUBFILE._countAndFlagsBits = 19524;
  retstr->DL_SUBFILE._object = 0xE200000000000000;
  retstr->ID_SUBFILE._countAndFlagsBits = 17481;
  retstr->ID_SUBFILE._object = 0xE200000000000000;
  retstr->pdf417ParsingConfigs._rawValue = pdf417ParsingConfigs.value._rawValue;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PDF417Parser.parse(payload:)(CoreIDVShared::PDF417ParsedData *__return_ptr retstr, Swift::String payload)
{
  object = payload._object;
  countAndFlagsBits = payload._countAndFlagsBits;
  v194 = retstr;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v195 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v198 = &v193 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBD8, &qword_225CF9548);
  MEMORY[0x28223BE20](v8 - 8);
  v210 = &v193 - v9;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBE0, &qword_225CF9550);
  v223 = *(v247 - 8);
  v10 = MEMORY[0x28223BE20](v247);
  v209 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v215 = &v193 - v13;
  MEMORY[0x28223BE20](v12);
  v226 = &v193 - v14;
  v15 = sub_225CCD954();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v221 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v193 = &v193 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v196 = &v193 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v197 = &v193 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v225 = &v193 - v26;
  MEMORY[0x28223BE20](v25);
  v224 = &v193 - v27;
  v28 = v2[5];
  v243 = v2[4];
  v244 = v28;
  v245 = v2[6];
  v246 = *(v2 + 14);
  v29 = v2[1];
  v239 = *v2;
  v240 = v29;
  v30 = v2[3];
  v241 = v2[2];
  v242 = v30;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v31 = off_28105B918;
  v32 = *off_28105B918;
  v216 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v33 = v216;
  v34 = (*(v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v34));
  v36 = v16 + 16;
  v35 = *(v16 + 16);
  v37 = &v31[v33];
  v38 = v224;
  v35(v224, v37, v15);
  os_unfair_lock_unlock(&v31[v34]);

  sub_225B40BCC(v38, countAndFlagsBits, object);

  v40 = *(v16 + 8);
  v39 = v16 + 8;
  v217 = v40;
  v40(v38, v15);
  os_unfair_lock_lock(&v31[v34]);
  v211 = v35;
  v212 = v36;
  v35(v225, &v31[v216], v15);
  v213 = v34;
  v214 = v31;
  os_unfair_lock_unlock(&v31[v34]);
  sub_225BDDDC8(&v239, &v231);
  v41 = sub_225CCD934();
  v42 = sub_225CCED04();
  if (os_log_type_enabled(v41, v42))
  {
    v34 = object;
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    if (v246 >> 62)
    {
      v44 = sub_225CCF144();
    }

    else
    {
      v44 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 4) = v44;
    sub_225B93D3C(&v239);
    _os_log_impl(&dword_2259A7000, v41, v42, "pdf417ParsingConfigs = %ld", v43, 0xCu);
    MEMORY[0x22AA6F950](v43, -1, -1);
    object = v34;
  }

  else
  {
    sub_225B93D3C(&v239);
  }

  v217(v225, v15);
  v46 = v246;
  if (v246 >> 62)
  {
    v47 = sub_225CCF144();
    v48 = countAndFlagsBits;
    if (v47)
    {
      goto LABEL_10;
    }

LABEL_72:
    v247 = 0x8000000225D23A20;
    v177 = MEMORY[0x277D84F90];
    v178 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v180 = v179;
    v181 = sub_225CCE954();
    v182 = *(v181 - 8);
    v183 = v198;
    (*(v182 + 56))(v198, 1, 1, v181);
    LODWORD(v181) = (*(v182 + 48))(v183, 1, v181);
    sub_2259CB640(v183, &unk_27D73B050, &unk_225CD3AD0);
    if (v181)
    {
      v184 = 369;
    }

    else
    {
      v184 = 23;
    }

    v185 = sub_225B2C374(v177);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v231 = v185;
    sub_225B2C4A0(v178, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v231);

    v187 = v231;
    v188 = sub_225B29AA0(0, 1, 1, v177);
    v190 = *(v188 + 2);
    v189 = *(v188 + 3);
    if (v190 >= v189 >> 1)
    {
      v188 = sub_225B29AA0((v189 > 1), v190 + 1, 1, v188);
    }

    *(v188 + 2) = v190 + 1;
    v191 = &v188[56 * v190];
    *(v191 + 4) = 0xD00000000000001BLL;
    *(v191 + 5) = 0x8000000225D23A50;
    v192 = v247;
    *(v191 + 6) = 0xD000000000000020;
    *(v191 + 7) = v192;
    *(v191 + 8) = 0x6170286573726170;
    *(v191 + 9) = 0xEF293A64616F6C79;
    *(v191 + 10) = 94;
    *v180 = v184;
    *(v180 + 8) = v188;
    *(v180 + 16) = 0xD00000000000001BLL;
    *(v180 + 24) = 0x8000000225D23A50;
    *(v180 + 32) = v187;
    *(v180 + 40) = 0;
    swift_willThrow();
    return;
  }

  v47 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = countAndFlagsBits;
  if (!v47)
  {
    goto LABEL_72;
  }

LABEL_10:
  v49 = 0;
  v207 = v46 & 0xFFFFFFFFFFFFFF8;
  v208 = v46 & 0xC000000000000001;
  v204 = (v223 + 32);
  v50 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v50 = v48;
  }

  v51 = 7;
  if (((object >> 60) & ((v48 & 0x800000000000000) == 0)) != 0)
  {
    v51 = 11;
  }

  v225 = (v223 + 8);
  v203 = v51 | (v50 << 16);
  *&v45 = 136315138;
  v199 = v45;
  v220 = v15;
  v205 = v39;
  v206 = object;
  v201 = v47;
  v202 = v46;
  while (!v208)
  {
    if (v49 >= *(v207 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v52 = *(v46 + 8 * v49 + 32);
    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_26;
    }

LABEL_20:
    v222 = v53;
    v223 = v49;
    v224 = v52;
    v219 = &v52[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];

    v54 = v215;
    v55 = v227;
    sub_225CCD874();
    v15 = v55;
    if (v55)
    {
      goto LABEL_27;
    }

    (*v204)(v226, v54, v247);
    sub_225CCE704();
    sub_225BDDE00();
    v56 = v209;
    sub_225CCD804();
    v57 = v210;
    v58 = v247;
    sub_225CCD824();
    v59 = 0;
    v60 = *v225;
    (*v225)(v56, v58);

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBF0, &qword_225CF9558);
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v57, 1, v61) != 1)
    {
      v200 = v60;
      sub_225CCD864();
      (*(v62 + 8))(v57, v61);
      v88 = sub_225CCE704();
      v221 = v89;
      v222 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v213;
      v94 = v214;
      os_unfair_lock_lock(&v214[v213]);
      v96 = v220;
      v211(v197, &v94[v216], v220);
      os_unfair_lock_unlock(&v94[v95]);

      v97 = v224;
      v98 = sub_225CCD934();
      v99 = sub_225CCED04();
      v224 = v97;

      v100 = os_log_type_enabled(v98, v99);
      v223 = v93;
      if (v100)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v227 = 0;
        v103 = v102;
        *&v231 = v102;
        *v101 = 136315394;

        v104 = MEMORY[0x22AA6CD90](v222, v91, v221, v93);
        v106 = v105;

        v107 = sub_2259BE198(v104, v106, &v231);

        *(v101 + 4) = v107;
        *(v101 + 12) = 2080;
        v108 = *v219;
        v109 = v219[1];

        v110 = sub_2259BE198(v108, v109, &v231);

        *(v101 + 14) = v110;
        _os_log_impl(&dword_2259A7000, v98, v99, "found header = %s, config header: %s", v101, 0x16u);
        swift_arrayDestroy();
        v111 = v103;
        v59 = v227;
        MEMORY[0x22AA6F950](v111, -1, -1);
        v112 = v101;
        v96 = v220;
        MEMORY[0x22AA6F950](v112, -1, -1);
      }

      v217(v197, v96);
      v129 = sub_225CCE694();
      v131 = v213;
      v130 = v214;
      os_unfair_lock_lock(&v214[v213]);
      v132 = v196;
      v211(v196, &v130[v216], v96);
      os_unfair_lock_unlock(&v130[v131]);
      v133 = sub_225CCD934();
      v134 = sub_225CCED04();
      v135 = os_log_type_enabled(v133, v134);
      v136 = v200;
      if (v135)
      {
        v137 = swift_slowAlloc();
        *v137 = 134217984;
        *(v137 + 4) = v129;
        _os_log_impl(&dword_2259A7000, v133, v134, "current index after AAVMA header = %ld", v137, 0xCu);
        v138 = v137;
        v132 = v196;
        MEMORY[0x22AA6F950](v138, -1, -1);
      }

      v217(v132, v96);
      v46 = &v231;
      v235 = v243;
      v236 = v244;
      v237 = v245;
      v238 = v246;
      v231 = v239;
      v232 = v240;
      v233 = v241;
      v234 = v242;
      v139 = v129 + *(&v239 + 1);
      if (__OFADD__(v129, *(&v239 + 1)))
      {
        __break(1u);
      }

      else
      {
        v140 = sub_225BDD9C4(countAndFlagsBits, v206, v129, v129 + *(&v239 + 1));
        v142 = v247;
        if (v59)
        {

          v136(v226, v142);
          return;
        }

        v222 = v140;
        v227 = v141;
        v235 = v243;
        v236 = v244;
        v237 = v245;
        v238 = v246;
        v231 = v239;
        v232 = v240;
        v233 = v241;
        v234 = v242;
        v47 = v139 + v240;
        if (!__OFADD__(v139, v240))
        {
          v34 = sub_225BDD9C4(countAndFlagsBits, v206, v139, v139 + v240);
          v48 = v143;
          v221 = 0;
          if (v34 == 12336 && v143 == 0xE200000000000000)
          {
LABEL_50:
            v215 = 0;
            v219 = 0;
            goto LABEL_65;
          }

          v144 = sub_225CCF934();
          v51 = 0;
          v146 = v34 == 12592 && v48 == 0xE200000000000000;
          if ((v144 & 1) == 0 && !v146)
          {
            if (sub_225CCF934())
            {
              goto LABEL_50;
            }

            v235 = v243;
            v236 = v244;
            v237 = v245;
            v238 = v246;
            v231 = v239;
            v232 = v240;
            v233 = v241;
            v234 = v242;
            v147 = v47 + *(&v240 + 1);
            if (!__OFADD__(v47, *(&v240 + 1)))
            {
              v148 = v221;
              v149 = sub_225BDD9C4(countAndFlagsBits, v206, v47, v47 + *(&v240 + 1));
              v221 = v148;
              if (v148)
              {

                v200(v226, v247);
                return;
              }

              v215 = v149;
              v219 = v150;
              v47 = v147;
LABEL_65:
              v151 = *(v46 + 208);
              *(v46 + 64) = *(v46 + 192);
              *(v46 + 80) = v151;
              *(v46 + 96) = *(v46 + 224);
              v152 = v241;
              v238 = v246;
              v153 = *(v46 + 144);
              *v46 = *(v46 + 128);
              *(v46 + 16) = v153;
              v154 = *(v46 + 176);
              *(v46 + 32) = *(v46 + 160);
              *(v46 + 48) = v154;
              v155 = v47 + v152;
              if (!__OFADD__(v47, v152))
              {
                v156 = countAndFlagsBits;
                v157 = v206;
                v158 = v221;
                sub_225BDD9C4(countAndFlagsBits, v206, v47, v47 + v152);
                if (v158)
                {

                  v200(v226, v247);
                }

                else
                {

                  v235 = v243;
                  v236 = v244;
                  v237 = v245;
                  v238 = v246;
                  v231 = v239;
                  v232 = v240;
                  v233 = v241;
                  v234 = v242;
                  v159 = sub_225BDCC30(v156, v157, v155);
                  v221 = v160;
                  v210 = v159;
                  v235 = v243;
                  v236 = v244;
                  v237 = v245;
                  v238 = v246;
                  v231 = v239;
                  v232 = v240;
                  v233 = v241;
                  v234 = v242;
                  v163 = sub_225BDD134(v156, v157, v161, v162);
                  v164 = v221;

                  v165._countAndFlagsBits = v210;
                  v165._object = v164;
                  v166._countAndFlagsBits = v34;
                  v166._object = v48;
                  PDF417ParsedData.init(docType:aamvaVersion:map:)(&v228, v165, v166, v163);

                  v228.issuer.value._countAndFlagsBits = v222;
                  v228.issuer.value._object = v227;

                  v167 = v214;
                  v228.jurisdictionVersion.value._countAndFlagsBits = v215;
                  v228.jurisdictionVersion.value._object = v219;
                  v168 = v213;
                  os_unfair_lock_lock(&v214[v213]);
                  v169 = v193;
                  v211(v193, &v167[v216], v220);
                  os_unfair_lock_unlock(&v167[v168]);

                  v170 = sub_225CCD934();
                  v171 = sub_225CCED04();

                  if (os_log_type_enabled(v170, v171))
                  {
                    v172 = swift_slowAlloc();
                    v173 = swift_slowAlloc();
                    *&v231 = v173;
                    *v172 = v199;
                    v174 = v169;
                    v175 = sub_2259BE198(v210, v164, &v231);

                    *(v172 + 4) = v175;
                    _os_log_impl(&dword_2259A7000, v170, v171, "Found pdf417 barcode of doc type %s", v172, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v173);
                    MEMORY[0x22AA6F950](v173, -1, -1);
                    MEMORY[0x22AA6F950](v172, -1, -1);

                    v176 = v174;
                  }

                  else
                  {

                    v176 = v169;
                  }

                  v217(v176, v220);
                  v200(v226, v247);
                  memcpy(v194, &v228, sizeof(CoreIDVShared::PDF417ParsedData));
                }

                return;
              }

LABEL_83:
              __break(1u);
            }

            __break(1u);
            return;
          }

LABEL_64:
          v215 = v51;
          v219 = v51;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_83;
    }

    v227 = 0;
    sub_2259CB640(v57, &qword_27D73FBD8, &qword_225CF9548);
    v64 = v213;
    v63 = v214;
    os_unfair_lock_lock(&v214[v213]);
    v15 = v220;
    v34 = v221;
    v211(v221, &v63[v216], v220);
    os_unfair_lock_unlock(&v63[v64]);
    v65 = v224;
    v66 = sub_225CCD934();
    v67 = sub_225CCED04();

    v68 = os_log_type_enabled(v66, v67);
    v46 = v202;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v200 = v60;
      v70 = v69;
      v71 = swift_slowAlloc();
      *&v231 = v71;
      *v70 = v199;
      v72 = *v219;
      v73 = v219[1];

      v34 = sub_2259BE198(v72, v73, &v231);
      v15 = v220;

      *(v70 + 4) = v34;
      _os_log_impl(&dword_2259A7000, v66, v67, "did not find header that matches %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AA6F950](v71, -1, -1);
      MEMORY[0x22AA6F950](v70, -1, -1);

      v217(v221, v15);
      v200(v226, v247);
    }

    else
    {

      v217(v34, v15);
      v60(v226, v247);
    }

    v48 = countAndFlagsBits;
    v49 = v223 + 1;
    v47 = v201;
    if (v222 == v201)
    {
      goto LABEL_72;
    }
  }

  v52 = MEMORY[0x22AA6DA80](v49, v46);
  v53 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v227 = "Invalid AAMVA header regex";
  v74 = v15;
  v75 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v77 = v76;
  swift_getErrorValue();
  v78 = v230;
  v79 = v15;
  sub_225B21FAC(v78, &v231);

  v80 = *(&v231 + 1);
  v247 = 0x8000000225D23A00;
  if (*(&v231 + 1))
  {
    v225 = v232;
    v226 = v231;
    v222 = *(&v233 + 1);
    v81 = v233;
    v223 = *(&v232 + 1);
  }

  else
  {
    *&v231 = v15;
    v82 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v83 = v229;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_225CD30F0;
      *(v84 + 32) = 20;
      v85 = [v83 code];
      v86 = MEMORY[0x277D83BF8];
      *(v84 + 64) = MEMORY[0x277D83B88];
      *(v84 + 72) = v86;
      *(v84 + 40) = v85;
      v81 = sub_225B2C374(v84);
      swift_setDeallocating();
      sub_2259CB640(v84 + 32, &qword_27D73B060, &unk_225CD3AE0);
      swift_deallocClassInstance();

      v87 = v15;
      v225 = 0;
      v223 = 0;
      v80 = MEMORY[0x277D84F90];
      v226 = 368;
      v222 = v15;
    }

    else
    {
      *&v231 = v15;
      v113 = v15;
      v114 = sub_225CCE954();
      v115 = v195;
      v116 = swift_dynamicCast();
      v117 = *(v114 - 8);
      (*(v117 + 56))(v115, v116 ^ 1u, 1, v114);
      LODWORD(v117) = (*(v117 + 48))(v115, 1, v114);
      sub_2259CB640(v115, &unk_27D73B050, &unk_225CD3AD0);
      if (v117)
      {
        v118 = 368;
      }

      else
      {
        v118 = 23;
      }

      v226 = v118;
      v80 = MEMORY[0x277D84F90];
      v81 = sub_225B2C374(MEMORY[0x277D84F90]);
      v119 = v15;
      v225 = 0xD00000000000001ALL;
      v222 = v15;
      v223 = 0x8000000225D23A00;
    }
  }

  v120 = v227 | 0x8000000000000000;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  *&v231 = v81;
  sub_225B2C4A0(v75, sub_225B2AC40, 0, v121, &v231);

  v122 = v231;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_225B29AA0(0, *(v80 + 2) + 1, 1, v80);
  }

  v124 = *(v80 + 2);
  v123 = *(v80 + 3);
  if (v124 >= v123 >> 1)
  {
    v80 = sub_225B29AA0((v123 > 1), v124 + 1, 1, v80);
  }

  *(v80 + 2) = v124 + 1;
  v125 = &v80[56 * v124];
  v126 = v247;
  *(v125 + 4) = 0xD00000000000001ALL;
  *(v125 + 5) = v126;
  *(v125 + 6) = 0xD000000000000020;
  *(v125 + 7) = v120;
  *(v125 + 8) = 0x6170286573726170;
  *(v125 + 9) = 0xEF293A64616F6C79;
  *(v125 + 10) = 57;
  v127 = v225;
  *v77 = v226;
  *(v77 + 8) = v80;
  *(v77 + 16) = v127;
  v128 = v222;
  *(v77 + 24) = v223;
  *(v77 + 32) = v122;
  *(v77 + 40) = v128;
  swift_willThrow();
}

id sub_225BDCA70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_225CF1D00;
  v1 = type metadata accessor for PDF417ParsingConfig();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v3 = 0x49534E410D1E0A40;
  *(v3 + 1) = 0xE900000000000020;
  v14.receiver = v2;
  v14.super_class = v1;
  *(v0 + 32) = objc_msgSendSuper2(&v14, sel_init);
  v4 = objc_allocWithZone(v1);
  v5 = &v4[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v5 = 0x49534E410D1C0A40;
  *(v5 + 1) = 0xE900000000000020;
  v13.receiver = v4;
  v13.super_class = v1;
  *(v0 + 40) = objc_msgSendSuper2(&v13, sel_init);
  v6 = objc_allocWithZone(v1);
  v7 = &v6[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v7 = 0x564D41410D1E0A40;
  *(v7 + 1) = 0xE900000000000041;
  v12.receiver = v6;
  v12.super_class = v1;
  *(v0 + 48) = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_allocWithZone(v1);
  v9 = &v8[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v9 = 0x2049534E410D0A40;
  *(v9 + 1) = 0xE800000000000000;
  v11.receiver = v8;
  v11.super_class = v1;
  result = objc_msgSendSuper2(&v11, sel_init);
  *(v0 + 56) = result;
  qword_27D73FBD0 = v0;
  return result;
}

double static PDF417Parser.defaultParsingConfigs.getter()
{
  if (qword_27D739FA0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_225BDCC30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - v12;
  v14 = v3[1];
  v59 = *v3;
  v60 = v14;
  v15 = *(v3 + 5);
  v61 = *(v3 + 4);
  v17 = *(v3 + 6);
  v16 = *(v3 + 7);
  v58 = v3[4];
  v18 = *(v3 + 10);
  v19 = *(v3 + 11);
  v20 = *(v3 + 12);
  v21 = *(v3 + 13);
  v22 = *(v3 + 14);
  v23 = v3[1];
  v46 = *v3;
  v47 = v23;
  v48 = *(v3 + 4);
  v49 = v15;
  v50 = v17;
  v51 = v16;
  v44 = v16;
  v52 = v3[4];
  v53 = v18;
  v54 = v19;
  v62 = v20;
  v55 = v20;
  v56 = v21;
  v45 = v21;
  v24 = &v63;
  v43 = v22;
  v57 = v22;
  v25 = __OFADD__(a3, v15);
  v26 = a3 + v15;
  if (v25)
  {
    __break(1u);
    goto LABEL_19;
  }

  v42 = v13;
  v3 = &v46;
  result = sub_225BDD9C4(a1, a2, v10, v26);
  if (!v4)
  {
    v5 = v28;
    v41 = a2;
    v40 = result;
    if (result != v18 || v28 != v19)
    {
      v3 = 0;
      if ((sub_225CCF934() & 1) == 0 && (v40 != v62 || v5 != v45) && (sub_225CCF934() & 1) == 0)
      {

        v18 = 0x8000000225D23A70;
        v62 = 0x8000000225D23A20;
        v45 = 0x8000000225D23A90;
        v29 = MEMORY[0x277D84F90];
        v30 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v3 = v31;
        v32 = sub_225CCE954();
        v33 = *(v32 - 8);
        v34 = v42;
        (*(v33 + 56))(v42, 1, 1, v32);
        LODWORD(v32) = (*(v33 + 48))(v34, 1, v32);
        sub_2259CB640(v34, &unk_27D73B050, &unk_225CD3AD0);
        if (v32)
        {
          LOWORD(v19) = 365;
        }

        else
        {
          LOWORD(v19) = 23;
        }

        v35 = sub_225B2C374(v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v46 = v35;
        sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v46);

        v5 = v46;
        v11 = sub_225B29AA0(0, 1, 1, v29);
        a2 = *(v11 + 2);
        v24 = *(v11 + 3);
        v17 = a2 + 1;
        if (a2 < v24 >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    v46 = v59;
    v47 = v60;
    v48 = v61;
    v49 = v15;
    v50 = v17;
    v51 = v44;
    v52 = v58;
    v53 = v18;
    v54 = v19;
    v55 = v62;
    v56 = v45;
    v24 = v43;
    v57 = v43;
    v11 = (v26 + v17);
    if (!__OFADD__(v26, v17))
    {
      v3 = &v46;
      a2 = a1;
      sub_225BDD400(a1, v41, v26, v11);
      v46 = v59;
      v47 = v60;
      v48 = v61;
      v49 = v15;
      v24 = v44;
      v50 = v17;
      v51 = v44;
      v52 = v58;
      v53 = v18;
      v54 = v19;
      v55 = v62;
      v56 = v45;
      v57 = v43;
      v11 = (v26 + v17 + v44);
      if (!__OFADD__(v26 + v17, v44))
      {
        sub_225BDD400(a1, v41, v26 + v17, v11);
        return v40;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v11 = sub_225B29AA0((v24 > 1), v17, 1, v11);
LABEL_17:
    *(v11 + 2) = v17;
    v37 = &v11[56 * a2];
    *(v37 + 4) = 0xD000000000000014;
    *(v37 + 5) = v18;
    v38 = v62;
    *(v37 + 6) = 0xD000000000000020;
    *(v37 + 7) = v38;
    v39 = v45;
    *(v37 + 8) = 0xD000000000000027;
    *(v37 + 9) = v39;
    *(v37 + 10) = 101;
    *v3 = v19;
    *(v3 + 1) = v11;
    *(v3 + 2) = 0xD000000000000014;
    *(v3 + 3) = v18;
    *(v3 + 4) = v5;
    *(v3 + 5) = 0;
    return swift_willThrow();
  }

  return result;
}

__int128 *sub_225BDD134(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[1];
  v49 = *v4;
  v50 = v6;
  v7 = v4[3];
  v9 = *v4;
  v8 = v4[1];
  v51 = v4[2];
  v52 = v7;
  v10 = v4[6];
  v46 = v4[5];
  v47 = v10;
  v11 = *(v4 + 8);
  v12 = *(v4 + 9);
  v48 = *(v4 + 14);
  v37 = v9;
  v38 = v8;
  v13 = v4[3];
  v39 = v4[2];
  v40 = v13;
  v41 = v11;
  v42 = v12;
  v14 = v4[6];
  v43 = v4[5];
  v44 = v14;
  v45 = *(v4 + 14);
  v53 = v11;
  if (__OFADD__(a3, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = __OFADD__(a3, a4);
  v16 = a3 + a4;
  if (!v15)
  {
    v17 = &v37;
    v18 = sub_225BDD9C4(result, a2, a3 + v11, v16);
    if (!v5)
    {
      *&v37 = v18;
      *(&v37 + 1) = v19;
      sub_2259D8654();
      v20 = sub_225CCF034();

      v36 = *(v20 + 16);
      if (v36)
      {
        v21 = 0;
        v22 = (v20 + 40);
        v17 = MEMORY[0x277D84F98];
        v34 = v20;
        while (v21 < *(v20 + 16))
        {
          v24 = *(v22 - 1);
          v23 = *v22;

          if (sub_225CCE5D4() < v12)
          {
          }

          else
          {
            v37 = v49;
            v38 = v50;
            v39 = v51;
            v40 = v52;
            v41 = v53;
            v42 = v12;
            v43 = v46;
            v44 = v47;
            v45 = v48;
            v25 = sub_225BDD9C4(v24, v23, 0, v12);
            v27 = v26;
            v35 = v25;
            v37 = v49;
            v38 = v50;
            v39 = v51;
            v40 = v52;
            v41 = v53;
            v42 = v12;
            v43 = v46;
            v44 = v47;
            v45 = v48;
            v29 = v12;
            v28 = sub_225CCE5D4();
            v30 = sub_225BDD9C4(v24, v23, v12, v28);
            v32 = v31;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v37 = v17;
            sub_225A04C1C(v30, v32, v35, v27, isUniquelyReferenced_nonNull_native);

            v17 = v37;
            v12 = v29;
            v20 = v34;
          }

          ++v21;
          v22 += 2;
          if (v36 == v21)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_15;
      }

      v17 = MEMORY[0x277D84F98];
LABEL_12:
    }

    return v17;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_225BDD400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = *(v4 + 80);
  v61[4] = *(v4 + 64);
  v61[5] = v13;
  v61[6] = *(v4 + 96);
  v62 = *(v4 + 112);
  v14 = *(v4 + 16);
  v61[0] = *v4;
  v61[1] = v14;
  v15 = *(v4 + 48);
  v61[2] = *(v4 + 32);
  v61[3] = v15;
  v16 = v61;
  result = sub_225BDD9C4(a1, a2, a3, a4);
  if (v5)
  {
    return v16;
  }

  v19 = HIBYTE(v18) & 0xF;
  v20 = result & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v21 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_64;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    v63 = 0;
    v16 = sub_2259F3F08(result, v18, 10);
    v57 = v56;

    if (v57)
    {
      goto LABEL_64;
    }

    return v16;
  }

  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_225CCF354();
      v20 = v58;
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v20 >= 1)
      {
        if (--v20)
        {
          v16 = 0;
          if (result)
          {
            v29 = (result + 1);
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_62;
              }

              v31 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_62;
              }

              v16 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_62;
              }

              ++v29;
              if (!--v20)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_77;
    }

    if (v22 != 45)
    {
      if (v20)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_62;
            }

            v36 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_62;
            }

            v16 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v20)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      v16 = 0;
      LOBYTE(v20) = 1;
LABEL_63:
      v63 = v20;
      v40 = v20;

      if (v40)
      {
LABEL_64:
        v59 = 0x8000000225D23AF0;
        v60 = 0x8000000225D23A20;
        v41 = MEMORY[0x277D84F90];
        v42 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v16 = swift_allocError();
        v44 = v43;
        v45 = sub_225CCE954();
        v46 = *(v45 - 8);
        (*(v46 + 56))(v12, 1, 1, v45);
        LODWORD(v45) = (*(v46 + 48))(v12, 1, v45);
        sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
        if (v45)
        {
          v47 = 367;
        }

        else
        {
          v47 = 23;
        }

        v48 = sub_225B2C374(v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v48;
        sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v61);

        v50 = *&v61[0];
        v51 = sub_225B29AA0(0, 1, 1, v41);
        v53 = *(v51 + 2);
        v52 = *(v51 + 3);
        if (v53 >= v52 >> 1)
        {
          v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
        }

        *(v51 + 2) = v53 + 1;
        v54 = &v51[56 * v53];
        *(v54 + 4) = 0xD00000000000002CLL;
        *(v54 + 5) = 0x8000000225D23AC0;
        v55 = v60;
        *(v54 + 6) = 0xD000000000000020;
        *(v54 + 7) = v55;
        *(v54 + 8) = 0xD000000000000020;
        *(v54 + 9) = v59;
        *(v54 + 10) = 132;
        *v44 = v47;
        *(v44 + 8) = v51;
        *(v44 + 16) = 0xD00000000000002CLL;
        *(v44 + 24) = 0x8000000225D23AC0;
        *(v44 + 32) = v50;
        *(v44 + 40) = 0;
        swift_willThrow();
      }

      return v16;
    }

    if (v20 >= 1)
    {
      if (--v20)
      {
        v16 = 0;
        if (result)
        {
          v23 = (result + 1);
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_62;
            }

            v25 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_62;
            }

            v16 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_62;
            }

            ++v23;
            if (!--v20)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v20) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *&v61[0] = result;
  *(&v61[0] + 1) = v18 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v19)
      {
        v16 = 0;
        v37 = v61;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v19)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v19)
    {
      v20 = v19 - 1;
      if (v19 != 1)
      {
        v16 = 0;
        v26 = v61 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v20)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_76;
  }

  if (v19)
  {
    v20 = v19 - 1;
    if (v19 != 1)
    {
      v16 = 0;
      v32 = v61 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v20)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_78:
  __break(1u);
  return result;
}

unint64_t sub_225BDD9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  if (sub_225CCE5D4() < a3 || sub_225CCE5D4() < a4 || a4 < a3)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_225CCF204();

    v37 = 0xD000000000000025;
    v38 = 0x8000000225D23B20;
    MEMORY[0x22AA6CE70](a1, a2);
    MEMORY[0x22AA6CE70](544497952, 0xE400000000000000);
    v39 = a3;
    sub_225A84D38();
    v11 = sub_225CCF094();
    MEMORY[0x22AA6CE70](v11);

    MEMORY[0x22AA6CE70](8236, 0xE200000000000000);
    v39 = a4;
    v12 = sub_225CCF094();
    MEMORY[0x22AA6CE70](v12);

    v14 = v37;
    v13 = v38;
    v35 = 0x8000000225D23B50;
    v36 = 0x8000000225D23A20;
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v17 = v16;
    v18 = sub_225CCE954();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v10, 1, 1, v18);
    LODWORD(v18) = (*(v19 + 48))(v10, 1, v18);
    sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
    if (v18)
    {
      v20 = 366;
    }

    else
    {
      v20 = 23;
    }

    v21 = MEMORY[0x277D84F90];
    v22 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v22;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

    v24 = v37;
    v25 = sub_225B29AA0(0, 1, 1, v21);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[56 * v27];
    *(v28 + 4) = v14;
    *(v28 + 5) = v13;
    v29 = v36;
    *(v28 + 6) = 0xD000000000000020;
    *(v28 + 7) = v29;
    v30 = v35;
    *(v28 + 8) = 0xD000000000000024;
    *(v28 + 9) = v30;
    *(v28 + 10) = 140;
    *v17 = v20;
    *(v17 + 8) = v25;
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    *(v17 + 32) = v24;
    *(v17 + 40) = 0;
    return swift_willThrow();
  }

  else
  {
    v32 = sub_225CCE604();
    result = sub_225CCE604();
    if (result >> 14 < v32 >> 14)
    {
      __break(1u);
    }

    else
    {
      v33 = sub_225CCE704();
      v34 = MEMORY[0x22AA6CD90](v33);

      return v34;
    }
  }

  return result;
}

unint64_t sub_225BDDE00()
{
  result = qword_27D73FBE8;
  if (!qword_27D73FBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FBE0, &qword_225CF9550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBE8);
  }

  return result;
}

uint64_t sub_225BDDE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225BDDEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225BDDF18()
{
  v1 = *(v0[5] + 16);
  if (v1)
  {
    v2 = sub_225CCE874();
    *(v2 + 16) = v1;
    bzero((v2 + 32), v1);
    v15 = v2;
    v3 = MEMORY[0x277D84F90];
    v4 = 32;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = v15;
      if ((v4 - 32) >= *(v15 + 2))
      {
        break;
      }

      if ((v15[v4] & 1) == 0)
      {
        v7 = sub_225BDEE8C(v4 - 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_225C0EC00(v6);
        }

        if ((v4 - 32) >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        v6[v4] = 1;
        v15 = v6;
        if (*(v7 + 16) < v0[1])
        {
        }

        else
        {
          v8 = sub_225BDF108(v4 - 32, v7, &v15);
          v10 = v9;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_225B29CD4(0, *(v5 + 2) + 1, 1, v5);
          }

          v12 = *(v5 + 2);
          v11 = *(v5 + 3);
          if (v12 >= v11 >> 1)
          {
            v5 = sub_225B29CD4((v11 > 1), v12 + 1, 1, v5);
          }

          *(v5 + 2) = v12 + 1;
          *&v5[8 * v12 + 32] = v8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_225B29CD4(0, *(v3 + 2) + 1, 1, v3);
          }

          v14 = *(v3 + 2);
          v13 = *(v3 + 3);
          if (v14 >= v13 >> 1)
          {
            v3 = sub_225B29CD4((v13 > 1), v14 + 1, 1, v3);
          }

          *(v3 + 2) = v14 + 1;
          *&v3[8 * v14 + 32] = v10;
          if (v8 >= v0[3])
          {
            goto LABEL_20;
          }
        }
      }

      ++v4;
      if (!--v1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_20:
  }
}

uint64_t sub_225BDE17C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  MEMORY[0x22AA6E420](v2);
  return sub_225CCFC24();
}

uint64_t sub_225BDE1D8()
{
  v1 = v0[1];
  MEMORY[0x22AA6E420](*v0);
  return MEMORY[0x22AA6E420](v1);
}

uint64_t sub_225BDE214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  MEMORY[0x22AA6E420](v2);
  return sub_225CCFC24();
}

uint64_t sub_225BDE26C(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBF8, &qword_225CF95B0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v29[-v11];
  v13 = [a1 CGImage];
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  CGColorSpaceCreateDeviceGray();
  sub_225CCEE94();
  if (v37 != 1)
  {
    v34 = v38;
    v35 = v39;
    v32 = v36;
    v33 = v37;
    sub_225CCC964();
    v15 = v14;
    sub_225CCC954();
    (*(v4 + 32))(v12, v10, v3);
    Width = CGImageGetWidth(v15);
    v18 = *(v1 + 32);
    if (v18)
    {
      if (Width != 0x8000000000000000 || v18 != -1)
      {
        Height = CGImageGetHeight(v15);
        if (v18 != -1 || Height != 0x8000000000000000)
        {
          sub_225CCC944();
          src.data = sub_225CCC924();
          src.height = v20;
          src.width = v21;
          src.rowBytes = v22;
          dest.data = sub_225CCC924();
          dest.height = v23;
          dest.width = v24;
          dest.rowBytes = v25;
          vImageScale_Planar8(&src, &dest, 0, 0);
          sub_225BDE8D0();
          v27 = v26;

          v28 = *(v4 + 8);
          v28(v7, v3);
          v28(v12, v3);
          return v27;
        }

LABEL_15:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

void sub_225BDE590()
{
  v35 = *(v0 + 40);
  v34 = *(v35 + 16);
  if (!v34)
  {
    return;
  }

  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_40;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_41:
    __break(1u);
  }

  else if (v2 < 9.2234e18)
  {
    v3 = v2;
    if (v2)
    {
      v4 = 0;
      for (i = (v35 + 40); ; i += 3)
      {
        if (v4 >= *(v35 + 16))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v7 = *(i - 1);
        v6 = *i;
        if (v3 == -1 && v7 == 0x8000000000000000)
        {
          goto LABEL_37;
        }

        if (v3 == -1 && v6 == 0x8000000000000000)
        {
          goto LABEL_38;
        }

        v8 = v7 / v3;
        v9 = v6 / v3;
        if (*(*(v1 + 48) + 16))
        {
          sub_2259F1F14(v8, v6 / v3);
          if (v10)
          {
            v12 = sub_225BDEDB8(v36, v8, v9);
            v13 = *v11;
            if (*v11)
            {
              v14 = v11;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v14 = v13;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v13 = sub_225B29CD4(0, *(v13 + 2) + 1, 1, v13);
                *v14 = v13;
              }

              v17 = *(v13 + 2);
              v16 = *(v13 + 3);
              if (v17 >= v16 >> 1)
              {
                v13 = sub_225B29CD4((v16 > 1), v17 + 1, 1, v13);
                *v14 = v13;
              }

              *(v13 + 2) = v17 + 1;
              *&v13[8 * v17 + 32] = v4;
            }

            (v12)(v36, 0);
            goto LABEL_9;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD10, &qword_225CD42B8);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_225CD30F0;
        *(v18 + 32) = v4;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v36[0] = *(v1 + 48);
        v20 = v36[0];
        v21 = sub_2259F1F14(v8, v9);
        v23 = v20[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_36;
        }

        v27 = v22;
        if (v20[3] < v26)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_29;
        }

        v33 = v21;
        sub_225A45A7C();
        v21 = v33;
        v29 = v36[0];
        if ((v27 & 1) == 0)
        {
LABEL_30:
          v29[(v21 >> 6) + 8] |= 1 << v21;
          v30 = (v29[6] + 16 * v21);
          *v30 = v8;
          v30[1] = v9;
          *(v29[7] + 8 * v21) = v18;
          v31 = v29[2];
          v25 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v25)
          {
            goto LABEL_39;
          }

          v29[2] = v32;
          goto LABEL_8;
        }

LABEL_7:
        *(v29[7] + 8 * v21) = v18;

LABEL_8:
        *(v1 + 48) = v29;
LABEL_9:
        if (v34 == ++v4)
        {
          return;
        }
      }

      sub_225A43358(v26, v19);
      v21 = sub_2259F1F14(v8, v9);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_44;
      }

LABEL_29:
      v29 = v36[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_7;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_225CCFAC4();
  __break(1u);
}

void sub_225BDE8D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBF8, &qword_225CF95B0);
  v0 = sub_225CCC934();
  sub_225CCC914();
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 activeProcessorCount];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FC00, &unk_225CF95B8);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    v5 = (inited + 24);
    *(inited + 16) = MEMORY[0x277D84F90];
    v6 = (inited + 16);
    if (v1 / v3)
    {
      v7 = sub_225B451E4();
      MEMORY[0x28223BE20](v7);
      sub_225CCED94();

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      os_unfair_lock_lock(v5);
      sub_225BDF638(v6, &v9);
      os_unfair_lock_unlock(v5);

      swift_setDeallocating();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_225BDEAD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, os_unfair_lock_s *a6)
{
  v6 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__OFADD__(v6, a2))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (*(a3 + 16) >= v6 + a2)
  {
    v7 = v6 + a2;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7 < v6)
  {
    goto LABEL_29;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a3 + 32;
    v12 = MEMORY[0x277D84F90];
    v13 = result * a2;
    v14 = result * a2;
    while (1)
    {
      if (v7 == v14)
      {
        MEMORY[0x28223BE20](result);
        os_unfair_lock_lock(a6 + 6);
        sub_225BDF67C();
        os_unfair_lock_unlock(a6 + 6);
      }

      if (v13 < v6 || v14 >= v7)
      {
        break;
      }

      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      v16 = v6 + v10;
      if (__OFADD__(v6, v10))
      {
        goto LABEL_26;
      }

      v17 = *(v11 + v14);
      ++v10;
      ++v14;
      if (v17 >= *(a4 + 16))
      {
        if (!a5)
        {
          goto LABEL_31;
        }

        if (v16 == 0x8000000000000000 && a5 == -1)
        {
          goto LABEL_32;
        }

        v23 = a5;
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = a6;
        if ((result & 1) == 0)
        {
          result = sub_225B2AB30(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        v20 = v19 + 1;
        a5 = v23;
        if (v19 >= v18 >> 1)
        {
          result = sub_225B2AB30((v18 > 1), v19 + 1, 1, v12);
          v20 = v19 + 1;
          a5 = v23;
          v12 = result;
        }

        *(v12 + 16) = v20;
        v21 = v12 + 24 * v19;
        *(v21 + 32) = v16 % a5;
        *(v21 + 40) = v16 / a5;
        *(v21 + 48) = v17;
        v10 = v15;
        v13 = v14;
        a6 = v22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_225BDECE0(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_225BDED30(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if ((*v2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  if (!v3)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_14;
  }

  if (a2 != 0x8000000000000000 || v4 != -1)
  {
    result /= v4;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t (*sub_225BDEDB8(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_225BDF2F4(v6, a2, a3);
  return sub_225BDEE40;
}

void sub_225BDEE40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_225BDEE8C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v1;
  v4 = result;
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  if (v6 > result)
  {
    v36 = v5 + 32;
    v7 = v5 + 32 + 24 * result;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    result = sub_225BDED30(*v7, v9);
    v28 = result;
    v31 = result - 1;
    v32 = v11;
    if (__OFSUB__(result, 1))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return v2;
    }

    v29 = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
      v12 = *(v1 + 48);
      v13 = -1;
      v2 = MEMORY[0x277D84F90];
      v35 = v6;
      v33 = *(v3 + 48);
      while (1)
      {
        v30 = v13;
        v14 = -1;
        v15 = v29;
        while (1)
        {
          if (*(v12 + 16) && (sub_2259F1F14(v31, v15), (v16 & 1) != 0))
          {
          }

          else
          {
            v17 = MEMORY[0x277D84F90];
          }

          v34 = v14;
          v18 = *(v17 + 16);
          if (v18)
          {
            v19 = (v17 + 32);
            do
            {
              v21 = *v19++;
              v20 = v21;
              if (v21 != v4)
              {
                if (v20 >= v6)
                {
                  goto LABEL_32;
                }

                v22 = v36 + 24 * v20;
                if (__OFSUB__(v8, *v22))
                {
                  goto LABEL_33;
                }

                v23 = *(v22 + 8);
                v24 = __OFSUB__(v9, v23);
                v25 = v9 - v23;
                if (v24)
                {
                  goto LABEL_34;
                }

                if ((sqrtf(((v8 - *v22) * (v8 - *v22)) + (v25 * v25)) * ((vabds_f32(v10, *(v22 + 16)) * *(v3 + 20)) + 1.0)) <= *v3)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = sub_225B29CD4(0, *(v2 + 2) + 1, 1, v2);
                  }

                  v27 = *(v2 + 2);
                  v26 = *(v2 + 3);
                  if (v27 >= v26 >> 1)
                  {
                    v2 = sub_225B29CD4((v26 > 1), v27 + 1, 1, v2);
                  }

                  *(v2 + 2) = v27 + 1;
                  *&v2[8 * v27 + 32] = v20;
                  v6 = v35;
                }
              }

              --v18;
            }

            while (v18);
          }

          v12 = v33;
          if (v34 == 1)
          {
            break;
          }

          v14 = v34 + 1;
          v15 = v32 + v34 + 1;
          if (__OFADD__(v32, v34 + 1))
          {
            goto LABEL_36;
          }
        }

        if (v30 == 1)
        {
          return v2;
        }

        v13 = v30 + 1;
        v31 = v28 + v30 + 1;
        if (__OFADD__(v28, v30 + 1))
        {
          goto LABEL_31;
        }
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_225BDF108(unint64_t a1, uint64_t a2, char **a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = v4;
  v3 = *(v4 + 40);
  v9 = *(v3 + 2);
  if (v9 <= a1)
  {
    goto LABEL_37;
  }

  v6 = a2;
  v8 = v3[24 * a1 + 48];
  if (*(a2 + 16))
  {
    v21 = a3;
    v7 = *a3;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v10 = 0;
      v11 = v3 + 48;
      v3 = v7 + 32;
      v12 = *(v6 + 16);
      v13 = 1;
      v14 = 1;
      while (1)
      {
        if (v10 >= v12)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v15 = *(v6 + 8 * v10 + 32);
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v15 >= *(v7 + 2))
        {
          goto LABEL_32;
        }

        if ((v3[v15] & 1) == 0)
        {
          v3[v15] = 1;
          v13 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_33;
          }

          if (v15 >= v9)
          {
            goto LABEL_34;
          }

          v16 = v11[24 * v15];
          v17 = __OFADD__(v8, v16);
          v8 += v16;
          if (v17)
          {
            goto LABEL_35;
          }

          if (v13 >= *(v5 + 24))
          {

            *v21 = v7;
            if (v13)
            {
              if (v8 != 0x8000000000000000 || v13 != -1)
              {
                return v13;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return result;
          }

          v18 = sub_225BDEE8C(v15);
          if (*(v18 + 16) < *(v5 + 8))
          {
          }

          else
          {
            sub_225A84A64(v18);
            v6 = a2;
          }

          v14 = v13;
        }

        ++v10;
        v12 = *(v6 + 16);
        if (v10 >= v12)
        {

          *v21 = v7;
          if (!v13)
          {
            goto LABEL_38;
          }

          if (v8 == 0x8000000000000000 && v13 == -1)
          {
            __break(1u);
            return 1;
          }

          return v13;
        }
      }
    }

LABEL_39:
    v7 = sub_225C0EC00(v7);
    goto LABEL_5;
  }

  return 1;
}