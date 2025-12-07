uint64_t type metadata accessor for ForYouItemContext(uint64_t a1)
{
  result = qword_2810E94A8;
  if (!qword_2810E94A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C2F7774(uint64_t a1)
{
  sub_20C2F77E8(319);
  if (v1 <= 0x3F)
  {
    sub_20C2F7868();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C2F77E8(uint64_t a1)
{
  if (!qword_2810E8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EBF8, &qword_20C3757D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2810E8C20);
    }
  }
}

void sub_20C2F7868()
{
  if (!qword_2810E8F08)
  {
    v0 = type metadata accessor for CanvasPlaceholder(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2810E8F08);
    }
  }
}

uint64_t type metadata accessor for CanvasPlaceholder(uint64_t a1)
{
  result = qword_2810E8EE8;
  if (!qword_2810E8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C2F78FC(uint64_t a1)
{
  sub_20C2F7A00(319, &qword_2810E8C18, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20C2F7A00(319, &qword_2810E8D30, &type metadata for PlaceholderMarkerType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlanMetadata(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C2F7A00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for PlanMetadata(uint64_t a1)
{
  result = qword_2810E8FA8;
  if (!qword_2810E8FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C2F7A9C(uint64_t a1)
{
  sub_20C2F7AF4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20C2F7AF4(uint64_t a1)
{
  if (!qword_2810E9520)
  {
    sub_20C36C124();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810E9520);
    }
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou9LoadStateO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou0bC16SummaryLoadStateOyxG(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_20C2F7C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20C2F7C5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlanMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C2F7D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlanMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C2F7DB4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_20C2F7F04()
{

  return swift_deallocObject();
}

uint64_t sub_20C2F7F68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCB0, &qword_20C36F208);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DC88, &qword_20C36F1E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCA8, &qword_20C36F200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCA0, &qword_20C36F1F8);
  sub_20C3070D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_20C3077A8(&qword_27C79DD40, &qword_27C79DC88, &qword_20C36F1E0, MEMORY[0x277CDF728]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C2F80A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C36C634();
  *a1 = result;
  return result;
}

uint64_t sub_20C2F8104(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C2F8170(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C2F8270@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27C79E0D8;
  return result;
}

uint64_t sub_20C2F82BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27C79E0D8 = v1;
  return result;
}

uint64_t sub_20C2F8470()
{
  v1 = *(type metadata accessor for ForYouItemContext(0) - 8);
  v2 = (*(v1 + 80) + 296) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(type metadata accessor for CanvasPlaceholder(0) + 44);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
    if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6))
    {
      v7 = sub_20C36C124();
      (*(*(v7 - 8) + 8))(v3 + v5, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_20C2F8660()
{
  v1 = sub_20C36C164();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 296) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C2F87E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C2F8860(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C2F892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C36C144();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C2F89E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C36C144();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C2F8AA4()
{

  return swift_deallocObject();
}

uint64_t sub_20C2F8ADC(uint64_t *a1)
{
  sub_20C36C1C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EA98, &qword_20C375278);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA0, &qword_20C375280);
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAA8, &qword_20C375288);
  sub_20C36C734();
  sub_20C36CB24();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  sub_20C36C544();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C3077A8(&qword_2810E8C90, &qword_27C79EAA0, &qword_20C375280, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_20C341484(WitnessTable, v2, v3);
  swift_getOpaqueTypeMetadata2();
  sub_20C36C734();
  swift_getOpaqueTypeConformance2();
  sub_20C3414D8();
  swift_getWitnessTable();
  sub_20C36C504();
  sub_20C36C544();
  sub_20C36C734();
  swift_getTupleTypeMetadata2();
  sub_20C36CC74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79EAB0, &qword_20C375290);
  swift_getWitnessTable();
  sub_20C34155C();
  sub_20C36C784();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36C734();
  sub_20C36CB24();
  sub_20C36C544();
  sub_20C344F84(&qword_2810E9510, MEMORY[0x277D09DD0], MEMORY[0x277D09DC8]);
  sub_20C34323C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C2F9050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA98, &qword_20C375278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C2F90B8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for ForYouState(0);
  *a2 = *(a1 + *(result + 60)) < *(a1 + *(result + 52));
  return result;
}

uint64_t sub_20C2F9108()
{
  v1 = *(v0 + 24);
  v13[0] = *(v0 + 16);
  v2 = v13[0];
  v13[1] = v1;
  v3 = *(v0 + 48);
  v14 = *(v0 + 32);
  v12 = v14;
  v15 = v3;
  v4 = (type metadata accessor for ForYouView(0, v13) - 8);
  v5 = (*(*v4 + 80) + 64) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_20C36C4E4();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v0 + v5);
  sub_20C3070BC(*v10, v10[1]);
  (*(*(v2 - 8) + 8))(v10 + v4[19], v2);
  (*(*(v1 - 8) + 8))(v10 + v4[20], v1);
  (*(*(v12 - 8) + 8))(v10 + v4[21]);

  (*(v8 + 8))(v0 + v9, v7);
  return swift_deallocObject();
}

uint64_t sub_20C2F9368()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C2F9450()
{

  return swift_deallocObject();
}

uint64_t sub_20C2F9488()
{

  return swift_deallocObject();
}

uint64_t sub_20C2F9534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_20C35B9FC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C2F95F8()
{

  return swift_deallocObject();
}

uint64_t sub_20C2F9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79F5D0, &unk_20C377540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  swift_getFunctionTypeMetadata1();
  v11 = sub_20C36C194();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 72);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 76) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20C2F976C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79F5D0, &unk_20C377540);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    result = sub_20C36C194();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 76) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 72);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C2F9898(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E0, &qword_20C377468);
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext(255);
  sub_20C36C354();
  sub_20C36C374();
  sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  sub_20C36C284();
  swift_getTupleTypeMetadata2();
  sub_20C36CE94();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_20C36C544();
  swift_getWitnessTable();
  sub_20C36CBE4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36CBC4();
  swift_getWitnessTable();
  sub_20C36C3F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_20C341484(OpaqueTypeConformance2, v2, v3);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E8, &qword_20C377470);
  sub_20C36C544();
  sub_20C36C7E4();
  swift_getOpaqueTypeConformance2();
  sub_20C3077A8(&qword_27C79F4F0, &qword_27C79F4E8, &qword_20C377470, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_20C36C5B4();
  sub_20C36C734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4F8, &qword_20C377478);
  sub_20C36C734();
  sub_20C36CB24();
  sub_20C36C544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F500, &qword_20C377480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F508, &qword_20C377488);
  sub_20C36A700();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36AA40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C2FA154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F598, &qword_20C3774C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C2FA1C4()
{
  v1 = *(v0 + 56);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 40);
  v12 = v1;
  v2 = type metadata accessor for ForYouSummaryView(0, &v9);
  v3 = (*(*(v2 - 8) + 80) + 72) & ~*(*(v2 - 8) + 80);

  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C36C534();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_20C3070BC(*(v4 + *(v2 + 68)), *(v4 + *(v2 + 68) + 8));
  v6 = *(v2 + 72);
  swift_getFunctionTypeMetadata1();
  v7 = sub_20C36C194();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_20C2FA398()
{
  v1 = *(v0 + 56);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 40);
  v17 = v1;
  v2 = type metadata accessor for ForYouSummaryView(0, &v14);
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = sub_20C36C564();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20C36C534();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  sub_20C3070BC(*(v8 + *(v2 + 68)), *(v8 + *(v2 + 68) + 8));
  v11 = *(v2 + 72);
  swift_getFunctionTypeMetadata1();
  v12 = sub_20C36C194();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);

  (*(v6 + 8))(v0 + v10, v5);
  return swift_deallocObject();
}

uint64_t sub_20C2FA608()
{
  v2 = *(v0 + 56);
  v27 = *(v0 + 16);
  v1 = v27;
  v24 = *(v0 + 40);
  v28 = *(v0 + 24);
  v29 = v24;
  v30 = v2;
  v3 = type metadata accessor for ForYouSummaryView(0, &v27);
  v23 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v25 = *(*(v3 - 8) + 64);
  v26 = sub_20C36C394();
  v22 = sub_20C36C344();
  v21 = type metadata accessor for ForYouItemContext(255);
  v20 = sub_20C36C354();
  v19 = sub_20C36C374();
  v4 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  v5 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  v6 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v7 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v8 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v9 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  v10 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  v27 = v26;
  *&v28 = v1;
  *(&v28 + 1) = v22;
  *&v29 = v21;
  *(&v29 + 1) = v20;
  v30 = v19;
  v31 = v4;
  v32 = v24;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v38 = v10;
  v11 = sub_20C36C284();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v0 + v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_20C36C534();
    (*(*(v15 - 8) + 8))(v0 + v23, v15);
  }

  else
  {
  }

  sub_20C3070BC(*(v14 + *(v3 + 68)), *(v14 + *(v3 + 68) + 8));
  v16 = *(v3 + 72);
  swift_getFunctionTypeMetadata1();
  v17 = sub_20C36C194();
  (*(*(v17 - 8) + 8))(v14 + v16, v17);

  (*(v12 + 8))(v0 + ((v23 + v25 + v13) & ~v13), v11);
  return swift_deallocObject();
}

uint64_t sub_20C2FAA50()
{
  v1 = *(v0 + 56);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 40);
  v12 = v1;
  v2 = type metadata accessor for ForYouSummaryView(0, &v9);
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C36C534();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_20C3070BC(*(v4 + *(v2 + 68)), *(v4 + *(v2 + 68) + 8));
  v6 = *(v2 + 72);
  swift_getFunctionTypeMetadata1();
  v7 = sub_20C36C194();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_20C2FAC28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C36C614();
  *a1 = result;
  return result;
}

uint64_t sub_20C2FAC7C()
{
  v2 = *(v0 + 56);
  v21 = *(v0 + 16);
  v1 = v21;
  v22 = *(v0 + 24);
  v23 = *(v0 + 40);
  v20 = v23;
  v24 = v2;
  v3 = type metadata accessor for ForYouSummaryView(0, &v21);
  v4 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v5 = v4 + *(*(v3 - 8) + 64);
  v7 = *(type metadata accessor for ForYouSummaryAction(0, v1, v20, v6) - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C36C534();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  sub_20C3070BC(*(v9 + *(v3 + 68)), *(v9 + *(v3 + 68) + 8));
  v11 = *(v3 + 72);
  swift_getFunctionTypeMetadata1();
  v12 = sub_20C36C194();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);

  v13 = v0 + v8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    type metadata accessor for ForYouItemContext(0);
    v15 = swift_getEnumCaseMultiPayload();

    if (v15 == 1)
    {

      v16 = *(type metadata accessor for CanvasPlaceholder(0) + 44);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
      if (!(*(*(v17 - 8) + 48))(v13 + v16, 1, v17))
      {
        v18 = sub_20C36C124();
        (*(*(v18 - 8) + 8))(v13 + v16, v18);
      }
    }
  }

  else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C2FAFD4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x20F2F7190]();
  *a1 = result;
  return result;
}

uint64_t sub_20C2FB02C@<X0>(uint64_t a1@<X8>)
{
  result = sub_20C36C694();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t CanvasPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CanvasPlaceholder.referenceIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CanvasPlaceholder.editorialCardIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CanvasPlaceholder.reason.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CanvasPlaceholder.init(identifier:referenceIdentifier:editorialCardIdentifier:markerType:referenceType:displayStyle:reason:planMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 50) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  v13 = a9 + *(type metadata accessor for CanvasPlaceholder(0) + 44);

  return sub_20C2FB2D8(a13, v13);
}

uint64_t sub_20C2FB2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C2FB33C()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

uint64_t sub_20C2FB384(uint64_t a1)
{
  v2 = *v1;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v2);
  return sub_20C36D354();
}

unint64_t sub_20C2FB3C8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6F73616572;
  if (v1 != 6)
  {
    v3 = 0x6174654D6E616C70;
  }

  v4 = 0x636E657265666572;
  if (v1 != 4)
  {
    v4 = 0x5379616C70736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x795472656B72616DLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C2FB4EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C2FC798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C2FB52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FB94C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FB568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FB94C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D778, &qword_20C36D950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FB94C(v9, v10, v11);
  sub_20C36D374();
  v22[15] = 0;
  sub_20C36D1F4();
  if (!v2)
  {
    v22[14] = 1;
    sub_20C36D1F4();
    v22[13] = 2;
    v12 = sub_20C36D1C4();
    v22[12] = v3[48];
    v22[11] = 3;
    sub_20C2FB9A0(v12, v13, v14);
    v15 = sub_20C36D1E4();
    v22[10] = v3[49];
    v22[9] = 4;
    sub_20C2FB9F4(v15, v16, v17);
    v18 = sub_20C36D234();
    v22[8] = v3[50];
    v22[7] = 5;
    sub_20C2FBA48(v18, v19, v20);
    sub_20C36D234();
    v22[6] = 6;
    sub_20C36D1C4();
    type metadata accessor for CanvasPlaceholder(0);
    v22[5] = 7;
    type metadata accessor for PlanMetadata(0);
    sub_20C2FCD00(&qword_2810E8FD8, type metadata accessor for PlanMetadata, &protocol conformance descriptor for PlanMetadata);
    sub_20C36D234();
  }

  return (*(v6 + 8))(v8, v5);
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

unint64_t sub_20C2FB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8F20;
  if (!qword_2810E8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F20);
  }

  return result;
}

