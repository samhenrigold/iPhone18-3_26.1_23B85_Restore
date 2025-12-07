uint64_t sub_2743F36A0()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2743F36D0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F3708()
{

  return swift_deallocObject();
}

BOOL sub_2743F3740(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2743F3770()
{
  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_12();
  }

  else
  {
    OUTLINED_FUNCTION_11();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2743F37C4()
{
  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_12();
  }

  else
  {
    OUTLINED_FUNCTION_11();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743F3818(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_61())
  {
    sub_27463A12C();
    OUTLINED_FUNCTION_43();

    return sub_27463965C();
  }

  else
  {
    sub_27463972C();
    OUTLINED_FUNCTION_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    OUTLINED_FUNCTION_22();
    sub_27463965C();
    sub_27463C0AC();
    OUTLINED_FUNCTION_13();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_27463972C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    OUTLINED_FUNCTION_43();
    return sub_27463965C();
  }
}

uint64_t sub_2743F3934(uint64_t a1)
{
  if (OUTLINED_FUNCTION_61())
  {
    sub_27463A12C();
    OUTLINED_FUNCTION_63();
  }

  else
  {
    sub_27463972C();
    OUTLINED_FUNCTION_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    OUTLINED_FUNCTION_63();
    sub_27463C0AC();
    OUTLINED_FUNCTION_13();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_27463972C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    sub_27463965C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2743F3B18@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_27440C9CC(a2);
  *a1 = result;
  return result;
}

void sub_2743F3BC4(uint64_t a2@<X8>)
{
  sub_2743F3BF8();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2743F3C74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_46(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2743F3C8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2743F3CB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_46(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VelocityFilter(uint64_t result, int a2, int a3)
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

uint64_t sub_2743F3CFC()
{

  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_2743F3D30()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743F3DA8()
{
  v1 = sub_274638CDC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2743F3E68()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F3E9C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F3EDC()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F3F10(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_2743F3FF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2743F40D4()
{
  v1 = (type metadata accessor for WorkflowOutputPreviewView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[8];
  sub_2746389FC();
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2743F4278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274639A6C();
  *a1 = result & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2743F439C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v15[0] = *(v0 + 32);
  v15[1] = v2;
  v3 = *(v0 + 80);
  v15[2] = *(v0 + 64);
  v15[3] = v3;
  v15[4] = *(v0 + 96);
  v16 = v1;
  v4 = type metadata accessor for ListParameterListContentView(0, v15);
  OUTLINED_FUNCTION_11_0();
  v6 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v6;

  sub_2743F459C(*(v7 + 88), *(v7 + 96));
  if (*(v0 + v6 + 152))
  {
    if (*(v7 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1((v7 + 112));
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v7 + 160), *(v7 + 168));
  v8 = v4[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_86(v7 + v8))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  v11 = OUTLINED_FUNCTION_68(v7 + v4[39]);
  j__swift_release(v11);
  v12 = v4[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
  OUTLINED_FUNCTION_7();
  (*(v13 + 8))(v7 + v12);
  OUTLINED_FUNCTION_90();
  return swift_deallocObject();
}

uint64_t sub_2743F45D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2743F45E8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

__n128 sub_2743F4650(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_2743F4708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 152);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
      v10 = *(a3 + 160);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2743F47EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 152);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490, &qword_274649180);
      v10 = *(a4 + 160);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

double sub_2743F4930@<D0>(uint64_t a1@<X8>)
{
  sub_2746398BC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2743F49D0()
{

  sub_2743F459C(*(v0 + 136), *(v0 + 144));
  sub_2743F45E8(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 232))
  {
    if (*(v0 + 216))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 192));
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v0 + 240), *(v0 + 248));

  return swift_deallocObject();
}

uint64_t sub_2743F4A70()
{

  return swift_deallocObject();
}

void sub_2743F4B3C(uint64_t a1)
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v50 = *v2;
  v51 = v2[1];
  v4 = v2[2];
  v46 = v2[3];
  v5 = v2[5];
  v45 = v2[4];
  v48 = v2[6];
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0, &qword_2746494F8);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_274639DEC();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_5_1();
  WitnessTable = swift_getWitnessTable();
  sub_27463ADBC();
  OUTLINED_FUNCTION_67();
  v6 = sub_274639EFC();
  OUTLINED_FUNCTION_34_0();
  v53 = v4;
  v54 = v6;
  v56 = sub_274433D44(v7);
  v47 = *(v3 + 7);
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_52_0();
  sub_27463965C();
  sub_27463965C();
  v8 = OUTLINED_FUNCTION_51_0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_50_0();
  v74 = OpaqueTypeConformance2;
  v75 = sub_274433D44(v10);
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDF918];
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x277CDFC60];
  v53 = v50;
  v54 = v51;
  WitnessTable = v5;
  v56 = v1;
  v57 = v48;
  v58 = v8;
  v59 = swift_getWitnessTable();
  type metadata accessor for StackList(255, &v53);
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8, &unk_274649500);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_52_0();
  sub_27463965C();
  sub_27463965C();
  v11 = sub_274430088();
  OUTLINED_FUNCTION_49_0();
  v12 = swift_getWitnessTable();
  v68 = v11;
  v69 = v12;
  OUTLINED_FUNCTION_9_0();
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_48_0();
  v14 = sub_274434E04(v13);
  v66 = v44;
  v67 = v14;
  v64 = swift_getWitnessTable();
  v15 = MEMORY[0x277CDF918];
  v65 = MEMORY[0x277CDF918];
  v62 = swift_getWitnessTable();
  v63 = v15;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463914C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  sub_274639DEC();
  sub_27463AC1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6E0, &unk_274649510);
  OUTLINED_FUNCTION_52_0();
  v42 = sub_27463965C();
  v43 = type metadata accessor for ListParameterOutlineModalEditor(255, v50, v48, v16);
  v53 = v50;
  v54 = v51;
  WitnessTable = v4;
  v56 = v46;
  v57 = v45;
  v58 = v5;
  v59 = v48;
  v60 = v47;
  v61 = *(v3 + 9);
  v17 = type metadata accessor for ListParameterListContentView(255, &v53);
  sub_274639F1C();
  OUTLINED_FUNCTION_31_0();
  v18 = swift_getWitnessTable();
  v53 = v17;
  v54 = v50;
  v19 = MEMORY[0x277CDE0D0];
  WitnessTable = v18;
  v56 = MEMORY[0x277CDE0D0];
  OUTLINED_FUNCTION_46_0();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = v17;
  v54 = v50;
  WitnessTable = v18;
  v56 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_274412BBC();
  v23 = MEMORY[0x277D837D0];
  v53 = OpaqueTypeMetadata2;
  v54 = MEMORY[0x277D837D0];
  WitnessTable = v21;
  v56 = v22;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  v53 = OpaqueTypeMetadata2;
  v54 = v23;
  WitnessTable = v21;
  v56 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  OUTLINED_FUNCTION_44_0();
  v29 = sub_274434E04(v28);
  v53 = v27;
  v54 = v29;
  OUTLINED_FUNCTION_43_0();
  v30 = swift_getOpaqueTypeConformance2();
  v53 = v24;
  v54 = v25;
  WitnessTable = v26;
  v56 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v53 = v24;
  v54 = v25;
  WitnessTable = v26;
  v56 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v53 = v31;
  v54 = v32;
  swift_getOpaqueTypeMetadata2();
  v53 = v31;
  v54 = v32;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22();
  v33 = sub_2746394FC();
  v49 = sub_27463A11C();
  OUTLINED_FUNCTION_42_0();
  *&v47 = swift_getWitnessTable();
  OUTLINED_FUNCTION_41_0();
  v35 = sub_274433D44(v34);
  v53 = v33;
  v54 = v49;
  WitnessTable = v47;
  v56 = v35;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VariableEditorModifier(255);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_67();
  sub_27463965C();
  v52 = sub_27463C0AC();
  OUTLINED_FUNCTION_40_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_0();
  sub_274434E04(v36);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_0();
  sub_274434E04(v37);
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_38_0();
  v39 = swift_getWitnessTable();
  v53 = v33;
  v54 = v49;
  WitnessTable = v47;
  v56 = v35;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_37_0();
  sub_274433D44(v40);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  v41 = swift_getWitnessTable();
  v53 = v42;
  v54 = v43;
  WitnessTable = v52;
  v56 = v38;
  v57 = v39;
  v58 = v41;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2743F53C8(__int128 *a1)
{
  v2 = *(a1 + 2);
  v17 = *a1;
  OUTLINED_FUNCTION_36_0();
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  v3 = sub_27463B92C();
  v16 = a1[2];
  v4 = *(a1 + 4);
  OUTLINED_FUNCTION_69();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = v17;
  v20 = v2;
  v21 = v16;
  type metadata accessor for StackListRow(255, &v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  OUTLINED_FUNCTION_67();
  v6 = sub_27463965C();
  OUTLINED_FUNCTION_6_0();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v19 = v3;
  *(&v19 + 1) = AssociatedTypeWitness;
  v20 = v6;
  *&v21 = WitnessTable;
  *(&v21 + 1) = AssociatedConformanceWitness;
  sub_27463AF9C();
  OUTLINED_FUNCTION_30();
  sub_27463965C();
  v9 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for DismissDeleteConfirmationModifier(v9, v10, v4, v11);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30();
  sub_27463AE6C();
  OUTLINED_FUNCTION_30();
  v12 = sub_27463913C();
  OUTLINED_FUNCTION_30();
  v13 = sub_27463965C();
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_0();
  v14 = swift_getWitnessTable();
  *&v19 = v12;
  *(&v19 + 1) = v13;
  v20 = v18;
  *&v21 = v14;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  *&v19 = v12;
  *(&v19 + 1) = v13;
  v20 = v18;
  *&v21 = v14;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F5674()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A908, &qword_274649770);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F56D4()
{
  v4 = *(v0 + 48);
  v25 = *(v0 + 32);
  v26 = v4;
  v27 = *(v0 + 56);
  v24 = v27;
  v5 = type metadata accessor for StackListRow(0, &v25);
  OUTLINED_FUNCTION_11_0();
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_98();

  OUTLINED_FUNCTION_76(v8, v9, v10, v11, v12, v13, v14, v15, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v17 = sub_27463AF4C();
  if (!OUTLINED_FUNCTION_83(v17))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v18 + 8))(v2 + v3, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_98();

  v19 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_86(v2 + v19))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v20 + 8))(v2 + v19, AssociatedTypeWitness);
  }

  v21 = OUTLINED_FUNCTION_68(v0 + v7 + *(v5 + 96));
  sub_2743F45E8(v21, v22);
  return swift_deallocObject();
}

uint64_t sub_2743F58A8()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A898, &qword_274649720);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F5908(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A898, &qword_274649720);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2743F5980()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_64();
  v5 = type metadata accessor for DismissDeleteConfirmationModifier(v2, v3, v1, v4);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v9 = *(sub_27463AF4C() + 32);
  if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v10 + 8))(v7 + v9, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_90();

  return swift_deallocObject();
}

void sub_2743F5AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_96();
  v45 = *(v44 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898, &qword_274649720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0, &qword_274649728);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8, &qword_274649730);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  v46 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for DismissDeleteConfirmationModifier(v46, v47, v45, v48);
  OUTLINED_FUNCTION_62_0();
  sub_27463965C();
  OUTLINED_FUNCTION_36_0();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760, &qword_274649558);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33();
  sub_274434E04(v49);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_0();
  sub_274434E04(v50);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_0();
  sub_274434E04(v51);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8, &qword_274649738);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A8C0, &qword_274649740);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463AE6C();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_95();
}

uint64_t sub_2743F5FA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DismissDeleteConfirmationModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA60, &qword_274649898);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33();
  sub_274434E04(v4);
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F6098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 2;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2743F613C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743F6204()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABE0, &qword_274649AE8);
  OUTLINED_FUNCTION_0_4();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F6268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2743F62BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2743F633C()
{
  OUTLINED_FUNCTION_5_3();
  v0 = sub_274438A28();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6398()
{
  OUTLINED_FUNCTION_5_3();
  v0 = sub_274438B20();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F649C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443A0F0();
  *v0 = result;
  return result;
}

uint64_t sub_2743F64D4()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443A95C();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6520()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443AC4C();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F656C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443AF38();
  *v0 = result;
  return result;
}

uint64_t sub_2743F65BC()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443B22C();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6610()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443B680();
  *v0 = result;
  return result;
}

uint64_t sub_2743F664C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C514();
  *v0 = result;
  return result;
}

uint64_t sub_2743F6678()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443CDC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F66AC()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443D564();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F66F8()
{

  return swift_deallocObject();
}

uint64_t sub_2743F6738()
{

  return swift_deallocObject();
}

uint64_t sub_2743F6770()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463985C();
  *v0 = result;
  return result;
}

uint64_t sub_2743F679C()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27451D5DC();
  *v0 = result;
  return result;
}

