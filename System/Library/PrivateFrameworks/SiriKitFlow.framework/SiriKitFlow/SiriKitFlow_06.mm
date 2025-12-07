uint64_t sub_1DCB91C14()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  sub_1DCB16DB0(v1 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16DB0(v1 + 56, &dword_1ECCA3CE0, &unk_1DD0E4F80);

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1DCB91D68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

unint64_t DialogEngineOutput.description.getter()
{
  result = 0x656E6F6E2ELL;
  switch(*(v0 + 72))
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void *sub_1DCB91EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2C0;
}

void OUTLINED_FUNCTION_122_0()
{

  sub_1DCBC61E8();
}

uint64_t OUTLINED_FUNCTION_122_3()
{
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return swift_slowAlloc();
}

uint64_t sub_1DCB91FF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCB920EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v10 = OUTLINED_FUNCTION_3_111();
  sub_1DCB9218C(v10);
}

uint64_t sub_1DCB921CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB922D0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB92328()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB92410()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  sub_1DCB17238(v6, v5, v4, v3, v1, v2, 0);
  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCB924B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCB925C8(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_37_5(a1);
}

void sub_1DCB92634(uint64_t a2@<X8>)
{
  sub_1DCB92668();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1DCB926AC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1DCBB62F0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1DCB9276C(unint64_t *a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      sub_1DD0DD15C();
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
        v11 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1DCB92938()
{

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB92974()
{

  OUTLINED_FUNCTION_135();

  return swift_deallocObject();
}

uint64_t sub_1DCB929A8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB929DC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 48));
  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB92A20()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 32));

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB92A8C()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB92AC0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1DCB92B58()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB92BCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for GuardFlowResult;
  *a2 = *(result + 16);
  return result;
}

id sub_1DCB92D90(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DCB92DA4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_135();

  return swift_deallocObject();
}

uint64_t sub_1DCB92DEC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB92E44()
{
  OUTLINED_FUNCTION_122_1((v0 + 16));
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB92E74()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB92F58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCBFA8FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *_s11SiriKitFlow21ActionGroupTransitionOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCBFAABC(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DCB93008()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB930BC()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB93158()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB93428()
{
  v3 = OUTLINED_FUNCTION_18_8();
  type metadata accessor for RelationshipLabel(v3);
  OUTLINED_FUNCTION_11_1();
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

void sub_1DCB934BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_7_14();
  type metadata accessor for RelationshipLabel(v8);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_6_9();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_1DCB935BC()
{
  OUTLINED_FUNCTION_18_8();
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_11_1();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_1DCB9364C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_11_1();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_6_9();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1DCB93704()
{
  OUTLINED_FUNCTION_7_14();
  v2 = sub_1DD0DC76C();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DCB93744()
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DC76C();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _s11SiriKitFlow23AppConfirmationResponseC21AppConfirmationActionOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC103A8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t _s11SiriKitFlow25AppDisambiguationResponseC23AppDisambiguationActionOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC15D8C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

unint64_t *_s11SiriKitFlow23AppResolutionFlowResultOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCBF4C98(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DCB93B0C()
{
  sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB93D24()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB93E24()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB93E70()
{

  if (*(v0 + 104) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB93F10()
{

  if (*(v0 + 128) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB93FA0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB94000()
{

  swift_unknownObjectRelease();

  if (*(v0 + 136) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB940A0()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9418C()
{

  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB94224()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB942E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DCB9437C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void **_s11SiriKitFlow19AppShortcutProviderVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_1DCB94460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB944F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9458C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB945C4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1DCB946AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_1DCB94738(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t *_s11SiriKitFlow26AuthenticationRequirementsVwta_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DCB94860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCB7A558(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DCB94890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCB94774(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DCB948E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t _s11SiriKitFlow28AuthoredValueProvidingResultV32AuthoredValueProvidingResultTypeOwCP_0(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14_17(a1, a2);
  *v2 = v3;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t *_s11SiriKitFlow28AuthoredValueProvidingResultV32AuthoredValueProvidingResultTypeOwta_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCC5F884(v4, v5);
  return a1;
}

uint64_t sub_1DCB94F08()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB94FF8()
{
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 96);
  v22 = *(v0 + 16);
  v2 = v22;
  v23 = v1;
  v24 = v4;
  v25 = v3;
  v6 = *(v0 + 64);
  v26 = *(v0 + 48);
  v21 = v26;
  v27 = v6;
  v28 = *(v0 + 80);
  v29 = v5;
  type metadata accessor for CombineAll5(0, &v22);
  OUTLINED_FUNCTION_37_13();
  v8 = v0 + ((*(v7 + 80) + 104) & ~*(v7 + 80));
  OUTLINED_FUNCTION_112();
  v10 = (*(v9 + 8))(v8, v2);
  v22 = v2;
  v23 = v1;
  v24 = v4;
  v25 = v3;
  *&v26 = v21;
  OUTLINED_FUNCTION_23_9(v10, v11, &v22);
  OUTLINED_FUNCTION_7_24();
  (*(v12 + 8))(v8 + v13, v1);
  OUTLINED_FUNCTION_7_24();
  (*(v14 + 8))(v8 + v15, v4);
  OUTLINED_FUNCTION_7_24();
  (*(v16 + 8))(v8 + v17, v3);
  OUTLINED_FUNCTION_7_24();
  (*(v18 + 8))(v8 + v19, v21);

  return swift_deallocObject();
}

uint64_t sub_1DCB951F4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9522C()
{
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v25 = *(v0 + 16);
  v2 = v25;
  v26 = v1;
  v27 = v4;
  v28 = v3;
  v29 = v5;
  v6 = *(v0 + 72);
  v30 = *(v0 + 56);
  v24 = v30;
  v31 = v6;
  v7 = *(v0 + 104);
  v32 = *(v0 + 88);
  v33 = v7;
  type metadata accessor for CombineAll6(0, &v25);
  OUTLINED_FUNCTION_37_13();
  v9 = v0 + ((*(v8 + 80) + 120) & ~*(v8 + 80));
  OUTLINED_FUNCTION_112();
  v11 = (*(v10 + 8))(v9, v2);
  v25 = v2;
  v26 = v1;
  v27 = v4;
  v28 = v3;
  v29 = v5;
  *&v30 = v24;
  OUTLINED_FUNCTION_22_13(v11, v12, &v25);
  OUTLINED_FUNCTION_7_24();
  (*(v13 + 8))(v9 + v14, v1);
  OUTLINED_FUNCTION_7_24();
  (*(v15 + 8))(v9 + v16, v4);
  OUTLINED_FUNCTION_7_24();
  (*(v17 + 8))(v9 + v18, v3);
  OUTLINED_FUNCTION_7_24();
  (*(v19 + 8))(v9 + v20, v5);
  OUTLINED_FUNCTION_7_24();
  (*(v21 + 8))(v9 + v22, v24);

  return swift_deallocObject();
}

uint64_t sub_1DCB95464()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB95534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NeverPlan(255, *(a1 + 40), a3, a4);
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB95568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NeverPlan(255, *(a1 + 48), a3, a4);
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB955D8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB95610()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9568C()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB956C0()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB956F4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB95730()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9577C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB957B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB95958()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB95990()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB959D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC85F94();
  *a1 = result;
  return result;
}

uint64_t sub_1DCB95AFC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB95B34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB95C90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void *sub_1DCB95D78(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = v3;
  }

  *a1 = v3;
  return a1;
}

void sub_1DCB960DC(void *result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1DCC334C8(result, a2, SBYTE1(a2));
  }
}

void sub_1DCB96104(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1DCBB12E0(a1, a2, SBYTE1(a2));
  }
}

uint64_t sub_1DCB9614C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96184()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9620C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96290()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCB962D8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCC9DE98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB9638C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB963C4()
{
  v1 = v0[3];
  v2 = (type metadata accessor for USOKeyPath(0, v0[2], v1, v0[4]) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(*v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v3;

  v7 = *(v4 + 8);
  v7(&v6[v2[15]], v1);

  v7(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB96544()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCB96580(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCCA3578(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCB965CC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1DCB96638()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96690(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_1DCB966D4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer(255, AssociatedTypeWitness, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB969B8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96A18()
{

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_1DCB96A68()
{

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_1DCB96AB8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DCB96B08()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96B68()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB96BA8()
{
  v2 = type metadata accessor for Input(0);
  v3 = (*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80);

  sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 8))(v0 + v3);
  v5 = (v0 + v3 + *(v2 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v14 + 8))(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_17;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v15 = *v5;
      goto LABEL_23;
    case 6u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v16 + 8))(v5);
      v17 = type metadata accessor for USOParse(0);
      v18 = *(v17 + 20);
      v19 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v19))
      {
        OUTLINED_FUNCTION_112();
        (*(v20 + 8))(v5 + v18, v1);
      }

      v13 = *(v17 + 24);
      goto LABEL_16;
    case 7u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v7 + 8))(v5);
      v8 = type metadata accessor for USOParse(0);
      v9 = *(v8 + 20);
      v10 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v10))
      {
        OUTLINED_FUNCTION_112();
        (*(v11 + 8))(v5 + v9, v1);
      }

      OUTLINED_FUNCTION_9_23(*(v8 + 24));

      v12 = type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_9_23(v12[5]);

      OUTLINED_FUNCTION_9_23(v12[6]);

      v13 = v12[7];
LABEL_16:
      OUTLINED_FUNCTION_9_23(v13);
LABEL_17:

      break;
    case 8u:
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v21 + 8))(v5);
      v22 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_9_23(v22[5]);

      v23 = v5 + v22[6];
      v24 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
      {
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v25 + 8))(v23);
        v26 = *(v24 + 20);
        v27 = sub_1DD0DB3EC();
        v33 = v26;
        v28 = v23 + v26;
        v29 = v27;
        if (!__swift_getEnumTagSinglePayload(v28, 1, v27))
        {
          OUTLINED_FUNCTION_112();
          (*(v30 + 8))(v23 + v33, v29);
        }
      }

      v15 = *(v5 + v22[7]);
LABEL_23:

      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v6 + 8))(v5);
      break;
    default:
      break;
  }

  v31 = (v0 + v3 + *(v2 + 28));
  if (v31[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB97058()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB971FC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9726C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for ConfirmModifier(255, *a1, a1[3], a4);
  OUTLINED_FUNCTION_2_43();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ModifiedPlan(255, v4, v5, WitnessTable);

  return swift_getWitnessTable();
}

uint64_t sub_1DCB97328(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConfirmPlan(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1DCB97380()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB973B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ConfirmPlan(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1DCB974C8()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB974FC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB97550()
{
  v1 = *(type metadata accessor for RelationshipLabel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1();
    (*(v6 + 8))(v0 + v2 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB97748()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB97790()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB977DC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t sub_1DCB97944()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB97AA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB97BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCB97BA8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCB97CDC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB97D2C()
{
  v1 = v0[4];
  v2 = (type metadata accessor for USOKeyPath(0, v0[3], v1, v0[5]) - 8);
  v3 = (*(*v2 + 80) + 56) & ~*(*v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[15], v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB97E58()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1DCB97EA8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DCB98174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1DCB98214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB982A4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB98304()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9833C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB983AC()
{

  sub_1DCD00B90(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  if (*(v0 + 176) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB984BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCD00FC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB984EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB985FC()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB987BC()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCC85F94();
  *v0 = result & 1;
  return result;
}

uint64_t _s11SiriKitFlow25ExecuteOnRemoteFlowResultOwCP_0(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_90_3(a1, a2);
  sub_1DCD0EA14(v5, v6);
  *v2 = v3;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t _s11SiriKitFlow19ExecuteOnRemoteFlowC5StateOwCP_0(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_90_3(a1, a2);
  sub_1DCD070D4(v5, v6);
  *v2 = v3;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t sub_1DCB98A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Input(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    v9 = ((4 * v8) & 0xC) == 0;
    v10 = ((4 * v8) & 0xC | (v8 >> 2)) ^ 0xF;
    if (v9)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_1DCB98ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Input(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1DCB98CF8()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB98DB4()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB98FF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_54_9();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for Parse(0);
    v6 = OUTLINED_FUNCTION_59_2(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void *sub_1DCB9906C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for Parse(0);
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCB9942C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowActionType(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCB99474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowActionType(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCB99A28()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCD38250();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCB99A7C()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCD38324();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCB99AD0()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCD383F8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCB99B24()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCD3850C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCB99B50()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCD385E0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCB99C44()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCD38820();
  *v0 = result;
  v0[1] = v2;
  return result;
}

char *sub_1DCB99CF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCB99DF4()
{
  OUTLINED_FUNCTION_50();
  v2 = *(type metadata accessor for Parse(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = (v0 + v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v12 + 8))(v0 + v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_17;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v13 = *v4;
      goto LABEL_23;
    case 6u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v14 + 8))(v0 + v3);
      v15 = type metadata accessor for USOParse(0);
      v16 = *(v15 + 20);
      v17 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v17))
      {
        (*(*(v1 - 8) + 8))(v4 + v16, v1);
      }

      v11 = *(v15 + 24);
      goto LABEL_16;
    case 7u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v6 + 8))(v0 + v3);
      v7 = type metadata accessor for USOParse(0);
      v8 = *(v7 + 20);
      v9 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v9))
      {
        (*(*(v1 - 8) + 8))(v4 + v8, v1);
      }

      OUTLINED_FUNCTION_42_15(*(v7 + 24));

      v10 = type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_42_15(v10[5]);

      OUTLINED_FUNCTION_42_15(v10[6]);

      v11 = v10[7];
LABEL_16:
      OUTLINED_FUNCTION_42_15(v11);
LABEL_17:

      break;
    case 8u:
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v18 + 8))(v0 + v3);
      v19 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_42_15(v19[5]);

      v20 = v4 + v19[6];
      v21 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v20, 1, v21))
      {
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v22 + 8))(v20);
        v23 = *(v21 + 20);
        v24 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v20 + v23, 1, v24))
        {
          (*(*(v24 - 8) + 8))(v20 + v23, v24);
        }
      }

      v13 = *(v4 + v19[7]);
LABEL_23:

      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v5 + 8))(v0 + v3);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_49();

  return swift_deallocObject();
}

uint64_t sub_1DCB9A208()
{
  if (*(v0 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9A248()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9A3C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1DCB9A464(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB9A7E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB9A818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5038, &qword_1DD0F0CF0);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9A9AC()
{
  type metadata accessor for SiriKitFlowFrameInput(0);
  OUTLINED_FUNCTION_8_41();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = (v1 + v4);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v14 + 8))(v1 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_17;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v15 = *v5;
      goto LABEL_23;
    case 6u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v16 + 8))(v1 + v4);
      v17 = type metadata accessor for USOParse(0);
      v18 = *(v17 + 20);
      v19 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_21_19(v19))
      {
        OUTLINED_FUNCTION_112();
        (*(v20 + 8))(v5 + v18, v2);
      }

      v13 = *(v17 + 24);
      goto LABEL_16;
    case 7u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v7 + 8))(v1 + v4);
      v8 = type metadata accessor for USOParse(0);
      v9 = *(v8 + 20);
      v10 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_21_19(v10))
      {
        OUTLINED_FUNCTION_112();
        (*(v11 + 8))(v5 + v9, v2);
      }

      OUTLINED_FUNCTION_4_55(*(v8 + 24));

      v12 = type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_4_55(v12[5]);

      OUTLINED_FUNCTION_4_55(v12[6]);

      v13 = v12[7];
LABEL_16:
      OUTLINED_FUNCTION_4_55(v13);
LABEL_17:

      break;
    case 8u:
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v21 + 8))(v1 + v4);
      v22 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_4_55(v22[5]);

      v23 = v5 + v22[6];
      v24 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
      {
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v25 + 8))(v23);
        v26 = *(v24 + 20);
        v27 = sub_1DD0DB3EC();
        v32 = v26;
        v28 = v23 + v26;
        v29 = v27;
        if (!__swift_getEnumTagSinglePayload(v28, 1, v27))
        {
          OUTLINED_FUNCTION_112();
          (*(v30 + 8))(v23 + v32, v29);
        }
      }

      v15 = *(v5 + v22[7]);
LABEL_23:

      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v6 + 8))(v1 + v4);
      break;
    default:
      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v5 + *(v0 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9AE10()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9AE48()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DCB9AE90()
{
  type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_8_41();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v3 + 48);
  if (v4 <= 0xFB)
  {
    sub_1DCD21390(*(v3 + 32), *(v3 + 40), v4);
  }

  v5 = v3 + *(v0 + 36);
  v6 = type metadata accessor for PluginAction(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {

    v7 = v5 + v6[5];
    sub_1DD0DB04C();
    OUTLINED_FUNCTION_13_1();
    v69 = *(v8 + 8);
    v70 = v9;
    v69(v7);
    v10 = type metadata accessor for Input(0);
    v11 = (v7 + v10[5]);
    type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_1DD0DC76C();
        goto LABEL_8;
      case 1u:
        sub_1DD0DC76C();
        OUTLINED_FUNCTION_13_1();
        (*(v24 + 8))(v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

        break;
      case 2u:

        goto LABEL_20;
      case 3u:
        swift_unknownObjectRelease();
        break;
      case 4u:
        sub_1DD0DB1EC();
        goto LABEL_8;
      case 5u:
        v25 = *v11;
        goto LABEL_26;
      case 6u:
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v26 + 8))(v11);
        v60 = type metadata accessor for USOParse(0);
        v66 = *(v60 + 20);
        v27 = sub_1DD0DB3EC();
        if (!OUTLINED_FUNCTION_11_36(v27, v28, v29, v30, v31, v32, v33, v34, v51, v52, v54, v56, v60, v66))
        {
          OUTLINED_FUNCTION_112();
          (*(v35 + 8))(v11 + v67);
        }

        v23 = *(v61 + 24);
        goto LABEL_19;
      case 7u:
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v13 + 8))(v11);
        v58 = type metadata accessor for USOParse(0);
        v63 = *(v58 + 20);
        v14 = sub_1DD0DB3EC();
        if (!OUTLINED_FUNCTION_11_36(v14, v15, v16, v17, v18, v19, v20, v21, v51, v52, v54, v56, v58, v63))
        {
          OUTLINED_FUNCTION_112();
          (*(v22 + 8))(v11 + v64);
        }

        OUTLINED_FUNCTION_10_36(*(v59 + 24));

        v65 = type metadata accessor for LinkParse(0);
        OUTLINED_FUNCTION_10_36(v65[5]);

        OUTLINED_FUNCTION_10_36(v65[6]);

        v23 = v65[7];