unint64_t sub_20C2FB9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D40;
  if (!qword_2810E8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D40);
  }

  return result;
}

unint64_t sub_20C2FB9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CE8;
  if (!qword_2810E8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CE8);
  }

  return result;
}

unint64_t sub_20C2FBA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9030;
  if (!qword_2810E9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9030);
  }

  return result;
}

uint64_t CanvasPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D780, &qword_20C36D958);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v40 - v7;
  v9 = type metadata accessor for CanvasPlaceholder(0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v47 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20C2FB94C(v13, v14, v15);
  v16 = v8;
  v17 = v46;
  sub_20C36D364();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v42 = v9;
  v46 = v5;
  v19 = v44;
  v18 = v45;
  v58 = 0;
  *v11 = sub_20C36D144();
  *(v11 + 1) = v21;
  v40[1] = v21;
  v57 = 1;
  *(v11 + 2) = sub_20C36D144();
  *(v11 + 3) = v22;
  v56 = 2;
  v23 = sub_20C36D114();
  v41 = 0;
  *(v11 + 4) = v23;
  *(v11 + 5) = v24;
  v54 = 3;
  sub_20C2FC008(v23, v24, v25);
  v26 = v41;
  v27 = sub_20C36D134();
  v41 = v26;
  if (v26)
  {
    (*(v19 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v11[48] = v55;
  v52 = 4;
  sub_20C2FC05C(v27, v28, v29);
  v30 = v41;
  v31 = sub_20C36D184();
  v41 = v30;
  if (v30)
  {
    goto LABEL_12;
  }

  v11[49] = v53;
  v50 = 5;
  sub_20C2FC0B0(v31, v32, v33);
  v34 = v41;
  sub_20C36D184();
  if (v34)
  {
    v41 = v34;
LABEL_12:
    (*(v19 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v37 = 0;
    goto LABEL_13;
  }

  v11[50] = v51;
  v49 = 6;
  v35 = sub_20C36D114();
  v41 = 0;
  *(v11 + 7) = v35;
  *(v11 + 8) = v36;
  v48 = 7;
  sub_20C2FCD00(&qword_27C79D7A0, type metadata accessor for PlanMetadata, &protocol conformance descriptor for PlanMetadata);
  v38 = v46;
  v39 = v41;
  sub_20C36D184();
  v41 = v39;
  if (!v39)
  {
    (*(v19 + 8))(v16, v18);
    sub_20C2FB2D8(v38, &v11[*(v42 + 44)]);
    sub_20C2FC104(v11, v43, type metadata accessor for CanvasPlaceholder);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_20C2FC16C(v11);
  }

  (*(v19 + 8))(v16, v18);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v37 = 1;
LABEL_13:

  if (v37)
  {
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

unint64_t sub_20C2FC008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D788;
  if (!qword_27C79D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D788);
  }

  return result;
}

unint64_t sub_20C2FC05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D790;
  if (!qword_27C79D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D790);
  }

  return result;
}

unint64_t sub_20C2FC0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D798;
  if (!qword_27C79D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D798);
  }

  return result;
}

uint64_t sub_20C2FC104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C2FC16C(uint64_t a1)
{
  v2 = type metadata accessor for CanvasPlaceholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CanvasPlaceholder.hash(into:)(uint64_t a1)
{
  v3 = sub_20C36C124();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C36CDC4();
  sub_20C36CDC4();
  if (*(v1 + 40))
  {
    sub_20C36D334();
    sub_20C36CDC4();
  }

  else
  {
    sub_20C36D334();
  }

  if (*(v1 + 48) == 2)
  {
    sub_20C36D334();
  }

  else
  {
    sub_20C36D334();
    sub_20C36CDC4();
  }

  sub_20C2FC630(a1, *(v1 + 49));
  DisplayStyle.rawValue.getter(*(v1 + 50));
  sub_20C36CDC4();

  if (*(v1 + 64))
  {
    sub_20C36D334();
    sub_20C36CDC4();
  }

  else
  {
    sub_20C36D334();
  }

  v10 = type metadata accessor for CanvasPlaceholder(0);
  sub_20C2FC104(v1 + *(v10 + 44), v9, type metadata accessor for PlanMetadata);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    return MEMORY[0x20F2F7E60](0);
  }

  (*(v4 + 32))(v6, v9, v3);
  MEMORY[0x20F2F7E60](1);
  sub_20C2FCD00(&qword_27C79D7B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20C36CD34();
  sub_20C36D334();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CanvasPlaceholder.hashValue.getter()
{
  sub_20C36D314();
  CanvasPlaceholder.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C2FC5AC()
{
  sub_20C36D314();
  CanvasPlaceholder.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C2FC5F0(uint64_t a1)
{
  sub_20C36D314();
  CanvasPlaceholder.hash(into:)(v2);
  return sub_20C36D354();
}

uint64_t sub_20C2FC630(uint64_t a1, unsigned __int8 a2)
{
  sub_20C36CDC4();
}

uint64_t sub_20C2FC798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C377A10 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377A30 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795472656B72616DLL && a2 == 0xEA00000000006570 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174654D6E616C70 && a2 == 0xEC00000061746164)
  {

    return 7;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s13FitnessForYou17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == 2)
    {
      return 0;
    }

    if (v8)
    {
      v10 = 0xD000000000000018;
    }

    else
    {
      v10 = 0x737543646C697562;
    }

    if (v8)
    {
      v11 = 0x800000020C377990;
    }

    else
    {
      v11 = 0xEF6E616C506D6F74;
    }

    if (v9)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v12 = 0x737543646C697562;
    }

    if (v9)
    {
      v13 = 0x800000020C377990;
    }

    else
    {
      v13 = 0xEF6E616C506D6F74;
    }

    if (v10 == v12 && v11 == v13)
    {
    }

    else
    {
      v14 = sub_20C36D264();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_20C331E0C(*(a1 + 49), *(a2 + 49)) & 1) == 0)
  {
    return 0;
  }

  v15 = *(a2 + 50);
  v16 = DisplayStyle.rawValue.getter(*(a1 + 50));
  v18 = v17;
  if (v16 == DisplayStyle.rawValue.getter(v15) && v18 == v19)
  {
  }

  else
  {
    v20 = sub_20C36D264();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = a1[8];
  v22 = *(a2 + 64);
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (!v22 || (a1[7] != *(a2 + 56) || v21 != v22) && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v23 = *(type metadata accessor for CanvasPlaceholder(0) + 44);

  return _s13FitnessForYou12PlanMetadataO2eeoiySbAC_ACtFZ_0(a1 + v23, a2 + v23);
}

uint64_t sub_20C2FCD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C2FCD80(uint64_t a1, int a2)
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

uint64_t sub_20C2FCDA0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CanvasPlaceholder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasPlaceholder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FCF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D7C0;
  if (!qword_27C79D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7C0);
  }

  return result;
}

unint64_t sub_20C2FCFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8F10;
  if (!qword_2810E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F10);
  }

  return result;
}

unint64_t sub_20C2FD004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8F18;
  if (!qword_2810E8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F18);
  }

  return result;
}

__n128 ForYouSummaryLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ForYouSummaryLayout.init(chinHeight:contentMargins:pageControlBottomPadding:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  *(a2 + 40) = a4;
  return result;
}

unint64_t sub_20C2FD090()
{
  v1 = 0x4D746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676965486E696863;
  }
}

uint64_t sub_20C2FD100@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C2FD7A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C2FD134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FD394(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FD170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FD394(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouSummaryLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7C8, &qword_20C36DBC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v21 = *(v1 + 3);
  v22 = v9;
  v10 = v1[5];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FD394(v11, v12, v13);
  v14 = sub_20C36D374();
  *&v23 = v8;
  v25 = 0;
  sub_20C2FD3E8(v14, v15, v16);
  v17 = sub_20C36D234();
  if (!v2)
  {
    v24 = v21;
    v23 = v22;
    v25 = 1;
    sub_20C2FD43C(v17, v18, v19);
    sub_20C36D234();
    *&v23 = v10;
    v25 = 2;
    sub_20C36D234();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20C2FD394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D7D0;
  if (!qword_27C79D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7D0);
  }

  return result;
}

unint64_t sub_20C2FD3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D7D8;
  if (!qword_27C79D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7D8);
  }

  return result;
}

unint64_t sub_20C2FD43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D7E0;
  if (!qword_27C79D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7E0);
  }

  return result;
}

uint64_t ForYouSummaryLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7E8, &qword_20C36DBC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FD394(v9, v10, v11);
  v12 = sub_20C36D364();
  if (!v2)
  {
    v26 = 0;
    sub_20C2FD6C4(v12, v13, v14);
    v15 = sub_20C36D184();
    v16 = v24;
    v26 = 1;
    sub_20C2FD718(v15, v17, v18);
    sub_20C36D184();
    v22 = v25;
    v23 = v24;
    v26 = 2;
    sub_20C36D184();
    (*(v6 + 8))(v8, v5);
    v20 = v24;
    *a2 = v16;
    v21 = v23;
    *(a2 + 24) = v22;
    *(a2 + 8) = v21;
    *(a2 + 40) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_20C2FD6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D7F0;
  if (!qword_27C79D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7F0);
  }

  return result;
}

unint64_t sub_20C2FD718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D7F8;
  if (!qword_27C79D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7F8);
  }

  return result;
}

uint64_t sub_20C2FD7A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676965486E696863 && a2 == 0xEA00000000007468;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377A50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

BOOL _s13FitnessForYou0bC13SummaryLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20C2FD938(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C2FD958(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ForYouSummaryLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouSummaryLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FDAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D800;
  if (!qword_27C79D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D800);
  }

  return result;
}

unint64_t sub_20C2FDB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D808;
  if (!qword_27C79D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D808);
  }

  return result;
}

unint64_t sub_20C2FDBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D810;
  if (!qword_27C79D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D810);
  }

  return result;
}

uint64_t sub_20C2FDBF8()
{
  v0 = sub_20C36C3D4();
  __swift_allocate_value_buffer(v0, qword_2810ED6B8);
  __swift_project_value_buffer(v0, qword_2810ED6B8);
  return sub_20C36C3C4();
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

uint64_t sub_20C2FDD28()
{
  v1 = 0x656E6F6870;
  v2 = 0x74656C626174;
  if (*v0 != 2)
  {
    v2 = 30324;
  }

  if (*v0)
  {
    v1 = 0x6863746177;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C2FDD8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C2FE6D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C2FDDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE460(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FDDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE460(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C2FDE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE5B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FDE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE5B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C2FDEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE508(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FDEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE508(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C2FDF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE4B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FDF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE4B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C2FDFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE55C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C2FDFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C2FE55C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DeviceType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D818, &qword_20C36DDA0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D820, &qword_20C36DDA8);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D828, &qword_20C36DDB0);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D830, &qword_20C36DDB8);
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D838, &qword_20C36DDC0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C2FE460(v17, v18, v19);
  v20 = sub_20C36D374();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_20C2FE508(v20, v21, v22);
      v9 = v29;
      sub_20C36D1B4();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_20C2FE4B4(v20, v21, v22);
      v9 = v32;
      sub_20C36D1B4();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_20C2FE55C(v20, v21, v22);
    sub_20C36D1B4();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v9, v23);
    return (*(v14 + 8))(v16, v13);
  }

  v36 = 0;
  sub_20C2FE5B0(v20, v21, v22);
  sub_20C36D1B4();
  (*(v26 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_20C2FE460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D840;
  if (!qword_27C79D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D840);
  }

  return result;
}

unint64_t sub_20C2FE4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D848;
  if (!qword_27C79D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D848);
  }

  return result;
}

unint64_t sub_20C2FE508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D850;
  if (!qword_27C79D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D850);
  }

  return result;
}

unint64_t sub_20C2FE55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D858;
  if (!qword_27C79D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D858);
  }

  return result;
}