uint64_t sub_2743F6A08()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443B4C4();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6B74()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C030();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F6BC8()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C0F0(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_2743F6BF4()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C2B8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F6EFC()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F6F34()
{

  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t sub_2743F6F7C()
{
  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743F6FB8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743F6FF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7040()
{

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2743F7074()
{

  return swift_deallocObject();
}

uint64_t sub_2743F70BC()
{
  OUTLINED_FUNCTION_9_3();

  return swift_deallocObject();
}

uint64_t sub_2743F7118()
{
  OUTLINED_FUNCTION_9_3();

  return swift_deallocObject();
}

uint64_t sub_2743F7174(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v2 = type metadata accessor for PropertyListOutlineContent(255);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2F8, &qword_27464B0C8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D0, &qword_27464B0B8);
  v5 = sub_274448EC8();
  OUTLINED_FUNCTION_0_9();
  v8 = sub_27440CA78(v6, &qword_28094B2F8, &qword_27464B0C8, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D8, &qword_27464B0C0);
  sub_27463A11C();
  OUTLINED_FUNCTION_3_6();
  sub_27440CA78(v9, &qword_28094B2D8, &qword_27464B0C0, v10);
  OUTLINED_FUNCTION_2_7();
  sub_2744493A4(v11, v12, MEMORY[0x277CDE298]);
  OUTLINED_FUNCTION_1_7();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = &type metadata for PropertyListItem;
  v19 = v2;
  v20 = v1;
  v21 = v3;
  v22 = v15;
  v23 = v4;
  v24 = v5;
  v25 = v16;
  v26 = v8;
  v27 = v17;
  v28 = OpaqueTypeConformance2;
  type metadata accessor for ListParameterLayoutView(255, &v18);
  v18 = &type metadata for PropertyListItem;
  v19 = v2;
  v20 = v1;
  v21 = MEMORY[0x277CE1428];
  v22 = v15;
  v23 = v4;
  v24 = v5;
  v25 = v16;
  v26 = MEMORY[0x277CE1410];
  v27 = v17;
  v28 = OpaqueTypeConformance2;
  type metadata accessor for ListParameterLayoutView(255, &v18);
  sub_274639DEC();
  OUTLINED_FUNCTION_4_4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F7398()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743F73D0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7490()
{

  return swift_deallocObject();
}

uint64_t sub_2743F74C8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

char *sub_2743F7524(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

uint64_t sub_2743F7614()
{
  sub_27445429C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2743F7658()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7690(void *a1)
{
  sub_27463965C();
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F770C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F7764()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F77B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2743F7838()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2743F78B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BBD8, &unk_27464BF80) - 8) + 84) == a2)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    v5 = *(a3 + 36);
  }

  v6 = OUTLINED_FUNCTION_20_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2743F7984()
{
  OUTLINED_FUNCTION_23_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BBD8, &unk_27464BF80) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_20_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_2743F7A58()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC40, &qword_27464C0E8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F7AB8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC40, &qword_27464C0E8);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2743F7B24()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7B78()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F7BAC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F7BE0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7C18()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7CB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7CF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7D40(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    OUTLINED_FUNCTION_13_6();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[10];
    }

    else
    {
      sub_274637B5C();
      OUTLINED_FUNCTION_13_6();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BEA0, &qword_27464C548);
        v11 = a3[13];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2743F7E60(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    OUTLINED_FUNCTION_13_6();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[10];
    }

    else
    {
      sub_274637B5C();
      OUTLINED_FUNCTION_13_6();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BEA0, &qword_27464C548);
        v11 = a4[13];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2743F7F8C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8008(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2743F809C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743F8170()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493A0, &unk_274646750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C060, &unk_27464CA90);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
  sub_27440AA3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743F823C()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743F82A4()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743F8324()
{

  sub_2744671A4(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_2743F840C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F845C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F8490()
{

  return swift_deallocObject();
}

uint64_t sub_2743F84E0()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F8524()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F8564()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274468B20();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743F85C0()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27446894C();
  *v0 = result;
  return result;
}

uint64_t sub_2743F85EC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274468770();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F8618()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744686A0();
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_2743F86AC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27447EB8C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743F8714()
{
  OUTLINED_FUNCTION_5_3();
  result = MEMORY[0x277C55F30]();
  *v0 = result;
  return result;
}

uint64_t sub_2743F8744()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463983C();
  *v0 = result;
  return result;
}

uint64_t sub_2743F8798()
{
  OUTLINED_FUNCTION_48_1();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_53_1(*(v0 + 8));
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
  v6 = OUTLINED_FUNCTION_20_2(*(v5 + 80));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2743F8818(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    v8 = OUTLINED_FUNCTION_20_2(*(v7 + 80));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2743F889C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v6 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_2743F8924(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v6 = OUTLINED_FUNCTION_20_2(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2743F89A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C350, &qword_27464D5C8);
  sub_274480A38();
  sub_274452C2C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743F8AA8()
{

  sub_27447FCE8(*(v0 + 48), *(v0 + 56));
  sub_274482198(*(v0 + 64), *(v0 + 72));
  sub_2743F45E8(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_2743F8B14()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2743F8B5C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8BAC()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8C18()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2745E2684();
  *a1 = result & 1;
  return result;
}

void sub_2743F8CBC()
{
  OUTLINED_FUNCTION_5_3();
  sub_2746397FC();
  *v0 = v1;
}

uint64_t sub_2743F8D14()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_46_1(v1) == 1)
  {
    v2 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v2))
    {
      OUTLINED_FUNCTION_25_0();
      v3 = OUTLINED_FUNCTION_42_2();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743F8EA4()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2743F8EF8()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_46_1(v1) == 1)
  {
    v2 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v2))
    {
      OUTLINED_FUNCTION_25_0();
      v3 = OUTLINED_FUNCTION_42_2();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743F9088()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F90DC()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47_1();
  if (*(v1 + 16))
  {
  }

  if (*(v1 + 32))
  {
  }

  if (*(v1 + 48))
  {
  }

  if (*(v1 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_46_1(v6) == 1)
  {
    v7 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v7))
    {
      OUTLINED_FUNCTION_25_0();
      v8 = OUTLINED_FUNCTION_42_2();
      v9(v8);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743F9268()
{
  OUTLINED_FUNCTION_48_1();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_53_1(*v0);
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8, &unk_27464E770);
  v6 = OUTLINED_FUNCTION_20_2(*(v5 + 32));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2743F92E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8, &unk_27464E770);
    v8 = OUTLINED_FUNCTION_20_2(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2743F936C(void *a1)
{
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C5D0, &qword_27464E028);
  sub_27463965C();
  sub_274639DEC();
  sub_274639DEC();
  swift_getWitnessTable();
  sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0, &qword_27464E028, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2743F9570()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2743F966C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743F96F4()
{

  return swift_deallocObject();
}

uint64_t sub_2743F972C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9784()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F97EC()
{

  return swift_deallocObject();
}

uint64_t sub_2743F985C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F989C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9914()
{

  return swift_deallocObject();
}

uint64_t sub_2743F994C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743F9A48()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9AAC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2743F9B40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743F9BD0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9C08()
{
  type metadata accessor for TagPickerView(0);
  OUTLINED_FUNCTION_5_16();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = v1 + v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(v4 + v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2743F9D74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D130, &unk_27464FCF8);
  OUTLINED_FUNCTION_7();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2743F9DDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D130, &unk_27464FCF8);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2743F9EA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D0A0, &unk_27464FC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D0D8, &qword_27464FCA8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D098, &qword_27464FC58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D090, &qword_27464FC50);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D088, &qword_27464FC48);
  sub_27463955C();
  v4 = sub_27440CA78(&qword_28094D0C0, &qword_28094D088, &qword_27464FC48, MEMORY[0x277CDE5A0]);
  v12 = OUTLINED_FUNCTION_3_16(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  OUTLINED_FUNCTION_3_16(v12, v13, v14, v15, v16, v17, v18, v19, v2);
  v20 = sub_274412BBC();
  OUTLINED_FUNCTION_3_16(v20, v21, v22, v23, v24, v25, v26, v27, v1);
  v36 = sub_27440CA78(&qword_28094D0E0, &qword_28094D0D8, &qword_27464FCA8, MEMORY[0x277CDD978]);
  return OUTLINED_FUNCTION_3_16(v36, v28, v29, v30, v31, v32, v33, v34, v0);
}

uint64_t sub_2743FA0AC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA0EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FA150()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FA188()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA1D0()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA220()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA25C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FA29C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FA304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278, &unk_274650160);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2743FA3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278, &unk_274650160);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743FA45C()
{
  type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_5_16();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_17();
  v6 = *(v0 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  if (OUTLINED_FUNCTION_11_7(v7) == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_4_2();
    (*(v8 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_15();

  return swift_deallocObject();
}

uint64_t sub_2743FA554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2746399BC();
  *a1 = result;
  return result;
}

uint64_t sub_2743FA5AC()
{
  type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_5_16();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_17();
  v6 = *(v0 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  if (OUTLINED_FUNCTION_11_7(v7) == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_4_2();
    (*(v8 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_15();

  return swift_deallocObject();
}

uint64_t sub_2743FA6AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274468A2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2743FA774()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA7AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FA7EC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA82C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2743FA8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743FA94C()
{
  v1 = type metadata accessor for TagFieldHostView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_274482198(*(v2 + 64), *(v2 + 72));
  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2743FAABC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FAAF4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FAB8C()
{
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890, &qword_2746509F0);

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_2743FABE8()
{
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890, &qword_2746509F0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2743FAC50()
{
  OUTLINED_FUNCTION_57();
  v2 = sub_274637EEC();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2743FAC94()
{
  OUTLINED_FUNCTION_57();
  v2 = sub_274637EEC();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_2743FAD18()
{
  if (*(v0 + 40) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_2743FAD5C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744AB724();
  *v0 = result;
  return result;
}

uint64_t sub_2743FAD88()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9950();
  *v0 = result;
  return result;
}

uint64_t sub_2743FADB4()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9824();
  *v0 = result;
  return result;
}

uint64_t sub_2743FADE0()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9EE8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FAE34()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9ED4();
  *v0 = result & 1;
  return result;
}

__n128 sub_2743FAF04(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_2743FAF18()
{
  v1 = v0[2];
  v6[0] = v0[1];
  v5 = *&v6[0];
  v2 = v0[3];
  v6[1] = v1;
  v6[2] = v2;
  v3 = *(type metadata accessor for DragReorderableForEach(0, v6) - 8);
  (*(*(v5 - 8) + 8))(v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2743FB064(__int128 *a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 5);
  v11 = a1[1];
  v12 = *a1;
  v13 = v11;
  v14 = v1;
  v15 = v2;
  type metadata accessor for DragReorderableForEach.Item(255, &v12);
  v3 = sub_27463B92C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA20, &qword_274650FD8);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA28, &qword_274650FE0);
  OUTLINED_FUNCTION_22();
  v4 = sub_274639DEC();
  OUTLINED_FUNCTION_6_0();
  WitnessTable = swift_getWitnessTable();
  *&v12 = v3;
  *(&v12 + 1) = MEMORY[0x277D84030];
  *&v13 = v4;
  *(&v13 + 1) = WitnessTable;
  v14 = MEMORY[0x277D84038];
  sub_27463AF9C();
  OUTLINED_FUNCTION_13_7();
  sub_27440CA78(v6, &qword_28094DA20, &qword_274650FD8, v7);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_6();
  sub_27440CA78(v8, &qword_28094DA28, &qword_274650FE0, v9);
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_12();
  return swift_getWitnessTable();
}

uint64_t sub_2743FB1D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2743FB21C()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC00, &qword_274651438);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743FB27C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DragReorderingGeometryWritingModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_274639F5C();
  type metadata accessor for CGRect(255);
  sub_27463A0BC();
  sub_27463965C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FB370(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
  sub_27440CA78(&qword_28094DBE0, &qword_28094DBD8, &qword_274651418, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FB414(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_53_1(*(a1 + 8));
  }

  OUTLINED_FUNCTION_70_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  OUTLINED_FUNCTION_13_6();
  if (*(v5 + 84) == v2)
  {
    v6 = *(v3 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    v6 = *(v3 + 40);
  }

  v7 = OUTLINED_FUNCTION_20_2(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_2743FB4E0()
{
  OUTLINED_FUNCTION_57();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
    OUTLINED_FUNCTION_13_6();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
      v7 = *(v4 + 40);
    }

    v8 = OUTLINED_FUNCTION_28_6(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_2743FB5B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27463AC2C();
  *a1 = result;
  return result;
}

uint64_t sub_2743FB5FC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463989C();
  *v0 = result;
  return result;
}

uint64_t sub_2743FB658()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0, &qword_2746515C8);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  OUTLINED_FUNCTION_58_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_75_0(v3) == 1)
  {
    v4 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v4))
    {
      OUTLINED_FUNCTION_25_0();
      v5 = OUTLINED_FUNCTION_62_1();
      v6(v5);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743FB7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_4_2();
  v0 = OUTLINED_FUNCTION_61_1();
  v1(v0);

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2743FB884()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FB8BC()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0, &qword_2746515C8);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  OUTLINED_FUNCTION_58_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (OUTLINED_FUNCTION_75_0(v3) == 1)
  {
    v4 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v4))
    {
      OUTLINED_FUNCTION_25_0();
      v5 = OUTLINED_FUNCTION_62_1();
      v6(v5);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743FBA50()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27452F6C4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FBAA8()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746399FC();
  *v0 = result;
  return result;
}

uint64_t sub_2743FBAD4()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746398DC();
  *v0 = result;
  return result;
}

uint64_t sub_2743FBB0C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FBB44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8, &qword_274651BF0);
  OUTLINED_FUNCTION_4_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2743FBBC8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FBC18()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47_2();

  return swift_deallocObject();
}

uint64_t sub_2743FBC50()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2743FBC8C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47_2();

  return swift_deallocObject();
}

uint64_t sub_2743FBCC4(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_30_4();
    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v5 = OUTLINED_FUNCTION_20_2(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_2743FBD48()
{
  OUTLINED_FUNCTION_57();
  if (v3 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v5 = OUTLINED_FUNCTION_28_6(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2743FBDD0(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_30_4();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    OUTLINED_FUNCTION_13_6();
    if (*(v6 + 84) == v2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180, &qword_274651EB0);
      v7 = *(v3 + 28);
    }

    v8 = OUTLINED_FUNCTION_20_2(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_2743FBEA0()
{
  OUTLINED_FUNCTION_57();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    OUTLINED_FUNCTION_13_6();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180, &qword_274651EB0);
      v7 = *(v4 + 28);
    }

    v8 = OUTLINED_FUNCTION_28_6(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_2743FBFB4()
{

  return swift_deallocObject();
}

uint64_t sub_2743FBFF0()
{
  sub_27463969C();
  OUTLINED_FUNCTION_4_2();
  v2 = OUTLINED_FUNCTION_61_1();
  v3(v2);

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2743FC07C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FC0CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FC124()
{
  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2743FC170()
{

  return swift_deallocObject();
}

uint64_t sub_2743FC1DC(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_53_1(*a1);
  }

  OUTLINED_FUNCTION_70_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180, &qword_274651EB0);
  v4 = OUTLINED_FUNCTION_20_2(*(v2 + 60));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2743FC25C()
{
  OUTLINED_FUNCTION_57();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180, &qword_274651EB0);
    v5 = OUTLINED_FUNCTION_28_6(*(v4 + 60));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2743FC320(void *a1)
{
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_1();
  sub_27463914C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  OUTLINED_FUNCTION_43_2();
  sub_274639DEC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FC498(void *a1)
{
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E750, &qword_274652D50);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_20_6();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_2();
  sub_27463AE6C();
  OUTLINED_FUNCTION_43_2();
  sub_27463ADAC();
  sub_274639DEC();
  sub_27463AC1C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400, &unk_2746528C0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2744CA97C(&unk_28094D180, &qword_28094C600);
  swift_getWitnessTable();
  sub_2744CA97C(&qword_28094A710, &qword_280951400);
  return swift_getWitnessTable();
}

uint64_t sub_2743FC7C0()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FC824()
{

  sub_274458484(*(v0 + 104), *(v0 + 112), *(v0 + 113));

  return swift_deallocObject();
}

uint64_t sub_2743FC894()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FC8D8()
{
  sub_2744671A4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2743FC944()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7C8, &qword_274652D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7D0, &qword_274652D58);
  sub_2744CD448();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FCA4C()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743FCB00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2744D36C0(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FCB58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2744D3780(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FCBB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2744D3840(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FCD04()
{

  return swift_deallocObject();
}

__n128 sub_2743FCD5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2743FCD68()
{

  return swift_deallocObject();
}

uint64_t sub_2743FCDF4()
{
  OUTLINED_FUNCTION_1_18();
  v2 = type metadata accessor for ContentAvoidingSheet(255, v1);
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  sub_274639F5C();
  OUTLINED_FUNCTION_25_0();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  (*(v3 + 8))(v0 + v4);

  v6 = *(v2 + 52);
  if (!__swift_getEnumTagSinglePayload(v0 + v5 + v6, 1, v9))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v7 + 8))(v0 + v5 + v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2743FCF84()
{
  OUTLINED_FUNCTION_1_18();
  type metadata accessor for ContentAvoidingSheet(0, v2);
  OUTLINED_FUNCTION_3_14();
  v5 = *(v4 + 64);
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  v9 = *(v7 + 80);

  v10 = *(v0 + 52);
  if (!__swift_getEnumTagSinglePayload(v1 + v6 + v10, 1, v12))
  {
    (*(v8 + 8))(v1 + v6 + v10);
  }

  (*(v8 + 8))(v1 + ((v6 + v5 + v9) & ~v9));
  return swift_deallocObject();
}

uint64_t sub_2743FD108()
{
  v2 = *(v1 + 40);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v13 = v16;
  v17 = v2;
  type metadata accessor for ContentAvoidingSheet(0, &v15);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v14 = *(v5 + 64);
  v6 = sub_2746393DC();
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  v9 = *(v7 + 80);

  v10 = *(v0 + 52);
  if (!__swift_getEnumTagSinglePayload(v1 + v4 + v10, 1, v13))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v11 + 8))(v1 + v4 + v10, v13);
  }

  (*(v8 + 8))(v1 + ((v4 + v14 + v9) & ~v9), v6);
  return swift_deallocObject();
}

uint64_t sub_2743FD2CC(int64x2_t *a1)
{
  v12 = a1[1];
  v15 = *a1;
  v13 = v15;
  v16 = v12;
  type metadata accessor for ContentAvoidingSheet(255, &v15);
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFD0, &unk_274653EF0);
  OUTLINED_FUNCTION_22();
  v1 = sub_27463965C();
  v14 = vzip1q_s64(v13, v12);
  v15 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15.i64[0] = OpaqueTypeMetadata2;
  v15.i64[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v15.i64[0] = OpaqueTypeMetadata2;
  v15.i64[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  v4 = sub_27463C0AC();
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17();
  sub_27440CA78(v5, &qword_28094EFD0, &unk_274653EF0, v6);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  v8 = swift_getWitnessTable();
  v15.i64[0] = v1;
  v15.i64[1] = v4;
  v16.i64[0] = WitnessTable;
  v16.i64[1] = v8;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AD0, &qword_274651698);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  v15.i64[0] = v1;
  v15.i64[1] = v4;
  v16.i64[0] = WitnessTable;
  v16.i64[1] = v8;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_10();
  sub_27440CA78(v9, &qword_280953AD0, &qword_274651698, v10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  return swift_getWitnessTable();
}

uint64_t sub_2743FD600(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_7_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463ADAC();
  v3 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_15_7(v3, v4, v1, v2);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE6C();
  v5 = sub_274639DEC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  OUTLINED_FUNCTION_30();
  v7 = sub_27463965C();
  OUTLINED_FUNCTION_15_7(255, v6, v2, v7);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_30();
  sub_274639DEC();
  OUTLINED_FUNCTION_15_7(255, v6, v2, v5);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  v8 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_15_7(v8, v9, v2, v5);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_274639DEC();
  OUTLINED_FUNCTION_30();
  sub_274639DEC();
  sub_274639DEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_9(WitnessTable, MEMORY[0x277CDF918]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_274412BBC();
  OUTLINED_FUNCTION_4_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_16_8();
  sub_27463965C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_62_0();
  sub_27463AD8C();
  OUTLINED_FUNCTION_9_10();
  swift_getWitnessTable();
  sub_274482428();
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  sub_274639DEC();
  OUTLINED_FUNCTION_12_8();
  sub_274639DEC();
  OUTLINED_FUNCTION_62_0();
  sub_27463AC1C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_15();
  sub_2744E9640(v11, v12, MEMORY[0x277CDE458]);
  OUTLINED_FUNCTION_24_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_20();
  sub_27440CA78(v13, &qword_28094AA90, &qword_2746498B0, v14);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FDB90()
{

  return swift_deallocObject();
}

uint64_t sub_2743FDC68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27463999C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FDD04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2B8, &qword_274654430);
  type metadata accessor for ActionAttributionView(255, v1, v2, v4);
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  v5 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0, &qword_274654438);
  v6 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3(v6, v5, v7);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  v8 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3(v8, v3, v9);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE8C();
  sub_27463965C();
  OUTLINED_FUNCTION_2_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FDE90(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3C0, &qword_2746546C8);
  sub_2744F296C();
  sub_27463A4BC();
  sub_27463A15C();
  swift_getWitnessTable();
  sub_2744F32CC(&qword_28094F430, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  sub_274639DEC();
  swift_getOpaqueTypeConformance2();
  sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2743FE05C()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FE0AC()
{
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2743FE128()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE1BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F720, &unk_274654F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D688, &qword_27465C710);
  sub_27440CA78(&qword_280952FC0, &qword_28094D688, &qword_27465C710, MEMORY[0x277CDF1A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FE2B4()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE2FC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE370()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE3A8()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE424()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE468()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FE4A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FE508()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE5B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F8E8, &unk_274655830);
  sub_2745065E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FE670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D0, &unk_274655AD0);
  OUTLINED_FUNCTION_4_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2743FE71C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE75C()
{

  sub_274482198(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_2743FE810(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0, &unk_274655EA0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278, &unk_274650160);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2743FE8F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0, &unk_274655EA0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278, &unk_274650160);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2743FEA3C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FEA78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FB00, &qword_274655FA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  sub_274510AEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  OUTLINED_FUNCTION_44_0();
  sub_27440CA78(v0, &unk_28094D100, &qword_274649520, v1);
  OUTLINED_FUNCTION_43_0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FEC60()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743FECAC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274512524();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743FECD8()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745127A4();
  *v0 = result;
  return result;
}

BOOL sub_2743FED04()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513CBC();
  *v0 = result;
  return result;
}

uint64_t sub_2743FED58()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513DB0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FEDAC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513E8C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FEE00()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513F68();
  *v0 = result;
  return result;
}

uint64_t sub_2743FEE50()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274514068();
  *v0 = result;
  return result;
}

uint64_t sub_2743FEE84()
{
  v1 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2743FEF3C()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743FEF88()
{
  v1 = *(type metadata accessor for EditorHostingViewController.MoveActionMode(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_27463800C();
    OUTLINED_FUNCTION_7();
    v5 = *(v4 + 8);
    v5(v0 + v2, v3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88, &qword_2746563F8);
    v5(v0 + v2 + *(v6 + 48), v3);
  }

  else
  {
    sub_27463BDAC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(v0 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_2743FF0DC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FF118()
{

  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743FF14C()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FF18C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58, &qword_274656520);
  OUTLINED_FUNCTION_7();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2743FF23C()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743FF30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_27463800C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2743FF354(uint64_t a1, uint64_t a2)
{
  v4 = sub_27463800C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2743FF3A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274520E50();
  *a1 = result;
  return result;
}

uint64_t sub_2743FF3D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27451D93C();
  *a1 = result;
  return result;
}

uint64_t sub_2743FF400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27451D914();
  *a1 = result;
  return result;
}

uint64_t sub_2743FF4AC(uint64_t a1)
{
  sub_274639DEC();
  sub_27463AC1C();
  sub_274529750();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  sub_2745297A4();
  swift_getOpaqueTypeMetadata2();
  v1 = sub_274639DEC();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ParameterLayoutView(255, v1, WitnessTable, v3);
  OUTLINED_FUNCTION_0_32();
  return swift_getWitnessTable();
}

uint64_t sub_2743FF5F0()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF6CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FF70C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FF754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274639A6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FF7CC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF80C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF844()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FF894()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF8EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FF92C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FFA54()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FFA8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2743FFAC4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2743FFB10()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2743FFB5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FFC5C()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FFC98()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FFD0C()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FFD7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2743FFE10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743FFE9C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FFED4()
{

  return swift_deallocObject();
}

uint64_t sub_2743FFF0C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FFF7C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2743FFFB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274400000()
{

  return swift_deallocObject();
}

uint64_t sub_274400040()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274400164()
{

  return swift_deallocObject();
}

uint64_t sub_2744001C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2745684BC();
  *a1 = result;
  return result;
}

uint64_t sub_2744001F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274400234()
{
  v1 = sub_274637EEC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_27440031C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274400374()
{
  swift_unknownObjectRelease();

  sub_2743F459C(*(v0 + 120), *(v0 + 128));
  sub_2743F459C(*(v0 + 144), *(v0 + 152));
  if (*(v0 + 208))
  {
    if (*(v0 + 192))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 168));
    }
  }

  else
  {
  }

  sub_274482198(*(v0 + 248), *(v0 + 256));

  return swift_deallocObject();
}

uint64_t sub_274400488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
  OUTLINED_FUNCTION_13_6();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
  OUTLINED_FUNCTION_13_6();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_27440058C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
  OUTLINED_FUNCTION_13_6();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
    OUTLINED_FUNCTION_13_6();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2744006A0()
{
  type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  OUTLINED_FUNCTION_54_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_27463969C();
    if (!OUTLINED_FUNCTION_5_28(v8))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v9 + 8))(v1 + v4, v2);
    }
  }

  else
  {
  }

  v10 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_6_18(v11))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v12 + 8))(v7 + v10, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_17();

  return swift_deallocObject();
}

uint64_t sub_274400844()
{

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_274400880(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E28, &unk_274658EF8);
  OUTLINED_FUNCTION_0_4();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return a2;
}

uint64_t sub_2744008F4()
{
  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2744009D4()
{

  return swift_deallocObject();
}

uint64_t sub_274400A48(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F18, &qword_274659378);
  OUTLINED_FUNCTION_7();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_274400AB0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F18, &qword_274659378);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274400B14()
{

  if (*(v0 + 112))
  {
    if (*(v0 + 96))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    }
  }

  else
  {
  }

  sub_274458484(*(v0 + 120), *(v0 + 128), *(v0 + 129));
  sub_274435568(*(v0 + 136), *(v0 + 144));

  return swift_deallocObject();
}

uint64_t sub_274400BA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950F20, &qword_274659380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D4E8, &qword_274650460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950F18, &qword_274659378);
  OUTLINED_FUNCTION_7_8();
  sub_27440CA78(v0, &qword_280950F18, &qword_274659378, v1);
  OUTLINED_FUNCTION_2_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_30();
  sub_27440CA78(v2, &qword_28094D4E8, &qword_274650460, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274400CB4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274400D48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274400E08()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  sub_274482198(*(v0 + 128), *(v0 + 136));
  sub_274482198(*(v0 + 144), *(v0 + 152));
  if (*(v0 + 168))
  {
    MEMORY[0x277C5A3A0](v0 + 160);
  }

  else
  {
  }

  sub_2743F45E8(*(v0 + 176), *(v0 + 184));

  sub_2743F459C(*(v0 + 240), *(v0 + 248));

  return swift_deallocObject();
}

uint64_t sub_274400EEC()
{
  v1 = type metadata accessor for SummaryHostingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277C5A3A0](v2 + 72);

  if (*(v2 + 104))
  {
  }

  if (*(v2 + 128))
  {
  }

  v3 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v5 = OUTLINED_FUNCTION_0_37(v1[21]);
  sub_2743F45E8(v5, v6);
  v7 = OUTLINED_FUNCTION_0_37(v1[22]);
  sub_2743F45E8(v7, v8);
  v9 = OUTLINED_FUNCTION_0_37(v1[23]);
  j_j__swift_release(v9);
  v10 = OUTLINED_FUNCTION_0_37(v1[24]);
  sub_2743F45E8(v10, v11);
  v12 = OUTLINED_FUNCTION_0_37(v1[25]);
  sub_27447FCE8(v12, v13);
  v14 = v2 + v1[26];
  if (*(v14 + 9))
  {
    if ((*(v14 + 8) & 1) == 0)
    {
      MEMORY[0x277C5A3A0]();
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274401128()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_274401160()
{
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_274401198()
{

  return swift_deallocObject();
}

uint64_t sub_2744011D0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_274401214()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274401248()
{

  return swift_deallocObject();
}

uint64_t sub_274401288()
{
  v1 = sub_2746381FC();
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_274401344()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744013D4()
{

  return swift_deallocObject();
}

uint64_t sub_27440142C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274401474(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274401508(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2744015E4()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_274401628()
{

  return swift_deallocObject();
}

uint64_t sub_274401660()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2744016A4()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2744016D4(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274401710()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455C3BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2744017CC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455CFC8(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_274401848()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455D36C(v1, v2);
  *v0 = result & 1;
  return result;
}

void *sub_27440189C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455D528(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_274401920()
{
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274401950()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274401984()
{

  return swift_deallocObject();
}

uint64_t sub_2744019C8()
{
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2744019F8()
{

  return swift_deallocObject();
}

uint64_t sub_274401A30()
{

  return swift_deallocObject();
}

uint64_t sub_274401B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274438F4C();
  *a1 = result;
  return result;
}

uint64_t sub_274401B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274438798();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274401BE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513A0, &qword_27465A288);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274401C40(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274401CD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274401D64()
{

  return swift_deallocObject();
}

uint64_t sub_274401DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274637EEC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_53_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_274401E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_274637EEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274401F18(uint64_t *a1)
{
  type metadata accessor for ModuleSummaryModalViewModifier(255);
  sub_27463965C();
  sub_27456C1A8(&qword_280950C70, type metadata accessor for ModuleSummaryModalViewModifier, &unk_27465A688);
  return OUTLINED_FUNCTION_3_34();
}

uint64_t sub_274401F94(void *a1)
{
  sub_27463965C();
  sub_27456BE60();
  return OUTLINED_FUNCTION_3_34();
}

uint64_t sub_274401FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_53_1(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274402060(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2744020F4()
{

  return swift_deallocObject();
}

uint64_t sub_274402134()
{

  return swift_deallocObject();
}

uint64_t sub_27440216C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2744021A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27456879C();
  *a1 = result;
  return result;
}

uint64_t sub_2744021F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951588, &qword_27465A6E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809514B0, &unk_27465A468);
  sub_27456C54C();
  sub_27456C6E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2744022AC()
{

  return swift_deallocObject();
}

uint64_t sub_274402344(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516D0, &qword_27465A9F8);
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_27463AE6C();
  OUTLINED_FUNCTION_45_0();

  return swift_getWitnessTable();
}

uint64_t sub_2744023FC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2744387D8();
  *v0 = result;
  return result;
}

uint64_t sub_274402428()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274438758();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2744024F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_27440258C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274402618(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F0, &qword_27465ACA8);
  type metadata accessor for SlotParameterPicker(255, v1, v2, v3);
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F8, &qword_27465ACB0);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800, &qword_27465ACB8);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  sub_27463965C();
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_274639DEC();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  sub_274573A5C();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_27440278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModuleSummaryRowView(0, *(v4 + 16), a3, a4);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v4 + v6;

  if (*(v4 + v6 + 16) >= 5uLL)
  {
  }

  sub_274547E9C(*(v8 + 40), *(v8 + 48));

  sub_2743F45E8(*(v8 + 96), *(v8 + 104));
  if (*(v8 + 152))
  {
    if (*(v8 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1((v8 + 112));
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v8 + 160), *(v8 + 168));
  sub_274482198(*(v8 + 176), *(v8 + 184));
  sub_2743F45E8(*(v8 + 192), *(v8 + 200));
  v9 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v8 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v8 + v9, v10);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v8 + *(v5 + 68)), *(v8 + *(v5 + 68) + 8));

  return swift_deallocObject();
}

uint64_t sub_274402980()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274639A8C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_2744029BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RowTemplateEditorView(0, a2, a3, a4);
  v4 = OUTLINED_FUNCTION_43();
  return sub_27457A90C(v4, 1, v5);
}

uint64_t sub_2744029FC()
{

  return swift_deallocObject();
}

__n128 sub_274402A44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274402A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_13_15(v5, v6, v7, v8, MEMORY[0x277D7BF88]);
  OUTLINED_FUNCTION_43();
  v9 = sub_27463869C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = (*(v10 + 80) + 168) & ~*(v10 + 80);

  OUTLINED_FUNCTION_20_14();

  (*(v11 + 8))(v4 + v12, v9);

  return swift_deallocObject();
}

uint64_t sub_274402B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_13_15(v4, v5, v6, v7, MEMORY[0x277D7BF88]);
  v8 = OUTLINED_FUNCTION_43();
  type metadata accessor for TableTemplateRow(v8, v4, v9, v10);
  OUTLINED_FUNCTION_5_16();
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_17_13();
  (*(v13 + 8))(v14 + v12, v4);

  return swift_deallocObject();
}