LABEL_19:
        OUTLINED_FUNCTION_10_36(v23);
LABEL_20:

        break;
      case 8u:
        sub_1DD0DD12C();
        OUTLINED_FUNCTION_13_1();
        (*(v36 + 8))(v11);
        v68 = type metadata accessor for NLRouterParse(0);
        OUTLINED_FUNCTION_10_36(*(v68 + 20));

        v62 = v11 + *(v68 + 24);
        v57 = type metadata accessor for USOParse(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v57);
        v38 = v68;
        if (!EnumTagSinglePayload)
        {
          sub_1DD0DB4BC();
          OUTLINED_FUNCTION_13_1();
          (*(v39 + 8))(v62);
          v55 = *(v57 + 20);
          v53 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v62 + v55, 1, v53))
          {
            OUTLINED_FUNCTION_112();
            (*(v40 + 8))(v62 + v41);
          }

          v38 = v68;
        }

        v25 = *(v11 + *(v38 + 28));
LABEL_26:

        break;
      case 9u:
        sub_1DD0DD08C();
LABEL_8:
        OUTLINED_FUNCTION_13_1();
        (*(v12 + 8))(v11);
        break;
      default:
        break;
    }

    v42 = (v7 + v10[7]);
    if (v42[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    OUTLINED_FUNCTION_4_55(v6[8]);

    v43 = v5 + v6[9];
    type metadata accessor for ActionParaphrase(0);
    v44 = OUTLINED_FUNCTION_96_1();
    if (!__swift_getEnumTagSinglePayload(v44, 1, v10))
    {

      v45 = v43 + v10[5];
      type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      v46 = OUTLINED_FUNCTION_96_1();
      if (!__swift_getEnumTagSinglePayload(v46, 1, v10))
      {

        v47 = v10[6];
        sub_1DD0DB66C();
        OUTLINED_FUNCTION_13_1();
        (*(v48 + 8))(v45 + v47);
      }
    }

    v49 = v6[10];
    if (!__swift_getEnumTagSinglePayload(v5 + v49, 1, v70))
    {
      (v69)(v5 + v49, v70);
    }
  }

  if (*(v3 + *(v0 + 40) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9B7DC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9B848()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCB9BA00()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9BB00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCB5F7AC();
  *a1 = result;
  return result;
}

uint64_t sub_1DCB9BB54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCC9DE98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB9BB84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCD704D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB9BCC8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9BD10()
{
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9BD8C()
{
  OUTLINED_FUNCTION_112();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1DCB9BEE8()
{
  sub_1DD0DD85C();
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void *sub_1DCB9BF90(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_1DCB9BFD8()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB9C034()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB9C090()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9C130()
{

  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9C230@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1DCD8291C(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCB9C2D8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9C354()
{
  v1 = type metadata accessor for AceOutput(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_1DCB42C24(*(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80));
  if (*(v2 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
  }

  v3 = v2 + v1[7];
  v4 = type metadata accessor for NLContextUpdate(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {

    if (*(v3 + 256))
    {
    }

    v5 = *(v4 + 128);
    v6 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  v7 = v1[8];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v2 + v7);
  v9 = v1[9];
  v10 = sub_1DD0DD10C();
  if (!__swift_getEnumTagSinglePayload(v2 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9C650()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9C6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DCD6B7B0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DCB9C704()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9C7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCB9C824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCB9C898()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9C904()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9C93C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9C974(void *a1)
{
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_2_4();
  v5 = type metadata accessor for FlowMappingModifier(v2, v3, v4, v1);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan(v6, v7, v5, v8);
  OUTLINED_FUNCTION_0_57();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9CA08()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v4 = type metadata accessor for ErrorReportingFlowModifier(v0, v1, v2, v3);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan(v5, v6, v4, v7);
  OUTLINED_FUNCTION_0_57();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9CA74()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9CAB4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9CAFC()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CC1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DCB9CC64()
{

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CC98()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CE04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CE50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F18, &qword_1DD0F4348);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB9CFEC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9D024()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9D05C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9D0A4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9D398()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9D3E4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DCDB1CB0(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t *_s11SiriKitFlow16AttachmentOptionOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_1DCB9D498(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for LifeCycleModifierFlow(255, AssociatedTypeWitness, v2, v3);
  OUTLINED_FUNCTION_0_64();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9D4EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v1 = sub_1DD0DF22C();
  type metadata accessor for LifeCycleModifierFlow(255, v1, v2, v3);
  OUTLINED_FUNCTION_0_64();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9D5BC()
{

  return swift_deallocObject();
}

uint64_t _s11SiriKitFlow8LinearlyC5StateOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCDB3A9C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCB9D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for USOParse(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DCB9D710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for USOParse(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t _s11SiriKitFlow19LinkConnectionEventOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t sub_1DCB9DEB0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9DF78()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

unint64_t *_s11SiriKitFlow28PermissionPromptSchemaLoggerC12LoggedResultVwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1DCBF4488(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_1DCB9E018()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9E080()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9E110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TransformFlow(255, *(a1 + 8), a3, a4);
  OUTLINED_FUNCTION_0_65();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9E180()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9E1C0()
{

  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB9E1F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for MapModifier(255, *a1, a1[1], a1[2]);
  OUTLINED_FUNCTION_0_66();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ModifiedPlan(255, v1, v2, WitnessTable);

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9E2B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCB9E3C0(uint64_t *a1)
{
  type metadata accessor for MappingPlan(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9E414()
{
  v3 = OUTLINED_FUNCTION_18_8();
  type metadata accessor for RelationshipLabel(v3);
  OUTLINED_FUNCTION_11_1();
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

void sub_1DCB9E4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_7_14();
  type metadata accessor for RelationshipLabel(v8);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_6_9();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_1DCB9E56C()
{
  OUTLINED_FUNCTION_18_8();
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_11_1();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_1DCB9E5FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_11_1();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_6_9();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1DCB9E6B4()
{
  OUTLINED_FUNCTION_7_14();
  v2 = sub_1DD0DC76C();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DCB9E6F4()
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DC76C();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DCB9E8BC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA6820, qword_1DD0F6A48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DCB9EA20()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9EA94()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer(255, AssociatedTypeWitness, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_112();
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9EB74(uint64_t a1)
{
  if ((*(a1 + 40) >> 1) > 0x80000000)
  {
    return -(*(a1 + 40) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCB9EC04()
{
  swift_getAssociatedTypeWitness();
  v1 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for DisambiguationResult(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v9 + 8))(v0 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9ECD0()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9EF60()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9EF98()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9F01C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9F080()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9F0CC()
{
  swift_getAssociatedTypeWitness();
  v1 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer(v1, v2, v3, v4);
  OUTLINED_FUNCTION_6_0();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9F1D8@<X0>(uint64_t *a1@<X8>)
{
  result = NLContextUpdate.pegasusConversationContext.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB9F3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCB9F43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCB9F498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_6();
  v6 = sub_1DD0DD12C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    v8 = v3 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1DCB9F574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  result = sub_1DD0DD12C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    v10 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DCB9F748()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9F788()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9F800()
{
  v1 = sub_1DD0DB0FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB9F8DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NeverPlan(255, *a1, a3, a4);
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9F910(void *a1)
{
  v1 = sub_1DD0DE97C();
  type metadata accessor for NeverPlan(255, v1, v2, v3);
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9F950(void *a1)
{
  v6[0] = *a1;
  v6[1] = sub_1DD0DE97C();
  v6[2] = sub_1DD0DE97C();
  v6[3] = sub_1DD0DE97C();
  v2 = OUTLINED_FUNCTION_17_30(255, v1, v6);
  type metadata accessor for NeverPlan(255, v2, v3, v4);
  OUTLINED_FUNCTION_10_20();
  return swift_getWitnessTable();
}

uint64_t sub_1DCB9F9D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCB9FA18()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9FB8C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9FC2C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB9FC60()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9FCA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCD01230();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB9FD24()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9FD64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DCB9FDF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB9FE84(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1DD0DCC3C();
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DCB9FFE4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1DD0DCC3C();
  }

  *(result + 8) = (a2 - 1);
  return result;
}

void *_s11SiriKitFlow12BargeInErrorVwCP_0(void *a1, id *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a1 = v3;
  return a1;
}

uint64_t sub_1DCBA01C4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1DCBA0214()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA0468(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_9_56();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    v7 = OUTLINED_FUNCTION_59_2(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_1DCBA04F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCBA0580(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_9_56();
    return (v3 + 1);
  }

  else
  {
    sub_1DD0DB66C();
    v6 = OUTLINED_FUNCTION_59_2(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1DCBA05F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DD0DB66C();
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCBA076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DCBA0818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  result = sub_1DD0DC76C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCBA0938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCBA0980(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_1DCBA09D0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_8_41();
  (*(v3 + 8))(v0 + v4, v1);

  sub_1DD0DCC3C();
}

void sub_1DCBA0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a4 & 0xF000000000000007) != 0)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCBA0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a4 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1DCBA0D7C()
{
  OUTLINED_FUNCTION_50();
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_8_41();

  sub_1DD0DCC3C();
}

uint64_t sub_1DCBA1068()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA12CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA1354(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1DCBA13F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBA14C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCBA1508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCBA1768()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA1CBC()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA1CF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA2664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DisambiguationResult(255, *(v4 + 24), a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v4 + ((*(v5 + 80) + 48) & ~*(v5 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA2718()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA2AC4()
{
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA2D88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE9B8D0();
  *a1 = result;
  return result;
}

uint64_t sub_1DCBA2E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 5)
  {
    return EnumTagSinglePayload - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBA2E54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DD0DB04C();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1DCBA2EB4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA3074(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for OptionalFlowMappingModifier(255, *a1, a1[1], a1[2]);
  v4 = OUTLINED_FUNCTION_1_96(v3);
  type metadata accessor for ModifiedPlan(255, v2, v1, v4);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3120(uint64_t *a1)
{
  type metadata accessor for OptionalFlowMappingPlan(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3174()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA31AC()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v4 = type metadata accessor for FlowMappingModifier(v0, v1, v2, v3);
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan(v5, v6, v4, v7);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3334(uint64_t *a1)
{
  type metadata accessor for FlowMappingPlan(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3380()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA33B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for ErrorReportingFlowModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_92();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ModifiedPlan(255, v4, v5, WitnessTable);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA346C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ErrorReportingFlowPlan(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

__n128 sub_1DCBA3570(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DCBA3694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DCBA36CC()
{

  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA3750()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA9298, &qword_1DD0FF738);
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyHandleIntentFlow(255, *(v4 + 16), *(v4 + 24), a4);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA38F4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA392C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA3964()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA3B1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA3B68()
{
  OUTLINED_FUNCTION_18_43();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA3BF8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3D18()
{
  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA3D68()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA3DA8()
{
  OUTLINED_FUNCTION_18_43();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3E6C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA3F60()
{

  swift_unknownObjectRelease();

  if (*(v0 + 144) >= 3uLL)
  {
  }

  OUTLINED_FUNCTION_54_16();

  return swift_deallocObject();
}

uint64_t sub_1DCBA3FF8()
{
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v10 = (((((((*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_9_63();
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v8 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  swift_unknownObjectRelease();

  (*(v7 + 8))(v0 + v8, v11);

  return swift_deallocObject();
}

uint64_t sub_1DCBA41F4()
{
  OUTLINED_FUNCTION_20_10();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v5 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v6 = (((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  if (*(v1 + v6 + 56) >= 3uLL)
  {
  }

  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4360()
{

  OUTLINED_FUNCTION_76_15();
  if (v1)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA43FC()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();

  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_46_20();
  v2(v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA44E4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA454C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA45B4()
{
  OUTLINED_FUNCTION_20_10();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();
  v3 = (((*(v2 + 64) + ((*(v1 + 80) + 72) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  v4 = OUTLINED_FUNCTION_46_20();
  v5(v4);

  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA46C0()
{

  OUTLINED_FUNCTION_76_15();
  if (v1)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4768()
{

  sub_1DCB6DE90(*(v0 + 48), *(v0 + 56));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA47CC()
{
  OUTLINED_FUNCTION_20_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v2);
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v6 = *(v5 + 64);

  OUTLINED_FUNCTION_76_15();
  if (v7)
  {
  }

  v8 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v8))
  {

    if (*(v0 + 256))
    {
    }

    v9 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v9))
    {
      OUTLINED_FUNCTION_112();
      v10 = OUTLINED_FUNCTION_74_14();
      v11(v10);
    }

    OUTLINED_FUNCTION_43_21();
  }

  v12 = (((((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4A0C()
{
  OUTLINED_FUNCTION_20_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v2);

  swift_unknownObjectRelease();

  if (*(v1 + 144) >= 3uLL)
  {
  }

  v3 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v3))
  {

    if (*(v0 + 256))
    {
    }

    v4 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v4))
    {
      OUTLINED_FUNCTION_112();
      v5 = OUTLINED_FUNCTION_74_14();
      v6(v5);
    }

    OUTLINED_FUNCTION_43_21();
  }

  OUTLINED_FUNCTION_50_16();
  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4C1C()
{
  OUTLINED_FUNCTION_20_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v2);

  if (*(v1 + 88) >= 3uLL)
  {
  }

  v3 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v3))
  {

    if (*(v0 + 256))
    {
    }

    v4 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v4))
    {
      OUTLINED_FUNCTION_112();
      v5 = OUTLINED_FUNCTION_74_14();
      v6(v5);
    }

    OUTLINED_FUNCTION_43_21();
  }

  OUTLINED_FUNCTION_50_16();
  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4E0C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4E74()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();
  v6 = v5;
  v10 = *(v5 + 80);
  OUTLINED_FUNCTION_26_30();
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v6 + 8))(v1 + ((v10 + 56) & ~v10), v0);

  swift_unknownObjectRelease();

  if (*(v1 + v8 + 56) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA4FE0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA5090()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA50C8()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA51AC()
{

  swift_unknownObjectRelease();

  if (*(v0 + 136) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA5270()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t sub_1DCBA52C4()
{

  swift_unknownObjectRelease();

  if (*(v0 + 120) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA535C()
{

  if (*(v0 + 104) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56();

  return swift_deallocObject();
}

uint64_t sub_1DCBA53E4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA541C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA547C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  OUTLINED_FUNCTION_54_16();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5514()
{
  OUTLINED_FUNCTION_20_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v2);

  swift_unknownObjectRelease();

  if (*(v1 + 136) >= 3uLL)
  {
  }

  v3 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v3))
  {

    if (*(v0 + 256))
    {
    }

    v4 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v4))
    {
      OUTLINED_FUNCTION_112();
      v5 = OUTLINED_FUNCTION_74_14();
      v6(v5);
    }

    OUTLINED_FUNCTION_43_21();
  }

  OUTLINED_FUNCTION_50_16();
  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5724()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5774()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0();

  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_46_20();
  v2(v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5890()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1DCBA58F8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5930()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA596C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA59A4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5A04()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5AF8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5B30()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5B68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5BC0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5C10()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5C4C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5CA4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5CDC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1DCBA5D24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5D94()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5DCC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5E0C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5E5C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA5EDC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA6068()
{
  OUTLINED_FUNCTION_60_14();
  swift_getAssociatedTypeWitness();
  v1 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for AnnotatedIntent(v1, v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_4_11();
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v6);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBA662C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for RCHFlowAsync.State(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v7);
}

uint64_t sub_1DCBA6800()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA6A24()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA6A5C()
{
  OUTLINED_FUNCTION_50();
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_98();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v15 + 8))(v0 + v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_17;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v16 = *v6;
      goto LABEL_23;
    case 6u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v17 + 8))(v0 + v3);
      v18 = type metadata accessor for USOParse(0);
      v19 = *(v18 + 20);
      v20 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v20))
      {
        OUTLINED_FUNCTION_112();
        (*(v21 + 8))(v6 + v19, v1);
      }

      v14 = *(v18 + 24);
      goto LABEL_16;
    case 7u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v8 + 8))(v0 + v3);
      v9 = type metadata accessor for USOParse(0);
      v10 = *(v9 + 20);
      v11 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v11))
      {
        OUTLINED_FUNCTION_112();
        (*(v12 + 8))(v6 + v10, v1);
      }

      OUTLINED_FUNCTION_42_15(*(v9 + 24));

      v13 = type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_42_15(v13[5]);

      OUTLINED_FUNCTION_42_15(v13[6]);

      v14 = v13[7];
LABEL_16:
      OUTLINED_FUNCTION_42_15(v14);
LABEL_17:

      break;
    case 8u:
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v22 + 8))(v0 + v3);
      v23 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_42_15(v23[5]);

      v24 = v6 + v23[6];
      v25 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v24, 1, v25))
      {
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v26 + 8))(v24);
        v27 = *(v25 + 20);
        v28 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v24 + v27, 1, v28))
        {
          OUTLINED_FUNCTION_112();
          (*(v29 + 8))(v24 + v27, v28);
        }

        OUTLINED_FUNCTION_9_23(*(v25 + 24));
      }

      v16 = *(v6 + v23[7]);
LABEL_23:

      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v7 + 8))(v0 + v3);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_49();

  return swift_deallocObject();
}

uint64_t sub_1DCBA70E8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7120()
{

  return swift_deallocObject();
}

uint64_t *_s11SiriKitFlow5StateOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCF0F92C(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DCBA71A0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA71E0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7288()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA72C0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCD00FC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCBA7330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCF133C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCBA7360()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA73C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7558()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7680()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA76C8()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCBA76FC()
{
  OUTLINED_FUNCTION_29_29();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1DCBA77E8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7834()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA799C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA79D4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7A1C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7A8C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA7B28(void *a1)
{
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  OUTLINED_FUNCTION_5_92();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA7BE4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7C3C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCB8E3C0(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCBA7D18()
{

  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA7D98()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7E5C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA7EF0()
{

  return swift_deallocObject();
}

unint64_t *_s11SiriKitFlow19ResolveConfirmErrorOwCP_0(unint64_t *a1, unint64_t *a2)
{
  if (*a2 >= 0xFFFFFFFF)
  {
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  return a1;
}

uint64_t sub_1DCBA8018()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA8050()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBA808C()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBA80C8()
{

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCBA811C()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v4 = type metadata accessor for ResolveIntoModifier(v0, v1, v2, v3);
  OUTLINED_FUNCTION_1_114();
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan(v5, v6, v4, v7);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA81CC(uint64_t *a1)
{
  type metadata accessor for ResolveIntoPlan(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA8228()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for ResolveIntoPlan(0, v1, v0[3], v0[4]) - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA840C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA8444()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA84B4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA852C()
{

  swift_unknownObjectRelease();

  if (*(v0 + 160) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA85E4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA861C()
{

  if (*(v0 + 96) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA86E0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8750()
{

  if (*(v0 + 104) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8800()
{

  swift_unknownObjectRelease();

  if (*(v0 + 160) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA88B8()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t sub_1DCBA891C()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8980()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA89C0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8A20()
{

  swift_unknownObjectRelease();

  if (*(v0 + 136) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA8AC0()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8B24()
{

  swift_unknownObjectRelease();

  if (*(v0 + 144) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA8BCC()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8C88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DCBA8D1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBA8DA8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA8DE0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA8E18()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1DCBA8EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v6))
  {
    OUTLINED_FUNCTION_112();
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA8FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    OUTLINED_FUNCTION_112();
    (*(v5 + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA9168()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA9280()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA9338()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBA93A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA9448(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SequentialPlan1(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA94C8(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for NeverPlan(255, AssociatedTypeWitness, v2, v3);

  return swift_getWitnessTable();
}

void _s11SiriKitFlow25ExternalActivationRequestVwxx_0(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = a1[5];
}

uint64_t sub_1DCBA962C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA9664()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCBA96C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA9D90()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA9DC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBAA1F8()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCDB1CB0(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA24C()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3C4C(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA2CC()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3CF8(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

void *sub_1DCBAA320()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3DA8(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1DCBAA34C()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3E24(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA3A0()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3EA4(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA3F4()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3F24(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA448()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3F60(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA49C()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFA3FE0(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1DCBAA6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Parse(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DCBAA758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Parse(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCBAA9E4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAAE68()
{
  sub_1DD0DD2DC();
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB068()
{
  v1 = type metadata accessor for Input(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v7 = *(v5 + 80);
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1();
  (*(v8 + 8))(v0 + v2);
  v9 = (v0 + v2 + *(v1 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v14 + 8))(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      break;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:

      break;
    case 6u:
      v34 = v3;
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v15 + 8))(v9);
      v16 = *(type metadata accessor for USOParse(0) + 20);
      v17 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_67(v17))
      {
        (*(*(v16 - 8) + 8))(v9 + v31, v16);
      }

      goto LABEL_15;
    case 7u:
      v34 = v3;
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v11 + 8))(v9);
      v12 = *(type metadata accessor for USOParse(0) + 20);
      v13 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_67(v13))
      {
        (*(*(v12 - 8) + 8))(v9 + v31, v12);
      }

      OUTLINED_FUNCTION_24_37();
      type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_24_37();
      OUTLINED_FUNCTION_24_37();
LABEL_15:
      OUTLINED_FUNCTION_24_37();
      v3 = v34;
      break;
    case 8u:
      v33 = v4;
      v35 = v3;
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v18 + 8))(v9);
      v19 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_24_37();
      v20 = v9 + *(v19 + 24);
      v21 = type metadata accessor for USOParse(0);
      v32 = v20;
      v22 = v20;
      v23 = v21;
      if (!__swift_getEnumTagSinglePayload(v22, 1, v21))
      {
        v30 = v19;
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v24 + 8))(v32);
        v25 = *(v23 + 20);
        v26 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(&v32[v25], 1, v26))
        {
          (*(*(v26 - 8) + 8))(&v32[v25], v26);
        }

        v19 = v30;
      }

      v4 = v33;
      v3 = v35;
      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v10 + 8))(v9);
      break;
    default:
      break;
  }

  v27 = (v0 + v2 + *(v1 + 28));
  if (v27[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  v28 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v6 + 8))(v0 + ((v28 + v7 + 8) & ~v7), v4);

  return swift_deallocObject();
}

uint64_t sub_1DCBAB614()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAB65C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB6E4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB764()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAB79C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBABA6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DCBABB00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBAC100()
{
  sub_1DCFCCE88(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC164()
{
  swift_unknownObjectRelease();

  sub_1DCC99E2C(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC1B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAC1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAC254()
{
  sub_1DCFCCE88(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC2E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC31C()
{

  return swift_deallocObject();
}

void *_s11SiriKitFlow7HintsUIVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;

  return a1;
}

uint64_t sub_1DCBAC3F8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAC434()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (((((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC52C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC57C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC5F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCBAC728()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFF359C(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1DCBAC77C()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCFF37C8(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1DCBAC824(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_15_4(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1DCBAC8AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBAC938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_15_4(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1DCBAC9D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  result = sub_1DD0DB04C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCBACA7C()
{

  OUTLINED_FUNCTION_5_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBACAB0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACAE8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACB20()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACB58()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACB90()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACBC8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACC00()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBACC38()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBACD14()
{
  v3 = OUTLINED_FUNCTION_18_8();
  type metadata accessor for RelationshipLabel(v3);
  OUTLINED_FUNCTION_11_1();
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

void sub_1DCBACDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_7_14();
  type metadata accessor for RelationshipLabel(v8);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_6_9();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_1DCBACE78()
{
  OUTLINED_FUNCTION_18_8();
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_11_1();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_1DCBACF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_11_1();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_6_9();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_1DCBACFC0()
{
  OUTLINED_FUNCTION_7_14();
  v2 = sub_1DD0DC76C();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DCBAD000()
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DC76C();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DCBAD09C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAD140(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for LifeCycleModifierFlow(255, AssociatedTypeWitness, v2, v3);
  OUTLINED_FUNCTION_1_138();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBAD194()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));

  return swift_deallocObject();
}

uint64_t sub_1DCBAD274()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAD3FC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAD50C()
{

  swift_unknownObjectRelease();

  if (*(v0 + 120) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBAD5A4()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAD644()
{

  if (*(v0 + 112) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBAD6D4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAD71C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBAD82C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAD86C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v6))
  {
    OUTLINED_FUNCTION_112();
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBAD9C8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBADA00()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBADA38(void *a1)
{
  v1 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ChainedFlow(255, AssociatedTypeWitness, v1, v3);
  OUTLINED_FUNCTION_0_126();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBADA9C(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  type metadata accessor for ChainedFlow(255, AssociatedTypeWitness, v2, v3);
  OUTLINED_FUNCTION_0_126();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBADC00()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCBADCF8()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBADD74()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBADDA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBADE68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBADF64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RelationshipLabel(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DCBADFEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RelationshipLabel(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBAE1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a3 + 16), a3, a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v6);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBAE1F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for UnsetRelationshipFlowAsync.State(0, *(a4 + 16), a3, a4);

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v7);
}

uint64_t sub_1DCBAE34C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAE3B4()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAE40C()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_98();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBAE51C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAE5AC()
{
  sub_1DD0DE40C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAE790()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAE7F8()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_49_28();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  OUTLINED_FUNCTION_51_33();

  return swift_deallocObject();
}

uint64_t sub_1DCBAE910()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAE9B8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAEA84()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_49_28();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_34_42();

  if (v6 != 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1();
    (*(v8 + 8))(v0 + v7);
  }

  OUTLINED_FUNCTION_30_45();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEBA0()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_49_28();
  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_34_42();

  if (v2 != 1)
  {
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1();
    (*(v4 + 8))(v0 + v3);
  }

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_30_45();

  return swift_deallocObject();
}

uint64_t sub_1DCBAED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentPromptAnswer(255, *(v4 + 16), a3, a4);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(v4 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEE0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEEEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEF54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEFB0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAEFF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAF040()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBAF5EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DCBAF634()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAF66C()
{
  OUTLINED_FUNCTION_9_2();
  result = sub_1DCE9B8D0();
  *v0 = result;
  return result;
}

uint64_t sub_1DCBAF70C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v5 = type metadata accessor for UserIdentityCheckFlow.AnalysisResult(v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v5);
  if (EnumTagSinglePayload >= 6)
  {
    return EnumTagSinglePayload - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBAF750(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_28_41();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1DCBAFA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_11_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1DCBAFB5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Parse(0);
    OUTLINED_FUNCTION_11_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1DCBAFC68()
{

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFC9C()
{

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFCE0()
{

  OUTLINED_FUNCTION_75_18();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFD20()
{

  OUTLINED_FUNCTION_156_0();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFD5C()
{

  OUTLINED_FUNCTION_136_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFDA0()
{

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFDDC()
{

  OUTLINED_FUNCTION_74_22();

  return swift_deallocObject();
}

uint64_t sub_1DCBB004C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBB0084()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBB00F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DB4BC();
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
  OUTLINED_FUNCTION_11_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1DCBB0200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DD0DB4BC();
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    OUTLINED_FUNCTION_11_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1DCBB02F8()
{
  v1 = v0[3];
  v2 = (type metadata accessor for USOKeyPath(0, v0[2], v1, v0[4]) - 8);
  v3 = v0 + ((*(*v2 + 80) + 40) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(&v3[v2[15]], v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBB041C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1DCBB04DC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBB0514()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBB05DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ConditionalValue(255, *(a1 + 8), a3, a4);
  type metadata accessor for TransformFlow(255, v4, v5, v6);
  OUTLINED_FUNCTION_2_125();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBB061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ConditionalValue(255, *(a1 + 16), a3, a4);
  type metadata accessor for TransformFlow(255, v4, v5, v6);
  OUTLINED_FUNCTION_2_125();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBB1028()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBB1070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DDD8C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCBB10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DDD8C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void *assignWithTake for DialogPhase(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void sub_1DCBB1234(unint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    sub_1DCBF44A0(result);
  }
}

uint64_t sub_1DCBB1258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC() & 1;
  }
}

void sub_1DCBB12E0(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }
}

id sub_1DCBB12F4(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return MEMORY[0x1EEE66C98](result);
  }

  return result;
}

void sub_1DCBB1310(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    MEMORY[0x1EEE66BB8](a1);
  }
}

uint64_t sub_1DCBB1358(uint64_t a1)
{
  v3 = type metadata accessor for OutputElementContainer(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  if (qword_1EDE4EBA8 != -1)
  {
    OUTLINED_FUNCTION_14_7(&qword_1EDE4EBA8);
  }

  v9 = unk_1EDE4EBB8;
  *v8 = qword_1EDE4EBB0;
  v8[1] = v9;
  v10 = MEMORY[0x1E69E7CC0];
  v8[2] = 0;
  v8[3] = v10;
  v8[4] = v10;
  type metadata accessor for ResponseComponents(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_30_5(v8 + v3[9]);
  *(v8 + v15) = 0;
  *(v8 + v3[11]) = 0;
  v16 = (v8 + v3[12]);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  v17 = (v8 + v3[13]);
  *v17 = 0;
  v17[1] = 0;
  *(v8 + v3[14]) = 0;
  sub_1DCBB5E24();
  *(v1 + 16) = a1;

  return v1;
}

void sub_1DCBB1498(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v114) = a4;
  v113 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  v14 = OUTLINED_FUNCTION_20_0(v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v18, v19);
  v109 = v107 - v20;
  v111 = type metadata accessor for ResponseComponents(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = v107 - v25;
  v115 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_16();
  v124 = (v29 - v28);
  v30 = type metadata accessor for PresentationElements(0);
  v31 = OUTLINED_FUNCTION_20_0(v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_16();
  v35 = v34 - v33;
  v37 = *a1;
  v36 = a1[1];
  v38 = (v7 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData);
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *v38 = v37;
  v38[1] = v36;

  if (a6)
  {
    v39 = (v38 + *(type metadata accessor for OutputElementContainer(0) + 52));
    *v39 = a6;
    v39[1] = a7;
    sub_1DD0DCF8C();
  }

  if (a5)
  {
    v40 = 1;
  }

  else
  {
    v40 = *(v38 + *(type metadata accessor for OutputElementContainer(0) + 56));
  }

  v41 = type metadata accessor for OutputElementContainer(0);
  *(v38 + v41[14]) = v40;
  v42 = v41[10];
  if (v113)
  {
    v43 = 1;
  }

  else
  {
    v43 = *(v38 + v42);
  }

  *(v38 + v42) = v43;
  v44 = v41[11];
  if (v114)
  {
    v45 = 1;
  }

  else
  {
    v45 = *(v38 + v44);
  }

  *(v38 + v44) = v45;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v46 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v46, qword_1EDE57E00);
  sub_1DCBB5D20();
  v47 = sub_1DD0DD8EC();
  v48 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v35;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v120 = v51;
    *v50 = 136315138;
    v52 = sub_1DCE55DC0();
    v114 = a2;
    v54 = v53;
    OUTLINED_FUNCTION_11_14();
    sub_1DCBB5CC8(v49, v55);
    v56 = sub_1DCB10E9C(v52, v54, &v120);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_1DCAFC000, v47, v48, "Registering dialog of type %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {

    OUTLINED_FUNCTION_11_14();
    sub_1DCBB5CC8(v35, v57);
  }

  v58 = v124;
  sub_1DCBB5D20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = *v58;
      if (sub_1DCB08B14(v38[4]) || sub_1DCB08B14(v38[3]))
      {
        v77 = sub_1DCBB5C20();
        OUTLINED_FUNCTION_34(&type metadata for AccumulatingOutputProducer.AccumulationError, v77);
        OUTLINED_FUNCTION_3_13();
        *v79 = v78 + 89;
        v79[1] = 0x80000001DD1125D0;
        swift_willThrow();
      }

      else
      {
        v81 = v38[2];
        if (v81)
        {
          [v81 append_];
        }

        else
        {
          v38[2] = v76;
        }
      }

      return;
    case 2u:
      OUTLINED_FUNCTION_9_4();
      v64 = v112;
      sub_1DCBB5E24();
      if (sub_1DCB08B14(v38[4]) || sub_1DCB08B14(v38[3]) || v38[2])
      {
        v65 = OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34(&type metadata for AccumulatingOutputProducer.AccumulationError, v65);
        OUTLINED_FUNCTION_3_13();
        v68 = v67 + 116;
LABEL_24:
        *v66 = v68;
        v66[1] = v58;
        swift_willThrow();
        v69 = OUTLINED_FUNCTION_5_6();
        sub_1DCBB5CC8(v69, v70);
        return;
      }

      v58 = &unk_1ECCA1830;
      sub_1DCB8878C();
      v82 = *(&v120 + 1);
      OUTLINED_FUNCTION_43_2();
      sub_1DCB0E9D8(v83, v84, v85);
      if (v82)
      {
        v86 = OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34(&type metadata for AccumulatingOutputProducer.AccumulationError, v86);
        OUTLINED_FUNCTION_3_13();
        goto LABEL_24;
      }

      v93 = v109;
      sub_1DCB8878C();
      v94 = v111;
      if (__swift_getEnumTagSinglePayload(v93, 1, v111) != 1)
      {
        OUTLINED_FUNCTION_9_4();
        v102 = v107[1];
        sub_1DCBB5E24();
        *&v116 = MEMORY[0x1E69E7CC0];
        if (*v102)
        {

          sub_1DCBB91B4(v103);
        }

        if (*v64)
        {

          sub_1DCBB91B4(v104);
        }

        v105 = v108;
        *(v108 + 24) = 0u;
        *(v105 + 40) = 0u;
        *(v105 + 56) = 0u;
        *(v105 + 72) = 0u;
        *(v105 + 88) = 0u;
        *(v105 + 104) = 0u;
        *(v105 + 8) = 0u;
        sub_1DD0DCC3C();
      }

      OUTLINED_FUNCTION_43_2();
      sub_1DCB0E9D8(v95, v96, v97);
      sub_1DCBB5D20();
      OUTLINED_FUNCTION_40_1();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v94);
      OUTLINED_FUNCTION_22_6();
      sub_1DCBB5D78();
      swift_endAccess();
      v101 = OUTLINED_FUNCTION_5_6();
      sub_1DCBB5CC8(v101, v106);
      return;
    case 3u:
      v71 = *(v58 + 1);
      v120 = *v58;
      v121 = v71;
      v122 = *(v58 + 2);
      v123 = v58[6];
      if (sub_1DCB08B14(v38[4]) || sub_1DCB08B14(v38[3]) || v38[2])
      {
        v72 = OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34(&type metadata for AccumulatingOutputProducer.AccumulationError, v72);
        OUTLINED_FUNCTION_3_13();
        v75 = v74 + 116;
LABEL_29:
        *v73 = v75;
        v73[1] = v58;
        swift_willThrow();
        sub_1DCBB5C74(&v120);
        return;
      }

      v58 = &qword_1ECCA1820;
      v87 = v110;
      sub_1DCB8878C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v111);
      OUTLINED_FUNCTION_43_2();
      sub_1DCB0E9D8(v89, v90, v91);
      if (EnumTagSinglePayload != 1)
      {
        v92 = OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34(&type metadata for AccumulatingOutputProducer.AccumulationError, v92);
        OUTLINED_FUNCTION_3_13();
        goto LABEL_29;
      }

      v116 = v120;
      v117 = v121;
      v118 = v122;
      v119 = v123;
      swift_beginAccess();
      sub_1DCBB5D78();
      swift_endAccess();
      return;
    default:
      v60 = *v58;
      v59 = v58[1];
      if (v38[2])
      {

        v61 = OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34(&type metadata for AccumulatingOutputProducer.AccumulationError, v61);
        OUTLINED_FUNCTION_3_13();
        *v63 = v62 + 89;
        v63[1] = v59;
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_22_6();
        v80 = v60;
        MEMORY[0x1E12A6920]();
        sub_1DCBBF95C();
        sub_1DD0DE3AC();
        sub_1DCB673E0(v59);
        swift_endAccess();
      }

      return;
  }
}

uint64_t sub_1DCBB1E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB8878C();
  if (v10)
  {
    sub_1DCAFF9E8(&v9, v11);
  }

  else
  {
    sub_1DCB8878C();
  }

  sub_1DCBB5D78();
  sub_1DCB8878C();
  if (v10)
  {
    sub_1DCAFF9E8(&v9, v11);
  }

  else
  {
    sub_1DCB8878C();
    if (v10)
    {
      sub_1DCB0E9D8(&v9, &qword_1ECCA1838, &unk_1DD0FC960);
    }
  }

  sub_1DCBB5D78();
  if (*(a2 + 96))
  {
    v6 = *(a2 + 88);
    v7 = *(a2 + 96);
  }

  else
  {
    v6 = *(a3 + 88);
    v7 = *(a3 + 96);
  }

  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  return result;
}

uint64_t sub_1DCBB1FC8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = v3 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v7 = (v6 + *(type metadata accessor for OutputElementContainer(0) + 52));
    *v7 = a2;
    v7[1] = a3;
    sub_1DD0DCF8C();
  }

  if (a1)
  {
    v8 = 1;
  }

  else
  {
    v9 = v3 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
    swift_beginAccess();
    v8 = *(v9 + *(type metadata accessor for OutputElementContainer(0) + 40));
  }

  v10 = v3 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  result = type metadata accessor for OutputElementContainer(0);
  *(v10 + *(result + 40)) = v8;
  return result;
}

void sub_1DCBB20BC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v6 = (v5 + *(type metadata accessor for OutputElementContainer(0) + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v4;

  sub_1DCBB5B64(v7, v8, v9);
}

uint64_t sub_1DCBB2154()
{
  OUTLINED_FUNCTION_42();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = *v0;
  v3 = type metadata accessor for OutputElementContainer(0);
  OUTLINED_FUNCTION_20_0(v3);
  v1[23] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_20_0(v4);
  v1[24] = OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v1[25] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCBB2240()
{
  OUTLINED_FUNCTION_41();
  v13 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_1DD0DF2AC();
    v7 = sub_1DCB10E9C(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1DCB10E9C(0x4F656375646F7270, 0xEF29287475707475, &v12);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 216) = v8;
  *v8 = v9;
  v8[1] = sub_1DCBB2428;
  OUTLINED_FUNCTION_48();

  return sub_1DCBB3498();
}

uint64_t sub_1DCBB2428()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCBB2510()
{
  v10 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  v0[28] = OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  v5 = (v3 + v4);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v9[0] = v6;
  v9[1] = v7;
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;

  OutputGenerationManifest.init(dialogPhase:_:)(v9, v1);
}

uint64_t sub_1DCBB2794()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v0;

  v5 = *(v2 + 184);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_10_10();
  sub_1DCBB5CC8(v5, v6);
  if (v0)
  {
    v7 = sub_1DCBB2B6C;
  }

  else
  {
    v7 = sub_1DCBB28D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCBB28D0()
{
  OUTLINED_FUNCTION_41();
  if (*(v0 + 120))
  {
    sub_1DCAFF9E8((v0 + 96), v0 + 56);
    v1 = sub_1DD0DD8EC();
    v2 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v2))
    {
      v3 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v3);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "Output built from accumulated data. Returning");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v6 = *(v0 + 192);
    v7 = *(v0 + 160);

    OUTLINED_FUNCTION_0_5();
    sub_1DCBB5CC8(v6, v8);
    sub_1DCAFF9E8((v0 + 56), v7);
    goto LABEL_9;
  }

  result = sub_1DCB0E9D8(v0 + 96, &qword_1ECCA1810, &dword_1DD0E0F78);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248) + 1;
  *(v0 + 248) = v11;
  if (v11 == v10)
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v13))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v14);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v15, v16, "No pattern result and no NL Context updates. No Output will be produced");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v6 = *(v0 + 192);
    v17 = *(v0 + 160);

    OUTLINED_FUNCTION_0_5();
    sub_1DCBB5CC8(v6, v18);
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0;
LABEL_9:
    OUTLINED_FUNCTION_25_3();
    sub_1DCB0E9D8(v6, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCBB3AD8();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_48();

    __asm { BRAA            X1, X16 }
  }

  v21 = *(v0 + 232);
  if (v11 < *(v21 + 16))
  {
    sub_1DCB17CA0(v21 + 40 * v11 + 32, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_32();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 256) = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_4_5(v22);
    OUTLINED_FUNCTION_48();

    __asm { BRAA            X5, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCBB2B6C()
{
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0_5();
  sub_1DCBB5CC8(v1, v2);
  sub_1DCB0E9D8(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCBB3AD8();

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCBB2C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6[8] = v6 - v5;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCBB3498()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  OUTLINED_FUNCTION_20_0(v3);
  v1[7] = OUTLINED_FUNCTION_38();
  v4 = sub_1DD0DB6EC();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for NLContextUpdate(0);
  v1[11] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v1[12] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCBB3594()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[6] + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  swift_beginAccess();
  v2 = type metadata accessor for OutputElementContainer(0);
  v3 = v2;
  if (*(v1 + *(v2 + 52)) || *(v1 + *(v2 + 48) + 8))
  {
    v4 = v0[12];
    NLContextUpdate.init()(v4);
    v5 = (v1 + *(v3 + 48));
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v4[31];
    v10 = v4[32];
    v11 = v4[33];
    v4[31] = *v5;
    v4[32] = v7;
    v4[33] = v8;
    sub_1DCB599D8(v6, v7, v8);
    sub_1DCBB5B64(v9, v10, v11);
    v12 = (v1 + *(v3 + 52));
    v13 = *v12;
    v0[13] = *v12;
    if (v13)
    {
      v0[14] = v12[1];
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_1DCB0E9D8(v0[7], &qword_1ECCAC000, &unk_1DD0E0F60);
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_40_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
    OUTLINED_FUNCTION_13_3();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v23))
    {
      v24 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v24);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v25, v26, "No NL context data provided. No context update will be generated.");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v27 = v0[11];

    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_48();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCBB3864()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCB370A4(v3, v4);
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCBB397C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[7];
  v2 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DCB0E9D8(v1, &qword_1ECCAC000, &unk_1DD0E0F60);
  }

  else
  {
    v3 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_43_2();
    v6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DD0E07C0;
    (v6)(v1 + v7, v4, v2);

    *(v3 + 216) = v1;
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  OUTLINED_FUNCTION_13_3();

  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1DCBB3AD8()
{
  v1 = type metadata accessor for OutputElementContainer(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = (v5 - v4);
  if (qword_1EDE4EBA8 != -1)
  {
    OUTLINED_FUNCTION_14_7(&qword_1EDE4EBA8);
  }

  v7 = unk_1EDE4EBB8;
  *v6 = qword_1EDE4EBB0;
  v6[1] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = 0;
  v6[3] = v8;
  v6[4] = v8;
  type metadata accessor for ResponseComponents(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_30_5(v6 + v1[9]);
  *(v6 + v13) = 0;
  *(v6 + v1[11]) = 0;
  v14 = (v6 + v1[12]);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v15 = (v6 + v1[13]);
  *v15 = 0;
  v15[1] = 0;
  *(v6 + v1[14]) = 0;
  v16 = OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  swift_beginAccess();

  sub_1DCBB5AAC(v6, v0 + v16);
  return swift_endAccess();
}

uint64_t sub_1DCBB3C18(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](10535, 0xE200000000000000);
  return 0x6C6167656C6C692ELL;
}

uint64_t sub_1DCBB3CC4()
{

  OUTLINED_FUNCTION_10_10();
  sub_1DCBB5CC8(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCBB3E7C()
{
  v0 = sub_1DD0DF1DC();
  OUTLINED_FUNCTION_36_6(v0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB3EF0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0(v1);
  OUTLINED_FUNCTION_17_6(v2, v3, v4);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4018()
{
  OUTLINED_FUNCTION_21();
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB40CC()
{
  OUTLINED_FUNCTION_49_0();
  v0(v3, v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4138(uint64_t a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB41B0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    v4 = 0x64726163646C6977;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4234(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    v4 = 1701736302;
  }

  else
  {
    v4 = 0x33764F5355;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB42B0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    v4 = 0x6769626D61736964;
  }

  else
  {
    v4 = 0x647261646E617473;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4344(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6C6562616CLL;
    }

    else
    {
      v4 = 0xD000000000000019;
    }
  }

  else
  {
    v4 = 0x676F6C616964;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4420(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x72657355656D6F68;
    }

    else
    {
      v4 = 0x6C61626F6C67;
    }
  }

  else
  {
    v4 = 0x55746E6572727563;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB44F4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }
  }

  else
  {
    v4 = 7562617;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB45C0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    v4 = 0x64656C65636E6143;
  }

  else
  {
    v4 = 0x6F74747542707041;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4664(uint64_t a1)
{
  v1 = sub_1DD0DF1DC();
  OUTLINED_FUNCTION_36_6(v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB46D4(uint64_t a1)
{
  OUTLINED_FUNCTION_35_4(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_17_6(v3, v4, v5);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB471C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_0(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x69746E4562726576;
    }
  }

  else
  {
    v4 = 0x656D614E707061;
  }

  OUTLINED_FUNCTION_28_1(v2, v4, v3);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB47B4(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0(a1);
  sub_1DD0DDF2C();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4870(uint64_t a1)
{
  OUTLINED_FUNCTION_35_4(a1);
  v1(v4, v2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB48C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB492C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_35_4(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_17_6(v3, v4, v5);

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4978(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB49BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1DCBB4A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for AccumulatingOutputProducer(uint64_t a1)
{
  result = qword_1ECCA1700;
  if (!qword_1ECCA1700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCBB4ABC(uint64_t a1)
{
  result = type metadata accessor for OutputElementContainer(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCBB4C5C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1DCBB4C80(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1DCBB4CA0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_5_44();
  *a1 = result;
  return result;
}

uint64_t sub_1DCBB4CD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4C4C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4D04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCE06FA8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4D34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4C54(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCBB4C5C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCBB4DA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCBB4C80(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCBB4DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4C98(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_1DCBB4E5C()
{
  OUTLINED_FUNCTION_7_9();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1DCBB4E90()
{
  v1 = OUTLINED_FUNCTION_7_9();
  result = sub_1DCF12A38(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DCBB4ED8(uint64_t a1, uint64_t a2)
{
  sub_1DD0DDFBC();
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  v2 = sub_1DD0DF20C();

  return v2;
}

uint64_t sub_1DCBB4F4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DD0DDF8C();

  *a2 = v3;
  return result;
}

uint64_t sub_1DCBB4F94()
{
  v1 = OUTLINED_FUNCTION_7_9();
  result = sub_1DCDADD08(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DCBB4FCC(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE46300, type metadata accessor for AFLocationServiceError, &unk_1DD0E0D08);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DCBB5038(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE46300, type metadata accessor for AFLocationServiceError, &unk_1DD0E0D08);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DCBB50A4(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1DCBB5110@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCBB5144(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1DCBB518C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4A14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB51D4(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DCBB5240(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DCBB52AC(void *a1, uint64_t a2)
{
  v4 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DCBB5368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DCBB53E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DF1DC();
  sub_1DD0DDF1C();
  return sub_1DD0DF20C();
}

void *sub_1DCBB5444@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCBB54E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCBB55BC(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1ECCA1898, type metadata accessor for INPersonRelationship, &unk_1DD0E12EC);
  v3 = sub_1DCBB54E4(&unk_1ECCA18A0, type metadata accessor for INPersonRelationship, &unk_1DD0E128C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DCBB5678(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE46198, type metadata accessor for INPersonHandleLabel, &unk_1DD0E13B8);
  v3 = sub_1DCBB54E4(&qword_1ECCA18B0, type metadata accessor for INPersonHandleLabel, &unk_1DD0E11B4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DCBB5734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1DCBB5980()
{
  result = qword_1EDE46318;
  if (!qword_1EDE46318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46318);
  }

  return result;
}

uint64_t sub_1DCBB5AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutputElementContainer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

void sub_1DCBB5B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1DCBB5BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCBB5C20()
{
  result = qword_1ECCA1828;
  if (!qword_1ECCA1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA1828);
  }

  return result;
}

uint64_t sub_1DCBB5CC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCBB5D20()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

uint64_t sub_1DCBB5D78()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_33_1();
  v4(v3);
  return v0;
}

uint64_t sub_1DCBB5DD0(uint64_t a1, uint64_t a2)
{
  sub_1DD0DDFBC();
  sub_1DD0DDF2C();
}

uint64_t sub_1DCBB5E24()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

uint64_t sub_1DCBB5ECC(uint64_t a1, int a2)
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

uint64_t sub_1DCBB5EEC(uint64_t result, int a2, int a3)
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

uint64_t sub_1DCBB5F34(uint64_t a1, int a2)
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

uint64_t sub_1DCBB5F54(uint64_t result, int a2, int a3)
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

void *assignWithCopy for DialogPhase(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for DialogPhase(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DCBB6200()
{
  OUTLINED_FUNCTION_21();

  result = sub_1DD0DDF9C();
  *v0 = 0;
  return result;
}

uint64_t sub_1DCBB6274()
{
  OUTLINED_FUNCTION_21();

  v2 = sub_1DD0DDFAC();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1DCBB62F0(uint64_t a1)
{
  sub_1DD0DDFBC();
  v1 = sub_1DD0DDF8C();

  return v1;
}

uint64_t sub_1DCBB6328(uint64_t a1)
{
  v1 = sub_1DD0DDFBC();
  v2 = MEMORY[0x1E12A6810](v1);

  return v2;
}

Swift::String_optional __swiftcall AceObject.serializeToBase64()()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 dictionary];
  if (!v1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DCAFC000, v2, v12, "Failed to serialize command to dictionary", v13, 2u);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = v1;
  v23[0] = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v23];
  v4 = v23[0];
  if (!v3)
  {
    v14 = v4;
    v15 = sub_1DD0DAE0C();

    swift_willThrow();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Failed to serialize command to plist", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

LABEL_13:
    v8 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v5 = sub_1DD0DAF2C();
  v7 = v6;

  v8 = sub_1DD0DAF0C();
  v10 = v9;
  sub_1DCB21A14(v5, v7);

LABEL_14:
  v20 = v8;
  v21 = v10;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

double sub_1DCBB665C()
{
  v1 = OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for AceOutput(v1);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v3 = v2[7];
  v4 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_5(&v0[v3], v5, v6, v4);
  v7 = v2[9];
  v8 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(&v0[v7], v9, v10, v8);
  v11 = v2[8];
  v12 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v13 + 104))(&v0[v11], v12);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(v16, v14, &unk_1ECCA3280, &unk_1DD0E23D0);
  v0[v2[10]] = 0;
  *v0 = MEMORY[0x1E69E7CC0];
  return OUTLINED_FUNCTION_0_6();
}

double AceOutput.init(commands:flowActivity:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_4();
  v6 = type metadata accessor for AceOutput(v5);
  v7 = v6[7];
  v8 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_7_5(&v2[v7], v9, v10, v8);
  v11 = v6[9];
  v12 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(&v2[v11], v13, v14, v12);
  v15 = v6[8];
  v16 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v17 + 104))(&v2[v15], v16);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v18, &unk_1ECCA3280, &unk_1DD0E23D0);
  v2[v6[10]] = 0;
  *v2 = a1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t AceOutput.dialogEngineOutput.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x49uLL);
  memcpy(a1, (v1 + 8), 0x49uLL);
  return sub_1DCB41F3C(__dst, &v4);
}

uint64_t AceOutput.dialogActs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_9_5(v4);
  v5 = type metadata accessor for NLContextUpdate(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_1DCB0E9D8(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 208);

  sub_1DCB41F98(v0);
  if (!v6)
  {
    goto LABEL_4;
  }

  return v6;
}

uint64_t AceOutput.rrEntities.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_9_5(v4);
  v5 = type metadata accessor for NLContextUpdate(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_1DCB0E9D8(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 224);

  sub_1DCB41F98(v0);
  if (!v6)
  {
    goto LABEL_4;
  }

  return v6;
}

uint64_t AceOutput.nlContextUpdate.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for AceOutput(v2);
  return sub_1DCB4F190(v1 + *(v3 + 28), v0, &unk_1ECCA3270, &qword_1DD0E0F70);
}

uint64_t AceOutput.executionSource.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = *(type metadata accessor for AceOutput(v2) + 32);
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AceOutput.inAppResponse.getter()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for AceOutput(v2);
  return sub_1DCB4F190(v1 + *(v3 + 36), v0, &unk_1ECCAAEC0, &qword_1DD103A40);
}

void *AceOutput.init(commands:nlContextUpdate:dialogEngineOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AceOutput(0);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v9 = v8[9];
  v10 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(a4 + v9, v11, v12, v10);
  v13 = v8[8];
  v14 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v15 + 104))(a4 + v13, v14);
  *(a4 + 120) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  sub_1DCBB7234(v17, a4 + 88, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(a4 + v8[10]) = 0;
  *a4 = a1;
  sub_1DCBB6C68(a2, a4 + v8[7]);
  return memcpy((a4 + 8), a3, 0x49uLL);
}

uint64_t sub_1DCBB6C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AceOutput.init(commands:flowActivity:dialogActs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_4();
  v8 = type metadata accessor for NLContextUpdate(v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  NLContextUpdate.init()(v12 - v11);

  *(v13 + 208) = a3;
  v14 = type metadata accessor for AceOutput(0);
  sub_1DCB46478(v13, &v3[v14[7]]);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
  v18 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_5_7(v18);
  v19 = v14[8];
  v20 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v21 + 104))(&v3[v19], v20);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v22, &unk_1ECCA3280, &unk_1DD0E23D0);
  v3[v14[10]] = 0;
  *v3 = a1;
  OUTLINED_FUNCTION_0_6();
  return sub_1DCB41F98(v13);
}

uint64_t AceOutput.init(commands:flowActivity:dialogActs:rrEntities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  sub_1DCB4F190(a2, v34, &unk_1ECCA3280, &unk_1DD0E23D0);
  NLContextUpdate.init()(v18);

  *(v18 + 208) = a3;

  *(v18 + 224) = a4;
  sub_1DD0DD70C();
  sub_1DCB0E9D8(a2, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DD0DD72C();
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_1DCBB7234(v5, v18 + *(v13 + 128), &unk_1ECCA73E0, &unk_1DD0F8320);
  v23 = type metadata accessor for AceOutput(0);
  sub_1DCB46478(v18, &a5[v23[7]]);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v13);
  v27 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_5_7(v27);
  v28 = v23[8];
  v29 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v30 + 104))(&a5[v28], v29);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(v34, v31, &unk_1ECCA3280, &unk_1DD0E23D0);
  a5[v23[10]] = 0;
  *a5 = a1;
  OUTLINED_FUNCTION_0_6();
  return sub_1DCB41F98(v18);
}

uint64_t AceOutput.init(commands:flowActivity:dialogActs:rrEntities:pegasusConversationContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a7@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v11);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  NLContextUpdate.init()(v18 - v17);

  *(v19 + 208) = a3;

  *(v19 + 224) = a4;
  sub_1DD0DD70C();
  sub_1DD0DD72C();
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_1DCBB7234(v7, v19 + *(v14 + 128), &unk_1ECCA73E0, &unk_1DD0F8320);
  v24 = type metadata accessor for AceOutput(0);
  sub_1DCB46478(v19, &a7[v24[7]]);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v14);
  v28 = v24[9];
  v29 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(&a7[v28], v30, v31, v29);
  v32 = v24[8];
  v33 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v34 + 104))(&a7[v32], v33);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v35, &unk_1ECCA3280, &unk_1DD0E23D0);
  a7[v24[10]] = 0;
  *a7 = a1;
  OUTLINED_FUNCTION_0_6();
  return sub_1DCB41F98(v19);
}

uint64_t sub_1DCBB7234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3();
  (*(v6 + 40))(v4, v5);
  return v4;
}

double AceOutput.init(commands:flowActivity:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_4();
  v8 = type metadata accessor for AceOutput(v7);
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_5_7(v9);
  v10 = v8[8];
  v11 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v12 + 104))(&v3[v10], v11);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v13, &unk_1ECCA3280, &unk_1DD0E23D0);
  v3[v8[10]] = 0;
  *v3 = a1;
  sub_1DCBB6C68(a3, &v3[v8[7]]);
  return OUTLINED_FUNCTION_0_6();
}

uint64_t *assignWithCopy for AceOutput(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v76 = a2[9];
  v78 = *(a2 + 80);
  sub_1DCB42788(v5, v6, v7, v8, v9, v10, v11, v12, v76, v78);
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v19 = a1[7];
  v20 = a1[8];
  v21 = a1[9];
  v22 = *(a1 + 80);
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  v23 = a2;
  a1[7] = v11;
  a1[8] = v12;
  a1[9] = v76;
  *(a1 + 80) = v78;
  sub_1DCB42C24(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v24 = a2[14];
  if (a1[14])
  {
    v25 = a1 + 11;
    if (v24)
    {
      __swift_assign_boxed_opaque_existential_1(v25, a2 + 11);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else if (v24)
  {
    a1[14] = v24;
    a1[15] = a2[15];
    (**(v24 - 8))(a1 + 11, a2 + 11);
    goto LABEL_8;
  }

  v26 = *(a2 + 11);
  v27 = *(a2 + 13);
  a1[15] = a2[15];
  *(a1 + 13) = v27;
  *(a1 + 11) = v26;
LABEL_8:
  v28 = a3;
  v29 = a3[7];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v32 = type metadata accessor for NLContextUpdate(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v32);
  v34 = __swift_getEnumTagSinglePayload(v31, 1, v32);
  if (!EnumTagSinglePayload)
  {
    if (v34)
    {
      sub_1DCB41F98(v30);
      goto LABEL_14;
    }

    *v30 = *v31;
    *(v30 + 1) = *(v31 + 1);

    *(v30 + 2) = *(v31 + 2);

    *(v30 + 3) = *(v31 + 3);

    *(v30 + 4) = *(v31 + 4);
    *(v30 + 5) = *(v31 + 5);

    *(v30 + 6) = *(v31 + 6);

    *(v30 + 7) = *(v31 + 7);

    v39 = *(v31 + 8);
    v30[72] = v31[72];
    *(v30 + 8) = v39;
    *(v30 + 10) = *(v31 + 10);

    *(v30 + 11) = *(v31 + 11);
    *(v30 + 12) = *(v31 + 12);

    *(v30 + 13) = *(v31 + 13);

    *(v30 + 14) = *(v31 + 14);
    *(v30 + 15) = *(v31 + 15);

    v40 = *(v30 + 16);
    v41 = *(v31 + 16);
    *(v30 + 16) = v41;
    v42 = v41;

    v30[136] = v31[136];
    v43 = *(v30 + 18);
    v44 = *(v31 + 18);
    *(v30 + 18) = v44;
    v45 = v44;

    *(v30 + 19) = *(v31 + 19);

    *(v30 + 20) = *(v31 + 20);

    *(v30 + 21) = *(v31 + 21);

    v30[176] = v31[176];
    *(v30 + 23) = *(v31 + 23);
    *(v30 + 24) = *(v31 + 24);

    v30[200] = v31[200];
    *(v30 + 26) = *(v31 + 26);

    *(v30 + 27) = *(v31 + 27);

    *(v30 + 28) = *(v31 + 28);

    *(v30 + 29) = *(v31 + 29);

    *(v30 + 30) = *(v31 + 30);

    v46 = *(v31 + 32);
    if (*(v30 + 32))
    {
      if (v46)
      {
        *(v30 + 31) = *(v31 + 31);
        *(v30 + 32) = *(v31 + 32);

        *(v30 + 33) = *(v31 + 33);
      }

      else
      {
        sub_1DCBB8090((v30 + 248));
        v54 = *(v31 + 33);
        *(v30 + 248) = *(v31 + 248);
        *(v30 + 33) = v54;
      }
    }

    else if (v46)
    {
      *(v30 + 31) = *(v31 + 31);
      *(v30 + 32) = *(v31 + 32);
      *(v30 + 33) = *(v31 + 33);
    }

    else
    {
      v55 = *(v31 + 248);
      *(v30 + 33) = *(v31 + 33);
      *(v30 + 248) = v55;
    }

    *(v30 + 34) = *(v31 + 34);
    *(v30 + 35) = *(v31 + 35);

    v56 = v32[32];
    v57 = sub_1DD0DD72C();
    v58 = __swift_getEnumTagSinglePayload(&v30[v56], 1, v57);
    v59 = __swift_getEnumTagSinglePayload(&v31[v56], 1, v57);
    if (v58)
    {
      if (!v59)
      {
        (*(*(v57 - 8) + 16))(&v30[v56], &v31[v56], v57);
        __swift_storeEnumTagSinglePayload(&v30[v56], 0, 1, v57);
LABEL_33:
        v30[v32[33]] = v31[v32[33]];
        v30[v32[34]] = v31[v32[34]];
        v62 = v32[35];
        v63 = &v30[v62];
        v64 = &v31[v62];
        *v63 = *v64;
        *(v63 + 1) = *(v64 + 1);

        goto LABEL_34;
      }
    }

    else
    {
      v60 = *(v57 - 8);
      if (!v59)
      {
        (*(v60 + 24))(&v30[v56], &v31[v56], v57);
        goto LABEL_33;
      }

      (*(v60 + 8))(&v30[v56], v57);
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy(&v30[v56], &v31[v56], *(*(v61 - 8) + 64));
    goto LABEL_33;
  }

  if (v34)
  {
LABEL_14:
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v30, v31, *(*(v38 - 8) + 64));
    goto LABEL_34;
  }

  *v30 = *v31;
  *(v30 + 1) = *(v31 + 1);
  *(v30 + 2) = *(v31 + 2);
  *(v30 + 3) = *(v31 + 3);
  *(v30 + 4) = *(v31 + 4);
  *(v30 + 5) = *(v31 + 5);
  *(v30 + 6) = *(v31 + 6);
  *(v30 + 7) = *(v31 + 7);
  v35 = *(v31 + 8);
  v30[72] = v31[72];
  *(v30 + 8) = v35;
  *(v30 + 10) = *(v31 + 10);
  *(v30 + 11) = *(v31 + 11);
  *(v30 + 12) = *(v31 + 12);
  *(v30 + 13) = *(v31 + 13);
  *(v30 + 14) = *(v31 + 14);
  *(v30 + 15) = *(v31 + 15);
  v75 = *(v31 + 16);
  *(v30 + 16) = v75;
  v30[136] = v31[136];
  v74 = *(v31 + 18);
  *(v30 + 18) = v74;
  *(v30 + 19) = *(v31 + 19);
  *(v30 + 20) = *(v31 + 20);
  *(v30 + 21) = *(v31 + 21);
  v30[176] = v31[176];
  *(v30 + 23) = *(v31 + 23);
  *(v30 + 24) = *(v31 + 24);
  v30[200] = v31[200];
  *(v30 + 26) = *(v31 + 26);
  *(v30 + 27) = *(v31 + 27);
  *(v30 + 28) = *(v31 + 28);
  *(v30 + 29) = *(v31 + 29);
  *(v30 + 30) = *(v31 + 30);
  v77 = *(v31 + 32);

  v36 = v75;
  v37 = v74;

  if (v77)
  {
    *(v30 + 31) = *(v31 + 31);
    *(v30 + 32) = *(v31 + 32);
    *(v30 + 33) = *(v31 + 33);
  }

  else
  {
    v47 = *(v31 + 248);
    *(v30 + 33) = *(v31 + 33);
    *(v30 + 248) = v47;
  }

  *(v30 + 34) = *(v31 + 34);
  *(v30 + 35) = *(v31 + 35);
  v48 = v32[32];
  v49 = sub_1DD0DD72C();

  v23 = a2;
  v28 = a3;
  if (__swift_getEnumTagSinglePayload(&v31[v48], 1, v49))
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy(&v30[v48], &v31[v48], *(*(v50 - 8) + 64));
  }

  else
  {
    (*(*(v49 - 8) + 16))(&v30[v48], &v31[v48], v49);
    __swift_storeEnumTagSinglePayload(&v30[v48], 0, 1, v49);
  }

  v30[v32[33]] = v31[v32[33]];
  v30[v32[34]] = v31[v32[34]];
  v51 = v32[35];
  v52 = &v30[v51];
  v53 = &v31[v51];
  *v52 = *v53;
  *(v52 + 1) = *(v53 + 1);

  __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
LABEL_34:
  v65 = v28[8];
  v66 = sub_1DD0DD15C();
  (*(*(v66 - 8) + 24))(a1 + v65, v23 + v65, v66);
  v67 = v28[9];
  v68 = sub_1DD0DD10C();
  v69 = __swift_getEnumTagSinglePayload(a1 + v67, 1, v68);
  v70 = __swift_getEnumTagSinglePayload(v23 + v67, 1, v68);
  if (!v69)
  {
    v71 = *(v68 - 8);
    if (!v70)
    {
      (*(v71 + 24))(a1 + v67, v23 + v67, v68);
      goto LABEL_40;
    }

    (*(v71 + 8))(a1 + v67, v68);
    goto LABEL_39;
  }

  if (v70)
  {
LABEL_39:
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy(a1 + v67, v23 + v67, *(*(v72 - 8) + 64));
    goto LABEL_40;
  }

  (*(*(v68 - 8) + 16))(a1 + v67, v23 + v67, v68);
  __swift_storeEnumTagSinglePayload(a1 + v67, 0, 1, v68);
LABEL_40:
  *(a1 + v28[10]) = *(v23 + v28[10]);
  return a1;
}

void *__swift_assign_boxed_opaque_existential_1(void *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        sub_1DD0DCF8C();
      }

      v11 = *(v10 + 24);

      return v11();
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
          sub_1DD0DCF8C();
        }

        (*(v7 + 16))(result, a2, v5);
      }

      else
      {
        (*(v6 + 32))(v12, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
          sub_1DD0DCF8C();
        }

        (*(v8 + 16))(v3, a2, v5);
        return (*(v6 + 8))(v12, v4);
      }
    }
  }

  return result;
}

uint64_t initializeWithTake for AceOutput(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  memcpy((a1 + 8), (a2 + 8), 0x49uLL);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v6 = a3[7];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for NLContextUpdate(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v7, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 3) = *(v8 + 3);
    v11 = *(v8 + 3);
    *(v7 + 2) = *(v8 + 2);
    *(v7 + 3) = v11;
    *(v7 + 8) = *(v8 + 8);
    v7[72] = v8[72];
    *(v7 + 10) = *(v8 + 10);
    *(v7 + 88) = *(v8 + 88);
    *(v7 + 13) = *(v8 + 13);
    *(v7 + 7) = *(v8 + 7);
    *(v7 + 16) = *(v8 + 16);
    v7[136] = v8[136];
    v12 = *(v8 + 10);
    *(v7 + 9) = *(v8 + 9);
    *(v7 + 10) = v12;
    v7[176] = v8[176];
    *(v7 + 184) = *(v8 + 184);
    v7[200] = v8[200];
    v13 = *(v8 + 14);
    *(v7 + 13) = *(v8 + 13);
    *(v7 + 14) = v13;
    *(v7 + 30) = *(v8 + 30);
    *(v7 + 33) = *(v8 + 33);
    *(v7 + 248) = *(v8 + 248);
    *(v7 + 17) = *(v8 + 17);
    v14 = v9[32];
    v15 = sub_1DD0DD72C();
    if (__swift_getEnumTagSinglePayload(&v8[v14], 1, v15))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&v7[v14], &v8[v14], *(*(v16 - 8) + 64));
    }

    else
    {
      (*(*(v15 - 8) + 32))(&v7[v14], &v8[v14], v15);
      __swift_storeEnumTagSinglePayload(&v7[v14], 0, 1, v15);
    }

    v7[v9[33]] = v8[v9[33]];
    v7[v9[34]] = v8[v9[34]];
    *&v7[v9[35]] = *&v8[v9[35]];
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  }

  v17 = a3[8];
  v18 = sub_1DD0DD15C();
  (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
  v19 = a3[9];
  v20 = sub_1DD0DD10C();
  if (__swift_getEnumTagSinglePayload(a2 + v19, 1, v20))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy((a1 + v19), (a2 + v19), *(*(v21 - 8) + 64));
  }

  else
  {
    (*(*(v20 - 8) + 32))(a1 + v19, a2 + v19, v20);
    __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  }

  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *assignWithTake for AceOutput(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  v6 = a2[9];
  v7 = *(a2 + 80);
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  v16 = a1[9];
  v17 = *(a1 + 80);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 7) = *(a2 + 7);
  a1[9] = v6;
  *(a1 + 80) = v7;
  sub_1DCB42C24(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  if (a1[14])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 11);
  }

  *(a1 + 11) = *(a2 + 11);
  *(a1 + 13) = *(a2 + 13);
  a1[15] = a2[15];
  v18 = a3[7];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = type metadata accessor for NLContextUpdate(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21);
  v23 = __swift_getEnumTagSinglePayload(v20, 1, v21);
  if (!EnumTagSinglePayload)
  {
    if (v23)
    {
      sub_1DCB41F98(v19);
      goto LABEL_9;
    }

    *v19 = *v20;
    *(v19 + 1) = *(v20 + 1);

    *(v19 + 2) = *(v20 + 2);

    *(v19 + 3) = *(v20 + 3);

    v31 = *(v20 + 5);
    *(v19 + 4) = *(v20 + 4);
    *(v19 + 5) = v31;

    *(v19 + 6) = *(v20 + 6);

    *(v19 + 7) = *(v20 + 7);

    *(v19 + 8) = *(v20 + 8);
    v19[72] = v20[72];
    *(v19 + 10) = *(v20 + 10);

    v32 = *(v20 + 12);
    *(v19 + 11) = *(v20 + 11);
    *(v19 + 12) = v32;

    *(v19 + 13) = *(v20 + 13);

    v33 = *(v20 + 15);
    *(v19 + 14) = *(v20 + 14);
    *(v19 + 15) = v33;

    v34 = *(v19 + 16);
    *(v19 + 16) = *(v20 + 16);

    v19[136] = v20[136];
    v35 = *(v19 + 18);
    *(v19 + 18) = *(v20 + 18);

    *(v19 + 19) = *(v20 + 19);

    *(v19 + 20) = *(v20 + 20);

    *(v19 + 21) = *(v20 + 21);

    v19[176] = v20[176];
    v36 = *(v20 + 24);
    *(v19 + 23) = *(v20 + 23);
    *(v19 + 24) = v36;

    v19[200] = v20[200];
    *(v19 + 26) = *(v20 + 26);

    *(v19 + 27) = *(v20 + 27);

    *(v19 + 28) = *(v20 + 28);

    *(v19 + 29) = *(v20 + 29);

    *(v19 + 30) = *(v20 + 30);

    if (*(v19 + 32))
    {
      v37 = *(v20 + 32);
      if (v37)
      {
        *(v19 + 31) = *(v20 + 31);
        *(v19 + 32) = v37;

        *(v19 + 33) = *(v20 + 33);

        goto LABEL_17;
      }

      sub_1DCBB8090((v19 + 248));
    }

    *(v19 + 248) = *(v20 + 248);
    *(v19 + 33) = *(v20 + 33);
LABEL_17:
    v38 = *(v20 + 35);
    *(v19 + 34) = *(v20 + 34);
    *(v19 + 35) = v38;

    v39 = v21[32];
    v40 = sub_1DD0DD72C();
    v41 = __swift_getEnumTagSinglePayload(&v19[v39], 1, v40);
    v42 = __swift_getEnumTagSinglePayload(&v20[v39], 1, v40);
    if (v41)
    {
      if (!v42)
      {
        (*(*(v40 - 8) + 32))(&v19[v39], &v20[v39], v40);
        __swift_storeEnumTagSinglePayload(&v19[v39], 0, 1, v40);
LABEL_23:
        v19[v21[33]] = v20[v21[33]];
        v19[v21[34]] = v20[v21[34]];
        v45 = v21[35];
        v46 = &v19[v45];
        v47 = &v20[v45];
        v49 = *v47;
        v48 = *(v47 + 1);
        *v46 = v49;
        *(v46 + 1) = v48;

        goto LABEL_24;
      }
    }

    else
    {
      v43 = *(v40 - 8);
      if (!v42)
      {
        (*(v43 + 40))(&v19[v39], &v20[v39], v40);
        goto LABEL_23;
      }

      (*(v43 + 8))(&v19[v39], v40);
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy(&v19[v39], &v20[v39], *(*(v44 - 8) + 64));
    goto LABEL_23;
  }

  if (v23)
  {
LABEL_9:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v19, v20, *(*(v30 - 8) + 64));
    goto LABEL_24;
  }

  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *(v19 + 3) = *(v20 + 3);
  v24 = *(v20 + 3);
  *(v19 + 2) = *(v20 + 2);
  *(v19 + 3) = v24;
  *(v19 + 8) = *(v20 + 8);
  v19[72] = v20[72];
  *(v19 + 10) = *(v20 + 10);
  *(v19 + 88) = *(v20 + 88);
  *(v19 + 13) = *(v20 + 13);
  *(v19 + 7) = *(v20 + 7);
  *(v19 + 16) = *(v20 + 16);
  v19[136] = v20[136];
  v25 = *(v20 + 10);
  *(v19 + 9) = *(v20 + 9);
  *(v19 + 10) = v25;
  v19[176] = v20[176];
  *(v19 + 184) = *(v20 + 184);
  v19[200] = v20[200];
  v26 = *(v20 + 14);
  *(v19 + 13) = *(v20 + 13);
  *(v19 + 14) = v26;
  *(v19 + 30) = *(v20 + 30);
  *(v19 + 33) = *(v20 + 33);
  *(v19 + 248) = *(v20 + 248);
  *(v19 + 17) = *(v20 + 17);
  v27 = v21[32];
  v28 = sub_1DD0DD72C();
  if (__swift_getEnumTagSinglePayload(&v20[v27], 1, v28))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy(&v19[v27], &v20[v27], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(*(v28 - 8) + 32))(&v19[v27], &v20[v27], v28);
    __swift_storeEnumTagSinglePayload(&v19[v27], 0, 1, v28);
  }

  v19[v21[33]] = v20[v21[33]];
  v19[v21[34]] = v20[v21[34]];
  *&v19[v21[35]] = *&v20[v21[35]];
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
LABEL_24:
  v50 = a3[8];
  v51 = sub_1DD0DD15C();
  (*(*(v51 - 8) + 40))(a1 + v50, a2 + v50, v51);
  v52 = a3[9];
  v53 = sub_1DD0DD10C();
  v54 = __swift_getEnumTagSinglePayload(a1 + v52, 1, v53);
  v55 = __swift_getEnumTagSinglePayload(a2 + v52, 1, v53);
  if (!v54)
  {
    v56 = *(v53 - 8);
    if (!v55)
    {
      (*(v56 + 40))(a1 + v52, a2 + v52, v53);
      goto LABEL_30;
    }

    (*(v56 + 8))(a1 + v52, v53);
    goto LABEL_29;
  }

  if (v55)
  {
LABEL_29:
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy(a1 + v52, a2 + v52, *(*(v57 - 8) + 64));
    goto LABEL_30;
  }

  (*(*(v53 - 8) + 32))(a1 + v52, a2 + v52, v53);
  __swift_storeEnumTagSinglePayload(a1 + v52, 0, 1, v53);
LABEL_30:
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

void sub_1DCBB8BC4(uint64_t a1)
{
  sub_1DCBB8D2C(319, &qword_1EDE49560, type metadata accessor for NLContextUpdate);
  if (v1 <= 0x3F)
  {
    sub_1DD0DD15C();
    if (v2 <= 0x3F)
    {
      sub_1DCBB8D2C(319, &qword_1EDE46340, MEMORY[0x1E69D0248]);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1DCBB8D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1DCBB8D80()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_2_17();
  sub_1DCB42D14(v1, v2);
  v3 = OUTLINED_FUNCTION_20();
  v4(v3);
  OUTLINED_FUNCTION_0_7();
  sub_1DCB42D14(v0, v5);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCBB8E5C()
{
  v1 = OUTLINED_FUNCTION_18_5();
  v2(v1);
  OUTLINED_FUNCTION_0_7();
  sub_1DCB42D14(v0, v3);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCBB8F24()
{
  v1 = *(v0 + 728);
  *(v0 + 536) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_27_2();

    v4 = OUTLINED_FUNCTION_20();
    v5(v4);
    OUTLINED_FUNCTION_0_7();
    sub_1DCB42D14(v0 + 536, v6);
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v7 = *(v0 + 728);
    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = v7;
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 728);
    v14 = *(v0 + 672);
    v15 = *(v0 + 632);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    if (v12)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "Encountered error %@ while publishing DialogEngineOutput", v18, 0xCu);
      sub_1DCB0E9D8(v19, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v19, -1, -1);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    OUTLINED_FUNCTION_0_7();
    sub_1DCB42D14(v14, v22);
  }

  OUTLINED_FUNCTION_9_6();

  OUTLINED_FUNCTION_29();

  return v23();
}

void sub_1DCBB9238(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F71C(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DCBB92F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(sub_1DCB09A70(*v4), v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1DCB420B0();
  v8 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v8;
      return;
    }

    __break(1u);
  }

  if ((*((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = __OFADD__(v9, v6);
  v11 = v9 + v6;
  if (!v10)
  {
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1DCBB9420(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F734(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}