unint64_t sub_20C2FE5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D860;
  if (!qword_27C79D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D860);
  }

  return result;
}

void *sub_20C2FE61C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C2FE824(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DeviceType.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C2FE6D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_20C2FE824(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8C8, &qword_20C36E278);
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v36 - v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8D0, &qword_20C36E280);
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8D8, &qword_20C36E288);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8E0, &qword_20C36E290);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8E8, &qword_20C36E298);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v49 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C2FE460(v15, v16, v17);
  v18 = v48;
  sub_20C36D364();
  if (v18)
  {
    goto LABEL_11;
  }

  v19 = v9;
  v37 = v7;
  v38 = 0;
  v20 = v46;
  v21 = v47;
  v48 = v11;
  v22 = v13;
  v23 = sub_20C36D194();
  v24 = (2 * *(v23 + 16)) | 1;
  v50 = v23;
  v51 = v23 + 32;
  v52 = 0;
  v53 = v24;
  v25 = sub_20C32A50C();
  if (v25 != 4 && v52 == v53 >> 1)
  {
    v11 = v25;
    if (v25 <= 1u)
    {
      if (v25)
      {
        v54 = 1;
        sub_20C2FE55C(v25, v26, v27);
        v34 = v38;
        sub_20C36D0F4();
        if (!v34)
        {
          (*(v42 + 8))(v6, v43);
          goto LABEL_18;
        }
      }

      else
      {
        v54 = 0;
        sub_20C2FE5B0(v25, v26, v27);
        v28 = v38;
        sub_20C36D0F4();
        if (!v28)
        {
          (*(v40 + 8))(v19, v37);
LABEL_18:
          (v48[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v49);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v32 = v48;
    if (v25 == 2)
    {
      v54 = 2;
      sub_20C2FE508(v25, v26, v27);
      v33 = v38;
      sub_20C36D0F4();
      if (!v33)
      {
        (*(v41 + 8))(v20, v45);
LABEL_22:
        (v32[1])(v22, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v54 = 3;
      sub_20C2FE4B4(v25, v26, v27);
      v35 = v38;
      sub_20C36D0F4();
      if (!v35)
      {
        (*(v39 + 8))(v21, v44);
        goto LABEL_22;
      }
    }

    (v32[1])(v22, v10);
    goto LABEL_10;
  }

  v29 = sub_20C36D064();
  swift_allocError();
  v11 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
  *v11 = &type metadata for DeviceType;
  sub_20C36D104();
  sub_20C36D054();
  (*(*(v29 - 8) + 104))(v11, *MEMORY[0x277D84160], v29);
  swift_willThrow();
LABEL_9:
  (v48[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v11;
}

unint64_t sub_20C2FEE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D868;
  if (!qword_27C79D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForYouAction.LoadedCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouAction.LoadedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FF060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D870;
  if (!qword_27C79D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D870);
  }

  return result;
}

unint64_t sub_20C2FF0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D878;
  if (!qword_27C79D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D878);
  }

  return result;
}

unint64_t sub_20C2FF110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D880;
  if (!qword_27C79D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D880);
  }

  return result;
}

unint64_t sub_20C2FF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D888;
  if (!qword_27C79D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D888);
  }

  return result;
}

unint64_t sub_20C2FF1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D890;
  if (!qword_27C79D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D890);
  }

  return result;
}

unint64_t sub_20C2FF218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D898;
  if (!qword_27C79D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D898);
  }

  return result;
}

unint64_t sub_20C2FF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D8A0;
  if (!qword_27C79D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8A0);
  }

  return result;
}

unint64_t sub_20C2FF2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D8A8;
  if (!qword_27C79D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8A8);
  }

  return result;
}

unint64_t sub_20C2FF320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D8B0;
  if (!qword_27C79D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8B0);
  }

  return result;
}

unint64_t sub_20C2FF378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D8B8;
  if (!qword_27C79D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8B8);
  }

  return result;
}

unint64_t sub_20C2FF3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D8C0;
  if (!qword_27C79D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8C0);
  }

  return result;
}

uint64_t ForYouError.hashValue.getter()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

unint64_t sub_20C2FF4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D8F8;
  if (!qword_27C79D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D8F8);
  }

  return result;
}

__n128 ForYouEnvironment.init(fetchSectionDescriptors:invalidateAllPlaceholders:makeAchievementEnvironmentCacheUpdatedStream:makeActiveWorkoutPlanUpdatedStream:makeAllowedContentRatingsUpdatedStream:makeAppDidBecomeActiveStream:makeAudioLanguagePreferenceUpdatedStream:makeBrowsingIdentityUpdatedStream:makeCatalogDeletedStream:makeContentAvailabilityStream:makeNetworkConditionsUpdatedStream:makeOnboardingSurveyResultsUpdatedStream:makePersonalizationPrivacyPreferenceUpdatedStream:makeSignificantTimeChangeStream:makeSubscriptionStatusUpdatedStream:makeWheelchairStatusUpdatedStream:navigateToExplore:presentToastIfNeeded:queryActiveParticipantDeviceType:refreshCanvas:reloadCanvas:requirePersonalizationSupported:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __n128 a26, uint64_t a27, uint64_t a28)
{
  result = a26;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 240) = a21;
  *(a9 + 256) = a22;
  *(a9 + 272) = a23;
  *(a9 + 288) = a24;
  *(a9 + 304) = a25;
  *(a9 + 320) = a26;
  *(a9 + 336) = a27;
  *(a9 + 344) = a28;
  return result;
}

uint64_t sub_20C2FF5C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_20C2FF608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DisplayStyle.rawValue.getter(char a1)
{
  result = 0x736472617761;
  switch(a1)
  {
    case 1:
      v3 = 0x427472616863;
      goto LABEL_4;
    case 2:
      result = 0x6C6573756F726163;
      break;
    case 3:
      result = 0x656C63726963;
      break;
    case 4:
      result = 0x4263696D616E7964;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6369724264697267;
      break;
    case 7:
      result = 0x7552646564697567;
      break;
    case 8:
      result = 0x6157646564697567;
      break;
    case 9:
      result = 0x427972617262696CLL;
      break;
    case 10:
      result = 0x6E6974656B72616DLL;
      break;
    case 11:
      result = 0x7974696C61646F6DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x647261646E617473;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      v3 = 0x426F65646976;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20C2FF8A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = DisplayStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DisplayStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C36D264();
  }

  return v8 & 1;
}