uint64_t sub_274402C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_43();
  type metadata accessor for TableTemplateRow(v6, v5, v7, v8);
  OUTLINED_FUNCTION_22_9();
  v10 = *(v9 + 80);
  swift_unknownObjectRelease();

  sub_274482198(*(v4 + 112), *(v4 + 120));

  OUTLINED_FUNCTION_17_13();
  (*(v11 + 8))(v12 + ((v10 + 184) & ~v10), v5);
  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_274402DCC()
{

  return swift_deallocObject();
}

uint64_t sub_274402E80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094AF80, &unk_27464A6E0);
  v0 = OUTLINED_FUNCTION_28_13();
  v4 = OUTLINED_FUNCTION_27_10(v0, v1, v2, v3, MEMORY[0x277D7BF88]);
  type metadata accessor for TableTemplateRow(255, v0, v4, v5);
  OUTLINED_FUNCTION_26_0();
  sub_27463B92C();
  type metadata accessor for RowTemplateEditorView(255, v0, v4, v6);
  sub_27463965C();
  sub_27463AF6C();
  OUTLINED_FUNCTION_10_25();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  swift_getWitnessTable();
  sub_27463AF9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E48, &qword_27465B4D0);
  OUTLINED_FUNCTION_10_25();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_25();
  sub_27463AE6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951E50, &unk_27465B4D8);
  OUTLINED_FUNCTION_10_25();
  sub_27463965C();
  sub_27454E488(&qword_280951E60, &unk_28094AF80, &unk_27464A6E0, MEMORY[0x277CBCE20]);
  swift_getWitnessTable();
  sub_27454E488(&qword_280951E68, &unk_280951E50, &unk_27465B4D8, MEMORY[0x277CE07C8]);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_27463971C();
  return swift_getWitnessTable();
}