unint64_t sub_20C2FF92C@<X0>(Swift::String *a1@<X0>, FitnessForYou::DisplayStyle_optional *a2@<X8>)
{
  result = _s13FitnessForYou12DisplayStyleO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_20C2FF95C@<X0>(uint64_t *a1@<X8>)
{
  result = DisplayStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20C2FFA38()
{
  v1 = *v0;
  sub_20C36D314();
  DisplayStyle.rawValue.getter(v1);
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C2FFA9C(uint64_t a1)
{
  DisplayStyle.rawValue.getter(*v1);
  sub_20C36CDC4();
}

uint64_t sub_20C2FFAF0(uint64_t a1)
{
  v2 = *v1;
  sub_20C36D314();
  DisplayStyle.rawValue.getter(v2);
  sub_20C36CDC4();

  return sub_20C36D354();
}

unint64_t _s13FitnessForYou12DisplayStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C36D274();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20C2FFBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9028;
  if (!qword_2810E9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C2FFD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9020;
  if (!qword_2810E9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9020);
  }

  return result;
}

uint64_t sub_20C2FFDA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20C2FFF40(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C2FFF88(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (a1 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (a1)
  {
    v1 = 0x6F5464656C696166;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C300004(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C300078(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C300118(uint64_t a1)
{
  sub_20C36D314();
  sub_20C2FFF18(v3, *v1);
  return sub_20C36D354();
}

uint64_t sub_20C30016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C2FFDA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C30019C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_20C3023E8();
  *a2 = result;
  return result;
}

uint64_t sub_20C3001C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C30021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C30028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C300004(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C3002C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C300270();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C3002F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C300344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C300398()
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](0);
  return sub_20C36D354();
}

uint64_t sub_20C3003DC(uint64_t a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](0);
  return sub_20C36D354();
}

uint64_t sub_20C300430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C300078(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C300464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C3004B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C300524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C300578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C3005CC@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_20C300618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C30066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ForYouSummaryLoadState.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v68) = a3;
  v69 = a2;
  v56 = type metadata accessor for ForYouSummaryLoadState.FetchingCodingKeys(255, a4, a5, a4);
  WitnessTable = swift_getWitnessTable();
  v54 = sub_20C36D244();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v8;
  v10 = type metadata accessor for ForYouSummaryLoadState.FetchedCodingKeys(255, a4, a5, v9);
  v11 = swift_getWitnessTable();
  v62 = v10;
  v61 = v11;
  v67 = sub_20C36D244();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v48 - v12;
  type metadata accessor for ForYouSummaryLoadState.FailedToLoadCodingKeys(255, a4, a5, v13);
  v58 = swift_getWitnessTable();
  v60 = sub_20C36D244();
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - v14;
  type metadata accessor for ForYouSummaryLoadState.IdleCodingKeys(255, a4, a5, v15);
  v50 = swift_getWitnessTable();
  v51 = sub_20C36D244();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v17 = &v48 - v16;
  v64 = a4;
  v66 = a5;
  type metadata accessor for ForYouSummaryLoadState.CodingKeys(255, a4, a5, v18);
  swift_getWitnessTable();
  v72 = sub_20C36D244();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v20 = &v48 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v71 = v20;
  sub_20C36D374();
  if (v68)
  {
    if (v68 == 1)
    {
      LOBYTE(v74) = 2;
      v21 = v63;
      sub_20C36D1B4();
      v88 = v69;
      v69 = sub_20C36C394();
      v68 = sub_20C36C344();
      v62 = type metadata accessor for ForYouItemContext(255);
      v22 = sub_20C36C354();
      v23 = sub_20C36C374();
      v24 = sub_20C30102C(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
      v25 = sub_20C30102C(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
      v26 = sub_20C30102C(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
      v27 = sub_20C30102C(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
      v28 = sub_20C30102C(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
      v29 = sub_20C30102C(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
      v30 = sub_20C30102C(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
      v74 = v69;
      v75 = v64;
      v76 = v68;
      v77 = v62;
      v78 = v22;
      v79 = v23;
      v31 = v21;
      v80 = v24;
      v81 = v66;
      v82 = v25;
      v83 = v26;
      v84 = v27;
      v85 = v28;
      v86 = v29;
      v87 = v30;
      sub_20C36C284();
      sub_20C36CE94();
      v73 = swift_getWitnessTable();
      swift_getWitnessTable();
      v32 = v67;
      sub_20C36D234();
      (*(v65 + 8))(v31, v32);
      return (*(v70 + 8))(v71, v72);
    }

    else
    {
      v42 = (v70 + 8);
      if (v69)
      {
        LOBYTE(v74) = 3;
        v43 = v52;
        v45 = v71;
        v44 = v72;
        sub_20C36D1B4();
        (*(v53 + 8))(v43, v54);
        return (*v42)(v45, v44);
      }

      else
      {
        LOBYTE(v74) = 0;
        v46 = v71;
        v47 = v72;
        sub_20C36D1B4();
        (*(v49 + 8))(v17, v51);
        return (*v42)(v46, v47);
      }
    }
  }

  else
  {
    v34 = v57;
    LOBYTE(v74) = 1;
    v35 = v59;
    v37 = v71;
    v36 = v72;
    v38 = sub_20C36D1B4();
    LOBYTE(v74) = v69;
    sub_20C301074(v38, v39, v40);
    v41 = v60;
    sub_20C36D234();
    (*(v34 + 8))(v35, v41);
    return (*(v70 + 8))(v37, v36);
  }
}

uint64_t sub_20C30102C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C301074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D938;
  if (!qword_27C79D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D938);
  }

  return result;
}

uint64_t ForYouSummaryLoadState.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = type metadata accessor for ForYouSummaryLoadState.FetchingCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v71 = sub_20C36D1A4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v80 = &v62 - v7;
  v9 = type metadata accessor for ForYouSummaryLoadState.FetchedCodingKeys(255, a2, a3, v8);
  v10 = swift_getWitnessTable();
  v79 = v9;
  v78 = v10;
  v73 = sub_20C36D1A4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v83 = &v62 - v11;
  v13 = type metadata accessor for ForYouSummaryLoadState.FailedToLoadCodingKeys(255, a2, a3, v12);
  v14 = swift_getWitnessTable();
  v76 = v13;
  v75 = v14;
  v69 = sub_20C36D1A4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v77 = &v62 - v15;
  type metadata accessor for ForYouSummaryLoadState.IdleCodingKeys(255, a2, a3, v16);
  v74 = swift_getWitnessTable();
  v67 = sub_20C36D1A4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v18 = &v62 - v17;
  type metadata accessor for ForYouSummaryLoadState.CodingKeys(255, a2, a3, v19);
  swift_getWitnessTable();
  v85 = sub_20C36D1A4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v21 = &v62 - v20;
  v22 = a1;
  v23 = a1[3];
  v24 = v22[4];
  v86 = v22;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = v103;
  sub_20C36D364();
  v103 = v25;
  if (!v25)
  {
    v63 = v18;
    v64 = a2;
    v65 = a3;
    v26 = v85;
    v27 = v21;
    *&v88 = sub_20C36D194();
    sub_20C36CE94();
    swift_getWitnessTable();
    *&v101 = sub_20C36D014();
    *(&v101 + 1) = v28;
    *&v102 = v29;
    *(&v102 + 1) = v30;
    sub_20C36D004();
    swift_getWitnessTable();
    sub_20C36CF84();
    v24 = v88;
    v31 = v26;
    if (v88 == 4 || (v62 = v101, v88 = v101, v89 = v102, (sub_20C36CFA4() & 1) == 0))
    {
      v24 = sub_20C36D064();
      v36 = swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
      *v38 = type metadata accessor for ForYouSummaryLoadState(0, v64, v65, v39);
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v24 - 8) + 104))(v38, *MEMORY[0x277D84160], v24);
      v103 = v36;
      swift_willThrow();
      (*(v84 + 8))(v27, v31);
    }

    else if (v24 > 1)
    {
      if (v24 == 2)
      {
        LOBYTE(v88) = 2;
        v41 = v103;
        sub_20C36D0F4();
        v103 = v41;
        if (!v41)
        {
          v42 = sub_20C36C394();
          v82 = sub_20C36C344();
          WitnessTable = type metadata accessor for ForYouItemContext(255);
          v80 = sub_20C36C354();
          v43 = sub_20C36C374();
          v44 = sub_20C30102C(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
          v45 = sub_20C30102C(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
          v46 = sub_20C30102C(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
          v47 = sub_20C30102C(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
          v48 = sub_20C30102C(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
          v49 = sub_20C30102C(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
          v50 = sub_20C30102C(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
          *&v88 = v42;
          *(&v88 + 1) = v64;
          *&v89 = v82;
          *(&v89 + 1) = WitnessTable;
          v90 = v80;
          v91 = v43;
          v92 = v44;
          v93 = v65;
          v94 = v45;
          v95 = v46;
          v96 = v47;
          v97 = v48;
          v98 = v49;
          v99 = v50;
          v51 = v83;
          sub_20C36C284();
          sub_20C36CE94();
          v87 = swift_getWitnessTable();
          swift_getWitnessTable();
          v24 = v73;
          v52 = v103;
          sub_20C36D184();
          v103 = v52;
          if (!v52)
          {
            (*(v72 + 8))(v51, v24);
            (*(v84 + 8))(v27, v85);
            swift_unknownObjectRelease();
            v24 = v100;
            goto LABEL_10;
          }

          (*(v72 + 8))(v51, v24);
          (*(v84 + 8))(v27, v85);
          goto LABEL_9;
        }
      }

      else
      {
        LOBYTE(v88) = 3;
        v24 = v80;
        v61 = v103;
        sub_20C36D0F4();
        v103 = v61;
        if (!v61)
        {
          (*(v70 + 8))(v24, v71);
          (*(v84 + 8))(v27, v26);
          swift_unknownObjectRelease();
          v24 = 1;
          goto LABEL_10;
        }
      }

      (*(v84 + 8))(v27, v26);
    }

    else
    {
      v32 = v27;
      if (v24)
      {
        LOBYTE(v88) = 1;
        v53 = v77;
        v54 = v103;
        v55 = sub_20C36D0F4();
        v35 = v84;
        v103 = v54;
        if (!v54)
        {
          sub_20C301D50(v55, v56, v57);
          v58 = v69;
          v59 = v103;
          sub_20C36D184();
          v103 = v59;
          if (!v59)
          {
            (*(v68 + 8))(v53, v58);
            (*(v35 + 8))(v32, v31);
            swift_unknownObjectRelease();
            v24 = v88;
            goto LABEL_10;
          }

          (*(v68 + 8))(v53, v58);
        }
      }

      else
      {
        LOBYTE(v88) = 0;
        v33 = v63;
        v34 = v103;
        sub_20C36D0F4();
        v35 = v84;
        v103 = v34;
        if (!v34)
        {
          (*(v66 + 8))(v33, v67);
          (*(v35 + 8))(v27, v31);
          swift_unknownObjectRelease();
          v24 = 0;
          goto LABEL_10;
        }
      }

      v60 = *(v35 + 8);
      v24 = v35 + 8;
      v60(v32, v31);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v86);
  return v24;
}

unint64_t sub_20C301D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79D940[0];
  if (!qword_27C79D940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C79D940);
  }

  return result;
}

uint64_t sub_20C301DA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = ForYouSummaryLoadState.init(from:)(a1, *(a2 + 16), *(a2 + 24), a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v7;
  }

  return result;
}

BOOL static ForYouSummaryLoadState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_20C36C394();
        sub_20C36C344();
        type metadata accessor for ForYouItemContext(255);
        sub_20C36C354();
        sub_20C36C374();
        sub_20C30102C(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
        sub_20C30102C(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
        sub_20C30102C(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
        sub_20C30102C(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
        sub_20C30102C(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
        sub_20C30102C(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
        sub_20C30102C(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
        sub_20C36C284();
        swift_getWitnessTable();
        return sub_20C36CEA4() & 1;
      }

      return 0;
    }

    if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20C302100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C302148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C30218C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ForYouToastState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ForYouToastState.CodingKeys(_WORD *result, int a2, int a3)
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

void __swiftcall SectionDescriptors.init(awardDescriptors:forYouDescriptors:recoId:requestStartTime:responseEndTime:)(FitnessForYou::SectionDescriptors *__return_ptr retstr, Swift::OpaquePointer awardDescriptors, Swift::OpaquePointer forYouDescriptors, Swift::String recoId, Swift::Double requestStartTime, Swift::Double responseEndTime)
{
  retstr->awardDescriptors = awardDescriptors;
  retstr->forYouDescriptors = forYouDescriptors;
  retstr->recoId = recoId;
  retstr->requestStartTime = requestStartTime;
  retstr->responseEndTime = responseEndTime;
}

unint64_t sub_20C302418()
{
  v1 = *v0;
  v2 = 0x64496F636572;
  v3 = 0xD000000000000010;
  if (v1 != 3)
  {
    v3 = 0x65736E6F70736572;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C3024C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C3044B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C3024F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C302848(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C302534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C302848(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SectionDescriptors.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBC8, &unk_20C36EBD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[1] = v1[2];
  v16 = v8;
  v15[0] = v10;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C302848(v11, v12, v13);

  sub_20C36D374();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
  sub_20C302DB8(&qword_2810E8BF8, sub_20C3028E4, MEMORY[0x277D83948]);
  sub_20C36D234();
  if (v2)
  {
  }

  else
  {

    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
    sub_20C302938(&qword_2810E8C00, sub_20C3029B0, MEMORY[0x277D83948]);
    sub_20C36D234();
    LOBYTE(v18) = 2;
    sub_20C36D1F4();
    LOBYTE(v18) = 3;
    sub_20C36D214();
    LOBYTE(v18) = 4;
    sub_20C36D214();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20C302848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DBD0;
  if (!qword_27C79DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DBD0);
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

unint64_t sub_20C3028E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CC0;
  if (!qword_2810E8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CC0);
  }

  return result;
}

uint64_t sub_20C302938(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBE0, &qword_20C36EBE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C3029B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CF0;
  if (!qword_2810E8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CF0);
  }

  return result;
}

uint64_t SectionDescriptors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE8, &qword_20C36EBE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C302848(v9, v10, v11);
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
  v24 = 0;
  sub_20C302DB8(&qword_27C79DBF0, sub_20C302E30, MEMORY[0x277D83978]);
  sub_20C36D184();
  v12 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
  v24 = 1;
  sub_20C302938(&qword_27C79DC00, sub_20C302E84, MEMORY[0x277D83978]);
  sub_20C36D184();
  v23 = v25;
  LOBYTE(v25) = 2;
  v21 = sub_20C36D144();
  v22 = v13;
  LOBYTE(v25) = 3;
  sub_20C36D164();
  v15 = v14;
  LOBYTE(v25) = 4;
  sub_20C36D164();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v20 = v22;
  v19 = v23;
  *a2 = v12;
  a2[1] = v19;
  a2[2] = v21;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C302DB8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBD8, &qword_20C375B70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C302E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DBF8;
  if (!qword_27C79DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DBF8);
  }

  return result;
}

unint64_t sub_20C302E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC08;
  if (!qword_27C79DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC08);
  }

  return result;
}

uint64_t SectionDescriptors.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_20C303E00(a1, *v1);
  sub_20C3039DC(a1, v3);
  sub_20C36CDC4();
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x20F2F7E80](*&v6);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  return MEMORY[0x20F2F7E80](*&v7);
}

uint64_t SectionDescriptors.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_20C36D314();
  SectionDescriptors.hash(into:)(v4);
  return sub_20C36D354();
}

uint64_t sub_20C302FFC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_20C36D314();
  SectionDescriptors.hash(into:)(v4);
  return sub_20C36D354();
}

uint64_t sub_20C30305C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v1[2];
  sub_20C36D314();
  SectionDescriptors.hash(into:)(v5);
  return sub_20C36D354();
}

uint64_t sub_20C3030B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_20C36CDC4();
      sub_20C36CDC4();

      if (v7)
      {
        sub_20C36D334();
      }

      else
      {
        sub_20C36D334();
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        MEMORY[0x20F2F7E80](v8);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20C303294(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C36C124();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlanMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CanvasPlaceholder(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v13);
  if (v13)
  {
    v15 = *(v9 + 44);
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    v24 = v15;
    v22 = 0x800000020C377990;
    v19[3] = 0x800000020C3778D0;
    v19[4] = 0x800000020C377900;
    v19[1] = 0x800000020C377840;
    v19[2] = 0x800000020C3778B0;
    v17 = v20++;
    v21 = (v17 + 4);
    do
    {
      sub_20C304678(v16, v12, type metadata accessor for CanvasPlaceholder);
      sub_20C36CDC4();
      sub_20C36CDC4();
      if (*(v12 + 5))
      {
        sub_20C36D334();
        sub_20C36CDC4();
      }

      else
      {
        sub_20C36D334();
      }

      if (v12[48] == 2)
      {
        sub_20C36D334();
      }

      else
      {
        sub_20C36D334();
        sub_20C36CDC4();
      }

      sub_20C36CDC4();

      sub_20C36CDC4();

      if (*(v12 + 8))
      {
        sub_20C36D334();
        sub_20C36CDC4();
      }

      else
      {
        sub_20C36D334();
      }

      sub_20C304678(&v12[v24], v8, type metadata accessor for PlanMetadata);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
      if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
      {
        MEMORY[0x20F2F7E60](0);
      }

      else
      {
        (*v21)(v5, v8, v3);
        MEMORY[0x20F2F7E60](1);
        sub_20C3046E0();
        sub_20C36CD34();
        sub_20C36D334();
        (*v20)(v5, v3);
      }

      result = sub_20C2FC16C(v12);
      v16 += v23;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_20C3039DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v4);
  if (v4)
  {
    v6 = (a2 + 64);
    do
    {
      v10 = v4;
      v7 = *(v6 - 1);
      v8 = v6[1];
      v9 = v6[5];
      v11 = v6[4];

      sub_20C36CDC4();
      sub_20C36D334();
      if (v7)
      {
        sub_20C36CDC4();
      }

      sub_20C36D334();
      if (v8)
      {
        sub_20C36CDC4();
      }

      sub_20C36CDC4();

      sub_20C36D334();
      if (v11)
      {
        sub_20C36CDC4();
      }

      sub_20C303294(a1, v9);
      sub_20C36CDC4();

      sub_20C36CDC4();

      v6 += 13;
      v4 = v10 - 1;
    }

    while (v10 != 1);
  }

  return result;
}

uint64_t sub_20C303E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F7E60](v3);
  if (v3)
  {
    v5 = 0;
    v12 = a2 + 32;
    do
    {
      v13 = v5;
      v6 = *(v12 + 40 * v5 + 32);

      sub_20C36CDC4();
      sub_20C36CDC4();
      v7 = *(v6 + 16);
      MEMORY[0x20F2F7E60](v7);
      if (v7)
      {
        v8 = (v6 + 64);
        do
        {
          v10 = *(v8 - 1);
          v11 = *v8;

          sub_20C36CDC4();
          sub_20C36CDC4();

          if (v11)
          {
            sub_20C36D334();
          }

          else
          {
            sub_20C36D334();
            if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v9 = v10;
            }

            else
            {
              v9 = 0;
            }

            MEMORY[0x20F2F7E80](v9);
          }

          v8 += 40;
          --v7;
        }

        while (v7);
      }

      v5 = v13 + 1;
    }

    while (v13 + 1 != v3);
  }

  return result;
}

BOOL _s13FitnessForYou18SectionDescriptorsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_20C332634(*a1, *a2) & 1) == 0 || (sub_20C33279C(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v4 == v9)
  {
    if (v6 != v11)
    {
      return 0;
    }

    return v5 == v10;
  }

  v13 = sub_20C36D264();
  result = 0;
  if ((v13 & 1) != 0 && v6 == v11)
  {
    return v5 == v10;
  }

  return result;
}

unint64_t sub_20C304164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC10;
  if (!qword_27C79DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC10);
  }

  return result;
}

uint64_t sub_20C3041B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20C304200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationInferenceRequestTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationInferenceRequestTrigger(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3043B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC18;
  if (!qword_27C79DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC18);
  }

  return result;
}

unint64_t sub_20C304408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC20;
  if (!qword_27C79DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC20);
  }

  return result;
}

unint64_t sub_20C304460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC28;
  if (!qword_27C79DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC28);
  }

  return result;
}

uint64_t sub_20C3044B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000020C377AC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377AE0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496F636572 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377B00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEF656D6954646E45)
  {

    return 4;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_20C304678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C3046E0()
{
  result = qword_27C79D7B0;
  if (!qword_27C79D7B0)
  {
    sub_20C36C124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79D7B0);
  }

  return result;
}

uint64_t ForYouLocalState.previousLoadState.getter()
{
  v1 = *(v0 + 8);
  sub_20C3047C0(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

void sub_20C3047C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_20C3047D4(a1, a2, a3, a4);
  }
}

void sub_20C3047D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    sub_20C304834(a1, a2, a3);
  }
}

uint64_t sub_20C304834(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void ForYouLocalState.previousLoadState.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_20C3048A0(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
}

void sub_20C3048A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_20C3048B4(a1, a2, a3, a4);
  }
}

void sub_20C3048B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    sub_20C304914(a1, a2, a3);
  }
}

uint64_t sub_20C304914(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t ForYouLocalState.init(browsingIdentity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *a2 = result & 1;
  return result;
}

unint64_t sub_20C304964()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_20C30499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020C377B20 == a2 || (sub_20C36D264() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377B40 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C36D264();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20C304A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C304CB8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C304ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C304CB8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouLocalState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC30, &qword_20C36EE10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v22 = *(v1 + 2);
  v23 = v9;
  v21 = *(v1 + 3);
  v28 = v1[32];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C304CB8(v10, v11, v12);
  v13 = sub_20C36D374();
  LOBYTE(v24) = v8;
  v29 = 0;
  sub_20C304D0C(v13, v14, v15);
  v16 = sub_20C36D234();
  if (!v2)
  {
    v24 = v23;
    v25 = v22;
    v26 = v21;
    v27 = v28;
    v29 = 1;
    sub_20C304D60(v16, v17, v18);
    sub_20C36D1E4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20C304CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC38;
  if (!qword_27C79DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC38);
  }

  return result;
}

unint64_t sub_20C304D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC40;
  if (!qword_27C79DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC40);
  }

  return result;
}

unint64_t sub_20C304D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC48;
  if (!qword_27C79DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC48);
  }

  return result;
}

void ForYouLocalState.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC50, &qword_20C36EE18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C304CB8(v9, v10, v11);
  v12 = sub_20C36D364();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = 0;
    sub_20C304FCC(v12, v13, v14);
    v15 = sub_20C36D184();
    v16 = v23[0];
    v25 = 1;
    sub_20C305020(v15, v17, v18);
    sub_20C36D134();
    (*(v6 + 8))(v8, v5);
    v19 = v23[0];
    v20 = v23[1];
    v21 = v23[2];
    v22 = v24;
    *a2 = v16;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;
    sub_20C3047C0(v19, v20, v21, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_20C3048A0(v19, v20, v21, v22);
  }
}

unint64_t sub_20C304FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC58;
  if (!qword_27C79DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC58);
  }

  return result;
}

unint64_t sub_20C305020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC60;
  if (!qword_27C79DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC60);
  }

  return result;
}

BOOL _s13FitnessForYou0bC10LocalStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[32];
  v4 = a2[32];
  if (v3 == 255)
  {
    return v4 == 255;
  }

  if (v4 == 255)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (!v3)
  {
    if (!v4)
    {
      v14 = *(a2 + 3);
      if (!*(a1 + 3))
      {
        return !*(a2 + 3) && (v6 == v10 && v8 == v11 || (sub_20C36D264() & 1) != 0);
      }

      if (*(a1 + 3) == 1)
      {
        if (v14 == 1)
        {
          v15 = *(a2 + 1);
          if (v6 == 4)
          {
            if (v15 == 4)
            {
              return 1;
            }
          }

          else if (v15 != 4 && v10 == v6)
          {
            return 1;
          }
        }
      }

      else if (v6 | v8)
      {
        if (v14 == 2 && v10 == 1 && !v11)
        {
          return 1;
        }
      }

      else if (v14 == 2 && !(v11 | v10))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (v9 | v8 | v6)
    {
      if (v4 == 2 && v10 == 1 && !(v12 | v11))
      {
        return 1;
      }
    }

    else if (v4 == 2 && !(v11 | v10 | v12))
    {
      return 1;
    }

    return 0;
  }

  if (v4 != 1 || (v6 != v10 || v8 != v11) && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v13 = sub_20C33279C(v9, v12);
  sub_20C3048A0(v10, v11, v12, 1);
  result = 1;
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou17LoadFailureReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou9LoadStateOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C3052CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C305310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceholderMarkerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceholderMarkerType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3054BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC68;
  if (!qword_27C79DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC68);
  }

  return result;
}

unint64_t sub_20C305514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC70;
  if (!qword_27C79DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC70);
  }

  return result;
}

unint64_t sub_20C30556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC78;
  if (!qword_27C79DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC78);
  }

  return result;
}

unint64_t PersonalizationInferenceRequestTrigger.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E65704F707061;
  v2 = 0x6F54736472617761;
  v3 = 0x44676F6C61746163;
  if (a1 != 3)
  {
    v3 = 0x616470556E616C70;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C305680(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0x6F54736472617761;
      v5 = 0xEB00000000747361;
      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2 == 3)
      {
        v4 = 0x44676F6C61746163;
      }

      else
      {
        v4 = 0x616470556E616C70;
      }

      if (v2 == 3)
      {
        v5 = 0xEE00646574656C65;
      }

      else
      {
        v5 = 0xEB00000000646574;
      }

      if (*a2 > 1u)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    if (*a2)
    {
      v7 = 0x6E65704F707061;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (*a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000020C377930;
    }

    if (v4 != v7)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*a1)
  {
    v4 = 0x6E65704F707061;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x800000020C377930;
  }

  if (*a2 <= 1u)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (v3 == 2)
  {
    v8 = 0x6F54736472617761;
    v9 = 7631713;
  }

  else
  {
    if (v3 == 3)
    {
      v6 = 0xEE00646574656C65;
      if (v4 != 0x44676F6C61746163)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v8 = 0x616470556E616C70;
    v9 = 6579572;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_20C36D264();
    goto LABEL_37;
  }

LABEL_34:
  if (v5 != v6)
  {
    goto LABEL_36;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

unint64_t sub_20C30585C@<X0>(Swift::String *a1@<X0>, FitnessForYou::PersonalizationInferenceRequestTrigger_optional *a2@<X8>)
{
  result = _s13FitnessForYou38PersonalizationInferenceRequestTriggerO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_20C30588C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E65704F707061;
  v5 = 0xEB00000000747361;
  v6 = 0x6F54736472617761;
  v7 = 0xEE00646574656C65;
  v8 = 0x44676F6C61746163;
  if (v2 != 3)
  {
    v8 = 0x616470556E616C70;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000020C377930;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_20C3059FC()
{
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C305B00(uint64_t a1)
{
  sub_20C36CDC4();
}

uint64_t sub_20C305BF0(uint64_t a1)
{
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

unint64_t _s13FitnessForYou38PersonalizationInferenceRequestTriggerO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C36D0E4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20C305D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DC80;
  if (!qword_27C79DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DC80);
  }

  return result;
}

unint64_t sub_20C305DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CB0;
  if (!qword_2810E8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CB0);
  }

  return result;
}

uint64_t ForYouToastView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x4034000000000000;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C305E60;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t ForYouToastView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v91 = sub_20C36C744();
  MEMORY[0x28223BE20](v91);
  v90 = &v76[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20C36C454();
  v4 = *(v3 - 8);
  v92 = v3;
  v93 = v4;
  MEMORY[0x28223BE20](v3);
  v88 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC88, &qword_20C36F1E0);
  v7 = *(v6 - 8);
  v94 = v6;
  v95 = v7;
  MEMORY[0x28223BE20](v6);
  v89 = &v76[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC90, &qword_20C36F1E8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v76[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DC98, &qword_20C36F1F0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v79 = &v76[-v15];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCA0, &qword_20C36F1F8);
  MEMORY[0x28223BE20](v82);
  v81 = &v76[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCA8, &qword_20C36F200);
  v18 = *(v17 - 8);
  v84 = v17;
  v85 = v18;
  MEMORY[0x28223BE20](v17);
  v83 = &v76[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCB0, &qword_20C36F208);
  v21 = *(v20 - 8);
  v86 = v20;
  v87 = v21;
  MEMORY[0x28223BE20](v20);
  v97 = &v76[-v22];
  v23 = *(v1 + 8);
  v80 = *v1;
  v24 = *(v1 + 16);
  v25 = *(v1 + 24);
  v78 = sub_20C36C6D4();
  v109 = 1;
  sub_20C306878(v23, &v100);
  v116 = v104;
  v117 = v105;
  v118 = v106;
  v119 = v107;
  v112 = v100;
  v113 = v101;
  v114 = v102;
  v115 = v103;
  v120[0] = v100;
  v120[1] = v101;
  v120[2] = v102;
  v120[3] = v103;
  v120[4] = v104;
  v120[5] = v105;
  v120[6] = v106;
  v121 = v107;
  sub_20C3077F0(&v112, &v98, &qword_27C79DCB8, &qword_20C36F210);
  sub_20C307858(v120, &qword_27C79DCB8, &qword_20C36F210);
  *(&v108[4] + 7) = v116;
  *(&v108[5] + 7) = v117;
  *(&v108[6] + 7) = v118;
  *(v108 + 7) = v112;
  *(&v108[1] + 7) = v113;
  *(&v108[2] + 7) = v114;
  *(&v108[7] + 7) = v119;
  *(&v108[3] + 7) = v115;
  v77 = v109;
  v26 = sub_20C36C834();
  v110 = 1;
  sub_20C36CC24();
  sub_20C36C5C4();
  *&v111[55] = v103;
  *&v111[71] = v104;
  *&v111[87] = v105;
  *&v111[103] = v106;
  *&v111[7] = v100;
  *&v111[23] = v101;
  v27 = &v12[*(v10 + 44)];
  *&v111[39] = v102;
  sub_20C36CC04();
  v28 = sub_20C36C834();
  v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCC0, &qword_20C36F218) + 36)] = v28;
  v29 = v108[2];
  *(v12 + 65) = v108[3];
  *(v12 + 49) = v29;
  v30 = v108[0];
  *(v12 + 33) = v108[1];
  *(v12 + 17) = v30;
  *(v12 + 8) = *(&v108[6] + 15);
  v31 = v108[5];
  *(v12 + 113) = v108[6];
  v32 = v108[4];
  *(v12 + 97) = v31;
  *(v12 + 81) = v32;
  *(v12 + 168) = 0u;
  *(v12 + 152) = 0u;
  v33 = *&v111[16];
  *(v12 + 185) = *v111;
  *(v12 + 201) = v33;
  v34 = *&v111[48];
  *(v12 + 217) = *&v111[32];
  *(v12 + 37) = *&v111[111];
  v35 = *&v111[96];
  v36 = *&v111[64];
  *(v12 + 265) = *&v111[80];
  *(v12 + 281) = v35;
  *(v12 + 249) = v36;
  *v12 = v78;
  *(v12 + 1) = 0;
  v12[16] = v77;
  v12[144] = v26;
  v12[184] = 1;
  *(v12 + 233) = v34;
  KeyPath = swift_getKeyPath();
  v38 = v79;
  v39 = &v79[*(v14 + 44)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCC8, &qword_20C36F250) + 28);
  v41 = *MEMORY[0x277CDF3C0];
  v42 = sub_20C36C414();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = KeyPath;
  v43 = v38;
  sub_20C307054(v12, v38, &qword_27C79DC90, &qword_20C36F1E8);
  v44 = v81;
  v45 = v82;
  v46 = &v81[*(v82 + 36)];
  v47 = *(sub_20C36C594() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_20C36C6E4();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #14.0 }

  *v46 = _Q0;
  *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DCD0, &qword_20C36F258) + 36)] = 256;
  v55 = v44;
  sub_20C307054(v43, v44, &qword_27C79DC98, &qword_20C36F1F0);
  v56 = swift_allocObject();
  v57 = v80;
  *(v56 + 16) = v80;
  *(v56 + 24) = v23;
  *(v56 + 32) = v24;
  *(v56 + 40) = v25;
  v58 = v57;
  sub_20C3070C8(v57, v23);
  v59 = sub_20C3070D0();
  v60 = v83;
  v61 = v45;
  sub_20C36C9C4();

  sub_20C307858(v55, &qword_27C79DCA0, &qword_20C36F1F8);
  v62 = swift_allocObject();
  v63 = v58;
  *(v62 + 16) = v58;
  *(v62 + 24) = v23;
  v64 = v23;
  LOBYTE(v23) = v24;
  *(v62 + 32) = v24;
  *(v62 + 40) = v25;
  v65 = v63;
  sub_20C3070C8(v63, v64);
  v98 = v61;
  v99 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v84;
  sub_20C36C9F4();

  (*(v85 + 8))(v60, v67);
  sub_20C36C7A4();
  v68 = v88;
  sub_20C36C424();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v64;
  *(v69 + 32) = v23;
  *(v69 + 40) = v25;
  sub_20C3070C8(v65, v64);
  sub_20C307658();
  v70 = v89;
  v71 = v92;
  sub_20C36CBF4();

  (*(v93 + 8))(v68, v71);
  sub_20C36C474();
  v98 = v67;
  v99 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_20C3077A8(&qword_27C79DD40, &qword_27C79DC88, &qword_20C36F1E0, MEMORY[0x277CDF728]);
  v72 = v86;
  v73 = v94;
  v74 = v97;
  sub_20C36CA74();
  (*(v95 + 8))(v70, v73);
  return (*(v87 + 8))(v74, v72);
}