uint64_t sub_274403130()
{

  return swift_deallocObject();
}

uint64_t sub_274403168()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2744031A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744031D4()
{

  return swift_deallocObject();
}

uint64_t sub_27440322C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274583048();
  *a1 = result;
  return result;
}

uint64_t sub_27440325C()
{
  v1 = *(v0 + 16);
  v2 = sub_27463C0AC();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v7 + 8))(v0 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_27440336C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2744033DC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403410()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_27440344C()
{

  return swift_deallocObject();
}

uint64_t sub_27440349C()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744034D0()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_27440350C()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403564()
{

  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744035B0()
{

  return swift_deallocObject();
}

uint64_t sub_2744035E8()
{
  v1 = sub_274637C3C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2744036E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27459A97C();
  *a1 = result;
  return result;
}

uint64_t sub_274403760()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403794()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744037D0()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_274403820()
{
  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t sub_274403854()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403890()
{

  return swift_deallocObject();
}

uint64_t sub_2744038C8()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744038FC()
{

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_274403938()
{
  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_27440396C()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_274403A9C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_274403B80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730, &unk_2746507A0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_274403C64@<X0>(uint64_t a1@<X8>)
{
  result = sub_2746399DC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274403D54()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403DBC()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952DF0, &qword_27465CA18);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_274403E34()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403E70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E50, &qword_27465CB48);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_274403EF0()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E50, &qword_27465CB48);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_274403FA4()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274404004()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2744040C4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953088, &qword_27465CFA0);
  sub_27463AFDC();
  sub_27463965C();
  sub_27463965C();
  sub_27463965C();
  sub_27463AFDC();
  sub_274639DEC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_27463AE6C();
  sub_274639DEC();
  sub_274639DEC();
  sub_2745B8810();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_27440434C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v9 = a1 + *(a3 + 108);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2744043E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v8 = v5 + *(a4 + 108);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274404498()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2744044CC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274404500()
{
  type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = v1 + v4;

  if (*(v1 + v4 + 72))
  {
  }

  sub_2743F459C(*(v5 + 144), *(v5 + 152));

  OUTLINED_FUNCTION_20_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v5 + v2);
  }

  else
  {
  }

  v7 = v5 + *(v0 + 112);
  if (*(v7 + 9))
  {
    if ((*(v7 + 8) & 1) == 0)
    {
      MEMORY[0x277C5A3A0]();
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2744046BC()
{

  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2744046EC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274404744()
{

  return swift_deallocObject();
}

uint64_t sub_27440477C()
{
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2744047AC()
{

  return swift_deallocObject();
}

uint64_t sub_2744047F4()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745B9890();
  *v0 = result;
  return result;
}

uint64_t sub_274404820()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745B9868();
  *v0 = result;
  return result;
}

uint64_t sub_27440484C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745B9840();
  *v0 = result;
  return result;
}

uint64_t sub_274404978()
{

  if (*(v0 + 200))
  {
  }

  sub_2743F459C(*(v0 + 256), *(v0 + 264));
  if (*(v0 + 320))
  {
    if (*(v0 + 304))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 280));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274404A20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536A0, &qword_27465DB28);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274404A80()
{

  return swift_deallocObject();
}

uint64_t sub_274404AC8()
{
  v1 = *(v0 + 16);
  v2 = sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 80);

  if (*(v0 + 200))
  {
  }

  sub_2743F459C(*(v0 + 256), *(v0 + 264));
  if (*(v0 + 320))
  {
    if (*(v0 + 304))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 280));
    }
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v0 + ((v4 + 321) & ~v4) + *(v2 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_274404C28()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536D8, &qword_27465DB40);
  OUTLINED_FUNCTION_7();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_274404C94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[6];
  v15 = a1[7];
  v16 = a1[3];
  v5 = a1[8];
  v13 = a1[4];
  v14 = a1[9];
  v17 = a1[10];
  v18 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0, &qword_27465DB28);
  v6 = sub_274639DEC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8, &qword_27465DB30);
  v30 = sub_2745C8470();
  v31 = v5;
  OUTLINED_FUNCTION_3_37();
  v19 = v1;
  v20 = v2;
  v21 = v6;
  v22 = v3;
  v23 = v13;
  v24 = v7;
  v25 = v4;
  WitnessTable = swift_getWitnessTable();
  v27 = v15;
  v28 = v14;
  v29 = sub_2745C85B4();
  type metadata accessor for ListParameterListContentView(255, &v19);
  v8 = sub_27463AC1C();
  v19 = v1;
  v20 = v2;
  v21 = v3;
  v22 = v16;
  v23 = v13;
  v24 = v18;
  v25 = v4;
  WitnessTable = v15;
  v27 = v5;
  v28 = v14;
  v29 = v17;
  v9 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, &v19);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_39_0();
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_35();
  v11 = swift_getWitnessTable();
  v19 = v8;
  v20 = v9;
  v21 = v18;
  v22 = v10;
  v23 = v11;
  v24 = v17;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274404E9C()
{
  OUTLINED_FUNCTION_5_36();

  return swift_deallocObject();
}