uint64_t sub_20C306878@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_20C36CAE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_20C36C704();
  LOBYTE(v27[0]) = 1;
  sub_20C306AD0(a2, v24);
  *&v23[7] = v24[0];
  *&v23[23] = v24[1];
  *&v23[39] = v24[2];
  *&v23[55] = v24[3];
  v11 = v27[0];
  v12 = sub_20C36CB34();
  v13 = sub_20C36C864();
  KeyPath = swift_getKeyPath();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0EE0], v7);
  v15 = sub_20C36CB04();
  v16 = v22;
  v25[0] = v22;
  v25[1] = 0;
  v26[0] = v11;
  *&v26[1] = *v23;
  *&v26[17] = *&v23[16];
  *&v26[33] = *&v23[32];
  *&v26[49] = *&v23[48];
  v17 = *&v23[63];
  *&v26[64] = *&v23[63];
  v18 = *v26;
  *a4 = v22;
  *(a4 + 16) = v18;
  v19 = *&v26[16];
  v20 = *&v26[48];
  *(a4 + 48) = *&v26[32];
  *(a4 + 64) = v20;
  *(a4 + 32) = v19;
  *(a4 + 80) = v17;
  *(a4 + 88) = v12;
  *(a4 + 96) = KeyPath;
  *(a4 + 104) = v13;
  *(a4 + 112) = v15;
  sub_20C3077F0(v25, v27, &qword_27C79DD58, &qword_20C36F390);
  v27[0] = v16;
  v27[1] = 0;
  v28 = v11;
  v30 = *&v23[16];
  v31 = *&v23[32];
  *v32 = *&v23[48];
  *&v32[15] = *&v23[63];
  v29 = *v23;
  return sub_20C307858(v27, &qword_27C79DD58, &qword_20C36F390);
}

uint64_t sub_20C306AD0@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v42 = a4;
  v5 = sub_20C36CAE4();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C36C144();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_20C36CD64();
  MEMORY[0x28223BE20](v8 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v9 = qword_2810ED6B0;
  v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD48, &qword_20C36F358);
  v37[1] = sub_20C3077A8(&qword_27C79DD50, &qword_27C79DD48, &qword_20C36F358, MEMORY[0x277D04410]);
  sub_20C36C494();
  swift_getKeyPath();
  sub_20C36CCE4();

  v10 = sub_20C36C934();
  v37[0] = a2;
  v12 = v11;
  v14 = v13;
  sub_20C36C924();
  sub_20C36C894();
  sub_20C36C8E4();

  v15 = sub_20C36C974();
  v40 = v16;
  v41 = v15;
  v39 = v17;
  v38 = v18;

  sub_20C3078B8(v10, v12, v14 & 1);

  sub_20C36CD54();
  v19 = qword_2810ED6B0;
  sub_20C36C494();
  swift_getKeyPath();
  sub_20C36CCE4();

  v20 = sub_20C36C934();
  v22 = v21;
  LOBYTE(v12) = v23;
  (*(v44 + 104))(v43, *MEMORY[0x277CE0EE0], v45);
  v47[0] = sub_20C36CB04();
  v24 = sub_20C36C954();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_20C3078B8(v20, v22, v12 & 1);

  v31 = v38 & 1;
  v46 = v38 & 1;
  v49 = v38 & 1;
  v48 = v28 & 1;
  v33 = v41;
  v32 = v42;
  v35 = v39;
  v34 = v40;
  *v42 = v41;
  v32[1] = v35;
  *(v32 + 16) = v31;
  v32[3] = v34;
  v32[4] = v24;
  v32[5] = v26;
  *(v32 + 48) = v28 & 1;
  v32[7] = v30;
  sub_20C3078C8(v33, v35, v31);

  sub_20C3078C8(v24, v26, v28 & 1);

  sub_20C3078B8(v24, v26, v28 & 1);

  sub_20C3078B8(v33, v35, v46);
}

uint64_t sub_20C306F8C(uint64_t a1)
{
  v2 = sub_20C36C414();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C36C5E4();
}

uint64_t sub_20C307054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_20C3070D0()
{
  result = qword_27C79DCD8;
  if (!qword_27C79DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCA0, &qword_20C36F1F8);
    sub_20C307188();
    sub_20C3077A8(&qword_27C79DD30, &qword_27C79DCD0, &qword_20C36F258, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCD8);
  }

  return result;
}

unint64_t sub_20C307188()
{
  result = qword_27C79DCE0;
  if (!qword_27C79DCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DC98, &qword_20C36F1F0);
    sub_20C307240();
    sub_20C3077A8(&qword_27C79DD28, &qword_27C79DCC8, &qword_20C36F250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCE0);
  }

  return result;
}

unint64_t sub_20C307240()
{
  result = qword_27C79DCE8;
  if (!qword_27C79DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DC90, &qword_20C36F1E8);
    sub_20C3072F8();
    sub_20C3077A8(&qword_27C79DD20, &qword_27C79DCC0, &qword_20C36F218, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCE8);
  }

  return result;
}

unint64_t sub_20C3072F8()
{
  result = qword_27C79DCF0;
  if (!qword_27C79DCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DCF8, &qword_20C36F260);
    sub_20C307384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DCF0);
  }

  return result;
}

unint64_t sub_20C307384()
{
  result = qword_27C79DD00;
  if (!qword_27C79DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DD08, &qword_20C36F268);
    sub_20C3077A8(&qword_27C79DD10, &qword_27C79DD18, &qword_20C36F270, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD00);
  }

  return result;
}

uint64_t sub_20C30743C(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD48, &qword_20C36F358);
  sub_20C3077A8(&qword_27C79DD50, &qword_27C79DD48, &qword_20C36F358, MEMORY[0x277D04410]);
  sub_20C36C494();
  sub_20C36CCF4();
}

uint64_t sub_20C307524(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_20C36C444();
  v7 = v6;
  result = sub_20C36C434();
  if (v7 - v9 > a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD48, &qword_20C36F358);
    sub_20C3077A8(&qword_27C79DD50, &qword_27C79DD48, &qword_20C36F358, MEMORY[0x277D04410]);
    sub_20C36C494();
    sub_20C36CCF4();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  sub_20C3070BC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_20C307658()
{
  result = qword_27C79DD38;
  if (!qword_27C79DD38)
  {
    sub_20C36C454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD38);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C30770C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C307754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C3077A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_20C3077F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C307858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20C3078B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C3078C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t ForYouToastState.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_20C30795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3079E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C307BBC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C307A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C307BBC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouToastState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD60, &qword_20C36F3C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C307BBC(v6, v7, v8);
  sub_20C36D374();
  sub_20C36C144();
  sub_20C307EC8(&qword_27C79DD70, MEMORY[0x277CC9790]);
  sub_20C36D234();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_20C307BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DD68;
  if (!qword_27C79DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD68);
  }

  return result;
}

uint64_t ForYouToastState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_20C36C144();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v21 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD78, &qword_20C36F3C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ForYouToastState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C307BBC(v12, v13, v14);
  v15 = v22;
  sub_20C36D364();
  if (!v15)
  {
    v16 = v20;
    sub_20C307EC8(&qword_27C79DD80, MEMORY[0x277CC97A8]);
    sub_20C36D184();
    (*(v6 + 8))(v8, v5);
    (*(v16 + 32))(v11, v21, v3);
    sub_20C307F0C(v11, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ForYouToastState(uint64_t a1)
{
  result = qword_27C79DD88;
  if (!qword_27C79DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C307EC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20C36C144();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C307F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouToastState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C307F88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DD60, &qword_20C36F3C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C307BBC(v6, v7, v8);
  sub_20C36D374();
  sub_20C36C144();
  sub_20C307EC8(&qword_27C79DD70, MEMORY[0x277CC9790]);
  sub_20C36D234();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20C30811C(uint64_t a1)
{
  result = sub_20C36C144();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C30819C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DD98;
  if (!qword_27C79DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DD98);
  }

  return result;
}

unint64_t sub_20C3081F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DDA0;
  if (!qword_27C79DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DDA0);
  }

  return result;
}

unint64_t sub_20C30824C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DDA8;
  if (!qword_27C79DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DDA8);
  }

  return result;
}