uint64_t sub_274404EDC()
{

  return swift_deallocObject();
}

uint64_t sub_274404F14()
{
  v1 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_274404FCC()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274405008()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_27440503C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274405074()
{

  OUTLINED_FUNCTION_5_36();

  return swift_deallocObject();
}

uint64_t sub_2744050AC()
{

  OUTLINED_FUNCTION_5_36();

  return swift_deallocObject();
}

uint64_t sub_2744050FC()
{

  return swift_deallocObject();
}

uint64_t sub_2744051B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180, &qword_274651EB0);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_274405230()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180, &qword_274651EB0);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2744052D8()
{

  return swift_deallocObject();
}

uint64_t sub_274405320()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274405360()
{

  return swift_deallocObject();
}

uint64_t sub_274405398()
{

  return swift_deallocObject();
}

uint64_t sub_2744053E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27463992C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274405450(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 44));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2744054D0()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0, &unk_274649990);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_27440555C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A90, &qword_27465E460);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274405668()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2744056E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280953F70, &qword_27465E488);
  sub_274506594();
  sub_2745DB750();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27440580C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2744058A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010, &unk_27464BF50);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274405934()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2744059A4()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2744059DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274405A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2745E0654();
  *a1 = result;
  return result;
}

uint64_t sub_274405ABC()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405AF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2745E26A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274405B48()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405B7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274405BDC()
{

  return swift_deallocObject();
}

uint64_t sub_274405C5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809542F8, &qword_27465F758);
  sub_27440CA78(&qword_280954300, &qword_2809542F8, &qword_27465F758, MEMORY[0x277CDD6F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274405D00()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274405D3C()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274405D6C()
{
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274405DA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274405DF4()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405E28()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405F0C()
{
  v15 = *(v1 + 16);
  v13 = *(v1 + 40);
  v16 = *(v1 + 24);
  v14 = v16;
  v17 = v13;
  type metadata accessor for FlatteningPicker(0, &v15);
  OUTLINED_FUNCTION_5_16();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  OUTLINED_FUNCTION_0_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(*(v14 - 8) + 8))(v1 + v3, v14);
  v9 = v1 + v3 + *(v0 + 68);

  v10 = sub_27463AF4C();
  v11 = *(v7 + 8);
  v11(v9 + *(v10 + 32), AssociatedTypeWitness);

  v11(v1 + v8, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_27440611C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600, &qword_27464FD90);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543E8, &unk_27465FAA8);
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  sub_27463965C();
  swift_getWitnessTable();
  sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AD8C();
  sub_2746396BC();
  swift_getWitnessTable();
  sub_2745F2184(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0, &unk_27465FAB8);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_47();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AD8C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_27463AF9C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  sub_27463AC1C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2744064F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  if (*(*(*(a3 + 16) - 8) + 84) == a2)
  {
    v6 = *(a3 + 16);
  }

  else
  {
    type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache(255, *(a3 + 16), *(a3 + 24), a4);
    v6 = sub_27463B02C();
    a1 = v5 + *(a3 + 36);
    a2 = v4;
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_2744065A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  if (*(*(v7 - 8) + 84) != a3)
  {
    type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache(255, v7, *(a4 + 24), v7);
    v7 = sub_27463B02C();
    a1 = v6 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v7);
}

__n128 sub_274406688(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2744066B4()
{

  return swift_deallocObject();
}

uint64_t sub_274406704()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_27440673C()
{

  return swift_deallocObject();
}

uint64_t sub_2744067FC()
{

  return swift_deallocObject();
}

uint64_t sub_274406860()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_2744068A8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744068DC()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274406910()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_27440694C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2744069A4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x277C56160]();
  *a1 = result;
  return result;
}

uint64_t sub_2744069F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274406A94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274406AC0()
{
  OUTLINED_FUNCTION_6();
  result = sub_2743F3814();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double sub_274406AEC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_274406AFC()
{
  sub_27440CC1C();
  sub_274639ACC();
  return v1;
}

uint64_t (*sub_274406B84())()
{
  sub_27440CB7C();
  sub_274639ACC();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_39();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_27440D70C;
}

uint64_t sub_274406C08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_39();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_27440CB7C();
  return sub_274639ADC();
}

uint64_t sub_274406C8C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_274406CB8()
{
  v1 = [*(v0 + 16) currentState];

  return v1;
}

uint64_t sub_274406CF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  [v2 stageState_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_274406E24()
{
  sub_274406E04();
  v0 = OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274406E50()
{
  sub_27463C74C();
  sub_274406DC0();
  return sub_27463C7AC();
}

uint64_t (*sub_274406E98(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_274406CB8();
  return sub_274406EE0;
}

uint64_t sub_274406EE0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_274406CF0(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_274406CF0(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_274406F68@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for SummaryEditorParameterStateDataSource(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

uint64_t sub_274406FF4(uint64_t a1)
{
  sub_27463C74C();
  sub_274406DC0();
  return sub_27463C7AC();
}

uint64_t _s14WorkflowEditor0aB7OptionsC17ScrollingBehaviorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_2744070E8(uint64_t a1)
{
  v2 = *v1;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v2);
  return sub_27463C7AC();
}

__n128 SummaryModal.__allocating_init<A, B, C, D>(_:isPopoverInCompactWidth:editingChangeBehavior:dismissBehavior:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  SummaryModal.init<A, B, C, D>(_:isPopoverInCompactWidth:editingChangeBehavior:dismissBehavior:view:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, v21, a9, *(&a9 + 1), v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return result;
}

void sub_2744071D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v5 = v4;
  v40 = v4;
  OUTLINED_FUNCTION_55();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_5();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v7 & 1;
  v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v9;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v15 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v15 = sub_27440D72C;
  v15[1] = v12;
  v16 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v16 = sub_27440D6CC;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949930, &unk_27465BCA0);
  OUTLINED_FUNCTION_5();
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_28(v18);
  OUTLINED_FUNCTION_44(v19);

  v41 = v2;
  v20 = OUTLINED_FUNCTION_49();
  sub_2745824D4(v20);
  v22 = v21;
  v23 = type metadata accessor for SummaryModal();
  v43.receiver = v3;
  v43.super_class = v23;
  v24 = objc_msgSendSuper2(&v43, sel_init);
  sub_274464EA4(v54, v5, v22);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_32(v26);
  OUTLINED_FUNCTION_5();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_32(v27);
  memcpy(v44, v54, sizeof(v44));
  memcpy(v53, v54, 0x141uLL);
  memcpy(v45, v54, 0x141uLL);
  sub_27440CAC0();
  sub_27440CB1C(v45, &qword_280949938, &qword_2746475B0);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_27(v28);
  swift_unknownObjectWeakInit();

  memcpy(v46, v53, 0x148uLL);
  v46[41] = KeyPath;
  v46[42] = sub_27440D6E4;
  v46[43] = v26;
  v46[44] = sub_27440D6E8;
  v46[45] = v27;
  memcpy(v42, v46, sizeof(v42));
  memcpy(v47, v53, sizeof(v47));
  v48 = KeyPath;
  v49 = sub_27440D6E4;
  v50 = v26;
  v51 = sub_27440D6E8;
  v52 = v27;
  sub_27440CAC0();
  sub_27440CB1C(v47, &qword_280949940, &qword_2746475B8);
  memcpy(v53, v42, 0x170uLL);
  v53[46] = v39;
  v53[47] = sub_27440D728;
  v53[48] = &unk_288361B50;
  memcpy(v54, v53, 0x188uLL);
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949948, &qword_2746475C0));
  sub_27440CAC0();
  v30 = sub_274639CDC();
  sub_27463A2AC();
  v31 = sub_274639CBC();
  v33 = v32;
  v34 = OUTLINED_FUNCTION_26();
  sub_27440A004(v34, v35);
  v36 = OUTLINED_FUNCTION_38();
  v33(v36);
  v37 = OUTLINED_FUNCTION_26();
  v33(v37);
  v31(v54, 0);

  memcpy(v54, v42, 0x170uLL);
  v54[46] = v39;
  v54[47] = sub_27440D728;
  v54[48] = &unk_288361B50;
  sub_27440CB1C(v54, &unk_280949950, &qword_2746475C8);
  v38 = *&v24[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v24[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v30;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_2744076C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v5 = v4;
  v37 = v4;
  OUTLINED_FUNCTION_55();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0();
  v35 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_5();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_53(v13);
  v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v7;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v14 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v14 = sub_27440D72C;
  v14[1] = v11;
  v15 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v15 = sub_27440D6CC;
  v15[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949928, &unk_2746475A0);
  OUTLINED_FUNCTION_5();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_28(v17);
  OUTLINED_FUNCTION_44(v18);

  v36 = v2;
  v19 = OUTLINED_FUNCTION_49();
  sub_274582598(v19);
  v21 = v20;
  v22 = type metadata accessor for SummaryModal();
  v38.receiver = v3;
  v38.super_class = v22;
  v23 = objc_msgSendSuper2(&v38, sel_init);
  v34 = [v5 parameter];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_45(v24);
  OUTLINED_FUNCTION_3();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_32(v25);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_29(v26);
  swift_unknownObjectWeakInit();
  v39[0] = v34;
  v39[1] = v21;
  v39[2] = KeyPath;
  v39[3] = sub_27440D6E4;
  v39[4] = v5;
  v39[5] = sub_27440D6E8;
  v39[6] = v25;
  v39[7] = v32;
  v39[8] = sub_27440D728;
  v39[9] = v3;
  memcpy(v40, v39, 0x50uLL);
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D240, &qword_274647540));

  sub_27440CAC0();
  v28 = sub_274639CDC();
  sub_27463A2AC();
  sub_274639CBC();
  OUTLINED_FUNCTION_48();
  v29 = OUTLINED_FUNCTION_40();
  v28(v29);
  (v28)(v5, v35);
  v32(v40, 0);

  v30 = OUTLINED_FUNCTION_15();
  sub_27440CB1C(v30, &qword_280949810, &qword_274647548);
  v31 = *&v23[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v23[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v28;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_274407A8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v5 = v4;
  v40 = v4;
  OUTLINED_FUNCTION_55();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_5();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v7 & 1;
  v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v9;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v15 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v15 = sub_27440D72C;
  v15[1] = v12;
  v16 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v16 = sub_27440D6CC;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949900, &qword_274647578);
  OUTLINED_FUNCTION_5();
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_28(v18);
  OUTLINED_FUNCTION_44(v19);

  v41 = v2;
  v20 = OUTLINED_FUNCTION_49();
  sub_274582874(v20);
  v22 = v21;
  v23 = type metadata accessor for SummaryModal();
  v43.receiver = v3;
  v43.super_class = v23;
  v24 = objc_msgSendSuper2(&v43, sel_init);
  sub_2744CB3BC(v54, v5, v22);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_32(v26);
  OUTLINED_FUNCTION_5();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_32(v27);
  memcpy(v44, v54, sizeof(v44));
  memcpy(v53, v54, 0xB9uLL);
  memcpy(v45, v54, 0xB9uLL);
  sub_27440CAC0();
  sub_27440CB1C(v45, &qword_280949908, &qword_274647580);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_27(v28);
  swift_unknownObjectWeakInit();

  memcpy(v46, v53, 0xC0uLL);
  v46[24] = KeyPath;
  v46[25] = sub_27440D6E4;
  v46[26] = v26;
  v46[27] = sub_27440D6E8;
  v46[28] = v27;
  memcpy(v42, v46, sizeof(v42));
  memcpy(v47, v53, sizeof(v47));
  v48 = KeyPath;
  v49 = sub_27440D6E4;
  v50 = v26;
  v51 = sub_27440D6E8;
  v52 = v27;
  sub_27440CAC0();
  sub_27440CB1C(v47, &qword_280949910, &qword_274647588);
  memcpy(v53, v42, 0xE8uLL);
  v53[29] = v39;
  v53[30] = sub_27440D728;
  v53[31] = &unk_288361B50;
  memcpy(v54, v53, 0x100uLL);
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949918, &qword_274647590));
  sub_27440CAC0();
  v30 = sub_274639CDC();
  sub_27463A2AC();
  v31 = sub_274639CBC();
  v33 = v32;
  v34 = OUTLINED_FUNCTION_26();
  sub_27440A004(v34, v35);
  v36 = OUTLINED_FUNCTION_38();
  v33(v36);
  v37 = OUTLINED_FUNCTION_26();
  v33(v37);
  v31(v54, 0);

  memcpy(v54, v42, 0xE8uLL);
  v54[29] = v39;
  v54[30] = sub_27440D728;
  v54[31] = &unk_288361B50;
  sub_27440CB1C(v54, &qword_280949920, &qword_274647598);
  v38 = *&v24[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v24[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v30;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_274407F7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v46 = v4;
  v51 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  v49 = v13;
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0();
  v47 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v48 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949818, &unk_274647550);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  *&v7[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_25(v20);
  OUTLINED_FUNCTION_5();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_25(v21);
  OUTLINED_FUNCTION_20();
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_50(v22);
  v7[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v11;
  v7[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v9 & 1;
  v24 = &v7[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v24 = sub_27440D72C;
  v24[1] = v20;
  v25 = &v7[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v25 = sub_27440D6CC;
  v25[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949820, &unk_27465BC80);
  OUTLINED_FUNCTION_5();
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_44(v27);

  v45 = v2;
  sub_274582938(v26);
  v53.receiver = v7;
  v53.super_class = type metadata accessor for SummaryModal();
  v28 = objc_msgSendSuper2(&v53, sel_init);
  v29 = [v51 parameter];
  sub_27453755C();
  v44 = v46;
  sub_27445F820();
  v30 = sub_27463967C();
  LOBYTE(v26) = sub_27463A32C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949828, &qword_274647560);
  OUTLINED_FUNCTION_60();
  *v31 = v30;
  *(v31 + 8) = v26;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949830, &qword_274647568);
  OUTLINED_FUNCTION_60();
  *v35 = KeyPath;
  v35[1] = sub_27440D6E4;
  v35[2] = v33;
  v35[3] = sub_27440D6E8;
  v35[4] = v34;
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_29(v37);
  swift_unknownObjectWeakInit();
  v38 = (v3 + *(v18 + 44));
  *v38 = v36;
  v38[1] = sub_27440D728;
  v38[2] = &unk_288361B50;
  sub_27440CAC0();
  v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949838, &qword_274647570));
  v40 = sub_274639CDC();
  sub_27463A2AC();
  v41 = sub_274639CBC();
  sub_27440A004(v48, v47);
  v42 = *(v49 + 8);
  v42(v47, v50);
  v42(v48, v50);
  v41(&v52, 0);

  sub_27440CB1C(v3, &qword_280949818, &unk_274647550);
  v43 = *&v28[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v28[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v40;

  OUTLINED_FUNCTION_23();
}

void sub_27440846C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v5 = v4;
  v37 = v4;
  OUTLINED_FUNCTION_55();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0();
  v35 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_5();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_25(v12);
  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_53(v13);
  v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v7;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v14 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v14 = sub_27440D72C;
  v14[1] = v11;
  v15 = &v3[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v15 = sub_27440D6CC;
  v15[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949800, &qword_274647538);
  OUTLINED_FUNCTION_5();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_28(v17);
  OUTLINED_FUNCTION_44(v18);

  v36 = v2;
  v19 = OUTLINED_FUNCTION_49();
  sub_2745829FC(v19);
  v21 = v20;
  v22 = type metadata accessor for SummaryModal();
  v38.receiver = v3;
  v38.super_class = v22;
  v23 = objc_msgSendSuper2(&v38, sel_init);
  v34 = [v5 parameter];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_45(v24);
  OUTLINED_FUNCTION_3();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_32(v25);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_29(v26);
  swift_unknownObjectWeakInit();
  v39[0] = v34;
  v39[1] = v21;
  v39[2] = KeyPath;
  v39[3] = sub_27440D6E4;
  v39[4] = v5;
  v39[5] = sub_27440D6E8;
  v39[6] = v25;
  v39[7] = v32;
  v39[8] = sub_27440D728;
  v39[9] = v3;
  memcpy(v40, v39, 0x50uLL);
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D240, &qword_274647540));

  sub_27440CAC0();
  v28 = sub_274639CDC();
  sub_27463A2AC();
  sub_274639CBC();
  OUTLINED_FUNCTION_48();
  v29 = OUTLINED_FUNCTION_40();
  v28(v29);
  (v28)(v5, v35);
  v32(v40, 0);

  v30 = OUTLINED_FUNCTION_15();
  sub_27440CB1C(v30, &qword_280949810, &qword_274647548);
  v31 = *&v23[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v23[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v28;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_274408830(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v48 = v4;
  v6 = v5;
  v45 = v7;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  v47 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949720, &qword_274647518);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  *&v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_25(v21);
  OUTLINED_FUNCTION_5();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_25(v22);
  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v9 & 1;
  v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v11;
  v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v45 & 1;
  v24 = &v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v24 = sub_27440D72C;
  v24[1] = v21;
  v25 = &v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v25 = sub_27440D6CC;
  v25[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949728, &qword_274647520);
  OUTLINED_FUNCTION_5();
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_44(v27);

  v46 = v2;
  sub_274582AC0(v26);
  v29 = v28;
  v50.receiver = v6;
  v50.super_class = type metadata accessor for SummaryModal();
  v30 = objc_msgSendSuper2(&v50, sel_init);
  sub_2745B121C(v29, v48, v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_29(v33);
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949730, &qword_274647528);
  OUTLINED_FUNCTION_60();
  *v34 = KeyPath;
  v34[1] = sub_27440D6E4;
  v34[2] = v32;
  v34[3] = sub_27440D6E8;
  v34[4] = v26;
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_29(v36);
  swift_unknownObjectWeakInit();
  v37 = (v3 + *(v19 + 44));
  *v37 = v35;
  v37[1] = sub_27440D728;
  v37[2] = v26;
  sub_27440CAC0();
  v38 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949738, &qword_274647530));
  v39 = sub_274639CDC();
  sub_27463A2AC();
  v40 = sub_274639CBC();
  v42 = v41;
  sub_27440A004(v47, v15);
  v43 = OUTLINED_FUNCTION_37();
  v42(v43);
  (v42)(v47, v15);
  v40(&v49, 0);

  sub_27440CB1C(v3, &qword_280949720, &qword_274647518);
  v44 = *&v30[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v30[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v39;

  OUTLINED_FUNCTION_23();
}

void sub_274408C90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v56 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0();
  v59 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v60 = v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809496E8, &qword_2746474B8) - 8;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  *&v8[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_25(v19);
  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_50(v20);
  v8[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v12;
  v8[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v10 & 1;
  v22 = &v8[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v22 = sub_27440CA3C;
  v22[1] = v18;
  v23 = &v8[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v23 = sub_27440CA58;
  v23[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809496F0, &qword_2746474C0);
  OUTLINED_FUNCTION_5();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  v25 = type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_44(v25);

  v57 = v2;
  sub_274582B84(v24);
  v62.receiver = v8;
  v62.super_class = type metadata accessor for SummaryModal();
  v26 = objc_msgSendSuper2(&v62, sel_init);
  v55 = v6;
  v27 = [v6 parameter];
  v28 = sub_2745DFB1C();
  v30 = v29;
  v53 = v31;
  *(v3 + 64) = swift_getKeyPath();
  v32 = type metadata accessor for ContactPickerView(0);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  *(v3 + 96) = 0;
  v33 = *(v32 + 36);
  *(v3 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  swift_storeEnumTagMultiPayload();
  v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949700, &qword_274647500));
  v54 = v56;
  v35 = v27;
  sub_27444A5DC(v35);
  sub_27440CA78(&qword_280949708, &qword_280949700, &qword_274647500, &unk_274648AD8);
  v36 = sub_27463950C();
  v38 = v37;

  *v3 = v36;
  *(v3 + 8) = v38;
  *(v3 + 16) = v28;
  *(v3 + 24) = v30;
  *(v3 + 32) = v53;
  *(v3 + 40) = v56;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_27(v40);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949710, &qword_274647508);
  OUTLINED_FUNCTION_60();
  *v42 = KeyPath;
  v42[1] = sub_27440D6E4;
  v42[2] = v38;
  v42[3] = sub_27440D6E8;
  v42[4] = v41;
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = (v3 + *(v58 + 44));
  *v45 = v43;
  v45[1] = sub_27440D728;
  v45[2] = v44;
  sub_27440CAC0();
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949718, &qword_274647510));
  v47 = sub_274639CDC();
  sub_27463A2AC();
  v48 = sub_274639CBC();
  v50 = v49;
  sub_27440A004(v60, v59);
  v51 = OUTLINED_FUNCTION_37();
  v50(v51);
  (v50)(v60, v59);
  v48(&v61, 0);

  sub_27440CB1C(v3, &qword_2809496E8, &qword_2746474B8);
  v52 = *&v26[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v26[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v47;

  OUTLINED_FUNCTION_23();
}

void SummaryModal.init<A, B, C, D>(_:isPopoverInCompactWidth:editingChangeBehavior:dismissBehavior:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_24();
  v25 = v23;
  v94 = v26;
  v28 = v27;
  v98 = v29;
  v99 = v30;
  v32 = v31;
  v34 = v33;
  LODWORD(v96) = v35;
  v37 = v36;
  v92 = a23;
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  v108 = v39;
  v109 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_0();
  v106 = v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v107 = v42;
  v101 = *(v28 - 8);
  MEMORY[0x28223BE20](v43);
  v95 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949340, &qword_2746466D0);
  OUTLINED_FUNCTION_43();
  v100 = sub_27463965C();
  v104 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v111 = &v90 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949348, qword_2746466D8);
  OUTLINED_FUNCTION_43();
  v103 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v105 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0();
  v102 = v48;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  v110 = v50;
  v90 = *v34;
  v91 = *v32;
  *&v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_27(v51);
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v53 = v28;
  v93 = v28;
  v54 = v94;
  *(v52 + 2) = v28;
  *(v52 + 3) = v54;
  *(v52 + 4) = a21;
  *(v52 + 5) = a22;
  v55 = v92;
  *(v52 + 6) = v92;
  *(v52 + 7) = v24;
  OUTLINED_FUNCTION_5();
  v56 = swift_allocObject();
  OUTLINED_FUNCTION_27(v56);
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  *(v57 + 24) = v54;
  *(v57 + 32) = a21;
  *(v57 + 40) = a22;
  *(v57 + 48) = v55;
  *(v57 + 56) = v24;
  *(v57 + 64) = v90;
  v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v96;
  v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v91;
  v58 = &v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v58 = sub_274409B84;
  v58[1] = v52;
  v97 = v52;
  v59 = &v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v59 = sub_274409CC8;
  v59[1] = v57;
  type metadata accessor for ParameterStateStore();
  v61 = type metadata accessor for SummaryEditorParameterStateDataSource(0, a21, a22, v60);
  v62 = sub_274406C8C(v37);

  v96 = v37;
  WitnessTable = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v65 = ParameterStateStore.__allocating_init<A>(_:)(v62, v61, WitnessTable, v64);
  v94 = v65;
  v66 = type metadata accessor for SummaryModal();
  v120.receiver = v25;
  v120.super_class = v66;
  v67 = objc_msgSendSuper2(&v120, sel_init);
  v68 = v95;
  v99(v65);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v116 = sub_274409D98;
  v117 = v69;
  v118 = sub_274409E74;
  v119 = v70;
  v71 = v93;
  sub_27463A6CC();

  (*(v101 + 8))(v68, v71);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v72 = swift_allocObject();
  OUTLINED_FUNCTION_27(v72);
  swift_unknownObjectWeakInit();

  v116 = sub_274409FFC;
  v117 = &unk_288361B50;
  v73 = MEMORY[0x277CE0868];
  v74 = sub_27440CA78(&qword_280949378, &qword_280949340, &qword_2746466D0, MEMORY[0x277CE0868]);
  v114 = v55;
  v115 = v74;
  v75 = v100;
  v76 = swift_getWitnessTable();
  v78 = v110;
  v77 = v111;
  sub_27463A6CC();

  (*(v104 + 8))(v77, v75);
  v79 = sub_27440CA78(&qword_280949380, &qword_280949348, qword_2746466D8, v73);
  v112 = v76;
  v113 = v79;
  v80 = v103;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  sub_274639CFC();
  v81 = v105;
  (*(v105 + 16))(v102, v78, v80);
  v82 = sub_274639CCC();
  v83 = v106;
  sub_27463A2AC();
  v84 = sub_274639CBC();
  v85 = OUTLINED_FUNCTION_26();
  sub_27440A004(v85, v86);
  v87 = *(v108 + 8);
  v87(v83, v109);
  v88 = OUTLINED_FUNCTION_26();
  (v87)(v88);
  v84(&v116, 0);

  (*(v81 + 8))(v110, v80);
  v89 = *&v67[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v67[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v82;

  OUTLINED_FUNCTION_23();
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

void sub_274409A34(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47(a2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = Strong;
      v6 = [v5 currentState];
      [v5 commitState_];
    }

    [v4 completeEditing];
  }
}

void sub_274409AD4(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = Strong;
      [v5 commitState_];

      swift_unknownObjectRelease();
    }

    [v4 completeEditing];
  }
}

void sub_274409B98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OUTLINED_FUNCTION_47(a1 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = Strong;
      v6 = [v5 currentState];
      [v5 commitState_];
    }
  }
}

void sub_274409C28(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = Strong;
      [v5 commitState_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_274409D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274406AFC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_274409D48()
{
  v0 = OUTLINED_FUNCTION_54();
  sub_27440CBD8(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_54();
  return sub_274406B3C(v4, v5, v6, v7);
}

char *sub_274409DC0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_27440A5E8();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];

    v7(a2 & 1);
  }

  return result;
}

uint64_t (*sub_274409E94@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = sub_274406B84();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_39();
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_27440D744;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_274409F00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_39();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27440CB74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2744069F0(v1, v2);
  return sub_274406C08(v4, v3);
}

char *sub_274409F88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47(a1 + 16, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];

    v4();
  }

  return result;
}

void sub_27440A004(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949960, &qword_2746475D8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v7 = sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_18();
  v2(v13);
  v14 = MEMORY[0x277CDE4B0];
  v15 = sub_27440AEC8(&qword_280949968, MEMORY[0x277CDE4B0], MEMORY[0x277CDE4C0]);
  OUTLINED_FUNCTION_36(v15);
  v16 = sub_27440AEC8(&qword_280949970, v14, MEMORY[0x277CDE4B8]);
  v17 = OUTLINED_FUNCTION_35(v16);
  OUTLINED_FUNCTION_41(v17);
  if (v18)
  {
    v21 = OUTLINED_FUNCTION_59();
    v22(v21);
    v23 = OUTLINED_FUNCTION_51();
    v2(v23);
    (v2)(v11, v4, v7);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_42();
    v20(v19);
  }

  sub_27440D1CC();
  v24 = OUTLINED_FUNCTION_31();
  v25(v24);
  OUTLINED_FUNCTION_23();
}

void sub_27440A218(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949A40, &qword_274647F08);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v7 = sub_274639E1C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_18();
  v2(v13);
  v14 = MEMORY[0x277CDDFC8];
  v15 = sub_27440AEC8(&qword_280949A48, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE0]);
  OUTLINED_FUNCTION_36(v15);
  v16 = sub_27440AEC8(&qword_280949A50, v14, MEMORY[0x277CDDFD0]);
  v17 = OUTLINED_FUNCTION_35(v16);
  OUTLINED_FUNCTION_41(v17);
  if (v18)
  {
    v21 = OUTLINED_FUNCTION_59();
    v22(v21);
    v23 = OUTLINED_FUNCTION_51();
    v2(v23);
    (v2)(v11, v4, v7);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_42();
    v20(v19);
  }

  sub_27440D1CC();
  v24 = OUTLINED_FUNCTION_31();
  v25(v24);
  OUTLINED_FUNCTION_23();
}