unint64_t sub_20C3082A0(char a1)
{
  result = 0x79536C65636E6163;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000017;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6F5464656C696166;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x646564616F6CLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 13:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E79537472617473;
      break;
    case 14:
      result = 0x4164694477656976;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_20C30846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A84C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3084A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A84C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3084F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A7F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A7F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A7A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3085A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A7A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3085E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C30A940(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C30861C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A198(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A198(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A6FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3086D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A6FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72656767697274 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3087AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A654(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3087E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A654(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000020C377D00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20C36D264();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20C3088D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A600(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A600(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20C36D264();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20C3089FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A534(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A534(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_20C308A74()
{
  v1 = 0x64496F636572;
  v2 = 0x65736E6F70736572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C308B04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C30ADF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C308B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A4E0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A4E0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A48C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A48C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A3E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A3E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A390(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A390(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A33C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A33C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A2E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A2E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C308E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A240(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A240(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C308EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A1EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C308F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30A1EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouAction.encode(to:)(void *a1)
{
  v2 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDB0, &qword_20C36F580);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v88 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDB8, &qword_20C36F588);
  v114 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v88 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDC0, &qword_20C36F590);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDC8, &qword_20C36F598);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v88 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDD0, &qword_20C36F5A0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v88 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDD8, &qword_20C36F5A8);
  v112 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v88 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDE0, &qword_20C36F5B0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v88 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDE8, &qword_20C36F5B8);
  v113 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v88 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDF0, &qword_20C36F5C0);
  v111 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v88 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DDF8, &qword_20C36F5C8);
  v110 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v88 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE00, &qword_20C36F5D0);
  v118 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE08, &qword_20C36F5D8);
  v116 = *(v15 - 8);
  v117 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE10, &qword_20C36F5E0);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE18, &qword_20C36F5E8);
  v115 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE20, &qword_20C36F5F0);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v88 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DE28, &qword_20C36F5F8);
  v131 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v88 - v24;
  v26 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C30A198(v26, v27, v28);
  v132 = v25;
  v29 = sub_20C36D374();
  v32 = *v2;
  v33 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v34 = *(v2 + 1);
  v35 = *(v2 + 2);
  v36 = v2[40];
  v37 = v32 | (v33 << 8);
  if (v36 <= 3)
  {
    v126 = v19;
    v47 = v127;
    v48 = v128;
    v49 = v129;
    v50 = v130;
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        LOBYTE(v134) = 4;
        sub_20C30A654(v29, v30, v31);
        v56 = v23;
        v57 = v132;
        v58 = sub_20C36D1B4();
        LOBYTE(v134) = v32;
        sub_20C30A6A8(v58, v59, v60);
        sub_20C36D234();
        (*(v118 + 8))(v47, v48);
        return (*(v131 + 8))(v57, v56);
      }

      else
      {
        LOBYTE(v134) = 5;
        sub_20C30A600(v29, v30, v31);
        v128 = v23;
        v76 = v132;
        sub_20C36D1B4();
        sub_20C36D1F4();
        (*(v110 + 8))(v49, v50);
        return (*(v131 + 8))(v76, v128);
      }
    }

    else
    {
      if (v36)
      {
        LOBYTE(v134) = 3;
        v70 = v34;
        v71 = v35;
        sub_20C30A6FC(v29, v30, v31);
        v51 = v132;
        v72 = sub_20C36D1B4();
        LOBYTE(v134) = v32;
        HIBYTE(v134) = BYTE6(v33);
        *(&v134 + 5) = WORD2(v33);
        *(&v134 + 1) = v33;
        v135 = v70;
        v136 = v71;
        sub_20C30A750(v72, v73, v74);
        v75 = v117;
        sub_20C36D234();
        (*(v116 + 8))(v17, v75);
      }

      else
      {
        LOBYTE(v134) = 1;
        sub_20C30A7F8(v29, v30, v31);
        v51 = v132;
        v52 = sub_20C36D1B4();
        LOBYTE(v134) = v32 & 1;
        sub_20C304D0C(v52, v53, v54);
        v55 = v126;
        sub_20C36D234();
        (*(v115 + 8))(v21, v55);
      }

      return (*(v131 + 8))(v51, v23);
    }
  }

  else
  {
    v38 = *(v2 + 3);
    v39 = *(v2 + 4);
    if (v36 <= 5)
    {
      v62 = v32 | (v33 << 8);
      v63 = v23;
      v64 = v132;
      if (v36 == 4)
      {
        LOBYTE(v134) = 6;
        sub_20C30A534(v29, v30, v31);
        v65 = v119;
        sub_20C36D1B4();
        v134 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
        sub_20C30A588(&qword_2810E8BF8, sub_20C3028E4, MEMORY[0x277D83948]);
        v66 = v120;
        sub_20C36D234();
        (*(v111 + 8))(v65, v66);
      }

      else
      {
        LOBYTE(v134) = 7;
        sub_20C30A4E0(v29, v30, v31);
        v79 = v123;
        sub_20C36D1B4();
        LOBYTE(v134) = 0;
        v80 = v124;
        v81 = v133;
        sub_20C36D1F4();
        if (!v81)
        {
          LOBYTE(v134) = 1;
          sub_20C36D214();
          LOBYTE(v134) = 2;
          sub_20C36D214();
          v134 = v39;
          v137 = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
          sub_20C30DA0C(&qword_2810E8C00, sub_20C3029B0, MEMORY[0x277D83948]);
          sub_20C36D234();
        }

        (*(v113 + 8))(v79, v80);
      }

      return (*(v131 + 8))(v64, v63);
    }

    else
    {
      v40 = v132;
      if (v36 == 6)
      {
        LOBYTE(v134) = 9;
        sub_20C30A3E4(v29, v30, v31);
        v41 = v121;
        v67 = sub_20C36D1B4();
        LOBYTE(v134) = v32;
        sub_20C30A438(v67, v68, v69);
        v45 = v122;
        sub_20C36D234();
        v46 = &v138;
        goto LABEL_14;
      }

      if (v36 == 7)
      {
        LOBYTE(v134) = 13;
        sub_20C30A240(v29, v30, v31);
        v41 = v125;
        v42 = sub_20C36D1B4();
        LOBYTE(v134) = v32;
        sub_20C30A294(v42, v43, v44);
        v45 = v126;
        sub_20C36D234();
        v46 = &v139;
LABEL_14:
        (*(*(v46 - 32) + 8))(v41, v45);
        return (*(v131 + 8))(v40, v23);
      }

      v77 = v35 | v34 | v38 | v39;
      if (v77 | v37)
      {
        if (v37 != 1 || v77)
        {
          if (v37 != 2 || v77)
          {
            if (v37 != 3 || v77)
            {
              if (v37 != 4 || v77)
              {
                if (v37 != 5 || v77)
                {
                  LOBYTE(v134) = 14;
                  sub_20C30A1EC(v29, v30, v31);
                  v87 = v92;
                  sub_20C36D1B4();
                  (*(v93 + 8))(v87, v94);
                }

                else
                {
                  LOBYTE(v134) = 12;
                  sub_20C30A2E8(v29, v30, v31);
                  v86 = v89;
                  sub_20C36D1B4();
                  (*(v90 + 8))(v86, v91);
                }
              }

              else
              {
                LOBYTE(v134) = 11;
                sub_20C30A33C(v29, v30, v31);
                v85 = v95;
                sub_20C36D1B4();
                (*(v96 + 8))(v85, v97);
              }
            }

            else
            {
              LOBYTE(v134) = 10;
              sub_20C30A390(v29, v30, v31);
              v84 = v98;
              sub_20C36D1B4();
              (*(v99 + 8))(v84, v100);
            }
          }

          else
          {
            LOBYTE(v134) = 8;
            sub_20C30A48C(v29, v30, v31);
            v83 = v101;
            sub_20C36D1B4();
            (*(v102 + 8))(v83, v103);
          }

          return (*(v131 + 8))(v40, v23);
        }

        LOBYTE(v134) = 2;
        sub_20C30A7A4(v29, v30, v31);
        v78 = v104;
        sub_20C36D1B4();
        (*(v105 + 8))(v78, v106);
      }

      else
      {
        LOBYTE(v134) = 0;
        sub_20C30A84C(v29, v30, v31);
        v82 = v107;
        sub_20C36D1B4();
        (*(v108 + 8))(v82, v109);
      }

      return (*(v131 + 8))(v40, v23);
    }
  }
}

unint64_t sub_20C30A198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9238[0];
  if (!qword_2810E9238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E9238);
  }

  return result;
}

unint64_t sub_20C30A1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91F0;
  if (!qword_2810E91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91F0);
  }

  return result;
}

unint64_t sub_20C30A240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE30;
  if (!qword_27C79DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE30);
  }

  return result;
}

unint64_t sub_20C30A294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE38;
  if (!qword_27C79DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE38);
  }

  return result;
}

unint64_t sub_20C30A2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE40;
  if (!qword_27C79DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE40);
  }

  return result;
}

unint64_t sub_20C30A33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE48;
  if (!qword_27C79DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE48);
  }

  return result;
}

unint64_t sub_20C30A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9160;
  if (!qword_2810E9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9160);
  }

  return result;
}

unint64_t sub_20C30A3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE50;
  if (!qword_27C79DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE50);
  }

  return result;
}

unint64_t sub_20C30A438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE58;
  if (!qword_27C79DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE58);
  }

  return result;
}

unint64_t sub_20C30A48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE60;
  if (!qword_27C79DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE60);
  }

  return result;
}

unint64_t sub_20C30A4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9220;
  if (!qword_2810E9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9220);
  }

  return result;
}

unint64_t sub_20C30A534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9148;
  if (!qword_2810E9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9148);
  }

  return result;
}

uint64_t sub_20C30A588(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBD8, &qword_20C375B70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C30A600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91B0;
  if (!qword_2810E91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91B0);
  }

  return result;
}

unint64_t sub_20C30A654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9120;
  if (!qword_2810E9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9120);
  }

  return result;
}

unint64_t sub_20C30A6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8CB8;
  if (!qword_2810E8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CB8);
  }

  return result;
}

unint64_t sub_20C30A6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9208;
  if (!qword_2810E9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9208);
  }

  return result;
}

unint64_t sub_20C30A750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8DE8;
  if (!qword_2810E8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DE8);
  }

  return result;
}

unint64_t sub_20C30A7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91C8;
  if (!qword_2810E91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91C8);
  }

  return result;
}

unint64_t sub_20C30A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE68;
  if (!qword_27C79DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE68);
  }

  return result;
}

unint64_t sub_20C30A84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9178;
  if (!qword_2810E9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9178);
  }

  return result;
}