void sub_27440A42C(void *a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  [v5 setPreferredContentSize_];
  v12 = *(v1 + v2);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v12 setModalPresentationStyle_];
  v13 = *(v1 + v2);
  if (!v13)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v14 = [v13 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setDelegate_];
    v16 = [a1 sourceView];
    [v15 setSourceView_];

    [a1 sourceRect];
    [v15 setSourceRect_];
    [v15 wf_forcePresentationInPresenterSceneIfNeeded];
  }

  v17 = [a1 sourceViewController];
  v18 = *(v1 + v2);
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v17;
  [v17 presentViewController:v18 animated:1 completion:0];
}

void sub_27440A5E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController);
  if (v1)
  {
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id SummaryModal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummaryModal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryModal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIModalPresentationStyle __swiftcall SummaryModal.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 wf_isWidgetConfigurationExtensionBundle];

  if (v5)
  {
    return 2;
  }

  if ([(objc_class *)traitCollection.super.isa horizontalSizeClass]!= 1)
  {
    return -1;
  }

  if (*(v2 + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth))
  {
    return -1;
  }

  return 2;
}

uint64_t sub_27440A91C(unsigned __int8 a1)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1);
  return sub_27463C7AC();
}

uint64_t sub_27440A964(uint64_t a1)
{
  sub_27463C74C();
  sub_27463C77C();
  return sub_27463C7AC();
}

uint64_t sub_27440A9AC(uint64_t a1)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1);
  return sub_27463C7AC();
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

unint64_t sub_27440AA3C()
{
  result = qword_28094C070;
  if (!qword_28094C070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C060, &unk_27464CA90);
    sub_27440AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C070);
  }

  return result;
}

unint64_t sub_27440AAC8()
{
  result = qword_2809493C0;
  if (!qword_2809493C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C080, &unk_274646760);
    sub_27440AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809493C0);
  }

  return result;
}

unint64_t sub_27440AB54()
{
  result = qword_2809493D0;
  if (!qword_2809493D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809493D0);
  }

  return result;
}

unint64_t sub_27440ABA8()
{
  result = qword_28094C3D0;
  if (!qword_28094C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E8, &unk_274646780);
    sub_27440AC34();
    sub_27440AD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C3D0);
  }

  return result;
}

unint64_t sub_27440AC34()
{
  result = qword_280949400;
  if (!qword_280949400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C330, &qword_274646790);
    sub_27440CA78(&qword_280949410, &qword_280949418, &qword_274646798, &unk_27464DFD0);
    sub_27440CA78(&unk_280949420, &unk_28094C3E0, &qword_2746467A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949400);
  }

  return result;
}

unint64_t sub_27440AD18()
{
  result = qword_280949430;
  if (!qword_280949430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949430);
  }

  return result;
}

unint64_t sub_27440AD6C()
{
  result = qword_28094C3F0;
  if (!qword_28094C3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493F0, &unk_27464D6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C3F0);
  }

  return result;
}

unint64_t sub_27440ADE8()
{
  result = qword_280949440;
  if (!qword_280949440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E0, &qword_274646778);
    sub_27440AE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949440);
  }

  return result;
}

unint64_t sub_27440AE74()
{
  result = qword_28094C400;
  if (!qword_28094C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C400);
  }

  return result;
}

uint64_t sub_27440AEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27440AF10()
{
  result = qword_28094D1B0;
  if (!qword_28094D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949458, &unk_2746467B0);
    sub_27440AEC8(&qword_280949480, type metadata accessor for TagPickerView, &unk_27464FBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D1B0);
  }

  return result;
}

unint64_t sub_27440AFCC()
{
  result = qword_280949498;
  if (!qword_280949498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809494A0, &qword_2746467C8);
    sub_27440AEC8(&qword_2809494A8, type metadata accessor for VariableConfigurationSheet, &unk_27465C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949498);
  }

  return result;
}

uint64_t sub_27440B094(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_27440B110(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_27440B134(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_27440B198@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_2();
  *a1 = result;
  return result;
}

uint64_t sub_27440B1C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440B100(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27440B1F0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8(a1);
  result = sub_2744554E0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_27440B218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440B108(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27440B248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27440B110(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_27440B27C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27440B134(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_27440B2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440B15C(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_27440B338()
{
  OUTLINED_FUNCTION_6();
  CGSizeMake();
  *v0 = v1;
}

uint64_t sub_27440B364@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27440B398(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_27440B3E0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_27440D448(a2);
  *a1 = result;
  return result;
}

void *sub_27440B408@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27440B418(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AF8, type metadata accessor for WFContactFieldProperty, &unk_274647860);
  v3 = sub_27440AEC8(&qword_280949B00, type metadata accessor for WFContactFieldProperty, &unk_274647800);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B4D4(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_28094BAE0, type metadata accessor for WFVariableType, &unk_274646ED4);
  v3 = sub_27440AEC8(&unk_2809496C0, type metadata accessor for WFVariableType, &unk_274646E74);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B590(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_28094C090, type metadata accessor for AttributeName, &unk_274648060);
  v3 = sub_27440AEC8(&qword_280949B30, type metadata accessor for AttributeName, &unk_274647FB4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B64C(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_2809496A8, type metadata accessor for WFTextFieldKeyboardType, &unk_27464719C);
  v3 = sub_27440AEC8(&unk_2809496B0, type metadata accessor for WFTextFieldKeyboardType, &unk_27464713C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B708(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949698, type metadata accessor for WFTextFieldAutocapitalizationType, &unk_2746472F4);
  v3 = sub_27440AEC8(&qword_2809496A0, type metadata accessor for WFTextFieldAutocapitalizationType, &unk_274647294);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B7C4(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AD8, _s3__C3KeyVMa_0, &unk_274647E38);
  v3 = sub_27440AEC8(&unk_280949AE0, _s3__C3KeyVMa_0, &unk_274647A6C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B880(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280953420, type metadata accessor for Key, &unk_2746473EC);
  v3 = sub_27440AEC8(&qword_2809496D0, type metadata accessor for Key, &unk_274646D54);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B93C(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949BB0, type metadata accessor for WFMeasurementUnitType, &unk_274648374);
  v3 = sub_27440AEC8(&qword_280949BB8, type metadata accessor for WFMeasurementUnitType, &unk_27464831C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B9F8(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949BA0, type metadata accessor for WFDateFormattingStyle, &unk_274648510);
  v3 = sub_27440AEC8(&qword_280949BA8, type metadata accessor for WFDateFormattingStyle, &unk_274648464);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BAB4(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_2809496D8, type metadata accessor for WFWorkflowRunSource, &unk_274646C58);
  v3 = sub_27440AEC8(&qword_2809496E0, type metadata accessor for WFWorkflowRunSource, &unk_274646C00);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BB70(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AB8, type metadata accessor for URLResourceKey, &unk_274647D38);
  v3 = sub_27440AEC8(&qword_280949AC0, type metadata accessor for URLResourceKey, &unk_274647CD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BC2C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_27463B66C();

  *a2 = v3;
  return result;
}

uint64_t sub_27440BC74(uint64_t a1)
{
  v2 = sub_27440AEC8(&unk_280950450, type metadata accessor for ProgressUserInfoKey, &unk_274647E7C);
  v3 = sub_27440AEC8(&qword_280949AF0, type metadata accessor for ProgressUserInfoKey, &unk_274647958);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BD30(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AC8, type metadata accessor for WFExecutionPlatform, &unk_274647BE0);
  v3 = sub_27440AEC8(&qword_280949AD0, type metadata accessor for WFExecutionPlatform, &unk_274647B80);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_27440BDF0()
{
  result = qword_280949510;
  if (!qword_280949510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949510);
  }

  return result;
}

unint64_t sub_27440BE48()
{
  result = qword_280949518[0];
  if (!qword_280949518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280949518);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PropertyListOutlineContent.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_27440C030(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_27440C23C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27440C27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27440C790(uint64_t a1, uint64_t a2)
{
  sub_27463B6AC();
  sub_27463B71C();
}

uint64_t sub_27440C7E4(uint64_t a1, uint64_t a2)
{
  sub_27463B6AC();
  sub_27463C74C();
  sub_27463B71C();
  v2 = sub_27463C7AC();

  return v2;
}

uint64_t sub_27440C858(uint64_t a1, uint64_t a2)
{
  v2 = sub_27463B6AC();
  v4 = v3;
  if (v2 == sub_27463B6AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27463C6BC();
  }

  return v7 & 1;
}

uint64_t sub_27440C8DC()
{
  OUTLINED_FUNCTION_57();

  v2 = sub_27463B69C();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_27440C958()
{
  OUTLINED_FUNCTION_57();

  result = sub_27463B68C();
  *v0 = 0;
  return result;
}

uint64_t sub_27440C9CC(uint64_t a1)
{
  sub_27463B6AC();
  v1 = sub_27463B66C();

  return v1;
}

uint64_t sub_27440CA04(uint64_t a1)
{
  v1 = sub_27463B6AC();
  v2 = MEMORY[0x277C57ED0](v1);

  return v2;
}

uint64_t sub_27440CA78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_27440CAC0()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_27440CB1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_27440CB7C()
{
  result = qword_280949978;
  if (!qword_280949978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949978);
  }

  return result;
}

uint64_t sub_27440CBD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_27440CC1C()
{
  result = qword_280949980;
  if (!qword_280949980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949980);
  }

  return result;
}

uint64_t sub_27440D1CC()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_27440D448(uint64_t a1)
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

void sub_27440D4C4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_15()
{
  v5 = v0[7];
  *(v4 - 168) = v0[8];
  *(v4 - 160) = v1;
  v6 = v0[5];
  v7 = v0[6];
  *(v4 - 152) = v5;
  *(v4 - 144) = v6;
  v9 = v0[3];
  v8 = v0[4];
  *(v4 - 136) = v7;
  *(v4 - 128) = v9;
  *(v4 - 120) = v3;
  *(v4 - 112) = v8;
  *(v4 - 104) = v0[2];
  *(v4 - 96) = v2;
  return v4 - 168;
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for ParameterStateStore();
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return __isPlatformVersionAtLeast(2, 18, 1, 0);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{
  *(v2 - 120) = v1;

  return sub_27463B5BC();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{
  *(v3 - 128) = a1;

  return MEMORY[0x2821FCE08](v1, v2);
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_48()
{
  v3 = *(v0 + 112);

  sub_27440A004(v3, v1);
}

uint64_t OUTLINED_FUNCTION_50(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_53(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_62()
{
  v4 = *(v2 - 128);

  return MEMORY[0x2821FCE60](v1, v0, v4);
}

uint64_t OUTLINED_FUNCTION_63()
{

  return sub_27463965C();
}

id sub_27440DC38()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_274637C9C()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_27440DCAC(uint64_t a1, void *a2)
{
  v3 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274638CAC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  v18 = sub_27440DC38();
  v19 = sub_274637C8C();

  if (v19)
  {
    sub_274638C2C();
    v20 = sub_274638D9C();
    v21 = sub_27463BBEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2743F0000, v20, v21, "Ignoring attempt to present Montara onboarding as it is already enabled", v22, 2u);
      MEMORY[0x277C5A270](v22, -1, -1);
    }

    return (*(v5 + 8))(v8, v3);
  }

  else
  {
    v24 = type metadata accessor for WFMontaraEnablementDelegate();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v33[4] = v24;
    v33[5] = sub_27440F2F0(&qword_280949EA8, type metadata accessor for WFMontaraEnablementDelegate, &unk_2746485CC);
    v33[1] = v25;

    sub_274638C9C();
    (*(v11 + 16))(v14, v17, v9);
    v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949EB0, &qword_274648638));
    v27 = sub_274639CDC();
    OUTLINED_FUNCTION_5();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v29 = *(v25 + 16);
    v30 = *(v25 + 24);
    *(v25 + 16) = sub_27440F338;
    *(v25 + 24) = v28;
    v31 = v27;
    sub_274406A94(v29, v30);
    v32 = [a2 sourceViewController];
    [v32 presentViewController:v31 animated:1 completion:0];

    return (*(v11 + 8))(v17, v9);
  }
}

uint64_t sub_27440DFFC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_274637E2C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 dismissViewControllerAnimated:1 completion:{0, v9}];
  sub_27440F340(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_27440F1E8(v6);
  }

  (*(v8 + 32))(v11, v6, v7);
  v13 = [objc_opt_self() sharedContext];
  v14 = sub_274637DFC();
  [v13 openURL_];

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_27440E234(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_27440DC38();
  v8 = sub_274637C8C();

  if (v8)
  {
    v47.receiver = v3;
    v47.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v47, sel_customMenuElementsForSlotWithIdentifier_style_, a1, a2);
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper;
  v11 = *&v3[OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper];
  v12 = sub_274637C6C();
  v14 = v13;

  if (!v14)
  {
LABEL_8:
    v49.receiver = v3;
    v49.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v49, sel_customMenuElementsForSlotWithIdentifier_style_, a1, a2);
LABEL_9:
    v21 = v9;
    if (!v21)
    {
      return 0;
    }

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
    v23 = sub_27463B81C();

    return v23;
  }

  v15 = *&v3[v10];
  v16 = sub_274637C5C();
  v18 = v17;

  if (!v18)
  {

    goto LABEL_8;
  }

  v48.receiver = v3;
  v48.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v48, sel_customMenuElementsForSlotWithIdentifier_style_, a1, a2);
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
    v46 = sub_27463B81C();
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v45 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648560;
  sub_27463B70C("Extension", 9);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v25 = qword_28094BB00;
  v26 = sub_27463B66C();
  v27 = sub_27463B66C();

  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  v29 = sub_27463B6AC();
  v43 = v30;
  v44 = v29;

  sub_27463B70C("Set Up %1$@…", 14);
  v31 = sub_27463B66C();
  v32 = sub_27463B66C();

  v33 = [v25 localizedStringForKey:v31 value:v32 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_274648570;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_27440F250();
  *(v34 + 32) = v12;
  *(v34 + 40) = v14;
  v35 = sub_27463B67C();
  v37 = v36;

  sub_27440F2A4();
  v38 = sub_274443914(v45);
  OUTLINED_FUNCTION_5();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = a1;
  objc_allocWithZone(MEMORY[0x277D7D790]);
  v41 = a1;
  *(inited + 32) = sub_2744978D8(v44, v43, v35, v37, v38, sub_27440F2E8, v40);
  sub_27445BB24(inited);
  return v46;
}

void sub_27440E674(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong requestEditingSlotIdentifier_];
  }
}

id sub_27440E778(void *a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper] = 0;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v8;
}

id sub_27440E844()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27440E8B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_274638CDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_27463B9CC();

  v11 = sub_27463B9BC();
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 2) = v11;
  *(v13 + 3) = v14;
  *(v13 + 4) = v2;
  (*(v5 + 32))(&v13[v12], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_274512004();
}

uint64_t sub_27440EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  v5[6] = swift_task_alloc();
  v6 = sub_274638CCC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_274637E2C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_274638CDC();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_27463B9CC();
  v5[16] = sub_27463B9BC();
  v10 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27440EC6C, v10, v9);
}

uint64_t sub_27440EC6C()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
    return sub_27463C56C();
  }

  v3 = *(v1 + 24);
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[14];

  (*(v6 + 104))(v4, *MEMORY[0x277D0D7F0], v5);
  sub_27440F2F0(&qword_280949E18, MEMORY[0x277D0D830], MEMORY[0x277D0D838]);
  sub_27463B7DC();
  sub_27463B7DC();
  (*(v6 + 8))(v4, v5);
  if (v0[2] == v0[3])
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    (*(v12 + 104))(v9, *MEMORY[0x277D0D758], v11);
    sub_274638CBC();
    (*(v12 + 8))(v9, v11);
    (*(v8 + 16))(v13, v7, v10);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
    v2(v13);
    sub_274406A94(v2, v3);
    sub_27440F1E8(v13);
    (*(v8 + 8))(v7, v10);
  }

  else
  {
    v15 = v0[6];
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v0[10]);
    v2(v15);
    sub_274406A94(v2, v3);
    sub_27440F1E8(v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_27440EF54()
{
  sub_274406A94(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_27440EFFC(uint64_t a1)
{
  v4 = *(sub_274638CDC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27440F0F4;

  return sub_27440EA88(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_27440F0F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27440F1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27440F250()
{
  result = qword_28094B3F0;
  if (!qword_28094B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3F0);
  }

  return result;
}

unint64_t sub_27440F2A4()
{
  result = qword_280949EA0;
  if (!qword_280949EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280949EA0);
  }

  return result;
}

uint64_t sub_27440F2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27440F340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_27440F3D8()
{
  type metadata accessor for EditorHostingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280965DC8 = result;
  return result;
}

id WFFrameLayoutPlatformView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_0();

  return [v2 v3];
}

id WFFrameLayoutPlatformView.init(frame:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_0();
  v6 = type metadata accessor for WFFrameLayoutPlatformView();
  v2 = OUTLINED_FUNCTION_0_0();
  return objc_msgSendSuper2(v3, v4, v2, v1, v6);
}

id WFFrameLayoutPlatformView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WFFrameLayoutPlatformView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFFrameLayoutPlatformView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id WFFrameLayoutPlatformView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFFrameLayoutPlatformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkflowOutputPreviewView(uint64_t a1)
{
  result = qword_280949EC8;
  if (!qword_280949EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27440F6B0(uint64_t a1)
{
  sub_274412734(319, &unk_280950440, 0x277CFC2E0);
  if (v1 <= 0x3F)
  {
    sub_2746388BC();
    if (v2 <= 0x3F)
    {
      sub_27440F8B8(319, &qword_280949ED8, MEMORY[0x277D7D408], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_27440F804(319);
        if (v4 <= 0x3F)
        {
          sub_27440F868();
          if (v5 <= 0x3F)
          {
            sub_27440F8B8(319, &qword_280949EF8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_27440F804(uint64_t a1)
{
  if (!qword_280949EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949EE8, &qword_274648700);
    v1 = sub_27463AD1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280949EE0);
    }
  }
}

void sub_27440F868()
{
  if (!qword_280949EF0)
  {
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280949EF0);
    }
  }
}

void sub_27440F8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_27440F938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for WorkflowOutputPreviewView(0);
  sub_274412C20(v1 + *(v13 + 36), v12, &qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_27463BC0C();
    v16 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_27440FB1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = sub_2746389FC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = sub_274638C1C();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  sub_2746388BC();
  swift_allocObject();
  a2[1] = sub_2746388AC();
  v21 = type metadata accessor for WorkflowOutputPreviewView(0);
  v22 = v21[7];
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EE8, &qword_274648700);
  sub_27463ACDC();
  *(a2 + v22) = v48;
  v23 = v21[8];
  v47 = 0;
  sub_27463ACDC();
  *(a2 + v23) = v48;
  v24 = v21[9];
  *(a2 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  swift_storeEnumTagMultiPayload();
  *a2 = [a1 getListRepresentation];
  (*(v16 + 104))(v20, *MEMORY[0x277D79BD0], v14);
  LOBYTE(v24) = sub_274638C0C();
  (*(v16 + 8))(v20, v14);
  if (v24)
  {
    v25 = sub_27463BD5C();

    v26 = *MEMORY[0x277D7D410];
    sub_274638A0C();
    OUTLINED_FUNCTION_7();
    (*(v27 + 104))(v10, v26);
    v28 = MEMORY[0x277D7D3E0];
    if ((v25 & 1) == 0)
    {
      v28 = MEMORY[0x277D7D3E8];
    }

    v29 = v46;
    (*(v5 + 104))(v10, *v28, v46);
    *&v13[*(v45 + 28)] = 0;
    (*(v5 + 32))(v13, v10, v29);
    return sub_274412E58(v13, a2 + v21[6]);
  }

  else
  {
    v31 = v5;
    v33 = v45;
    v32 = v46;
    v34 = [a1 items];
    sub_274412734(0, &qword_280949F00, 0x277CFC2F8);
    v35 = sub_27463B81C();

    v36 = a1;
    if (sub_274453594())
    {
      sub_2744535A4();
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x277C58B20](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v33;
    }

    else
    {

      v38 = 0;
      v39 = v33;
    }

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A068, &qword_274648908) + 48);
    v41 = v44;
    *v44 = v38;
    *&v41[v40] = 0;
    v42 = *MEMORY[0x277D7D418];
    sub_274638A0C();
    OUTLINED_FUNCTION_7();
    (*(v43 + 104))(&v41[v40], v42);
    (*(v31 + 104))(v41, *MEMORY[0x277D7D3F0], v32);
    *(a2 + v21[6] + *(v39 + 28)) = 0;
    return (*(v31 + 32))();
  }
}

void sub_274410004(uint64_t a1@<X8>)
{
  v3 = sub_2746389FC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  type metadata accessor for WorkflowOutputPreviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0, &unk_2746486D0);
  sub_27463ACEC();
  v10 = [*v1 items];
  sub_274412734(0, &qword_280949F00, 0x277CFC2F8);
  sub_27463B81C();

  v11 = sub_2746389CC();

  (*(v5 + 8))(v9, v3);
  *a1 = sub_274639C5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F08, &qword_274648758);
  v12 = OUTLINED_FUNCTION_5_0();
  sub_274410180(v12, v13, v14);
}

uint64_t sub_274410180@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v63 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F10, &qword_274648760);
  MEMORY[0x28223BE20](v60);
  v54 = (&v52 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F18, &qword_274648768);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - v8;
  v9 = sub_274638C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F20, &qword_274648770);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F28, &qword_274648778);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F30, &qword_274648780);
  MEMORY[0x28223BE20](v57);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v24);
  v64 = &v52 - v25;
  sub_274410850(a1, v15);
  sub_27463B0CC();
  sub_27463973C();
  sub_27441277C(v15, v19, &qword_280949F20, &qword_274648770);
  memcpy(&v19[*(v17 + 44)], __src, 0x70uLL);
  v26 = *(v10 + 104);
  v56 = *MEMORY[0x277D79BD0];
  v55 = v26;
  v26(v12);
  LOBYTE(v15) = sub_274638C0C();
  v27 = *(v10 + 8);
  v27(v12, v9);
  v59 = a1;
  if ((v15 & 1) != 0 && (sub_27463BD5C() & 1) == 0)
  {
    sub_2744127C8(v68);
  }

  else
  {
    v28 = sub_274639C5C();
    LOBYTE(v65[0]) = 1;
    sub_2744111B4(v67);
    memcpy(&v66[7], v67, 0x71uLL);
    v29 = v65[0];
    v65[0] = v28;
    v65[1] = 0;
    LOBYTE(v65[2]) = v29;
    memcpy(&v65[2] + 1, v66, 0x78uLL);
    sub_274412774(v65);
    memcpy(v68, v65, 0x8AuLL);
  }

  memcpy(v65, v68, 0x8AuLL);
  v30 = sub_27463B0CC();
  v32 = v31;
  sub_27441277C(v19, v23, &qword_280949F28, &qword_274648778);
  v33 = &v23[*(v57 + 36)];
  memcpy(v33, v65, 0x90uLL);
  *(v33 + 18) = v30;
  *(v33 + 19) = v32;
  sub_27441277C(v23, v64, &qword_280949F30, &qword_274648780);
  v55(v12, v56, v9);
  LOBYTE(v30) = sub_274638C0C();
  v27(v12, v9);
  v34 = v59;
  if ((v30 & 1) != 0 && (sub_27463BD5C() & 1) == 0)
  {
    v45 = 1;
    v42 = v60;
    v43 = v61;
  }

  else
  {
    v35 = sub_274639B2C();
    v36 = v54;
    *v54 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F38, &qword_274648788);
    sub_2744113B8(v34, v53, v36 + *(v37 + 44));
    v38 = sub_27463A32C();
    v39 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F40, &qword_274648790) + 36);
    *v39 = v38;
    *(v39 + 8) = xmmword_274648680;
    *(v39 + 24) = xmmword_274648690;
    *(v39 + 40) = 0;
    sub_27463ABBC();
    v40 = sub_27463ABAC();

    v41 = sub_27463A32C();
    v42 = v60;
    v43 = v61;
    v44 = v36 + *(v60 + 36);
    *v44 = v40;
    *(v44 + 8) = v41;
    sub_27441277C(v36, v43, &qword_280949F10, &qword_274648760);
    v45 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v45, 1, v42);
  v46 = v64;
  v47 = v58;
  sub_274412C20(v64, v58, &qword_280949F30, &qword_274648780);
  v48 = v62;
  sub_274412C20(v43, v62, &qword_280949F18, &qword_274648768);
  v49 = v63;
  sub_274412C20(v47, v63, &qword_280949F30, &qword_274648780);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F48, &qword_274648798);
  sub_274412C20(v48, v49 + *(v50 + 48), &qword_280949F18, &qword_274648768);
  sub_27440CB1C(v43, &qword_280949F18, &qword_274648768);
  sub_27440CB1C(v46, &qword_280949F30, &qword_274648780);
  sub_27440CB1C(v48, &qword_280949F18, &qword_274648768);
  return sub_27440CB1C(v47, &qword_280949F30, &qword_274648780);
}