double ForYouAction.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20C30AF6C(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_20C30A8E4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20C30AF6C(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_20C30A940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000020C377BA0 == a2;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377BC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79536C65636E6163 && a2 == 0xEF72656D6954636ELL || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377BE0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377C00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C377C20 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377C40 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377C60 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C377C80 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377CA0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E79537472617473 && a2 == 0xEE0072656D695463 || (sub_20C36D264() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377CC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 14;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_20C30ADF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496F636572 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377B00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEF656D6954646E45 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20C30AF6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v166 = a2;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEB8, &qword_20C370780);
  v154 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v124 - v3;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEC0, &qword_20C370788);
  v156 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v165 = &v124 - v4;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEC8, &qword_20C370790);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v164 = &v124 - v5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DED0, &qword_20C370798);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v163 = &v124 - v6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DED8, &qword_20C3707A0);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v161 = &v124 - v7;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEE0, &qword_20C3707A8);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v162 = &v124 - v8;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEE8, &qword_20C3707B0);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v159 = &v124 - v9;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEF0, &qword_20C3707B8);
  v153 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v160 = &v124 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DEF8, &qword_20C3707C0);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v169 = &v124 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF00, &qword_20C3707C8);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v168 = &v124 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF08, &qword_20C3707D0);
  v137 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v158 = &v124 - v13;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF10, &qword_20C3707D8);
  v135 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v157 = &v124 - v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF18, &qword_20C3707E0);
  v131 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v167 = &v124 - v15;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF20, &qword_20C3707E8);
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v17 = &v124 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF28, &qword_20C3707F0);
  v129 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v124 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF30, &qword_20C3707F8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v124 - v23;
  v25 = a1[3];
  v173 = a1;
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_20C30A198(v26, v27, v28);
  v29 = v172;
  sub_20C36D364();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v173);
  }

  v126 = v20;
  v125 = v18;
  v30 = v167;
  v127 = v17;
  v32 = v168;
  v31 = v169;
  v33 = v170;
  v128 = 0;
  v34 = v171;
  v172 = v22;
  v35 = sub_20C36D194();
  v36 = (2 * *(v35 + 16)) | 1;
  v177 = v35;
  v178 = v35 + 32;
  v179 = 0;
  v180 = v36;
  v37 = sub_20C3295C4();
  if (v179 != v180 >> 1)
  {
LABEL_6:
    v48 = sub_20C36D064();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v50 = &type metadata for ForYouAction;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
LABEL_7:
    (*(v172 + 8))(v24, v21);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v173);
  }

  switch(v37)
  {
    case 0:
      LOBYTE(v174) = 0;
      sub_20C30A84C(v37, v38, v39);
      v40 = v126;
      v41 = v128;
      sub_20C36D0F4();
      if (v41)
      {
        goto LABEL_7;
      }

      (*(v129 + 8))(v40, v125);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 8;
      goto LABEL_37;
    case 1:
      LOBYTE(v174) = 1;
      sub_20C30A7F8(v37, v38, v39);
      v86 = v127;
      v87 = v128;
      v88 = sub_20C36D0F4();
      if (v87)
      {
        goto LABEL_7;
      }

      v91 = v24;
      sub_20C304FCC(v88, v89, v90);
      v92 = v134;
      sub_20C36D184();
      v93 = v172;
      v94 = v173;
      (*(v132 + 8))(v86, v92);
      (*(v93 + 8))(v91, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 0;
      v42 = v174;
      v46 = 0;
      v121 = v94;
      break;
    case 2:
      LOBYTE(v174) = 2;
      sub_20C30A7A4(v37, v38, v39);
      v74 = v128;
      sub_20C36D0F4();
      if (v74)
      {
        goto LABEL_7;
      }

      (*(v131 + 8))(v30, v130);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 8;
      v46 = 0;
      v42 = 1;
      goto LABEL_37;
    case 3:
      LOBYTE(v174) = 3;
      sub_20C30A6FC(v37, v38, v39);
      v75 = v157;
      v76 = v128;
      v77 = sub_20C36D0F4();
      if (v76)
      {
        goto LABEL_7;
      }

      v80 = v21;
      sub_20C30DAD8(v77, v78, v79);
      v81 = v133;
      sub_20C36D184();
      v82 = v172;
      v63 = v173;
      (*(v135 + 8))(v75, v81);
      (*(v82 + 8))(v24, v80);
      swift_unknownObjectRelease();
      v45 = 0;
      v42 = v174;
      v43 = v175;
      v47 = 1;
      v46 = 0;
      v44 = v176;
      goto LABEL_39;
    case 4:
      LOBYTE(v174) = 4;
      sub_20C30A654(v37, v38, v39);
      v55 = v158;
      v56 = v128;
      v57 = sub_20C36D0F4();
      if (v56)
      {
        goto LABEL_7;
      }

      v60 = v21;
      sub_20C30DA84(v57, v58, v59);
      v61 = v136;
      sub_20C36D184();
      v62 = v172;
      v63 = v173;
      (*(v137 + 8))(v55, v61);
      (*(v62 + 8))(v24, v60);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v174;
      v47 = 2;
      goto LABEL_38;
    case 5:
      LOBYTE(v174) = 5;
      sub_20C30A600(v37, v38, v39);
      v95 = v32;
      v96 = v128;
      sub_20C36D0F4();
      if (v96)
      {
        goto LABEL_7;
      }

      v97 = v21;
      v98 = v138;
      v99 = sub_20C36D144();
      v63 = v173;
      v42 = v99;
      v43 = v122;
      (*(v139 + 8))(v95, v98);
      (*(v172 + 8))(v24, v97);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v47 = 3;
      goto LABEL_38;
    case 6:
      LOBYTE(v174) = 6;
      sub_20C30A534(v37, v38, v39);
      v108 = v31;
      v109 = v128;
      sub_20C36D0F4();
      if (v109)
      {
        goto LABEL_7;
      }

      v110 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBD8, &qword_20C375B70);
      sub_20C30A588(&qword_27C79DBF0, sub_20C302E30, MEMORY[0x277D83978]);
      v111 = v140;
      sub_20C36D184();
      v63 = v173;
      (*(v141 + 8))(v108, v111);
      (*(v172 + 8))(v24, v110);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v174;
      v47 = 4;
      goto LABEL_38;
    case 7:
      LOBYTE(v174) = 7;
      sub_20C30A4E0(v37, v38, v39);
      v83 = v160;
      v84 = v128;
      sub_20C36D0F4();
      if (v84)
      {
        goto LABEL_7;
      }

      LOBYTE(v174) = 0;
      v85 = v150;
      v42 = sub_20C36D144();
      v43 = v116;
      LOBYTE(v174) = 1;
      sub_20C36D164();
      v117 = v153;
      v119 = v118;
      LOBYTE(v174) = 2;
      sub_20C36D164();
      v46 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
      v181 = 3;
      sub_20C30DA0C(&qword_27C79DC00, sub_20C302E84, MEMORY[0x277D83978]);
      sub_20C36D184();
      (*(v117 + 8))(v83, v85);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v45 = v174;
      v44 = v119;
      v47 = 5;
      goto LABEL_37;
    case 8:
      LOBYTE(v174) = 8;
      sub_20C30A48C(v37, v38, v39);
      v114 = v159;
      v115 = v128;
      sub_20C36D0F4();
      if (v115)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v114, v143);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 8;
      v46 = 0;
      v42 = 2;
      goto LABEL_37;
    case 9:
      LOBYTE(v174) = 9;
      sub_20C30A3E4(v37, v38, v39);
      v66 = v162;
      v67 = v128;
      v68 = sub_20C36D0F4();
      if (v67)
      {
        goto LABEL_7;
      }

      v71 = v21;
      sub_20C30D9B8(v68, v69, v70);
      v72 = v147;
      sub_20C36D184();
      v73 = v172;
      v63 = v173;
      (*(v145 + 8))(v66, v72);
      (*(v73 + 8))(v24, v71);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v174;
      v47 = 6;
      goto LABEL_38;
    case 10:
      LOBYTE(v174) = 10;
      sub_20C30A390(v37, v38, v39);
      v112 = v161;
      v113 = v128;
      sub_20C36D0F4();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v144 + 8))(v112, v146);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 8;
      v46 = 0;
      v42 = 3;
      goto LABEL_37;
    case 11:
      LOBYTE(v174) = 11;
      sub_20C30A33C(v37, v38, v39);
      v53 = v163;
      v54 = v128;
      sub_20C36D0F4();
      if (v54)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v53, v149);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 8;
      v46 = 0;
      v42 = 4;
      goto LABEL_37;
    case 12:
      LOBYTE(v174) = 12;
      sub_20C30A2E8(v37, v38, v39);
      v64 = v164;
      v65 = v128;
      sub_20C36D0F4();
      if (v65)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v64, v152);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 8;
      v46 = 0;
      v42 = 5;
      goto LABEL_37;
    case 13:
      LOBYTE(v174) = 13;
      sub_20C30A240(v37, v38, v39);
      v100 = v165;
      v101 = v128;
      v102 = sub_20C36D0F4();
      if (v101)
      {
        goto LABEL_7;
      }

      v105 = v21;
      sub_20C30D964(v102, v103, v104);
      v106 = v155;
      sub_20C36D184();
      v107 = v172;
      v63 = v173;
      (*(v156 + 8))(v100, v106);
      (*(v107 + 8))(v24, v105);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v174;
      v47 = 7;
LABEL_38:
      v46 = 0;
LABEL_39:
      v121 = v63;
      break;
    case 14:
      LOBYTE(v174) = 14;
      sub_20C30A1EC(v37, v38, v39);
      v52 = v128;
      sub_20C36D0F4();
      if (v52)
      {
        goto LABEL_7;
      }

      (*(v154 + 8))(v33, v34);
      (*(v172 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 8;
      v46 = 0;
      v42 = 6;
LABEL_37:
      v121 = v173;
      break;
    default:
      goto LABEL_6;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v121);
  v123 = v166;
  *v166 = v42;
  v123[1] = v43;
  v123[2] = v44;
  v123[3] = v46;
  v123[4] = v45;
  *(v123 + 40) = v47;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou0bC6ActionO(uint64_t a1)
{
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 40) & 0xF;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C30C840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C30C888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C30C8D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 8;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ForYouAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C30CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE70;
  if (!qword_27C79DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE70);
  }

  return result;
}

unint64_t sub_20C30CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE78;
  if (!qword_27C79DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE78);
  }

  return result;
}

unint64_t sub_20C30CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE80;
  if (!qword_27C79DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE80);
  }

  return result;
}

unint64_t sub_20C30CC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE88;
  if (!qword_27C79DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE88);
  }

  return result;
}

unint64_t sub_20C30CCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE90;
  if (!qword_27C79DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE90);
  }

  return result;
}

unint64_t sub_20C30CD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DE98;
  if (!qword_27C79DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DE98);
  }

  return result;
}

unint64_t sub_20C30CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DEA0;
  if (!qword_27C79DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DEA0);
  }

  return result;
}

unint64_t sub_20C30CDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DEA8;
  if (!qword_27C79DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DEA8);
  }

  return result;
}

unint64_t sub_20C30CE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DEB0;
  if (!qword_27C79DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DEB0);
  }

  return result;
}

unint64_t sub_20C30CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9168;
  if (!qword_2810E9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9168);
  }

  return result;
}

unint64_t sub_20C30CEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9170;
  if (!qword_2810E9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9170);
  }

  return result;
}

unint64_t sub_20C30CF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9128;
  if (!qword_2810E9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9128);
  }

  return result;
}

unint64_t sub_20C30CF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9130;
  if (!qword_2810E9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9130);
  }

  return result;
}

unint64_t sub_20C30CFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91B8;
  if (!qword_2810E91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91B8);
  }

  return result;
}

unint64_t sub_20C30D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91C0;
  if (!qword_2810E91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91C0);
  }

  return result;
}

unint64_t sub_20C30D078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91F8;
  if (!qword_2810E91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91F8);
  }

  return result;
}

unint64_t sub_20C30D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9200;
  if (!qword_2810E9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9200);
  }

  return result;
}

unint64_t sub_20C30D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9110;
  if (!qword_2810E9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9110);
  }

  return result;
}

unint64_t sub_20C30D180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9118;
  if (!qword_2810E9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9118);
  }

  return result;
}

unint64_t sub_20C30D1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91A0;
  if (!qword_2810E91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91A0);
  }

  return result;
}

unint64_t sub_20C30D230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91A8;
  if (!qword_2810E91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91A8);
  }

  return result;
}

unint64_t sub_20C30D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9138;
  if (!qword_2810E9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9138);
  }

  return result;
}

unint64_t sub_20C30D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9140;
  if (!qword_2810E9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9140);
  }

  return result;
}

unint64_t sub_20C30D338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9210;
  if (!qword_2810E9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9210);
  }

  return result;
}

unint64_t sub_20C30D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9218;
  if (!qword_2810E9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9218);
  }

  return result;
}

unint64_t sub_20C30D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9190;
  if (!qword_2810E9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9190);
  }

  return result;
}

unint64_t sub_20C30D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9198;
  if (!qword_2810E9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9198);
  }

  return result;
}

unint64_t sub_20C30D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9100;
  if (!qword_2810E9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9100);
  }

  return result;
}

unint64_t sub_20C30D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9108;
  if (!qword_2810E9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9108);
  }

  return result;
}

unint64_t sub_20C30D548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9150;
  if (!qword_2810E9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9150);
  }

  return result;
}

unint64_t sub_20C30D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9158;
  if (!qword_2810E9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9158);
  }

  return result;
}

unint64_t sub_20C30D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9180;
  if (!qword_2810E9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9180);
  }

  return result;
}

unint64_t sub_20C30D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9188;
  if (!qword_2810E9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9188);
  }

  return result;
}

unint64_t sub_20C30D6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91D0;
  if (!qword_2810E91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91D0);
  }

  return result;
}

unint64_t sub_20C30D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91D8;
  if (!qword_2810E91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91D8);
  }

  return result;
}

unint64_t sub_20C30D758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E90F0;
  if (!qword_2810E90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90F0);
  }

  return result;
}

unint64_t sub_20C30D7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E90F8;
  if (!qword_2810E90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90F8);
  }

  return result;
}

unint64_t sub_20C30D808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91E0;
  if (!qword_2810E91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91E0);
  }

  return result;
}

unint64_t sub_20C30D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E91E8;
  if (!qword_2810E91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E91E8);
  }

  return result;
}

unint64_t sub_20C30D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9228;
  if (!qword_2810E9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9228);
  }

  return result;
}

unint64_t sub_20C30D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E9230;
  if (!qword_2810E9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9230);
  }

  return result;
}

unint64_t sub_20C30D964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF38;
  if (!qword_27C79DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF38);
  }

  return result;
}

unint64_t sub_20C30D9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF40;
  if (!qword_27C79DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF40);
  }

  return result;
}

uint64_t sub_20C30DA0C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79DBE0, &qword_20C36EBE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C30DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF48;
  if (!qword_27C79DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF48);
  }

  return result;
}

unint64_t sub_20C30DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF50;
  if (!qword_27C79DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF50);
  }

  return result;
}

uint64_t sub_20C30DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E22C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30DB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E22C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C30DBB8()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_20C30DC20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C30E350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C30DC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E130(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30DC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E130(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C30DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E1D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30DCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E1D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C30DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E184(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30E184(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t NetworkConditions.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF58, &qword_20C370800);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF60, &qword_20C370808);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF68, &qword_20C370810);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DF70, &qword_20C370818);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C30E130(v15, v16, v17);
  v18 = sub_20C36D374();
  v21 = (v12 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = 1;
      sub_20C30E1D8(v18, v19, v20);
      sub_20C36D1B4();
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      v34 = 2;
      sub_20C30E184(v18, v19, v20);
      v22 = v28;
      sub_20C36D1B4();
      (*(v29 + 8))(v22, v30);
    }
  }

  else
  {
    v32 = 0;
    sub_20C30E22C(v18, v19, v20);
    sub_20C36D1B4();
    (*(v25 + 8))(v10, v8);
  }

  return (*v21)(v14, v11);
}

unint64_t sub_20C30E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF78;
  if (!qword_27C79DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF78);
  }

  return result;
}

unint64_t sub_20C30E184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF80;
  if (!qword_27C79DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF80);
  }

  return result;
}

unint64_t sub_20C30E1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF88;
  if (!qword_27C79DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF88);
  }

  return result;
}

unint64_t sub_20C30E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF90;
  if (!qword_27C79DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF90);
  }

  return result;
}

uint64_t sub_20C30E298@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C30E474(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}