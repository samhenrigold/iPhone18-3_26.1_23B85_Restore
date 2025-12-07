unint64_t sub_1C90273FC(char a1)
{
  result = 0x79747265706F7270;
  switch(a1)
  {
    case 1:
      result = 0x73697261706D6F63;
      break;
    case 2:
      result = 0x644970756F7267;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9027490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9027294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C90274B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902894C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90274F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902894C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t ComparisonPredicate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E510, &qword_1C90C10A8);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = OUTLINED_FUNCTION_217(a1, a1[3]);
  sub_1C902894C(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_50_3(&type metadata for ComparisonPredicate.CodingKeys);
  v15 = OUTLINED_FUNCTION_61_18(v12, v13, v14);

  OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_68_9();
  if (v15)
  {
  }

  else
  {

    v31 = *(v3 + 40);
    v32 = *(v3 + 48);
    v16 = sub_1C8D06E80(v31, v32);
    sub_1C90289A0(v16, v17, v18);
    OUTLINED_FUNCTION_30_27();
    OUTLINED_FUNCTION_68_9();
    sub_1C8D06F08(v31, v32);
    type metadata accessor for ComparisonPredicate(0);
    OUTLINED_FUNCTION_78_11();
    OUTLINED_FUNCTION_2_72();
    sub_1C8CC80AC(v19, v20, MEMORY[0x1E69695B0]);
    v21 = OUTLINED_FUNCTION_57_15();
    v27 = OUTLINED_FUNCTION_50_19(v21, v22, v23, v24, v25, v26);
    sub_1C8D3A070(v27, v28, v29);
    OUTLINED_FUNCTION_30_27();
    OUTLINED_FUNCTION_68_9();
    OUTLINED_FUNCTION_114_6();
  }

  return (*(v7 + 8))(v2, v5);
}

uint64_t ComparisonPredicate.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_76_11(a1);
  OUTLINED_FUNCTION_94();
  sub_1C9063FBC();
  TypeInstance.hash(into:)();
  ComparisonPredicate.Comparison.hash(into:)();
  type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_116_10();
  OUTLINED_FUNCTION_2_72();
  sub_1C8CC80AC(v1, v2, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_117();
  sub_1C9063E7C();
  OUTLINED_FUNCTION_75_7();
  switch(v3)
  {
    case 1:
      v5 = 1;
      goto LABEL_7;
    case 2:
      v5 = 2;
LABEL_7:
      MEMORY[0x1CCA82810](v5);
      OUTLINED_FUNCTION_46_16();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_117();
      goto LABEL_8;
    case 3:
      v4 = 3;
      goto LABEL_5;
    default:
      v4 = 0;
LABEL_5:
      MEMORY[0x1CCA82810](v4);
      OUTLINED_FUNCTION_46_16();
LABEL_8:

      return sub_1C9063FBC();
  }
}

uint64_t sub_1C9027870(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void ComparisonPredicate.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_113_8(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E520, &qword_1C90C10B0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v7 = OUTLINED_FUNCTION_217(v0, v0[3]);
  v10 = sub_1C902894C(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_79_11(&type metadata for ComparisonPredicate.CodingKeys, v11, v10);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_111_6(v12, v13, v14);
    OUTLINED_FUNCTION_17_36(&type metadata for EntityPropertyDefinition);
    OUTLINED_FUNCTION_59_16();
    sub_1C90289F4(v15, v16, v17);
    OUTLINED_FUNCTION_17_36(&type metadata for ComparisonPredicate.Comparison);
    *(v5 + 40) = v29;
    OUTLINED_FUNCTION_2_72();
    sub_1C8CC80AC(v18, v19, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_47_19();
    v20 = OUTLINED_FUNCTION_53_17(v28);
    v22 = v21(v20);
    sub_1C8D3A118(v22, v23, v24);
    OUTLINED_FUNCTION_17_36(&type metadata for ContentItemClassDescriptor);
    v25 = OUTLINED_FUNCTION_23_30();
    v26(v25);
    OUTLINED_FUNCTION_52_19();
    sub_1C9028A48(v5, v27, type metadata accessor for ComparisonPredicate);
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C9028AA4(v5, type metadata accessor for ComparisonPredicate);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C9027BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

void ComparisonPredicate.contentItemClass.getter()
{
  v0 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_63_16(v0);
  ContentItemClassDescriptor.debugDescription.getter(v1, v2, v3, v4, v5, v6);
}

uint64_t ComparisonPredicate.init(contentItemClass:property:comparison:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = a3[1];
  v14 = *a3;
  v8 = *(a3 + 4);
  v9 = *a4;
  v10 = a4[1];
  v11 = a5 + *(type metadata accessor for ComparisonPredicate(0) + 28);
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *a5 = v14;
  *(a5 + 16) = v13;
  *(a5 + 32) = v8;
  *(a5 + 40) = v9;
  *(a5 + 48) = v10;
  return _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
}

unint64_t sub_1C9027D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69940;
  if (!qword_1EDA69940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69940);
  }

  return result;
}

unint64_t sub_1C9027D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633D0;
  if (!qword_1EDA633D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633D0);
  }

  return result;
}

unint64_t sub_1C9027DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633C8;
  if (!qword_1EDA633C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633C8);
  }

  return result;
}

unint64_t sub_1C9027E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A60;
  if (!qword_1EDA69A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A60);
  }

  return result;
}

unint64_t sub_1C9027E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63408;
  if (!qword_1EDA63408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63408);
  }

  return result;
}

unint64_t sub_1C9027ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63430;
  if (!qword_1EDA63430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63430);
  }

  return result;
}

unint64_t sub_1C9027F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63418;
  if (!qword_1EDA63418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63418);
  }

  return result;
}

unint64_t sub_1C9027F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63410;
  if (!qword_1EDA63410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63410);
  }

  return result;
}

unint64_t sub_1C9027FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63428;
  if (!qword_1EDA63428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63428);
  }

  return result;
}

unint64_t sub_1C902801C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63400;
  if (!qword_1EDA63400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63400);
  }

  return result;
}

unint64_t sub_1C9028070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633E8;
  if (!qword_1EDA633E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633E8);
  }

  return result;
}

unint64_t sub_1C90280C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A28;
  if (!qword_1EDA69A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A28);
  }

  return result;
}

unint64_t sub_1C9028118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633E0;
  if (!qword_1EDA633E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633E0);
  }

  return result;
}

unint64_t sub_1C902816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63420;
  if (!qword_1EDA63420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63420);
  }

  return result;
}

unint64_t sub_1C90281C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633D8;
  if (!qword_1EDA633D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633D8);
  }

  return result;
}

unint64_t sub_1C9028214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633F0;
  if (!qword_1EDA633F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633F0);
  }

  return result;
}

unint64_t sub_1C9028268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E2E0;
  if (!qword_1EC31E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E2E0);
  }

  return result;
}

unint64_t sub_1C90282BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E2E8;
  if (!qword_1EC31E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E2E8);
  }

  return result;
}

unint64_t sub_1C9028310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA633F8;
  if (!qword_1EDA633F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA633F8);
  }

  return result;
}

unint64_t sub_1C9028364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63438;
  if (!qword_1EDA63438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63438);
  }

  return result;
}

unint64_t sub_1C90283B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E400;
  if (!qword_1EC31E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E400);
  }

  return result;
}

unint64_t sub_1C902840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E408;
  if (!qword_1EC31E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E408);
  }

  return result;
}

unint64_t sub_1C9028460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E410;
  if (!qword_1EC31E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E410);
  }

  return result;
}

unint64_t sub_1C90284B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E418;
  if (!qword_1EC31E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E418);
  }

  return result;
}

unint64_t sub_1C9028508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E420;
  if (!qword_1EC31E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E420);
  }

  return result;
}

unint64_t sub_1C902855C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E428;
  if (!qword_1EC31E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E428);
  }

  return result;
}

unint64_t sub_1C90285B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E430;
  if (!qword_1EC31E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E430);
  }

  return result;
}

unint64_t sub_1C9028604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E438;
  if (!qword_1EC31E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E438);
  }

  return result;
}

unint64_t sub_1C9028658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E440;
  if (!qword_1EC31E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E440);
  }

  return result;
}

unint64_t sub_1C90286AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E448;
  if (!qword_1EC31E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E448);
  }

  return result;
}

unint64_t sub_1C9028700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E450;
  if (!qword_1EC31E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E450);
  }

  return result;
}

unint64_t sub_1C9028754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E458;
  if (!qword_1EC31E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E458);
  }

  return result;
}

unint64_t sub_1C90287A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E460;
  if (!qword_1EC31E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E460);
  }

  return result;
}

unint64_t sub_1C90287FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E468;
  if (!qword_1EC31E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E468);
  }

  return result;
}

unint64_t sub_1C9028850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E470;
  if (!qword_1EC31E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E470);
  }

  return result;
}

unint64_t sub_1C90288A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E478;
  if (!qword_1EC31E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E478);
  }

  return result;
}

unint64_t sub_1C90288F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E480;
  if (!qword_1EC31E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E480);
  }

  return result;
}

unint64_t sub_1C902894C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E518;
  if (!qword_1EC31E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E518);
  }

  return result;
}

unint64_t sub_1C90289A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609D8;
  if (!qword_1EDA609D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609D8);
  }

  return result;
}

unint64_t sub_1C90289F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609D0;
  if (!qword_1EDA609D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609D0);
  }

  return result;
}

uint64_t sub_1C9028A48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t sub_1C9028AA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C9028B44(void *a1)
{
  a1[1] = sub_1C8CC80AC(&qword_1EC31E528, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
  a1[2] = sub_1C8CC80AC(&qword_1EDA633B8, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
  a1[3] = sub_1C8CC80AC(&qword_1EDA633C0, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
  result = sub_1C8CC80AC(&qword_1EC31E530, type metadata accessor for ComparisonPredicate.Template, &protocol conformance descriptor for ComparisonPredicate.Template);
  a1[4] = result;
  return result;
}

unint64_t sub_1C9028C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E540;
  if (!qword_1EC31E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E540);
  }

  return result;
}

unint64_t sub_1C9028CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E548;
  if (!qword_1EC31E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E548);
  }

  return result;
}

uint64_t sub_1C9028D10(void *a1)
{
  a1[1] = sub_1C8CC80AC(&qword_1EC31E550, type metadata accessor for ComparisonPredicate, &protocol conformance descriptor for ComparisonPredicate);
  a1[2] = sub_1C8CC80AC(&qword_1EDA609B0, type metadata accessor for ComparisonPredicate, &protocol conformance descriptor for ComparisonPredicate);
  a1[3] = sub_1C8CC80AC(&qword_1EDA609B8, type metadata accessor for ComparisonPredicate, &protocol conformance descriptor for ComparisonPredicate);
  result = sub_1C8CC80AC(&qword_1EC31E558, type metadata accessor for ComparisonPredicate, &protocol conformance descriptor for ComparisonPredicate);
  a1[4] = result;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C906204C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C906204C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C9028F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C906204C();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit19ComparisonPredicateV0C0O(uint64_t a1)
{
  v1 = (*a1 >> 2) & 1 | (2 * (*(a1 + 8) & 7));
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 13;
  }
}

uint64_t sub_1C9029044(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x33 && *(a1 + 16))
    {
      v2 = *a1 + 50;
    }

    else
    {
      v2 = (((*a1 & 4 | (8 * (*(a1 + 8) & 7u))) >> 2) & 0xFFFFFFCF | (16 * (*a1 & 3))) ^ 0x3F;
      if (v2 >= 0x32)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C9029098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x32)
  {
    *result = a2 - 51;
    *(result + 8) = 0;
    if (a3 >= 0x33)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x33)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = (-a2 >> 4) & 3 | (4 * (-a2 & 0x3F)) & 7;
      *(result + 8) = (((-a2 >> 4) & 3 | (4 * (-a2 & 0x3F))) >> 3) & 7;
    }
  }

  return result;
}

int8x16_t sub_1C90290E8(int8x16_t *a1)
{
  result = vandq_s8(*a1, xmmword_1C90C0E60);
  *a1 = result;
  return result;
}

unint64_t *sub_1C9029100(unint64_t *result, unsigned int a2)
{
  if (a2 < 0xD)
  {
    v2 = *result & 0xFFFFFFFFFFFFFFF8 | (4 * (a2 & 1));
    v3 = result[1] & 0xFFFFFFFFFFFFFFF8 | (a2 >> 1);
  }

  else
  {
    v2 = (8 * (a2 - 13)) | 4;
    v3 = 6;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit19ComparisonPredicateV0C0O8TemplateO(void *a1)
{
  v1 = (*a1 >> 57) & 8 | *a1 & 7;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 13;
  }
}

_BYTE *storeEnumTagSinglePayload for ComparisonPredicate.Comparison.IsBetweenCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9029368(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9029534(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C90295E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C90296C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E568;
  if (!qword_1EC31E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E568);
  }

  return result;
}

unint64_t sub_1C9029718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E570;
  if (!qword_1EC31E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E570);
  }

  return result;
}

unint64_t sub_1C9029770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E578;
  if (!qword_1EC31E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E578);
  }

  return result;
}

unint64_t sub_1C90297C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E580;
  if (!qword_1EC31E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E580);
  }

  return result;
}

unint64_t sub_1C9029820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E588;
  if (!qword_1EC31E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E588);
  }

  return result;
}

unint64_t sub_1C9029878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E590;
  if (!qword_1EC31E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E590);
  }

  return result;
}

unint64_t sub_1C90298D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E598;
  if (!qword_1EC31E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E598);
  }

  return result;
}

unint64_t sub_1C9029928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5A0;
  if (!qword_1EC31E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5A0);
  }

  return result;
}

unint64_t sub_1C9029980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5A8;
  if (!qword_1EC31E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5A8);
  }

  return result;
}

unint64_t sub_1C90299D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5B0;
  if (!qword_1EC31E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5B0);
  }

  return result;
}

unint64_t sub_1C9029A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5B8;
  if (!qword_1EC31E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5B8);
  }

  return result;
}

unint64_t sub_1C9029A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5C0;
  if (!qword_1EC31E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5C0);
  }

  return result;
}

unint64_t sub_1C9029AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5C8;
  if (!qword_1EC31E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5C8);
  }

  return result;
}

unint64_t sub_1C9029B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5D0;
  if (!qword_1EC31E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5D0);
  }

  return result;
}

unint64_t sub_1C9029B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5D8;
  if (!qword_1EC31E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5D8);
  }

  return result;
}

unint64_t sub_1C9029BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5E0;
  if (!qword_1EC31E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5E0);
  }

  return result;
}

unint64_t sub_1C9029C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5E8;
  if (!qword_1EC31E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5E8);
  }

  return result;
}

unint64_t sub_1C9029C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5F0;
  if (!qword_1EC31E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5F0);
  }

  return result;
}

unint64_t sub_1C9029CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E5F8;
  if (!qword_1EC31E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E5F8);
  }

  return result;
}

unint64_t sub_1C9029D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E600;
  if (!qword_1EC31E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E600);
  }

  return result;
}

unint64_t sub_1C9029DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E608;
  if (!qword_1EC31E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E608);
  }

  return result;
}

unint64_t sub_1C9029DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E610;
  if (!qword_1EC31E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E610);
  }

  return result;
}

unint64_t sub_1C9029E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E618;
  if (!qword_1EC31E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E618);
  }

  return result;
}

unint64_t sub_1C9029EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E620;
  if (!qword_1EC31E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E620);
  }

  return result;
}

unint64_t sub_1C9029F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E628;
  if (!qword_1EC31E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E628);
  }

  return result;
}

unint64_t sub_1C9029F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E630;
  if (!qword_1EC31E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E630);
  }

  return result;
}

unint64_t sub_1C9029FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E638;
  if (!qword_1EC31E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E638);
  }

  return result;
}

unint64_t sub_1C902A008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E640;
  if (!qword_1EC31E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E640);
  }

  return result;
}

unint64_t sub_1C902A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E648;
  if (!qword_1EC31E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E648);
  }

  return result;
}

unint64_t sub_1C902A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E650;
  if (!qword_1EC31E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E650);
  }

  return result;
}

unint64_t sub_1C902A110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E658;
  if (!qword_1EC31E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E658);
  }

  return result;
}

unint64_t sub_1C902A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E660;
  if (!qword_1EC31E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E660);
  }

  return result;
}

unint64_t sub_1C902A1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E668;
  if (!qword_1EC31E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E668);
  }

  return result;
}

unint64_t sub_1C902A218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E670;
  if (!qword_1EC31E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E670);
  }

  return result;
}

unint64_t sub_1C902A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E678;
  if (!qword_1EC31E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E678);
  }

  return result;
}

unint64_t sub_1C902A2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E680;
  if (!qword_1EC31E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E680);
  }

  return result;
}

unint64_t sub_1C902A320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E688;
  if (!qword_1EC31E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E688);
  }

  return result;
}

unint64_t sub_1C902A378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E690;
  if (!qword_1EC31E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E690);
  }

  return result;
}

unint64_t sub_1C902A3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E698;
  if (!qword_1EC31E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E698);
  }

  return result;
}

unint64_t sub_1C902A428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6A0;
  if (!qword_1EC31E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6A0);
  }

  return result;
}

unint64_t sub_1C902A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6A8;
  if (!qword_1EC31E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6A8);
  }

  return result;
}

unint64_t sub_1C902A4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6B0;
  if (!qword_1EC31E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6B0);
  }

  return result;
}

unint64_t sub_1C902A530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6B8;
  if (!qword_1EC31E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6B8);
  }

  return result;
}

unint64_t sub_1C902A588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6C0;
  if (!qword_1EC31E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6C0);
  }

  return result;
}

unint64_t sub_1C902A5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6C8;
  if (!qword_1EC31E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6C8);
  }

  return result;
}

unint64_t sub_1C902A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6D0;
  if (!qword_1EC31E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6D0);
  }

  return result;
}

unint64_t sub_1C902A690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6D8;
  if (!qword_1EC31E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6D8);
  }

  return result;
}

unint64_t sub_1C902A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6E0;
  if (!qword_1EC31E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6E0);
  }

  return result;
}

unint64_t sub_1C902A740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6E8;
  if (!qword_1EC31E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6E8);
  }

  return result;
}

unint64_t sub_1C902A798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6F0;
  if (!qword_1EC31E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6F0);
  }

  return result;
}

unint64_t sub_1C902A7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E6F8;
  if (!qword_1EC31E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E6F8);
  }

  return result;
}

unint64_t sub_1C902A848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E700;
  if (!qword_1EC31E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E700);
  }

  return result;
}

unint64_t sub_1C902A8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E708;
  if (!qword_1EC31E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E708);
  }

  return result;
}

unint64_t sub_1C902A8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E710;
  if (!qword_1EC31E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E710);
  }

  return result;
}

unint64_t sub_1C902A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E718;
  if (!qword_1EC31E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E718);
  }

  return result;
}

unint64_t sub_1C902A9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E720;
  if (!qword_1EC31E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E720);
  }

  return result;
}

unint64_t sub_1C902AA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E728;
  if (!qword_1EC31E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E728);
  }

  return result;
}

unint64_t sub_1C902AA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E730;
  if (!qword_1EC31E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E730);
  }

  return result;
}

unint64_t sub_1C902AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E738;
  if (!qword_1EC31E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E738);
  }

  return result;
}

unint64_t sub_1C902AB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E740;
  if (!qword_1EC31E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E740);
  }

  return result;
}

unint64_t sub_1C902AB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E748;
  if (!qword_1EC31E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E748);
  }

  return result;
}

unint64_t sub_1C902ABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E750;
  if (!qword_1EC31E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E750);
  }

  return result;
}

unint64_t sub_1C902AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E758;
  if (!qword_1EC31E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E758);
  }

  return result;
}

unint64_t sub_1C902AC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E760;
  if (!qword_1EC31E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E760);
  }

  return result;
}

unint64_t sub_1C902ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E768;
  if (!qword_1EC31E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E768);
  }

  return result;
}

unint64_t sub_1C902AD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E770;
  if (!qword_1EC31E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E770);
  }

  return result;
}

unint64_t sub_1C902AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A40;
  if (!qword_1EDA69A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A40);
  }

  return result;
}

unint64_t sub_1C902ADC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A48;
  if (!qword_1EDA69A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A48);
  }

  return result;
}

unint64_t sub_1C902AE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69988;
  if (!qword_1EDA69988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69988);
  }

  return result;
}

unint64_t sub_1C902AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69990;
  if (!qword_1EDA69990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69990);
  }

  return result;
}

unint64_t sub_1C902AED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699F8;
  if (!qword_1EDA699F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699F8);
  }

  return result;
}

unint64_t sub_1C902AF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A00;
  if (!qword_1EDA69A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A00);
  }

  return result;
}

unint64_t sub_1C902AF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69998;
  if (!qword_1EDA69998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69998);
  }

  return result;
}

unint64_t sub_1C902AFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699A0;
  if (!qword_1EDA699A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699A0);
  }

  return result;
}

unint64_t sub_1C902B030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69978;
  if (!qword_1EDA69978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69978);
  }

  return result;
}

unint64_t sub_1C902B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69980;
  if (!qword_1EDA69980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69980);
  }

  return result;
}

unint64_t sub_1C902B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69948;
  if (!qword_1EDA69948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69948);
  }

  return result;
}

unint64_t sub_1C902B138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69950;
  if (!qword_1EDA69950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69950);
  }

  return result;
}

unint64_t sub_1C902B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699E8;
  if (!qword_1EDA699E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699E8);
  }

  return result;
}

unint64_t sub_1C902B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699F0;
  if (!qword_1EDA699F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699F0);
  }

  return result;
}

unint64_t sub_1C902B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69958;
  if (!qword_1EDA69958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69958);
  }

  return result;
}

unint64_t sub_1C902B298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69960;
  if (!qword_1EDA69960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69960);
  }

  return result;
}

unint64_t sub_1C902B2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A18;
  if (!qword_1EDA69A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A18);
  }

  return result;
}

unint64_t sub_1C902B348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A20;
  if (!qword_1EDA69A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A20);
  }

  return result;
}

unint64_t sub_1C902B3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69968;
  if (!qword_1EDA69968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69968);
  }

  return result;
}

unint64_t sub_1C902B3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69970;
  if (!qword_1EDA69970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69970);
  }

  return result;
}

unint64_t sub_1C902B450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699A8;
  if (!qword_1EDA699A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699A8);
  }

  return result;
}

unint64_t sub_1C902B4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699B0;
  if (!qword_1EDA699B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699B0);
  }

  return result;
}

unint64_t sub_1C902B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A08;
  if (!qword_1EDA69A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A08);
  }

  return result;
}

unint64_t sub_1C902B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A10;
  if (!qword_1EDA69A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A10);
  }

  return result;
}

unint64_t sub_1C902B5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699C8;
  if (!qword_1EDA699C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699C8);
  }

  return result;
}

unint64_t sub_1C902B608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699D0;
  if (!qword_1EDA699D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699D0);
  }

  return result;
}

unint64_t sub_1C902B660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699D8;
  if (!qword_1EDA699D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699D8);
  }

  return result;
}

unint64_t sub_1C902B6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699E0;
  if (!qword_1EDA699E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699E0);
  }

  return result;
}

unint64_t sub_1C902B710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A30;
  if (!qword_1EDA69A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A30);
  }

  return result;
}

unint64_t sub_1C902B768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A38;
  if (!qword_1EDA69A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A38);
  }

  return result;
}

unint64_t sub_1C902B7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699B8;
  if (!qword_1EDA699B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699B8);
  }

  return result;
}

unint64_t sub_1C902B818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA699C0;
  if (!qword_1EDA699C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA699C0);
  }

  return result;
}

unint64_t sub_1C902B870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A50;
  if (!qword_1EDA69A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A50);
  }

  return result;
}

unint64_t sub_1C902B8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A58;
  if (!qword_1EDA69A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A58);
  }

  return result;
}

unint64_t sub_1C902B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69930;
  if (!qword_1EDA69930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69930);
  }

  return result;
}

unint64_t sub_1C902B978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69938;
  if (!qword_1EDA69938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69938);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_25()
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_50_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6 + *(v7 + 28);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  *(v8 - 104) = *v10;
  *(v8 - 96) = v12;
  *(v8 - 88) = v13;
  *(v8 - 80) = v14;
  *(v8 - 72) = v15;
  *(v8 - 105) = 3;

  return sub_1C8D06F98(v11, v12, v13, v14, v15, a6);
}

__n128 OUTLINED_FUNCTION_52_19()
{
  v2 = *(v1 - 96);
  v3 = v0 + *(*(v1 - 176) + 28);
  result = *(v1 - 128);
  v5 = *(v1 - 112);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_15()
{

  return sub_1C9064B8C();
}

unint64_t OUTLINED_FUNCTION_61_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  *(v4 - 104) = *v3;
  *(v4 - 96) = v6;
  *(v4 - 88) = v7;
  *(v4 - 80) = v8;
  *(v4 - 72) = v9;
  *(v4 - 105) = 0;

  return sub_1C8E2F434(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_78_11()
{
  *(v0 - 104) = 2;

  return sub_1C906204C();
}

uint64_t OUTLINED_FUNCTION_79_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064DEC();
}

uint64_t OUTLINED_FUNCTION_80_9(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_110_8(uint64_t a1)
{

  return _s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0();
}

uint64_t OUTLINED_FUNCTION_113_8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 168) = a1;

  return sub_1C906204C();
}

uint64_t OUTLINED_FUNCTION_115_7()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_116_10()
{

  return sub_1C906204C();
}

uint64_t LocalizationUsage.toStaticDeferredLocalizedStringKind()()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E69AC268];
  v2 = *MEMORY[0x1E69AC268];
  return v1;
}

uint64_t LocalizationUsage.rawValue.getter()
{
  if (*v0)
  {
    return 0x65676175676E616CLL;
  }

  else
  {
    return 0x79616C70736964;
  }
}

ToolKit::LocalizationUsage_optional __swiftcall LocalizationUsage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C906497C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C902BD64@<X0>(uint64_t *a1@<X8>)
{
  result = LocalizationUsage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C902BE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E778;
  if (!qword_1EC31E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E778);
  }

  return result;
}

unint64_t sub_1C902BEB0()
{
  result = qword_1EC31E780;
  if (!qword_1EC31E780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31E788, &qword_1C90C55C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationUsage(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C902C000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E790;
  if (!qword_1EC31E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E790);
  }

  return result;
}

uint64_t IdSearchPredicate.init(protobuf:)@<X0>(uint64_t a1@<X0>, void *a6@<X8>)
{
  v8 = *(a1 + 16);
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  result = sub_1C902C1D8(a1, type metadata accessor for ToolKitProtoIdSearchPredicate);
  *a6 = v10;
  a6[1] = v9;
  a6[2] = v8;
  return result;
}

uint64_t IdSearchPredicate.protobuf(useCase:)@<X0>(void *a5@<X8>)
{
  v7 = *(v5 + 16);
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  type metadata accessor for ToolKitProtoIdSearchPredicate(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a5 = v9;
  a5[1] = v8;
  a5[2] = v7;
  return result;
}

uint64_t sub_1C902C1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C902C23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E798;
  if (!qword_1EC31E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E798);
  }

  return result;
}

unint64_t sub_1C902C294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AB8;
  if (!qword_1EDA60AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AB8);
  }

  return result;
}

uint64_t sub_1C902C328(uint64_t a1, uint64_t a2)
{
  v38 = sub_1C90627EC();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v39 = a2;
    v31[1] = v2;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C8D09DBC(0, v7, 0);
    v8 = v44;
    result = sub_1C8D3F274();
    v12 = result;
    v13 = 0;
    v14 = a1 + 56;
    v36 = v5 + 32;
    v37 = v5;
    v32 = a1 + 64;
    v15 = v33;
    v34 = v7;
    v35 = a1 + 56;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(a1 + 32))
      {
        v16 = v12 >> 6;
        if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_28;
        }

        v41 = v11;
        v40 = v10;
        v17 = a1;
        v18 = (*(a1 + 48) + 16 * v12);
        v19 = v18[1];
        v42 = *v18;
        v43 = v19;

        swift_getAtKeyPath();

        v44 = v8;
        v20 = v15;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1C8D09DBC(v21 > 1, v22 + 1, 1);
          v8 = v44;
        }

        *(v8 + 16) = v22 + 1;
        result = (*(v37 + 32))(v8 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v20, v38);
        if (v41)
        {
          goto LABEL_32;
        }

        v23 = 1 << *(v17 + 32);
        if (v12 >= v23)
        {
          goto LABEL_29;
        }

        v15 = v20;
        a1 = v17;
        v14 = v35;
        v24 = *(v35 + 8 * v16);
        if ((v24 & (1 << v12)) == 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 36) != v40)
        {
          goto LABEL_31;
        }

        v25 = v24 & (-2 << (v12 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v16 << 6;
          v27 = v16 + 1;
          v28 = (v32 + 8 * v16);
          while (v27 < (v23 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              result = sub_1C8CAF698(v12, v40, 0);
              v23 = __clz(__rbit64(v29)) + v26;
              goto LABEL_19;
            }
          }

          result = sub_1C8CAF698(v12, v40, 0);
LABEL_19:
          v15 = v33;
        }

        if (++v13 == v34)
        {

          return v8;
        }

        v11 = 0;
        v10 = *(a1 + 36);
        v12 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C902C670(uint64_t a1, uint64_t a2)
{
  v34 = sub_1C90627EC();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v35 = a2;
    v29[1] = v2;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C8D09DBC(0, v8, 0);
    v9 = v40;
    result = sub_1C8D3F274();
    v13 = result;
    v14 = 0;
    v38 = a1 + 56;
    v32 = v5 + 32;
    v33 = v5;
    v30 = a1 + 64;
    v31 = v8;
    v15 = a1;
    v36 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v15 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v38 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v15 + 36) != v11)
        {
          goto LABEL_28;
        }

        v17 = v12;
        v37 = v11;
        v39 = *(*(v15 + 48) + 8 * v13);

        swift_getAtKeyPath();

        v40 = v9;
        v19 = *(v9 + 16);
        v18 = *(v9 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1C8D09DBC(v18 > 1, v19 + 1, 1);
          v9 = v40;
        }

        *(v9 + 16) = v19 + 1;
        v20 = v7;
        result = (*(v33 + 32))(v9 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v19, v7, v34);
        if (v17)
        {
          goto LABEL_32;
        }

        v15 = v36;
        v21 = 1 << *(v36 + 32);
        if (v13 >= v21)
        {
          goto LABEL_29;
        }

        v22 = *(v38 + 8 * v16);
        if ((v22 & (1 << v13)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v36 + 36) != v37)
        {
          goto LABEL_31;
        }

        v23 = v22 & (-2 << (v13 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v16 << 6;
          v25 = v16 + 1;
          v26 = (v30 + 8 * v16);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              result = sub_1C8CAF698(v13, v37, 0);
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_19;
            }
          }

          result = sub_1C8CAF698(v13, v37, 0);
LABEL_19:
          v15 = v36;
        }

        if (++v14 == v31)
        {

          return v9;
        }

        v12 = 0;
        v11 = *(v15 + 36);
        v13 = v21;
        v7 = v20;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1C902C9AC()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v34 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v30 = v8 - v7;
  v9 = *(v3 + 16);
  if (v9)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C8D09DBC(0, v9, 0);
    v12 = v1(v3);
    v13 = 0;
    v14 = v3 + 56;
    v33 = v5;
    v29 = v3 + 64;
    v15 = v30;
    v31 = v9;
    v32 = v3 + 56;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v3 + 32))
      {
        v16 = v12 >> 6;
        if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v3 + 36) != v10)
        {
          goto LABEL_26;
        }

        v36 = v11;
        v35 = v10;
        v17 = v3;
        swift_getAtKeyPath();
        v18 = v15;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C8D09DBC(v19 > 1, v20 + 1, 1);
        }

        *(v37 + 16) = v20 + 1;
        (*(v33 + 32))(v37 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, v18, v34);
        if (v36)
        {
          goto LABEL_30;
        }

        v21 = 1 << *(v17 + 32);
        if (v12 >= v21)
        {
          goto LABEL_27;
        }

        v15 = v18;
        v3 = v17;
        v14 = v32;
        v22 = *(v32 + 8 * v16);
        if ((v22 & (1 << v12)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v3 + 36) != v35)
        {
          goto LABEL_29;
        }

        v23 = v22 & (-2 << (v12 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v16 << 6;
          v25 = v16 + 1;
          v26 = (v29 + 8 * v16);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_1C8CAF698(v12, v35, 0);
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v12, v35, 0);
LABEL_19:
          v15 = v30;
        }

        if (++v13 == v31)
        {
          goto LABEL_23;
        }

        v11 = 0;
        v10 = *(v3 + 36);
        v12 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_23:

    OUTLINED_FUNCTION_198();
  }
}

void sub_1C902CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  v28 = OUTLINED_FUNCTION_9(v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v49 - v29;
  v31 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  v56 = (v33 - v34);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v35);
  v51 = &v49 - v36;
  v52 = v37;
  v38 = *(v24 + 16);
  v39 = (v24 + 32);
  v55 = (v37 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  v53 = v41;
  v54 = v26;
  v50 = v30;
  if (v38)
  {
    while (1)
    {
      a10 = *v39;

      v26(&a10);
      if (v20)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
      {
        sub_1C8D27F8C(v30, &qword_1EC3162B0, &unk_1C9084E50);
      }

      else
      {
        v42 = v30;
        v43 = *v55;
        v44 = v51;
        (*v55)(v51, v42, v31);
        v43(v56, v44, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8D015D8();
          v40 = v47;
        }

        v45 = *(v40 + 16);
        if (v45 >= *(v40 + 24) >> 1)
        {
          sub_1C8D015D8();
          v40 = v48;
        }

        *(v40 + 16) = v45 + 1;
        v46 = v40 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v45;
        v31 = v53;
        v43(v46, v56, v53);
        v26 = v54;
        v30 = v50;
      }

      ++v39;
      if (!--v38)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C902E068()
{
  OUTLINED_FUNCTION_11_41();
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  OUTLINED_FUNCTION_91_5();
  v5 = (v0 + *(v4 + 136));
  v6 = v3[1];
  *v5 = *v3;
  v5[1] = v6;
  v5[2] = v3[2];
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_13_36(*(v7 + 144));
  v9 = *(v8 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_13_1();
  (*(v10 + 32))(v0 + v9, v2);
  OUTLINED_FUNCTION_91_5();
  *(v0 + *(v11 + 160)) = v1 & 1;
  OUTLINED_FUNCTION_91_5();
  return OUTLINED_FUNCTION_34_20(*(v12 + 168));
}

uint64_t sub_1C902E158()
{
  OUTLINED_FUNCTION_11_41();
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  OUTLINED_FUNCTION_91_5();
  memcpy((v0 + *(v4 + 136)), v3, 0x58uLL);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_13_36(*(v5 + 144));
  v7 = *(v6 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_13_1();
  (*(v8 + 32))(v0 + v7, v2);
  OUTLINED_FUNCTION_91_5();
  *(v0 + *(v9 + 160)) = v1 & 1;
  OUTLINED_FUNCTION_91_5();
  return OUTLINED_FUNCTION_34_20(*(v10 + 168));
}

uint64_t sub_1C902E244()
{
  OUTLINED_FUNCTION_11_41();
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  OUTLINED_FUNCTION_91_5();
  memcpy((v0 + *(v4 + 136)), v3, 0x70uLL);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_13_36(*(v5 + 144));
  v7 = *(v6 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_13_1();
  (*(v8 + 32))(v0 + v7, v2);
  OUTLINED_FUNCTION_91_5();
  *(v0 + *(v9 + 160)) = v1 & 1;
  OUTLINED_FUNCTION_91_5();
  return OUTLINED_FUNCTION_34_20(*(v10 + 168));
}

uint64_t sub_1C902E330(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  v17 = (v8 + *(*v8 + 136));
  *v17 = a1;
  v17[1] = a2;
  v18 = v8 + *(*v8 + 144);
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = *(*v8 + 152);
  v20 = sub_1C90620BC();
  (*(*(v20 - 8) + 32))(v8 + v19, a5, v20);
  *(v8 + *(*v8 + 160)) = a6 & 1;
  v21 = (v8 + *(*v8 + 168));
  *v21 = a7;
  v21[1] = a8;
  return v8;
}

uint64_t sub_1C902E46C()
{
  v1 = qword_1EDA6EBA8;
  sub_1C906204C();
  OUTLINED_FUNCTION_38_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_91_5();

  OUTLINED_FUNCTION_91_5();
  v4 = *(v3 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_38_2();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_91_5();

  return v0;
}

uint64_t sub_1C902E57C()
{
  v1 = qword_1EDA6EBA8;
  sub_1C906204C();
  OUTLINED_FUNCTION_38_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_91_5();
  v4 = (v0 + *(v3 + 136));
  v5 = v4[5];
  v6 = v4[7];
  v7 = v4[10];
  v12 = v4[9];

  j__swift_bridgeObjectRelease_0(v5);
  j__swift_bridgeObjectRelease_0(v6);
  sub_1C8CC7E94(v12, v7);
  OUTLINED_FUNCTION_91_5();
  v9 = *(v8 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_38_2();
  (*(v10 + 8))(v0 + v9);
  OUTLINED_FUNCTION_91_5();

  return v0;
}

uint64_t sub_1C902E6D0()
{
  v1 = qword_1EDA6EBA8;
  sub_1C906204C();
  OUTLINED_FUNCTION_38_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_91_5();
  v4 = (v0 + *(v3 + 136));
  v5 = v4[8];
  v10 = v4[11];
  v11 = v4[10];

  j__swift_bridgeObjectRelease_0(v5);
  sub_1C8CC7E94(v11, v10);

  OUTLINED_FUNCTION_91_5();
  v7 = *(v6 + 152);
  sub_1C90620BC();
  OUTLINED_FUNCTION_38_2();
  (*(v8 + 8))(v0 + v7);
  OUTLINED_FUNCTION_91_5();

  return v0;
}

uint64_t sub_1C902E840()
{
  v1 = qword_1EDA6EBA8;
  v2 = sub_1C906204C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 152);
  v4 = sub_1C90620BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TriggerDefinitionQuery.identifier.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

int64x2_t static TriggerDefinitionQuery.all()@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0xA000000000000000);
  *a1 = result;
  return result;
}

unint64_t TriggerDefinitionQuery.debugDescription.getter()
{
  v1 = *(v0 + 8);
  sub_1C906478C();

  v2 = sub_1C8DFFCB8(v1);
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0xD000000000000024;
}

unint64_t sub_1C902EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C902EA64(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C902EA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E7A0;
  if (!qword_1EC31E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E7A0);
  }

  return result;
}

uint64_t sub_1C902EABC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 16))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C902EB10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1C902EB70()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v14 = *v5;
  v13 = v5[1];
  v15 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  (*(v8 + 16))(v11 - v10, v1, v6);
  sub_1C902E330(v14, v13, v15, v3, v12, 0, sub_1C902EC90, 0);
  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C902EC90@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C8D500C8(__dst, v5);
  return sub_1C8DFF2C4(__srca, a2);
}

void sub_1C902ED04(uint64_t a1)
{
  v3 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_91_5();
  *(swift_allocObject() + 16) = a1;

  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_43_20();
  (*(v5 + 16))(v9, v1 + *(v10 + 152), v3);
  type metadata accessor for TriggerDefinitionQueryRequest(0);
  swift_allocObject();
  sub_1C902EB70();
}

void sub_1C902EE64()
{
  OUTLINED_FUNCTION_196();
  v103 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313380, &qword_1C906B530);
  OUTLINED_FUNCTION_11();
  v90 = v4;
  v91 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v77 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313388, &qword_1C906B538);
  OUTLINED_FUNCTION_11();
  v83 = v7;
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v80 = v8 - v9;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v77 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E7B8, &unk_1C90C58E0);
  OUTLINED_FUNCTION_11();
  v101 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v87 = v14 - v15;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v77 - v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v77 - v19;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192D0, &qword_1C909ED68);
  OUTLINED_FUNCTION_11();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_94_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133A0, &unk_1C90C58F0);
  OUTLINED_FUNCTION_11();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v77 - v34;
  OUTLINED_FUNCTION_43_20();
  v92 = *(v0 + *(v36 + 136) + 8);
  OUTLINED_FUNCTION_43_20();
  v37 = sub_1C906206C();
  if (qword_1EC3121B8 != -1)
  {
    v75 = v37;
    v76 = v38;
    swift_once();
    v37 = v75;
    v38 = v76;
  }

  v78 = v37;
  v79 = v38;
  qword_1EC391220();
  v100 = *(v24 + 32);
  v100(v1, v103, v22);
  v102 = v22;
  OUTLINED_FUNCTION_14_0();
  sub_1C8D28184(v39, &qword_1EC3133A0, &unk_1C90C58F0, v40);
  OUTLINED_FUNCTION_28_22();
  v93 = v35;
  sub_1C9062A1C();
  v41 = sub_1C8D28184(&qword_1EC31E7C8, &qword_1EC3192D0, &qword_1C909ED68, MEMORY[0x1E699FF78]);
  OUTLINED_FUNCTION_13_3();
  v42 = v102;
  sub_1C8D28184(v43, &qword_1EC3133A0, &unk_1C90C58F0, v44);
  v85 = v41;
  sub_1C906295C();
  v46 = *(v28 + 8);
  v45 = v28 + 8;
  v86 = v46;
  v46(v32, v26);
  v47 = *(v24 + 8);
  v95 = v24 + 8;
  v82 = v47;
  (v47)(v1, v42);
  v48 = OUTLINED_FUNCTION_124();
  (v100)(v48);
  if (qword_1EC3121C0 != -1)
  {
    swift_once();
  }

  v94 = v1;
  v98 = v45;
  v100 = v26;
  v49 = v97;
  v77 = __swift_project_value_buffer(v97, qword_1EC391230);
  v50 = v87;
  if (qword_1EC3111F0 != -1)
  {
    swift_once();
  }

  v51 = v80;
  qword_1EC390770(v78, v79);

  OUTLINED_FUNCTION_14_0();
  sub_1C8D28184(v52, v53, &qword_1C906B538, v54);
  v55 = v81;
  OUTLINED_FUNCTION_28_22();
  v56 = v84;
  sub_1C9062A1C();
  v57 = *(v83 + 8);
  v57(v51, v56);
  sub_1C8D28184(&qword_1EC31E7E0, &qword_1EC31E7B8, &unk_1C90C58E0, MEMORY[0x1E699FEF8]);
  OUTLINED_FUNCTION_13_3();
  sub_1C8D28184(v58, &qword_1EC313388, &qword_1C906B538, v59);
  sub_1C906296C();
  v57(v55, v56);
  v60 = v101;
  if (qword_1EC3111F8 != -1)
  {
    swift_once();
  }

  v61 = v91;
  __swift_project_value_buffer(v91, qword_1EC390780);
  sub_1C8D28184(&qword_1EC31E7F0, &qword_1EC313380, &qword_1C906B530, MEMORY[0x1E699FF38]);
  v62 = v89;
  sub_1C9062A1C();
  sub_1C8D28184(&qword_1EC31E7F8, &qword_1EC313380, &qword_1C906B530, MEMORY[0x1E699FF30]);
  v63 = v88;
  sub_1C906296C();
  (*(v90 + 8))(v62, v61);
  v64 = *(v60 + 8);
  v64(v50, v49);
  v65 = sub_1C8D28184(&qword_1EC31E800, &qword_1EC31E7B8, &unk_1C90C58E0, MEMORY[0x1E699FEE0]);
  v66 = v96;
  v101 = v65;
  sub_1C9062B1C();
  v64(v63, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D48, &qword_1C90A7020);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1C906A950;
  if (qword_1EC3111C8 != -1)
  {
    swift_once();
  }

  v68 = sub_1C9062E6C();
  v69 = __swift_project_value_buffer(v68, qword_1EC3906F8);
  v70 = MEMORY[0x1E69A0048];
  *(v67 + 56) = v68;
  *(v67 + 64) = v70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v67 + 32));
  (*(*(v68 - 8) + 16))(boxed_opaque_existential_1, v69, v68);
  sub_1C8D28184(&qword_1EC31E808, &qword_1EC31E7B8, &unk_1C90C58E0, MEMORY[0x1E699FEE8]);
  v72 = v99;
  sub_1C906280C();

  v64(v66, v49);
  sub_1C906294C();
  v64(v72, v49);
  v73 = OUTLINED_FUNCTION_136();
  v82(v73);
  if (qword_1EC312198 != -1)
  {
    swift_once();
  }

  v74 = __swift_project_value_buffer(v68, qword_1EC3911C0);
  sub_1C902F940(v103, v74);
  v86(v93, v100);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C902F8A0()
{
  v0 = sub_1C902E840();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for TriggerDefinitionQueryRequest(uint64_t a1)
{
  result = qword_1EC31E7A8;
  if (!qword_1EC31E7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C902F940(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192D0, &qword_1C909ED68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C90627EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C9062E6C();
  v21[3] = v14;
  v21[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a2, v14);
  sub_1C902CF6C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C8D27F8C(v9, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v4 + 32))(v6, v19, v3);
    v20[3] = v10;
    v20[4] = MEMORY[0x1E699FE60];
    v16 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(v11 + 16))(v16, v13, v10);
    sub_1C8D28184(&qword_1EC31E810, &qword_1EC3192D0, &qword_1C909ED68, MEMORY[0x1E699FF70]);
    sub_1C906292C();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1C902FC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *OUTLINED_FUNCTION_35_26@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_50_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C90640CC();
}

uint64_t OUTLINED_FUNCTION_51_16()
{

  return sub_1C902FC80(v0, v1);
}

uint64_t sub_1C902FE20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 266))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C902FE60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 266) = 1;
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

    *(result + 266) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C902FEF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C90CCE60 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1C902FF8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E858, &qword_1C90C5FB0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__dst[-v9 - 8];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9031ED4(v11, v12, v13);
  v14 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1C8E2A994(v14, v15, v16);
  sub_1C9064A6C();
  (*(v7 + 8))(v10, v5);
  memcpy(__dst, __src, sizeof(__dst));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return memcpy(a2, __dst, 0x52uLL);
}

uint64_t sub_1C9030128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C90CCDC0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1C90301C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E848, &qword_1C90C5FA0);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9031DB0(v9, v10, v11);
  sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E850, &qword_1C90C5FA8);
    sub_1C9031E04(&qword_1EDA66738, &qword_1EC31E850, &qword_1C90C5FA8, sub_1C9031E80);
    sub_1C9064A6C();
    (*(v5 + 8))(v8, v3);
    v9 = v13[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1C9030364(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C9030434(char a1)
{
  if (a1)
  {
    return 0x6F43656372756F73;
  }

  else
  {
    return 1819242356;
  }
}

void *sub_1C9030470@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E838, &qword_1C90C5D18);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9031A50(v5, v6, v7);
  v8 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  sub_1C9031AA4(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_5_55(&unk_1F48B7E50, v19);
  v12 = v20;
  v24 = 1;
  sub_1C9031AF8(v11, v13, v14);
  OUTLINED_FUNCTION_5_55(&unk_1F48B7E28, &v24);
  v15 = OUTLINED_FUNCTION_1_5();
  v16(v15);
  memcpy(__dst, v22, sizeof(__dst));
  v19[0] = v12;
  memcpy(&v19[1], v22, 0x52uLL);
  sub_1C9031B4C(v19, &v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v12;
  memcpy(v21, __dst, sizeof(v21));
  sub_1C9031B84(&v20);
  return memcpy(a2, v19, 0x5AuLL);
}

uint64_t sub_1C9030698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365707974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C90CA3A0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1819242356 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C9030848(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x617A696C61636F6CLL;
      break;
    case 2:
      result = 0x7365707974;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90308E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E818, &qword_1C90C5B28);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C90312F4(v10, v11, v12);
  v46 = v9;
  v13 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = a2;
  LOBYTE(v47[0]) = 0;
  sub_1C8F0BBEC(v13, v14, v15);
  v16 = sub_1C9064A6C();
  v42 = v50;
  v43 = v48;
  v39 = v49;
  v40 = v51;
  v17 = v53;
  v41 = v52;
  v18 = v54;
  __dst[127] = 1;
  sub_1C8D7DF94(v16, v19, v20);
  sub_1C9064A6C();
  v37 = v17;
  v38 = v6;
  v36 = v18;
  memcpy(__dst, v60, 0x68uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E820, &qword_1C90C5B30);
  LOBYTE(v47[0]) = 2;
  sub_1C9031E04(&qword_1EDA60520, &qword_1EC31E820, &qword_1C90C5B30, sub_1C8D16814);
  sub_1C9064A6C();
  v21 = a1;
  v22 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E828, &qword_1C90C5B38);
  LOBYTE(v47[0]) = 3;
  sub_1C9031E04(&qword_1EDA66768, &qword_1EC31E828, &qword_1C90C5B38, sub_1C9031348);
  v23 = sub_1C9064A6C();
  v35 = v48;
  __dst[126] = 4;
  sub_1C903139C(v23, v24, v25);
  sub_1C9064A6C();
  v26 = OUTLINED_FUNCTION_1_79();
  v27(v26);
  memcpy(v61, v59, sizeof(v61));
  v28 = v42;
  v29 = v39;
  v47[0] = v43;
  v47[1] = v39;
  v30 = v41;
  v47[2] = v42;
  v47[3] = v40;
  v31 = v36;
  v47[4] = v41;
  v47[5] = v37;
  v47[6] = v36;
  memcpy(&v47[7], __dst, 0x68uLL);
  v32 = v35;
  v47[20] = v22;
  v47[21] = v35;
  memcpy(&v47[22], v59, 0x5AuLL);
  memcpy(v44, v47, 0x10AuLL);
  sub_1C90313F0(v47, &v48);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v48 = v43;
  v49 = v29;
  v50 = v28;
  v51 = v40;
  v52 = v30;
  v53 = v37;
  v54 = v31;
  memcpy(v55, __dst, sizeof(v55));
  v56 = v22;
  v57 = v32;
  memcpy(v58, v61, sizeof(v58));
  return sub_1C9031428(&v48);
}

uint64_t sub_1C9030DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C902FEF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9030E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9031ED4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9030E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9031ED4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C9030E90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C902FF8C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x52uLL);
  }

  return result;
}

uint64_t sub_1C9030EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9031AF8(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C9030F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9030128(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9030F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9031DB0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9030FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9031DB0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C9030FE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C90301C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C9031014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9031AA4(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C9031080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9030364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C90310A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9031A50(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90310E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9031A50(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C9031120@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9030470(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x5AuLL);
  }

  return result;
}

uint64_t sub_1C903116C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C903139C(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C90311D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9030698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9031200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90312F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C903123C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90312F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9031290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9031458(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C90312F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62810;
  if (!qword_1EDA62810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62810);
  }

  return result;
}

unint64_t sub_1C9031348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA668D0;
  if (!qword_1EDA668D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668D0);
  }

  return result;
}

unint64_t sub_1C903139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62818;
  if (!qword_1EDA62818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62818);
  }

  return result;
}

unint64_t sub_1C9031458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA627F8;
  if (!qword_1EDA627F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA627F8);
  }

  return result;
}

uint64_t sub_1C90314AC@<X0>(void *__src@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x10AuLL);
  v37 = *a2;
  v5 = __dst[0];
  v44 = __dst[1];
  v6 = __dst[4];
  v41 = __dst[13];
  v42 = __dst[12];
  v39 = __dst[15];
  v40 = __dst[14];
  v32 = __dst[16];
  v33 = __dst[18];
  v7 = __dst[25];
  v47 = __dst[19];
  v48 = __dst[17];
  v8 = __dst[22];
  v9 = *(__dst[22] + 16);
  v35 = __dst[4];
  v36 = __dst[0];
  v45 = __dst[26];
  v46 = __dst[5];
  v34 = __dst[25];
  v43 = __dst[2];
  if (v9)
  {
    v53[0] = MEMORY[0x1E69E7CC0];

    sub_1C8CA6480();
    v10 = v53[0];
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v53[0] = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_1C8CA6480();
        v10 = v53[0];
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 3;
      --v9;
    }

    while (v9);
    v6 = v35;
    v5 = v36;
    v7 = v34;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v17 = v47;
  if (v37)
  {
    v18 = __dst[21];
    v19 = *(__dst[21] + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1C8D096FC(0, v19, 0);
      v20 = v52;
      v21 = (v18 + 32);
      do
      {
        memcpy(v53, v21, sizeof(v53));
        sub_1C8D92284(v53, &v49);
        sub_1C8D923F8(v53, &v49);
        v22 = v49;
        v23 = v50;
        v24 = v51;
        v52 = v20;
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          v38 = v50;
          sub_1C8D096FC((v25 > 1), v26 + 1, 1);
          v23 = v38;
          v20 = v52;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + 32 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v23;
        *(v27 + 56) = v24;
        v21 += 72;
        --v19;
      }

      while (v19);
      v6 = v35;
      v5 = v36;
      v7 = v34;
      v17 = v47;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v48)
  {
    if (v17)
    {
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v48 = 0;
    }

    v30 = v32;
    v28 = v33;
    v29 = v48;
  }

  else
  {
    v17 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  result = sub_1C9031428(__dst);
  *a3 = v44;
  a3[1] = v43;
  a3[2] = v42;
  a3[3] = v41;
  a3[4] = v40;
  a3[5] = v39;
  a3[6] = v46;
  a3[7] = v5;
  a3[8] = v6;
  a3[9] = v30;
  a3[10] = v29;
  a3[11] = v28;
  a3[12] = v17;
  a3[13] = v7;
  a3[14] = v45;
  a3[15] = v10;
  a3[16] = v20;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedToolParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C90318A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_1C90318E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C903194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E830;
  if (!qword_1EC31E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E830);
  }

  return result;
}

unint64_t sub_1C90319A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62800;
  if (!qword_1EDA62800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62800);
  }

  return result;
}

unint64_t sub_1C90319FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62808;
  if (!qword_1EDA62808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62808);
  }

  return result;
}

unint64_t sub_1C9031A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62830;
  if (!qword_1EDA62830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62830);
  }

  return result;
}

unint64_t sub_1C9031AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62858;
  if (!qword_1EDA62858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62858);
  }

  return result;
}

unint64_t sub_1C9031AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62838;
  if (!qword_1EDA62838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62838);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedToolParameter.FetchedToolInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9031CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E840;
  if (!qword_1EC31E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E840);
  }

  return result;
}

unint64_t sub_1C9031D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62820;
  if (!qword_1EDA62820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62820);
  }

  return result;
}

unint64_t sub_1C9031D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62828;
  if (!qword_1EDA62828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62828);
  }

  return result;
}

unint64_t sub_1C9031DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62870[0];
  if (!qword_1EDA62870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA62870);
  }

  return result;
}

uint64_t sub_1C9031E04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9031E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66830;
  if (!qword_1EDA66830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66830);
  }

  return result;
}

unint64_t sub_1C9031ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62850;
  if (!qword_1EDA62850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62850);
  }

  return result;
}

_BYTE *sub_1C9031F38(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9031FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E860;
  if (!qword_1EC31E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E860);
  }

  return result;
}

unint64_t sub_1C9032040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E868;
  if (!qword_1EC31E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E868);
  }

  return result;
}

unint64_t sub_1C9032098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62840;
  if (!qword_1EDA62840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62840);
  }

  return result;
}

unint64_t sub_1C90320F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62848;
  if (!qword_1EDA62848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62848);
  }

  return result;
}

unint64_t sub_1C9032148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62860;
  if (!qword_1EDA62860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62860);
  }

  return result;
}

unint64_t sub_1C90321A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62868;
  if (!qword_1EDA62868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62868);
  }

  return result;
}

void ComparisonPredicate.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v41 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  v9 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v40 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314758, &qword_1C9074E18);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_142();
  v19 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  OUTLINED_FUNCTION_116();
  v20 = sub_1C8D63FCC();
  sub_1C8D719E0(v20, v21, v22);
  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_13_37();
    sub_1C903566C(v4, v23);
  }

  else
  {
    *v41 = v42;
    *(v41 + 16) = v43;
    *(v41 + 32) = v44;
    OUTLINED_FUNCTION_57_16(*(v19 + 24));
    v24 = sub_1C8D63FCC();
    sub_1C90326DC(v24, v25, v26);
    sub_1C906351C();
    *(v41 + 40) = v42;
    sub_1C9061FFC();
    if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
    {
      sub_1C8D16D78(v1, &qword_1EC313B18, &qword_1C906F5B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143E8, &qword_1C9073818);
      v27 = sub_1C8D4F674(&qword_1EC3143F0, &qword_1EC3143E8, &qword_1C9073818);
      OUTLINED_FUNCTION_89(v27);
      *v28 = v9;
      OUTLINED_FUNCTION_10_0();
      (*(v29 + 104))(v30);
      swift_willThrow();
      OUTLINED_FUNCTION_13_37();
      sub_1C903566C(v4, v31);

      sub_1C8D06F08(*(v41 + 40), *(v41 + 48));
    }

    else
    {
      (*(v40 + 32))(v14, v1, v9);
      v32 = type metadata accessor for ComparisonPredicate(0);
      (*(v40 + 16))(v41 + *(v32 + 24), v14, v9);
      v33 = sub_1C8D63FCC();
      sub_1C8D85254(v33, v34, v35);
      sub_1C906351C();
      v36 = OUTLINED_FUNCTION_227();
      v37(v36);
      OUTLINED_FUNCTION_13_37();
      sub_1C903566C(v4, v38);
      v39 = v41 + *(v32 + 28);
      *v39 = v42;
      *(v39 + 16) = v43;
      *(v39 + 32) = v44;
    }
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C90326DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E870;
  if (!qword_1EC31E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E870);
  }

  return result;
}

void ComparisonPredicate.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_54_18(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314758, &qword_1C9074E18);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_142();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37_23();

  OUTLINED_FUNCTION_50_21();
  if (v0)
  {

    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_226();
    v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    v18 = OUTLINED_FUNCTION_61_19(v15, v16, v17);
    v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v18);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v3 = v44;
    v3[1] = v2;
    v3[2] = v43;
    v3[3] = v1;
    sub_1C8D7300C();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
    v26 = v4[5];
    v27 = v4[6];
    v45 = v26;
    sub_1C8D06E80(v26, v27);
    OUTLINED_FUNCTION_49_21();
    ComparisonPredicate.Comparison.protobuf(useCase:)();
    sub_1C8D06F08(v26, v27);
    v28 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
    type metadata accessor for ComparisonPredicate(0);
    v32 = sub_1C906200C();
    OUTLINED_FUNCTION_36_22(v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_51_17();
    sub_1C8D06FF4(v45, v27, v46, v47, v48);
    type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
    OUTLINED_FUNCTION_150();
    v41 = OUTLINED_FUNCTION_61_19(v38, v39, v40);
    v42 = type metadata accessor for ToolKitProtoComparisonPredicate(v41);
    OUTLINED_FUNCTION_30_29(v42);
    sub_1C8D7300C();
    sub_1C8D7300C();
    *v4 = v44;
    v4[1] = v43;
    sub_1C8D7300C();
  }

  OUTLINED_FUNCTION_198();
}

void ComparisonPredicate.Comparison.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v76 = v3;
  v77 = v1;
  v75 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v73[0] = v7 - v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  v73[1] = v73 - v10;
  v11 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(v11);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v73 - v16;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v73 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v73 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v73 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v73 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v73 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_43_21();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v73 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_216();
  v74 = v41;
  switch((*v0 >> 2) & 1 | (2 * (v0[1] & 7)))
  {
    case 1:
      OUTLINED_FUNCTION_17_38();
      v55 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v55)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        v43 = v2;
        goto LABEL_29;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_17_38();
      v51 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v51)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        v43 = v34;
        goto LABEL_29;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_17_38();
      v52 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v52)
      {
        goto LABEL_28;
      }

      break;
    case 4:
      OUTLINED_FUNCTION_17_38();
      v44 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v44)
      {
        goto LABEL_33;
      }

      break;
    case 5:
      OUTLINED_FUNCTION_17_38();
      v56 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v56)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        v43 = v25;
        goto LABEL_29;
      }

      break;
    case 6:
      v57 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v57)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_60_17(v22);
        goto LABEL_30;
      }

      break;
    case 7:
      OUTLINED_FUNCTION_17_38();
      v53 = v77;
      v31 = v54;
      TypedValue.protobuf(useCase:)();
      if (!v53)
      {
        goto LABEL_28;
      }

      break;
    case 8:
      OUTLINED_FUNCTION_17_38();
      v31 = v60;
      v61 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v61)
      {
        goto LABEL_28;
      }

      break;
    case 9:
      OUTLINED_FUNCTION_17_38();
      v31 = v17;
      v50 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v50)
      {
        goto LABEL_28;
      }

      break;
    case 0xALL:
      OUTLINED_FUNCTION_17_38();
      v31 = v58;
      v59 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v59)
      {
        goto LABEL_28;
      }

      break;
    case 0xBLL:
      OUTLINED_FUNCTION_52_20();
      TypedValue.protobuf(useCase:)();
      if (!v17)
      {
LABEL_28:
        OUTLINED_FUNCTION_93();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        v43 = v31;
        goto LABEL_29;
      }

      break;
    case 0xCLL:
      v28 = v40;
      v45 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v45)
      {
        v46 = type metadata accessor for ToolKitProtoTypedValue(0);
        OUTLINED_FUNCTION_150();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
        v34 = v73[0];
        TypedValue.protobuf(useCase:)();
        OUTLINED_FUNCTION_150();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v46);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v46);
        type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v46);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        sub_1C8D7300C();
        sub_1C8D7300C();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        v43 = v28;
        goto LABEL_29;
      }

      break;
    case 0xDLL:
      v34 = v74;
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    default:
      v42 = v77;
      TypedValue.protobuf(useCase:)();
      if (!v42)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_42();
        v43 = v38;
LABEL_29:
        OUTLINED_FUNCTION_60_17(v43);
LABEL_30:
        v62 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
        MEMORY[0x1EEE9AC00](v62);
        OUTLINED_FUNCTION_58_15();
        sub_1C9035754(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
        OUTLINED_FUNCTION_116();
        sub_1C9063ACC();
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v34, v63);
      }

      break;
  }

  OUTLINED_FUNCTION_198();
}

void ComparisonPredicate.Template.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v44 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_97();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v41 = v6;
  OUTLINED_FUNCTION_111();
  v7 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314780, &qword_1C9074E40);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_142();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_57_16(*(v17 + 20));
  v18 = sub_1C8D63FCC();
  sub_1C8D719E0(v18, v19, v20);
  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_15_34();
  }

  else
  {
    *v44 = v45;
    *(v44 + 16) = v46;
    *(v44 + 32) = v47;
    v21 = sub_1C8D63FCC();
    sub_1C9034A84(v21, v22, v23);
    sub_1C906351C();
    *(v44 + 40) = v45;
    sub_1C9061FFC();
    if (__swift_getEnumTagSinglePayload(v41, 1, v7) == 1)
    {
      sub_1C8D16D78(v41, &qword_1EC313B18, &qword_1C906F5B8);
      v24 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      OUTLINED_FUNCTION_116();
      v29 = sub_1C8D4F674(v26, v27, v28);
      OUTLINED_FUNCTION_89(v29);
      *v30 = v7;
      OUTLINED_FUNCTION_10_0();
      (*(v31 + 104))(v32);
      swift_willThrow();
      OUTLINED_FUNCTION_15_34();

      sub_1C8D07700(*(v44 + 40));
    }

    else
    {
      v33 = OUTLINED_FUNCTION_94();
      v34(v33);
      v42 = type metadata accessor for ComparisonPredicate.Template(0);
      (*(v43 + 16))(v44 + *(v42 + 24), v12, v7);
      v35 = sub_1C8D63FCC();
      sub_1C8D85254(v35, v36, v37);
      sub_1C906351C();
      v38 = OUTLINED_FUNCTION_227();
      v39(v38);
      OUTLINED_FUNCTION_15_34();
      v40 = v44 + *(v42 + 28);
      *v40 = v45;
      *(v40 + 16) = v46;
      *(v40 + 32) = v47;
    }
  }

  OUTLINED_FUNCTION_198();
}

void ComparisonPredicate.Template.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_54_18(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314780, &qword_1C9074E40);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_142();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37_23();

  OUTLINED_FUNCTION_50_21();
  if (v0)
  {

    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_226();
    v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    v18 = OUTLINED_FUNCTION_61_19(v15, v16, v17);
    v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v18);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v3 = v43;
    v3[1] = v2;
    v3[2] = v42;
    v3[3] = v1;
    sub_1C8D7300C();
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
    v26 = v4[5];
    v44 = v26;
    sub_1C8D076FC(v26);
    OUTLINED_FUNCTION_49_21();
    ComparisonPredicate.Comparison.Template.protobuf(useCase:)();
    sub_1C8D07700(v26);
    v27 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
    type metadata accessor for ComparisonPredicate.Template(0);
    v31 = sub_1C906200C();
    OUTLINED_FUNCTION_36_22(v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_51_17();
    sub_1C8D06FF4(v44, v45, v46, v47, v48);
    type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
    OUTLINED_FUNCTION_150();
    v40 = OUTLINED_FUNCTION_61_19(v37, v38, v39);
    v41 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(v40);
    OUTLINED_FUNCTION_30_29(v41);
    sub_1C8D7300C();
    sub_1C8D7300C();
    *v4 = v43;
    v4[1] = v42;
    sub_1C8D7300C();
  }

  OUTLINED_FUNCTION_198();
}

void ComparisonPredicate.Comparison.Template.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v54[2] = v3;
  v55 = v1;
  v54[1] = v4;
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v54 - v9;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v54 - v12);
  OUTLINED_FUNCTION_43_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v54 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v54 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v54 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v54 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v54 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_216();
  v54[0] = v35;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1:
      OUTLINED_FUNCTION_14_41();
      v45 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v45)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v33;
        goto LABEL_29;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_14_41();
      v42 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v42)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v27;
        goto LABEL_29;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_14_41();
      v43 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v43)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v24;
        goto LABEL_29;
      }

      break;
    case 4:
      OUTLINED_FUNCTION_14_41();
      v39 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v39)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v21;
        goto LABEL_29;
      }

      break;
    case 5:
      OUTLINED_FUNCTION_16_35();
      v46 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v46)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v18;
        goto LABEL_29;
      }

      break;
    case 6:
      OUTLINED_FUNCTION_16_35();
      v47 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v47)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        OUTLINED_FUNCTION_60_17(v15);
        goto LABEL_30;
      }

      break;
    case 7:
      OUTLINED_FUNCTION_14_41();
      v44 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v44)
      {
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v2;
        goto LABEL_29;
      }

      break;
    case 8:
      OUTLINED_FUNCTION_14_41();
      v30 = v50;
      v51 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v51)
      {
        goto LABEL_28;
      }

      break;
    case 9:
      OUTLINED_FUNCTION_14_41();
      v30 = v10;
      v41 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v41)
      {
        goto LABEL_28;
      }

      break;
    case 0xALL:
      OUTLINED_FUNCTION_14_41();
      v30 = v48;
      v49 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v49)
      {
        goto LABEL_28;
      }

      break;
    case 0xBLL:
      OUTLINED_FUNCTION_14_41();
      v30 = v37;
      v38 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v38)
      {
        goto LABEL_28;
      }

      break;
    case 0xCLL:
      OUTLINED_FUNCTION_52_20();
      TypeInstance.protobuf(useCase:)();
      if (!v10)
      {
        goto LABEL_28;
      }

      break;
    case 0xDLL:
      v33 = v54[0];
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    default:
      v36 = v55;
      TypeInstance.protobuf(useCase:)();
      if (!v36)
      {
LABEL_28:
        OUTLINED_FUNCTION_93();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_10_47();
        v40 = v30;
LABEL_29:
        OUTLINED_FUNCTION_60_17(v40);
LABEL_30:
        v52 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
        MEMORY[0x1EEE9AC00](v52);
        OUTLINED_FUNCTION_58_15();
        sub_1C9035754(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
        OUTLINED_FUNCTION_116();
        sub_1C9063ACC();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v33, v53);
      }

      break;
  }

  OUTLINED_FUNCTION_198();
}

void ComparisonPredicate.Comparison.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v183 = v11;
  v184 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v181 = &v162 - v17;
  v18 = OUTLINED_FUNCTION_111();
  v164 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(v18);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v182 = v21 - v20;
  v22 = OUTLINED_FUNCTION_111();
  v23 = type metadata accessor for ToolKitProtoTypedValue(v22);
  v24 = OUTLINED_FUNCTION_9(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25();
  v177 = v25 - v26;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_216();
  v180 = v28;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_216();
  v175 = v30;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_216();
  v179 = v32;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_216();
  v173 = v34;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_216();
  v178 = v36;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_216();
  v171 = v38;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_216();
  v176 = v40;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_216();
  v169 = v42;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_216();
  v174 = v44;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_216();
  v167 = v46;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_216();
  v172 = v48;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_216();
  v165 = v50;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_216();
  v170 = v52;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_216();
  v168 = v55;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_216();
  v166 = v58;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_43_21();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v162 - v65;
  v67 = &qword_1EC314760;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  OUTLINED_FUNCTION_9(v68);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v162 - v70;
  v72 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v162 - v75;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
  {
    sub_1C8D16D78(v71, &qword_1EC314760, &qword_1C9074E20);
    v77 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v77, v78);
    OUTLINED_FUNCTION_116();
    v82 = sub_1C8D4F674(v79, v80, v81);
    OUTLINED_FUNCTION_89(v82);
    *v83 = v72;
    OUTLINED_FUNCTION_10_0();
    (*(v84 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_1_80();
    v86 = v13;
LABEL_39:
    sub_1C903566C(v86, v85);
  }

  else
  {
    v163 = v13;
    OUTLINED_FUNCTION_11_42();
    sub_1C90355BC();
    sub_1C9035614();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_8_49();
        OUTLINED_FUNCTION_130_0();
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        OUTLINED_FUNCTION_108_0();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v128 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v128, v129);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v130);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v131);
        v92 = 0;
        v67 = a10 | 4;
        goto LABEL_29;
      case 2u:
        OUTLINED_FUNCTION_8_49();
        OUTLINED_FUNCTION_130_0();
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        OUTLINED_FUNCTION_108_0();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v113 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v113, v114);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v115);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v116);
        v67 = a10;
        goto LABEL_20;
      case 3u:
        OUTLINED_FUNCTION_8_49();
        v66 = v166;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        OUTLINED_FUNCTION_108_0();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v120 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v120, v121);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v122);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v123);
        OUTLINED_FUNCTION_71_0();
LABEL_20:
        v92 = 1;
        goto LABEL_29;
      case 4u:
        OUTLINED_FUNCTION_8_49();
        v66 = v168;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        OUTLINED_FUNCTION_108_0();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v100 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v100, v101);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v102);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v103);
        v67 = a10;
        goto LABEL_27;
      case 5u:
        OUTLINED_FUNCTION_8_49();
        v66 = v170;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v132 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v132, v133);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v134);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v135);
        OUTLINED_FUNCTION_71_0();
LABEL_27:
        v92 = 2;
        goto LABEL_29;
      case 6u:
        OUTLINED_FUNCTION_8_49();
        v66 = v172;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v140 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v140, v141);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v142);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v143);
        v67 = a10;
        goto LABEL_32;
      case 7u:
        OUTLINED_FUNCTION_8_49();
        v66 = v174;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v124 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v124, v125);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v126);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v127);
        OUTLINED_FUNCTION_71_0();
LABEL_32:
        v92 = 3;
        goto LABEL_29;
      case 8u:
        OUTLINED_FUNCTION_8_49();
        v66 = v176;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v154 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v154, v155);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v156);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v157);
        v67 = a10;
        goto LABEL_43;
      case 9u:
        OUTLINED_FUNCTION_8_49();
        v66 = v178;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v109 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v109, v110);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v111);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v112);
        OUTLINED_FUNCTION_71_0();
LABEL_43:
        v92 = 4;
        goto LABEL_29;
      case 0xAu:
        OUTLINED_FUNCTION_8_49();
        v66 = v179;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
          goto LABEL_37;
        }

        v144 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v144, v145);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v146);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v147);
        v67 = a10;
        goto LABEL_35;
      case 0xBu:
        OUTLINED_FUNCTION_8_49();
        v66 = v180;
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        OUTLINED_FUNCTION_26_21();
        if (v10)
        {
LABEL_37:
          v148 = OUTLINED_FUNCTION_0_83();
          sub_1C903566C(v148, v149);
          OUTLINED_FUNCTION_9_43();
          v152 = v66;
          goto LABEL_38;
        }

        v96 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v96, v97);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v98);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v99);
        OUTLINED_FUNCTION_71_0();
LABEL_35:
        v92 = 5;
        goto LABEL_29;
      case 0xCu:
        sub_1C90355BC();
        v104 = sub_1C8D63FCC();
        sub_1C8D4F068(v104, v105, v106);
        v107 = v184;
        sub_1C906351C();
        if (v107)
        {
          v108 = OUTLINED_FUNCTION_0_83();
          sub_1C903566C(v108, v151);
          v152 = OUTLINED_FUNCTION_29_24();
LABEL_38:
          sub_1C903566C(v152, v153);
          OUTLINED_FUNCTION_2_74();
          v86 = v76;
          goto LABEL_39;
        }

        v67 = a10;
        OUTLINED_FUNCTION_108_0();
        sub_1C8D63FCC();
        sub_1C906351C();
        v150 = v163;
        OUTLINED_FUNCTION_1_80();
        sub_1C903566C(v150, v158);
        v159 = OUTLINED_FUNCTION_29_24();
        sub_1C903566C(v159, v160);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v161);
        v92 = v185 | 6;
LABEL_29:
        v139 = v183;
        *v183 = v67;
        v139[1] = v92;
        break;
      case 0xDu:
        v136 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v136, v137);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v138);
        v92 = 6;
        v67 = 4;
        goto LABEL_29;
      case 0xEu:
        v93 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v93, v94);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v95);
        v92 = 6;
        v67 = 12;
        goto LABEL_29;
      case 0xFu:
        v117 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v117, v118);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v119);
        v92 = 6;
        v67 = 20;
        goto LABEL_29;
      default:
        OUTLINED_FUNCTION_8_49();
        sub_1C90355BC();
        OUTLINED_FUNCTION_7_51();
        sub_1C9035614();
        v87 = v184;
        TypedValue.init(protobuf:)();
        v88 = OUTLINED_FUNCTION_0_83();
        sub_1C903566C(v88, v89);
        OUTLINED_FUNCTION_9_43();
        sub_1C903566C(v66, v90);
        OUTLINED_FUNCTION_2_74();
        sub_1C903566C(v76, v91);
        if (v87)
        {
          break;
        }

        v92 = 0;
        v67 = a10;
        goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C9034A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609E8;
  if (!qword_1EDA609E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609E8);
  }

  return result;
}

void ComparisonPredicate.Comparison.Template.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v237 = v11;
  v238 = v10;
  v13 = v12;
  v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v233 = v16 - v17;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_216();
  v236 = v19;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_216();
  v231 = v21;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_216();
  v235 = v23;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_216();
  v229 = v25;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_216();
  v234 = v27;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_216();
  v227 = v29;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_216();
  v232 = v31;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_216();
  v225 = v33;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_216();
  v230 = v35;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_216();
  v223 = v37;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_216();
  v228 = v39;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_216();
  v221 = v41;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_216();
  v226 = v43;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_216();
  v219 = v45;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_216();
  v224 = v47;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_216();
  v222 = v50;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_216();
  v220 = v53;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_216();
  v218 = v56;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v59);
  MEMORY[0x1EEE9AC00](v60);
  v217 = &v215 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  OUTLINED_FUNCTION_9(v62);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v215 - v64;
  v66 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v215 - v69;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    sub_1C8D16D78(v65, &unk_1EC314768, &qword_1C9074E28);
    v71 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
    OUTLINED_FUNCTION_116();
    v76 = sub_1C8D4F674(v73, v74, v75);
    OUTLINED_FUNCTION_89(v76);
    *v77 = v66;
    OUTLINED_FUNCTION_10_0();
    (*(v78 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_3_60();
    v80 = v13;
LABEL_36:
    sub_1C903566C(v80, v79);
  }

  else
  {
    OUTLINED_FUNCTION_10_47();
    sub_1C90355BC();
    sub_1C9035614();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        goto LABEL_23;
      case 2u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_130_0();
        v129 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v129, v130, v131, v132, v133, v134, v135, v136, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v137);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v138);
        v106 = a10;
        goto LABEL_16;
      case 3u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_130_0();
        v141 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v141, v142, v143, v144, v145, v146, v147, v148, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v149);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v150);
        v91 = a10 | 3;
        goto LABEL_38;
      case 4u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_130_0();
        v107 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v107, v108, v109, v110, v111, v112, v113, v114, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v115);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v116);
        v91 = a10 | 4;
        goto LABEL_38;
      case 5u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v171 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v171, v172, v173, v174, v175, v176, v177, v178, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v179);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v180);
        v127 = a10;
        v128 = 5;
        goto LABEL_33;
      case 6u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v183 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v183, v184, v185, v186, v187, v188, v189, v190, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v191);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v192);
        v91 = a10 | 6;
        goto LABEL_38;
      case 7u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v151 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v151, v152, v153, v154, v155, v156, v157, v158, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v159);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v160);
        v91 = a10 | 7;
        goto LABEL_38;
      case 8u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v204 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v204, v205, v206, v207, v208, v209, v210, v211, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v213);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v214);
        v91 = a10 | 0x1000000000000000;
        goto LABEL_38;
      case 9u:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v117 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v117, v118, v119, v120, v121, v122, v123, v124, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v125);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v126);
        OUTLINED_FUNCTION_103();
        goto LABEL_33;
      case 0xAu:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v193 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v193, v194, v195, v196, v197, v198, v199, v200, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v201);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v202);
        OUTLINED_FUNCTION_103();
        v128 = v203 + 1;
LABEL_33:
        v91 = v127 | v128;
        goto LABEL_38;
      case 0xBu:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        v94 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v94, v95, v96, v97, v98, v99, v100, v101, v215, v216);
        if (v10)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v102);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v103);
        OUTLINED_FUNCTION_103();
        v106 = v104 | v105;
LABEL_16:
        v91 = v106 | 2;
        goto LABEL_38;
      case 0xCu:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
LABEL_23:
        v161 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v161, v162, v163, v164, v165, v166, v167, v168, v215, v216);
        if (v10)
        {
LABEL_35:
          OUTLINED_FUNCTION_3_60();
          sub_1C903566C(v13, v212);
          OUTLINED_FUNCTION_12_40();
          OUTLINED_FUNCTION_4_58();
          v80 = v70;
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v169);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v170);
        v91 = a10 | 1;
LABEL_38:
        *v237 = v91;
        break;
      case 0xDu:
        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v181);
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v182);
        v91 = 0x1000000000000005;
        goto LABEL_38;
      case 0xEu:
        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v92);
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v93);
        v91 = 0x100000000000000DLL;
        goto LABEL_38;
      case 0xFu:
        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v139);
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v140);
        v91 = 0x1000000000000015;
        goto LABEL_38;
      default:
        OUTLINED_FUNCTION_5_56();
        sub_1C90355BC();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_130_0();
        v81 = sub_1C9035614();
        OUTLINED_FUNCTION_25_25(v81, v82, v83, v84, v85, v86, v87, v88, v215, v216);
        OUTLINED_FUNCTION_3_60();
        sub_1C903566C(v13, v89);
        OUTLINED_FUNCTION_12_40();
        OUTLINED_FUNCTION_4_58();
        sub_1C903566C(v70, v90);
        if (v10)
        {
          break;
        }

        v91 = a10;
        goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C90354EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  sub_1C8D16D78(a1, a3, a4);
  sub_1C9035614();
  a6(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C90355BC()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C9035614()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C903566C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C9035754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C90357A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E898;
  if (!qword_1EC31E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E898);
  }

  return result;
}

unint64_t sub_1C90357F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609E0;
  if (!qword_1EDA609E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_23()
{
  v3 = *v0;
  *(v1 - 144) = v0[2];
  *(v1 - 136) = v3;
  *(v1 - 120) = v0[4];
}

void OUTLINED_FUNCTION_50_21()
{
  *(v1 - 128) = v0;

  TypeInstance.protobuf(useCase:)();
}

uint64_t OUTLINED_FUNCTION_51_17()
{

  return ContentItemClassDescriptor.protobuf(useCase:)();
}

uint64_t sub_1C9035950(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = a2();
  OUTLINED_FUNCTION_68_10(v9, v10, v11, v12, v13, v14, v15, v16, a1);
  swift_beginAccess();
  v17 = sub_1C8E9E308(v60, *(v4 + 24));
  if (v17)
  {
    v18 = v17;
    swift_endAccess();
    sub_1C8D5CD04(v60);
    v19 = sub_1C8D5CF98(v18);
    if (v26)
    {
      v27 = sub_1C9062F1C();

      return v27;
    }

    v28 = OUTLINED_FUNCTION_68_10(v19, 0, v20, v21, v22, v23, v24, v25, a1);
    OUTLINED_FUNCTION_141_8(v28, v29, v30, v31, v32, v33, v34, v35, v58);
    v36 = sub_1C8E1ABB8(v60);
    sub_1C8D5CD04(v60);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1C8D5CD04(v60);
  }

  v37 = a4(a1);
  v39 = v38;
  OUTLINED_FUNCTION_68_10(v37, v38, v40, v41, v42, v43, v44, v45, a1);

  v46 = sub_1C8D5CDA0(v37, v39);
  OUTLINED_FUNCTION_141_8(v46, v47, v48, v49, v50, v51, v52, v53, v59);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v7 + 24);
  sub_1C8D63CBC(v46, v60, isUniquelyReferenced_nonNull_native);
  *(v7 + 24) = v61;
  sub_1C8D5CD04(v60);
  swift_endAccess();
  v27 = *(v7 + 16);
  v55 = sub_1C9062F1C();
  if (!v5)
  {
    v27 = v55;
  }

  return v27;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.recreateIfNeeded()()
{
  v1 = sub_1C903A644();
  if (!v0 && v1 != 63)
  {
    sub_1C903A7D8();
    sub_1C8E5DF24(v2);
  }
}

void ToolDatabase.Accessor.store<A>(_:for:)()
{
  OUTLINED_FUNCTION_196();
  v25 = v1;
  v26 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11();
  v10 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = type metadata accessor for ToolDatabaseMetadataRecord(0, v5, v3, v14);
  OUTLINED_FUNCTION_11();
  v17 = v16;
  OUTLINED_FUNCTION_82();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  (*(v10 + 16))(v13, v7, AssociatedTypeWitness, v19);
  OUTLINED_FUNCTION_127_5();
  sub_1C8E24B5C(v22, v23, v3, v24);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_227();
  sub_1C9062B2C();
  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C9035D04()
{
  OUTLINED_FUNCTION_196();
  v17 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9E0, &qword_1C90C6620);
  v3 = OUTLINED_FUNCTION_9(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_233_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9E8, &qword_1C90C6628);
  sub_1C9063F4C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9F0, &qword_1C90C6630);
  OUTLINED_FUNCTION_115_8(&qword_1EC31E9F8);
  OUTLINED_FUNCTION_115_8(&qword_1EC31EA00);
  OUTLINED_FUNCTION_115_8(&qword_1EC31EA08);
  sub_1C90628AC();
  if (v0)
  {
  }

  else
  {

    v9 = OUTLINED_FUNCTION_278();
    sub_1C8E4E960(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_117_6();
    if (__swift_getEnumTagSinglePayload(v13, v14, v8) == 1)
    {
      sub_1C8D16D78(v6, &qword_1EC31E9E0, &qword_1C90C6620);
      v15 = 1;
    }

    else
    {
      sub_1C9049368(v6 + *(v8 + 36), v17);
      sub_1C8D16D78(v6, &qword_1EC31E9F0, &qword_1C90C6630);
      v15 = 0;
    }

    v16 = type metadata accessor for ToolDatabase.Version(0);
    __swift_storeEnumTagSinglePayload(v17, v15, 1, v16);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C9035F38@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E998, &qword_1C90C65B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v21 = &type metadata for ToolDatabase.LaunchServicesSnapshotDatabaseVersionKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9A0, &qword_1C90C65C0);
  v7 = sub_1C9063F4C();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9A8, &unk_1C90C65C8);
  v21 = v7;
  v22 = v9;
  sub_1C8D28184(&qword_1EDA66240, &qword_1EC31E9A8, &unk_1C90C65C8, &unk_1C90870EC);
  sub_1C8D28184(&qword_1EDA66248, &qword_1EC31E9A8, &unk_1C90C65C8, &unk_1C90870BC);
  sub_1C8D28184(&qword_1EDA66238, &qword_1EC31E9A8, &unk_1C90C65C8, &unk_1C9087084);
  v11 = v23;
  sub_1C90628AC();
  if (v11)
  {
  }

  v13 = v20;

  sub_1C8E4E960(v6, v3, &qword_1EC31E998, &qword_1C90C65B8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_1C8D16D78(v3, &qword_1EC31E998, &qword_1C90C65B8);
    v14 = sub_1C90635DC();
    v15 = v13;
    v16 = 1;
  }

  else
  {
    v17 = *(v10 + 36);
    v18 = sub_1C90635DC();
    (*(*(v18 - 8) + 16))(v13, &v3[v17], v18);
    sub_1C8D16D78(v3, &qword_1EC31E9A8, &unk_1C90C65C8);
    v15 = v13;
    v16 = 0;
    v14 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

void ToolDatabase.Accessor.get<A>(_:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v31 = v3;
  v7 = type metadata accessor for ToolDatabaseMetadataRecord(255, v4, v5, v6);
  sub_1C906464C();
  OUTLINED_FUNCTION_11();
  v29 = v9;
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v32 = v2;
  swift_getMetatypeMetadata();
  v32 = sub_1C9063F4C();
  v33 = v16;
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C90628AC();
  if (v0)
  {
  }

  else
  {

    v18 = v29;
    v17 = v30;
    (*(v29 + 32))(v12, v15, v30);
    if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
    {
      (*(v18 + 8))(v12, v17);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = v31;
      v21 = 1;
    }

    else
    {
      v22 = *(v7 + 36);
      v23 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_13_1();
      v25 = v31;
      (*(v24 + 16))(v31, v12 + v22, v23);
      OUTLINED_FUNCTION_10_0();
      v26 = OUTLINED_FUNCTION_98_10();
      v27(v26);
      v20 = v25;
      v21 = 0;
      AssociatedTypeWitness = v23;
    }

    __swift_storeEnumTagSinglePayload(v20, v21, 1, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C90364BC(uint64_t a1)
{
  v1 = sub_1C906359C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = OUTLINED_FUNCTION_112();
  sub_1C8D7AE3C(v11, v12, &qword_1EC312DD0, &qword_1C9072940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
  }

  else
  {
    (*(v3 + 32))(v7, v10, v1);
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_39_21();
    sub_1C9049320(v14, v15, MEMORY[0x1E69E0840]);
    sub_1C9063E7C();
    return (*(v3 + 8))(v7, v1);
  }
}

void sub_1C9036768(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_3_1();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  if ((v9 & v8) != 0)
  {
    while (1)
    {
      v13 = v2;
LABEL_7:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(a1 + 48) + ((v13 << 10) | (16 * v14));
      v16 = *v15;
      v17 = *(v15 + 8);
      sub_1C8D07154(*v15, *(v15 + 8), v4, v5, v6, v7);
      sub_1C8D87080(&v18, v16, v17);
      sub_1C8D07168(v18, v19);
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v13 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v12)
    {
      break;
    }

    v10 = *(v3 + 8 * v13);
    ++v2;
    if (v10)
    {
      v2 = v13;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1C9036964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FE0, &unk_1C906A3B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  if (__swift_getEnumTagSinglePayload(a1, 1, v7) == 1)
  {
    sub_1C8D16D78(a1, &qword_1EC312528, &unk_1C9066960);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    sub_1C8E4E960(a1, v6, &qword_1EC312530, &unk_1C9090E80);
    sub_1C8E4E960(v6, a2, &qword_1EC312FE0, &unk_1C906A3B0);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

void ToolDatabase.Accessor.addTool(localId:toolType:sourceContainerId:attributionContainerId:outputTypeInstance:customIcon:deprecationReplacementId:flags:requirements:authenticationPolicy:sourceActionProvider:visibilityFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  OUTLINED_FUNCTION_196();
  v70 = v30;
  v32 = v31;
  v77 = v33;
  v75 = v34;
  v76 = v35;
  v37 = v36;
  v78 = v28;
  v79 = a22;
  v72 = v38;
  v73 = a21;
  v80 = a27;
  v74 = a26;
  v81 = a24;
  v82 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v40);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v42);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v69 - v44;
  v46 = type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_15();
  v50 = v49 - v48;
  v51 = *v37;
  v71 = *v32;
  v52 = *a23;
  v53 = *a25;
  v54 = *a28;
  sub_1C8D7AE3C(v70, v29, &qword_1EC3144B8, &qword_1C90839E0);
  v55 = type metadata accessor for ToolIcon(0);
  v56 = 1;
  if (__swift_getEnumTagSinglePayload(v29, 1, v55) != 1)
  {
    sub_1C8E872C8(v29, v45);
    v56 = 0;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  __swift_storeEnumTagSinglePayload(v45, v56, 1, v57);
  *v50 = 0;
  *(v50 + 8) = 1;
  v58 = v82;
  *(v50 + 16) = v72;
  *(v50 + 24) = v58;
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  *(v50 + 48) = v54;
  *(v50 + 56) = v81;
  *(v50 + 64) = v53;
  *(v50 + 72) = v71;
  sub_1C8E4E960(v45, v50 + v46[12], &qword_1EC313190, &unk_1C9074070);
  v59 = (v50 + v46[13]);
  v60 = v74;
  v62 = v79;
  v61 = v80;
  *v59 = v73;
  v59[1] = v62;
  v63 = (v50 + v46[14]);
  *v63 = v60;
  v63[1] = v61;
  v64 = v76;
  *(v50 + v46[15]) = v75;
  v65 = v50 + v46[16];
  *v65 = v64;
  *(v65 + 8) = v77 & 1;
  OUTLINED_FUNCTION_1_81();
  v68 = sub_1C9049320(v66, v67, &unk_1C906AFF0);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_110_9();
  sub_1C9062D2C();
  if (!v68 && (*(v50 + 8) & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_45_22();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addLinkActionIdentifier(toolId:identifier:)(Swift::Int64 toolId, Swift::String identifier)
{
  v2 = sub_1C900F7A4(toolId, identifier._countAndFlagsBits, identifier._object);
  OUTLINED_FUNCTION_143_4(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_59_17();
  sub_1C9062B3C();
}

uint64_t ToolDatabase.Accessor.addSystemToolProtocol(toolId:systemToolProtocol:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  v8 = *a2;
  v7 = a2[1];
  v18[0] = a2[2];
  *(v18 + 9) = *(a2 + 41);
  __src[0] = v8;
  __src[1] = v7;
  __src[2] = a2[2];
  *(&__src[2] + 9) = *(a2 + 41);
  SystemToolProtocol.identifier.getter(v13);
  *&v15[39] = v18[0];
  *&v15[23] = v17;
  *&v15[7] = v16;
  *&v15[48] = *(v18 + 9);
  *&__src[0] = a1;
  *(__src + 8) = v13[0];
  *(&__src[1] + 8) = v13[1];
  BYTE8(__src[2]) = v13[2];
  *(&__src[3] + 9) = *&v15[16];
  *(&__src[4] + 9) = *&v15[32];
  *(&__src[5] + 9) = *(v18 + 9);
  *(&__src[2] + 9) = *v15;
  v9 = sub_1C8D0717C(&v16, v13);
  sub_1C8D54284(v9, v10, v11);
  sub_1C9062B3C();
  memcpy(v13, __src, 0x69uLL);
  return sub_1C8D54560(v13);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addToolLocalization(toolId:locale:name:outputResultName:descriptionSummary:descriptionAttribution:descriptionResult:descriptionNote:descriptionRequires:deprecationMessage:localizationUsage:)(Swift::Int64 toolId, Swift::String locale, Swift::String name, Swift::String_optional outputResultName, Swift::String_optional descriptionSummary, Swift::String_optional descriptionAttribution, Swift::String_optional descriptionResult, Swift::String_optional descriptionNote, Swift::String_optional descriptionRequires, Swift::String_optional deprecationMessage, Swift::String localizationUsage)
{
  __src[0] = toolId;
  *&__src[1] = locale;
  *&__src[3] = name;
  *&__src[5] = outputResultName;
  *&__src[7] = descriptionSummary;
  *&__src[9] = descriptionAttribution;
  *&__src[11] = descriptionResult;
  *&__src[13] = descriptionNote;
  *&__src[15] = descriptionRequires;
  *&__src[17] = deprecationMessage;
  *&__src[19] = localizationUsage;
  sub_1C8EB714C(toolId, locale._countAndFlagsBits, locale._object);

  OUTLINED_FUNCTION_110_9();
  sub_1C9062B3C();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C8D80800(__dst);
}

uint64_t ToolDatabase.Accessor.addParameter(toolId:key:typeInstance:sortOrder:relationships:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1C8F0BB98(a1, a2, a3);

  OUTLINED_FUNCTION_59_17();
  sub_1C9062B3C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addParameterLocalization(toolId:key:locale:name:description:BOOLeanLocalization:)(Swift::Int64 toolId, Swift::String key, Swift::String locale, Swift::String name, Swift::String_optional description, Swift::tuple_trueString_String_falseString_String_optional BOOLeanLocalization)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v8 = locale._object;
  v9 = key._object;
  if (BOOLeanLocalization.value.trueString._object)
  {
    v10 = BOOLeanLocalization.value.falseString._object;
    v17 = toolId;
    v18 = locale._object;
    v11 = key._object;
    v12 = description.value._countAndFlagsBits;
    v13 = locale._countAndFlagsBits;
    v14 = key._countAndFlagsBits;

    v16 = BOOLeanLocalization.value.trueString._countAndFlagsBits;
    v15 = BOOLeanLocalization.value.falseString._countAndFlagsBits;
    key._countAndFlagsBits = v14;
    locale._countAndFlagsBits = v13;
    description.value._countAndFlagsBits = v12;
    v9 = v11;
    toolId = v17;
    v8 = v18;
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v16 = 0;
  }

  __src[0] = toolId;
  __src[1] = key._countAndFlagsBits;
  __src[2] = v9;
  __src[3] = locale._countAndFlagsBits;
  __src[4] = v8;
  __src[5] = countAndFlagsBits;
  __src[6] = object;
  *&__src[7] = description;
  __src[9] = v16;
  __src[10] = BOOLeanLocalization.value.trueString._object;
  __src[11] = v15;
  __src[12] = v10;
  sub_1C8D7DF40(toolId, key._countAndFlagsBits, key._object);

  OUTLINED_FUNCTION_110_9();
  sub_1C9062B3C();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C8D7E120(__dst);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addSampleInvocations(toolId:parameterKey:sampleInvocations:)(Swift::Int64 toolId, Swift::String_optional parameterKey, Swift::OpaquePointer sampleInvocations)
{
  OUTLINED_FUNCTION_196();
  v7 = v4;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_216();
  v148 = v19;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_216();
  v151 = v21;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_216();
  v163 = v23;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_147();
  v157 = v25;
  OUTLINED_FUNCTION_111();
  sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_147();
  v42 = *(v9 + 16);
  if (!v42)
  {
    goto LABEL_18;
  }

  v143 = v37;
  v144 = v29;
  v149 = v36;
  v150 = v39;
  v145 = v5;
  v146 = v41;
  v147 = v40;
  v152 = v35;
  v153 = v38;
  v43 = v42;
  v44 = *(v3 + 24);
  v45 = v7;
  v46 = v42;
  v47 = sub_1C9035950(v42, sub_1C90492CC, &_s8AccessorC23InsertSampleInvocationsVN, sub_1C903FED4);
  v154 = v45;
  if (v45)
  {
    goto LABEL_18;
  }

  i = v13;
  v137 = v44;
  v138 = v46;
  v139 = v47;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E8A0, &qword_1C90C6360);
  inited = swift_initStackObject();
  v49 = inited;
  v158 = xmmword_1C906BAE0;
  *(inited + 16) = xmmword_1C906BAE0;
  *(inited + 32) = 0x64496C6F6F74;
  *(inited + 40) = 0xE600000000000000;
  v50 = MEMORY[0x1E69A01D0];
  *(inited + 72) = MEMORY[0x1E69E7360];
  *(inited + 80) = v50;
  *(inited + 48) = v15;
  strcpy((inited + 88), "parameterKey");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v142 = v6;
  if (v11)
  {
    *(&v162[1] + 1) = MEMORY[0x1E69E6158];
    *&v162[2] = MEMORY[0x1E69A0138];
    *&v162[0] = i;
    *(&v162[0] + 1) = v11;
    *(inited + 136) = MEMORY[0x1E69A0138];
    v51 = v162[1];
    *(inited + 104) = v162[0];
    *(inited + 120) = v51;
  }

  else
  {
    memset(v162, 0, 24);
    *(&v162[1] + 8) = xmmword_1C9088D50;
    v52 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v53 = sub_1C8CB78AC(0, &qword_1EC31E8A8, 0x1E695DFB0);
    v54 = MEMORY[0x1E69A0198];
    v49[16] = v53;
    v49[17] = v54;
    v49[13] = v52;
    if (*(&v162[1] + 1) != 1)
    {
      sub_1C8D16D78(v162, &qword_1EC31E8B0, &qword_1C90C6368);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317140, &qword_1C908BD40);
  OUTLINED_FUNCTION_136();
  v135 = v55;
  sub_1C9063E2C();
  sub_1C9062BAC();
  v161 = MEMORY[0x1E69E7CC0];
  sub_1C8D09F14(0, v43, 0);
  v56 = v161;
  v140 = v9 + 32;
  v57 = v9 + 56;
  do
  {
    v58 = *(v57 - 8);
    if (v58)
    {
      v59 = *(v57 - 16);
      *(&v160 + 1) = MEMORY[0x1E69E6158];
      *&v159 = v59;
      *(&v159 + 1) = v58;
      sub_1C8D1D824(&v159, v162);
    }

    else
    {
      v159 = 0u;
      v160 = 0u;
      v60 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

      v61 = [v60 init];
      *(&v162[1] + 1) = sub_1C8CB78AC(0, &qword_1EC31E8A8, 0x1E695DFB0);

      *&v162[0] = v61;
      if (*(&v160 + 1))
      {
        sub_1C8D16D78(&v159, &qword_1EC3164F0, &qword_1C907A7D0);
      }
    }

    v161 = v56;
    v63 = *(v56 + 16);
    v62 = *(v56 + 24);

    if (v63 >= v62 >> 1)
    {
      sub_1C8D09F14((v62 > 1), v63 + 1, 1);
      v56 = v161;
    }

    *(v56 + 16) = v63 + 1;
    sub_1C8D1D824(v162, (v56 + 32 * v63 + 32));
    v57 += 32;
    --v43;
  }

  while (v43);
  v64 = v157;
  sub_1C9062BBC();
  v65 = OUTLINED_FUNCTION_117_6();
  v66 = v152;
  if (__swift_getEnumTagSinglePayload(v65, v67, v152) == 1)
  {
    goto LABEL_64;
  }

  v68 = v150;
  v69 = v150 + 32;
  v141 = *(v150 + 32);
  v141(v147, v64, v66);
  sub_1C9062B7C();
  sub_1C9062FEC();
  v72 = *(v68 + 8);
  v70 = v68 + 8;
  v71 = v72;
  v73 = OUTLINED_FUNCTION_125();
  (v72)(v73);
  v64 = v163;
  v74 = OUTLINED_FUNCTION_117_6();
  __swift_storeEnumTagSinglePayload(v74, v75, 1, v66);
  memset(v162, 0, 40);
  v76 = v154;
  v77 = sub_1C9062C8C();
  if (v76)
  {
    v154 = v76;

    sub_1C8D16D78(v162, &qword_1EC319D68, &unk_1C90C6370);
    sub_1C8D16D78(v163, &qword_1EC313F10, qword_1C9071EA8);
    v71(v147, v66);
    v71(v153, v66);
LABEL_18:
    OUTLINED_FUNCTION_198();
    return;
  }

  v150 = v70;
  v155 = v69;
  v130 = v77;
  v131 = v71;
  sub_1C8D16D78(v162, &qword_1EC319D68, &unk_1C90C6370);
  sub_1C8D16D78(v163, &qword_1EC313F10, qword_1C9071EA8);
  v78 = v130;
  v79 = *(v130 + 16);
  if (!v79)
  {

    v82 = v131;
    goto LABEL_52;
  }

  v80 = 0;
  v129 = v130 + 32;
  v128 = xmmword_1C906A950;
  v81 = v138;
  v82 = v131;
  v83 = MEMORY[0x1E69A01D0];
  v84 = MEMORY[0x1E69E7360];
  v127 = v79;
  while (1)
  {
    if (v80 >= *(v78 + 16))
    {
      goto LABEL_62;
    }

    if (v80 == v81)
    {
LABEL_50:

LABEL_52:

      v82(v147, v66);
      v82(v153, v66);
      goto LABEL_18;
    }

    v85 = (v140 + 32 * v80);
    v86 = *v85;
    v87 = *(*v85 + 16);
    v164 = v85[3];
    v88 = *(v164 + 16);
    v89 = v87 + v88;
    if (__OFADD__(v87, v88))
    {
      goto LABEL_63;
    }

    if (v89 >= 1)
    {
      break;
    }

LABEL_49:
    if (++v80 == v79)
    {
      goto LABEL_50;
    }
  }

  v90 = *(v129 + 8 * v80);
  v91 = v85[2];
  v133 = v80;
  v134 = v91;

  v92 = sub_1C9035950(v89, sub_1C9049278, &_s8AccessorC29InsertSampleInvocationPhrasesVN, sub_1C9040134);
  v154 = 0;
  v132 = v92;
  v93 = swift_initStackObject();
  *(v93 + 16) = v128;
  strcpy((v93 + 32), "invocationId");
  *(v93 + 45) = 0;
  *(v93 + 46) = -5120;
  *(v93 + 48) = v90;
  *(v93 + 72) = v84;
  *(v93 + 80) = v83;
  sub_1C9063E2C();
  sub_1C9062BAC();
  v94 = 0;
  v157 = *(v86 + 16);
  v95 = (v86 + 40);
  v64 = MEMORY[0x1E69E7CC0];
  for (i = v86; ; v86 = i)
  {
    if (v157 == v94)
    {
      v105 = v151;
      sub_1C9062BBC();
      v106 = v152;
      if (__swift_getEnumTagSinglePayload(v105, 1, v152) == 1)
      {
        v148 = v105;
      }

      else
      {
        v141(v146, v105, v106);
        v107 = 0;
        v157 = *(v164 + 16);
        v108 = (v164 + 40);
        v64 = MEMORY[0x1E69E7CC0];
        while (v157 != v107)
        {
          if (v107 >= *(v164 + 16))
          {
            goto LABEL_58;
          }

          v109 = *(v108 - 1);
          v110 = *v108;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D0, &unk_1C9068DB0);
          v111 = swift_initStackObject();
          *(v111 + 16) = v158;
          *(v111 + 32) = v109;
          *(v111 + 40) = v110;
          *(v111 + 88) = MEMORY[0x1E69E6530];
          *(v111 + 56) = MEMORY[0x1E69E6158];
          *(v111 + 64) = 2;
          v112 = *(v64 + 16);
          if (__OFADD__(v112, 2))
          {
            goto LABEL_59;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || (v113 = *(v64 + 24) >> 1, v113 < v112 + 2))
          {
            sub_1C8D01840();
            v64 = v114;
            v113 = *(v114 + 24) >> 1;
          }

          if (v113 - *(v64 + 16) < 2)
          {
            goto LABEL_60;
          }

          swift_arrayInitWithCopy();
          swift_setDeallocating();
          sub_1C9042EDC();
          v115 = *(v64 + 16);
          v103 = __OFADD__(v115, 2);
          v116 = v115 + 2;
          if (v103)
          {
            goto LABEL_61;
          }

          *(v64 + 16) = v116;
          v108 += 2;
          ++v107;
        }

        v117 = v148;
        sub_1C9062BBC();
        v118 = v152;
        if (__swift_getEnumTagSinglePayload(v117, 1, v152) != 1)
        {

          v119 = v144;
          v141(v144, v117, v118);
          v120 = v143;
          v121 = v146;
          sub_1C9062B7C();
          v122 = v142;
          sub_1C9062B7C();
          v82 = v131;
          v131(v120, v118);
          sub_1C9062FEC();
          v82(v122, v118);
          v64 = v145;
          v123 = OUTLINED_FUNCTION_117_6();
          __swift_storeEnumTagSinglePayload(v123, v124, 1, v118);
          v125 = v154;
          sub_1C906301C();
          if (!v125)
          {

            sub_1C8D16D78(v64, &qword_1EC313F10, qword_1C9071EA8);
            v82(v119, v118);
            v82(v121, v118);
            v66 = v118;
            v82(v149, v118);
            v81 = v138;
            v78 = v130;
            v83 = MEMORY[0x1E69A01D0];
            v84 = MEMORY[0x1E69E7360];
            v79 = v127;
            v80 = v133;
            goto LABEL_49;
          }

          v154 = v125;

          sub_1C8D16D78(v64, &qword_1EC313F10, qword_1C9071EA8);
          v82(v119, v118);
          v82(v121, v118);
          v82(v149, v118);
          v82(v147, v118);
          v82(v153, v118);
          goto LABEL_18;
        }

        v131(v146, v118);
      }

      sub_1C8D16D78(v148, &qword_1EC313F10, qword_1C9071EA8);
      goto LABEL_68;
    }

    if (v94 >= *(v86 + 16))
    {
      break;
    }

    v96 = *(v95 - 1);
    v97 = *v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D0, &unk_1C9068DB0);
    v98 = swift_initStackObject();
    *(v98 + 16) = v158;
    *(v98 + 32) = v96;
    *(v98 + 40) = v97;
    *(v98 + 88) = MEMORY[0x1E69E6530];
    *(v98 + 56) = MEMORY[0x1E69E6158];
    *(v98 + 64) = 1;
    v99 = *(v64 + 16);
    if (__OFADD__(v99, 2))
    {
      goto LABEL_55;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v100 = *(v64 + 24) >> 1, v100 < v99 + 2))
    {
      sub_1C8D01840();
      v64 = v101;
      v100 = *(v101 + 24) >> 1;
    }

    if (v100 - *(v64 + 16) < 2)
    {
      goto LABEL_56;
    }

    swift_arrayInitWithCopy();
    swift_setDeallocating();
    sub_1C9042EDC();
    v102 = *(v64 + 16);
    v103 = __OFADD__(v102, 2);
    v104 = v102 + 2;
    if (v103)
    {
      goto LABEL_57;
    }

    *(v64 + 16) = v104;
    v95 += 2;
    ++v94;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1C8D16D78(v64, &qword_1EC313F10, qword_1C9071EA8);
LABEL_68:
  sub_1C906491C();
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addSearchKeyword(toolId:locale:keyword:order:)(Swift::Int64 toolId, Swift::String locale, Swift::String keyword, Swift::Int order)
{
  sub_1C8CE6DD0(toolId, locale._countAndFlagsBits, locale._object);

  OUTLINED_FUNCTION_59_17();
  sub_1C9062B3C();
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addContainerMetadata(containerId:bundleVersion:containerType:deviceId:teamId:origin:)(Swift::String containerId, Swift::String_optional bundleVersion, ToolKit::ContainerDefinition::ContainerType containerType, Swift::String_optional deviceId, Swift::String_optional teamId, ToolKit::ContainerDefinition::Origin origin)
{
  OUTLINED_FUNCTION_196();
  v72 = v8;
  v73 = v7;
  v10 = v9;
  v68 = v12;
  v70 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v66 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v64 = v21;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_147();
  v65 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_111();
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v29 = *v68;
  v30 = *v101;
  v31 = v72;
  if (v14)
  {
    v32 = v70;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v14)
  {
    v34 = v14;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  if (!v100)
  {
    v31 = 0;
  }

  v88 = 0;
  if (v100)
  {
    v35 = v100;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  v89 = 1;
  v36 = v73;
  if (v10)
  {
    v33 = v10;
  }

  else
  {
    v36 = 0;
  }

  v69 = v33;
  v90 = v18;
  v91 = v16;
  v62 = v34;
  v63 = v32;
  v92 = v32;
  v93 = v34;
  v94 = v31;
  v95 = v35;
  v71 = v36;
  v96 = v36;
  v97 = v33;
  v98 = v30;
  v99 = v29;
  sub_1C8E2A940(v26, v27, v28);
  v37 = v16;

  result = sub_1C9062D2C();
  if (v6)
  {
    v39 = v6;
    sub_1C90626BC();
    OUTLINED_FUNCTION_49();
    v40 = sub_1C906243C();

    v41 = OUTLINED_FUNCTION_146_0();
    v42(v41);
    if ((v40 & 1) == 0)
    {
      OUTLINED_FUNCTION_81_11();
      sub_1C8E2B914(v85);
LABEL_28:
      OUTLINED_FUNCTION_198();
      return result;
    }

    if (qword_1EDA69668 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1EDA69668);
    }

    v43 = sub_1C9062E6C();
    OUTLINED_FUNCTION_10(v43, qword_1EDA6EB50);
    v82 = v43;
    v83 = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v81);
    OUTLINED_FUNCTION_10_0();
    v45 = *(v44 + 16);
    OUTLINED_FUNCTION_92_10();
    v45();
    v79 = MEMORY[0x1E69E6158];
    v80 = MEMORY[0x1E69A0130];
    v78[0] = v18;
    v78[1] = v37;
    v46 = sub_1C90627EC();
    v47 = MEMORY[0x1E699FE60];
    v86 = v46;
    v87 = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v85);

    sub_1C9062D6C();
    sub_1C8D16D78(v78, &qword_1EC313248, &unk_1C906B540);
    __swift_destroy_boxed_opaque_existential_1(v81);
    if (qword_1EDA69680 != -1)
    {
      OUTLINED_FUNCTION_5_28(&qword_1EDA69680);
    }

    __swift_project_value_buffer(v43, qword_1EDA6EB80);
    v82 = v43;
    v48 = MEMORY[0x1E69A0050];
    v83 = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v81);
    OUTLINED_FUNCTION_109_7();
    v45();
    v76 = MEMORY[0x1E69E6158];
    v77 = MEMORY[0x1E69A0130];
    v74 = v63;
    v75 = v62;
    v79 = v46;
    v80 = v47;
    __swift_allocate_boxed_opaque_existential_1(v78);

    sub_1C9062D6C();
    sub_1C8D16D78(&v74, &qword_1EC313248, &unk_1C906B540);
    __swift_destroy_boxed_opaque_existential_1(v81);
    v82 = v46;
    v83 = v47;
    __swift_allocate_boxed_opaque_existential_1(v81);
    sub_1C9062D4C();
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v85);
    if (qword_1EDA69640 != -1)
    {
      OUTLINED_FUNCTION_4_29(&qword_1EDA69640);
    }

    __swift_project_value_buffer(v43, qword_1EDA6EAF0);
    v86 = v43;
    v87 = v48;
    __swift_allocate_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_109_7();
    v45();
    v76 = MEMORY[0x1E69E6158];
    v77 = MEMORY[0x1E69A0130];
    v74 = v71;
    v75 = v69;
    v79 = v46;
    v80 = v47;
    __swift_allocate_boxed_opaque_existential_1(v78);

    sub_1C9062D6C();
    sub_1C8D16D78(&v74, &qword_1EC313248, &unk_1C906B540);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v86 = v46;
    v87 = v47;
    __swift_allocate_boxed_opaque_existential_1(v85);
    sub_1C9062D4C();
    __swift_destroy_boxed_opaque_existential_1(v78);
    v49 = __swift_destroy_boxed_opaque_existential_1(v81);
    sub_1C8D24BA0(v49, v50, v51);
    sub_1C90624DC();
    __swift_destroy_boxed_opaque_existential_1(v85);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
    v53 = OUTLINED_FUNCTION_84_9(v52);
    *(v53 + 16) = xmmword_1C906A950;
    if (qword_1EDA69660 != -1)
    {
      OUTLINED_FUNCTION_3_0(&qword_1EDA69660);
    }

    OUTLINED_FUNCTION_10(v43, qword_1EDA6EB38);
    v54 = MEMORY[0x1E69A0038];
    *(v53 + 56) = v43;
    *(v53 + 64) = v54;
    __swift_allocate_boxed_opaque_existential_1((v53 + 32));
    OUTLINED_FUNCTION_92_10();
    v45();
    OUTLINED_FUNCTION_13_38(&qword_1EC31E8C0, &qword_1EC318D38, &qword_1C90C6380);
    sub_1C9062AEC();

    v55 = *(v66 + 8);
    v55(v64, v67);
    sub_1C9062C1C();
    v55(v65, v67);
    OUTLINED_FUNCTION_0_84();
    sub_1C8D28184(v56, v57, v58, v59);
    sub_1C90625AC();
    v60 = OUTLINED_FUNCTION_146_0();
    result = v61(v60);
    if ((v84 & 1) == 0)
    {
      OUTLINED_FUNCTION_81_11();
      sub_1C8E2B914(v85);

      goto LABEL_28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addContainerMetadataLocalization(containerId:locale:name:)(Swift::Int64 containerId, Swift::String locale, Swift::String name)
{
  OUTLINED_FUNCTION_196();
  v19 = sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v11 = sub_1C8DDD744(v8, v9, v10);
  OUTLINED_FUNCTION_143_4(v11, v12, v13, v14, v15, v16);

  OUTLINED_FUNCTION_80_10();
  sub_1C9062B3C();
  if (v3)
  {

    v17 = v3;
    sub_1C90626AC();
    OUTLINED_FUNCTION_98_10();
    v18 = sub_1C906243C();

    (*(v6 + 8))(v4, v19);
    if (v18)
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addContainerMetadataSynonym(containerId:locale:synonym:order:)(Swift::Int64 containerId, Swift::String locale, Swift::String synonym, Swift::Int order)
{
  OUTLINED_FUNCTION_196();
  v21 = sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v10 = *(v4 + 16);
  v14 = sub_1C8EFEDBC(v11, v12, v13);
  OUTLINED_FUNCTION_143_4(v14, v15, v16, v17, v18, v19);

  OUTLINED_FUNCTION_110_9();
  sub_1C9062B3C();
  if (v5)
  {

    v20 = v5;
    sub_1C90626AC();
    OUTLINED_FUNCTION_98_10();
    sub_1C906243C();

    (*(v8 + 8))(v6, v21);
    if (v10)
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.fetchContainerRecordId(_:)()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v8);
  v10 = v1[3];
  v9 = v1[4];
  v11 = v1[6];
  v37 = v1[5];
  v12 = v1[10];
  v13 = v1[11];
  v38 = v12;
  v14 = qword_1EDA69668;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDA69668);
  }

  v15 = sub_1C9062E6C();
  __swift_project_value_buffer(v15, qword_1EDA6EB50);
  v45 = v15;
  v46 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_10_0();
  v17 = *(v16 + 16);
  OUTLINED_FUNCTION_109_7();
  v17();
  v43[3] = MEMORY[0x1E69E6158];
  v43[4] = MEMORY[0x1E69A0130];
  v43[0] = v10;
  v43[1] = v9;
  v18 = sub_1C90627EC();
  v19 = MEMORY[0x1E699FE60];
  v48 = v18;
  v49 = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v47);
  OUTLINED_FUNCTION_32_22();
  sub_1C9062D6C();
  sub_1C8D16D78(v43, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (qword_1EDA69680 != -1)
  {
    OUTLINED_FUNCTION_5_28(&qword_1EDA69680);
  }

  __swift_project_value_buffer(v15, qword_1EDA6EB80);
  v45 = v15;
  v46 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_109_7();
  v17();
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  v20 = v37;
  if (!v11)
  {
    v20 = 0;
  }

  OUTLINED_FUNCTION_114_7(v20);
  sub_1C9062D6C();
  sub_1C8D16D78(&v40, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v45 = v18;
  v46 = v19;
  __swift_allocate_boxed_opaque_existential_1(v44);
  sub_1C9062D4C();
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v47);
  if (qword_1EDA69640 != -1)
  {
    OUTLINED_FUNCTION_4_29(&qword_1EDA69640);
  }

  v21 = __swift_project_value_buffer(v15, qword_1EDA6EAF0);
  v48 = v15;
  v49 = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (v17)(boxed_opaque_existential_1, v21, v15);
  v23 = v38;
  if (!v13)
  {
    v23 = 0;
  }

  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  OUTLINED_FUNCTION_114_7(v23);

  sub_1C9062D6C();
  sub_1C8D16D78(&v40, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v48 = v18;
  v49 = v19;
  __swift_allocate_boxed_opaque_existential_1(v47);
  OUTLINED_FUNCTION_32_22();
  sub_1C9062D4C();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v24 = __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1C8D24BA0(v24, v25, v26);
  OUTLINED_FUNCTION_161_1();
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v47);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v28 = OUTLINED_FUNCTION_84_9(v27);
  *(v28 + 16) = xmmword_1C906A950;
  if (qword_1EDA69660 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDA69660);
  }

  OUTLINED_FUNCTION_10(v15, qword_1EDA6EB38);
  v29 = MEMORY[0x1E69A0038];
  *(v28 + 56) = v15;
  *(v28 + 64) = v29;
  __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  OUTLINED_FUNCTION_92_10();
  v17();
  OUTLINED_FUNCTION_13_38(&qword_1EC31E8C0, &qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_227();
  sub_1C9062AEC();

  v30 = *(v39 + 8);
  v30(0xE000000000000000, v2);
  OUTLINED_FUNCTION_161_1();
  sub_1C9062C1C();
  v30(v17, v2);
  OUTLINED_FUNCTION_0_84();
  sub_1C8D28184(v31, v32, v33, v34);
  sub_1C90625AC();
  OUTLINED_FUNCTION_296();
  v35 = OUTLINED_FUNCTION_112();
  v36(v35);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.addType(_:sourceContainerId:)()
{
  OUTLINED_FUNCTION_196();
  v35 = v2;
  v4 = v3;
  v34 = sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v7 = *v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 32);
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  v12 = v11;
  v36 = v0;
  switch(*(v4 + 96))
  {
    case 1:
    case 2:
    case 3:

      break;
    case 4:
      v13 = *(v4 + 8);
      OUTLINED_FUNCTION_2();
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      *(v14 + 24) = v13;
      v7 = v14 | 0x8000000000000000;

      break;
    case 5:

      v7 = v9;
      break;
    default:
      v15 = swift_allocObject();
      *(v15 + 16) = v7;
      v7 = v15;
      break;
  }

  v37[0] = v7;

  v20 = String.init(typeIdentifier:)(v37, v16, v17, v18, v19);
  v23 = 1;
  v24 = v20;
  v25 = v21;
  v26 = 1;
  switch(v11)
  {
    case 0uLL:
      break;
    case 1uLL:

      v23 = 0;
      v26 = 2;
      v12 = v8;
      v11 = v10;
      break;
    case 2uLL:
      v26 = 4;
      v27 = 3;
      switch(v8)
      {
        case 1:
          goto LABEL_14;
        case 2:
          v27 = 8;
          goto LABEL_13;
        case 3:
          v27 = 5;
          goto LABEL_13;
        default:
LABEL_13:
          v26 = v27;
LABEL_14:

          v11 = 0;
          v23 = 1;
          v12 = v9;
          break;
      }

      break;
    case 3uLL:
    case 5uLL:
      v12 = 0;
      v11 = 0;
      v26 = 6;
      break;
    case 4uLL:
      v12 = 0;
      v11 = 0;
      v26 = 7;
      break;
    default:
      JUMPOUT(0);
  }

  v37[0] = v24;
  v37[1] = v25;
  v37[2] = v7;
  v38 = v26;
  v39 = v35;
  v40 = v11;
  v41 = v23;
  v42 = v12;
  sub_1C8DD1B44(v20, v21, v22);

  sub_1C9062B3C();
  if (v36)
  {
    v28 = v36;
    sub_1C90626CC();
    v29 = OUTLINED_FUNCTION_85_8();

    v30 = *(v33 + 8);
    v30(v1, v34);
    if (v29)
    {

      sub_1C8D167C0(v37);
    }

    else
    {
      v31 = v36;
      sub_1C90626BC();
      v32 = OUTLINED_FUNCTION_85_8();
      sub_1C8D167C0(v37);

      v30(v1, v34);
      if ((v32 & 1) == 0)
      {

        goto LABEL_22;
      }
    }
  }

  else
  {

    sub_1C8D167C0(v37);
  }

LABEL_22:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.addPredicateTemplates(_:typeId:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v36 = sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v35 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v7 + 9);
  v13 = *(v7 + 10);
  v14 = *(v7 + 11);
  v15 = *(v7 + 12);
  v16 = *(v7 + 13);
  v18 = v7[2];
  v17 = v7[3];
  v19 = v7[4];
  v20 = v7[5];
  v21 = v7[6];
  v22 = 0xF000000000000007;
  if ((~v21 & 0xF000000000000007) != 0)
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  if (v17)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  if (v17)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  v38[0] = v5;
  v38[1] = v3;
  v38[2] = v10;
  LOBYTE(v38[3]) = v11;
  BYTE1(v38[3]) = v12;
  BYTE2(v38[3]) = v13;
  BYTE3(v38[3]) = v14;
  BYTE4(v38[3]) = v15;
  BYTE5(v38[3]) = v16;
  v38[4] = v22;
  v38[5] = v23;
  v38[6] = v17;
  v38[7] = v24;
  v38[8] = v25;
  memcpy(v37, v38, sizeof(v37));

  sub_1C8D16DD0(v18, v17, v19, v20, v26);
  v27 = sub_1C8CD1784(v21);
  sub_1C8F24A94(v27, v28, v29);

  sub_1C9062B3C();
  if (v0)
  {
    v30 = v0;
    sub_1C90626CC();
    OUTLINED_FUNCTION_85_8();

    v31 = *(v35 + 8);
    v31(v1, v36);
    if (v19)
    {
      sub_1C8F250C4(v38);
LABEL_17:

      goto LABEL_18;
    }

    v32 = v0;
    sub_1C90626BC();
    v33 = OUTLINED_FUNCTION_85_8();
    sub_1C8F250C4(v38);

    v34 = OUTLINED_FUNCTION_287();
    (v31)(v34);
    if (v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_1C8F250C4(v38);
  }

LABEL_18:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addTypeDisplayRepresentation(typeId:name:numericFormat:synonyms:locale:)(Swift::String typeId, Swift::String name, Swift::String_optional numericFormat, Swift::OpaquePointer synonyms, Swift::String locale)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_101_9();
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v18 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v9 = *(v5 + 16);
  sub_1C8D29C94(v10, v11, v12);
  sub_1C9062B3C();
  if (v6)
  {
    v13 = v6;
    sub_1C90626CC();
    OUTLINED_FUNCTION_85_8();

    v14 = *(v18 + 8);
    v15 = OUTLINED_FUNCTION_287();
    v14(v15);
    if (v9)
    {
    }

    else
    {
      v16 = v6;
      sub_1C90626BC();
      OUTLINED_FUNCTION_85_8();

      v17 = OUTLINED_FUNCTION_287();
      v14(v17);
    }
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.addEntityProperty(typeId:id:typeInstance:)()
{
  OUTLINED_FUNCTION_196();
  v13 = sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v12 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  sub_1C8D782B4(v4, v5, v6);

  OUTLINED_FUNCTION_80_10();
  sub_1C9062B3C();
  if (v0)
  {
    v7 = v0;
    sub_1C90626CC();
    OUTLINED_FUNCTION_98_10();
    v8 = sub_1C906243C();

    v9 = *(v12 + 8);
    v9(v1, v13);
    if (v8)
    {

LABEL_6:

      goto LABEL_7;
    }

    v10 = v0;
    sub_1C90626BC();
    OUTLINED_FUNCTION_98_10();
    v11 = sub_1C906243C();

    v9(v1, v13);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_7:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addEntityPropertyLocalization(typeId:propertyId:locale:displayName:)(Swift::String typeId, Swift::String propertyId, Swift::String locale, Swift::String displayName)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_101_9();
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v17 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v8 = *(v4 + 16);
  sub_1C9042F78(v9, v10, v11);
  sub_1C9062B3C();
  if (v5)
  {
    v12 = v5;
    sub_1C90626CC();
    OUTLINED_FUNCTION_85_8();

    v13 = *(v17 + 8);
    v14 = OUTLINED_FUNCTION_287();
    v13(v14);
    if (v8)
    {
    }

    else
    {
      v15 = v5;
      sub_1C90626BC();
      OUTLINED_FUNCTION_85_8();

      v16 = OUTLINED_FUNCTION_287();
      v13(v16);
    }
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.addEnumerationCase(typeId:locale:id:title:subtitle:altText:image:snippetPluginModel:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25)
{
  OUTLINED_FUNCTION_196();
  v94 = v28;
  v89 = v29;
  v90 = v30;
  v92 = v31;
  v93 = v32;
  v87 = v33;
  v88 = v34;
  v91 = v35;
  v74 = sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v73 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v39 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_9(v40);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
  OUTLINED_FUNCTION_9(v42);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v84 = v44;
  v45 = OUTLINED_FUNCTION_111();
  v85 = type metadata accessor for EnumerationCaseRecord(v45);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v47 = *a21;
  v48 = *(a21 + 8);
  v49 = *a22;
  v50 = *(a22 + 8);
  v76 = *a24;
  v75 = a24[1];
  v51 = a24[3];
  v52 = *(a21 + 16);
  v53 = v52 & 1;
  if (v52 == 255)
  {
    v54 = 0;
  }

  else
  {
    v54 = *a21;
  }

  if (v52 == 255)
  {
    v55 = 0;
  }

  else
  {
    v55 = *(a21 + 8);
  }

  v82 = v55;
  v83 = v54;
  if (v52 == 255)
  {
    v53 = -1;
  }

  v81 = v53;
  v56 = *(a22 + 16);
  v57 = v56 & 1;
  if (v56 == 255)
  {
    v58 = 0;
  }

  else
  {
    v58 = *a22;
  }

  v79 = v58;
  v80 = a24[2];
  if (v56 == 255)
  {
    v59 = 0;
  }

  else
  {
    v59 = *(a22 + 8);
  }

  v78 = v59;
  if (v56 == 255)
  {
    v57 = -1;
  }

  v77 = v57;
  sub_1C8D7AE3C(a23, v27, &qword_1EC312528, &unk_1C9066960);
  sub_1C8CD3AA0(v47, v48, v52, v60, v61);
  sub_1C8CD3AA0(v49, v50, v56, v62, v63);
  sub_1C9036964(v27, v84);
  if (v51)
  {
    v64 = v76;
  }

  else
  {
    v64 = 0;
  }

  v86 = v64;
  if (v51)
  {
    v65 = v75;
  }

  else
  {
    v65 = 0;
  }

  *v26 = v87;
  *(v26 + 8) = v91;
  if (v51)
  {
    v66 = v80;
  }

  else
  {
    v66 = 0;
  }

  *(v26 + 16) = v88;
  *(v26 + 24) = v92;
  *(v26 + 32) = v89;
  *(v26 + 40) = v93;
  *(v26 + 48) = v90;
  *(v26 + 56) = v94;
  *(v26 + 64) = v83;
  *(v26 + 72) = v82;
  *(v26 + 80) = v81;
  *(v26 + 88) = v79;
  *(v26 + 96) = v78;
  *(v26 + 104) = v77;
  sub_1C8E4E960(v84, v26 + v85[10], &qword_1EC312FC0, &unk_1C906A390);
  v67 = (v26 + v85[11]);
  *v67 = v86;
  v67[1] = v65;
  v67[2] = v66;
  v67[3] = v51;
  *(v26 + v85[12]) = a25;
  sub_1C8CE9E30(v76, v75, v80, v51);
  sub_1C9049320(&qword_1EC31E8D0, type metadata accessor for EnumerationCaseRecord, &unk_1C90C8234);

  sub_1C9062B3C();
  if (v25)
  {
    v68 = v25;
    OUTLINED_FUNCTION_50_9();
    sub_1C90626CC();
    v69 = sub_1C906243C();

    v70 = *(v73 + 8);
    v70(v85, v74);
    if (v69)
    {
      OUTLINED_FUNCTION_16_36();
LABEL_31:

      goto LABEL_32;
    }

    v71 = v25;
    sub_1C90626BC();
    v72 = sub_1C906243C();

    v70(v85, v74);
    OUTLINED_FUNCTION_16_36();
    if (v72)
    {
      goto LABEL_31;
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_36();
  }

LABEL_32:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.addSystemTypeProtocol(typeId:systemTypeProtocol:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v10 = v2[1];
  v26 = *v2;
  v27 = v10;
  v12 = *v2;
  v11 = v2[1];
  v28[0] = v2[2];
  *(v28 + 9) = *(v2 + 41);
  v25[0] = v12;
  v25[1] = v11;
  v25[2] = v2[2];
  *(&v25[2] + 9) = *(v2 + 41);
  sub_1C8E3014C(v23);
  *(v25 + 7) = v26;
  *(&v25[1] + 7) = v27;
  *(&v25[2] + 7) = v28[0];
  *&v29[0] = v6;
  *(&v29[0] + 1) = v4;
  v29[1] = v23[0];
  v29[2] = v23[1];
  LOBYTE(v29[3]) = v24;
  *(&v29[6] + 1) = *(v28 + 9);
  *(&v29[5] + 1) = v25[2];
  *(&v29[4] + 1) = v25[1];
  *(&v29[3] + 1) = v25[0];
  memcpy(v25, v29, 0x71uLL);
  v13 = sub_1C8D070A4(&v26, v23);
  sub_1C8E2D020(v13, v14, v15);

  OUTLINED_FUNCTION_80_10();
  sub_1C9062B3C();
  if (v0)
  {
    sub_1C8E2D2A8(v29);
    v16 = v0;
    sub_1C90626CC();
    v17 = sub_1C906243C();

    v18 = *(v8 + 8);
    v19 = OUTLINED_FUNCTION_112();
    v18(v19);
    if (v17 & 1) != 0 || (v20 = v0, sub_1C90626BC(), v21 = sub_1C906243C(), v0, v22 = OUTLINED_FUNCTION_112(), v18(v22), (v21))
    {
    }
  }

  else
  {
    sub_1C8E2D2A8(v29);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDatabase.Accessor.addTypeCoercion(typeId:coercionDefinition:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1C8E76E98(a1, a2, a3);
  OUTLINED_FUNCTION_143_4(v3, v4, v5, v6, v7, v8);

  OUTLINED_FUNCTION_59_17();
  sub_1C9062B3C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addUTTypeCoercion(typeId:coercionIdentifier:)(Swift::String typeId, Swift::String coercionIdentifier)
{
  OUTLINED_FUNCTION_196();
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  sub_1C8E77CEC(v6, v7, v8);

  OUTLINED_FUNCTION_80_10();
  sub_1C9062B3C();
  if (v2)
  {

    v9 = v2;
    sub_1C90626CC();
    v10 = OUTLINED_FUNCTION_85_8();

    v11 = *(v4 + 8);
    v12 = OUTLINED_FUNCTION_93();
    v11(v12);
    if (v10 & 1) != 0 || (v13 = v2, sub_1C90626BC(), v14 = OUTLINED_FUNCTION_85_8(), v2, v15 = OUTLINED_FUNCTION_93(), v11(v15), (v14))
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.recreate()()
{
  sub_1C903A7D8();
  if (!v0)
  {
    sub_1C8E5DF24(v1);
  }
}

uint64_t sub_1C903A588(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + 16) = a1;
  type metadata accessor for PreparedStatementCache();
  OUTLINED_FUNCTION_2();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = a1;
  *(v5 + 24) = v6;
  *(v2 + 24) = v5;
  *(v2 + 32) = v4;

  return v2;
}

uint64_t ToolDatabase.Accessor.deinit()
{

  return v0;
}

uint64_t ToolDatabase.Accessor.__deallocating_deinit()
{
  ToolDatabase.Accessor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C903A644()
{
  v1 = sub_1C9062B9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_1C9062B8C();
  sub_1C9062C9C();
  if (v0)
  {
    (*(v2 + 8))(v4, v1);
    return sub_1C8D16D78(v6, &qword_1EC319D68, &unk_1C90C6370);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    sub_1C8D16D78(v6, &qword_1EC319D68, &unk_1C90C6370);
    if (v9)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }
}

void sub_1C903A7D8()
{
  OUTLINED_FUNCTION_196();
  v64 = v1;
  v60 = v0;
  v2 = sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v57 = v6;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_216();
  v58 = v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_216();
  v59 = v10;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_216();
  v63 = v15;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  sub_1C906371C();
  v24 = sub_1C9063D1C();
  v25 = sub_1C906446C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1C8C9B000, v24, v25, "Erasing tool database", v26, 2u);
    OUTLINED_FUNCTION_25_0();
  }

  (*(v19 + 8))(v23, v17);
  v27 = *(v60 + 16);
  sub_1C9062B8C();
  v28 = v64;
  sub_1C9062FAC();
  if (!v28)
  {
    v32 = *(v4 + 8);
    v31 = v4 + 8;
    v33 = OUTLINED_FUNCTION_148();
    v32(v33);
    v34 = v63;
    sub_1C9062B8C();
    sub_1C9062FAC();
    v63 = v32;
    v64 = v27;
    v66 = v2;
    (v32)(v34, v2);
    if (qword_1EC311450 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v35 = qword_1EC390C48;
      v36 = *(qword_1EC390C48 + 16);
      v61 = 0x80000001C90D0C10;

      v37 = 0;
      v38 = v35 + 40;
      v62 = v31;
      while (v36 != v37)
      {
        if (v37 >= *(v35 + 16))
        {
          __break(1u);
          OUTLINED_FUNCTION_102_10();
          v54();

          sub_1C903AF50();
          swift_willThrow();
          goto LABEL_23;
        }

        v65[0] = 0;
        v65[1] = 0xE000000000000000;

        sub_1C906478C();

        OUTLINED_FUNCTION_104_9();
        v39 = OUTLINED_FUNCTION_112();
        MEMORY[0x1CCA81A90](v39);

        sub_1C9062B8C();
        OUTLINED_FUNCTION_109_7();
        sub_1C9062FAC();
        ++v37;
        (v63)(v13, v66);

        v38 += 16;
      }

      memset(v65, 0, 40);
      v40 = v59;
      sub_1C9062B8C();
      v41 = sub_1C9062C7C();
      (v63)(v40, v66);
      sub_1C8D16D78(v65, &qword_1EC319D68, &unk_1C90C6370);
      v42 = sub_1C8D2BCE0(v41) + 56;
      OUTLINED_FUNCTION_3_1();
      v13 = v44 & v43;
      v31 = (v45 + 63) >> 6;
      v59 = v46;

      v47 = 0;
      for (i = v42; v13; v42 = i)
      {
LABEL_15:
        v49 = (*(v59 + 48) + ((v47 << 10) | (16 * __clz(__rbit64(v13)))));
        v50 = *v49;
        v41 = v49[1];
        sub_1C9062FDC();

        if ((sub_1C9062F7C() & 1) == 0 && (sub_1C9062EBC() & 1) == 0)
        {
          v65[0] = 0;
          v65[1] = 0xE000000000000000;
          sub_1C906478C();

          OUTLINED_FUNCTION_104_9();
          MEMORY[0x1CCA81A90](v50, v41);

          LOBYTE(v41) = v65[1];
          sub_1C9062B8C();
          sub_1C9062FAC();
          OUTLINED_FUNCTION_102_10();
          v51();
        }

        v13 &= v13 - 1;
      }

      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v48 >= v31)
        {
          v52 = v59;

          sub_1C8F35CA4(0x735F6574696C7173, 0xEF65636E65757165, v52);
          OUTLINED_FUNCTION_63_17();

          if (v41)
          {
            sub_1C9062B8C();
            sub_1C9062FAC();
            OUTLINED_FUNCTION_102_10();
            v53();
          }

          sub_1C903AF50();
          goto LABEL_23;
        }

        v13 = *(v42 + 8 * v48);
        ++v47;
        if (v13)
        {
          v47 = v48;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      swift_once();
    }
  }

  v29 = OUTLINED_FUNCTION_148();
  v30(v29);
LABEL_23:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C903AF50()
{
  v1 = sub_1C9062B9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1C9062B8C();
  sub_1C9062FAC();
  if (v0)
  {
    return (*(v2 + 8))(v7, v1);
  }

  v9 = *(v2 + 8);
  v9(v7, v1);
  sub_1C9062B8C();
  sub_1C9062FAC();
  return (v9)(v4, v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.optimize()()
{
  sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  sub_1C9062B8C();
  sub_1C9062FAC();
  v1 = OUTLINED_FUNCTION_93();
  v2(v1);
}

void ToolDatabase.Accessor.prune(tool:)()
{
  OUTLINED_FUNCTION_196();
  v75 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v58 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  OUTLINED_FUNCTION_11();
  v60 = v16;
  v61 = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  v59 = v18;
  v20 = v3[27];
  v19 = v3[28];
  v57 = v3;
  v22 = v3[34];
  v21 = v3[35];
  v69 = v20;
  v70 = v19;

  v23 = OUTLINED_FUNCTION_288();
  MEMORY[0x1CCA81A90](v23);

  if (v21)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1CCA81A90](v24, v25);

  v67 = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69A0130];
  v65 = v69;
  v66 = v70;
  v26 = sub_1C90627EC();
  v27 = MEMORY[0x1E699FE60];
  v63 = v26;
  v64 = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v62);
  sub_1C8E294C8();
  v71 = v26;
  v72 = v27;
  __swift_allocate_boxed_opaque_existential_1(&v69);
  OUTLINED_FUNCTION_32_22();
  sub_1C9062D5C();
  __swift_destroy_boxed_opaque_existential_1(v62);
  v28 = sub_1C8D16D78(&v65, &qword_1EC313248, &unk_1C906B540);
  sub_1C8D24BA0(v28, v29, v30);
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(&v69);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v32 = OUTLINED_FUNCTION_84_9(v31);
  *(v32 + 16) = xmmword_1C906A950;
  if (qword_1EDA62B80 != -1)
  {
    OUTLINED_FUNCTION_53_0(&qword_1EDA62B80);
  }

  v33 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v33, qword_1EDA6E7D8);
  v34 = MEMORY[0x1E69A0038];
  *(v32 + 56) = v33;
  *(v32 + 64) = v34;
  __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  OUTLINED_FUNCTION_10_0();
  v36 = *(v35 + 16);
  OUTLINED_FUNCTION_91_8();
  v36();
  OUTLINED_FUNCTION_13_38(&qword_1EC31E8C0, &qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_71_11();
  sub_1C9062AEC();

  v37 = *(v10 + 8);
  v37(v1, v8);
  OUTLINED_FUNCTION_123();
  sub_1C9062C4C();
  v37(v22, v8);
  sub_1C9062C1C();
  v37(v1, v8);
  OUTLINED_FUNCTION_0_84();
  sub_1C8D28184(v38, v39, v40, v41);
  sub_1C90625AC();
  (*(v60 + 8))(v59, v61);
  if (!v75 && (v74 & 1) == 0)
  {
    v42 = v73;
    type metadata accessor for ToolRecord(0);
    v44 = *v57;
    v43 = v57[1];
    v67 = MEMORY[0x1E69E6158];
    v68 = MEMORY[0x1E69A0130];
    v65 = v44;
    v66 = v43;
    v45 = qword_1EDA68E08;

    if (v45 != -1)
    {
      OUTLINED_FUNCTION_43_3(&qword_1EDA68E08);
    }

    v46 = __swift_project_value_buffer(v33, qword_1EDA6E8D8);
    v63 = v33;
    v64 = MEMORY[0x1E69A0050];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
    (v36)(boxed_opaque_existential_1, v46, v33);
    v71 = v26;
    v72 = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(&v69);
    OUTLINED_FUNCTION_32_22();
    sub_1C9062D5C();
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_1C8D16D78(&v65, &qword_1EC313248, &unk_1C906B540);
    OUTLINED_FUNCTION_1_81();
    sub_1C9049320(v48, v49, &unk_1C906B058);
    OUTLINED_FUNCTION_50_9();
    sub_1C90624DC();
    __swift_destroy_boxed_opaque_existential_1(&v69);
    v68 = MEMORY[0x1E69A01C8];
    v67 = MEMORY[0x1E69E7360];
    v65 = v42;
    if (qword_1EDA6B248 != -1)
    {
      OUTLINED_FUNCTION_32_2(&qword_1EDA6B248);
    }

    OUTLINED_FUNCTION_10(v33, qword_1EDA6EBE0);
    v63 = v33;
    v64 = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_91_8();
    v36();
    v71 = v26;
    v72 = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(&v69);
    OUTLINED_FUNCTION_32_22();
    sub_1C9062D5C();
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_1C8D16D78(&v65, &qword_1EC313248, &unk_1C906B540);
    OUTLINED_FUNCTION_28_10();
    sub_1C8D28184(v50, v51, v52, v53);
    OUTLINED_FUNCTION_54_5();
    sub_1C906292C();
    v54 = *(v58 + 8);
    v55 = OUTLINED_FUNCTION_200_0();
    v54(v55);
    __swift_destroy_boxed_opaque_existential_1(&v69);
    OUTLINED_FUNCTION_105_6();
    sub_1C9062C5C();
    v56 = OUTLINED_FUNCTION_278();
    v54(v56);
  }

  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.prune(bundleIdentifiers:onlySiriKitAndAppIntents:)(Swift::OpaquePointer bundleIdentifiers, Swift::Bool onlySiriKitAndAppIntents)
{
  OUTLINED_FUNCTION_196();
  v92 = v2;
  v83 = v4;
  v6 = v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v84 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v88 = v12;
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D40, &qword_1C909C3A8);
  OUTLINED_FUNCTION_11();
  v17 = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_0();
  v86 = v6;
  v93[0] = v6;
  if (qword_1EDA607A8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v19 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v19, qword_1EDA6E560);
  v95 = v19;
  v96 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v94);
  OUTLINED_FUNCTION_10_0();
  v91 = *(v20 + 16);
  v91();
  v90 = sub_1C90627EC();
  OUTLINED_FUNCTION_145_3(v90, MEMORY[0x1E699FE60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_0_6();
  sub_1C8D28184(v21, v22, &qword_1C9066990, v23);
  OUTLINED_FUNCTION_83_10();
  sub_1C90640CC();
  v24 = __swift_destroy_boxed_opaque_existential_1(v94);
  sub_1C8E7F154(v24, v25, v26);
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v97);
  sub_1C9062C5C();
  (*(v17 + 8))(v3, v15);
  if (!v92)
  {
    v93[0] = v86;
    if (qword_1EDA69668 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1EDA69668);
    }

    v27 = v19;
    v28 = __swift_project_value_buffer(v19, qword_1EDA6EB50);
    v95 = v19;
    v96 = MEMORY[0x1E69A0050];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
    (v91)(boxed_opaque_existential_1, v28, v19);
    v98 = v90;
    v30 = MEMORY[0x1E699FE60];
    v99 = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v97);
    v31 = MEMORY[0x1E69A0130];
    OUTLINED_FUNCTION_83_10();
    OUTLINED_FUNCTION_120_8();
    sub_1C90640CC();
    v32 = __swift_destroy_boxed_opaque_existential_1(v94);
    sub_1C8D24BA0(v32, v33, v34);
    sub_1C90624DC();
    __swift_destroy_boxed_opaque_existential_1(v97);
    if (qword_1EDA69640 != -1)
    {
      OUTLINED_FUNCTION_4_29(&qword_1EDA69640);
    }

    v35 = __swift_project_value_buffer(v27, qword_1EDA6EAF0);
    v95 = v27;
    v96 = MEMORY[0x1E69A0050];
    v36 = __swift_allocate_boxed_opaque_existential_1(v94);
    (v91)(v36, v35, v27);
    v93[3] = MEMORY[0x1E69E6158];
    v93[4] = v31;
    v93[0] = 0;
    v93[1] = 0xE000000000000000;
    v98 = v90;
    v99 = v30;
    __swift_allocate_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_89_4();
    sub_1C9062D6C();
    sub_1C8D16D78(v93, &qword_1EC313248, &unk_1C906B540);
    __swift_destroy_boxed_opaque_existential_1(v94);
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_127_5();
    sub_1C8D28184(v37, v38, v39, v40);
    OUTLINED_FUNCTION_64_14();
    OUTLINED_FUNCTION_50_9();
    sub_1C906292C();
    v3 = v88 + 8;
    v17 = *(v88 + 8);
    (v17)(v87, v89);
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_127_5();
    v45 = sub_1C8D28184(v41, v42, v43, v44);
    sub_1C8E2A8EC(v45, v46, v47);
    v48 = sub_1C906255C();
    (v17)(v90, v89);
    v92 = 0;
    v49 = 0;
    v50 = *(v48 + 16);
    v15 = v48 - 56;
    v51 = MEMORY[0x1E69E7CC0];
    v52 = MEMORY[0x1E69A0050];
LABEL_8:
    v53 = v15 + 88 * v49;
    while (v50 != v49)
    {
      if (v49 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      ++v49;
      v54 = (v53 + 88);
      v55 = *(v53 + 96);
      v53 += 88;
      if ((v55 & 1) == 0)
      {
        v56 = *v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = OUTLINED_FUNCTION_7_20();
          sub_1C8D01BAC(v58, v59, v60, v51);
          v51 = v61;
        }

        v3 = *(v51 + 16);
        v57 = *(v51 + 24);
        v17 = v3 + 1;
        if (v3 >= v57 >> 1)
        {
          v62 = OUTLINED_FUNCTION_176(v57);
          sub_1C8D01BAC(v62, v3 + 1, 1, v51);
          v51 = v63;
        }

        *(v51 + 16) = v17;
        *(v51 + 8 * v3 + 32) = v56;
        v52 = MEMORY[0x1E69A0050];
        goto LABEL_8;
      }
    }

    type metadata accessor for ToolRecord(0);
    v93[0] = v51;
    if (qword_1EDA6B248 != -1)
    {
      OUTLINED_FUNCTION_32_2(&qword_1EDA6B248);
    }

    OUTLINED_FUNCTION_10(v27, qword_1EDA6EBE0);
    v95 = v27;
    v96 = v52;
    v64 = __swift_allocate_boxed_opaque_existential_1(v94);
    (v91)(v64, v48, v27);
    v98 = v90;
    OUTLINED_FUNCTION_144_3(MEMORY[0x1E699FE60]);
    v65 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
    OUTLINED_FUNCTION_0_6();
    sub_1C8D28184(v67, v68, &unk_1C90C6388, v69);
    OUTLINED_FUNCTION_83_10();
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v94);

    OUTLINED_FUNCTION_1_81();
    sub_1C9049320(v70, v71, &unk_1C906B058);
    OUTLINED_FUNCTION_64_14();
    OUTLINED_FUNCTION_54_5();
    sub_1C90624DC();
    __swift_destroy_boxed_opaque_existential_1(v97);
    if (v83)
    {
      v93[0] = &unk_1F489BAC8;
      if (qword_1EDA6B240 != -1)
      {
        OUTLINED_FUNCTION_33_2(&qword_1EDA6B240);
      }

      v72 = __swift_project_value_buffer(v27, qword_1EDA6EBC8);
      v95 = v27;
      v96 = v52;
      v73 = __swift_allocate_boxed_opaque_existential_1(v94);
      (v91)(v73, v72, v27);
      v98 = v90;
      OUTLINED_FUNCTION_144_3(MEMORY[0x1E699FE60]);
      OUTLINED_FUNCTION_83_10();
      OUTLINED_FUNCTION_120_8();
      sub_1C90640CC();
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_28_10();
      sub_1C8D28184(v74, v75, v76, v77);
      OUTLINED_FUNCTION_64_14();
      OUTLINED_FUNCTION_105_6();
      sub_1C906292C();
      v78 = OUTLINED_FUNCTION_278();
      v79(v78);
      __swift_destroy_boxed_opaque_existential_1(v97);
      (*(v84 + 32))(&unk_1C90C6388, v82, v85);
    }

    OUTLINED_FUNCTION_105_6();
    sub_1C9062C5C();
    ToolDatabase.Accessor.clearUnusedData()();
    v80 = OUTLINED_FUNCTION_278();
    v81(v80);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.clearUnusedData()()
{
  OUTLINED_FUNCTION_196();
  v160 = v0;
  v161 = v1;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11();
  v146 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v5);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E8E0, &qword_1C90C6398);
  OUTLINED_FUNCTION_11();
  v148 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v9);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E8E8, &qword_1C90C63A0);
  OUTLINED_FUNCTION_11();
  v150 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v12);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v153 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v144 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v144 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  OUTLINED_FUNCTION_11();
  v162 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_147();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v33 = OUTLINED_FUNCTION_84_9(v156);
  v155 = xmmword_1C906A950;
  *(v33 + 16) = xmmword_1C906A950;
  if (qword_1EDA69660 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDA69660);
  }

  v34 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v34, qword_1EDA6EB38);
  v35 = MEMORY[0x1E69A0038];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  __swift_allocate_boxed_opaque_existential_1((v33 + 32));
  OUTLINED_FUNCTION_10_0();
  v157 = *(v36 + 16);
  v158 = v34;
  v159 = v36 + 16;
  v37 = v157();
  v144[7] = sub_1C8D24BA0(v37, v38, v39);
  sub_1C906250C();

  sub_1C9062C4C();
  v41 = *(v19 + 8);
  v40 = v19 + 8;
  v41(v23, v17);
  sub_1C9062C1C();
  v145 = v41;
  v41(v26, v17);
  v42 = *(v160 + 16);
  OUTLINED_FUNCTION_0_84();
  v47 = sub_1C8D28184(v43, v44, v45, v46);
  v160 = v42;
  v48 = v27;
  v49 = v161;
  v50 = sub_1C906259C();
  v52 = v162 + 8;
  v51 = *(v162 + 8);
  v53 = OUTLINED_FUNCTION_287();
  v51(v53);
  if (!v49)
  {
    v144[4] = v47;
    v144[5] = v51;
    v144[3] = v50;
    v161 = 0;
    v162 = v52;
    v144[6] = v48;
    v144[1] = v40;
    v144[0] = v17;
    v54 = type metadata accessor for ToolRecord(0);
    v55 = OUTLINED_FUNCTION_75_8();
    OUTLINED_FUNCTION_125_8(v55);
    if (qword_1EDA6B248 != -1)
    {
      OUTLINED_FUNCTION_32_2(&qword_1EDA6B248);
    }

    v56 = v158;
    v57 = __swift_project_value_buffer(v158, qword_1EDA6EBE0);
    v55[3].n128_u64[1] = v56;
    v55[4].n128_u64[0] = MEMORY[0x1E69A0038];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55[2]);
    (v157)(boxed_opaque_existential_1, v57, v56);
    OUTLINED_FUNCTION_1_81();
    v61 = sub_1C9049320(v59, v60, &unk_1C906B058);
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_288();
    sub_1C906250C();

    OUTLINED_FUNCTION_54_5();
    sub_1C9062C4C();
    v144[2] = v54;
    v62 = *(v153 + 8);
    v63 = OUTLINED_FUNCTION_200_0();
    v62(v63);
    sub_1C9062C1C();
    v64 = OUTLINED_FUNCTION_278();
    v62(v64);
    v65 = v161;
    v66 = sub_1C906259C();
    OUTLINED_FUNCTION_29_25();
    v67();
    v161 = v65;
    if (!v65)
    {
      v152 = v61;
      v153 = v66;
      v68 = OUTLINED_FUNCTION_75_8();
      OUTLINED_FUNCTION_125_8(v68);
      if (qword_1EDA6B230 != -1)
      {
        swift_once();
      }

      v69 = v158;
      OUTLINED_FUNCTION_10(v158, qword_1EDA6EBB0);
      v68[3].n128_u64[1] = v69;
      v68[4].n128_u64[0] = MEMORY[0x1E69A0038];
      v70 = __swift_allocate_boxed_opaque_existential_1(&v68[2]);
      (v157)(v70, 0, v69);
      OUTLINED_FUNCTION_71_11();
      OUTLINED_FUNCTION_93();
      sub_1C906250C();

      OUTLINED_FUNCTION_54_5();
      v71 = v154;
      sub_1C9062C4C();
      (v62)(v61, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E8F0, &qword_1C90C63A8);
      OUTLINED_FUNCTION_123();
      sub_1C9062C1C();
      (v62)(v48, v71);
      OUTLINED_FUNCTION_0_84();
      sub_1C8D28184(v72, v73, v74, v75);
      sub_1C8D28184(&qword_1EDA60440, &qword_1EC31E8F0, &qword_1C90C63A8, MEMORY[0x1E69A0208]);
      v76 = v161;
      v77 = sub_1C906257C();
      v78 = v76;
      OUTLINED_FUNCTION_296();
      v79 = OUTLINED_FUNCTION_49();
      v80(v79);
      v161 = v76;
      if (!v76)
      {
        v81 = v159;
        v82 = *(v77 + 16);
        if (v82)
        {
          v83 = (v77 + 40);
          v84 = MEMORY[0x1E69E7CC0];
          v85 = MEMORY[0x1E69A0038];
          do
          {
            if ((*v83 & 1) == 0)
            {
              v86 = *(v83 - 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v89 = OUTLINED_FUNCTION_7_20();
                sub_1C8D01BAC(v89, v90, v91, v84);
                v84 = v92;
              }

              v88 = *(v84 + 16);
              v87 = *(v84 + 24);
              v78 = v88 + 1;
              if (v88 >= v87 >> 1)
              {
                v93 = OUTLINED_FUNCTION_9_1(v87);
                sub_1C8D01BAC(v93, v94, v95, v84);
                v84 = v96;
              }

              *(v84 + 16) = v78;
              *(v84 + 8 * v88 + 32) = v86;
              v81 = v159;
              v85 = MEMORY[0x1E69A0038];
            }

            v83 += 16;
            --v82;
          }

          while (v82);
        }

        else
        {
          v84 = MEMORY[0x1E69E7CC0];
          v85 = MEMORY[0x1E69A0038];
        }

        v97 = OUTLINED_FUNCTION_75_8();
        OUTLINED_FUNCTION_125_8(v97);
        if (qword_1EDA62B80 != -1)
        {
          OUTLINED_FUNCTION_53_0(&qword_1EDA62B80);
        }

        v98 = v158;
        OUTLINED_FUNCTION_10(v158, qword_1EDA6E7D8);
        v97[3].n128_u64[1] = v98;
        v97[4].n128_u64[0] = v85;
        v99 = __swift_allocate_boxed_opaque_existential_1(&v97[2]);
        v100 = (v157)(v99, v78, v98);
        sub_1C8D24934(v100, v101, v102);
        OUTLINED_FUNCTION_71_11();
        sub_1C906250C();

        OUTLINED_FUNCTION_50_9();
        v103 = v149;
        sub_1C9062C4C();
        v104 = *(v148 + 8);
        v104(v81, v103);
        OUTLINED_FUNCTION_71_11();
        sub_1C9062C1C();
        v104(v85, v103);
        v105 = v161;
        v106 = sub_1C906259C();
        v161 = v105;
        if (v105)
        {
          OUTLINED_FUNCTION_29_25();
          v107();
        }

        else
        {
          v154 = v106;
          OUTLINED_FUNCTION_29_25();
          v108();
          v109 = OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_125_8(v109);
          if (qword_1EC3112D8 != -1)
          {
            swift_once();
          }

          v110 = v158;
          OUTLINED_FUNCTION_10(v158, qword_1EC3909A0);
          v109[3].n128_u64[1] = v110;
          v109[4].n128_u64[0] = MEMORY[0x1E69A0038];
          v111 = __swift_allocate_boxed_opaque_existential_1(&v109[2]);
          v112 = v157;
          v113 = (v157)(v111, v81, v110);
          sub_1C8D24D68(v113, v114, v115);
          sub_1C906250C();

          v116 = sub_1C8CB78AC(0, &qword_1EC31E8F8, 0x1E69ACA30);
          sub_1C906458C();
          if (qword_1EC3112C0 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_10(v110, qword_1EC390958);
          v164[3] = v110;
          v164[4] = MEMORY[0x1E69A0050];
          v117 = __swift_allocate_boxed_opaque_existential_1(v164);
          (v112)(v117, v116, v110);
          v118 = sub_1C90627EC();
          OUTLINED_FUNCTION_145_3(v118, MEMORY[0x1E699FE60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
          OUTLINED_FUNCTION_0_6();
          sub_1C8D28184(v119, v120, &qword_1C9066990, v121);
          sub_1C90640CC();

          __swift_destroy_boxed_opaque_existential_1(v164);
          OUTLINED_FUNCTION_28_10();
          sub_1C8D28184(v122, v123, v124, v125);
          OUTLINED_FUNCTION_64_14();
          OUTLINED_FUNCTION_50_9();
          v126 = v147;
          sub_1C906292C();
          v127 = *(v146 + 8);
          v128 = OUTLINED_FUNCTION_146_0();
          v127(v128);
          __swift_destroy_boxed_opaque_existential_1(v165);
          OUTLINED_FUNCTION_123();
          sub_1C9062C1C();
          (v127)(&qword_1C9066990, v126);
          v129 = v161;
          v130 = sub_1C906259C();
          if (!v129)
          {
            v132 = v130;
            OUTLINED_FUNCTION_146_0();
            OUTLINED_FUNCTION_29_25();
            v133();
            v163 = v153;
            sub_1C8D37EE0(v84);
            sub_1C8D37EE0(v154);
            sub_1C8D37EE0(v132);
            sub_1C8D2C2EC(v163);
            v135 = v134;
            v136 = OUTLINED_FUNCTION_128_5();
            sub_1C8D2C2EC(v136);
            v138 = sub_1C903EC88(v135, v137, sub_1C9045FF0, sub_1C9046218);

            v165[0] = v138;
            v139 = OUTLINED_FUNCTION_94();
            __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
            OUTLINED_FUNCTION_38_23();
            sub_1C8D28184(v141, &qword_1EC31E900, &qword_1C90C63B0, v142);
            OUTLINED_FUNCTION_161_1();
            sub_1C90624CC();

            sub_1C9062C5C();
            v143 = OUTLINED_FUNCTION_148();
            v145(v143);
            goto LABEL_34;
          }

          v161 = v129;
          OUTLINED_FUNCTION_146_0();
          OUTLINED_FUNCTION_29_25();
          v131();
        }
      }
    }

    OUTLINED_FUNCTION_128_5();
  }

LABEL_34:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void ToolDatabase.Accessor.updateLocalizationMetadata(for:locales:)()
{
  OUTLINED_FUNCTION_196();
  v161 = v0;
  v3 = v2;
  v148 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v147 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v7 - v6);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E908, &qword_1C90C63B8);
  OUTLINED_FUNCTION_11();
  v154 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v16 = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_0();
  v157[0] = v3;
  if (qword_1EDA69668 != -1)
  {
LABEL_70:
    OUTLINED_FUNCTION_1_1(&qword_1EDA69668);
  }

  v18 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v18, qword_1EDA6EB50);
  v159[3] = v18;
  v159[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v159);
  OUTLINED_FUNCTION_10_0();
  v155 = *(v19 + 16);
  v155();
  v151 = sub_1C90627EC();
  v160[3] = v151;
  v160[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v160);
  v20 = OUTLINED_FUNCTION_136();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_0_6();
  sub_1C8D28184(v22, v23, &qword_1C9066990, v24);
  OUTLINED_FUNCTION_99_9();
  sub_1C90640CC();
  v25 = __swift_destroy_boxed_opaque_existential_1(v159);
  sub_1C8D24BA0(v25, v26, v27);
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v160);
  OUTLINED_FUNCTION_0_84();
  v32 = sub_1C8D28184(v28, v29, v30, v31);
  sub_1C8E2A8EC(v32, v33, v34);
  v35 = sub_1C906255C();
  (*(v16 + 8))(v1, v14);
  if (!v161)
  {
    v36 = 0;
    v37 = *(v35 + 16);
    v38 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v39 = v35 - 56 + 88 * v36;
    while (v37 != v36)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
LABEL_67:

        goto LABEL_31;
      }

      ++v36;
      v40 = (v39 + 88);
      v41 = *(v39 + 96);
      v39 += 88;
      if ((v41 & 1) == 0)
      {
        v42 = *v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = OUTLINED_FUNCTION_7_20();
          sub_1C8D01BAC(v45, v46, v47, v38);
          v38 = v48;
        }

        v14 = *(v38 + 16);
        v43 = *(v38 + 24);
        v44 = v38;
        if (v14 >= v43 >> 1)
        {
          v49 = OUTLINED_FUNCTION_176(v43);
          sub_1C8D01BAC(v49, v14 + 1, 1, v50);
          v44 = v51;
        }

        *(v44 + 16) = v14 + 1;
        v38 = v44;
        *(v44 + 8 * v14 + 32) = v42;
        goto LABEL_4;
      }
    }

    if (*(v38 + 16))
    {
      v16 = 0;
      v1 = MEMORY[0x1E69E7CC0];
      v146 = v18;
LABEL_15:
      v52 = 88 * v16 + 32;
      while (v37 != v16)
      {
        if (v16 >= *(v35 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        memcpy(v160, (v35 + v52), 0x52uLL);
        if (LOBYTE(v160[1]) != 1)
        {
          v53 = v160[0];
          sub_1C8E2B8DC(v160, v159);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_20();
            sub_1C8D01D64();
            v1 = v56;
          }

          v14 = *(v1 + 16);
          v54 = *(v1 + 24);
          if (v14 >= v54 >> 1)
          {
            OUTLINED_FUNCTION_176(v54);
            sub_1C8D01D64();
            v1 = v57;
          }

          ++v16;
          memcpy(v159, v160, 0x52uLL);
          *(v1 + 16) = v14 + 1;
          v55 = v1 + 96 * v14;
          *(v55 + 32) = v53;
          memcpy((v55 + 40), v159, 0x52uLL);
          goto LABEL_15;
        }

        v52 += 88;
        ++v16;
      }

      v161 = sub_1C903E32C(v1, &qword_1EC31E9B0, &unk_1C90C65D8, sub_1C9045944, v58);
      v145 = v38;
      v157[0] = v38;
      if (qword_1EDA694B0 != -1)
      {
        goto LABEL_72;
      }

      while (1)
      {
        v59 = __swift_project_value_buffer(v146, qword_1EDA6EAB0);
        v159[3] = v146;
        v159[4] = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(v159);
        v144 = v59;
        OUTLINED_FUNCTION_119_10();
        v60();
        v160[3] = v151;
        OUTLINED_FUNCTION_146_7(MEMORY[0x1E699FE60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E8D8, &unk_1C90C6388);
        OUTLINED_FUNCTION_0_6();
        sub_1C8D28184(v61, v62, &unk_1C90C6388, v63);
        OUTLINED_FUNCTION_99_9();
        sub_1C90640CC();
        v64 = __swift_destroy_boxed_opaque_existential_1(v159);
        sub_1C8D280DC(v64, v65, v66);
        OUTLINED_FUNCTION_123();
        v68 = v67;
        sub_1C90624DC();
        __swift_destroy_boxed_opaque_existential_1(v160);
        OUTLINED_FUNCTION_131_6();
        if (qword_1EDA69498 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_10(v146, qword_1EDA6EA80);
        v159[3] = v146;
        OUTLINED_FUNCTION_142_4(MEMORY[0x1E69A0050]);
        v143 = v68;
        OUTLINED_FUNCTION_92_10();
        OUTLINED_FUNCTION_119_10();
        v69();
        v160[3] = v151;
        OUTLINED_FUNCTION_146_7(MEMORY[0x1E699FE60]);
        OUTLINED_FUNCTION_99_9();
        sub_1C90640CC();
        __swift_destroy_boxed_opaque_existential_1(v159);
        OUTLINED_FUNCTION_28_10();
        sub_1C8D28184(v70, v71, v72, v73);
        sub_1C906292C();
        v14 = *(v154 + 8);
        (v14)(&unk_1C90C6388, v153);
        __swift_destroy_boxed_opaque_existential_1(v160);
        if (qword_1EDA694A0 != -1)
        {
          swift_once();
        }

        v74 = __swift_project_value_buffer(v146, qword_1EDA6EA98);
        v159[3] = v146;
        OUTLINED_FUNCTION_142_4(MEMORY[0x1E69A0050]);
        v142 = v74;
        OUTLINED_FUNCTION_119_10();
        v75();
        v158 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_66_14(MEMORY[0x1E69A0130]);
        v160[3] = v151;
        OUTLINED_FUNCTION_146_7(MEMORY[0x1E699FE60]);
        sub_1C9062D6C();
        sub_1C8D16D78(v157, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(v159);
        sub_1C906292C();
        (v14)(v152, v153);
        __swift_destroy_boxed_opaque_existential_1(v160);
        OUTLINED_FUNCTION_0_84();
        v80 = sub_1C8D28184(v76, v77, v78, v79);
        sub_1C8DDD6F0(v80, v81, v82);
        OUTLINED_FUNCTION_128_5();
        v1 = sub_1C906255C();
        v83 = OUTLINED_FUNCTION_227();
        (v14)(v83);
        v84 = *(v1 + 16);
        v85 = v161;
        if (!v84)
        {
          break;
        }

        v141 = v14;
        v154 += 8;
        v16 = 0;
        v150 = MEMORY[0x1E69E7CC0];
LABEL_36:
        v86 = (v1 + 48 + 40 * v16);
        while (v84 != v16)
        {
          if (v16 >= *(v1 + 16))
          {
            goto LABEL_69;
          }

          if (*(v85 + 16))
          {
            v87 = *(v86 - 1);
            v14 = *v86;
            v88 = *(v86 - 2);
            v89 = sub_1C8D59CEC(v88);
            v85 = v161;
            if (v90)
            {
              v91 = *(v161 + 56) + 88 * v89;
              v92 = *(v91 + 24);
              v139 = *(v91 + 16);

              v93 = v150;
              v140 = v92;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_20();
                sub_1C8D01CA4();
                v93 = v97;
              }

              v150 = v93;
              v95 = *(v93 + 16);
              v94 = *(v93 + 24);
              if (v95 >= v94 >> 1)
              {
                OUTLINED_FUNCTION_9_1(v94);
                sub_1C8D01CA4();
                v150 = v98;
              }

              ++v16;
              *(v150 + 16) = v95 + 1;
              v96 = (v150 + 40 * v95);
              v96[4] = v88;
              v96[5] = v87;
              v96[6] = v14;
              v96[7] = v139;
              v96[8] = v140;
              v85 = v161;
              goto LABEL_36;
            }
          }

          v86 += 5;
          ++v16;
        }

        v157[0] = v145;
        v159[3] = v146;
        v159[4] = MEMORY[0x1E69A0050];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v159);
        (v155)(boxed_opaque_existential_1, v144, v146);
        v160[3] = v151;
        v160[4] = MEMORY[0x1E699FE60];
        v100 = MEMORY[0x1E699FE60];
        __swift_allocate_boxed_opaque_existential_1(v160);
        OUTLINED_FUNCTION_99_9();
        sub_1C90640CC();
        __swift_destroy_boxed_opaque_existential_1(v159);

        OUTLINED_FUNCTION_54_5();
        sub_1C90624DC();
        __swift_destroy_boxed_opaque_existential_1(v160);
        OUTLINED_FUNCTION_131_6();
        v159[3] = v146;
        v101 = OUTLINED_FUNCTION_142_4(MEMORY[0x1E69A0050]);
        (v155)(v101, v143, v146);
        v160[3] = v151;
        v160[4] = v100;
        __swift_allocate_boxed_opaque_existential_1(v160);
        OUTLINED_FUNCTION_99_9();
        OUTLINED_FUNCTION_127_5();
        sub_1C90640CC();
        __swift_destroy_boxed_opaque_existential_1(v159);
        OUTLINED_FUNCTION_161_1();
        sub_1C906292C();
        v141(v145, v153);
        __swift_destroy_boxed_opaque_existential_1(v160);
        v159[3] = v146;
        v102 = OUTLINED_FUNCTION_142_4(MEMORY[0x1E69A0050]);
        (v155)(v102, v142, v146);
        v158 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_66_14(MEMORY[0x1E69A0130]);
        v160[3] = v151;
        OUTLINED_FUNCTION_146_7(MEMORY[0x1E699FE60]);
        sub_1C9062D6C();
        sub_1C8D16D78(v157, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(v159);
        sub_1C906292C();
        v103 = OUTLINED_FUNCTION_148();
        (v141)(v103);
        __swift_destroy_boxed_opaque_existential_1(v160);
        OUTLINED_FUNCTION_128_5();
        sub_1C9062C5C();
        v104 = OUTLINED_FUNCTION_93();
        (v141)(v104);
        v105 = v150;
        v156 = *(v150 + 16);
        if (!v156)
        {
          goto LABEL_33;
        }

        v106 = 0;
        v155 = (v147 + 8);
        v107 = (v150 + 64);
        v108 = MEMORY[0x1E69E7CC0];
        v152 = 136315394;
        while (v106 < *(v105 + 16))
        {
          v110 = *(v107 - 4);
          v109 = *(v107 - 3);
          v112 = *(v107 - 2);
          v111 = *(v107 - 1);
          v113 = *v107;

          v161 = v111;
          v114 = sub_1C903E488(v111, v113, v109, v112);
          if (v115)
          {
            v116._countAndFlagsBits = v114;
            v117 = v115;
            v118._countAndFlagsBits = v109;
            v118._object = v112;
            v116._object = v117;
            ToolDatabase.Accessor.addContainerMetadataLocalization(containerId:locale:name:)(v110, v118, v116);
            if (v119)
            {
              goto LABEL_67;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_20();
              sub_1C8D00CA4();
              v108 = v137;
            }

            v121 = *(v108 + 16);
            v120 = *(v108 + 24);
            if (v121 >= v120 >> 1)
            {
              OUTLINED_FUNCTION_9_1(v120);
              sub_1C8D00CA4();
              v108 = v138;
            }

            *(v108 + 16) = v121 + 1;
            v122 = v108 + 16 * v121;
            *(v122 + 32) = v161;
            *(v122 + 40) = v113;
          }

          else
          {
            sub_1C906371C();

            v123 = sub_1C9063D1C();
            v124 = sub_1C906444C();

            if (os_log_type_enabled(v123, v124))
            {
              v153 = v123;
              v125 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v160[0] = v154;
              *v125 = 136315394;
              v129 = sub_1C8CACE04(v111, v113, v160, v126, v127, v128);

              *(v125 + 4) = v129;
              *(v125 + 12) = 2080;
              v130 = OUTLINED_FUNCTION_146_0();
              v136 = sub_1C8CACE04(v130, v131, v132, v133, v134, v135);

              *(v125 + 14) = v136;
              _os_log_impl(&dword_1C8C9B000, v153, v124, "Attempted to update container localization for %s in %s but LS did not return a name for the bundle", v125, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_25_0();
              OUTLINED_FUNCTION_25_0();
            }

            else
            {
            }

            (*v155)(v149, v148);
          }

          ++v106;
          v107 += 5;
          v105 = v150;
          if (v156 == v106)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_72:
        swift_once();
      }
    }

    else
    {
    }

LABEL_33:
  }

LABEL_31:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C903E32C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_1C906495C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;

  a4(v7, 1, &v9);

  return v9;
}

uint64_t sub_1C903E3E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E990, &qword_1C90C65B0);
    v2 = sub_1C906495C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1C9045C8C(a1, 1, &v4);
  return v4;
}

uint64_t sub_1C903E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  v9 = sub_1C9042D34(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C906A950;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  v11 = sub_1C906418C();

  v12 = [v9 localizedNameWithPreferredLocalizations_];

  v13 = sub_1C9063EEC();
  return v13;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.clearRemoteTools()()
{
  OUTLINED_FUNCTION_196();
  v55 = v1;
  v56 = v0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v51 = v2;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D38, &qword_1C90C6380);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192E8, &qword_1C909ED78);
  OUTLINED_FUNCTION_11();
  v53 = v19;
  v54 = v18;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  if (qword_1EDA69640 != -1)
  {
    OUTLINED_FUNCTION_4_29(&qword_1EDA69640);
  }

  v23 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v23, qword_1EDA6EAF0);
  v60 = v23;
  v61 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_10_0();
  v25 = *(v24 + 16);
  v63 = v25;
  v57 = v24 + 16;
  v25();
  v58[3] = MEMORY[0x1E69E6158];
  v58[4] = MEMORY[0x1E69A0130];
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  v50 = sub_1C90627EC();
  OUTLINED_FUNCTION_145_3(v50, MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_89_4();
  sub_1C9062D9C();
  sub_1C8D16D78(v58, &qword_1EC313248, &unk_1C906B540);
  v26 = __swift_destroy_boxed_opaque_existential_1(v59);
  sub_1C8D24BA0(v26, v27, v28);
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v62);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v30 = OUTLINED_FUNCTION_84_9(v29);
  *(v30 + 16) = xmmword_1C906A950;
  if (qword_1EDA69660 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1EDA69660);
  }

  OUTLINED_FUNCTION_10(v23, qword_1EDA6EB38);
  v31 = MEMORY[0x1E69A0038];
  *(v30 + 56) = v23;
  *(v30 + 64) = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
  (v63)(boxed_opaque_existential_1, &unk_1F48A86A0, v23);
  OUTLINED_FUNCTION_13_38(&qword_1EC31E8C0, &qword_1EC318D38, &qword_1C90C6380);
  sub_1C9062AEC();

  v33 = *(v7 + 8);
  v33(v11, v5);
  sub_1C9062C4C();
  v33(v14, v5);
  sub_1C9062C1C();
  v33(v17, v5);
  OUTLINED_FUNCTION_0_84();
  sub_1C8D28184(v34, v35, v36, v37);
  v39 = v54;
  v38 = v55;
  v40 = sub_1C906259C();
  (*(v53 + 8))(v22, v39);
  if (!v38)
  {
    type metadata accessor for ToolRecord(0);
    v58[0] = v40;
    if (qword_1EDA6B248 != -1)
    {
      OUTLINED_FUNCTION_32_2(&qword_1EDA6B248);
    }

    OUTLINED_FUNCTION_10(v23, qword_1EDA6EBE0);
    v60 = v23;
    v61 = MEMORY[0x1E69A0050];
    v41 = __swift_allocate_boxed_opaque_existential_1(v59);
    (v63)(v41, v22, v23);
    v62[3] = v50;
    OUTLINED_FUNCTION_144_3(MEMORY[0x1E699FE60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E8D8, &unk_1C90C6388);
    OUTLINED_FUNCTION_0_6();
    sub_1C8D28184(v42, v43, &unk_1C90C6388, v44);
    OUTLINED_FUNCTION_83_10();
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v59);

    OUTLINED_FUNCTION_1_81();
    sub_1C9049320(v45, v46, &unk_1C906B058);
    OUTLINED_FUNCTION_64_14();
    OUTLINED_FUNCTION_161_1();
    sub_1C90624DC();
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_1C9062C5C();
    OUTLINED_FUNCTION_296();
    v47 = OUTLINED_FUNCTION_112();
    v48(v47);
    ToolDatabase.Accessor.clearUnusedData()();
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C903EC88(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

void ToolDatabase.Accessor.actionIdsAttributed(to:from:)()
{
  OUTLINED_FUNCTION_196();
  v62 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  OUTLINED_FUNCTION_11();
  v56 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v53 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  OUTLINED_FUNCTION_11();
  v59 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v19);
  v20 = v3[1];
  v53[3] = *v3;
  v53[2] = v20;
  v53[1] = type metadata accessor for ToolRecord(0);
  if (qword_1EDA68E98 != -1)
  {
    swift_once();
  }

  v54 = v9;
  v57 = v1;
  v58 = v16;
  v60 = v11;
  __swift_project_value_buffer(v6, qword_1EDA6EA10);
  v65[0] = v5;
  if (qword_1EDA69668 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDA69668);
  }

  v21 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v21, qword_1EDA6EB50);
  v67 = v21;
  v68 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v66);
  OUTLINED_FUNCTION_10_0();
  v55 = *(v22 + 16);
  v55();
  v23 = sub_1C90627EC();
  OUTLINED_FUNCTION_145_3(v23, MEMORY[0x1E699FE60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315498, &qword_1C907D0D0);
  OUTLINED_FUNCTION_38_23();
  OUTLINED_FUNCTION_92_10();
  sub_1C8D28184(v24, v25, v26, v27);
  OUTLINED_FUNCTION_83_10();
  sub_1C90640CC();
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_1C8D28184(&qword_1EDA69380, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF48]);
  OUTLINED_FUNCTION_64_14();
  sub_1C906292C();
  __swift_destroy_boxed_opaque_existential_1(v69);
  OUTLINED_FUNCTION_1_81();
  sub_1C9049320(v28, v29, &unk_1C906B058);
  sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF30]);
  OUTLINED_FUNCTION_71_11();
  sub_1C906253C();
  OUTLINED_FUNCTION_296();
  v30 = OUTLINED_FUNCTION_278();
  v31(v30);
  if (qword_1EDA6B240 != -1)
  {
    OUTLINED_FUNCTION_33_2(&qword_1EDA6B240);
  }

  OUTLINED_FUNCTION_10(v21, qword_1EDA6EBC8);
  v67 = v21;
  v68 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v66);
  OUTLINED_FUNCTION_91_8();
  v32 = v55;
  v55();
  OUTLINED_FUNCTION_119_10();
  v63 = v34;
  v64 = v33;
  ActionProvider.rawValue.getter();
  v65[3] = MEMORY[0x1E69E6158];
  v65[4] = MEMORY[0x1E69A0130];
  v65[0] = v35;
  v65[1] = v36;
  v69[3] = v23;
  OUTLINED_FUNCTION_144_3(MEMORY[0x1E699FE60]);
  OUTLINED_FUNCTION_89_4();
  sub_1C9062D6C();
  sub_1C8D16D78(v65, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v66);
  OUTLINED_FUNCTION_28_10();
  sub_1C8D28184(v37, v38, v39, v40);
  OUTLINED_FUNCTION_64_14();
  v41 = v54;
  sub_1C906292C();
  v42 = *(v60 + 8);
  v42(&qword_1C90C63C0, v41);
  __swift_destroy_boxed_opaque_existential_1(v69);
  OUTLINED_FUNCTION_71_11();
  sub_1C9062C4C();
  v43 = OUTLINED_FUNCTION_288();
  (v42)(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v45 = OUTLINED_FUNCTION_84_9(v44);
  *(v45 + 16) = xmmword_1C906A950;
  if (qword_1EDA68E08 != -1)
  {
    OUTLINED_FUNCTION_43_3(&qword_1EDA68E08);
  }

  OUTLINED_FUNCTION_10(v21, qword_1EDA6E8D8);
  v46 = MEMORY[0x1E69A0038];
  *(v45 + 56) = v21;
  *(v45 + 64) = v46;
  __swift_allocate_boxed_opaque_existential_1((v45 + 32));
  OUTLINED_FUNCTION_91_8();
  v32();
  OUTLINED_FUNCTION_50_9();
  sub_1C9062C3C();

  v42(&qword_1C90C63C0, v41);
  OUTLINED_FUNCTION_0_84();
  sub_1C8D28184(v47, v48, v49, v50);
  sub_1C906258C();
  OUTLINED_FUNCTION_296();
  v51 = OUTLINED_FUNCTION_200_0();
  v52(v51);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.clearFlowTools()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_146();
  type metadata accessor for ToolRecord(0);
  if (qword_1EDA68DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9062E6C();
  __swift_project_value_buffer(v2, qword_1EDA6E890);
  v9[3] = v2;
  v9[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 16))();
  v8[3] = MEMORY[0x1E69E6158];
  v8[4] = MEMORY[0x1E69A0130];
  v8[0] = 0x6C6F6F54776F6C66;
  v8[1] = 0xE800000000000000;
  v10[3] = sub_1C90627EC();
  v10[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1C9062D6C();
  sub_1C8D16D78(v8, &qword_1EC313248, &unk_1C906B540);
  __swift_destroy_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_1_81();
  sub_1C9049320(v4, v5, &unk_1C906B058);
  sub_1C90624DC();
  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_105_6();
  sub_1C9062C5C();
  v6 = OUTLINED_FUNCTION_278();
  v7(v6);
  if (!v0)
  {
    ToolDatabase.Accessor.clearUnusedData()();
  }
}

void ToolDatabase.Accessor.launchServicesSnapshot.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E928, &qword_1C90C63C8);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v51 - v27;
  v29 = sub_1C90635DC();
  OUTLINED_FUNCTION_11();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_233_0();
  sub_1C9035F38(v28);
  if (!v20)
  {
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
    {
      sub_1C8D16D78(v28, &qword_1EC31E928, &qword_1C90C63C8);
      v34 = 1;
    }

    else
    {
      v36 = (*(v31 + 32))(v21, v28, v29);
      v39 = sub_1C9043024(v36, v37, v38);
      sub_1C8E7F154(v39, v40, v41);
      sub_1C906289C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E930, &qword_1C90C63D0);
      sub_1C906362C();
      OUTLINED_FUNCTION_37_24();
      sub_1C8D28184(v42, &qword_1EC31E930, &qword_1C90C63D0, v43);
      v44 = sub_1C9062E9C();

      (*(v31 + 16))(v22, v21, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E938, &qword_1C90C63D8);

      v51[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E940, &qword_1C90C63E0);
      OUTLINED_FUNCTION_36_23();
      sub_1C8D28184(v45, &qword_1EC31E938, &qword_1C90C63D8, v46);
      OUTLINED_FUNCTION_35_27();
      sub_1C8D28184(v47, &qword_1EC31E940, &qword_1C90C63E0, v48);
      v51[1] = v44;
      sub_1C90643FC();
      sub_1C906364C();

      v49 = OUTLINED_FUNCTION_125();
      v50(v49);
      v34 = 0;
    }

    v35 = sub_1C906366C();
    __swift_storeEnumTagSinglePayload(v24, v34, 1, v35);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C903F97C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];

  v6 = v5;
  return sub_1C906360C();
}

void ToolDatabase.Accessor.linkSnapshot.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v22 = v21;
  v26 = sub_1C9043078(v23, v24, v25);
  sub_1C8DC3EF4(v26, v27, v28);
  sub_1C906289C();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E948, &qword_1C90C63E8);
    sub_1C90633CC();
    OUTLINED_FUNCTION_37_24();
    sub_1C8D28184(v29, &qword_1EC31E948, &qword_1C90C63E8, v30);
    sub_1C9062E9C();

    v31 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E958, &qword_1C90C63F8);
    OUTLINED_FUNCTION_36_23();
    sub_1C8D28184(v33, &qword_1EC31E950, &qword_1C90C63F0, v34);
    OUTLINED_FUNCTION_35_27();
    sub_1C8D28184(v35, &qword_1EC31E958, &qword_1C90C63F8, v36);
    sub_1C90643FC();
    sub_1C90633DC();

    v37 = sub_1C90633EC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v37);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C903FBA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  v6 = a1[3];

  sub_1C8CE9144(v5, v6);
  return sub_1C906339C();
}

void ToolDatabase.Accessor.indexedLocaleIdentifiers.getter()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  OUTLINED_FUNCTION_11();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_233_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v5 = OUTLINED_FUNCTION_84_9(v4);
  *(v5 + 16) = xmmword_1C906A950;
  if (qword_1EDA6C790 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9062E6C();
  __swift_project_value_buffer(v6, qword_1EDA6EBF8);
  v7 = MEMORY[0x1E69A0038];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  OUTLINED_FUNCTION_10_0();
  v9 = (*(v8 + 16))();
  sub_1C8D24D14(v9, v10, v11);
  MEMORY[0x1CCA7FF80](v5);

  sub_1C9062C4C();
  v12 = *(v1 + 8);
  v13 = OUTLINED_FUNCTION_49();
  v12(v13);
  OUTLINED_FUNCTION_0_84();
  sub_1C8D28184(v14, v15, v16, v17);
  OUTLINED_FUNCTION_105_6();
  sub_1C906259C();
  v18 = OUTLINED_FUNCTION_278();
  v12(v18);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C903FED4(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v1 = &unk_1EC31E9C8;
    v3 = OUTLINED_FUNCTION_94();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v5 = OUTLINED_FUNCTION_43_22(&qword_1EC31E9D0);
    OUTLINED_FUNCTION_113_9(v5);
    OUTLINED_FUNCTION_100_10();
    sub_1C906478C();

    OUTLINED_FUNCTION_58_16();

    v6 = OUTLINED_FUNCTION_288();
    MEMORY[0x1CCA81A90](v6);

    MEMORY[0x1CCA81A90](10272, 0xE200000000000000);
    if (qword_1EC3120C8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_1C9062E6C();
  __swift_project_value_buffer(v7, qword_1EC390F80);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_116_11();

  OUTLINED_FUNCTION_74_8();
  if (qword_1EC3120D0 != -1)
  {
    v8 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v8, qword_1EC390F98);
  OUTLINED_FUNCTION_116_11();

  OUTLINED_FUNCTION_74_8();
  if (qword_1EC3120D8 != -1)
  {
    v9 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v9, qword_1EC390FB0);
  OUTLINED_FUNCTION_116_11();

  OUTLINED_FUNCTION_82_8();
  MEMORY[0x1CCA81A90](v2, v1);

  v10 = MEMORY[0x1CCA81A90](0x494E525554455220, 0xEB0000000020474ELL);
  if (qword_1EC3120C0 != -1)
  {
    v10 = swift_once();
  }

  v11 = OUTLINED_FUNCTION_6_23(v10, qword_1EC390F68);
  MEMORY[0x1CCA81A90](v11);

  return v13;
}

uint64_t sub_1C9040134(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a1;
    v1 = &unk_1EC31E9C8;
    v3 = OUTLINED_FUNCTION_94();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v5 = OUTLINED_FUNCTION_43_22(&qword_1EC31E9D0);
    OUTLINED_FUNCTION_113_9(v5);
    OUTLINED_FUNCTION_100_10();
    sub_1C906478C();

    OUTLINED_FUNCTION_58_16();

    v6 = OUTLINED_FUNCTION_288();
    MEMORY[0x1CCA81A90](v6);

    MEMORY[0x1CCA81A90](10272, 0xE200000000000000);
    if (qword_1EC311640 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_1C9062E6C();
  __swift_project_value_buffer(v7, qword_1EC390F08);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_116_11();

  OUTLINED_FUNCTION_74_8();
  if (qword_1EC311650 != -1)
  {
    v8 = swift_once();
  }

  OUTLINED_FUNCTION_6_23(v8, qword_1EC390F38);
  OUTLINED_FUNCTION_116_11();

  OUTLINED_FUNCTION_74_8();
  if (qword_1EC311648 != -1)
  {
    v9 = swift_once();
  }

  v10 = OUTLINED_FUNCTION_6_23(v9, qword_1EC390F20);
  MEMORY[0x1CCA81A90](v10);

  OUTLINED_FUNCTION_82_8();
  MEMORY[0x1CCA81A90](v2, v1);

  return v12;
}

uint64_t sub_1C9040328(uint64_t a1)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C9040370(uint64_t a1)
{
  v2 = *v1;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.Accessor.addTrigger(id:flags:requirements:outputTypeInstance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = sub_1C9043120(a1, a2, a3);

  OUTLINED_FUNCTION_59_17();
  result = sub_1C9062D2C();
  if (v5)
  {

    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addTriggerLocalization(triggerId:locale:name:outputResultName:descriptionSummary:)(Swift::Int64 triggerId, Swift::String locale, Swift::String name, Swift::String_optional outputResultName, Swift::String_optional descriptionSummary)
{
  OUTLINED_FUNCTION_40_24();
  sub_1C8E24238(v5, v6, v7);

  OUTLINED_FUNCTION_59_17();
  v8 = sub_1C9062B3C();
  OUTLINED_FUNCTION_69_12(v8, v9, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8]);
  sub_1C8DFF144(v16);
}

uint64_t ToolDatabase.Accessor.addTriggerParameter(triggerId:key:typeId:typeInstance:sortOrder:relationships:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = *a9;
  *__src = *a6;
  v21 = a2;
  v22 = a3;
  v23 = a7;
  v24 = a8;
  v25 = v9;
  v26 = a4;
  v27 = a5;
  v28 = a1;
  sub_1C8D26658(a1, a2, a3);

  OUTLINED_FUNCTION_59_17();
  v10 = sub_1C9062B3C();
  OUTLINED_FUNCTION_69_12(v10, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8]);
  return sub_1C8D2699C(v19);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.Accessor.addTriggerParameterLocalization(triggerId:key:locale:name:description:)(Swift::Int64 triggerId, Swift::String key, Swift::String locale, Swift::String name, Swift::String_optional description)
{
  OUTLINED_FUNCTION_40_24();
  sub_1C9043174(v5, v6, v7);

  OUTLINED_FUNCTION_59_17();
  v8 = sub_1C9062B3C();
  OUTLINED_FUNCTION_69_12(v8, v9, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8]);
  sub_1C90431C8(v16);
}

uint64_t sub_1C90406C0(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v12[0] = *a2;

  v9 = String.init(typeIdentifier:)(v12, v5, v6, v7, v8);
  v12[0] = a1;
  v12[1] = v9;
  v12[2] = v10;
  a3();
  OUTLINED_FUNCTION_49();
  sub_1C9062B3C();
}

uint64_t sub_1C90407A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(uint64_t))
{
  a6();

  v9 = OUTLINED_FUNCTION_200_0();
  a8(v9);
}

uint64_t ToolDatabase.Accessor.indexLaunchServicesState(_:)()
{
  sub_1C906361C();
  v3 = sub_1C90635FC();
  sub_1C8E7F324(v3, v0, v1);
  sub_1C9062B2C();
}

uint64_t ToolDatabase.Accessor.indexLinkState(_:)()
{
  sub_1C90633AC();
  v5 = sub_1C90633BC();
  sub_1C8DC4080(v5, v0, v1);
  sub_1C9062B2C();

  v2 = OUTLINED_FUNCTION_93();
  return sub_1C8CE7B78(v2, v3);
}

void ToolDatabase.Accessor.allTypeDefinitions(for:device:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v225 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v221 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v223 = v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_216();
  v224 = v10;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_147();
  v222 = v12;
  OUTLINED_FUNCTION_111();
  v13 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v226 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v208 - v17;
  v19 = *v3;
  v20 = v3[1];
  sub_1C9041AF8(v5);
  if (v0)
  {
LABEL_35:
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_198();
    return;
  }

  v211 = v5;
  v218 = v18;
  v219 = v13;
  v214 = v1;
  v215 = v20;
  v212 = v19;
  v220 = v21;
  sub_1C8F174C4(v21);
  v23 = v22;
  v24 = 0;
  if (qword_1EC311368 != -1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v25 = qword_1EC316148;
    OUTLINED_FUNCTION_2();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v27 = qword_1EC311370;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_1EC316150;
    v29 = byte_1EC316158;
    v238[0] = 0;
    LOBYTE(v237[0]) = byte_1EC316158;
    v30 = swift_allocObject();
    j__swift_bridgeObjectRetain_1(v28, v29, v31, v32, v33);
    *(v30 + 16) = sub_1C8D2BCE0(v23);
    v239[0] = v30 | 0x2000000000000000;
    v239[1] = 0xA000000000000000;
    v239[2] = v25;
    v239[3] = 0xA000000000000000;
    v239[4] = v26;
    v239[5] = MEMORY[0x1E69E7CD0];
    LOBYTE(v239[6]) = 0;
    v239[7] = v28;
    LOBYTE(v239[8]) = v29;
    v239[9] = OUTLINED_FUNCTION_2_3;
    v239[10] = 0;
    memcpy(v238, v239, 0x58uLL);
    v237[0] = 0;
    LOBYTE(v237[1]) = 1;
    v34 = v218;
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    OUTLINED_FUNCTION_54_19();
    ToolDatabase.Accessor.types(matching:scope:locale:)();
    v217 = v24;
    if (v24)
    {
      (*(v226 + 8))(v34, v219);

      sub_1C8D90D00(v239);
      goto LABEL_35;
    }

    v36 = v35;
    v37 = v226 + 8;
    v38 = *(v226 + 8);
    (v38)(v34, v219);
    v39 = *(v36 + 16);
    v226 = v37;
    v213 = v38;
    if (v39)
    {
      v236[0] = MEMORY[0x1E69E7CC0];
      sub_1C8D0A0F4(0, v39, 0);
      v40 = v236[0];
      v41 = v39 - 1;
      for (i = 32; ; i += 104)
      {
        memcpy(v238, (v36 + i), sizeof(v238));
        v43 = *v238;
        switch(v238[96])
        {
          case 1:
          case 2:
          case 3:
            goto LABEL_13;
          case 4:
            v45 = *&v238[8];
            OUTLINED_FUNCTION_2();
            v46 = swift_allocObject();
            *(v46 + 16) = v43;
            *(v46 + 24) = v45;
            v43 = v46 | 0x8000000000000000;
            v47 = OUTLINED_FUNCTION_54_19();
            sub_1C8D90D54(v47, v48);

            break;
          case 5:
            v43 = *&v238[32];
LABEL_13:
            v49 = OUTLINED_FUNCTION_54_19();
            sub_1C8D90D54(v49, v50);

            break;
          default:
            v44 = swift_allocObject();
            *(v44 + 16) = v43;
            v43 = v44;
            break;
        }

        OUTLINED_FUNCTION_147_3(v237);
        v236[0] = v40;
        v52 = *(v40 + 16);
        v51 = *(v40 + 24);
        if (v52 >= v51 >> 1)
        {
          v54 = OUTLINED_FUNCTION_176(v51);
          sub_1C8D0A0F4(v54, v52 + 1, 1);
          v40 = v236[0];
        }

        *(v40 + 16) = v52 + 1;
        v53 = v40 + 112 * v52;
        *(v53 + 32) = v43;
        memcpy((v53 + 40), v237, 0x61uLL);
        if (!v41)
        {
          break;
        }

        --v41;
      }
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v216 = sub_1C903E3E0(v40);
    v55 = v220 + 56;
    OUTLINED_FUNCTION_3_1();
    v58 = v57 & v56;
    v60 = (v59 + 63) >> 6;

    v63 = 0;
    v64 = MEMORY[0x1E69E7CC0];
    v209 = v55;
    v65 = v221;
    while (v58)
    {
LABEL_26:
      v67 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v68 = *(*(v61 + 48) + ((v63 << 9) | (8 * v67)));
      if (v68 >> 61 == 2)
      {
        v69 = v68 & 0x1FFFFFFFFFFFFFFFLL;
        v71 = *(v69 + 16);
        v70 = *(v69 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_20();
          sub_1C8D00CA4();
          v64 = v75;
        }

        v73 = *(v64 + 16);
        v72 = *(v64 + 24);
        v61 = v220;
        v55 = v209;
        if (v73 >= v72 >> 1)
        {
          OUTLINED_FUNCTION_9_1(v72);
          sub_1C8D00CA4();
          v55 = v209;
          v64 = v76;
          v61 = v220;
        }

        *(v64 + 16) = v73 + 1;
        v74 = v64 + 16 * v73;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
        v65 = v221;
      }
    }

    while (1)
    {
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_89:
        sub_1C8D90D54(v61, v62);

LABEL_90:

        sub_1C90443D4(v204, v205, v206);
        swift_allocError();
        *v207 = v58;
        *(v207 + 8) = v64;
        *(v207 + 16) = 0;
        swift_willThrow();

        sub_1C8D90DB0(v238);

        sub_1C8D90D00(v239);

        goto LABEL_34;
      }

      if (v66 >= v60)
      {
        break;
      }

      v58 = *(v55 + 8 * v66);
      ++v63;
      if (v58)
      {
        v63 = v66;
        goto LABEL_26;
      }
    }

    v77 = sub_1C8D2BCE0(v64);
    OUTLINED_FUNCTION_2();
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    *(v78 + 24) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = v77;
    *v238 = 0xA000000000000000;
    *&v238[8] = v79 | 0x2000000000000000;
    *&v238[16] = vdupq_n_s64(0xA000000000000000);
    *&v238[32] = v78;
    *&v238[40] = 0xA000000000000000;
    v237[0] = 0;
    LOBYTE(v237[1]) = 1;
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    OUTLINED_FUNCTION_54_19();
    v80 = v217;
    ToolDatabase.Accessor.containers(matching:scope:locale:)();
    v23 = v80;
    if (v80)
    {
      v82 = OUTLINED_FUNCTION_77_3();
      v213(v82);
      sub_1C8D90D00(v239);

      goto LABEL_34;
    }

    v83 = v81;
    v208[2] = v79;
    v84 = OUTLINED_FUNCTION_77_3();
    v213(v84);
    v85 = sub_1C9063E2C();
    v87 = *(v83 + 16);
    v217 = 0;
    v208[1] = v78;
    if (v87)
    {
      break;
    }

LABEL_62:

    v24 = 0;
    v23 = v220;
    v159 = 1 << *(v220 + 32);
    v160 = -1;
    if (v159 < 64)
    {
      v160 = ~(-1 << v159);
    }

    v161 = v160 & *(v220 + 56);
    v162 = (v159 + 63) >> 6;
    v163 = MEMORY[0x1E69E7CC0];
    v164 = v209;
    v214 = v162;
    if (v161)
    {
LABEL_69:
      while (1)
      {
        v166 = *(v23[6] + ((v24 << 9) | (8 * __clz(__rbit64(v161)))));
        v167 = *(v216 + 16);

        if (!v167)
        {
          break;
        }

        v168 = sub_1C8D59C84();
        if ((v169 & 1) == 0)
        {
          break;
        }

        v161 &= v161 - 1;
        memcpy(v238, (*(v216 + 56) + 104 * v168), sizeof(v238));
        v170 = *v238;
        v226 = v166;
        switch(v238[96])
        {
          case 1:
          case 2:
          case 3:
            goto LABEL_74;
          case 4:

            goto LABEL_76;
          case 5:
            v170 = *&v238[32];
LABEL_74:
            if (v170 >> 61 == 2)
            {
              v58 = *((v170 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v64 = *((v170 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v218 = v170 & 0x1FFFFFFFFFFFFFFFLL;
              v61 = OUTLINED_FUNCTION_54_19();
              if (!v183)
              {
                goto LABEL_89;
              }

              sub_1C8D90D54(v61, v62);

              v184 = sub_1C8CAE064(v58, v64);
              if ((v185 & 1) == 0)
              {
                goto LABEL_90;
              }

              v186 = v184;

              OUTLINED_FUNCTION_132_5();
              v189 = v187 + v186 * v188;
              v190 = *(v189 + 8);
              v225 = *v189;
              v180 = *(v189 + 24);
              v241 = *(v189 + 16);
              v177 = *(v189 + 32);
              v176 = *(v189 + 40);
              v178 = *(v189 + 48);
              LODWORD(v223) = *(v189 + 56);
              v191 = *(v189 + 64);
              v221 = *(v189 + 72);
              v222 = v191;
              LODWORD(v219) = *(v189 + 96);

              v224 = v190;
            }

            else
            {
              v171 = OUTLINED_FUNCTION_54_19();
              sub_1C8D90D54(v171, v172);
LABEL_76:
              v173 = *(v211 + 200);
              v225 = *(v211 + 192);
              v218 = v163;
              v175 = *(v211 + 208);
              v174 = *(v211 + 216);
              v177 = *(v211 + 224);
              v176 = *(v211 + 232);
              v178 = *(v211 + 240);
              LODWORD(v223) = *(v211 + 248);
              v179 = *(v211 + 256);
              v221 = *(v211 + 264);
              v222 = v179;
              LODWORD(v219) = *(v211 + 288);

              v224 = v173;

              v241 = v175;
              v180 = v174;
              v163 = v218;
            }

            OUTLINED_FUNCTION_147_3(v235);
            v234[0] = v225;
            v234[1] = v224;
            v234[2] = v241;
            v234[3] = v180;
            v234[4] = v177;
            v234[5] = v176;
            v234[6] = v178;
            LOBYTE(v234[7]) = v223;
            v234[8] = v222;
            v234[9] = v221;
            v234[10] = v212;
            v234[11] = v215;
            LOBYTE(v234[12]) = v219;
            v233 = 0;
            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
            v227 = 0u;
            v228 = 0u;
            TypeDefinition.asSourced(from:attribution:)(v234, v237);
            memcpy(v236, v234, 0x61uLL);
            sub_1C8CC15FC(v236);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v192 = OUTLINED_FUNCTION_7_20();
              sub_1C8D01E24(v192, v193, v194, v163);
              v163 = v195;
            }

            v182 = *(v163 + 16);
            v181 = *(v163 + 24);
            if (v182 >= v181 >> 1)
            {
              v196 = OUTLINED_FUNCTION_9_1(v181);
              sub_1C8D01E24(v196, v197, v198, v163);
              v163 = v199;
            }

            sub_1C8D90DB0(v238);

            *(v163 + 16) = v182 + 1;
            memcpy((v163 + 104 * v182 + 32), v237, 0x61uLL);
            v23 = v220;
            v164 = v209;
            v162 = v214;
            if (!v161)
            {
              goto LABEL_65;
            }

            break;
          default:
            goto LABEL_76;
        }
      }

      sub_1C90443D4(v200, v201, v202);
      swift_allocError();
      *v203 = v166;
      *(v203 + 8) = 0;
      *(v203 + 16) = 1;
      swift_willThrow();

      sub_1C8D90D00(v239);

LABEL_34:

      goto LABEL_35;
    }

LABEL_65:
    while (1)
    {
      v165 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v165 >= v162)
      {

        sub_1C8D90D00(v239);

        goto LABEL_35;
      }

      v161 = *(v164 + 8 * v165);
      ++v24;
      if (v161)
      {
        v24 = v165;
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
  }

  v88 = 0;
  v218 = *MEMORY[0x1E69E10F0];
  v219 = (v65 + 8);
  v226 = v87 - 1;
  v89 = 32;
  *&v86 = 136315138;
  v210 = v86;
  v24 = v83;
  v221 = v83;
  while (1)
  {
    if (v88 >= v87)
    {
      goto LABEL_92;
    }

    memcpy(v238, (v24 + v89), sizeof(v238));
    v90 = *&v238[24];
    v91 = *&v238[32];
    v240 = v89;
    v92 = OUTLINED_FUNCTION_54_19();
    if (!v94)
    {
      break;
    }

    sub_1C8CC1340(v92, v93);
    v95 = OUTLINED_FUNCTION_77_3();
    sub_1C8CAE064(v95, v96);
    if ((v97 & 1) == 0)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_132_5();
    memcpy(v237, (v99 + v98 * v100), 0x61uLL);
    sub_1C8CC1340(v237, v236);
    v101 = v222;
    sub_1C906371C();
    sub_1C8CC1340(v238, v236);
    v102 = sub_1C9063D1C();
    v103 = sub_1C906444C();
    sub_1C8CC15FC(v238);
    v104 = os_log_type_enabled(v102, v103);
    v214 = v88;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v106 = v90;
      v107 = swift_slowAlloc();
      v236[0] = v107;
      *v105 = v210;

      v111 = sub_1C8CACE04(v106, v91, v236, v108, v109, v110);

      *(v105 + 4) = v111;
      _os_log_impl(&dword_1C8C9B000, v102, v103, "Warning: Duplicate container ID '%s' found. Keeping first occurrence.", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v107);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    v112 = *v219;
    v113 = v225;
    (*v219)(v101, v225);
    v114 = v224;
    sub_1C906371C();
    sub_1C8CC1340(v237, v236);
    v115 = sub_1C9063D1C();
    v116 = sub_1C906446C();
    sub_1C8CC15FC(v237);
    v117 = os_log_type_enabled(v115, v116);
    v24 = v221;
    v213 = v112;
    if (v117)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = OUTLINED_FUNCTION_111_7(v119);
      memcpy(v120, v237, 0x61uLL);
      v121 = ContainerDefinition.debugDescription.getter();
      v123 = v122;
      sub_1C8CC15FC(v237);
      v127 = sub_1C8CACE04(v121, v123, v235, v124, v125, v126);

      *(v118 + 4) = v127;
      _os_log_impl(&dword_1C8C9B000, v115, v116, "  Existing: %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      OUTLINED_FUNCTION_25_0();
      v112 = v213;
      v113 = v225;
      OUTLINED_FUNCTION_25_0();

      v128 = v224;
    }

    else
    {
      sub_1C8CC15FC(v237);

      v128 = v114;
    }

    v112(v128, v113);
    v23 = v223;
    sub_1C906371C();
    sub_1C8CC1340(v238, v236);
    v147 = sub_1C9063D1C();
    v148 = sub_1C906446C();
    sub_1C8CC15FC(v238);
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v151 = OUTLINED_FUNCTION_111_7(v150);
      OUTLINED_FUNCTION_147_3(v151);
      v152 = ContainerDefinition.debugDescription.getter();
      v154 = v153;
      sub_1C8CC15FC(v238);
      v23 = sub_1C8CACE04(v152, v154, v235, v155, v156, v157);

      *(v149 + 4) = v23;
      _os_log_impl(&dword_1C8C9B000, v147, v148, "  Duplicate: %s", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();

      (v213)(v223, v225);
    }

    else
    {
      sub_1C8CC15FC(v238);

      v158 = OUTLINED_FUNCTION_136();
      (v112)(v158);
    }

    v88 = v214;
    v89 = v240;
LABEL_60:
    if (v226 == v88)
    {
      goto LABEL_62;
    }

    v87 = *(v24 + 16);
    v89 += 104;
    ++v88;
  }

  sub_1C8CC1340(v92, v93);
LABEL_46:
  v129 = OUTLINED_FUNCTION_54_19();
  sub_1C8CC1340(v129, v130);
  swift_isUniquelyReferenced_nonNull_native();
  v236[0] = v85;
  v24 = v90;
  v131 = OUTLINED_FUNCTION_77_3();
  v23 = v85;
  v133 = sub_1C8CAE064(v131, v132);
  if (__OFADD__(*(v85 + 16), (v134 & 1) == 0))
  {
    goto LABEL_93;
  }

  v135 = v133;
  v136 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145F8, &qword_1C90C6400);
  v23 = v236;
  if (sub_1C90648EC())
  {
    v23 = v236[0];
    v137 = sub_1C8CAE064(v24, v91);
    if ((v136 & 1) != (v138 & 1))
    {
      goto LABEL_96;
    }

    v135 = v137;
  }

  if (v136)
  {
    v85 = v236[0];
    OUTLINED_FUNCTION_132_5();
    v23 = (v139 + v135 * v140);
    memcpy(v237, v23, 0x61uLL);
    memcpy(v23, v238, 0x61uLL);
    sub_1C8CC15FC(v237);
    sub_1C8CC15FC(v238);
LABEL_54:
    v24 = v221;
    goto LABEL_60;
  }

  v85 = v236[0];
  *(v236[0] + 8 * (v135 >> 6) + 64) |= 1 << v135;
  v141 = (*(v85 + 48) + 16 * v135);
  *v141 = v24;
  v141[1] = v91;
  OUTLINED_FUNCTION_132_5();
  OUTLINED_FUNCTION_147_3((v142 + v135 * v143));

  sub_1C8CC15FC(v238);
  v144 = *(v85 + 16);
  v145 = __OFADD__(v144, 1);
  v146 = v144 + 1;
  if (!v145)
  {
    *(v85 + 16) = v146;
    goto LABEL_54;
  }

  __break(1u);
LABEL_96:
  sub_1C9064CBC();
  __break(1u);
}

void sub_1C9041AF8(uint64_t a1)
{
  TypeInstance.typeIdentifiers.getter();
  v3 = v2;
  v4 = 0;
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  v8 = v5 + 88;
  while (v7 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    ++v4;
    v8 += 136;
    TypeInstance.typeIdentifiers.getter();
    sub_1C8D375B4(v9);
  }

  v10 = sub_1C9041C3C(v17, v3);
  v11 = 0;
  v12 = *(a1 + 48);
  v18 = v6;
  v13 = *(v12 + 16);
  v14 = v12 + 88;
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      goto LABEL_11;
    }

    ++v11;
    v14 += 136;
    TypeInstance.typeIdentifiers.getter();
    sub_1C8D375B4(v15);
  }

  v16 = sub_1C9041C3C(v18, v10);
  sub_1C9041CDC(v16);
}

void sub_1C9041CDC(uint64_t a1)
{
  v98 = sub_1C90620BC();
  MEMORY[0x1EEE9AC00](v98);
  v93 = MEMORY[0x1E69E7CD0];
  v119 = MEMORY[0x1E69E7CD0];
  v118 = a1;
  if (!*(a1 + 16))
  {
    return;
  }

  v95 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = (v2 + 8);

  while (1)
  {
    v4 = sub_1C8D39D38(a1);
    v6 = v5;
    v8 = v7;
    sub_1C90491B4(v4, v5, v115);
    sub_1C8CAF698(v4, v6, v8 & 1);
    v9 = v115[0];
    v10 = v119;
    v11 = *(v119 + 16);
    v103 = v115[0];
    v104 = v115[0] >> 61;
    if (!v11)
    {
      break;
    }

    v113[0] = v115[0];
    sub_1C9064D7C();
    TypeIdentifier.hash(into:)(v115);
    v12 = sub_1C9064DBC();
    v13 = -1 << *(v10 + 32);
    v14 = v12 & ~v13;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      break;
    }

    v15 = ~v13;
    v16 = v9 & 0xE000000000000000;
    v17 = (v9 & 0x1FFFFFFFFFFFFFFFLL);
    v101 = (v9 & 0x1FFFFFFFFFFFFFFFLL);
    v102 = v9 & 0xE000000000000000;
    while (2)
    {
      v18 = *(*(v10 + 48) + 8 * v14);
      switch(v18 >> 61)
      {
        case 1uLL:
          if (v16 != 0x2000000000000000)
          {
            goto LABEL_182;
          }

          v44 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45 = v17[2];
          switch(v44)
          {
            case 0uLL:
              if (v45)
              {
                goto LABEL_107;
              }

              goto LABEL_223;
            case 1uLL:
              if (v45 == 1)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 2uLL:
              if (v45 == 2)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 3uLL:
              if (v45 == 3)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 4uLL:
              if (v45 == 4)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 5uLL:
              if (v45 == 5)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 6uLL:
              if (v45 == 6)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 7uLL:
              if (v45 == 7)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 8uLL:
              if (v45 == 8)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 9uLL:
              if (v45 == 9)
              {
                goto LABEL_223;
              }

              goto LABEL_107;
            case 0xAuLL:
              if (v45 != 10)
              {
                goto LABEL_107;
              }

LABEL_223:

              sub_1C8D3F130(v44);
              sub_1C8D3F130(v44);
              goto LABEL_224;
            case 0xBuLL:
              if (v45 != 11)
              {
                goto LABEL_107;
              }

              sub_1C8D3F130(0xBuLL);
              v88 = 11;
              goto LABEL_225;
            case 0xCuLL:
              if (v45 != 12)
              {
                goto LABEL_107;
              }

              sub_1C8D3F130(0xCuLL);
              v88 = 12;
              goto LABEL_225;
            case 0xDuLL:
              if (v45 != 13)
              {
                goto LABEL_107;
              }

              sub_1C8D3F130(0xDuLL);
              v88 = 13;
              goto LABEL_225;
            case 0xEuLL:
              if (v45 != 14)
              {
                goto LABEL_107;
              }

              sub_1C8D3F130(0xEuLL);
              v88 = 14;
              goto LABEL_225;
            case 0xFuLL:
              if (v45 != 15)
              {
                goto LABEL_107;
              }

              sub_1C8D3F130(0xFuLL);
              v88 = 15;
LABEL_225:
              sub_1C8D3F130(v88);

              goto LABEL_216;
            default:
              if (v45 >= 0x10)
              {
                v47 = *(v45 + 16);
                v115[0] = *(v44 + 16);
                v113[0] = v47;

                sub_1C8D3F120(v45);

                sub_1C8D3F120(v45);
                sub_1C8D3F120(v44);
                LODWORD(v99) = static TypeIdentifier.== infix(_:_:)(v115, v113);
                sub_1C8D3F130(v44);
                sub_1C8D3F130(v45);

                sub_1C8D3F130(v45);
                if (v99)
                {
                  goto LABEL_224;
                }
              }

              else
              {
LABEL_107:
                sub_1C8D3F120(v17[2]);
                sub_1C8D3F120(v44);

                sub_1C8D3F130(v44);
                sub_1C8D3F130(v45);
              }

              break;
          }

          goto LABEL_109;
        case 2uLL:
          if (v16 != 0x4000000000000000)
          {
            goto LABEL_182;
          }

          v22 = v18 & 0x1FFFFFFFFFFFFFFFLL;
          v23 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v24 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v25 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v26 = *(v22 + 40);
          v27 = v17[2];
          v28 = v17[3];
          v29 = v17;
          v30 = v17[4];
          v31 = v29[5];
          v32 = v23 == v27 && v24 == v28;
          if (!v32 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_29;
          }

          v33 = v25 == v30 && v26 == v31;
          if (!v33 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_216;
        case 3uLL:
          v34 = v18 & 0x1FFFFFFFFFFFFFFFLL;
          memcpy(v116, ((v18 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
          memcpy(__dst, ((v18 & 0x1FFFFFFFFFFFFFFFLL) + 120), 0x61uLL);
          if (v16 != 0x6000000000000000)
          {
            goto LABEL_182;
          }

          v35 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
          v99 = *(v34 + 232);
          memcpy(v115, v17 + 2, sizeof(v115));
          v36 = v116[0] == v115[0] && v116[1] == v115[1];
          if (!v36 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_182;
          }

          v37 = *(v116[2] + 16);
          if (v37 != *(v115[2] + 16))
          {
            goto LABEL_181;
          }

          v94 = v35;
          if (v37)
          {
            v38 = v116[2] == v115[2];
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            goto LABEL_49;
          }

          v39 = (v116[2] + 40);
          v40 = (v115[2] + 40);
          do
          {
            if (!v37)
            {
              goto LABEL_231;
            }

            v41 = *(v39 - 1) == *(v40 - 1) && *v39 == *v40;
            if (!v41 && (sub_1C9064C2C() & 1) == 0)
            {
LABEL_29:
              v17 = v101;
              v16 = v102;
              goto LABEL_182;
            }

            v39 += 2;
            v40 += 2;
            --v37;
          }

          while (v37);
LABEL_49:
          v42 = v116[3] == v115[3] && v116[4] == v115[4];
          v17 = v101;
          v16 = v102;
          if (!v42 && (sub_1C9064C2C() & 1) == 0)
          {
            goto LABEL_182;
          }

          if (v116[6])
          {
            if (!v115[6])
            {
              goto LABEL_182;
            }

            v43 = v116[5] == v115[5] && v116[6] == v115[6];
            if (!v43 && (sub_1C9064C2C() & 1) == 0)
            {
              goto LABEL_182;
            }
          }

          else if (v115[6])
          {
            goto LABEL_182;
          }

          if (LOBYTE(v116[7]) != LOBYTE(v115[7]))
          {
            goto LABEL_182;
          }

          if (v116[9])
          {
            if (!v115[9])
            {
              goto LABEL_182;
            }

            v46 = v116[8] == v115[8] && v116[9] == v115[9];
            if (!v46 && (sub_1C9064C2C() & 1) == 0)
            {
              goto LABEL_182;
            }
          }

          else if (v115[9])
          {
            goto LABEL_182;
          }

          if (v116[11])
          {
            if (!v115[11])
            {

LABEL_180:

LABEL_181:
              v17 = v101;
              goto LABEL_182;
            }

            if (v116[10] == v115[10] && v116[11] == v115[11])
            {
              swift_retain_n();

              sub_1C8D3EFB8(v115, v113);
              sub_1C8CC1340(v116, v113);
              sub_1C8CC1340(v115, v113);
            }

            else
            {
              v49 = sub_1C9064C2C();
              swift_retain_n();

              sub_1C8D3EFB8(v115, v113);
              sub_1C8CC1340(v116, v113);
              sub_1C8CC1340(v115, v113);
              if ((v49 & 1) == 0)
              {
                sub_1C8CC15FC(v115);
                sub_1C8CC15FC(v116);
LABEL_190:

                goto LABEL_195;
              }
            }
          }

          else
          {
            if (v115[11])
            {

              goto LABEL_180;
            }

            swift_retain_n();

            sub_1C8D3EFB8(v115, v113);
            sub_1C8CC1340(v116, v113);
            sub_1C8CC1340(v115, v113);
            swift_bridgeObjectRelease_n();
          }

          v51 = LOBYTE(v116[12]);
          v52 = LOBYTE(v115[12]);
          sub_1C8CC15FC(v115);
          sub_1C8CC15FC(v116);
          if (v51 != v52)
          {
            goto LABEL_190;
          }

          memcpy(v112, &__dst[2], sizeof(v112));
          v92 = v115[13];
          memcpy(v111, &v115[15], sizeof(v111));
          if (__dst[1])
          {
            v113[0] = __dst[0];
            v113[1] = __dst[1];
            v90 = __dst[1];
            memcpy(&v113[2], &__dst[2], 0x51uLL);
            memcpy(v110, v113, 0x61uLL);
            v53 = v115[14];
            v91 = __dst[0];
            if (!v115[14])
            {
              sub_1C8D7AE3C(__dst, v109, &qword_1EC312EF8, &unk_1C90839D0);
              sub_1C8D7AE3C(&v115[13], v109, &qword_1EC312EF8, &unk_1C90839D0);
              sub_1C8D7AE3C(v113, v109, &qword_1EC312EF8, &unk_1C90839D0);

              memcpy(v109, v110, 0x61uLL);
              sub_1C8CC15FC(v109);
LABEL_194:
              v113[0] = v91;
              v113[1] = v90;
              memcpy(&v113[2], v112, 0x51uLL);
              v113[13] = v92;
              v113[14] = v53;
              memcpy(v114, v111, sizeof(v114));
              sub_1C8D16D78(v113, &qword_1EC313988, &qword_1C906F410);
LABEL_195:
              sub_1C8D3F014(v115);
              v17 = v101;

LABEL_109:

              v16 = v102;
              goto LABEL_182;
            }

            memcpy(&v106[2], &v115[15], 0x51uLL);
            v106[0] = v92;
            v106[1] = v115[14];
            sub_1C8D7AE3C(__dst, v105, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D7AE3C(&v115[13], v105, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D7AE3C(v113, v105, &qword_1EC312EF8, &unk_1C90839D0);
            v54 = static ContainerDefinition.== infix(_:_:)(v110);
            memcpy(v107, v106, 0x61uLL);
            sub_1C8CC15FC(v107);
            memcpy(v108, v110, 0x61uLL);
            sub_1C8CC15FC(v108);
            v109[0] = v91;
            v109[1] = v90;
            memcpy(&v109[2], v112, 0x51uLL);
            sub_1C8D16D78(v109, &qword_1EC312EF8, &unk_1C90839D0);
            if ((v54 & 1) == 0)
            {
              goto LABEL_190;
            }
          }

          else
          {
            if (v115[14])
            {
              v53 = v115[14];
              v90 = 0;
              v91 = __dst[0];
              sub_1C8D7AE3C(__dst, v113, &qword_1EC312EF8, &unk_1C90839D0);
              sub_1C8D7AE3C(&v115[13], v113, &qword_1EC312EF8, &unk_1C90839D0);

              goto LABEL_194;
            }

            v113[0] = __dst[0];
            v113[1] = 0;
            memcpy(&v113[2], &__dst[2], 0x51uLL);
            sub_1C8D7AE3C(__dst, v110, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D7AE3C(&v115[13], v110, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D16D78(v113, &qword_1EC312EF8, &unk_1C90839D0);
          }

          v17 = v101;
          v16 = v102;
          if (v94 != v115[26] || v99 != v115[27])
          {
            v56 = sub_1C9064C2C();

            sub_1C8D3F014(v115);
            if (v56)
            {
              goto LABEL_224;
            }

LABEL_182:
            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_203;
            }

            continue;
          }

          sub_1C8D3F014(v115);
LABEL_224:

LABEL_217:
          a1 = v118;
          if (!*(v118 + 16))
          {

            v93 = v119;
            return;
          }

          break;
        case 4uLL:
          if (v16 == 0x8000000000000000)
          {
            v21 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == v17[2] && *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == v17[3];
            if (v21 || (sub_1C9064C2C() & 1) != 0)
            {
              goto LABEL_216;
            }
          }

          goto LABEL_182;
        default:
          if (v104)
          {
            goto LABEL_182;
          }

          v19 = *(v18 + 16);
          v20 = *(v103 + 16);
          switch(*(v18 + 16))
          {
            case 0x17:
              if (v20 == 23)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x18:
              if (v20 == 24)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x19:
              if (v20 == 25)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x1A:
              if (v20 == 26)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x1B:
              if (v20 == 27)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x1C:
              if (v20 == 28)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x1D:
              if (v20 == 29)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x1E:
              if (v20 == 30)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x1F:
              if (v20 == 31)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x20:
              if (v20 == 32)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x21:
              if (v20 == 33)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x22:
              if (v20 == 34)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x23:
              if (v20 == 35)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x24:
              if (v20 == 36)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x25:
              if (v20 == 37)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x26:
              if (v20 == 38)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x27:
              if (v20 == 39)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x28:
              if (v20 == 40)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x29:
              if (v20 == 41)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x2A:
              if (v20 == 42)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x2B:
              if (v20 == 43)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x2C:
              if (v20 == 44)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x2D:
              if (v20 == 45)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            case 0x2E:
              if (v20 == 46)
              {
                goto LABEL_222;
              }

              goto LABEL_182;
            default:
              if ((v20 - 23) < 0x18)
              {
                goto LABEL_182;
              }

              if (v19 == 22)
              {
                if (v20 == 22)
                {
                  goto LABEL_222;
                }
              }

              else if (v20 != 22 && v19 == v20)
              {
LABEL_222:

                goto LABEL_216;
              }

              break;
          }

          goto LABEL_182;
      }

      break;
    }
  }

LABEL_203:
  v57 = v103;

  sub_1C8D8630C(v115, v57, v58, v59, v60, v61, v62, v63, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7]);

  if (v104 != 2)
  {
    goto LABEL_216;
  }

  if (qword_1EC311368 != -1)
  {
    swift_once();
  }

  v64 = qword_1EC316148;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  v66 = qword_1EC311370;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = qword_1EC316150;
  v68 = byte_1EC316158;
  LOBYTE(__dst[0]) = 0;
  LOBYTE(v116[0]) = byte_1EC316158;
  v69 = swift_allocObject();
  v113[0] = v57;

  j__swift_bridgeObjectRetain_1(v67, v68, v70, v71, v72);
  *(v69 + 16) = String.init(typeIdentifier:)(v113, v73, v74, v75, v76);
  *(v69 + 24) = v77;
  __dst[0] = v69;
  __dst[1] = 0xA000000000000000;
  __dst[2] = v64;
  __dst[3] = 0xA000000000000000;
  __dst[4] = v65;
  __dst[5] = MEMORY[0x1E69E7CD0];
  LOBYTE(__dst[6]) = 0;
  __dst[7] = v67;
  LOBYTE(__dst[8]) = v68;
  __dst[9] = OUTLINED_FUNCTION_2_3;
  __dst[10] = 0;
  v78 = v95;
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v79 = v100;
  ToolDatabase.Accessor.type(matching:locale:)();
  v100 = v79;
  if (v79)
  {

    (*v96)(v78, v98);
    memcpy(v113, __dst, 0x58uLL);
    sub_1C8D90D00(v113);

    return;
  }

  (*v96)(v78, v98);
  memcpy(v116, __dst, 0x58uLL);
  sub_1C8D90D00(v116);
  memcpy(v113, v115, 0x61uLL);
  if (LOBYTE(v113[12]) == 255)
  {
LABEL_216:

    goto LABEL_217;
  }

  if (LOBYTE(v113[12]) != 1)
  {
    sub_1C8D16D78(v113, &qword_1EC312F08, &qword_1C9091C20);
    goto LABEL_216;
  }

  v80 = 0;
  v81 = v113[1];
  v110[0] = MEMORY[0x1E69E7CC0];
  v82 = *(v113[1] + 16);
  v83 = (v113[1] + 64);
  while (1)
  {
    if (v82 == v80)
    {
      sub_1C8D2BCAC();
      v87 = sub_1C903EC88(v119, v86, sub_1C90460E8, sub_1C9046604);
      sub_1C9036864(v87);

      sub_1C8D16D78(v113, &qword_1EC312F08, &qword_1C9091C20);
      goto LABEL_217;
    }

    if (v80 >= *(v81 + 16))
    {
      break;
    }

    ++v80;
    v84 = *v83;
    v83 += 5;
    v109[0] = v84;
    TypeInstance.typeIdentifiers.getter();
    sub_1C8D375B4(v85);
  }

  __break(1u);
LABEL_231:
  __break(1u);
}

id sub_1C9042D34(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C9063EBC();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1C9061D7C();

    swift_willThrow();
  }

  return v4;
}

id sub_1C9042E00(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C9063EBC();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C9061D7C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1C9042EDC()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C9042F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E8B8;
  if (!qword_1EC31E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E8B8);
  }

  return result;
}

unint64_t sub_1C9042F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E8C8;
  if (!qword_1EC31E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E8C8);
  }

  return result;
}

uint64_t sub_1C9042FCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C9043024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62FF8;
  if (!qword_1EDA62FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FF8);
  }

  return result;
}

unint64_t sub_1C9043078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63758;
  if (!qword_1EDA63758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63758);
  }

  return result;
}

unint64_t sub_1C90430CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E960;
  if (!qword_1EC31E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E960);
  }

  return result;
}

unint64_t sub_1C9043120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E968;
  if (!qword_1EC31E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E968);
  }

  return result;
}

unint64_t sub_1C9043174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E970;
  if (!qword_1EC31E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E970);
  }

  return result;
}

uint64_t sub_1C904321C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E980, &qword_1C90C6598);
  v35 = v4;
  result = sub_1C906494C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_1C8D8D3E0(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    sub_1C9064D7C();
    sub_1C9063FBC();
    result = sub_1C9064DBC();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1C90434BC()
{
  OUTLINED_FUNCTION_72_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C18, &qword_1C90A65E8);
  v6 = OUTLINED_FUNCTION_90_6();
  if (!*(v4 + 16))
  {
LABEL_29:

LABEL_30:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_31_24();
  if (!v1)
  {
LABEL_4:
    v8 = v5;
    while (1)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v8;
      if (v3[v5])
      {
        OUTLINED_FUNCTION_10_6();
        v1 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v23 & 1) == 0)
    {

      v0 = v22;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_124_7();
    v0 = v22;
    if (v20 != v21)
    {
      *v3 = -1 << v19;
    }

    else
    {
      OUTLINED_FUNCTION_139_3(v19);
    }

    *(v4 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_134_4();
LABEL_9:
    OUTLINED_FUNCTION_56_16(v7 | (v5 << 6));
    if ((v23 & 1) == 0)
    {
      memcpy(__dst, v11, 0x69uLL);

      sub_1C8ED3E6C(__dst, __src);
      v11 = __dst;
    }

    memcpy(__src, v11, 0x69uLL);
    sub_1C9064D7C();
    sub_1C9063FBC();
    MEMORY[0x1CCA82830]();
    MEMORY[0x1CCA82830]();
    MEMORY[0x1CCA82830]();
    sub_1C9063FBC();
    sub_1C9064DBC();
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_41_0();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_21:
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_129_7();
    OUTLINED_FUNCTION_126_5(v15, v16);
    memcpy((v18 + 112 * v17), __src, 0x69uLL);
    OUTLINED_FUNCTION_123_7();
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v12)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_130_8();
    if (v12)
    {
      v14 = 0;
    }

    if (*(v2 + 8 * v14) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C90436F8()
{
  OUTLINED_FUNCTION_72_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C08, &qword_1C90C6600);
  v6 = OUTLINED_FUNCTION_90_6();
  if (!*(v4 + 16))
  {
LABEL_30:

LABEL_31:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_31_24();
  if (!v1)
  {
LABEL_4:
    v8 = v5;
    while (1)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v8;
      if (v3[v5])
      {
        OUTLINED_FUNCTION_10_6();
        v1 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v28 & 1) == 0)
    {

      v0 = v27;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_124_7();
    v0 = v27;
    if (v25 != v26)
    {
      *v3 = -1 << v24;
    }

    else
    {
      OUTLINED_FUNCTION_139_3(v24);
    }

    *(v4 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_134_4();
LABEL_9:
    OUTLINED_FUNCTION_79_12(v7 | (v5 << 6));
    if (v28)
    {
      v14 = (v12 + v11 * v13);
      v32 = v14[1];
      v30 = *(v14 + 1);
      v31 = *(v14 + 2);
      v29 = *(v14 + 3);
      v33 = v14[8];
      v34 = *v14;
      v36 = v14[9];
      v35 = v14[10];
      v37 = *(v14 + 11);
      v38 = v14[13];
    }

    else
    {
      memcpy(__dst, (v12 + v11 * v13), sizeof(__dst));
      v38 = *(&__dst[6] + 1);
      v37 = *(&__dst[5] + 8);
      v35 = *&__dst[5];
      v36 = *(&__dst[4] + 1);
      v33 = *&__dst[4];
      v32 = *(&__dst[0] + 1);
      v34 = *&__dst[0];
      v30 = __dst[1];
      v31 = __dst[2];
      v29 = __dst[3];

      sub_1C8CBFC60(__dst, v39);
    }

    sub_1C9064D7C();
    sub_1C9063FBC();
    MEMORY[0x1CCA82830]();
    MEMORY[0x1CCA82830]();
    MEMORY[0x1CCA82830]();
    sub_1C9063FBC();
    sub_1C9064DBC();
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_41_0();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_129_7();
    OUTLINED_FUNCTION_126_5(v18, v19);
    v23 = v21 + v20 * v22;
    *v23 = v34;
    *(v23 + 8) = v32;
    *(v23 + 16) = v30;
    *(v23 + 32) = v31;
    *(v23 + 48) = v29;
    *(v23 + 64) = v33;
    *(v23 + 72) = v36;
    *(v23 + 80) = v35;
    *(v23 + 88) = v37;
    *(v23 + 104) = v38;
    OUTLINED_FUNCTION_123_7();
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v15)
    {
      if (v16)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_130_8();
    if (v15)
    {
      v17 = 0;
    }

    if (*(v2 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1C90439CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9B0, &unk_1C90C65D8);
  v34 = v4;
  result = sub_1C906494C();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

  v33 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        sub_1C8D8D3E0(0, (v32 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    if (v34)
    {
      v20 = *(v5 + 56) + 88 * v18;
      v21 = *(v20 + 8);
      v22 = *(v20 + 24);
      v39 = *(v20 + 32);
      v35 = *v20;
      v36 = *(v20 + 40);
      v37 = *(v20 + 16);
      v38 = *(v20 + 56);
      v43 = *(v20 + 64);
      v40 = *(v20 + 72);
      v41 = *(v20 + 48);
      v42 = *(v20 + 80);
      v44 = *(v20 + 81);
    }

    else
    {
      memcpy(__dst, (*(v5 + 56) + 88 * v18), 0x52uLL);
      v44 = BYTE1(__dst[10]);
      v42 = __dst[10];
      v43 = __dst[8];
      v40 = __dst[9];
      v41 = __dst[6];
      v38 = __dst[7];
      v39 = __dst[4];
      v22 = __dst[3];
      v36 = __dst[5];
      v37 = __dst[2];
      v35 = __dst[0];
      v21 = __dst[1];
      sub_1C8E2B8DC(__dst, v45);
    }

    result = sub_1C9064D6C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    LOBYTE(__dst[0]) = v21;
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    v31 = *(v7 + 56) + 88 * v26;
    *v31 = v35;
    *(v31 + 8) = v21;
    *(v31 + 16) = v37;
    *(v31 + 24) = v22;
    *(v31 + 32) = v39;
    *(v31 + 40) = v36;
    *(v31 + 48) = v41;
    *(v31 + 56) = v38;
    *(v31 + 64) = v43;
    *(v31 + 72) = v40;
    *(v31 + 80) = v42;
    *(v31 + 81) = v44;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C9043D30(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E990, &qword_1C90C65B0);
  result = sub_1C906494C();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_69:

    *v42 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v4 + 64);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = result + 64;
  v41 = v3;
  if (!v11)
  {
LABEL_7:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v15 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v3)
    {
      v40 = 1 << *(v4 + 32);
      if (v40 >= 64)
      {
        sub_1C8D8D3E0(0, (v40 + 63) >> 6, v8);
      }

      else
      {
        *v8 = -1 << v40;
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_69;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v15 = (v11 - 1) & v11;
LABEL_12:
    v18 = v14 | (v7 << 6);
    v43 = v15;
    v19 = *(*(v4 + 48) + 8 * v18);
    if (v3)
    {
      v20 = (*(v4 + 56) + 104 * v18);
    }

    else
    {
      memcpy(__dst, (*(v4 + 56) + 104 * v18), 0x61uLL);

      sub_1C8D90D54(__dst, v46);
      v20 = __dst;
    }

    memcpy(v49, v20, sizeof(v49));
    sub_1C9064D7C();
    switch(v19 >> 61)
    {
      case 1uLL:
        v27 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1CCA82810](1);
        switch(v27)
        {
          case 0:
            v28 = 0;
            goto LABEL_51;
          case 1:
            v28 = 1;
            goto LABEL_51;
          case 2:
            v28 = 2;
            goto LABEL_51;
          case 3:
            v28 = 3;
            goto LABEL_51;
          case 4:
            v28 = 4;
            goto LABEL_51;
          case 5:
            v28 = 5;
            goto LABEL_51;
          case 6:
            v28 = 6;
            goto LABEL_51;
          case 7:
            v28 = 7;
            goto LABEL_51;
          case 8:
            v28 = 8;
            goto LABEL_51;
          case 9:
            v28 = 9;
            goto LABEL_51;
          case 10:
            v28 = 10;
            goto LABEL_51;
          case 11:
            v28 = 11;
            goto LABEL_51;
          case 12:
            v28 = 12;
            goto LABEL_51;
          case 13:
            v28 = 13;
            goto LABEL_51;
          case 14:
            v28 = 14;
            goto LABEL_51;
          case 15:
            v28 = 16;
LABEL_51:
            MEMORY[0x1CCA82810](v28);
            break;
          default:
            v39 = *(v27 + 16);
            MEMORY[0x1CCA82810](15);
            __dst[0] = v39;
            TypeIdentifier.hash(into:)(v48);
            break;
        }

        break;
      case 2uLL:
        MEMORY[0x1CCA82810](2);
        sub_1C9063FBC();
        v3 = v41;
        goto LABEL_19;
      case 3uLL:
        v22 = v6;
        memcpy(__dst, ((v19 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
        MEMORY[0x1CCA82810](3);
        v23 = __dst[2];
        sub_1C8D3EFB8(__dst, v46);
        sub_1C9063FBC();
        v24 = *(v23 + 16);
        MEMORY[0x1CCA82810](v24);
        if (v24)
        {
          v25 = v23 + 40;
          do
          {

            sub_1C9063FBC();

            v25 += 16;
            --v24;
          }

          while (v24);
        }

        v26 = __dst[6];
        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v26)
        {
          sub_1C9063FBC();
        }

        v29 = __dst[9];
        MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
        sub_1C9064D9C();
        if (v29)
        {
          sub_1C9063FBC();
        }

        v6 = v22;
        v3 = v41;
        if (__dst[11])
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
        if (__dst[14])
        {
          memcpy(__src, &__dst[13], sizeof(__src));
          sub_1C9064D9C();
          memcpy(v45, &__dst[13], 0x61uLL);
          sub_1C8CC1340(v45, v46);
          ContainerDefinition.hash(into:)(v48);
          memcpy(v46, __src, 0x61uLL);
          sub_1C8CC15FC(v46);
        }

        else
        {
          sub_1C9064D9C();
        }

        sub_1C9063FBC();
        sub_1C8D3F014(__dst);
        break;
      case 4uLL:
        MEMORY[0x1CCA82810](4);
LABEL_19:
        sub_1C9063FBC();
        break;
      default:
        v21 = *(v19 + 16);
        MEMORY[0x1CCA82810](0);
        LOBYTE(__dst[0]) = v21;
        TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
        break;
    }

    result = sub_1C9064DBC();
    v30 = -1 << *(v6 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v34 = v19;
LABEL_61:
    *(v13 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(*(v6 + 48) + 8 * v33) = v34;
    result = memcpy((*(v6 + 56) + 104 * v33), v49, 0x61uLL);
    ++*(v6 + 16);
    v11 = v43;
    if (!v43)
    {
      goto LABEL_7;
    }
  }

  v35 = 0;
  v36 = (63 - v30) >> 6;
  v34 = v19;
  while (++v32 != v36 || (v35 & 1) == 0)
  {
    v37 = v32 == v36;
    if (v32 == v36)
    {
      v32 = 0;
    }

    v35 |= v37;
    v38 = *(v13 + 8 * v32);
    if (v38 != -1)
    {
      v33 = __clz(__rbit64(~v38)) + (v32 << 6);
      goto LABEL_61;
    }
  }

LABEL_71:
  __break(1u);
  return result;
}

unint64_t sub_1C90443D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E978;
  if (!qword_1EC31E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E978);
  }

  return result;
}

void sub_1C9044480(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C906359C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  OUTLINED_FUNCTION_11();
  v37 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v36 = v12;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      v35 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
      v13 = sub_1C906475C();
      if (a2 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = *a1;
      }

      v15 = 0;
      v16 = v13 + 56;
      v17 = v35;
      v18 = v36;
      v41 = v13;
      v34 = a2;
      while (v14)
      {
        v19 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_16:
        v39 = *(v37 + 72);
        sub_1C8D7AE3C(*(a4 + 48) + v39 * (v19 | (v15 << 6)), v18, &qword_1EC312DD0, &qword_1C9072940);
        sub_1C9064D7C();
        sub_1C8D7AE3C(v18, v17, &qword_1EC312DD0, &qword_1C9072940);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x1CCA82810](1);
          v18 = v36;
          sub_1C9063FBC();
          a2 = v34;
        }

        else
        {
          v23 = OUTLINED_FUNCTION_94();
          v24(v23);
          MEMORY[0x1CCA82810](0);
          OUTLINED_FUNCTION_39_21();
          sub_1C9049320(&qword_1EC313960, v25, MEMORY[0x1E69E0840]);
          sub_1C9063E7C();
          v26 = OUTLINED_FUNCTION_227();
          v27(v26);
        }

        sub_1C9064DBC();
        OUTLINED_FUNCTION_12_10();
        OUTLINED_FUNCTION_41_0();
        if (v28)
        {
          OUTLINED_FUNCTION_4_0();
          v17 = v35;
          while (1)
          {
            OUTLINED_FUNCTION_26_5();
            if (v28)
            {
              if (v31)
              {
                goto LABEL_33;
              }
            }

            OUTLINED_FUNCTION_130_8();
            if (v28)
            {
              v32 = 0;
            }

            if (*(v16 + 8 * v32) != -1)
            {
              OUTLINED_FUNCTION_3_5();
              goto LABEL_29;
            }
          }
        }

        OUTLINED_FUNCTION_5_2();
        v17 = v35;
LABEL_29:
        *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        sub_1C8E4E960(v18, *(v30 + 48) + v29 * v39, &qword_1EC312DD0, &qword_1C9072940);
        ++*(v41 + 16);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_34;
        }

        v14 = v38;
        if (!a3)
        {
          goto LABEL_31;
        }
      }

      v20 = v15;
      while (1)
      {
        v15 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v15 >= a2)
        {
          goto LABEL_31;
        }

        ++v20;
        if (a1[v15])
        {
          OUTLINED_FUNCTION_10_6();
          v38 = v22 & v21;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }
  }

  else
  {
LABEL_31:
  }
}

void sub_1C904488C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
      v7 = sub_1C906475C();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v27 = v4;
      while (v9)
      {
        OUTLINED_FUNCTION_121_6();
LABEL_16:
        v16 = *(v4 + 48) + 16 * (v12 | (v10 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        sub_1C9064D7C();
        switch(v18 >> 5)
        {
          case 1u:
            v19 = 3;
            goto LABEL_24;
          case 2u:
            v20 = 4;
            goto LABEL_21;
          case 3u:
            v20 = 5;
LABEL_21:
            MEMORY[0x1CCA82810](v20);

            sub_1C8D3977C(__src, v17);
            sub_1C9064D9C();
            goto LABEL_25;
          case 4u:
            v19 = 6;
            goto LABEL_24;
          case 5u:
            v19 = 7;
            goto LABEL_24;
          case 6u:
            MEMORY[0x1CCA82810]((v17 | v18 ^ 0xC0) != 0);
            goto LABEL_25;
          default:
            v19 = 2;
LABEL_24:
            MEMORY[0x1CCA82810](v19);

            sub_1C8D3977C(__src, v17);
LABEL_25:
            sub_1C9064DBC();
            OUTLINED_FUNCTION_12_10();
            OUTLINED_FUNCTION_41_0();
            if (v21)
            {
              OUTLINED_FUNCTION_4_0();
              do
              {
                OUTLINED_FUNCTION_26_5();
                if (v21 && (v23 & 1) != 0)
                {
                  goto LABEL_39;
                }

                OUTLINED_FUNCTION_130_8();
                if (v21)
                {
                  v24 = 0;
                }
              }

              while (*(v11 + 8 * v24) == -1);
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              OUTLINED_FUNCTION_5_2();
            }

            *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            v25 = *(v8 + 48) + 16 * v22;
            *v25 = v17;
            *(v25 + 8) = v18;
            OUTLINED_FUNCTION_138_7();
            if (v26)
            {
              goto LABEL_40;
            }

            v4 = v27;
            break;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_10_6();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C9044B04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314640, &qword_1C9074830);
      v7 = sub_1C906475C();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      while (v9)
      {
        OUTLINED_FUNCTION_121_6();
LABEL_16:
        v16 = *(*(a4 + 48) + 8 * (v12 | (v10 << 6)));
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        sub_1C9064DBC();
        OUTLINED_FUNCTION_12_10();
        OUTLINED_FUNCTION_41_0();
        if (v17)
        {
          OUTLINED_FUNCTION_4_0();
          while (1)
          {
            OUTLINED_FUNCTION_26_5();
            if (v17)
            {
              if (v19)
              {
                goto LABEL_29;
              }
            }

            if (v18 == v20)
            {
              v18 = 0;
            }

            if (*(v11 + 8 * v18) != -1)
            {
              OUTLINED_FUNCTION_3_5();
              goto LABEL_26;
            }
          }
        }

        OUTLINED_FUNCTION_5_2();
LABEL_26:
        OUTLINED_FUNCTION_2_0();
        *(v11 + v21) |= v22;
        *(*(v8 + 48) + 8 * v23) = v16;
        OUTLINED_FUNCTION_138_7();
        if (v24)
        {
          goto LABEL_30;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_10_6();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1C9044CAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314628, &unk_1C90C65F0);
  result = sub_1C906475C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1C9064D6C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C9044E90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400);
  result = sub_1C906475C();
  v5 = result;
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  v9 = 0;
  v10 = result + 56;
  v40 = a1;
  v41 = result;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_16:
    v14 = *(*(a4 + 48) + 8 * (v11 | (v9 << 6)));
    sub_1C9064D7C();
    switch(v14 >> 61)
    {
      case 1uLL:
        v20 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1CCA82810](1);
        switch(v20)
        {
          case 0:
LABEL_27:
            v21 = 0;
            goto LABEL_60;
          case 1:
LABEL_45:
            v21 = 1;
            goto LABEL_60;
          case 2:
LABEL_51:
            v21 = 2;
            goto LABEL_60;
          case 3:
LABEL_53:
            v21 = 3;
            goto LABEL_60;
          case 4:
LABEL_48:
            v21 = 4;
            goto LABEL_60;
          case 5:
LABEL_55:
            v21 = 5;
            goto LABEL_60;
          case 6:
LABEL_57:
            v21 = 6;
            goto LABEL_60;
          case 7:
LABEL_54:
            v21 = 7;
            goto LABEL_60;
          case 8:
LABEL_59:
            v21 = 8;
            goto LABEL_60;
          case 9:
LABEL_50:
            v21 = 9;
            goto LABEL_60;
          case 10:
LABEL_58:
            v21 = 10;
            goto LABEL_60;
          case 11:
LABEL_47:
            v21 = 11;
            goto LABEL_60;
          case 12:
LABEL_49:
            v21 = 12;
            goto LABEL_60;
          case 13:
LABEL_56:
            v21 = 13;
            goto LABEL_60;
          case 14:
LABEL_46:
            v21 = 14;
            goto LABEL_60;
          case 15:
LABEL_52:
            v21 = 16;
LABEL_60:
            MEMORY[0x1CCA82810](v21);
LABEL_61:

            break;
          default:
            v23 = *(v20 + 16);
            MEMORY[0x1CCA82810](15);
            switch(v23 >> 61)
            {
              case 1uLL:
                v28 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                MEMORY[0x1CCA82810](1);
                switch(v28)
                {
                  case 0:
                    goto LABEL_27;
                  case 1:
                    goto LABEL_45;
                  case 2:
                    goto LABEL_51;
                  case 3:
                    goto LABEL_53;
                  case 4:
                    goto LABEL_48;
                  case 5:
                    goto LABEL_55;
                  case 6:
                    goto LABEL_57;
                  case 7:
                    goto LABEL_54;
                  case 8:
                    goto LABEL_59;
                  case 9:
                    goto LABEL_50;
                  case 10:
                    goto LABEL_58;
                  case 11:
                    goto LABEL_47;
                  case 12:
                    goto LABEL_49;
                  case 13:
                    goto LABEL_56;
                  case 14:
                    goto LABEL_46;
                  case 15:
                    goto LABEL_52;
                  default:
                    v38 = *(v28 + 16);
                    MEMORY[0x1CCA82810](15);
                    __dst[0] = v38;

                    TypeIdentifier.hash(into:)(v48);
                    break;
                }

                goto LABEL_62;
              case 2uLL:
                MEMORY[0x1CCA82810](2);

                v5 = v41;
                sub_1C9063FBC();
                goto LABEL_41;
              case 3uLL:
                v25 = v23 & 0x1FFFFFFFFFFFFFFFLL;
                memcpy(__dst, ((v23 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                v26 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                v27 = *(v25 + 128);
                memcpy(__src, (v25 + 136), 0x51uLL);
                MEMORY[0x1CCA82810](3);

                ContainerDefinition.hash(into:)(v48);
                if (v27)
                {
                  v46[0] = v26;
                  v46[1] = v27;
                  memcpy(&v46[2], __src, 0x51uLL);
                  memcpy(v45, v46, 0x61uLL);
                  sub_1C9064D9C();
                  sub_1C8CC1340(v46, __dst);
                  ContainerDefinition.hash(into:)(v48);
                  memcpy(__dst, v45, 0x61uLL);
                  sub_1C8CC15FC(__dst);
                }

                else
                {
                  sub_1C9064D9C();
                }

                v5 = v41;
                sub_1C9063FBC();
                a1 = v40;
                goto LABEL_63;
              case 4uLL:
                MEMORY[0x1CCA82810](4);

                v5 = v41;
LABEL_41:
                sub_1C9063FBC();
                break;
              default:
                v24 = *(v23 + 16);
                MEMORY[0x1CCA82810](0);
                LOBYTE(__dst[0]) = v24;
                TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                goto LABEL_61;
            }

            break;
        }

LABEL_62:
        a1 = v40;
        break;
      case 2uLL:
        MEMORY[0x1CCA82810](2);

        a1 = v40;
        sub_1C9063FBC();
        v5 = v41;
        goto LABEL_20;
      case 3uLL:
        v39 = v8;
        memcpy(__dst, ((v14 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
        MEMORY[0x1CCA82810](3);
        v16 = __dst[2];

        sub_1C8D3EFB8(__dst, v46);
        sub_1C9063FBC();
        v17 = *(v16 + 16);
        MEMORY[0x1CCA82810](v17);
        if (v17)
        {
          v18 = v16 + 40;
          do
          {

            sub_1C9063FBC();

            v18 += 16;
            --v17;
          }

          while (v17);
        }

        v19 = __dst[6];
        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v19)
        {
          sub_1C9063FBC();
        }

        v5 = v41;
        v22 = __dst[9];
        MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
        sub_1C9064D9C();
        if (v22)
        {
          sub_1C9063FBC();
        }

        a1 = v40;
        if (__dst[11])
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        v8 = v39;
        MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
        if (__dst[14])
        {
          memcpy(__src, &__dst[13], sizeof(__src));
          sub_1C9064D9C();
          memcpy(v45, &__dst[13], 0x61uLL);
          sub_1C8CC1340(v45, v46);
          ContainerDefinition.hash(into:)(v48);
          memcpy(v46, __src, 0x61uLL);
          sub_1C8CC15FC(v46);
        }

        else
        {
          sub_1C9064D9C();
        }

        sub_1C9063FBC();
        sub_1C8D3F014(__dst);
        break;
      case 4uLL:
        MEMORY[0x1CCA82810](4);

        v5 = v41;
LABEL_20:
        sub_1C9063FBC();
        break;
      default:
        v15 = *(v14 + 16);
        MEMORY[0x1CCA82810](0);
        LOBYTE(__dst[0]) = v15;
        TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();

        break;
    }

LABEL_63:
    result = sub_1C9064DBC();
    v29 = -1 << *(v5 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v10 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v10 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_72;
        }
      }

      goto LABEL_81;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v10 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_72:
    *(v10 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v5 + 48) + 8 * v32) = v14;
    ++*(v5 + 16);
    if (__OFSUB__(v42--, 1))
    {
      goto LABEL_82;
    }

    if (!v42)
    {
LABEL_78:

      return v5;
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= a2)
    {
      goto LABEL_78;
    }

    v13 = a1[v9];
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

void sub_1C9045664(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v6)
    {

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9064CBC();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v11 = *a3;

    v12 = v10;
    v14 = sub_1C8CAE064(v9, v8);
    v15 = v11[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      break;
    }

    if (v5)
    {
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E988, &unk_1C90C65A0);
      sub_1C90648FC();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v21[6] + 16 * v14);
    *v22 = v9;
    v22[1] = v8;
    *(v21[7] + 8 * v14) = v12;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v6;
    v5 = 1;
  }

  sub_1C904321C(v17, v5 & 1);
  v19 = sub_1C8CAE064(v9, v8);
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90D0B70);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  sub_1C906491C();
  __break(1u);
}

void sub_1C9045944(uint64_t a1, char a2, void *a3)
{
  v6 = 0;
  v33 = *(a1 + 16);
  for (i = 32; ; i += 96)
  {
    if (v33 == v6)
    {
LABEL_17:

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1C9064CBC();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), 0x5AuLL);
    v8 = WORD4(__dst[5]);
    v10 = *(&__dst[4] + 1);
    v9 = *&__dst[5];
    v28 = *(&__dst[2] + 8);
    v29 = *(&__dst[3] + 8);
    v30 = *(&__dst[1] + 8);
    v27 = *(__dst + 8);
    v11 = *&__dst[0];
    sub_1C8D7AE3C(__dst, v31, &qword_1EC3128F8, &unk_1C9068CE0);
    if (!*(&v30 + 1))
    {
      goto LABEL_17;
    }

    __dst[0] = v27;
    __dst[1] = v30;
    __dst[2] = v28;
    __dst[3] = v29;
    *&__dst[4] = v10;
    *(&__dst[4] + 1) = v9;
    LOWORD(__dst[5]) = v8;
    v12 = *a3;
    v14 = sub_1C8D59CEC(v11);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_20;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E9B8, &qword_1C90C65E8);
      sub_1C90648FC();
      if (v18)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v21[6] + 8 * v14) = v11;
    memcpy((v21[7] + 88 * v14), __dst, 0x52uLL);
    v22 = v21[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v21[2] = v24;
    ++v6;
    a2 = 1;
  }

  sub_1C90439CC(v17, a2 & 1);
  v19 = sub_1C8D59CEC(v11);
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_22;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C8E2B914(__dst);

    return;
  }

LABEL_23:
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90D0B70);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  sub_1C906491C();
  __break(1u);
}

void sub_1C9045C8C(uint64_t a1, char a2, void *a3)
{
  v33 = a3;
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = 32; ; i += 112)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1C9064CBC();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), 0x69uLL);
    v7 = BYTE8(__dst[6]);
    v29 = *(&__dst[4] + 8);
    v30 = *(&__dst[5] + 8);
    v27 = *(&__dst[2] + 8);
    v28 = *(&__dst[3] + 8);
    v25 = *(__dst + 8);
    v26 = *(&__dst[1] + 8);
    v8 = *&__dst[0];
    sub_1C8D7AE3C(__dst, v31, &qword_1EC312CF0, &unk_1C90695E8);
    if (v7 == 255)
    {
      goto LABEL_17;
    }

    __dst[0] = v25;
    __dst[1] = v26;
    __dst[2] = v27;
    __dst[3] = v28;
    __dst[4] = v29;
    __dst[5] = v30;
    LOBYTE(__dst[6]) = v7;
    v9 = *v33;
    v11 = sub_1C8D59C84();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A530, &unk_1C90AB5B0);
      sub_1C90648FC();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *v33;
    *(*v33 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + 8 * v11) = v8;
    memcpy((v18[7] + 104 * v11), __dst, 0x61uLL);
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1C9043D30(v14, a2 & 1);
  v16 = sub_1C8D59C84();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C8D90DB0(__dst);

    return;
  }

LABEL_23:
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90D0B70);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  sub_1C906491C();
  __break(1u);
}

uint64_t sub_1C9045FF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*v5 + 16))
  {
    v6 = result;
    v7 = result + 56;
    v8 = 1 << *(result + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(result + 56);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_10:
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = sub_1C8F1F298(*(*(v6 + 48) + ((v13 << 9) | (8 * v14))));
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C90460E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*v5 + 16))
  {
    v6 = result;
    v7 = result + 56;
    v8 = 1 << *(result + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(result + 56);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_10:
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(*(v6 + 48) + ((v13 << 9) | (8 * v14)));

        sub_1C8F1F37C(v15);

        result = sub_1C8CD0FB0(v16);
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C9046218(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v41 = 0;
    v7 = 0;
    v9 = a1 + 56;
    v8 = *(a1 + 56);
    v10 = -1;
    v11 = -1 << *(a1 + 32);
    v45 = ~v11;
    v46 = a1 + 56;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v8;
    v14 = (63 - v11) >> 6;
    v15 = a2 + 56;
    v16 = 1;
    v47 = a1;
    if ((v12 & v8) != 0)
    {
LABEL_6:
      v17 = v7;
LABEL_11:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v5 = *(*(a1 + 48) + ((v17 << 9) | (8 * v19)));
      v20 = sub_1C9064D6C();
      v21 = -1 << *(v6 + 32);
      v22 = ~v21;
      while (1)
      {
        v7 = v20 & v22;
        v9 = (v20 & v22) >> 6;
        v10 = 1 << (v20 & v22);
        if ((v10 & *(v15 + 8 * v9)) == 0)
        {
          v7 = v17;
          v9 = v46;
          a1 = v47;
          v10 = -1;
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (*(*(v6 + 48) + 8 * v7) == v5)
        {
          break;
        }

        v20 = v7 + 1;
      }

      v49 = v45;
      v50 = v17;
      v51 = v13;
      v48[0] = v47;
      v48[1] = v46;
      v16 = (63 - v21) >> 6;
      v5 = 8 * v16;

      if (v16 > 0x80)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v42 = v16;
        v43 = &v41;
        MEMORY[0x1EEE9AC00](v23);
        v16 = &v41 - v24;
        memcpy(&v41 - v24, (v6 + 56), v5);
        v25 = *(v6 + 16);
        *(v16 + 8 * v9) &= ~v10;
        v26 = v25 - 1;
        v7 = 1;
        v10 = v46;
        v9 = v47;
LABEL_19:
        v44 = v26;
LABEL_20:
        while (v13)
        {
LABEL_25:
          v28 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v5 = *(*(v9 + 48) + ((v17 << 9) | (8 * v28)));
          v29 = sub_1C9064D6C();
          v30 = ~(-1 << *(v6 + 32));
          while (1)
          {
            v31 = v29 & v30;
            v32 = (v29 & v30) >> 6;
            v33 = 1 << (v29 & v30);
            if ((v33 & *(v15 + 8 * v32)) == 0)
            {
              break;
            }

            v29 = v31 + 1;
            if (*(*(v6 + 48) + 8 * v31) == v5)
            {
              v34 = *(v16 + 8 * v32);
              *(v16 + 8 * v32) = v34 & ~v33;
              if ((v34 & v33) == 0)
              {
                goto LABEL_20;
              }

              v26 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              if (v44 == 1)
              {

                v6 = MEMORY[0x1E69E7CD0];
                goto LABEL_33;
              }

              goto LABEL_19;
            }
          }
        }

        while (1)
        {
          v27 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v27 >= v14)
          {
            v6 = sub_1C9044CAC(v16, v42, v44, v6);
            goto LABEL_33;
          }

          v13 = *(v10 + 8 * v27);
          ++v17;
          if (v13)
          {
            v17 = v27;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v37 = swift_slowAlloc();
      v38 = v41;
      v39 = sub_1C90490A4(v37, v16, (v6 + 56), v16, v6, v7, v48);
      if (v38)
      {

        result = MEMORY[0x1CCA833A0](v37, -1, -1);
        __break(1u);
        return result;
      }

      v40 = v39;

      MEMORY[0x1CCA833A0](v37, -1, -1);
      v9 = v48[0];
      v45 = v49;
      v6 = v40;
LABEL_33:
      v35 = v9;
    }

    else
    {
LABEL_7:
      v18 = v7;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_39;
        }

        if (v17 >= v14)
        {
          break;
        }

        v13 = *(v9 + 8 * v17);
        ++v18;
        if (v13)
        {
          goto LABEL_11;
        }
      }
    }

    sub_1C8C9E7E4(v35);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1C9046604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v153 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v120 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v126 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v131 = a2;
  v132 = (a2 + 56);

  v13 = 0;
  v123 = v11;
  v124 = v7;
  v125 = v12;
  if (!v10)
  {
LABEL_7:
    v14 = v13;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        sub_1C8C9E7E4(v12);
        return v131;
      }

      v10 = *(v7 + 8 * v15);
      ++v14;
      if (v10)
      {
        v13 = v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:

    sub_1C8D3F130(0xEuLL);
    v109 = 14;
LABEL_372:
    sub_1C8D3F130(v109);

    goto LABEL_205;
  }

LABEL_12:
  while (1)
  {
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v12 + 48) + ((v13 << 9) | (8 * v16)));
    v148 = v12;
    v149 = v7;
    v150 = v126;
    v151 = v13;
    v152 = v10;
    v141[0] = v17;
    sub_1C9064D7C();
    v127 = v17;
    v128 = (v17 & 0x1FFFFFFFFFFFFFFFLL);

    TypeIdentifier.hash(into:)(v145);
    v18 = sub_1C9064DBC();
    v19 = v131;
    v20 = -1 << *(v131 + 32);
    v7 = v18 & ~v20;
    v5 = v7 >> 6;
    v11 = 1 << v7;
    if (((1 << v7) & v132[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_199:

    v7 = v124;
    v12 = v125;
    v11 = v123;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v130 = ~v20;
  v129 = v127 & 0xE000000000000000;
  while (2)
  {
    v21 = *(*(v19 + 48) + 8 * v7);
    switch(v21 >> 61)
    {
      case 1uLL:
        if (v129 != 0x2000000000000000)
        {
          goto LABEL_118;
        }

        v49 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v50 = v128[2];
        switch(v49)
        {
          case 0uLL:
            if (!v50)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 1uLL:
            if (v50 == 1)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 2uLL:
            if (v50 == 2)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 3uLL:
            if (v50 == 3)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 4uLL:
            if (v50 == 4)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 5uLL:
            if (v50 == 5)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 6uLL:
            if (v50 == 6)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 7uLL:
            if (v50 == 7)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 8uLL:
            if (v50 == 8)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 9uLL:
            if (v50 == 9)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 0xAuLL:
            if (v50 == 10)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 0xBuLL:
            if (v50 == 11)
            {
              goto LABEL_367;
            }

            goto LABEL_115;
          case 0xCuLL:
            if (v50 != 12)
            {
              goto LABEL_115;
            }

LABEL_367:

            sub_1C8D3F130(v49);
            sub_1C8D3F130(v49);
            goto LABEL_368;
          case 0xDuLL:
            if (v50 != 13)
            {
              goto LABEL_115;
            }

            sub_1C8D3F130(0xDuLL);
            v109 = 13;
            goto LABEL_372;
          case 0xEuLL:
            if (v50 == 14)
            {
              goto LABEL_371;
            }

            goto LABEL_115;
          case 0xFuLL:
            if (v50 != 15)
            {
              goto LABEL_115;
            }

            sub_1C8D3F130(0xFuLL);
            v109 = 15;
            goto LABEL_372;
          default:
            if (v50 >= 0x10)
            {
              v53 = *(v50 + 16);
              v145[0] = *(v49 + 16);
              v141[0] = v53;

              sub_1C8D3F120(v50);

              sub_1C8D3F120(v50);
              sub_1C8D3F120(v49);
              LODWORD(v122) = static TypeIdentifier.== infix(_:_:)(v145, v141);
              sub_1C8D3F130(v49);
              sub_1C8D3F130(v50);

              sub_1C8D3F130(v50);
              if (v122)
              {
                goto LABEL_368;
              }
            }

            else
            {
LABEL_115:
              sub_1C8D3F120(v128[2]);
              sub_1C8D3F120(v49);

              sub_1C8D3F130(v49);
              sub_1C8D3F130(v50);
            }

            break;
        }

        goto LABEL_116;
      case 2uLL:
        if (v129 != 0x4000000000000000)
        {
          goto LABEL_118;
        }

        v25 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v26 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v27 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v28 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v29 = v128[4];
        v30 = v128[5];
        if (v25 != v128[2] || v26 != v128[3])
        {
          v32 = sub_1C9064C2C();
          v19 = v131;
          if ((v32 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        if (v27 != v29 || v28 != v30)
        {
          goto LABEL_36;
        }

        goto LABEL_205;
      case 3uLL:
        v35 = (v21 & 0x1FFFFFFFFFFFFFFFLL);
        memcpy(v146, v35 + 2, 0x61uLL);
        memcpy(__dst, v35 + 15, 0x61uLL);
        if (v129 != 0x6000000000000000)
        {
          goto LABEL_117;
        }

        v36 = v35[28];
        v121 = v35[29];
        v122 = v36;
        memcpy(v145, v128 + 2, sizeof(v145));
        v37 = v146[0] == v145[0] && v146[1] == v145[1];
        v19 = v131;
        if (!v37)
        {
          v38 = sub_1C9064C2C();
          v19 = v131;
          if ((v38 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        v39 = *(v146[2] + 16);
        if (v39 != *(v145[2] + 16))
        {
          goto LABEL_118;
        }

        if (v39)
        {
          v40 = v146[2] == v145[2];
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          goto LABEL_57;
        }

        v41 = (v146[2] + 40);
        v42 = (v145[2] + 40);
        do
        {
          if (!v39)
          {
            __break(1u);
            goto LABEL_374;
          }

          if (*(v41 - 1) != *(v42 - 1) || *v41 != *v42)
          {
            v44 = sub_1C9064C2C();
            v19 = v131;
            if ((v44 & 1) == 0)
            {
              goto LABEL_118;
            }
          }

          v41 += 2;
          v42 += 2;
          --v39;
        }

        while (v39);
LABEL_57:
        if (v146[3] != v145[3] || v146[4] != v145[4])
        {
          v46 = sub_1C9064C2C();
          v19 = v131;
          if ((v46 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        if (v146[6])
        {
          if (!v145[6])
          {
            goto LABEL_118;
          }

          if (v146[5] != v145[5] || v146[6] != v145[6])
          {
            v48 = sub_1C9064C2C();
            v19 = v131;
            if ((v48 & 1) == 0)
            {
              goto LABEL_118;
            }
          }
        }

        else if (v145[6])
        {
          goto LABEL_118;
        }

        if (LOBYTE(v146[7]) != LOBYTE(v145[7]))
        {
          goto LABEL_118;
        }

        if (v146[9])
        {
          if (!v145[9])
          {
            goto LABEL_118;
          }

          if (v146[8] != v145[8] || v146[9] != v145[9])
          {
            v52 = sub_1C9064C2C();
            v19 = v131;
            if ((v52 & 1) == 0)
            {
              goto LABEL_118;
            }
          }
        }

        else if (v145[9])
        {
          goto LABEL_118;
        }

        v138[0] = v146[10];
        v138[1] = v146[11];
        v137[0] = v145[10];
        v137[1] = v145[11];
        swift_retain_n();

        sub_1C8D3EFB8(v145, v141);
        sub_1C8CC1340(v146, v141);
        sub_1C8CC1340(v145, v141);

        v54 = static ContainerDefinition.Device.== infix(_:_:)(v138, v137);

        if ((v54 & 1) == 0)
        {
          sub_1C8CC15FC(v145);
          sub_1C8CC15FC(v146);

          sub_1C8D3F014(v145);
LABEL_116:

LABEL_117:
          v19 = v131;
          goto LABEL_118;
        }

        v55 = LOBYTE(v146[12]);
        v56 = LOBYTE(v145[12]);
        sub_1C8CC15FC(v145);
        sub_1C8CC15FC(v146);
        if (v55 != v56)
        {
          goto LABEL_178;
        }

        v57 = __dst[1];
        v119 = __dst[0];
        memcpy(v140, &__dst[2], sizeof(v140));
        v118 = v145[13];
        v58 = v145[14];
        memcpy(v139, &v145[15], sizeof(v139));
        if (!__dst[1])
        {
          v60 = v119;
          if (!v145[14])
          {
            v141[0] = v119;
            v141[1] = 0;
            memcpy(&v141[2], &__dst[2], 0x51uLL);
            sub_1C8D7AE3C(__dst, v138, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D7AE3C(&v145[13], v138, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D16D78(v141, &qword_1EC312EF8, &unk_1C90839D0);
            goto LABEL_193;
          }

          sub_1C8D7AE3C(__dst, v141, &qword_1EC312EF8, &unk_1C90839D0);
          sub_1C8D7AE3C(&v145[13], v141, &qword_1EC312EF8, &unk_1C90839D0);

          goto LABEL_189;
        }

        v141[0] = v119;
        v141[1] = __dst[1];
        memcpy(&v141[2], &__dst[2], 0x51uLL);
        memcpy(v138, v141, 0x61uLL);
        if (!v145[14])
        {
          sub_1C8D7AE3C(__dst, v137, &qword_1EC312EF8, &unk_1C90839D0);
          sub_1C8D7AE3C(&v145[13], v137, &qword_1EC312EF8, &unk_1C90839D0);
          sub_1C8D7AE3C(v141, v137, &qword_1EC312EF8, &unk_1C90839D0);

          memcpy(v137, v138, 0x61uLL);
          sub_1C8CC15FC(v137);
          v60 = v119;
LABEL_189:
          v141[0] = v60;
          v141[1] = v57;
          memcpy(&v141[2], v140, 0x51uLL);
          v142 = v118;
          v143 = v58;
          memcpy(v144, v139, sizeof(v144));
          sub_1C8D16D78(v141, &qword_1EC313988, &qword_1C906F410);
LABEL_190:
          sub_1C8D3F014(v145);
          goto LABEL_116;
        }

        memcpy(&v134[2], &v145[15], 0x51uLL);
        v134[0] = v118;
        v134[1] = v145[14];
        sub_1C8D7AE3C(__dst, v133, &qword_1EC312EF8, &unk_1C90839D0);
        sub_1C8D7AE3C(&v145[13], v133, &qword_1EC312EF8, &unk_1C90839D0);
        sub_1C8D7AE3C(v141, v133, &qword_1EC312EF8, &unk_1C90839D0);
        LODWORD(v118) = static ContainerDefinition.== infix(_:_:)(v138);
        memcpy(v135, v134, 0x61uLL);
        sub_1C8CC15FC(v135);
        memcpy(v136, v138, 0x61uLL);
        sub_1C8CC15FC(v136);
        v137[0] = v119;
        v137[1] = v57;
        memcpy(&v137[2], v140, 0x51uLL);
        sub_1C8D16D78(v137, &qword_1EC312EF8, &unk_1C90839D0);
        if ((v118 & 1) == 0)
        {
LABEL_178:

          goto LABEL_190;
        }

LABEL_193:
        if (v122 == v145[26] && v121 == v145[27])
        {

          sub_1C8D3F014(v145);
          goto LABEL_368;
        }

        v62 = sub_1C9064C2C();

        sub_1C8D3F014(v145);
        if ((v62 & 1) == 0)
        {
          goto LABEL_116;
        }

LABEL_368:

LABEL_206:
        v35 = v131;
        v65 = *(v131 + 32);
        v118 = ((1 << v65) + 63) >> 6;
        v39 = 8 * v118;
        if ((v65 & 0x3Fu) <= 0xD)
        {
LABEL_207:
          v119 = &v113;
          MEMORY[0x1EEE9AC00](v64);
          v7 = &v113 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v7, v132, v39);
          v66 = *(v7 + 8 * v5) & ~v11;
          v122 = v7;
          *(v7 + 8 * v5) = v66;
          v67 = v35[2] - 1;
          v68 = v124;
          v11 = v125;
          v69 = v123;
          while (1)
          {
            v121 = v67;
            while (1)
            {
LABEL_209:
              if (v10)
              {
                goto LABEL_214;
              }

              do
              {
                v70 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  goto LABEL_370;
                }

                if (v70 >= v69)
                {
                  v108 = sub_1C9044E90(v122, v118, v121, v131);
                  goto LABEL_366;
                }

                v10 = *(v68 + 8 * v70);
                ++v13;
              }

              while (!v10);
              v13 = v70;
LABEL_214:
              v71 = __clz(__rbit64(v10));
              v10 &= v10 - 1;
              v72 = *(*(v11 + 48) + ((v13 << 9) | (8 * v71)));
              v148 = v11;
              v149 = v68;
              v150 = v126;
              v151 = v13;
              v152 = v10;
              v141[0] = v72;
              sub_1C9064D7C();
              v127 = v72 & 0x1FFFFFFFFFFFFFFFLL;

              TypeIdentifier.hash(into:)(v145);
              v7 = v145;
              v73 = sub_1C9064DBC();
              v74 = v131;
              v75 = -1 << *(v131 + 32);
              v76 = v73 & ~v75;
              v5 = v76 >> 6;
              v77 = 1 << v76;
              if (((1 << v76) & v132[v76 >> 6]) != 0)
              {
                break;
              }

LABEL_354:

              v68 = v124;
              v11 = v125;
              v69 = v123;
            }

            v130 = ~v75;
            v128 = v72;
            v129 = v72 & 0xE000000000000000;
            v78 = v72;
            while (2)
            {
              v7 = *(*(v74 + 48) + 8 * v76);
              switch(v7 >> 61)
              {
                case 1uLL:
                  if (v129 != 0x2000000000000000)
                  {
                    goto LABEL_264;
                  }

                  v7 &= 0x1FFFFFFFFFFFFFFFuLL;
                  v98 = *(v127 + 16);
                  v145[0] = *(v7 + 16);
                  v141[0] = v98;

                  if ((static TypeIdentifier.BuiltInTypeIdentifier.== infix(_:_:)(v145, v141) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_356;
                case 2uLL:
                  if (v129 != 0x4000000000000000)
                  {
                    goto LABEL_264;
                  }

                  v82 = v7 & 0x1FFFFFFFFFFFFFFFLL;
                  v83 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v84 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                  v7 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                  v85 = *(v82 + 40);
                  v86 = *(v127 + 32);
                  v87 = *(v127 + 40);
                  if (v83 != *(v127 + 16) || v84 != *(v127 + 24))
                  {
                    v89 = sub_1C9064C2C();
                    v78 = v128;
                    v74 = v131;
                    if ((v89 & 1) == 0)
                    {
                      goto LABEL_264;
                    }
                  }

                  if (v7 != v86 || v85 != v87)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_358;
                case 3uLL:
                  v7 &= 0x1FFFFFFFFFFFFFFFuLL;
                  memcpy(v146, (v7 + 16), 0x61uLL);
                  memcpy(__dst, (v7 + 120), 0x61uLL);
                  if (v129 != 0x6000000000000000)
                  {
                    goto LABEL_263;
                  }

                  v93 = *(v7 + 224);
                  v92 = *(v7 + 232);
                  memcpy(v145, (v127 + 16), sizeof(v145));
                  v94 = v146[0] == v145[0] && v146[1] == v145[1];
                  if (!v94 && (sub_1C9064C2C() & 1) == 0)
                  {
                    goto LABEL_263;
                  }

                  sub_1C8CEB10C(v146[2], v145[2]);
                  if ((v95 & 1) == 0)
                  {
                    goto LABEL_263;
                  }

                  v96 = v146[3] == v145[3] && v146[4] == v145[4];
                  if (!v96 && (sub_1C9064C2C() & 1) == 0)
                  {
                    goto LABEL_263;
                  }

                  if (v146[6])
                  {
                    if (!v145[6])
                    {
                      goto LABEL_263;
                    }

                    v97 = v146[5] == v145[5] && v146[6] == v145[6];
                    if (!v97 && (sub_1C9064C2C() & 1) == 0)
                    {
                      goto LABEL_263;
                    }
                  }

                  else if (v145[6])
                  {
                    goto LABEL_263;
                  }

                  if (LOBYTE(v146[7]) != LOBYTE(v145[7]))
                  {
                    goto LABEL_263;
                  }

                  if (v146[9])
                  {
                    if (!v145[9])
                    {
                      goto LABEL_263;
                    }

                    v99 = v146[8] == v145[8] && v146[9] == v145[9];
                    if (!v99 && (sub_1C9064C2C() & 1) == 0)
                    {
                      goto LABEL_263;
                    }
                  }

                  else if (v145[9])
                  {
                    goto LABEL_263;
                  }

                  v117 = v146[11];
                  v138[0] = v146[10];
                  v138[1] = v146[11];
                  v137[0] = v145[10];
                  v137[1] = v145[11];
                  swift_retain_n();

                  sub_1C8D3EFB8(v145, v141);
                  sub_1C8CC1340(v146, v141);
                  sub_1C8CC1340(v145, v141);

                  v100 = static ContainerDefinition.Device.== infix(_:_:)(v138, v137);

                  if ((v100 & 1) == 0)
                  {
                    sub_1C8CC15FC(v145);
                    sub_1C8CC15FC(v146);
                    goto LABEL_334;
                  }

                  LODWORD(v117) = LOBYTE(v146[12]);
                  v101 = LOBYTE(v145[12]);
                  sub_1C8CC15FC(v145);
                  sub_1C8CC15FC(v146);
                  if (v117 != v101)
                  {
                    goto LABEL_334;
                  }

                  v117 = __dst[0];
                  memcpy(v140, &__dst[2], sizeof(v140));
                  v115 = v145[13];
                  v116 = v145[14];
                  memcpy(v139, &v145[15], sizeof(v139));
                  if (__dst[1])
                  {
                    v141[0] = v117;
                    v141[1] = __dst[1];
                    v114 = __dst[1];
                    memcpy(&v141[2], &__dst[2], 0x51uLL);
                    memcpy(v138, v141, 0x61uLL);
                    if (!v116)
                    {
                      v104 = v114;
                      sub_1C8D7AE3C(__dst, v137, &qword_1EC312EF8, &unk_1C90839D0);
                      sub_1C8D7AE3C(&v145[13], v137, &qword_1EC312EF8, &unk_1C90839D0);
                      sub_1C8D7AE3C(v141, v137, &qword_1EC312EF8, &unk_1C90839D0);

                      memcpy(v137, v138, 0x61uLL);
                      sub_1C8CC15FC(v137);
                      v103 = v117;
                      goto LABEL_346;
                    }

                    memcpy(&v134[2], &v145[15], 0x51uLL);
                    v134[0] = v115;
                    v134[1] = v116;
                    sub_1C8D7AE3C(__dst, v133, &qword_1EC312EF8, &unk_1C90839D0);
                    sub_1C8D7AE3C(&v145[13], v133, &qword_1EC312EF8, &unk_1C90839D0);
                    sub_1C8D7AE3C(v141, v133, &qword_1EC312EF8, &unk_1C90839D0);
                    LODWORD(v116) = static ContainerDefinition.== infix(_:_:)(v138);
                    memcpy(v135, v134, 0x61uLL);
                    sub_1C8CC15FC(v135);
                    memcpy(v136, v138, 0x61uLL);
                    sub_1C8CC15FC(v136);
                    v137[0] = v117;
                    v137[1] = v114;
                    memcpy(&v137[2], v140, 0x51uLL);
                    sub_1C8D16D78(v137, &qword_1EC312EF8, &unk_1C90839D0);
                    if (v116)
                    {
                      goto LABEL_348;
                    }

LABEL_334:

LABEL_335:
                    sub_1C8D3F014(v145);
LABEL_262:

LABEL_263:
                    v74 = v131;
                    v78 = v128;
LABEL_264:
                    v76 = (v76 + 1) & v130;
                    v5 = v76 >> 6;
                    v77 = 1 << v76;
                    if ((v132[v76 >> 6] & (1 << v76)) == 0)
                    {
                      goto LABEL_354;
                    }

                    continue;
                  }

                  v103 = v117;
                  if (v116)
                  {
                    v104 = 0;
                    sub_1C8D7AE3C(__dst, v141, &qword_1EC312EF8, &unk_1C90839D0);
                    sub_1C8D7AE3C(&v145[13], v141, &qword_1EC312EF8, &unk_1C90839D0);

LABEL_346:
                    v141[0] = v103;
                    v141[1] = v104;
                    memcpy(&v141[2], v140, 0x51uLL);
                    v142 = v115;
                    v143 = v116;
                    memcpy(v144, v139, sizeof(v144));
                    sub_1C8D16D78(v141, &qword_1EC313988, &qword_1C906F410);
                    goto LABEL_335;
                  }

                  v141[0] = v117;
                  v141[1] = 0;
                  memcpy(&v141[2], &__dst[2], 0x51uLL);
                  sub_1C8D7AE3C(__dst, v138, &qword_1EC312EF8, &unk_1C90839D0);
                  sub_1C8D7AE3C(&v145[13], v138, &qword_1EC312EF8, &unk_1C90839D0);
                  sub_1C8D16D78(v141, &qword_1EC312EF8, &unk_1C90839D0);
LABEL_348:
                  if (v93 != v145[26] || v92 != v145[27])
                  {
                    v106 = sub_1C9064C2C();

                    sub_1C8D3F014(v145);
                    if (v106)
                    {
                      goto LABEL_356;
                    }

                    goto LABEL_262;
                  }

                  sub_1C8D3F014(v145);
LABEL_356:

LABEL_359:
                  v68 = v124;
                  v11 = v125;
                  v69 = v123;
                  v107 = v122[v5];
                  v122[v5] = v107 & ~v77;
                  if ((v107 & v77) == 0)
                  {
                    goto LABEL_209;
                  }

                  v67 = v121 - 1;
                  if (__OFSUB__(v121, 1))
                  {
                    __break(1u);
                  }

                  if (v121 == 1)
                  {

                    v108 = MEMORY[0x1E69E7CD0];
                    goto LABEL_366;
                  }

                  break;
                case 4uLL:
                  if (v129 != 0x8000000000000000)
                  {
                    goto LABEL_264;
                  }

                  if (*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *(v127 + 16) && *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *(v127 + 24))
                  {
                    goto LABEL_358;
                  }

LABEL_238:
                  v91 = sub_1C9064C2C();
                  v78 = v128;
                  v74 = v131;
                  if (v91)
                  {
                    goto LABEL_358;
                  }

                  goto LABEL_264;
                default:
                  if (v78 >> 61)
                  {
                    goto LABEL_264;
                  }

                  v79 = *(v7 + 16);
                  v80 = *(v78 + 16);
                  switch(*(v7 + 16))
                  {
                    case 0x17:
                      if (v80 != 23)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x18:
                      if (v80 != 24)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x19:
                      if (v80 != 25)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x1A:
                      if (v80 != 26)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x1B:
                      if (v80 != 27)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x1C:
                      if (v80 != 28)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x1D:
                      if (v80 != 29)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x1E:
                      if (v80 != 30)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x1F:
                      if (v80 != 31)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x20:
                      if (v80 != 32)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x21:
                      if (v80 != 33)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x22:
                      if (v80 != 34)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x23:
                      if (v80 != 35)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x24:
                      if (v80 != 36)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x25:
                      if (v80 != 37)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x26:
                      if (v80 != 38)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x27:
                      if (v80 != 39)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x28:
                      if (v80 != 40)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x29:
                      if (v80 != 41)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x2A:
                      if (v80 != 42)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x2B:
                      if (v80 != 43)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x2C:
                      if (v80 != 44)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x2D:
                      if (v80 != 45)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    case 0x2E:
                      if (v80 != 46)
                      {
                        goto LABEL_264;
                      }

                      goto LABEL_357;
                    default:
                      if ((v80 - 23) < 0x18)
                      {
                        goto LABEL_264;
                      }

                      if (v79 == 22)
                      {
                        if (v80 == 22)
                        {
                          goto LABEL_357;
                        }
                      }

                      else if (v80 != 22 && v79 == v80)
                      {
LABEL_357:

LABEL_358:

                        goto LABEL_359;
                      }

                      break;
                  }

                  goto LABEL_264;
              }

              break;
            }
          }
        }

LABEL_374:

        if (swift_stdlib_isStackAllocationSafe())
        {

          goto LABEL_207;
        }

        v110 = swift_slowAlloc();
        v111 = v120;
        v112 = sub_1C904912C(v110, v118, v132, v118, v35, v7, &v148);
        if (v111)
        {

          result = MEMORY[0x1CCA833A0](v110, -1, -1);
          __break(1u);
        }

        else
        {
          v108 = v112;

          MEMORY[0x1CCA833A0](v110, -1, -1);
          v11 = v148;
          v126 = v150;
LABEL_366:
          sub_1C8C9E7E4(v11);
          return v108;
        }

        return result;
      case 4uLL:
        if (v129 != 0x8000000000000000)
        {
          goto LABEL_118;
        }

        if (*((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == v128[2] && *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == v128[3])
        {
          goto LABEL_205;
        }

LABEL_36:
        v34 = sub_1C9064C2C();
        v19 = v131;
        if (v34)
        {
          goto LABEL_205;
        }

        goto LABEL_118;
      default:
        if (v127 >> 61)
        {
          goto LABEL_118;
        }

        v22 = *(v21 + 16);
        v23 = *(v127 + 16);
        switch(*(v21 + 16))
        {
          case 0x17:
            if (v23 == 23)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x18:
            if (v23 == 24)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x19:
            if (v23 == 25)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x1A:
            if (v23 == 26)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x1B:
            if (v23 == 27)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x1C:
            if (v23 == 28)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x1D:
            if (v23 == 29)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x1E:
            if (v23 == 30)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x1F:
            if (v23 == 31)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x20:
            if (v23 == 32)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x21:
            if (v23 == 33)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x22:
            if (v23 == 34)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x23:
            if (v23 == 35)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x24:
            if (v23 == 36)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x25:
            if (v23 == 37)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x26:
            if (v23 == 38)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x27:
            if (v23 == 39)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x28:
            if (v23 == 40)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x29:
            if (v23 == 41)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x2A:
            if (v23 == 42)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x2B:
            if (v23 == 43)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x2C:
            if (v23 == 44)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x2D:
            if (v23 == 45)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          case 0x2E:
            if (v23 == 46)
            {
              goto LABEL_204;
            }

            goto LABEL_118;
          default:
            if ((v23 - 23) < 0x18)
            {
              goto LABEL_118;
            }

            if (v22 == 22)
            {
              if (v23 != 22)
              {
                goto LABEL_118;
              }

LABEL_204:

LABEL_205:

              goto LABEL_206;
            }

            if (v23 != 22 && v22 == v23)
            {
              goto LABEL_204;
            }

LABEL_118:
            v7 = (v7 + 1) & v130;
            v5 = v7 >> 6;
            v11 = 1 << v7;
            if ((v132[v7 >> 6] & (1 << v7)) == 0)
            {
              goto LABEL_199;
            }

            break;
        }

        continue;
    }
  }
}

unint64_t sub_1C9047E24(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    result = sub_1C9064D6C();
    v16 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = 1 << (result & v16);
      if ((v19 & *(v11 + 8 * v18)) == 0)
      {
        break;
      }

      result = v17 + 1;
      if (*(*(a3 + 48) + 8 * v17) == v15)
      {
        v20 = v8[v18];
        v8[v18] = v20 & ~v19;
        if ((v20 & v19) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return MEMORY[0x1E69E7CD0];
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      return sub_1C9044CAC(v8, a2, v10, a3);
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C9047FA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v83 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v103 = a3;
  v89 = a3 + 56;
LABEL_2:
  v82 = v7;
LABEL_3:
  while (1)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_8:
    v11 = *(*(*v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
    v5[3] = v10;
    v5[4] = (v9 - 1) & v9;
    sub_1C9064D7C();
    v87 = v11;
    v88 = v11 >> 61;
    switch(v11 >> 61)
    {
      case 1uLL:
        v20 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1CCA82810](1);
        switch(v20)
        {
          case 0:
            v21 = 0;
            goto LABEL_43;
          case 1:
            v21 = 1;
            goto LABEL_43;
          case 2:
            v21 = 2;
            goto LABEL_43;
          case 3:
            v21 = 3;
            goto LABEL_43;
          case 4:
            v21 = 4;
            goto LABEL_43;
          case 5:
            v21 = 5;
            goto LABEL_43;
          case 6:
            v21 = 6;
            goto LABEL_43;
          case 7:
            v21 = 7;
            goto LABEL_43;
          case 8:
            v21 = 8;
            goto LABEL_43;
          case 9:
            v21 = 9;
            goto LABEL_43;
          case 10:
            v21 = 10;
            goto LABEL_43;
          case 11:
            v21 = 11;
            goto LABEL_43;
          case 12:
            v21 = 12;
            goto LABEL_43;
          case 13:
            v21 = 13;
            goto LABEL_43;
          case 14:
            v21 = 14;
            goto LABEL_43;
          case 15:
            v21 = 16;
LABEL_43:
            MEMORY[0x1CCA82810](v21);
            goto LABEL_44;
          default:
            v71 = *(v20 + 16);
            MEMORY[0x1CCA82810](15);
            v100[0] = v71;

            TypeIdentifier.hash(into:)(v95);
            goto LABEL_45;
        }

      case 2uLL:
        MEMORY[0x1CCA82810](2);

        sub_1C9063FBC();
        goto LABEL_27;
      case 3uLL:
        v13 = v11 & 0x1FFFFFFFFFFFFFFFLL;
        v14 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v76 = *(v13 + 72);
        v16 = *(v13 + 88);
        v17 = *(v13 + 104);
        v79 = *(v13 + 112);
        v75 = *(v13 + 120);
        v77 = *(v13 + 128);
        memcpy(__dst, (v13 + 136), 0x51uLL);
        MEMORY[0x1CCA82810](3);

        sub_1C9063FBC();
        v18 = *(v14 + 16);
        MEMORY[0x1CCA82810](v18);
        if (v18)
        {
          v19 = v14 + 40;
          do
          {

            sub_1C9063FBC();

            v19 += 16;
            --v18;
          }

          while (v18);
        }

        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v15)
        {
          sub_1C9063FBC();
        }

        v11 = v87;
        MEMORY[0x1CCA82810](v76);
        sub_1C9064D9C();
        if (v16)
        {
          sub_1C9063FBC();
        }

        if (v17)
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        MEMORY[0x1CCA82810](v79);
        if (v77)
        {
          __src[0] = v75;
          __src[1] = v77;
          memcpy(&__src[2], __dst, 0x51uLL);
          memcpy(v102, __src, 0x61uLL);
          sub_1C9064D9C();
          sub_1C8CC1340(__src, v100);
          ContainerDefinition.hash(into:)(v95);
          memcpy(v100, v102, 0x61uLL);
          sub_1C8CC15FC(v100);
        }

        else
        {
          sub_1C9064D9C();
        }

        goto LABEL_27;
      case 4uLL:
        MEMORY[0x1CCA82810](4);

LABEL_27:
        sub_1C9063FBC();
        break;
      default:
        v12 = *(v11 + 16);
        MEMORY[0x1CCA82810](0);
        LOBYTE(v100[0]) = v12;
        TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
LABEL_44:

        break;
    }

LABEL_45:
    v22 = sub_1C9064DBC();
    v23 = -1 << *(v103 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    v26 = 1 << v24;
    if (((1 << v24) & *(v89 + 8 * (v24 >> 6))) != 0)
    {
      v27 = ~v23;
      v28 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
      v29 = v88;
      while (2)
      {
        v30 = *(*(v103 + 48) + 8 * v24);
        switch(v30 >> 61)
        {
          case 1uLL:
            if (v29 != 1)
            {
              goto LABEL_151;
            }

            v54 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v55 = v28[2];
            switch(v54)
            {
              case 0uLL:
                if (v55)
                {
                  goto LABEL_148;
                }

                goto LABEL_245;
              case 1uLL:
                if (v55 == 1)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 2uLL:
                if (v55 == 2)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 3uLL:
                if (v55 == 3)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 4uLL:
                if (v55 == 4)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 5uLL:
                if (v55 == 5)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 6uLL:
                if (v55 == 6)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 7uLL:
                if (v55 == 7)
                {
                  goto LABEL_245;
                }

                goto LABEL_148;
              case 8uLL:
                if (v55 != 8)
                {
                  goto LABEL_148;
                }

LABEL_245:

                sub_1C8D3F130(v54);
                sub_1C8D3F130(v54);
                goto LABEL_246;
              case 9uLL:
                if (v55 != 9)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(9uLL);
                v72 = 9;
                goto LABEL_248;
              case 0xAuLL:
                if (v55 != 10)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(0xAuLL);
                v72 = 10;
                goto LABEL_248;
              case 0xBuLL:
                if (v55 != 11)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(0xBuLL);
                v72 = 11;
                goto LABEL_248;
              case 0xCuLL:
                if (v55 != 12)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(0xCuLL);
                v72 = 12;
                goto LABEL_248;
              case 0xDuLL:
                if (v55 != 13)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(0xDuLL);
                v72 = 13;
                goto LABEL_248;
              case 0xEuLL:
                if (v55 != 14)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(0xEuLL);
                v72 = 14;
                goto LABEL_248;
              case 0xFuLL:
                if (v55 != 15)
                {
                  goto LABEL_148;
                }

                sub_1C8D3F130(0xFuLL);
                v72 = 15;
LABEL_248:
                sub_1C8D3F130(v72);

                goto LABEL_249;
              default:
                if (v55 >= 0x10)
                {
                  v57 = *(v55 + 16);
                  v100[0] = *(v54 + 16);
                  __src[0] = v57;

                  sub_1C8D3F120(v55);

                  sub_1C8D3F120(v55);
                  sub_1C8D3F120(v54);
                  v58 = static TypeIdentifier.== infix(_:_:)(v100, __src);
                  sub_1C8D3F130(v54);
                  sub_1C8D3F130(v55);

                  sub_1C8D3F130(v55);
                  if (v58)
                  {
                    goto LABEL_246;
                  }
                }

                else
                {
LABEL_148:
                  sub_1C8D3F120(v28[2]);
                  sub_1C8D3F120(v54);

                  sub_1C8D3F130(v54);
                  sub_1C8D3F130(v55);
                }

                break;
            }

            goto LABEL_149;
          case 2uLL:
            if (v29 != 2)
            {
              goto LABEL_151;
            }

            v34 = v30 & 0x1FFFFFFFFFFFFFFFLL;
            v35 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v36 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v37 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v38 = *(v34 + 40);
            v39 = v28[4];
            v40 = v28[5];
            if (v35 != v28[2] || v36 != v28[3])
            {
              v42 = sub_1C9064C2C();
              v29 = v88;
              if ((v42 & 1) == 0)
              {
                goto LABEL_151;
              }
            }

            if (v37 != v39 || v38 != v40)
            {
              goto LABEL_69;
            }

            goto LABEL_249;
          case 3uLL:
            v45 = (v30 & 0x1FFFFFFFFFFFFFFFLL);
            memcpy(__dst, v45 + 2, 0x61uLL);
            memcpy(v102, v45 + 15, 0x61uLL);
            v29 = v88;
            if (v88 != 3)
            {
              goto LABEL_151;
            }

            v85 = v45[29];
            v86 = v45[28];
            memcpy(v100, v28 + 2, sizeof(v100));
            result = __dst[0];
            if (__dst[0] != v100[0] || __dst[1] != v100[1])
            {
              result = sub_1C9064C2C();
              if ((result & 1) == 0)
              {
                goto LABEL_150;
              }
            }

            v47 = *(__dst[2] + 16);
            if (v47 != *(v100[2] + 16))
            {
              goto LABEL_150;
            }

            if (v47)
            {
              v48 = __dst[2] == v100[2];
            }

            else
            {
              v48 = 1;
            }

            if (v48)
            {
              goto LABEL_90;
            }

            v49 = (__dst[2] + 40);
            v50 = (v100[2] + 40);
            do
            {
              if (!v47)
              {
                goto LABEL_258;
              }

              result = *(v49 - 1);
              if (result != *(v50 - 1) || *v49 != *v50)
              {
                result = sub_1C9064C2C();
                if ((result & 1) == 0)
                {
                  goto LABEL_150;
                }
              }

              v49 += 2;
              v50 += 2;
              --v47;
            }

            while (v47);
LABEL_90:
            v52 = __dst[3] == v100[3] && __dst[4] == v100[4];
            if (!v52 && (sub_1C9064C2C() & 1) == 0)
            {
              goto LABEL_150;
            }

            if (!__dst[6])
            {
              if (!v100[6])
              {
                goto LABEL_108;
              }

LABEL_150:
              v29 = v88;
LABEL_151:
              v24 = (v24 + 1) & v27;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if ((*(v89 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
              {
                goto LABEL_242;
              }

              continue;
            }

            if (!v100[6])
            {
              goto LABEL_150;
            }

            v53 = __dst[5] == v100[5] && __dst[6] == v100[6];
            if (!v53 && (sub_1C9064C2C() & 1) == 0)
            {
              goto LABEL_150;
            }

LABEL_108:
            if (LOBYTE(__dst[7]) != LOBYTE(v100[7]))
            {
              goto LABEL_150;
            }

            if (__dst[9])
            {
              if (!v100[9])
              {
                goto LABEL_150;
              }

              v56 = __dst[8] == v100[8] && __dst[9] == v100[9];
              if (!v56 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_150;
              }
            }

            else if (v100[9])
            {
              goto LABEL_150;
            }

            if (__dst[11])
            {
              if (!v100[11])
              {
                goto LABEL_222;
              }

              if (__dst[10] == v100[10] && __dst[11] == v100[11])
              {
                swift_retain_n();

                sub_1C8D3EFB8(v100, __src);
                sub_1C8CC1340(__dst, __src);
                sub_1C8CC1340(v100, __src);
              }

              else
              {
                v60 = sub_1C9064C2C();
                swift_retain_n();

                sub_1C8D3EFB8(v100, __src);
                sub_1C8CC1340(__dst, __src);
                sub_1C8CC1340(v100, __src);
                if ((v60 & 1) == 0)
                {
                  sub_1C8CC15FC(v100);
                  sub_1C8CC15FC(__dst);
                  goto LABEL_229;
                }
              }
            }

            else
            {
              if (v100[11])
              {

LABEL_222:

                goto LABEL_150;
              }

              swift_retain_n();

              sub_1C8D3EFB8(v100, __src);
              sub_1C8CC1340(__dst, __src);
              sub_1C8CC1340(v100, __src);
              swift_bridgeObjectRelease_n();
            }

            v62 = LOBYTE(__dst[12]);
            v63 = LOBYTE(v100[12]);
            sub_1C8CC15FC(v100);
            sub_1C8CC15FC(__dst);
            if (v62 != v63)
            {
LABEL_229:

LABEL_234:
              sub_1C8D3F014(v100);
LABEL_149:

              goto LABEL_150;
            }

            v64 = v102[0];
            memcpy(v97, &v102[2], sizeof(v97));
            v80 = v100[13];
            memcpy(v96, &v100[15], sizeof(v96));
            if (!v102[1])
            {
              if (!v100[14])
              {
                __src[0] = v102[0];
                __src[1] = 0;
                memcpy(&__src[2], &v102[2], 0x51uLL);
                sub_1C8D7AE3C(v102, v95, &qword_1EC312EF8, &unk_1C90839D0);
                sub_1C8D7AE3C(&v100[13], v95, &qword_1EC312EF8, &unk_1C90839D0);
                sub_1C8D16D78(__src, &qword_1EC312EF8, &unk_1C90839D0);
                goto LABEL_236;
              }

              v65 = v100[14];
              v67 = 0;
              v68 = v102[0];
              sub_1C8D7AE3C(v102, __src, &qword_1EC312EF8, &unk_1C90839D0);
              sub_1C8D7AE3C(&v100[13], __src, &qword_1EC312EF8, &unk_1C90839D0);

              goto LABEL_233;
            }

            __src[0] = v102[0];
            __src[1] = v102[1];
            v78 = v102[1];
            memcpy(&__src[2], &v102[2], 0x51uLL);
            memcpy(v95, __src, 0x61uLL);
            v65 = v100[14];
            if (!v100[14])
            {
              v67 = v102[1];
              v68 = v102[0];
              sub_1C8D7AE3C(v102, v94, &qword_1EC312EF8, &unk_1C90839D0);
              sub_1C8D7AE3C(&v100[13], v94, &qword_1EC312EF8, &unk_1C90839D0);
              sub_1C8D7AE3C(__src, v94, &qword_1EC312EF8, &unk_1C90839D0);

              memcpy(v94, v95, 0x61uLL);
              sub_1C8CC15FC(v94);
LABEL_233:
              __src[0] = v68;
              __src[1] = v67;
              memcpy(&__src[2], v97, 0x51uLL);
              __src[13] = v80;
              __src[14] = v65;
              memcpy(v99, v96, sizeof(v99));
              sub_1C8D16D78(__src, &qword_1EC313988, &qword_1C906F410);
              goto LABEL_234;
            }

            memcpy(&v91[2], &v100[15], 0x51uLL);
            v91[0] = v100[13];
            v91[1] = v100[14];
            sub_1C8D7AE3C(v102, v90, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D7AE3C(&v100[13], v90, &qword_1EC312EF8, &unk_1C90839D0);
            sub_1C8D7AE3C(__src, v90, &qword_1EC312EF8, &unk_1C90839D0);
            v66 = static ContainerDefinition.== infix(_:_:)(v95);
            memcpy(v92, v91, 0x61uLL);
            sub_1C8CC15FC(v92);
            memcpy(v93, v95, 0x61uLL);
            sub_1C8CC15FC(v93);
            v94[0] = v64;
            v94[1] = v78;
            memcpy(&v94[2], v97, 0x51uLL);
            sub_1C8D16D78(v94, &qword_1EC312EF8, &unk_1C90839D0);
            if ((v66 & 1) == 0)
            {
              goto LABEL_229;
            }

LABEL_236:
            if (v86 != v100[26] || v85 != v100[27])
            {
              v70 = sub_1C9064C2C();

              sub_1C8D3F014(v100);
              if (v70)
              {
                goto LABEL_246;
              }

              goto LABEL_149;
            }

            sub_1C8D3F014(v100);
LABEL_246:

LABEL_250:
            v5 = a5;
            v73 = v83[v25];
            v83[v25] = v73 & ~v26;
            if ((v73 & v26) == 0)
            {
              goto LABEL_3;
            }

            v7 = v82 - 1;
            if (__OFSUB__(v82, 1))
            {
              goto LABEL_259;
            }

            if (v82 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            break;
          case 4uLL:
            if (v29 != 4)
            {
              goto LABEL_151;
            }

            if (*((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == v28[2] && *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == v28[3])
            {
              goto LABEL_249;
            }

LABEL_69:
            v44 = sub_1C9064C2C();
            v29 = v88;
            if (v44)
            {
              goto LABEL_249;
            }

            goto LABEL_151;
          default:
            if (v29)
            {
              goto LABEL_151;
            }

            v31 = *(v30 + 16);
            v32 = *(v87 + 16);
            switch(*(v30 + 16))
            {
              case 0x17:
                if (v32 == 23)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x18:
                if (v32 == 24)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x19:
                if (v32 == 25)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x1A:
                if (v32 == 26)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x1B:
                if (v32 == 27)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x1C:
                if (v32 == 28)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x1D:
                if (v32 == 29)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x1E:
                if (v32 == 30)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x1F:
                if (v32 == 31)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x20:
                if (v32 == 32)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x21:
                if (v32 == 33)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x22:
                if (v32 == 34)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x23:
                if (v32 == 35)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x24:
                if (v32 == 36)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x25:
                if (v32 == 37)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x26:
                if (v32 == 38)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x27:
                if (v32 == 39)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x28:
                if (v32 == 40)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x29:
                if (v32 == 41)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x2A:
                if (v32 == 42)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x2B:
                if (v32 == 43)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x2C:
                if (v32 == 44)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x2D:
                if (v32 == 45)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              case 0x2E:
                if (v32 == 46)
                {
                  goto LABEL_244;
                }

                goto LABEL_151;
              default:
                if ((v32 - 23) < 0x18)
                {
                  goto LABEL_151;
                }

                if (v31 == 22)
                {
                  if (v32 == 22)
                  {
                    goto LABEL_244;
                  }
                }

                else if (v32 != 22 && v31 == v32)
                {
LABEL_244:

LABEL_249:

                  goto LABEL_250;
                }

                break;
            }

            goto LABEL_151;
        }

        goto LABEL_2;
      }
    }

LABEL_242:

    v5 = a5;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= ((v5[2] + 64) >> 6))
    {
      v5[3] = v8;
      v5[4] = 0;
      v74 = v103;

      return sub_1C9044E90(v83, a2, v82, v74);
    }

    v9 = *(v5[1] + 8 * v10);
    ++v8;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
  return result;
}

unint64_t sub_1C90490A4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1C9047E24(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1C904912C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1C9047FA0(a1, a2, a5, a6, a7);

  return v12;
}

void sub_1C90491B4(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_1C8D8D444();
    v9 = v10;
  }

  *a3 = *(*(v9 + 48) + 8 * a1);
  sub_1C8F20154();
  *v4 = v10;
}

unint64_t sub_1C9049278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E9C0;
  if (!qword_1EC31E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E9C0);
  }

  return result;
}

unint64_t sub_1C90492CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E9D8;
  if (!qword_1EC31E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E9D8);
  }

  return result;
}

uint64_t sub_1C9049320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9049368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.Version(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C90493EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C9049278(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C9049414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C90492CC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C9049440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA10;
  if (!qword_1EC31EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA10);
  }

  return result;
}

unint64_t sub_1C9049498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA18;
  if (!qword_1EC31EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA18);
  }

  return result;
}

void OUTLINED_FUNCTION_66_14(uint64_t a1@<X8>)
{
  *(v1 - 272) = a1;
  *(v1 - 304) = 0;
  *(v1 - 296) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_68_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEE6A288](&a9, v9, v10);
}

void OUTLINED_FUNCTION_82_8()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_113_9(uint64_t a1)
{

  return sub_1C9063E9C();
}

uint64_t OUTLINED_FUNCTION_115_8(unint64_t *a1)
{

  return sub_1C8D28184(a1, v3, v2, v1);
}

void OUTLINED_FUNCTION_116_11()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_141_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_142_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 232) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 264));
}

uint64_t *OUTLINED_FUNCTION_144_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

uint64_t *OUTLINED_FUNCTION_145_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 128));
}

uint64_t *OUTLINED_FUNCTION_146_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 176));
}

uint64_t sub_1C9049768@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C90497C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1C9049828@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_1C9049854@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t TriggerDefinition.init(id:name:description:parameters:outputType:runtimeRequirements:flags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v11 = *a8;
  v12 = *a11;
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a10;
  a9[8] = v11;
  a9[9] = v12;
  return result;
}

uint64_t TriggerFlag.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1C8D00CA4();
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_90();
    v2 = v17;
  }

  OUTLINED_FUNCTION_7_52();
  v5 = v2 + 16 * v4;
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = v6;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v2 = v18;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v2 = v19;
    }

    OUTLINED_FUNCTION_7_52();
    v8 = v2 + 16 * v7;
    *(v8 + 32) = 0xD000000000000015;
    *(v8 + 40) = v9;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v2 = v20;
    }

    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90();
      v2 = v21;
    }

    OUTLINED_FUNCTION_7_52();
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0xD000000000000010;
    *(v11 + 40) = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8D3A5F4();
  v13 = sub_1C9063E9C();
  v15 = v14;

  MEMORY[0x1CCA81A90](v13, v15);

  MEMORY[0x1CCA81A90](93, 0xE100000000000000);
  return 91;
}

ToolKit::TriggerFlag sub_1C9049BD4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = TriggerFlag.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C9049C14@<X0>(uint64_t *a1@<X8>)
{
  result = TriggerFlag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t TriggerDefinition.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;

  return v6;
}

uint64_t TriggerDefinition.name.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);

  return v6;
}

uint64_t TriggerDefinition.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);

  return v6;
}

uint64_t TriggerDefinition.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000016, 0x80000001C90D0D50);
  MEMORY[0x1CCA81A90](v1, v2);
  MEMORY[0x1CCA81A90](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1CCA81A90](v3, v4);
  MEMORY[0x1CCA81A90](0x656D61726170202CLL, 0xEE00203A73726574);
  v6 = MEMORY[0x1CCA81C30](v5, &type metadata for ParameterDefinition);
  MEMORY[0x1CCA81A90](v6);

  MEMORY[0x1CCA81A90](0x74757074756F202CLL, 0xEE00203A65707954);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 0;
}

uint64_t static TriggerDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v19 = a1[9];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  v16 = a2[8];
  v17 = a1[8];
  v18 = a2[9];
  if (!v10 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }

    v12 = v3 == v9 && v5 == v8;
    if (!v12 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_1C8CEB63C() & 1) != 0 && (sub_1C8CEB710())
  {
    v20 = v16;
    v21 = v17;

    static TypeInstance.== infix(_:_:)(&v21, &v20);
    v14 = v13;

    return v14 & (v19 == v18);
  }

  return 0;
}

uint64_t sub_1C9049FF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C90CAB00 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x795474757074756FLL && a2 == 0xEA00000000006570;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9064C2C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C904A230(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x795474757074756FLL;
      break;
    case 6:
      result = 0x7367616C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C904A304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9049FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C904A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904AEA8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C904A368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904AEA8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t TriggerDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EA20, &qword_1C90C6798);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = v1[2];
  v33 = v1[3];
  v34 = v9;
  v10 = v1[4];
  v31 = v1[5];
  v32 = v10;
  v11 = v1[6];
  v29 = v1[7];
  v30 = v11;
  v12 = v1[8];
  v27 = v1[9];
  v28 = v12;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C904AEA8(v13, v14, v15);
  sub_1C9064E1C();
  LOBYTE(v37) = 0;
  v16 = v35;
  sub_1C9064B2C();
  if (!v16)
  {
    v18 = v29;
    v17 = v30;
    LOBYTE(v37) = 1;
    OUTLINED_FUNCTION_6_46();
    sub_1C9064B2C();
    LOBYTE(v37) = 2;
    OUTLINED_FUNCTION_6_46();
    sub_1C9064ADC();
    v37 = v17;
    v36 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E28C74(&qword_1EDA62DB8, sub_1C8E283A8);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_6_46();
    sub_1C9064B8C();
    v37 = v18;
    v36 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C904AEFC(&qword_1EDA66790, sub_1C8D22030);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_6_46();
    v19 = sub_1C9064B8C();
    v37 = v28;
    v36 = 5;
    v22 = sub_1C8CA6D90(v19, v20, v21);

    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_6_46();
    sub_1C9064B8C();

    if (!v22)
    {
      v37 = v27;
      v36 = 6;
      sub_1C904AF64(v23, v24, v25);
      OUTLINED_FUNCTION_4_59();
      OUTLINED_FUNCTION_6_46();
      sub_1C9064B8C();
    }
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t TriggerDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C9063FBC();
  }

  sub_1C8D03800();
  sub_1C8D02E34();
  TypeInstance.hash(into:)();
  return MEMORY[0x1CCA82810](v3);
}

uint64_t TriggerDefinition.hashValue.getter()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 72);
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v1)
  {
    sub_1C9063FBC();
  }

  sub_1C8D03800();
  sub_1C8D02E34();
  TypeInstance.hash(into:)();
  MEMORY[0x1CCA82810](v3);
  return sub_1C9064DBC();
}

uint64_t TriggerDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EA38, &qword_1C90C67A0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C904AEA8(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_75();
  v9 = sub_1C9064A0C();
  v11 = v10;
  OUTLINED_FUNCTION_2_75();
  v27 = sub_1C9064A0C();
  v30 = v12;
  LOBYTE(v32[0]) = 2;
  OUTLINED_FUNCTION_2_75();
  v26 = sub_1C90649AC();
  v29 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
  sub_1C8E28C74(&qword_1EDA62DB0, sub_1C8E28CDC);
  OUTLINED_FUNCTION_165_5();
  sub_1C9064A6C();
  v25 = v32[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
  sub_1C904AEFC(&qword_1EDA66788, sub_1C8D21FDC);
  OUTLINED_FUNCTION_165_5();
  v14 = sub_1C9064A6C();
  v28 = v32[0];
  sub_1C8CAC450(v14, v15, v16);
  OUTLINED_FUNCTION_165_5();
  v17 = sub_1C9064A6C();
  v24 = v32[0];
  v33 = 6;
  sub_1C904AFB8(v17, v18, v19);
  OUTLINED_FUNCTION_165_5();
  sub_1C9064A6C();
  v20 = OUTLINED_FUNCTION_0_85();
  v21(v20);
  v23 = v34;
  __src[0] = v9;
  __src[1] = v11;
  __src[2] = v27;
  __src[3] = v30;
  __src[4] = v26;
  __src[5] = v29;
  __src[6] = v32[0];
  __src[7] = v32[0];
  __src[8] = v32[0];
  __src[9] = v34;
  memcpy(a2, __src, 0x50uLL);
  sub_1C904B00C(__src, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v11;
  v32[2] = v27;
  v32[3] = v30;
  v32[4] = v26;
  v32[5] = v29;
  v32[6] = v25;
  v32[7] = v28;
  v32[8] = v24;
  v32[9] = v23;
  return sub_1C8EE3B1C(v32);
}

uint64_t sub_1C904AE0C(uint64_t a1)
{
  sub_1C9064D7C();
  TriggerDefinition.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C904AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = TriggerDefinition.id.getter(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

unint64_t sub_1C904AEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA28;
  if (!qword_1EC31EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA28);
  }

  return result;
}

uint64_t sub_1C904AEFC(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD0, &qword_1C90921D8);
    v5 = a2();
    result = OUTLINED_FUNCTION_11_21(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C904AF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA30;
  if (!qword_1EC31EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA30);
  }

  return result;
}

unint64_t sub_1C904AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA40;
  if (!qword_1EC31EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA40);
  }

  return result;
}

unint64_t sub_1C904B048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA48;
  if (!qword_1EC31EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA48);
  }

  return result;
}

unint64_t sub_1C904B0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA50;
  if (!qword_1EC31EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA50);
  }

  return result;
}

unint64_t sub_1C904B0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA58;
  if (!qword_1EC31EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA58);
  }

  return result;
}

unint64_t sub_1C904B14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA60;
  if (!qword_1EC31EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA60);
  }

  return result;
}

unint64_t sub_1C904B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA68;
  if (!qword_1EC31EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C904B2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA70;
  if (!qword_1EC31EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA70);
  }

  return result;
}

unint64_t sub_1C904B350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA78;
  if (!qword_1EC31EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA78);
  }

  return result;
}

unint64_t sub_1C904B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA80;
  if (!qword_1EC31EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA80);
  }

  return result;
}

uint64_t sub_1C904B548(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v7 - v4, v5, v2);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_1C904B678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6465746365707865 && a2 == 0xEE00746C75736552)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C904B7D4(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x6465746365707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C904B864(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EAD8, &qword_1C90C70D8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C904C3AC(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  OUTLINED_FUNCTION_1_2();
  sub_1C9064B1C();
  if (!v1)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064B1C();
    v13[13] = 2;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064ADC();
    v13[12] = 3;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064ADC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C904B9F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EAD0, &qword_1C90C70D0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C904C3AC(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = 0;
  OUTLINED_FUNCTION_3_3();
  v14 = sub_1C90649FC();
  v16 = v15;
  v36 = 1;
  OUTLINED_FUNCTION_3_3();
  v17 = sub_1C90649FC();
  v29 = v18;
  v30 = v17;
  v31 = v14;
  v35 = 2;
  OUTLINED_FUNCTION_3_3();
  v19 = sub_1C90649AC();
  v21 = v20;
  v28 = v19;
  v34 = 3;
  OUTLINED_FUNCTION_3_3();
  v22 = sub_1C90649AC();
  v23 = v10;
  v25 = v24;
  (*(v7 + 8))(v23, v5);
  v33 = v16 & 1;
  v32 = v29 & 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v31;
  *(a2 + 8) = v33;
  *(a2 + 16) = v30;
  *(a2 + 24) = v32;
  *(a2 + 32) = v28;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v25;
  return result;
}

uint64_t sub_1C904BC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C904B678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C904BC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904C3AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C904BCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904C3AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C904BCE8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C904B9F4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

double sub_1C904BD44@<D0>(_OWORD *a1@<X8>)
{
  sub_1C904BD84(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_1C904BD84@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EC3120C0 != -1)
  {
    OUTLINED_FUNCTION_3_61(&qword_1EC3120C0);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390F68);
  v4 = sub_1C9062E5C();
  v24 = sub_1C8E29308(v4, v5);
  v7 = v6;

  if (qword_1EC3120C8 != -1)
  {
    OUTLINED_FUNCTION_2_76(&qword_1EC3120C8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390F80);
  v8 = sub_1C9062E5C();
  v10 = sub_1C8E29308(v8, v9);
  v12 = v11;

  if (qword_1EC3120D0 != -1)
  {
    OUTLINED_FUNCTION_1_82(&qword_1EC3120D0);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390F98);
  v13 = sub_1C9062E5C();
  v15 = sub_1C8E293EC(v13, v14);
  v17 = v16;

  if (qword_1EC3120D8 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_1EC3120D8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390FB0);
  v18 = sub_1C9062E5C();
  v20 = sub_1C8E293EC(v18, v19);
  v22 = v21;

  *a2 = v24;
  *(a2 + 8) = v7 & 1;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  return result;
}

uint64_t sub_1C904BF84()
{
  if (qword_1EC3120C0 != -1)
  {
    OUTLINED_FUNCTION_3_61(&qword_1EC3120C0);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390F68);
  v2 = sub_1C9062E5C();
  v8 = v2;
  v9 = v3;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_10_49();
  }

  OUTLINED_FUNCTION_6_47(v2, v3, v8, v9, v4, v5, v6, v7, v27, v29, v30, v31, v32, v33, v34, v35);
  if (qword_1EC3120C8 != -1)
  {
    OUTLINED_FUNCTION_2_76(&qword_1EC3120C8);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390F80);
  v10 = sub_1C9062E5C();
  v16 = v10;
  v17 = v11;
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_10_49();
  }

  OUTLINED_FUNCTION_6_47(v10, v11, v16, v17, v12, v13, v14, v15, v28, v29, v30, v31, v32, v33, v34, v35);
  if (qword_1EC3120D0 != -1)
  {
    OUTLINED_FUNCTION_1_82(&qword_1EC3120D0);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390F98);
  sub_1C9062E5C();
  v37 = *(v0 + 32);
  v18 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v19 = MEMORY[0x1E69A0138];
    v20 = MEMORY[0x1E69E6158];
    v21 = v37;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v31 = v21;
  v32 = v18;
  v34 = v20;
  v35 = v19;
  sub_1C8D29F88(&v37, &v36);
  sub_1C9062BFC();
  if (qword_1EC3120D8 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_1EC3120D8);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390FB0);
  sub_1C9062E5C();
  v36 = *(v0 + 48);
  v22 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v23 = MEMORY[0x1E69A0138];
    v24 = MEMORY[0x1E69E6158];
    v25 = v36;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v31 = v25;
  v32 = v22;
  v34 = v24;
  v35 = v23;
  sub_1C8D29F88(&v36, &v29);
  return sub_1C9062BFC();
}

uint64_t sub_1C904C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC31EA88;

  return v5;
}

uint64_t sub_1C904C228(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C904C3AC(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C904C2A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319DD0, &unk_1C90A7A40);
  __swift_allocate_value_buffer(v3, qword_1EDA6E830);
  OUTLINED_FUNCTION_10(v3, qword_1EDA6E830);
  v4 = sub_1C90623FC();
  v5 = __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v8 = sub_1C8D24988(v5, v6, v7);
  sub_1C8F33BD8(v8, v9, v10);
  sub_1C906251C();
  return sub_1C8DD1ED0(v2);
}

unint64_t sub_1C904C3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EA98;
  if (!qword_1EC31EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EA98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SampleInvocationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C904C4DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1C904C530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1C904C5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAA0;
  if (!qword_1EC31EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAA0);
  }

  return result;
}

unint64_t sub_1C904C600(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D922EC(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C904C640(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D92158(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C904C694(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C904C640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAA8;
  if (!qword_1EC31EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAA8);
  }

  return result;
}

unint64_t sub_1C904C694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAB0;
  if (!qword_1EC31EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAB0);
  }

  return result;
}

unint64_t sub_1C904C6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAB8;
  if (!qword_1EC31EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAB8);
  }

  return result;
}

unint64_t sub_1C904C744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAC0;
  if (!qword_1EC31EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAC0);
  }

  return result;
}

unint64_t sub_1C904C79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAC8;
  if (!qword_1EC31EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAC8);
  }

  return result;
}

uint64_t sub_1C904C800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C904C8C8(char a1)
{
  if (a1)
  {
    return 0x656E6961746E6F63;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_1C904C904(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB20, &unk_1C90C7310);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C904D250(v11, v12, v13);
  sub_1C9064E1C();
  v17 = 0;
  sub_1C9064B9C();
  if (!v3)
  {
    v16 = 1;
    sub_1C9064B9C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C904CA64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB18, &qword_1C90C7308);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = a1[3];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1C904D250(v10, v11, v12);
  sub_1C9064DEC();
  if (!v1)
  {
    v14[15] = 0;
    v9 = sub_1C9064A7C();
    v14[14] = 1;
    sub_1C9064A7C();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1C904CC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C904C800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C904CC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904D250(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C904CC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904D250(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C904CCA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C904CA64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C904CCF0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C904CD18(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C904CD18(uint64_t a1)
{
  if (qword_1EC3120E8 != -1)
  {
    OUTLINED_FUNCTION_1_83(&qword_1EC3120E8);
  }

  v1 = sub_1C9062E6C();
  __swift_project_value_buffer(v1, qword_1EC390FC8);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v3 = v2;

  if (qword_1EDA62B80 != -1)
  {
    OUTLINED_FUNCTION_53_0(&qword_1EDA62B80);
  }

  __swift_project_value_buffer(v1, qword_1EDA6E7D8);
  sub_1C9062E5C();
  sub_1C8E2B4F8();

  return v3;
}

uint64_t sub_1C904CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C90430CC(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C904CF30()
{
  if (qword_1EC3120E8 != -1)
  {
    OUTLINED_FUNCTION_1_83(&qword_1EC3120E8);
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EC390FC8);
  v1 = sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0(v1, v2, v1, v2, v3);
  if (qword_1EDA62B80 != -1)
  {
    OUTLINED_FUNCTION_53_0(&qword_1EDA62B80);
  }

  __swift_project_value_buffer(v0, qword_1EDA6E7D8);
  v4 = sub_1C9062E5C();
  return OUTLINED_FUNCTION_5_0(v4, v5, v4, v5, v6);
}

unint64_t sub_1C904D02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAF0;
  if (!qword_1EC31EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAF0);
  }

  return result;
}

unint64_t sub_1C904D084(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C904D0C4(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C90430CC(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C904D118(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C904D16C(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C904D0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EAF8;
  if (!qword_1EC31EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EAF8);
  }

  return result;
}

unint64_t sub_1C904D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB00;
  if (!qword_1EC31EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB00);
  }

  return result;
}

unint64_t sub_1C904D16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB08;
  if (!qword_1EC31EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB08);
  }

  return result;
}

unint64_t sub_1C904D1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB10;
  if (!qword_1EC31EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB10);
  }

  return result;
}

uint64_t sub_1C904D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC31EAE0;

  return v5;
}

unint64_t sub_1C904D250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62B98;
  if (!qword_1EDA62B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62B98);
  }

  return result;
}

uint64_t sub_1C904D2C4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C904D250(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C904D340()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313220, &qword_1C90C7320);
  __swift_allocate_value_buffer(v3, qword_1EDA6EA68);
  __swift_project_value_buffer(v3, qword_1EDA6EA68);
  v4 = sub_1C90623FC();
  v5 = __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v8 = sub_1C8D24934(v5, v6, v7);
  sub_1C8D24BA0(v8, v9, v10);
  sub_1C906254C();
  return sub_1C8DD1ED0(v2);
}

_BYTE *storeEnumTagSinglePayload for AdditionalToolAttributionContainerRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C904D530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB28;
  if (!qword_1EC31EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB28);
  }

  return result;
}

unint64_t sub_1C904D588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62B88;
  if (!qword_1EDA62B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62B88);
  }

  return result;
}

unint64_t sub_1C904D5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62B90;
  if (!qword_1EDA62B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62B90);
  }

  return result;
}

uint64_t sub_1C904D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[200] = a3;
  v3[199] = a2;
  v3[198] = a1;
  v4 = OUTLINED_FUNCTION_71();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C904D664()
{
  v462 = v0;
  v7 = v0;
  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 1584);
    __swift_project_boxed_opaque_existential_1(*(v7 + 1592), *(*(v7 + 1592) + 24));
    v11 = v10;
    sub_1C8D54EC8(v9, &selRef_promptForDisplay);
    OUTLINED_FUNCTION_42_17();
    sub_1C8D54EC8(v9, &selRef_prompt);
    OUTLINED_FUNCTION_209_0();
    v12 = [v9 linkDialog];
    LOBYTE(v10) = [v9 destructive];

    *(v7 + 1312) = v2;
    *(v7 + 1320) = v3;
    *(v7 + 1328) = v4;
    *(v7 + 1336) = v5;
    *(v7 + 1344) = v12;
    *(v7 + 1352) = v10;
    sub_1C8D54EC8(v9, &selRef_message);
    OUTLINED_FUNCTION_11_6();
    *(v7 + 1608) = v13;
    OUTLINED_FUNCTION_37_0();
    v14 = swift_task_alloc();
    *(v7 + 1616) = v14;
    *v14 = v7;
    v14[1] = sub_1C90507CC;
    OUTLINED_FUNCTION_14_42();

    __asm { BRAA            X6, X16 }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v17 = swift_dynamicCastObjCClass();
  v18 = MEMORY[0x1E69E7CC0];
  v444 = v0;
  if (v17)
  {
    v19 = &off_1E832F000;
    v433 = v17;
    v20 = [v17 items];
    sub_1C8CB78AC(0, &qword_1EC31EB40, 0x1E69E0AA8);
    v21 = sub_1C906419C();

    v22 = sub_1C8CB217C(v21);
    v23 = &off_1E832F000;
    if (v22)
    {
      v1 = v22;
      *&v458[0] = v18;
      v24 = OUTLINED_FUNCTION_34_21();
      sub_1C8D09ED4(v24, v25, v26);
      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v27 = 0;
      v28 = *&v458[0];
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1CCA82230](v27, v21);
        }

        else
        {
          v29 = *(v21 + 8 * v27 + 32);
        }

        v30 = v29;
        v31 = [v29 identifier];
        v32 = sub_1C9063EEC();
        v34 = v33;

        *&v458[0] = v28;
        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          v38 = OUTLINED_FUNCTION_30_30(v35);
          sub_1C8D09ED4(v38, v39, v40);
          v28 = *&v458[0];
        }

        ++v27;
        *(v28 + 16) = v36 + 1;
        v37 = (v28 + 24 * v36);
        v37[4] = v32;
        v37[5] = v34;
        v37[6] = v30;
      }

      while (v1 != v27);

      v18 = MEMORY[0x1E69E7CC0];
      v23 = &off_1E832F000;
      v19 = &off_1E832F000;
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v444[203] = sub_1C903E304(v28, v41, v42, v43, v44);
    v55 = [v433 v19[360]];
    v56 = sub_1C906419C();

    v454 = v56;
    v57 = sub_1C8CB217C(v56);
    if (!v57)
    {

      v61 = MEMORY[0x1E69E7CC0];
LABEL_46:
      v444[204] = v61;
      v83 = v444[199];
      v84 = [v433 allowsMultipleSelection];
      __swift_project_boxed_opaque_existential_1(v83, v83[3]);
      v85 = v444[198];
      if (v84)
      {
        v86 = v85;
        sub_1C8D54EC8(v433, &selRef_promptForDisplay);
        OUTLINED_FUNCTION_36_24();
        v87 = sub_1C8D54EC8(v433, &selRef_prompt);
        v89 = v88;
        v90 = [v433 linkDialog];
        v91 = [v433 destructive];

        v444[110] = v56;
        v444[111] = v1;
        v444[112] = v87;
        v444[113] = v89;
        v444[114] = v90;
        *(v444 + 920) = v91;
        sub_1C8D54EC8(v433, &selRef_parameterKey);
        OUTLINED_FUNCTION_36_24();
        v444[205] = v92;
        OUTLINED_FUNCTION_5_57();
        v93 = swift_task_alloc();
        v444[206] = v93;
        *v93 = v444;
        v93[1] = sub_1C905099C;
        OUTLINED_FUNCTION_26_22();
        OUTLINED_FUNCTION_14_42();

        __asm { BRAA            X7, X16 }
      }

      v96 = v85;
      sub_1C8D54EC8(v433, &selRef_promptForDisplay);
      OUTLINED_FUNCTION_36_24();
      v97 = sub_1C8D54EC8(v433, &selRef_prompt);
      v99 = v98;
      v100 = [v433 linkDialog];
      v101 = [v433 destructive];

      v444[128] = v56;
      v444[129] = v1;
      v444[130] = v97;
      v444[131] = v99;
      v444[132] = v100;
      *(v444 + 1064) = v101;
      sub_1C8D54EC8(v433, &selRef_parameterKey);
      OUTLINED_FUNCTION_36_24();
      v444[207] = v102;
      OUTLINED_FUNCTION_5_57();
      v103 = swift_task_alloc();
      v444[208] = v103;
      *v103 = v444;
      v103[1] = sub_1C9050CC8;
      OUTLINED_FUNCTION_26_22();
      OUTLINED_FUNCTION_14_42();

      __asm { BRAA            X7, X16 }
    }

    v58 = v57;
    v461 = v18;
    v59 = sub_1C8D09EB4(0, v57 & ~(v57 >> 63), 0);
    if ((v58 & 0x8000000000000000) == 0)
    {
      v60 = 0;
      v453 = v56 & 0xC000000000000001;
      v61 = v461;
      v436 = v56 & 0xFFFFFFFFFFFFFF8;
      v440 = v58;
      while (1)
      {
        if (v453)
        {
          v62 = MEMORY[0x1CCA82230](v60, v454);
        }

        else
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            type metadata accessor for ConfirmationView(v59);
            OUTLINED_FUNCTION_115();
            goto LABEL_92;
          }

          if (v60 >= *(v436 + 16))
          {
            goto LABEL_90;
          }

          v62 = v454[v60 + 4];
        }

        v63 = v62;
        v64 = [v62 encodedTypedValue];
        if (v64)
        {
          v65 = v64;
          WFEncodedTypedValue.decode()();

          v1 = *&v458[0];
        }

        else
        {
          v1 = 0xF000000000000007;
        }

        v66 = [v63 v23[225]];
        v67 = sub_1C9063EEC();
        v69 = v68;

        if ((~v1 & 0xF000000000000007) != 0)
        {
        }

        else
        {
          v70 = swift_allocObject();
          v71 = swift_allocObject();
          *(v71 + 16) = 23;
          v72 = [v63 v23[225]];
          v452 = v63;
          v73 = v69;
          v74 = v67;
          v75 = v23;
          v76 = v61;
          v77 = sub_1C9063EEC();
          v79 = v78;

          *(v70 + 16) = v71;
          *(v70 + 24) = v77;
          v58 = v440;
          v61 = v76;
          v23 = v75;
          v67 = v74;
          v69 = v73;
          *(v70 + 32) = v79;

          v1 = v70 | 0x7000000000000000;
        }

        v461 = v61;
        v81 = v61[2];
        v80 = v61[3];
        v56 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          v59 = sub_1C8D09EB4((v80 > 1), v81 + 1, 1);
          v61 = v461;
        }

        ++v60;
        v61[2] = v56;
        v82 = &v61[3 * v81];
        v82[4] = v67;
        v82[5] = v69;
        v82[6] = v1;
        if (v58 == v60)
        {

          goto LABEL_46;
        }
      }
    }

    goto LABEL_158;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v454 = swift_dynamicCastObjCClass();
  if (v454)
  {
    type metadata accessor for ToolInvocation(0);
    OUTLINED_FUNCTION_44_26();
    v45 = *(v6 + 16);
    v46 = (v6 + 32);
    while (v45 != v5)
    {
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_99;
      }

      memcpy(v444 + 53, v46, 0x88uLL);
      v47 = v444[60];
      v49 = v444[53];
      v48 = v444[54];
      sub_1C8D07294((v444 + 53), (v444 + 36));
      v50 = [v454 parameterKey];
      v51 = sub_1C9063EEC();
      v53 = v52;

      v54 = v49 == v51 && v48 == v53;
      if (v54)
      {

LABEL_60:
        v118 = v444[199];
        v119 = v444[198];
        v445 = v118[4];
        __swift_project_boxed_opaque_existential_1(v118, v118[3]);
        v441 = v119;
        v120 = sub_1C8D54EC8(v454, &selRef_promptForDisplay);
        v122 = v121;
        v123 = sub_1C8D54EC8(v454, &selRef_prompt);
        v125 = v124;
        v126 = [v454 linkDialog];
        v127 = [v454 destructive];

        v444[140] = v120;
        v444[141] = v122;
        v444[142] = v123;
        v444[143] = v125;
        v444[144] = v126;
        *(v444 + 1160) = v127;
        v444[193] = v47;

        v128 = swift_task_alloc();
        v444[209] = v128;
        *v128 = v444;
        v128[1] = sub_1C9050FD4;
        v463 = v445;
LABEL_63:
        OUTLINED_FUNCTION_31_25();

        __asm { BRAA            X8, X16 }
      }

      OUTLINED_FUNCTION_95_0();
      v18 = sub_1C9064C2C();

      if (v18)
      {
        goto LABEL_60;
      }

      sub_1C8D072F0((v444 + 53));
      v46 += 136;
      ++v5;
    }

    [objc_allocWithZone(MEMORY[0x1E69E0DB0]) initWithCancelled_];
    goto LABEL_56;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v106 = swift_dynamicCastObjCClass();
  if (v106)
  {
    v107 = v106;
    v108 = swift_allocObject();
    *(v7 + 1680) = v108;
    v109 = swift_allocObject();
    *(v109 + 16) = 28;
    *(v108 + 16) = v109;
    v110 = OUTLINED_FUNCTION_46_18();
    sub_1C8D54EC8(v107, &selRef_promptForDisplay);
    OUTLINED_FUNCTION_42_17();
    sub_1C8D54EC8(v107, &selRef_prompt);
    OUTLINED_FUNCTION_209_0();
    v111 = [v107 linkDialog];
    v112 = [v107 destructive];

    *(v7 + 1216) = v18;
    *(v7 + 1224) = v3;
    *(v7 + 1232) = v4;
    *(v7 + 1240) = v5;
    *(v7 + 1248) = v111;
    *(v7 + 1256) = v112;
    sub_1C8D54EC8(v107, &selRef_message);
    OUTLINED_FUNCTION_11_6();
    *(v7 + 1688) = v113;
    *(v7 + 1520) = v108;
    sub_1C8D54EC8(v107, &selRef_parameterKey);
    *(v7 + 1696) = v114;
    OUTLINED_FUNCTION_5_57();
    v115 = swift_task_alloc();
    *(v7 + 1704) = v115;
    *v115 = v7;
    v115[1] = sub_1C90513C4;
    v463 = v451;
    goto LABEL_63;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v129 = swift_dynamicCastObjCClass();
  if (v129)
  {
    v130 = v129;
    v131 = swift_allocObject();
    *(v7 + 1712) = v131;
    v132 = swift_allocObject();
    *(v132 + 16) = 29;
    *(v131 + 16) = v132;
    v133 = OUTLINED_FUNCTION_46_18();
    sub_1C8D54EC8(v130, &selRef_promptForDisplay);
    OUTLINED_FUNCTION_42_17();
    sub_1C8D54EC8(v130, &selRef_prompt);
    OUTLINED_FUNCTION_209_0();
    v134 = [v130 linkDialog];
    v135 = [v130 destructive];

    *(v7 + 832) = v18;
    *(v7 + 840) = v3;
    *(v7 + 848) = v4;
    *(v7 + 856) = v5;
    *(v7 + 864) = v134;
    *(v7 + 872) = v135;
    sub_1C8D54EC8(v130, &selRef_message);
    OUTLINED_FUNCTION_11_6();
    *(v7 + 1720) = v136;
    *(v7 + 1504) = v131;
    OUTLINED_FUNCTION_5_57();
    v137 = swift_task_alloc();
    *(v7 + 1728) = v137;
    *v137 = v7;
    v137[1] = sub_1C90516F4;
    v463 = v451;
    goto LABEL_63;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v455 = swift_dynamicCastObjCClass();
  if (v455)
  {
    v140 = v0[200];
    v141 = 0;
    v142 = *(v140 + *(type metadata accessor for ToolInvocation(0) + 20) + 40);
    v143 = *(v142 + 16);
    for (i = (v142 + 32); ; i += 136)
    {
      if (v143 == v141)
      {
        [objc_allocWithZone(MEMORY[0x1E69E0AB8]) initWithResponseCode_];
        goto LABEL_56;
      }

      if (v141 >= *(v142 + 16))
      {
        break;
      }

      memcpy(v444 + 70, i, 0x88uLL);
      v145 = v444[77];
      v146 = v444[70];
      v147 = v444[71];
      sub_1C8D07294((v444 + 70), (v444 + 87));
      v148 = [v455 parameterKey];
      v18 = sub_1C9063EEC();
      v150 = v149;

      if (v146 == v18 && v147 == v150)
      {

LABEL_83:
        v166 = v444[199];
        v167 = v444[198];
        v446 = v166[4];
        __swift_project_boxed_opaque_existential_1(v166, v166[3]);
        v168 = v167;
        sub_1C8D54EC8(v455, &selRef_promptForDisplay);
        OUTLINED_FUNCTION_88();
        v169 = sub_1C8D54EC8(v455, &selRef_prompt);
        v171 = v170;
        v172 = [v455 linkDialog];
        v173 = [v455 destructive];

        v444[170] = v150;
        v444[171] = v18;
        v444[172] = v169;
        v444[173] = v171;
        v444[174] = v172;
        *(v444 + 1400) = v173;
        v444[187] = v145;

        v174 = [v455 parameterKey];
        sub_1C9063EEC();
        OUTLINED_FUNCTION_88();

        v444[217] = v18;
        OUTLINED_FUNCTION_5_57();
        v175 = swift_task_alloc();
        v444[218] = v175;
        *v175 = v444;
        v175[1] = sub_1C9051B68;
        v463 = v446;
        goto LABEL_63;
      }

      v152 = OUTLINED_FUNCTION_32_23();

      if (v152)
      {
        goto LABEL_83;
      }

      sub_1C8D072F0((v444 + 70));
      ++v141;
    }

    __break(1u);
LABEL_165:
    objc_opt_self();
    OUTLINED_FUNCTION_4();
    v387 = swift_dynamicCastObjCClass();
    if (v387)
    {
      v388 = v387;
      __swift_project_boxed_opaque_existential_1(v444[199], *(v444[199] + 24));
      v389 = [v388 bundleIdentifier];
      sub_1C9063EEC();
      OUTLINED_FUNCTION_88();

      v444[252] = v18;
      OUTLINED_FUNCTION_37_0();
      v390 = swift_task_alloc();
      v444[253] = v390;
      *v390 = v444;
      v390[1] = sub_1C9053354;
      OUTLINED_FUNCTION_14_42();

      __asm { BRAA            X5, X16 }
    }

    objc_opt_self();
    OUTLINED_FUNCTION_4();
    v393 = swift_dynamicCastObjCClass();
    if (v393)
    {
      v7 = v393;
      v18 = type metadata accessor for ToolInvocation(0);
      OUTLINED_FUNCTION_13_1();
      v1 = OUTLINED_FUNCTION_39();
      v444[254] = v1;
      v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
      OUTLINED_FUNCTION_9(v394);
      v3 = OUTLINED_FUNCTION_39();
      v395 = sub_1C9061C4C();
      OUTLINED_FUNCTION_171(v395);
      sub_1C9061C3C();
      v396 = [v7 encodedToolInvocation];
      v5 = sub_1C9061F3C();
      v4 = v397;

      sub_1C9053C70();
      OUTLINED_FUNCTION_28_23();
      sub_1C9061C2C();
      goto LABEL_174;
    }

LABEL_171:
    [objc_allocWithZone(MEMORY[0x1E69E0AB8]) initWithResponseCode_];
LABEL_56:
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_14_42();

    __asm { BRAA            X2, X16 }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v153 = swift_dynamicCastObjCClass();
  if (v153)
  {
    v61 = v153;
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
    OUTLINED_FUNCTION_9(v154);
    v155 = swift_task_alloc();
    v0[219] = v155;
    sub_1C905432C(v61);
    OUTLINED_FUNCTION_38_24();
    v453 = v155;
    v454 = v61;
    if (!v54 & v156)
    {
      v59 = [v61 viewSnippet];
      if (!v59)
      {
        goto LABEL_91;
      }

      *v155 = v59;
      type metadata accessor for ConfirmationView(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_62();
LABEL_92:
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
    }

    else
    {
      v157 = type metadata accessor for ToolInvocation(0);
      OUTLINED_FUNCTION_13_1();
      v158 = OUTLINED_FUNCTION_39();
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
      OUTLINED_FUNCTION_9(v159);
      v160 = OUTLINED_FUNCTION_39();
      v161 = sub_1C9061C4C();
      OUTLINED_FUNCTION_171(v161);
      sub_1C9061C3C();
      sub_1C9053C70();
      sub_1C9061C2C();
      v247 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37_25(v247, v248);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v249, v250, v251, v157);
      sub_1C8E4D9D0(v160, v158);

      sub_1C8E4D9D0(v158, v155);
      type metadata accessor for ConfirmationView(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_62();
      __swift_storeEnumTagSinglePayload(v252, v253, v254, v255);

      v61 = v454;
    }

    v195 = [v61 parameterInfo];
    v444[220] = v195;
    if (!v195)
    {
      v197 = v444[199];
      v198 = [v61 isContinueInAppRequest];
      v447 = v197[4];
      __swift_project_boxed_opaque_existential_1(v197, v197[3]);
      if (v198)
      {
        v199 = sub_1C8D54EC8(v61, &selRef_title);
        v201 = v200;
        v202 = v444[198];
        if (v200)
        {
          v203 = v202;

          v204 = sub_1C9063EBC();

          v205 = WFStripTTSHints(v204);

          v206 = sub_1C9063EEC();
          v208 = v207;

          v209 = v444[198];
        }

        else
        {
          v209 = v202;
          v208 = 0;
          v206 = v199;
        }

        v321 = v61;
        v322 = [v61 linkDialog];
        v323 = [v321 destructive];

        v444[146] = v206;
        v444[147] = v208;
        v444[148] = v199;
        v444[149] = v201;
        v444[150] = v322;
        *(v444 + 1208) = v323;
        v324 = [v321 yesButton];
        v325 = [v324 title];

        sub_1C9063EEC();
        v327 = v326;

        v444[226] = v327;
        v328 = [v321 noButton];
        v329 = [v328 title];

        sub_1C9063EEC();
        OUTLINED_FUNCTION_88();

        v444[227] = v209;
        OUTLINED_FUNCTION_5_57();
        v330 = swift_task_alloc();
        v444[228] = v330;
        *v330 = v444;
        v330[1] = sub_1C9051FA4;
        v463 = v447;
        OUTLINED_FUNCTION_31_25();

        __asm { BRAA            X8, X16 }
      }

      v256 = type metadata accessor for ActionConfirmationRequest(0);
      OUTLINED_FUNCTION_13_1();
      v257 = OUTLINED_FUNCTION_39();
      v444[229] = v257;
      v258 = sub_1C8D54EC8(v61, &selRef_title);
      v260 = v259;
      v261 = v444[198];
      v438 = v258;
      if (v259)
      {
        v262 = v261;

        v263 = sub_1C9063EBC();

        v264 = WFStripTTSHints(v263);

        v431 = sub_1C9063EEC();
        v434 = v265;

        v266 = v444[198];
      }

      else
      {
        v266 = v261;
        v431 = v258;
        v434 = 0;
      }

      v430 = [v61 linkDialog];
      v428 = [v61 destructive];

      v333 = [v61 yesButton];
      v334 = [v333 title];

      v335 = sub_1C9063EEC();
      v424 = v336;
      v426 = v335;

      v337 = [v61 noButton];
      v338 = [v337 title];

      v339 = v61;
      v340 = sub_1C9063EEC();
      v342 = v341;

      v343 = swift_task_alloc();
      sub_1C90543FC(v453, v343);
      v344 = [v339 systemStyle];
      if (v344)
      {
        v345 = v344;
        sub_1C9053D58(v458);

        v346 = *&v458[0];
      }

      else
      {
        v346 = 0;
      }

      v347 = [v454 showPrompt];
      v348 = [v454 isDestructive];
      *v257 = v431;
      *(v257 + 8) = v434;
      *(v257 + 16) = v438;
      *(v257 + 24) = v260;
      *(v257 + 32) = v430;
      *(v257 + 40) = v428;
      *(v257 + 48) = v426;
      *(v257 + 56) = v424;
      *(v257 + 64) = v340;
      *(v257 + 72) = v342;
      sub_1C905446C(v343, v257 + v256[7]);
      *(v257 + v256[8]) = v346;
      *(v257 + v256[9]) = v347;
      *(v257 + v256[10]) = v348;

      OUTLINED_FUNCTION_37_0();
      v349 = swift_task_alloc();
      v444[230] = v349;
      *v349 = v444;
      v349[1] = sub_1C90521B8;
      OUTLINED_FUNCTION_14_42();

      __asm { BRAA            X4, X16 }
    }

    v18 = v195;
    v196 = [v195 parameterValue];
    WFEncodedTypedValue.decode()();

LABEL_99:
    v210 = *&v458[0];
    v444[221] = *&v458[0];
    v217 = v444[199];
    v218 = [v18 parameterKey];
    v219 = sub_1C9063EEC();
    v221 = v220;

    v444[222] = v221;
    v223 = v217[3];
    v222 = v217[4];
    __swift_project_boxed_opaque_existential_1(v217, v223);

    v224 = sub_1C8D54EC8(v454, &selRef_title);
    v226 = v224;
    v227 = v225;
    v228 = v444[198];
    v448 = v223;
    v437 = v219;
    v442 = v222;
    if (v225)
    {
      v229 = v228;

      v230 = sub_1C9063EBC();

      v231 = WFStripTTSHints(v230);

      v232 = sub_1C9063EEC();
      v234 = v233;

      v235 = v444[198];
    }

    else
    {
      v235 = v228;
      v234 = 0;
      v232 = v226;
    }

    v236 = [v454 linkDialog];
    v237 = [v454 destructive];

    v444[158] = v232;
    v444[159] = v234;
    v444[160] = v226;
    v444[161] = v227;
    v444[162] = v236;
    *(v444 + 1304) = v237;
    v444[176] = v437;
    v444[177] = v221;
    v444[178] = v210;
    v238 = [v454 yesButton];
    v239 = [v238 title];

    sub_1C9063EEC();
    OUTLINED_FUNCTION_42_17();

    v444[223] = v210;
    v240 = [v454 noButton];
    v241 = [v240 title];

    sub_1C9063EEC();
    v243 = v242;

    v444[224] = v243;
    OUTLINED_FUNCTION_37_0();
    v244 = swift_task_alloc();
    v444[225] = v244;
    *v244 = v444;
    v244[1] = sub_1C9051D70;
    v464 = v442;
    v463 = v448;
    OUTLINED_FUNCTION_31_25();

    __asm { BRAA            X8, X16 }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v176 = swift_dynamicCastObjCClass();
  if (v176)
  {
    v177 = v176;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
    OUTLINED_FUNCTION_9(v178);
    v179 = swift_task_alloc();
    v0[231] = v179;
    sub_1C905432C(v177);
    OUTLINED_FUNCTION_38_24();
    if (!v54 & v156)
    {
      v190 = [v177 viewSnippet];
      if (v190)
      {
        *v179 = v190;
        type metadata accessor for ConfirmationView(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_3_62();
      }

      else
      {
        type metadata accessor for ConfirmationView(0);
        OUTLINED_FUNCTION_115();
      }

      __swift_storeEnumTagSinglePayload(v191, v192, v193, v194);
    }

    else
    {
      v182 = v180;
      v183 = v181;
      v184 = v18;
      v185 = type metadata accessor for ToolInvocation(0);
      OUTLINED_FUNCTION_13_1();
      v186 = OUTLINED_FUNCTION_39();
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
      OUTLINED_FUNCTION_9(v187);
      v188 = OUTLINED_FUNCTION_39();
      v189 = sub_1C9061C4C();
      OUTLINED_FUNCTION_171(v189);
      sub_1C9061C3C();
      sub_1C9053C70();
      sub_1C9061C2C();
      OUTLINED_FUNCTION_37_25(v182, v183);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v314, v315, v316, v185);
      sub_1C8E4D9D0(v188, v186);

      sub_1C8E4D9D0(v186, v179);
      type metadata accessor for ConfirmationView(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_62();
      __swift_storeEnumTagSinglePayload(v317, v318, v319, v320);

      v18 = v184;
    }

    v267 = v444[199];
    v268 = v267[4];
    __swift_project_boxed_opaque_existential_1(v267, v267[3]);
    v443 = type metadata accessor for ChoiceRequest(0);
    OUTLINED_FUNCTION_13_1();
    v449 = OUTLINED_FUNCTION_39();
    v444[232] = v449;
    v269 = sub_1C8D54EC8(v177, &selRef_title);
    v271 = v270;
    v272 = v444[198];
    v439 = v269;
    if (v270)
    {
      v273 = v272;

      v274 = sub_1C9063EBC();

      v275 = WFStripTTSHints(v274);

      v432 = sub_1C9063EEC();
      v435 = v276;

      v277 = v444[198];
    }

    else
    {
      v278 = v272;
      v279 = v269;
      v277 = v278;
      v432 = v279;
      v435 = 0;
    }

    v429 = [v177 linkDialog];
    v425 = [v177 destructive];

    v427 = swift_task_alloc();
    sub_1C90543FC(v179, v427);
    v280 = [v177 buttons];
    sub_1C8CB78AC(0, &qword_1EC31EB38, 0x1E69E0AA0);
    OUTLINED_FUNCTION_4();
    v281 = sub_1C906419C();

    v457 = v281;
    v282 = sub_1C8CB217C(v281);
    if (!v282)
    {

      v289 = MEMORY[0x1E69E7CC0];
      goto LABEL_137;
    }

    v283 = v282;
    v423 = v268;
    *&v458[0] = v18;
    v284 = OUTLINED_FUNCTION_34_21();
    v287 = sub_1C8D09E94(v284, v285, v286);
    if ((v283 & 0x8000000000000000) == 0)
    {
      v288 = 0;
      v289 = *&v458[0];
      v290 = v271;
      v291 = v283;
      do
      {
        if ((v457 & 0xC000000000000001) != 0)
        {
          v292 = MEMORY[0x1CCA82230](v288, v457);
        }

        else
        {
          v292 = *(v457 + 8 * v288 + 32);
        }

        v293 = v292;
        v294 = [v292 title];
        v295 = sub_1C9063EEC();
        v297 = v296;

        v298 = [v293 style];
        if (v298 >= 3)
        {
          v299 = 2;
        }

        else
        {
          v299 = 0x10002u >> (8 * v298);
        }

        *&v458[0] = v289;
        v301 = *(v289 + 16);
        v300 = *(v289 + 24);
        if (v301 >= v300 >> 1)
        {
          v303 = OUTLINED_FUNCTION_30_30(v300);
          sub_1C8D09E94(v303, v304, v305);
          v289 = *&v458[0];
        }

        ++v288;
        *(v289 + 16) = v301 + 1;
        v302 = v289 + 24 * v301;
        *(v302 + 32) = v295;
        *(v302 + 40) = v297;
        *(v302 + 48) = v299;
      }

      while (v291 != v288);
      v271 = v290;

LABEL_137:
      *v449 = v432;
      *(v449 + 8) = v435;
      *(v449 + 16) = v439;
      *(v449 + 24) = v271;
      *(v449 + 32) = v429;
      *(v449 + 40) = v425;
      sub_1C905446C(v427, v449 + *(v443 + 20));
      *(v449 + *(v443 + 24)) = v289;

      OUTLINED_FUNCTION_37_0();
      v306 = swift_task_alloc();
      v444[233] = v306;
      *v306 = v444;
      v306[1] = sub_1C905237C;
      OUTLINED_FUNCTION_14_42();

      __asm { BRAA            X4, X16 }
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_4();
    v456 = swift_dynamicCastObjCClass();
    if (v456)
    {
      type metadata accessor for ToolInvocation(0);
      OUTLINED_FUNCTION_44_26();
      v211 = *(v6 + 16);
      for (j = (v6 + 32); ; j += 136)
      {
        if (v211 == v5)
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          v398 = OUTLINED_FUNCTION_107();
          sub_1C8CE7B78(v398, v399);

          OUTLINED_FUNCTION_150();
          __swift_storeEnumTagSinglePayload(v400, v401, v402, v18);
          sub_1C8E4D9D0(v3, v1);

          v403 = type metadata accessor for FollowUpActionExecution.Request(0) - 8;
          v404 = OUTLINED_FUNCTION_39();
          v444[255] = v404;
          sub_1C90544DC(v1, v404);
          v405 = [v7 actionIdentifier];
          v406 = sub_1C9063EEC();
          v408 = v407;

          v409 = [v7 bundleIdentifier];
          sub_1C9063EEC();
          OUTLINED_FUNCTION_209_0();

          v410 = [v7 showOutputActionOptions];
          v411 = [v7 parameterValues];
          sub_1C8CB78AC(0, &qword_1EC31EB30, 0x1E69ACA88);
          v412 = sub_1C9063E0C();

          sub_1C8E47088(v406, v408, v4, v5, v410, v412, v458);
          v413 = v458[1];
          v414 = v459;
          v415 = v460;
          v416 = v404 + *(v403 + 28);
          *v416 = v458[0];
          *(v416 + 16) = v413;
          *(v416 + 32) = v414;
          *(v416 + 40) = v415;
          v417 = OUTLINED_FUNCTION_95_0();
          __swift_project_boxed_opaque_existential_1(v417, v418);
          OUTLINED_FUNCTION_37_0();
          v419 = swift_task_alloc();
          v444[256] = v419;
          *v419 = v444;
          v419[1] = sub_1C90534D0;
          OUTLINED_FUNCTION_14_42();

          __asm { BRAA            X4, X16 }
        }

        if (v5 >= *(v6 + 16))
        {
          goto LABEL_173;
        }

        memcpy(v444 + 2, j, 0x88uLL);
        v4 = v444[9];
        v444[234] = v4;
        v213 = v444[2];
        v214 = v444[3];
        sub_1C8D07294((v444 + 2), (v444 + 19));
        v3 = [v456 parameterKey];
        v18 = sub_1C9063EEC();
        v1 = v215;

        if (v213 == v18 && v214 == v1)
        {
          break;
        }

        v7 = OUTLINED_FUNCTION_32_23();

        if (v7)
        {
          goto LABEL_156;
        }

        sub_1C8D072F0((v444 + 2));
        ++v5;
      }

LABEL_156:
      v352 = v444[199];
      v353 = v444[198];

      sub_1C8D072F0((v444 + 2));
      v354 = v353;
      v450 = sub_1C8D54EC8(v456, &selRef_promptForDisplay);
      v356 = v355;
      v444[235] = v355;
      v357 = sub_1C8D54EC8(v456, &selRef_prompt);
      v359 = v358;
      v444[236] = v358;
      v360 = [v456 linkDialog];
      v444[237] = v360;
      v361 = [v456 destructive];

      v362 = v352[4];
      __swift_project_boxed_opaque_existential_1(v352, v352[3]);
      v444[134] = v450;
      v444[135] = v356;
      v444[136] = v357;
      v444[137] = v359;
      v444[138] = v360;
      *(v444 + 1112) = v361;
      v444[195] = v4;
      v363 = [v456 parameterKey];
      sub_1C9063EEC();
      v365 = v364;

      v444[238] = v365;
      OUTLINED_FUNCTION_37_0();
      v366 = swift_task_alloc();
      v444[239] = v366;
      *v366 = v444;
      v366[1] = sub_1C9052554;
      v463 = v362;
      goto LABEL_63;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_4();
    v309 = swift_dynamicCastObjCClass();
    v0[240] = v309;
    if (!v309)
    {
LABEL_159:
      objc_opt_self();
      OUTLINED_FUNCTION_4();
      v367 = swift_dynamicCastObjCClass();
      if (!v367)
      {
        goto LABEL_165;
      }

      if (MEMORY[0x1E6994268])
      {
        v368 = v367;
        v369 = v444[199];
        v370 = v444[198];
        v371 = [v367 controlIdentity];
        v444[247] = v371;
        v372 = [v368 controlType];
        v373 = v370;
        v374 = [v368 linkDialog];
        v444[248] = v374;
        v375 = [v368 destructive];

        __swift_project_boxed_opaque_existential_1(v369, v369[3]);
        v376 = type metadata accessor for ToolResultResponse(0);
        OUTLINED_FUNCTION_9(v376);
        v444[249] = OUTLINED_FUNCTION_39();
        *(v444 + 58) = 0u;
        *(v444 + 59) = 0u;
        v444[120] = v374;
        *(v444 + 968) = v375;
        v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
        OUTLINED_FUNCTION_9(v377);
        v378 = OUTLINED_FUNCTION_39();
        v444[250] = v378;
        *v378 = v371;
        v378[1] = v372;
        v379 = type metadata accessor for ConfirmationView(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_150();
        __swift_storeEnumTagSinglePayload(v380, v381, v382, v379);
        v383 = v371;
        v384 = swift_task_alloc();
        v444[251] = v384;
        *v384 = v444;
        v384[1] = sub_1C9053174;
        OUTLINED_FUNCTION_14_42();

        __asm { BRAA            X5, X16 }
      }

      goto LABEL_171;
    }

    v310 = v309;
    v311 = swift_task_alloc();
    v0[241] = v311;
    *(v311 + 16) = v310;
    v312 = swift_task_alloc();
    *(v7 + 1936) = v312;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
    *v312 = v7;
    v312[1] = sub_1C90528C8;
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_14_42();
  }

  return MEMORY[0x1EEE6DE38](v287);
}

uint64_t sub_1C90507CC()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1344);

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9050924()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 877);
  v2 = objc_allocWithZone(MEMORY[0x1E69E0AB8]);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [v2 initWithResponseCode_];
  OUTLINED_FUNCTION_63();

  return v4();
}

uint64_t sub_1C905099C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 912);

  v5 = OUTLINED_FUNCTION_4_60();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9050B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 1624);
  v7 = MEMORY[0x1E69E7CC0];
  if (*(v5 + 1576))
  {
    v8 = *(v5 + 1576);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v5 + 1576);
  v23 = MEMORY[0x1E69E7CC0];
  v9 = *(v8 + 16);

  v11 = 0;
  v12 = v8 + 40;
LABEL_5:
  v13 = (v12 + 16 * v11);
  while (v9 != v11)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    if (*(v6 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      v16 = sub_1C8CAE064(v15, v14);
      if (v17)
      {
        v18 = *(*(v6 + 56) + 8 * v16);

        MEMORY[0x1CCA81C00](v19);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C90641CC();
        }

        ++v11;
        result = sub_1C906422C();
        v7 = v23;
        v12 = v8 + 40;
        goto LABEL_5;
      }
    }

    v13 += 2;
    ++v11;
  }

  sub_1C8CB78AC(0, &qword_1EC31EB48, 0x1E69E09D0);
  v20 = sub_1C9053C14(v22, 0);

  sub_1C9053CC8(v7, v20 & 1);
  OUTLINED_FUNCTION_63();

  return v21();
}

uint64_t sub_1C9050CC8()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1056);

  v5 = OUTLINED_FUNCTION_4_60();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9050E34()
{
  v1 = *(v0 + 1624);
  if (*(v0 + 1456) >= 2uLL)
  {
    v2 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE5404(v2, v3, v4, v5, v6, v7);

    v8 = OUTLINED_FUNCTION_95_0();
    v10 = sub_1C8E9E4F8(v8, v9, v1);

    v11 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE5490(v11, v12);
    v13 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE5490(v13, v14);
    if (v10)
    {
      sub_1C8CB78AC(0, &qword_1EC31EB48, 0x1E69E09D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C906A000;
      *(v15 + 32) = v10;
      v16 = v10;
      v17 = OUTLINED_FUNCTION_95_0();
      v21 = sub_1C9053A70(v17, v18, 0, 1, v19, v20);
      v22 = OUTLINED_FUNCTION_95_0();
      sub_1C8CE5490(v22, v23);
      sub_1C9053CC8(v15, v21 & 1);

      goto LABEL_6;
    }
  }

  else
  {
  }

  sub_1C8CB78AC(0, &qword_1EC31EB48, 0x1E69E09D0);
  v24 = OUTLINED_FUNCTION_95_0();
  v28 = sub_1C9053A70(v24, v25, 0, 1, v26, v27);
  v29 = OUTLINED_FUNCTION_95_0();
  sub_1C8CE5490(v29, v30);
  sub_1C9053CC8(MEMORY[0x1E69E7CC0], v28 & 1);
LABEL_6:
  v31 = OUTLINED_FUNCTION_2_77();

  return v32(v31);
}

uint64_t sub_1C9050FD4()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1152);

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9051128()
{
  v2 = *(v0 + 1528);
  if (v2 && *(v2 + 16))
  {
    sub_1C8EB5948();
    v3 = *(v2 + 32);
    v4 = qword_1EC311348;

    if (v4 != -1)
    {
      v5 = swift_once();
    }

    v8 = qword_1EC3154C8;
    *(v0 + 1552) = v3;
    sub_1C8D381AC(v5, v6, v7);
    sub_1C9061C5C();
    OUTLINED_FUNCTION_11_6();
    sub_1C8CB78AC(0, &qword_1EC3154D0, 0x1E69E0AD8);
    v23 = sub_1C8D5CF20(v8, v1);

    [objc_allocWithZone(MEMORY[0x1E69E0DB0]) initWithEncodedTypedValue_];
  }

  else
  {
    v9 = sub_1C9063D3C();
    OUTLINED_FUNCTION_11();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_39();
    sub_1C906371C();
    v13 = sub_1C9063D1C();
    v14 = sub_1C906444C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C8C9B000, v13, v14, "Failed to encode value, cancelling.", v15, 2u);
      OUTLINED_FUNCTION_25_0();
    }

    (*(v11 + 8))(v12, v9);

    v19 = sub_1C90539F0(v2, 0, v16, v17, v18);

    [objc_allocWithZone(MEMORY[0x1E69E0DB0]) initWithCancelled_];
  }

  sub_1C8D072F0(v0 + 424);
  v20 = OUTLINED_FUNCTION_2_77();

  return v21(v20);
}

uint64_t sub_1C90513C4()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1248);

  v5 = OUTLINED_FUNCTION_4_60();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9051530()
{
  v1 = *(v0 + 1512);
  if (!v1)
  {

    v14 = objc_allocWithZone(MEMORY[0x1E69E0B88]);
    v12 = OUTLINED_FUNCTION_257();
    v13 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  if (!*(v1 + 16) || (sub_1C8EB5948(), *(v1 + 32) >> 60))
  {

LABEL_7:
    [objc_allocWithZone(MEMORY[0x1E69E0AB8]) initWithResponseCode_];
    goto LABEL_10;
  }

  type metadata accessor for TypedValue.PrimitiveValue(0);
  v2 = swift_projectBox();
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_34();
  sub_1C90544DC(v2, v3);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    OUTLINED_FUNCTION_19_33();
    sub_1C9054538(v3, v18);

    goto LABEL_7;
  }

  v4 = *v3;
  v5 = v3[1];

  v9 = sub_1C90539F0(v1, 0, v6, v7, v8);

  v10 = objc_allocWithZone(MEMORY[0x1E69E0B88]);
  v11 = v9 & 1;
  v12 = v4;
  v13 = v5;
LABEL_9:
  sub_1C90540C4(v12, v13, v11);
LABEL_10:

  v15 = OUTLINED_FUNCTION_2_77();

  return v16(v15);
}

uint64_t sub_1C90516F4()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 864);

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C905184C()
{
  v1 = *(v0 + 1488);
  if (!v1)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
    OUTLINED_FUNCTION_9(v18);
    v19 = OUTLINED_FUNCTION_39();
    sub_1C9061FEC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);

    v24 = objc_allocWithZone(MEMORY[0x1E69E0B78]);
    sub_1C9054130(v19, 1);

    goto LABEL_9;
  }

  v2 = sub_1C9061FEC();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_39();
  if (!*(v1 + 16) || (sub_1C8EB5948(), *(v1 + 32) >> 60))
  {

LABEL_7:

    [objc_allocWithZone(MEMORY[0x1E69E0AB8]) initWithResponseCode_];

    goto LABEL_10;
  }

  type metadata accessor for TypedValue.PrimitiveValue(0);
  v6 = swift_projectBox();
  v7 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_20_34();
  sub_1C90544DC(v6, v7);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    OUTLINED_FUNCTION_19_33();
    sub_1C9054538(v7, v28);

    goto LABEL_7;
  }

  (*(v4 + 32))(v5, v7, v2);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_9(v8);
  v9 = OUTLINED_FUNCTION_39();
  (*(v4 + 16))(v9, v5, v2);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  v16 = sub_1C90539F0(v1, 0, v13, v14, v15);

  v17 = objc_allocWithZone(MEMORY[0x1E69E0B78]);
  sub_1C9054130(v9, v16 & 1);

  (*(v4 + 8))(v5, v2);

LABEL_9:

LABEL_10:
  v25 = OUTLINED_FUNCTION_2_77();

  return v26(v25);
}

uint64_t sub_1C9051B68()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1392);

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9051CD8()
{
  OUTLINED_FUNCTION_7();
  v4 = sub_1C90539F0(*(v0 + 1480), 0, v1, v2, v3);

  [objc_allocWithZone(MEMORY[0x1E69E09A8]) initWithSerializedParameterState:0 cancelled:v4 & 1];
  sub_1C8D072F0(v0 + 560);
  v5 = OUTLINED_FUNCTION_2_77();

  return v6(v5);
}

uint64_t sub_1C9051D70()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1296);

  v5 = OUTLINED_FUNCTION_4_60();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9051EDC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1760);

  v2 = *(v0 + 1752);
  [objc_allocWithZone(MEMORY[0x1E69E0BB8]) initWithConfirmationResponseCode:qword_1C90C7450[*(v0 + 873)] value:0];
  sub_1C8D16D78(v2, &qword_1EC3174C0, &qword_1C908C180);

  v3 = OUTLINED_FUNCTION_2_77();

  return v4(v3);
}

uint64_t sub_1C9051FA4()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1200);

  v5 = OUTLINED_FUNCTION_4_60();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9052110()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1752);
  [objc_allocWithZone(MEMORY[0x1E69E0BB8]) initWithConfirmationResponseCode:qword_1C90C7450[*(v0 + 874)] value:0];
  sub_1C8D16D78(v1, &qword_1EC3174C0, &qword_1C908C180);

  v2 = OUTLINED_FUNCTION_2_77();

  return v3(v2);
}

uint64_t sub_1C90521B8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 1832);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  sub_1C9054538(v2, type metadata accessor for ActionConfirmationRequest);

  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C90522D4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1752);
  [objc_allocWithZone(MEMORY[0x1E69E0BB8]) initWithConfirmationResponseCode:qword_1C90C7450[*(v0 + 875)] value:0];
  sub_1C8D16D78(v1, &qword_1EC3174C0, &qword_1C908C180);

  v2 = OUTLINED_FUNCTION_2_77();

  return v3(v2);
}

uint64_t sub_1C905237C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 1856);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  sub_1C9054538(v2, type metadata accessor for ChoiceRequest);

  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9052498()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1472);
  v3 = objc_allocWithZone(MEMORY[0x1E69E0BA8]);
  v4 = *(v0 + 1848);
  if (v2)
  {
    v5 = 2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = v1;
  }

  v7 = [v3 initWithResponseCode:v5 selectedButtonIndex:v6];
  sub_1C8D16D78(v4, &qword_1EC3174C0, &qword_1C908C180);

  OUTLINED_FUNCTION_63();

  return v8(v7);
}

uint64_t sub_1C9052554()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9052654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (*(v5 + 1568))
  {
    v8 = *(v5 + 1568);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1C90539F0(v9, 0, v10, v11, v12);

  if (v13)
  {
    OUTLINED_FUNCTION_35_28();

    v14 = objc_allocWithZone(MEMORY[0x1E69E0C38]);
    sub_1C90541EC(MEMORY[0x1E69E7CC0], 1);
LABEL_13:

    v26 = OUTLINED_FUNCTION_2_77();

    return v27(v26);
  }

  v15 = sub_1C9061C8C();
  OUTLINED_FUNCTION_171(v15);
  sub_1C9061C7C();
  v16 = *(v8 + 16);
  if (!v16)
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_12:
    OUTLINED_FUNCTION_35_28();
    v25 = objc_allocWithZone(MEMORY[0x1E69E0C38]);
    sub_1C90541EC(v24, 0);

    goto LABEL_13;
  }

  v6 = (v5 + 1536);
  result = sub_1C906482C();
  v20 = 0;
  while (v20 < *(v8 + 16))
  {
    *v6 = *(v8 + 8 * v20 + 32);
    sub_1C8D381AC(result, v18, v19);

    v21 = sub_1C9061C5C();
    v23 = v22;
    ++v20;
    sub_1C8CB78AC(0, &qword_1EC3154D0, 0x1E69E0AD8);
    sub_1C8D5CF20(v21, v23);

    sub_1C90647FC();
    sub_1C906483C();
    sub_1C906484C();
    result = sub_1C906480C();
    if (v16 == v20)
    {

      v24 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C90528C8()
{
  OUTLINED_FUNCTION_4_2();
  *(*v1 + 1944) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C9052A08()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1920);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  OUTLINED_FUNCTION_9(v5);
  v6 = OUTLINED_FUNCTION_39();
  *(v0 + 1952) = v6;
  sub_1C905432C(v4);
  OUTLINED_FUNCTION_38_24();
  if (!(!v10 & v9))
  {
    v11 = v7;
    v12 = v8;
    v51 = v2;
    v13 = type metadata accessor for ToolInvocation(0);
    OUTLINED_FUNCTION_13_1();
    v14 = OUTLINED_FUNCTION_39();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
    OUTLINED_FUNCTION_9(v15);
    v16 = OUTLINED_FUNCTION_39();
    v17 = sub_1C9061C4C();
    OUTLINED_FUNCTION_171(v17);
    sub_1C9061C3C();
    sub_1C9053C70();
    sub_1C9061C2C();
    if (!v3)
    {
      OUTLINED_FUNCTION_37_25(v11, v12);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v13);
      sub_1C8E4D9D0(v16, v14);

      sub_1C8E4D9D0(v14, v6);
      type metadata accessor for ConfirmationView(0);
      OUTLINED_FUNCTION_24_30();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_62();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);

      v2 = v51;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_37_25(v11, v12);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
    sub_1C8D16D78(v16, &qword_1EC316440, &dword_1C908BFE0);

    v2 = v51;
  }

  v21 = [*(v0 + 1920) viewSnippet];
  if (v21)
  {
    *v6 = v21;
    type metadata accessor for ConfirmationView(0);
    OUTLINED_FUNCTION_24_30();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_62();
  }

  else
  {
    type metadata accessor for ConfirmationView(0);
    OUTLINED_FUNCTION_115();
  }

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
LABEL_8:
  __swift_project_boxed_opaque_existential_1(*(v0 + 1592), *(*(v0 + 1592) + 24));
  v26 = type metadata accessor for ToolResultResponse(0);
  OUTLINED_FUNCTION_9(v26);
  v27 = OUTLINED_FUNCTION_39();
  *(v0 + 1960) = v27;
  v28 = *(v0 + 1584);
  if (v2)
  {
    v29 = v28;

    v30 = sub_1C9063EBC();

    v31 = v2;
    v32 = WFStripTTSHints(v30);

    v33 = sub_1C9063EEC();
    v35 = v34;

    v36 = *(v0 + 1584);
  }

  else
  {
    v31 = 0;
    v36 = v28;
    v35 = 0;
    v33 = v1;
  }

  v37 = v1;
  v38 = *(v0 + 1920);
  v39 = [v38 linkDialog];
  LOBYTE(v38) = [v38 destructive];

  *(v0 + 976) = v33;
  *(v0 + 984) = v35;
  *(v0 + 992) = v37;
  *(v0 + 1000) = v31;
  *(v0 + 1008) = v39;
  *(v0 + 1016) = v38;
  OUTLINED_FUNCTION_37_0();
  v50 = (v40 + *v40);
  v41 = swift_task_alloc();
  *(v0 + 1968) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_13_39(v41);

  return v50(v27);
}

uint64_t sub_1C9052E1C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17_39();
  v4 = *(v0 + 1008);

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9052F58()
{
  v1 = *(v0 + 1960);
  v2 = sub_1C9061EBC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 2, v2);
  v4 = *(v0 + 1952);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      [objc_allocWithZone(MEMORY[0x1E69E0BD0]) initWithResponseCode_];
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x1E69E0BD0]) initWithResponseCode_];
    }

    sub_1C8D16D78(v4, &qword_1EC3174C0, &qword_1C908C180);
  }

  else
  {
    v5 = *(v2 - 8);
    v6 = OUTLINED_FUNCTION_39();
    (*(v5 + 32))(v6, v1, v2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
    OUTLINED_FUNCTION_9(v7);
    v8 = OUTLINED_FUNCTION_39();
    (*(v5 + 16))(v8, v6, v2);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
    v12 = objc_allocWithZone(MEMORY[0x1E69E0BD0]);
    sub_1C9054278(v8);
    (*(v5 + 8))(v6, v2);
    sub_1C8D16D78(v4, &qword_1EC3174C0, &qword_1C908C180);
  }

  v13 = OUTLINED_FUNCTION_2_77();

  return v14(v13);
}

uint64_t sub_1C9053174()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 2000);
  v3 = *(v1 + 1992);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  sub_1C8D16D78(v2, &qword_1EC3174C0, &qword_1C908C180);
  sub_1C9054538(v3, type metadata accessor for ToolResultResponse);

  v6 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C90532BC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 1984);
  v2 = *(v0 + 1976);

  [objc_allocWithZone(MEMORY[0x1E69E0AB8]) initWithCancelled_];
  OUTLINED_FUNCTION_257();
  swift_bridgeObjectRelease_n();

  v3 = OUTLINED_FUNCTION_2_77();

  return v4(v3);
}

uint64_t sub_1C9053354()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9053454()
{
  OUTLINED_FUNCTION_7();
  [objc_allocWithZone(MEMORY[0x1E69E0980]) initWithResponseCode_];
  OUTLINED_FUNCTION_63();

  return v1();
}

uint64_t sub_1C90534D0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C90535B4()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 2040);
  v2 = *(v0 + 2032);
  v3 = [objc_allocWithZone(MEMORY[0x1E69E0B08]) initWithshouldRunFollowUpAction_];
  sub_1C9054538(v1, type metadata accessor for FollowUpActionExecution.Request);
  sub_1C9054538(v2, type metadata accessor for ToolInvocation);

  OUTLINED_FUNCTION_63();

  return v4(v3);
}

uint64_t sub_1C9053684()
{
  v1 = *(v0 + 1920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  OUTLINED_FUNCTION_9(v2);
  v3 = OUTLINED_FUNCTION_39();
  *(v0 + 1952) = v3;
  sub_1C905432C(v1);
  OUTLINED_FUNCTION_38_24();
  if (!v5 & v4)
  {
    v11 = [*(v0 + 1920) viewSnippet];
    if (v11)
    {
      *v3 = v11;
      type metadata accessor for ConfirmationView(0);
      OUTLINED_FUNCTION_24_30();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_62();
    }

    else
    {
      type metadata accessor for ConfirmationView(0);
      OUTLINED_FUNCTION_115();
    }

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    v6 = type metadata accessor for ToolInvocation(0);
    OUTLINED_FUNCTION_13_1();
    v7 = OUTLINED_FUNCTION_39();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
    OUTLINED_FUNCTION_9(v8);
    v9 = OUTLINED_FUNCTION_39();
    v10 = sub_1C9061C4C();
    OUTLINED_FUNCTION_171(v10);
    sub_1C9061C3C();
    sub_1C9053C70();
    OUTLINED_FUNCTION_28_23();
    sub_1C9061C2C();
    v25 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37_25(v25, v26);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v6);
    sub_1C8E4D9D0(v9, v7);

    sub_1C8E4D9D0(v7, v3);
    type metadata accessor for ConfirmationView(0);
    OUTLINED_FUNCTION_24_30();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_62();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 1592), *(*(v0 + 1592) + 24));
  v16 = OUTLINED_FUNCTION_257();
  v17 = type metadata accessor for ToolResultResponse(v16);
  OUTLINED_FUNCTION_9(v17);
  v18 = OUTLINED_FUNCTION_39();
  *(v0 + 1960) = v18;
  v19 = *(v0 + 1920);
  v20 = *(v0 + 1584);
  v21 = [v19 linkDialog];
  LOBYTE(v19) = [v19 destructive];

  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = v21;
  *(v0 + 1016) = v19;
  OUTLINED_FUNCTION_37_0();
  v34 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 1968) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_13_39(v23);

  return v34(v18);
}

uint64_t sub_1C90539F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {

      v7 = sub_1C8CEC2D4(a1, a2);

      return v7 & 1;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1C9053A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
    if (a4 == 1)
    {
      goto LABEL_5;
    }

    if (a2)
    {
      if (!a4)
      {
        sub_1C8CE5404(a1, a2, a3, 0, a5, a6);
        sub_1C8CE5404(a3, 0, v35, v36, v37, v38);
        goto LABEL_17;
      }

      if (a1 != a3 || a2 != a4)
      {
        v22 = sub_1C9064C2C();
        sub_1C8CE5404(a1, a2, v23, v24, v25, v26);
        sub_1C8CE5404(a3, a4, v27, v28, v29, v30);
        sub_1C8CE5490(a3, a4);
        if (v22)
        {
          goto LABEL_22;
        }

LABEL_17:
        v19 = a1;
        v20 = a2;
        goto LABEL_18;
      }

      sub_1C8CE5404(a1, a2, a3, a4, a5, a6);
      sub_1C8CE5404(a1, a2, v40, v41, v42, v43);
      sub_1C8CE5490(a1, a2);
    }

    else
    {
      sub_1C8CE5404(a1, 0, a3, a4, a5, a6);
      if (a4)
      {
        sub_1C8CE5404(a3, a4, v31, v32, v33, v34);
        sub_1C8CE5490(a3, a4);
        goto LABEL_17;
      }

      sub_1C8CE5404(a3, 0, v31, v32, v33, v34);
    }

LABEL_22:
    sub_1C8CE5490(a1, a2);
    return 1;
  }

  if (a4 != 1)
  {
LABEL_5:
    sub_1C8CE5404(a1, a2, a3, a4, a5, a6);
    sub_1C8CE5404(a3, a4, v15, v16, v17, v18);
    sub_1C8CE5490(a1, a2);
    v19 = a3;
    v20 = a4;
LABEL_18:
    sub_1C8CE5490(v19, v20);
    return 0;
  }

  v10 = 1;
  sub_1C8CE5404(a1, 1, a3, 1, a5, a6);
  sub_1C8CE5404(a3, 1, v11, v12, v13, v14);
  sub_1C8CE5490(a1, 1);
  return v10;
}

uint64_t sub_1C9053C14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1C8CEB10C(a1, a2);
      v3 = v2;

      return v3 & 1;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1C9053C70()
{
  result = qword_1EC316460;
  if (!qword_1EC316460)
  {
    type metadata accessor for ToolInvocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316460);
  }

  return result;
}

id sub_1C9053CC8(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C8CB78AC(0, &qword_1EC31EB40, 0x1E69E0AA8);
  v4 = sub_1C906418C();

  v5 = [v3 initWithItems:v4 cancelled:a2 & 1];

  return v5;
}

id sub_1C9053D58@<X0>(void *a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_4();
  result = swift_dynamicCastObjCClass();
  v4 = result;
  if (result)
  {
    result = v1;
  }

  *a1 = v4;
  return result;
}

void sub_1C9053DA4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB50, &qword_1C90C7448);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &aBlock - v7;
  v9 = [a2 linkDialog];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    v18 = sub_1C9054590;
    v19 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1C9054044;
    v17 = &block_descriptor_7;
    v13 = _Block_copy(&aBlock);

    [v10 getResultWithCompletionHandler_];
    _Block_release(v13);
  }

  else
  {
    aBlock = 0;
    v15 = 0;
    sub_1C906426C();
  }
}

uint64_t sub_1C9053F90(void *a1)
{
  if (a1)
  {
    v1 = [a1 print];
    v2 = sub_1C906419C();

    if (*(v2 + 16))
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB50, &qword_1C90C7448);
  return sub_1C906426C();
}

uint64_t sub_1C9054044(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1C90540C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C9063EBC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithInputtedText:v5 cancelled:a3 & 1];

  return v6;
}

id sub_1C9054130(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C9061FEC();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_1C9061F8C();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithInputtedDate:v7 cancelled:a2 & 1];

  return v8;
}

id sub_1C90541EC(uint64_t a1, char a2)
{
  if (a1)
  {
    sub_1C8CB78AC(0, &qword_1EC3154D0, 0x1E69E0AD8);
    v4 = sub_1C906418C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithQueryResults:v4 cancelled:a2 & 1];

  return v5;
}

id sub_1C9054278(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9061EBC();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_1C9061DDC();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = [v2 initWithRequestedOpenURL_];

  return v6;
}

uint64_t sub_1C905432C(void *a1)
{
  v1 = [a1 encodedSnippetActionToolInvocation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C9061F3C();

  return v3;
}

id WFStripTTSHints(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69E0D80] parseAnnotatedString:v1];
  v3 = [v2 displayString];

  return v3;
}

uint64_t sub_1C90543FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C905446C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C90544DC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_257();
  v5(v4);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C9054538(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C9054590(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB50, &qword_1C90C7448);
  OUTLINED_FUNCTION_9(v2);

  return sub_1C9053F90(a1);
}

uint64_t OUTLINED_FUNCTION_37_25(uint64_t a1, unint64_t a2)
{
  sub_1C8CE7BD0(a1, a2);
}

void static CompoundPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_1C8CEC394();
  }
}

uint64_t CompoundPredicate.InitializationError.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t CompoundPredicate.Operator.debugDescription.getter()
{
  if (*v0)
  {
    return 21071;
  }

  else
  {
    return 4476481;
  }
}

uint64_t sub_1C9054754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6581857 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C9054814(char a1)
{
  if (a1)
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_1C9054838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9054CE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9054874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9054CE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90548B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9054754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C90548E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9054C40(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C905491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9054C40(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9054958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9054C94(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9054994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9054C94(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void CompoundPredicate.Operator.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB58, &qword_1C90C7470);
  OUTLINED_FUNCTION_11();
  v30 = v4;
  v31 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB60, &qword_1C90C7478);
  OUTLINED_FUNCTION_11();
  v27 = v8;
  v28 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB68, &qword_1C90C7480);
  OUTLINED_FUNCTION_11();
  v14 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = *v0;
  v19 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9054C40(v19, v20, v21);
  v22 = sub_1C9064E1C();
  v25 = (v14 + 8);
  if (v18)
  {
    sub_1C9054C94(v22, v23, v24);
    v26 = v29;
    sub_1C9064ACC();
    (*(v30 + 8))(v26, v31);
  }

  else
  {
    sub_1C9054CE8(v22, v23, v24);
    sub_1C9064ACC();
    (*(v27 + 8))(v11, v28);
  }

  (*v25)(v17, v12);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C9054C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB70;
  if (!qword_1EC31EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB70);
  }

  return result;
}

unint64_t sub_1C9054C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB78;
  if (!qword_1EC31EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB78);
  }

  return result;
}

unint64_t sub_1C9054CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EB80;
  if (!qword_1EC31EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EB80);
  }

  return result;
}

uint64_t CompoundPredicate.Operator.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void CompoundPredicate.Operator.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v24;
  a23 = v25;
  v77 = v23;
  v27 = v26;
  v74 = v28;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB88, &qword_1C90C7488);
  OUTLINED_FUNCTION_11();
  v73 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v69 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB90, &qword_1C90C7490);
  OUTLINED_FUNCTION_11();
  v72 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v69 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB98, &qword_1C90C7498);
  OUTLINED_FUNCTION_11();
  v75 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v69 - v41;
  v43 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C9054C40(v43, v44, v45);
  v46 = v77;
  sub_1C9064DEC();
  if (v46)
  {
    goto LABEL_10;
  }

  v70 = v33;
  v71 = v37;
  v77 = v27;
  v47 = v76;
  v48 = sub_1C9064A9C();
  v49 = sub_1C8CB8914(v48, 0);
  if (v51 == v52 >> 1)
  {
    v76 = v49;
LABEL_9:
    v65 = sub_1C90647DC();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v67 = &type metadata for CompoundPredicate.Operator;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v42, v38);
    v27 = v77;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_11:
    OUTLINED_FUNCTION_198();
    return;
  }

  v69[1] = 0;
  if (v51 < (v52 >> 1))
  {
    v53 = *(v50 + v51);
    v54 = sub_1C8CB891C(v51 + 1, v52 >> 1, v49, v50, v51, v52);
    v56 = v55;
    v58 = v57;
    v59 = swift_unknownObjectRelease();
    if (v56 == v58 >> 1)
    {
      if (v53)
      {
        a13 = 1;
        sub_1C9054C94(v59, v60, v61);
        v62 = v32;
        OUTLINED_FUNCTION_191_0(&type metadata for CompoundPredicate.Operator.OrCodingKeys, &a13);
        v63 = v74;
        v64 = v75;
        swift_unknownObjectRelease();
        (*(v73 + 8))(v62, v47);
      }

      else
      {
        a12 = 0;
        sub_1C9054CE8(v59, v60, v61);
        v68 = v71;
        OUTLINED_FUNCTION_191_0(&type metadata for CompoundPredicate.Operator.AndCodingKeys, &a12);
        v63 = v74;
        v64 = v75;
        swift_unknownObjectRelease();
        (*(v72 + 8))(v68, v70);
      }

      (*(v64 + 8))(v42, v56);
      *v63 = v53;
      __swift_destroy_boxed_opaque_existential_1(v77);
      goto LABEL_11;
    }

    v76 = v54;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t CompoundPredicate.operands.getter()
{
  v1 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = type metadata accessor for AnyPredicate(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = *(v0 + 8);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C8D0A114(0, v13, 0);
    v14 = v26;
    OUTLINED_FUNCTION_139();
    v16 = v12 + v15;
    v17 = *(v3 + 72);
    do
    {
      sub_1C90565E0(v16, v7, type metadata accessor for ComparisonPredicate);
      v25[3] = v1;
      v25[4] = sub_1C8D811A8(&qword_1EC3151A8, &protocol conformance descriptor for ComparisonPredicate);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      sub_1C90565E0(v7, boxed_opaque_existential_1, type metadata accessor for ComparisonPredicate);
      AnyPredicate.init(predicate:)(v25, v11);
      sub_1C9056640(v7, type metadata accessor for ComparisonPredicate);
      v26 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v23 = OUTLINED_FUNCTION_176(v19);
        sub_1C8D0A114(v23, v20 + 1, 1);
        v14 = v26;
      }

      *(v14 + 16) = v20 + 1;
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_3_63();
      sub_1C9056700(v11, v21, v22);
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  return v14;
}

ToolKit::CompoundPredicate __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CompoundPredicate.init(_:operands:)(ToolKit::CompoundPredicate::Operator _, Swift::OpaquePointer operands)
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v38 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v37 = v11 - v10;
  v12 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v34 = *v5;
  v19 = *(v3 + 16);
  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C8D0A16C(0, v19, 0);
    OUTLINED_FUNCTION_139();
    v33 = v3;
    v21 = v3 + v20;
    v36 = *(v8 + 72);
    do
    {
      sub_1C90565E0(v21, v37, type metadata accessor for ComparisonPredicate);
      (*(v14 + 16))(v18, v37 + *(v38 + 24), v12);
      sub_1C9056640(v37, type metadata accessor for ComparisonPredicate);
      v23 = *(v39 + 16);
      v22 = *(v39 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_176(v22);
        sub_1C8D0A16C(v25, v23 + 1, 1);
      }

      *(v39 + 16) = v23 + 1;
      OUTLINED_FUNCTION_139();
      (*(v14 + 32))(v39 + v24 + *(v14 + 72) * v23, v18, v12);
      v21 += v36;
      --v19;
    }

    while (v19);
    v3 = v33;
  }

  sub_1C8D2C3A0();
  v27 = *(v26 + 16);

  if (v27 == 1)
  {
    *v35 = v34;
    *(v35 + 8) = v3;
  }

  else
  {

    sub_1C9056408(v28, v29, v30);
    swift_allocError();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_198();
  result.comparisonOperands._rawValue = v32;
  result.operator = v31;
  return result;
}

uint64_t CompoundPredicate.debugDescription.getter()
{
  type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_11();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    OUTLINED_FUNCTION_139();
    v10 = v7 + v9;
    v16 = *(v2 + 72);
    do
    {
      sub_1C90565E0(v10, v6, type metadata accessor for ComparisonPredicate);
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](46, 0xE100000000000000);
      MEMORY[0x1CCA81A90](*(v6 + 16), *(v6 + 24));
      MEMORY[0x1CCA81A90](32, 0xE100000000000000);
      sub_1C90648BC();
      sub_1C9056640(v6, type metadata accessor for ComparisonPredicate);
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_176(v11);
        sub_1C8CA6480();
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
      v10 += v16;
      --v8;
    }

    while (v8);
  }

  MEMORY[0x1CCA81A90](32, 0xE100000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8D3A5F4();
  v14 = sub_1C9063E9C();

  return v14;
}

uint64_t sub_1C90559EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74617265706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C90D0E20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C9055ABC(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x726F74617265706FLL;
  }
}

uint64_t sub_1C9055B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90559EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9055B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905645C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9055B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905645C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void CompoundPredicate.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EBA8, &qword_1C90C74A0);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v16[0] = *(v0 + 8);
  v10 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C905645C(v10, v11, v12);
  v13 = sub_1C9064E1C();
  sub_1C90564B0(v13, v14, v15);
  sub_1C9064B8C();
  if (!v1)
  {
    v16[1] = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EBC0, &qword_1C90C74A8);
    sub_1C9056558(&qword_1EC31EBC8, &qword_1EDA609B8, &protocol conformance descriptor for ComparisonPredicate, MEMORY[0x1E69E6300]);
    sub_1C9064B8C();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_198();
}

void CompoundPredicate.hash(into:)()
{
  MEMORY[0x1CCA82810](*v0);

  sub_1C8D0389C();
}

uint64_t CompoundPredicate.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  sub_1C8D0389C();
  return sub_1C9064DBC();
}

void CompoundPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EBD0, &unk_1C90C74B0);
  OUTLINED_FUNCTION_11();
  v31 = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v42 - v33;
  v35 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C905645C(v35, v36, v37);
  v38 = sub_1C9064DEC();
  if (!v24)
  {
    sub_1C9056504(v38, v39, v40);
    sub_1C9064A6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EBC0, &qword_1C90C74A8);
    sub_1C9056558(&qword_1EC31EBE0, &qword_1EDA609B0, &protocol conformance descriptor for ComparisonPredicate, MEMORY[0x1E69E6330]);
    sub_1C9064A6C();
    (*(v31 + 8))(v34, v29);
    v41 = v42[1];
    *v28 = a14;
    *(v28 + 8) = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C9056020(uint64_t a1)
{
  v2 = *v1;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v2);
  sub_1C8D0389C();
  return sub_1C9064DBC();
}

ToolKit::CompoundPredicate __swiftcall CompoundPredicate.init(_:operands:)(ToolKit::CompoundPredicate::Operator _, Swift::OpaquePointer operands)
{
  v4 = _;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E90, &qword_1C907AAA0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &rawValue - v7;
  v9 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_11();
  v40 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v41 = type metadata accessor for AnyPredicate(0);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &rawValue - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &rawValue - v19;
  v21 = *v4;
  v42 = v21;
  v22 = *(operands._rawValue + 2);
  if (v22)
  {
    rawValue = operands._rawValue;
    v38 = v5;
    v23 = operands._rawValue + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v24 = *(v18 + 72);
    v25 = MEMORY[0x1E69E7CC0];
    v39 = v14;
    do
    {
      sub_1C90565E0(v23, v20, type metadata accessor for AnyPredicate);
      OUTLINED_FUNCTION_3_63();
      sub_1C9056700(v20, v16, v26);
      if (swift_getEnumCaseMultiPayload())
      {
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
        sub_1C9056640(v16, type metadata accessor for AnyPredicate);
      }

      else
      {
        OUTLINED_FUNCTION_1_84();
        sub_1C9056700(v16, v8, v27);
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1C9056698(v8);
      }

      else
      {
        OUTLINED_FUNCTION_1_84();
        sub_1C9056700(v8, v14, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8D01EFC();
          v25 = v33;
        }

        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_176(v29);
          sub_1C8D01EFC();
          v25 = v34;
        }

        *(v25 + 16) = v30 + 1;
        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_1_84();
        v14 = v39;
        sub_1C9056700(v39, v31, v32);
      }

      v23 += v24;
      --v22;
    }

    while (v22);

    v21 = v42;
    v5 = v38;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  *v5 = v21;
  *(v5 + 8) = v25;
  result.comparisonOperands._rawValue = v36;
  result.operator = v35;
  return result;
}

unint64_t sub_1C9056408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBA0;
  if (!qword_1EC31EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBA0);
  }

  return result;
}

unint64_t sub_1C905645C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBB0;
  if (!qword_1EC31EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBB0);
  }

  return result;
}

unint64_t sub_1C90564B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBB8;
  if (!qword_1EC31EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBB8);
  }

  return result;
}

unint64_t sub_1C9056504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBD8;
  if (!qword_1EC31EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBD8);
  }

  return result;
}

uint64_t sub_1C9056558(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31EBC0, &qword_1C90C74A8);
    sub_1C8D811A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C90565E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9056640(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C9056698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E90, &qword_1C907AAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9056700(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C9056764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBE8;
  if (!qword_1EC31EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBE8);
  }

  return result;
}

unint64_t sub_1C90567BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBF0;
  if (!qword_1EC31EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBF0);
  }

  return result;
}

unint64_t sub_1C9056810(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9056850(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8DCDF24(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8DCDC80(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C90568A4(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C9056850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EBF8;
  if (!qword_1EC31EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EBF8);
  }

  return result;
}

unint64_t sub_1C90568A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC00;
  if (!qword_1EC31EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC00);
  }

  return result;
}

unint64_t sub_1C90568FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC08;
  if (!qword_1EC31EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompoundPredicate.InitializationError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C9056A20(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9056B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC10;
  if (!qword_1EC31EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC10);
  }

  return result;
}

unint64_t sub_1C9056B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC18;
  if (!qword_1EC31EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC18);
  }

  return result;
}

unint64_t sub_1C9056BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC20;
  if (!qword_1EC31EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC20);
  }

  return result;
}

unint64_t sub_1C9056C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC28;
  if (!qword_1EC31EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC28);
  }

  return result;
}

unint64_t sub_1C9056C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC30;
  if (!qword_1EC31EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC30);
  }

  return result;
}

unint64_t sub_1C9056CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC38;
  if (!qword_1EC31EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC38);
  }

  return result;
}

unint64_t sub_1C9056D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC40;
  if (!qword_1EC31EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC40);
  }

  return result;
}

unint64_t sub_1C9056D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC48;
  if (!qword_1EC31EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC48);
  }

  return result;
}

unint64_t sub_1C9056DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC50;
  if (!qword_1EC31EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC50);
  }

  return result;
}

unint64_t sub_1C9056E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC58;
  if (!qword_1EC31EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC58);
  }

  return result;
}

uint64_t type metadata accessor for FetchedTool(uint64_t a1)
{
  result = qword_1EDA692D8;
  if (!qword_1EDA692D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9056F04(uint64_t a1)
{
  type metadata accessor for ToolRecord(319);
  if (v1 <= 0x3F)
  {
    sub_1C9057158(319, &qword_1EDA60560, &unk_1F48B7BF8, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C9057158(319, &qword_1EDA667B0, &type metadata for CategoryRecord, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C9057158(319, &qword_1EDA66780, &type metadata for SearchKeywordRecord, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1C9057158(319, &qword_1EDA668B8, &type metadata for FetchedContainerMetadata, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C9057158(319, &qword_1EDA66760, &type metadata for FetchedContainerMetadata, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1C9057158(319, &qword_1EDA66770, &type metadata for FetchedSampleInvocation, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1C9057158(319, &qword_1EDA66740, &type metadata for FetchedLinkActionIdentifier, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  sub_1C9057158(319, &qword_1EDA667E8, &type metadata for SystemToolProtocolRecord, MEMORY[0x1E69E62F8]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1C9057158(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1C90571A8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v255 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v212 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v212 - v10;
  v256 = *a2;
  v12 = type metadata accessor for FetchedTool(0);
  memcpy(v268, (a1 + *(v12 + 36)), sizeof(v268));
  sub_1C8D50178(v268, v265);
  sub_1C8F28B4C(v268, v269);
  *&v258 = v12;
  v13 = *(v12 + 40);
  memcpy(v270, (a1 + v13), sizeof(v270));
  memcpy(__dst, (a1 + v13), 0x88uLL);
  if (sub_1C8CE5448(__dst) == 1)
  {
    v230 = 0;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v240 = 0u;
  }

  else
  {
    memcpy(v267, __dst, sizeof(v267));
    memcpy(v265, v270, 0x88uLL);
    sub_1C8D50178(v265, v264);
    sub_1C8F28B4C(v267, v264);
    v246 = v264[0];
    v243 = v264[2];
    v244 = v264[1];
    v241 = v264[4];
    v242 = v264[3];
    v240 = v264[5];
    v230 = LOBYTE(v264[6]);
  }

  v14 = (a1 + *(v258 + 20));
  v15 = v14[18];
  v248 = v3;
  v254 = v11;
  v231 = v8;
  if (v15)
  {
    v245 = v14[17];
    v16 = (a1 + *(type metadata accessor for ToolRecord(0) + 52));
    v17 = *v16;
    v238 = v16[1];
    v239 = v17;
  }

  else
  {
    v245 = 0;
    v238 = 0;
    v239 = 0;
  }

  v18 = *(a1 + *(v258 + 56));
  v19 = *(v18 + 16);
  v257 = a1;
  v247 = v15;
  v250 = v14;
  if (v19)
  {
    v260[0] = MEMORY[0x1E69E7CC0];

    v20 = OUTLINED_FUNCTION_14_43();
    sub_1C8D0A0B4(v20, v21, v22);
    v23 = v260[0];
    v24 = v18 + 80;
    do
    {
      v25 = OUTLINED_FUNCTION_13_40(*v24, *(v24 + 16), *(v24 + 32), *(v24 + 41));
      sub_1C8DFBCF4(v25, v26, &qword_1EC312D80, &qword_1C9069690);
      v260[0] = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = OUTLINED_FUNCTION_10_50(v27);
        sub_1C8D0A0B4(v29, v28 + 1, 1);
        v23 = v260[0];
      }

      *(v23 + 16) = v28 + 1;
      OUTLINED_FUNCTION_12_41(v23 + (v28 << 6));
      v24 += 112;
      --v19;
    }

    while (v19);
    a1 = v257;
    v14 = v250;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v259 = v23;
  v30 = *(a1 + *(v258 + 44));
  v31 = *(v30 + 16);
  if (v31)
  {
    *&v264[0] = MEMORY[0x1E69E7CC0];
    v32 = OUTLINED_FUNCTION_14_43();
    sub_1C8D09B8C(v32, v33, v34);
    v35 = *&v264[0];
    v36 = (v30 + 32);
    do
    {
      memcpy(v266, v36, sizeof(v266));
      sub_1C8D50178(v266, v265);
      sub_1C8F28B4C(v266, v265);
      *&v264[0] = v35;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_176(v37);
        OUTLINED_FUNCTION_19_6();
        sub_1C8D09B8C(v39, v40, v41);
        v35 = *&v264[0];
      }

      *(v35 + 16) = v38 + 1;
      memcpy((v35 + 104 * v38 + 32), v265, 0x61uLL);
      v36 += 136;
      --v31;
    }

    while (v31);
    v237 = v35;
  }

  else
  {
    v237 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(a1 + 24);
  v229 = *(a1 + 16);
  v43 = v14[4];
  v234 = v14[3];
  v232 = *(a1 + 32);
  v44 = *(a1 + *(v258 + 24));
  v45 = *(v44 + 16);
  v235 = v42;
  v236 = v255 + 37;

  v233 = v43;

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v49 = (v44 + 32 + 272 * v47);
  while (v45 != v47)
  {
    if (v47 >= *(v44 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      return result;
    }

    result = memcpy(v265, v49, 0x10AuLL);
    if ((v265[5] & 1) == 0)
    {
      sub_1C90313F0(v265, v264);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v260[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_19_34();
        v48 = v260[0];
      }

      v52 = *(v48 + 16);
      v51 = *(v48 + 24);
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_10_50(v51);
        OUTLINED_FUNCTION_17_40();
        sub_1C8D0A094(v53, v54, v55);
        v48 = v260[0];
      }

      ++v47;
      *(v48 + 16) = v52 + 1;
      result = OUTLINED_FUNCTION_22_34((v48 + 272 * v52 + 32));
      goto LABEL_22;
    }

    v49 += 272;
    ++v47;
  }

  v56 = *(v48 + 16);
  if (v56)
  {
    v263 = MEMORY[0x1E69E7CC0];
    v57 = OUTLINED_FUNCTION_6_48();
    sub_1C8D0971C(v57, v58, v59);
    v60 = v56 - 1;
    v61 = v263;
    v62 = 32;
    v63 = v256;
    while (1)
    {
      memcpy(v265, (v48 + v62), 0x10AuLL);
      OUTLINED_FUNCTION_22_34(v264);
      v261 = v63;
      sub_1C90313F0(v265, v260);
      sub_1C90314AC(v264, &v261, v262);
      v263 = v61;
      v65 = *(v61 + 16);
      v64 = *(v61 + 24);
      if (v65 >= v64 >> 1)
      {
        OUTLINED_FUNCTION_176(v64);
        OUTLINED_FUNCTION_19_6();
        sub_1C8D0971C(v66, v67, v68);
        v63 = v256;
        v61 = v263;
      }

      *(v61 + 16) = v65 + 1;
      memcpy((v61 + 136 * v65 + 32), v262, 0x88uLL);
      if (!v60)
      {
        break;
      }

      --v60;
      v62 += 272;
    }
  }

  else
  {

    v61 = MEMORY[0x1E69E7CC0];
  }

  v69 = 0;
  v70 = *(v44 + 16);
  v71 = v44 + 32;
  v72 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v73 = (v71 + 272 * v69);
  while (v70 != v69)
  {
    if (v69 >= *(v44 + 16))
    {
      goto LABEL_100;
    }

    result = memcpy(v265, v73, 0x10AuLL);
    if (v265[5])
    {
      sub_1C90313F0(v265, v264);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v260[0] = v72;
      v272 = v71;
      if ((v74 & 1) == 0)
      {
        OUTLINED_FUNCTION_19_34();
        v72 = v260[0];
      }

      v76 = *(v72 + 16);
      v75 = *(v72 + 24);
      if (v76 >= v75 >> 1)
      {
        OUTLINED_FUNCTION_10_50(v75);
        OUTLINED_FUNCTION_17_40();
        sub_1C8D0A094(v77, v78, v79);
        v72 = v260[0];
      }

      ++v69;
      *(v72 + 16) = v76 + 1;
      result = OUTLINED_FUNCTION_22_34((v72 + 272 * v76 + 32));
      v71 = v272;
      goto LABEL_41;
    }

    v73 += 272;
    ++v69;
  }

  v228 = v61;
  v80 = *(v72 + 16);
  if (v80)
  {
    v263 = MEMORY[0x1E69E7CC0];
    v81 = OUTLINED_FUNCTION_6_48();
    sub_1C8D0971C(v81, v82, v83);
    v272 = v263;
    v84 = v80 - 1;
    v85 = 32;
    v86 = v257;
    v87 = v256;
    while (1)
    {
      memcpy(v265, (v72 + v85), 0x10AuLL);
      OUTLINED_FUNCTION_22_34(v264);
      v261 = v87;
      sub_1C90313F0(v265, v260);
      sub_1C90314AC(v264, &v261, v262);
      v88 = v272;
      v263 = v272;
      v90 = *(v272 + 16);
      v89 = *(v272 + 24);
      if (v90 >= v89 >> 1)
      {
        OUTLINED_FUNCTION_176(v89);
        OUTLINED_FUNCTION_17_40();
        sub_1C8D0971C(v91, v92, v93);
        v87 = v256;
        v88 = v263;
      }

      *(v88 + 16) = v90 + 1;
      v272 = v88;
      memcpy((v88 + 136 * v90 + 32), v262, 0x88uLL);
      if (!v84)
      {
        break;
      }

      --v84;
      v85 += 272;
    }

    v94 = v86;
  }

  else
  {

    v272 = MEMORY[0x1E69E7CC0];
    v94 = v257;
  }

  v95 = *(v94 + 72);
  v96 = v250[6];
  v221 = v250[5];
  v97 = v250[7];
  v251 = v250[8];
  v98 = v250[10];
  v226 = v250[9];
  v227 = v97;
  v100 = v250[11];
  v99 = v250[12];
  v224 = v250[13];
  v252 = v250[14];
  v253 = v99;
  v101 = v250[16];
  v223 = v250[15];
  v102 = v94;
  v218 = type metadata accessor for ToolRecord(0);
  v103 = v102 + *(v218 + 48);
  v104 = v231;
  sub_1C8DFBCF4(v103, v231, &qword_1EC313190, &unk_1C9074070);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104, 1, v105);
  v107 = v254;
  v249 = v98;
  v250 = v101;
  v225 = v100;
  if (EnumTagSinglePayload == 1)
  {

    v108 = v96;

    sub_1C8D16D78(v104, &qword_1EC313190, &unk_1C9074070);
    v109 = 1;
  }

  else
  {
    sub_1C9059240(v104, v254, type metadata accessor for ToolIcon);

    v108 = v96;

    sub_1C8D16D78(v104, &qword_1EC313198, &unk_1C9074080);
    v109 = 0;
  }

  v220 = v108;
  v222 = v95;
  v110 = type metadata accessor for ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v107, v109, 1, v110);
  v111 = v257;
  v112 = *(v257 + *(v258 + 28));
  v113 = *(v112 + 16);
  v114 = MEMORY[0x1E69E7CC0];
  if (v113)
  {
    v265[0] = MEMORY[0x1E69E7CC0];
    v115 = OUTLINED_FUNCTION_20_35();
    sub_1C8D09BC4(v115, v116, v117);
    v114 = v265[0];
    v118 = (v112 + 64);
    do
    {
      v119 = *(v118 - 1);
      v120 = *v118;
      v265[0] = v114;
      v122 = *(v114 + 16);
      v121 = *(v114 + 24);

      if (v122 >= v121 >> 1)
      {
        OUTLINED_FUNCTION_15_35();
        OUTLINED_FUNCTION_17_40();
        sub_1C8D09BC4(v124, v125, v126);
        v114 = v265[0];
      }

      *(v114 + 16) = v122 + 1;
      v123 = v114 + 16 * v122;
      *(v123 + 32) = v119;
      *(v123 + 40) = v120;
      v118 += 5;
      --v113;
    }

    while (v113);
    v111 = v257;
  }

  v127 = *(v111 + *(v258 + 32));
  v128 = *(v127 + 16);
  v129 = MEMORY[0x1E69E7CC0];
  if (v128)
  {
    v265[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_20_35();
    sub_1C8CA6480();
    v130 = v265[0];
    v131 = (v127 + 64);
    do
    {
      v132 = *(v131 - 1);
      v133 = *v131;
      v265[0] = v130;
      v135 = *(v130 + 16);
      v134 = *(v130 + 24);

      if (v135 >= v134 >> 1)
      {
        OUTLINED_FUNCTION_15_35();
        OUTLINED_FUNCTION_17_40();
        sub_1C8CA6480();
        v130 = v265[0];
      }

      *(v130 + 16) = v135 + 1;
      v136 = v130 + 16 * v135;
      *(v136 + 32) = v132;
      *(v136 + 40) = v133;
      v131 += 6;
      --v128;
    }

    while (v128);
    v219 = v130;
    v111 = v257;
    v129 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v219 = MEMORY[0x1E69E7CC0];
  }

  v137 = *(v111 + 56);
  v138 = *(v111 + 40);
  v139 = *(v259 + 16);
  v231 = v114;
  v216 = v137;
  v217 = v138;
  if (v139)
  {
    v260[0] = v129;

    v140 = OUTLINED_FUNCTION_14_43();
    sub_1C8D0A05C(v140, v141, v142);
    v143 = v260[0];
    v144 = v139 - 1;
    for (i = 32; ; i += 64)
    {
      v146 = OUTLINED_FUNCTION_13_40(*(v259 + i), *(v259 + i + 16), *(v259 + i + 32), *(v259 + i + 41));
      sub_1C8DFBCF4(v146, v147, &qword_1EC312D80, &qword_1C9069690);
      v260[0] = v143;
      v149 = *(v143 + 16);
      v148 = *(v143 + 24);
      if (v149 >= v148 >> 1)
      {
        OUTLINED_FUNCTION_10_50(v148);
        OUTLINED_FUNCTION_19_6();
        sub_1C8D0A05C(v150, v151, v152);
        v143 = v260[0];
      }

      *(v143 + 16) = v149 + 1;
      OUTLINED_FUNCTION_12_41(v143 + (v149 << 6));
      if (!v144)
      {
        break;
      }

      --v144;
    }

    v129 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v143 = MEMORY[0x1E69E7CC0];
  }

  v259 = v143;
  v153 = v257;
  v215 = *(v257 + 64);
  v154 = (v257 + *(v218 + 56));
  v155 = *v154;
  v213 = v154[1];
  v214 = v155;
  v218 = *(v257 + 48);
  v156 = *(v257 + *(v258 + 52));
  v157 = *(v156 + 16);
  if (v157)
  {
    v265[0] = v129;

    OUTLINED_FUNCTION_6_48();
    sub_1C8CA6480();
    v158 = v256;
    v129 = v265[0];
    v159 = (v156 + 40);
    do
    {
      v160 = *(v159 - 1);
      v161 = *v159;
      v265[0] = v129;
      v163 = *(v129 + 16);
      v162 = *(v129 + 24);

      if (v163 >= v162 >> 1)
      {
        OUTLINED_FUNCTION_15_35();
        OUTLINED_FUNCTION_19_6();
        sub_1C8CA6480();
        v158 = v256;
        v129 = v265[0];
      }

      *(v129 + 16) = v163 + 1;
      v164 = v129 + 16 * v163;
      *(v164 + 32) = v160;
      *(v164 + 40) = v161;
      v159 += 3;
      --v157;
    }

    while (v157);
    v153 = v257;
  }

  else
  {

    v158 = v256;
  }

  v165 = v249;
  if (v158)
  {
    v166 = *(v153 + *(v258 + 48));
    v167 = *(v166 + 16);
    v168 = MEMORY[0x1E69E7CC0];
    if (v167)
    {
      *&v264[0] = MEMORY[0x1E69E7CC0];
      v169 = OUTLINED_FUNCTION_6_48();
      sub_1C8D096FC(v169, v170, v171);
      v168 = *&v264[0];
      v172 = (v166 + 32);
      do
      {
        memcpy(v260, v172, 0x48uLL);
        sub_1C8D92284(v260, v265);
        sub_1C8D923F8(v260, v265);
        v173 = *&v265[1];
        v174 = v265[0];
        v175 = v265[3];
        *&v264[0] = v168;
        v177 = *(v168 + 16);
        v176 = *(v168 + 24);
        if (v177 >= v176 >> 1)
        {
          OUTLINED_FUNCTION_176(v176);
          OUTLINED_FUNCTION_19_6();
          v258 = v179;
          sub_1C8D096FC(v180, v181, v182);
          v173 = v258;
          v168 = *&v264[0];
        }

        *(v168 + 16) = v177 + 1;
        v178 = v168 + 32 * v177;
        *(v178 + 32) = v174;
        *(v178 + 40) = v173;
        *(v178 + 56) = v175;
        v172 += 72;
        --v167;
      }

      while (v167);
      v153 = v257;
      v165 = v249;
    }
  }

  else
  {
    v168 = 0;
  }

  v183 = v230;
  v184 = v228;
  v185 = v227;
  v186 = v251;
  v187 = v255;
  v188 = v234;
  v189 = v235;
  *v255 = v229;
  v187[1] = v189;
  v187[2] = v188;
  v187[3] = v233;
  *(v187 + 32) = v232;
  v190 = v272;
  v187[5] = v184;
  v187[6] = v190;
  v191 = v221;
  v187[7] = v222;
  v187[8] = v191;
  v187[9] = v220;
  memcpy(v187 + 24, v269, 0x61uLL);
  v193 = v236;
  v192 = v237;
  v195 = v243;
  v194 = v244;
  *v236 = v246;
  v193[1] = v194;
  v197 = v241;
  v196 = v242;
  v193[2] = v195;
  v193[3] = v196;
  v198 = v240;
  v193[4] = v197;
  v193[5] = v198;
  *(v187 + 392) = v183;
  v187[50] = v192;
  v187[51] = v185;
  v199 = v225;
  v200 = v226;
  v187[52] = v186;
  v187[53] = v200;
  v187[54] = v165;
  v187[55] = v199;
  v201 = v224;
  v187[56] = v253;
  v187[57] = v201;
  v202 = v223;
  v187[58] = v252;
  v187[59] = v202;
  v187[60] = v250;
  v203 = type metadata accessor for ToolDefinition(0);
  v204 = v254;
  sub_1C8DFBCF4(v254, v187 + v203[16], &qword_1EC3144B8, &qword_1C90839E0);
  *(v187 + v203[17]) = v231;
  *(v187 + v203[18]) = v219;
  v205 = (v187 + v203[19]);
  v206 = v247;
  *v205 = v245;
  v205[1] = v206;
  v207 = v238;
  v205[2] = v239;
  v205[3] = v207;
  v208 = v217;
  *(v187 + v203[20]) = v216;
  *(v187 + v203[21]) = v208;
  *(v187 + v203[23]) = v259;
  *(v187 + v203[22]) = v215;
  v209 = (v187 + v203[24]);
  v210 = v213;
  *v209 = v214;
  v209[1] = v210;
  *(v187 + v203[25]) = v218;
  *(v187 + v203[26]) = v129;
  *(v187 + v203[27]) = v168;
  memcpy(v264, v269, 0x61uLL);
  sub_1C8CC1340(v269, v265);
  sub_1C8CC139C();
  sub_1C8D16D78(v204, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_4_61();
  sub_1C90591A0(v153, v211);
  return memcpy(v187 + 10, v265, 0x70uLL);
}

uint64_t sub_1C9058038(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x654B686372616573 && a2 == 0xEE007364726F7779;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x80000001C90CA2C0 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C90CA3A0 == a2;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001C90CCDC0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C9064C2C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C90583C4(char a1)
{
  result = 1819242356;
  switch(a1)
  {
    case 1:
      result = 0x617A696C61636F6CLL;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x69726F6765746163;
      break;
    case 4:
      result = 0x654B686372616573;
      break;
    case 5:
      result = 0x6F43656372756F73;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x72506D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C905853C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EC60, &qword_1C90C7BB8);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v49 - v7;
  type metadata accessor for FetchedTool(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v12;
  v13 = v12[10];
  sub_1C8D805E4(__src);
  v56 = v13;
  v54 = v11;
  memcpy(&v11[v13], __src, 0x88uLL);
  v14 = a1[3];
  v53 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C905906C(v15, v16, v17);
  v51 = v8;
  sub_1C9064DEC();
  if (v2)
  {
    v55 = v2;
    v21 = 0;
    OUTLINED_FUNCTION_8_51();
    v22 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v8 = v49;
    v18 = v50;
    v63[0] = 0;
    OUTLINED_FUNCTION_5_58();
    sub_1C90591F8(v19, v20, &unk_1C906AF90);
    sub_1C9064A6C();
    v28 = v54;
    v29 = sub_1C90590C0(v6, v54);
    v62 = 1;
    sub_1C8D80A10(v29, v30, v31);
    sub_1C9064A6C();
    memcpy((v28 + v65[5]), v63, 0xA8uLL);
    OUTLINED_FUNCTION_52_0();
    v60[0] = 2;
    OUTLINED_FUNCTION_9_44(&qword_1EDA60558);
    OUTLINED_FUNCTION_3_64();
    sub_1C9064A6C();
    LODWORD(v6) = 0;
    *(v28 + v65[6]) = v61[0];
    OUTLINED_FUNCTION_52_0();
    v60[0] = 3;
    OUTLINED_FUNCTION_9_44(&qword_1EDA667A8);
    OUTLINED_FUNCTION_3_64();
    sub_1C9064A6C();
    *(v28 + v65[7]) = v61[0];
    OUTLINED_FUNCTION_52_0();
    v60[0] = 4;
    OUTLINED_FUNCTION_9_44(&qword_1EDA66778);
    OUTLINED_FUNCTION_3_64();
    v32 = sub_1C9064A6C();
    *(v28 + v65[8]) = v61[0];
    v60[143] = 5;
    sub_1C8D80AB8(v32, v33, v34);
    sub_1C9064A6C();
    memcpy((v28 + v65[9]), v61, 0x88uLL);
    v59[143] = 6;
    sub_1C90649EC();
    LODWORD(v14) = 0;
    memcpy(v58, v60, sizeof(v58));
    v35 = v56;
    memcpy(v59, (v28 + v56), 0x88uLL);
    sub_1C8D16D78(v59, &qword_1EC3144D0, &qword_1C9074130);
    memcpy((v28 + v35), v58, 0x88uLL);
    OUTLINED_FUNCTION_52_0();
    v57[0] = 7;
    OUTLINED_FUNCTION_9_44(&qword_1EDA66758);
    OUTLINED_FUNCTION_3_64();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_21_31();
    *(v28 + *(v36 + 44)) = v37;
    v38 = &qword_1EC31E828;
    OUTLINED_FUNCTION_52_0();
    v57[0] = 8;
    OUTLINED_FUNCTION_9_44(&qword_1EDA66768);
    OUTLINED_FUNCTION_3_64();
    sub_1C9064A6C();
    v55 = 0;
    OUTLINED_FUNCTION_21_31();
    *(v28 + *(v39 + 48)) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E850, &qword_1C90C5FA8);
    v57[0] = 9;
    sub_1C9059124(&qword_1EDA66738, &qword_1EC31E850, &qword_1C90C5FA8, sub_1C9031E80);
    v41 = v55;
    sub_1C9064A6C();
    v55 = v41;
    if (v41)
    {
      (*(v18 + 8))(v51, v52);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v21 = 0;
      OUTLINED_FUNCTION_0_87();
      v27 = 1;
      v26 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_21_31();
      *&v54[*(v42 + 52)] = v43;
      v38 = &unk_1EC31EC70;
      OUTLINED_FUNCTION_52_0();
      v57[0] = 10;
      OUTLINED_FUNCTION_9_44(&qword_1EDA667E0);
      OUTLINED_FUNCTION_3_64();
      v44 = v55;
      sub_1C9064A6C();
      v55 = v44;
      if (!v44)
      {
        (*(v18 + 8))(v51, v52);
        OUTLINED_FUNCTION_21_31();
        v46 = v54;
        *&v54[*(v45 + 56)] = v47;
        sub_1C9059240(v46, v8, type metadata accessor for FetchedTool);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_4_61();
        return sub_1C90591A0(v46, v48);
      }

      (*(v18 + 8))(v51, v52);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_0_87();
      v27 = 1;
      v26 = 1;
      v21 = 1;
    }

    v22 = v54;
    OUTLINED_FUNCTION_5_58();
    sub_1C90591A0(v22, v23);
    if (v38)
    {
      v24 = v65;
      memcpy(v63, (v22 + v65[5]), sizeof(v63));
      sub_1C8D80800(v63);
      goto LABEL_6;
    }
  }

  v24 = v65;
  if (!v6)
  {
LABEL_6:
    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_7:

    if (v14)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (!v52)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_20:
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_21:

  if (v52)
  {
LABEL_9:
    memcpy(v63, (v22 + v24[9]), 0x88uLL);
    sub_1C8D501D4(v63);
  }

LABEL_10:
  memcpy(v63, (v22 + v56), 0x88uLL);
  result = sub_1C8D16D78(v63, &qword_1EC3144D0, &qword_1C9074130);
  if (v27)
  {

    if (!v26)
    {
      goto LABEL_12;
    }

LABEL_15:

    if (!v21)
    {
      return result;
    }
  }

  if (v26)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!v21)
  {
    return result;
  }
}

uint64_t sub_1C9058F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9058038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9058F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905906C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9058F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905906C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9058FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C90591F8(&qword_1EDA692E8, type metadata accessor for FetchedTool, &unk_1C90C7B8C);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C905906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69308;
  if (!qword_1EDA69308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69308);
  }

  return result;
}

uint64_t sub_1C90590C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9059124(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C90591A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C90591F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9059240(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FetchedTool.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9059380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC78;
  if (!qword_1EC31EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC78);
  }

  return result;
}

unint64_t sub_1C90593D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA692F8;
  if (!qword_1EDA692F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA692F8);
  }

  return result;
}

unint64_t sub_1C9059430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69300;
  if (!qword_1EDA69300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69300);
  }

  return result;
}

uint64_t sub_1C9059494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79747265706F7270 && a2 == 0xEA00000000006449;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C90595F0(char a1)
{
  result = 0x644965707974;
  switch(a1)
  {
    case 1:
      result = 0x79747265706F7270;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0x4E79616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9059674(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ECC0, &qword_1C90C7F38);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905A21C(v11, v12, v13);
  sub_1C9064E1C();
  v14 = *v3;
  v15 = v3[1];
  v27 = 0;
  OUTLINED_FUNCTION_6_49(v14, v15, &v27);
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v26 = 1;
    OUTLINED_FUNCTION_6_49(v16, v17, &v26);
    v18 = v3[4];
    v19 = v3[5];
    v25 = 2;
    OUTLINED_FUNCTION_6_49(v18, v19, &v25);
    v20 = v3[6];
    v21 = v3[7];
    v24 = 3;
    OUTLINED_FUNCTION_6_49(v20, v21, &v24);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C90597EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ECB0, &qword_1C90C7F30);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905A21C(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_7_54();
  v14 = sub_1C9064A0C();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_7_54();
  v16 = sub_1C9064A0C();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_7_54();
  v28 = sub_1C9064A0C();
  v30 = v18;
  v38 = 3;
  v19 = sub_1C9064A0C();
  v21 = v20;
  (*(v7 + 8))(v10, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  sub_1C905A270(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  result = sub_1C905A2A8(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

uint64_t sub_1C9059AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9059494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9059ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905A21C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9059B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905A21C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C9059B44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C90597EC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

double sub_1C9059BA0@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9059BE0(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_1C9059BE0@<X0>(void *a2@<X8>)
{
  if (qword_1EC3120F0 != -1)
  {
    OUTLINED_FUNCTION_4_62(&qword_1EC3120F0);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390FE0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v5 = v4;
  v7 = v6;

  if (qword_1EC3120F8 != -1)
  {
    OUTLINED_FUNCTION_3_65(&qword_1EC3120F8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390FF8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v19 = v9;
  v20 = v8;

  if (qword_1EC312100 != -1)
  {
    OUTLINED_FUNCTION_2_78(&qword_1EC312100);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391010);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v11 = v10;
  v13 = v12;

  if (qword_1EC312108 != -1)
  {
    OUTLINED_FUNCTION_1_86(&qword_1EC312108);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391028);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v15 = v14;
  v17 = v16;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v20;
  a2[3] = v19;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v15;
  a2[7] = v17;
  return result;
}

uint64_t sub_1C9059DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9042F78(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C9059EBC()
{
  if (qword_1EC3120F0 != -1)
  {
    OUTLINED_FUNCTION_4_62(&qword_1EC3120F0);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC390FE0);
  sub_1C9062E5C();
  v7 = OUTLINED_FUNCTION_37(v0[1], v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_13_0(v7);
  if (qword_1EC3120F8 != -1)
  {
    OUTLINED_FUNCTION_3_65(&qword_1EC3120F8);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC390FF8);
  sub_1C9062E5C();
  v13 = OUTLINED_FUNCTION_37(v0[3], v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_13_0(v13);
  if (qword_1EC312100 != -1)
  {
    OUTLINED_FUNCTION_2_78(&qword_1EC312100);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC391010);
  sub_1C9062E5C();
  v19 = OUTLINED_FUNCTION_37(v0[5], v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_13_0(v19);
  if (qword_1EC312108 != -1)
  {
    OUTLINED_FUNCTION_1_86(&qword_1EC312108);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC391028);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_37(v0[7], v20, v21, v22, v23, v24);
  return sub_1C9062BFC();
}

uint64_t sub_1C905A048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC31EC80;

  return v5;
}

unint64_t sub_1C905A084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC90;
  if (!qword_1EC31EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC90);
  }

  return result;
}

unint64_t sub_1C905A0DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905A11C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C9042F78(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D174CC(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C905A170(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C905A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EC98;
  if (!qword_1EC31EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EC98);
  }

  return result;
}

unint64_t sub_1C905A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ECA0;
  if (!qword_1EC31ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ECA0);
  }

  return result;
}

unint64_t sub_1C905A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ECA8;
  if (!qword_1EC31ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ECA8);
  }

  return result;
}

unint64_t sub_1C905A21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ECB8;
  if (!qword_1EC31ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ECB8);
  }

  return result;
}

uint64_t sub_1C905A318(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C905A21C(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for EntityPropertyLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C905A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ECC8;
  if (!qword_1EC31ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ECC8);
  }

  return result;
}

unint64_t sub_1C905A4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ECD0;
  if (!qword_1EC31ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ECD0);
  }

  return result;
}

unint64_t sub_1C905A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ECD8;
  if (!qword_1EC31ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ECD8);
  }

  return result;
}

uint64_t type metadata accessor for EnumerationCaseRecord(uint64_t a1)
{
  result = qword_1EC31ECF0;
  if (!qword_1EC31ECF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C905A5E8(uint64_t a1)
{
  sub_1C8DF3444();
  if (v1 <= 0x3F)
  {
    sub_1C8DF3864(319, &qword_1EC31ED00, &qword_1EC31ED08, &qword_1C90C8078);
    if (v2 <= 0x3F)
    {
      sub_1C8DF3864(319, &qword_1EC31ED10, &qword_1EC31ED18, &unk_1C90C8080);
      if (v3 <= 0x3F)
      {
        sub_1C8DF3864(319, &qword_1EC31ED20, &qword_1EC312FE0, &unk_1C906A3B0);
        if (v4 <= 0x3F)
        {
          sub_1C8DF3864(319, &qword_1EC31ED28, &qword_1EC31ED30, &qword_1C90C8090);
          if (v5 <= 0x3F)
          {
            sub_1C905A744(319);
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

void sub_1C905A744(uint64_t a1)
{
  if (!qword_1EC31ED38)
  {
    v2 = sub_1C905C340(&unk_1EC31ED40);
    v3 = type metadata accessor for ToolDatabaseProtobufArray(a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E08D0], v2);
    if (!v4)
    {
      atomic_store(v3, &qword_1EC31ED38);
    }
  }
}

uint64_t sub_1C905A7D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C90C96A0 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C905AA90(char a1)
{
  result = 0x644965707974;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      v3 = 1819568500;
      goto LABEL_9;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x74786554746C61;
      break;
    case 6:
      v3 = 1734438249;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C905AB6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED98, &unk_1C90C8280);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905C384(v11, v12, v13);
  sub_1C9064E1C();
  LOBYTE(v29) = 0;
  OUTLINED_FUNCTION_5_59();
  sub_1C9064B2C();
  if (!v2)
  {
    LOBYTE(v29) = 1;
    OUTLINED_FUNCTION_5_59();
    sub_1C9064B2C();
    LOBYTE(v29) = 2;
    OUTLINED_FUNCTION_5_59();
    sub_1C9064B2C();
    LOBYTE(v29) = 3;
    OUTLINED_FUNCTION_5_59();
    sub_1C9064ADC();
    v14 = *(v3 + 72);
    v15 = *(v3 + 80);
    v29 = *(v3 + 64);
    v30 = v14;
    LOBYTE(v31) = v15;
    v33 = 4;
    sub_1C8CD3AA0(v29, v14, v15, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED08, &qword_1C90C8078);
    sub_1C905C778();
    OUTLINED_FUNCTION_2_79();
    sub_1C9064B0C();
    sub_1C8CE08AC(v29, v30, v31);
    v18 = *(v3 + 96);
    v19 = *(v3 + 104);
    v29 = *(v3 + 88);
    v30 = v18;
    LOBYTE(v31) = v19;
    v33 = 5;
    sub_1C8CD3AA0(v29, v18, v19, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED18, &unk_1C90C8080);
    sub_1C905C864();
    OUTLINED_FUNCTION_2_79();
    sub_1C9064B0C();
    sub_1C8CE08AC(v29, v30, v31);
    v22 = type metadata accessor for EnumerationCaseRecord(0);
    LOBYTE(v29) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FE0, &unk_1C906A3B0);
    sub_1C905C950();
    sub_1C9064B0C();
    v23 = (v3 + *(v22 + 44));
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v29 = *v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = 7;
    sub_1C8CE9E30(v29, v24, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED30, &qword_1C90C8090);
    sub_1C905C704(&unk_1EC31EDB8);
    OUTLINED_FUNCTION_2_79();
    sub_1C9064B0C();
    sub_1C8CF6A1C(v29, v30, v31, v32);
    v29 = *(v3 + *(v22 + 48));
    v33 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
    sub_1C905CA3C(&qword_1EC313488);
    OUTLINED_FUNCTION_2_79();
    sub_1C9064B8C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C905AEC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED68, &qword_1C90C8278);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v34 = type metadata accessor for EnumerationCaseRecord(0);
  MEMORY[0x1EEE9AC00](v34);
  v32 = a1;
  v33 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905C384(v9, v10, v11);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v30 = v6;
  LOBYTE(v35) = 0;
  v12 = sub_1C9064A0C();
  v13 = v33;
  *v33 = v12;
  v13[1] = v14;
  OUTLINED_FUNCTION_9_45(1);
  v13[2] = sub_1C9064A0C();
  v13[3] = v15;
  OUTLINED_FUNCTION_9_45(2);
  v13[4] = sub_1C9064A0C();
  v13[5] = v16;
  OUTLINED_FUNCTION_9_45(3);
  v13[6] = sub_1C90649AC();
  v13[7] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED08, &qword_1C90C8078);
  v37 = 4;
  sub_1C905C440();
  OUTLINED_FUNCTION_1_87();
  sub_1C90649EC();
  v18 = v36;
  *(v13 + 4) = v35;
  *(v13 + 80) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED18, &unk_1C90C8080);
  v37 = 5;
  sub_1C905C52C();
  OUTLINED_FUNCTION_1_87();
  sub_1C90649EC();
  v19 = v36;
  *(v13 + 11) = v35;
  *(v13 + 104) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FE0, &unk_1C906A3B0);
  LOBYTE(v35) = 6;
  sub_1C905C618();
  v20 = v30;
  sub_1C90649EC();
  sub_1C905D018(v20, v13 + v34[10], &qword_1EC312FC0, &unk_1C906A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED30, &qword_1C90C8090);
  v37 = 7;
  sub_1C905C704(&unk_1EC31ED90);
  OUTLINED_FUNCTION_1_87();
  sub_1C90649EC();
  v21 = (v33 + v34[11]);
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
  v37 = 8;
  sub_1C905CA3C(&qword_1EC313478);
  OUTLINED_FUNCTION_1_87();
  sub_1C9064A6C();
  v23 = OUTLINED_FUNCTION_3_66();
  v25.n128_f64[0] = v24(v23);
  v26 = v33;
  *(v33 + v34[12]) = v35;
  sub_1C8D16BF0(v26, v31, v25);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1C8D16C54(v26, v27);
}

uint64_t sub_1C905B4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C905A7D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C905B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905C384(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C905B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905C384(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C905B5AC@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EC312110 != -1)
  {
    OUTLINED_FUNCTION_18_36(&qword_1EC312110);
  }

  v5 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v5, qword_1EC391040);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  *a2 = v2;
  *(a2 + 8) = v3;
  if (qword_1EC312118 != -1)
  {
    OUTLINED_FUNCTION_17_41(&qword_1EC312118);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC391058);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  if (qword_1EC312120 != -1)
  {
    OUTLINED_FUNCTION_16_37(&qword_1EC312120);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC391070);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  if (qword_1EC312128 != -1)
  {
    OUTLINED_FUNCTION_15_36(&qword_1EC312128);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC391088);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E293EC(v6, v7);
  OUTLINED_FUNCTION_64();

  *(a2 + 48) = v2;
  *(a2 + 56) = v3;
  if (qword_1EC312130 != -1)
  {
    OUTLINED_FUNCTION_14_44(&qword_1EC312130);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC3910A0);
  v8 = sub_1C9062E5C();
  sub_1C905CF44(v8, v9);

  *(a2 + 64) = v19;
  *(a2 + 80) = v20;
  if (qword_1EC312138 != -1)
  {
    OUTLINED_FUNCTION_13_41(&qword_1EC312138);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC3910B8);
  v10 = sub_1C9062E5C();
  sub_1C905CF44(v10, v11);

  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  if (qword_1EC312140 != -1)
  {
    OUTLINED_FUNCTION_12_42(&qword_1EC312140);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC3910D0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for EnumerationCaseRecord(0);
  sub_1C905CEA0(&qword_1EC312FE0, &unk_1C906A3B0, &unk_1EC31EDC8, a2 + v12[10]);

  if (qword_1EC312148 != -1)
  {
    OUTLINED_FUNCTION_11_43(&qword_1EC312148);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC3910E8);
  v13 = sub_1C9062E5C();
  sub_1C905CE40(v13, v14);

  v15 = (a2 + v12[11]);
  *v15 = v19;
  v15[1] = v20;
  if (qword_1EC312150 != -1)
  {
    OUTLINED_FUNCTION_10_51(&qword_1EC312150);
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC391100);
  sub_1C9062E5C();
  sub_1C8D27C38();
  v17 = v16;

  *(a2 + v12[12]) = v17;
  return result;
}

uint64_t sub_1C905B9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C905C340(&qword_1EC31E8D0);

  return sub_1C9062B4C();
}

uint64_t sub_1C905BB48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - v4;
  if (qword_1EC312110 != -1)
  {
    OUTLINED_FUNCTION_18_36(&qword_1EC312110);
  }

  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v6, qword_1EC391040);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_171_0();
  v8 = *v1;
  v7 = v1[1];
  v9 = MEMORY[0x1E69E6158];
  v10 = MEMORY[0x1E69A0138];
  *(&v51 + 1) = MEMORY[0x1E69E6158];
  v52 = MEMORY[0x1E69A0138];
  *&v50 = v8;
  *(&v50 + 1) = v7;

  OUTLINED_FUNCTION_6_50();
  sub_1C9062BFC();
  if (qword_1EC312118 != -1)
  {
    OUTLINED_FUNCTION_17_41(&qword_1EC312118);
  }

  OUTLINED_FUNCTION_10(v6, qword_1EC391058);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_171_0();
  v12 = v1[2];
  v11 = v1[3];
  *(&v51 + 1) = v9;
  v52 = v10;
  *&v50 = v12;
  *(&v50 + 1) = v11;

  OUTLINED_FUNCTION_6_50();
  sub_1C9062BFC();
  if (qword_1EC312120 != -1)
  {
    OUTLINED_FUNCTION_16_37(&qword_1EC312120);
  }

  OUTLINED_FUNCTION_10(v6, qword_1EC391070);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_171_0();
  v14 = v1[4];
  v13 = v1[5];
  *(&v51 + 1) = v9;
  v52 = v10;
  *&v50 = v14;
  *(&v50 + 1) = v13;

  OUTLINED_FUNCTION_6_50();
  sub_1C9062BFC();
  if (qword_1EC312128 != -1)
  {
    OUTLINED_FUNCTION_15_36(&qword_1EC312128);
  }

  OUTLINED_FUNCTION_10(v6, qword_1EC391088);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_171_0();
  v15 = v1[7];
  if (v15)
  {
    v16 = v1[6];
    v17 = MEMORY[0x1E69A0138];
    v18 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = 0;
    *&v51 = 0;
  }

  *&v50 = v16;
  *(&v50 + 1) = v15;
  *(&v51 + 1) = v18;
  v52 = v17;

  OUTLINED_FUNCTION_6_50();
  sub_1C9062BFC();
  if (qword_1EC312130 != -1)
  {
    OUTLINED_FUNCTION_14_44(&qword_1EC312130);
  }

  v49 = v6;
  OUTLINED_FUNCTION_10(v6, qword_1EC3910A0);
  sub_1C9062E5C();
  v19 = *(v1 + 80);
  v48 = a1;
  if (v19 == 255)
  {
    v21 = OUTLINED_FUNCTION_21_32();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED08, &qword_1C90C8078);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D24EA8(v20);
    OUTLINED_FUNCTION_26_23();
  }

  OUTLINED_FUNCTION_23_32(v21, v24, v22, v23);
  OUTLINED_FUNCTION_27_22();
  sub_1C9062BFC();
  if (qword_1EC312138 != -1)
  {
    OUTLINED_FUNCTION_13_41(&qword_1EC312138);
  }

  OUTLINED_FUNCTION_10(v49, qword_1EC3910B8);
  sub_1C9062E5C();
  if (*(v1 + 104) == 255)
  {
    v26 = OUTLINED_FUNCTION_21_32();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED18, &unk_1C90C8080);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D24EA8(v25);
    OUTLINED_FUNCTION_26_23();
  }

  OUTLINED_FUNCTION_23_32(v26, v29, v27, v28);
  OUTLINED_FUNCTION_27_22();
  sub_1C9062BFC();
  if (qword_1EC312140 != -1)
  {
    OUTLINED_FUNCTION_12_42(&qword_1EC312140);
  }

  v30 = v49;
  OUTLINED_FUNCTION_10(v49, qword_1EC3910D0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_64();
  v31 = type metadata accessor for EnumerationCaseRecord(0);
  sub_1C905CFA8(v1 + *(v31 + 40), v5);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FE0, &unk_1C906A3B0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v32) == 1)
  {
    sub_1C905C3D8(v5);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
  }

  else
  {
    *(&v51 + 1) = v32;
    OUTLINED_FUNCTION_23_0();
    v52 = sub_1C8D24EA8(v33);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    sub_1C905D018(v5, boxed_opaque_existential_1, &qword_1EC312FE0, &unk_1C906A3B0);
  }

  OUTLINED_FUNCTION_27_22();
  sub_1C9062BFC();
  if (qword_1EC312148 != -1)
  {
    OUTLINED_FUNCTION_11_43(&qword_1EC312148);
  }

  OUTLINED_FUNCTION_10(v30, qword_1EC3910E8);
  sub_1C9062E5C();
  v47 = v31;
  v35 = (v1 + *(v31 + 44));
  v36 = *v35;
  v37 = v35[1];
  v39 = v35[2];
  v38 = v35[3];
  if (v38)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31ED30, &qword_1C90C8090);
    OUTLINED_FUNCTION_23_0();
    v42 = sub_1C8D24EA8(v41);
    v43 = swift_allocObject();
    v43[2] = v36;
    v43[3] = v37;
    v43[4] = v39;
    v43[5] = v38;
  }

  else
  {
    v43 = 0;
    v40 = 0;
    v42 = 0;
    *(&v50 + 1) = 0;
    *&v51 = 0;
  }

  *&v50 = v43;
  *(&v51 + 1) = v40;
  v52 = v42;
  sub_1C8CE9E30(v36, v37, v39, v38);
  OUTLINED_FUNCTION_27_22();
  sub_1C9062BFC();
  if (qword_1EC312150 != -1)
  {
    OUTLINED_FUNCTION_10_51(&qword_1EC312150);
  }

  OUTLINED_FUNCTION_10(v49, qword_1EC391100);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_171_0();
  v44 = *(v1 + *(v47 + 48));
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313358, &qword_1C906B508);
  v52 = sub_1C8D24EA8(&qword_1EC313360);
  *&v50 = v44;

  OUTLINED_FUNCTION_6_50();
  return sub_1C9062BFC();
}

uint64_t sub_1C905C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC31ECE0;

  return v5;
}

unint64_t sub_1C905C224(void *a1)
{
  a1[1] = sub_1C905C340(&unk_1EC31ED50);
  a1[2] = sub_1C905C340(&qword_1EC31E8D0);
  a1[3] = sub_1C905C340(&qword_1EC312F78);
  result = sub_1C905C340(&unk_1EC31ED58);
  a1[4] = result;
  return result;
}

unint64_t sub_1C905C340(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C905C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31ED70;
  if (!qword_1EC31ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ED70);
  }

  return result;
}

uint64_t sub_1C905C3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C905C440()
{
  result = qword_1EC31ED78;
  if (!qword_1EC31ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31ED08, &qword_1C90C8078);
    sub_1C8D24EA8(&unk_1EDA69770);
    sub_1C8D24EA8(&unk_1EDA668F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ED78);
  }

  return result;
}

unint64_t sub_1C905C52C()
{
  result = qword_1EC31ED80;
  if (!qword_1EC31ED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31ED18, &unk_1C90C8080);
    sub_1C8D24EA8(&unk_1EDA69778);
    sub_1C8D24EA8(&unk_1EDA668F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ED80);
  }

  return result;
}

unint64_t sub_1C905C618()
{
  result = qword_1EC31ED88;
  if (!qword_1EC31ED88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312FE0, &unk_1C906A3B0);
    sub_1C8D24EA8(&unk_1EDA69780);
    sub_1C8D24EA8(&unk_1EDA66900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31ED88);
  }

  return result;
}

unint64_t sub_1C905C704(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31ED30, &qword_1C90C8090);
    v8 = sub_1C8D02768(v3, v4, v5);
    sub_1C8CF6AF8(v8, v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C905C778()
{
  result = qword_1EC31EDA0;
  if (!qword_1EC31EDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31ED08, &qword_1C90C8078);
    sub_1C8D24EA8(&unk_1EDA69770);
    sub_1C8D24EA8(&unk_1EDA668F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EDA0);
  }

  return result;
}

unint64_t sub_1C905C864()
{
  result = qword_1EC31EDA8;
  if (!qword_1EC31EDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31ED18, &unk_1C90C8080);
    sub_1C8D24EA8(&unk_1EDA69778);
    sub_1C8D24EA8(&unk_1EDA668F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EDA8);
  }

  return result;
}

unint64_t sub_1C905C950()
{
  result = qword_1EC31EDB0;
  if (!qword_1EC31EDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312FE0, &unk_1C906A3B0);
    sub_1C8D24EA8(&unk_1EDA69780);
    sub_1C8D24EA8(&unk_1EDA66900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EDB0);
  }

  return result;
}

unint64_t sub_1C905CA3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313358, &qword_1C906B508);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C905CB38(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C905C384(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C905CC10@<X0>(void *a3@<X8>)
{
  result = sub_1C9062DDC();
  if (v5)
  {
    *a3 = 0xF000000000000007;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F20, &unk_1C90C8290);
    OUTLINED_FUNCTION_23_0();
    sub_1C8D24EA8(v6);
    return sub_1C9062CBC();
  }

  return result;
}

uint64_t sub_1C905CD20(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_8_52(a1, a2);
  if (v4)
  {
    *v2 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_25_26();
    OUTLINED_FUNCTION_23_0();
    v5 = OUTLINED_FUNCTION_24_31();
    return OUTLINED_FUNCTION_4_63(v5);
  }

  return result;
}

uint64_t sub_1C905CE40(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_8_52(a1, a2);
  if (v4)
  {
    *v2 = 0u;
    v2[1] = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_25_26();
    OUTLINED_FUNCTION_23_0();
    v5 = OUTLINED_FUNCTION_24_31();
    return OUTLINED_FUNCTION_4_63(v5);
  }

  return result;
}

uint64_t sub_1C905CEA0@<X0>(uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C9062DDC();
  if (v10)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    OUTLINED_FUNCTION_23_0();
    v13 = sub_1C8D24EA8(a5);
    return OUTLINED_FUNCTION_4_63(v13);
  }
}

uint64_t sub_1C905CF44(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_8_52(a1, a2);
  if (v4)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = -1;
  }

  else
  {
    OUTLINED_FUNCTION_25_26();
    OUTLINED_FUNCTION_23_0();
    v5 = OUTLINED_FUNCTION_24_31();
    return OUTLINED_FUNCTION_4_63(v5);
  }

  return result;
}

uint64_t sub_1C905CFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C905D018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for EnumerationCaseRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C905D160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EDE0;
  if (!qword_1EC31EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EDE0);
  }

  return result;
}

unint64_t sub_1C905D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EDE8;
  if (!qword_1EC31EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EDE8);
  }

  return result;
}

unint64_t sub_1C905D210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EDF0;
  if (!qword_1EC31EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EDF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>, uint64_t a4@<X4>)
{
  *(v9 - 128) = a2;
  *(v9 - 120) = v4;
  *(v9 - 104) = v5;
  *(v9 - 96) = a1;

  return sub_1C8CD3AA0(v6, v7, v8, a3, a4);
}

ToolKit::SampleInvocationDefinition __swiftcall SampleInvocationDefinition.init(negativePhrases:phrases:expectedResult:)(Swift::OpaquePointer negativePhrases, Swift::OpaquePointer phrases, Swift::String_optional expectedResult)
{
  *v3 = phrases;
  *(v3 + 8) = expectedResult;
  *(v3 + 24) = negativePhrases;
  *&result.expectedResult.value._object = expectedResult;
  result.expectedResult.value._countAndFlagsBits = phrases._rawValue;
  result.phrases = negativePhrases;
  return result;
}

ToolKit::SampleInvocationDefinition __swiftcall SampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)(Swift::OpaquePointer phrases, Swift::String_optional expectedResult, Swift::OpaquePointer negativePhrases)
{
  *v3 = phrases;
  *(v3 + 8) = expectedResult;
  *(v3 + 24) = negativePhrases;
  result.expectedResult = expectedResult;
  result.negativePhrases = negativePhrases;
  result.phrases = phrases;
  return result;
}

uint64_t SampleInvocationDefinition.expectedResult.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 8);

  return v6;
}

uint64_t SampleInvocationDefinition.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000014, 0x80000001C90D0E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8D3A5F4();
  v5 = OUTLINED_FUNCTION_3_67();
  v7 = v6;

  MEMORY[0x1CCA81A90](v5, v7);

  MEMORY[0x1CCA81A90](0x6C75736572202C5DLL, 0xEB00000000203A74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312580, &qword_1C9073EA0);
  v8 = sub_1C9063F4C();
  MEMORY[0x1CCA81A90](v8);

  MEMORY[0x1CCA81A90](0xD000000000000015, 0x80000001C90D0EA0);
  v9 = OUTLINED_FUNCTION_3_67();
  v11 = v10;

  MEMORY[0x1CCA81A90](v9, v11);

  MEMORY[0x1CCA81A90](93, 0xE100000000000000);
  return 0;
}

void static SampleInvocationDefinition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_1C8CEB10C(*a1, *a2);
  if ((v8 & 1) == 0)
  {
    return;
  }

  if (!v4)
  {
    if (v7)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    v9 = v2 == v5 && v4 == v7;
    if (v9 || (sub_1C9064C2C() & 1) != 0)
    {
LABEL_9:

      sub_1C8CEB10C(v3, v6);
    }
  }
}

uint64_t sub_1C905D544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465746365707865 && a2 == 0xEE00746C75736552;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657669746167656ELL && a2 == 0xEF73657361726850)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C905D664(char a1)
{
  if (!a1)
  {
    return 0x73657361726870;
  }

  if (a1 == 1)
  {
    return 0x6465746365707865;
  }

  return 0x657669746167656ELL;
}

uint64_t sub_1C905D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C905D544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C905D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905D94C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C905D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905D94C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t SampleInvocationDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EDF8, &qword_1C90C83F0);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18[1] = v1[2];
  v18[2] = v9;
  v18[0] = v11;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1C905D94C(v12, v13, v14);

  sub_1C9064E1C();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8CA669C(&qword_1EDA6B530, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_1_88();

  if (!v15)
  {
    v16 = v18[0];
    LOBYTE(v20) = 1;
    sub_1C9064ADC();
    v20 = v16;
    v19 = 2;
    OUTLINED_FUNCTION_1_88();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C905D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F70;
  if (!qword_1EDA62F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F70);
  }

  return result;
}

uint64_t SampleInvocationDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C8CC1590();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C9063FBC();
  }

  return sub_1C8CC1590();
}

uint64_t SampleInvocationDefinition.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C9064D7C();
  sub_1C8CC1590();
  sub_1C9064D9C();
  if (v1)
  {
    sub_1C9063FBC();
  }

  sub_1C8CC1590();
  return sub_1C9064DBC();
}

uint64_t SampleInvocationDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EE00, &qword_1C90C83F8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905D94C(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8CA669C(&unk_1EDA6B520, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_0_88();
  sub_1C9064A6C();
  v15 = v16;
  LOBYTE(v16) = 1;
  v13 = sub_1C90649AC();
  v14 = v9;
  OUTLINED_FUNCTION_0_88();
  sub_1C9064A6C();
  v10 = OUTLINED_FUNCTION_2_80();
  v11(v10);
  *a2 = v15;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C905DD2C(uint64_t a1)
{
  v2 = v1[3];
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = v2;
  sub_1C9064D7C();
  SampleInvocationDefinition.hash(into:)(v4);
  return sub_1C9064DBC();
}

unint64_t sub_1C905DDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE08;
  if (!qword_1EC31EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE08);
  }

  return result;
}

uint64_t sub_1C905DE14(uint64_t *a1, int a2)
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

uint64_t sub_1C905DE54(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SampleInvocationDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C905DF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE10;
  if (!qword_1EC31EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE10);
  }

  return result;
}

unint64_t sub_1C905DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F60;
  if (!qword_1EDA62F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F60);
  }

  return result;
}

unint64_t sub_1C905E024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F68;
  if (!qword_1EDA62F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F68);
  }

  return result;
}

uint64_t sub_1C905E088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C905E198(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x656C61636F6CLL;
  }

  return 0x79726F6765746163;
}

uint64_t sub_1C905E1E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EE48, &qword_1C90C8870);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905EC2C(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  sub_1C9064B9C();
  if (!v1)
  {
    v13[14] = 1;
    sub_1C9064B2C();
    v13[13] = 2;
    sub_1C9064B2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C905E368@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EE40, &qword_1C90C8868);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905EC2C(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  OUTLINED_FUNCTION_3_3();
  v14 = sub_1C9064A7C();
  v27 = 1;
  OUTLINED_FUNCTION_3_3();
  v15 = sub_1C9064A0C();
  v17 = v16;
  v25 = v15;
  v26 = 2;
  OUTLINED_FUNCTION_3_3();
  v18 = sub_1C9064A0C();
  v19 = v10;
  v21 = v20;
  (*(v7 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v25;
  *a2 = v14;
  a2[1] = v23;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v21;
  return result;
}

uint64_t sub_1C905E564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C905E088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C905E58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905EC2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C905E5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905EC2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C905E604@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C905E368(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1C905E664@<D0>(uint64_t a1@<X8>)
{
  sub_1C905E6A8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C905E6A8@<X0>(void *a2@<X8>)
{
  if (qword_1EDA60CC8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_1EDA60CC8);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EDA6E5C0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EDA66A00 != -1)
  {
    OUTLINED_FUNCTION_2_81(&qword_1EDA66A00);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E878);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v7 = v6;
  v9 = v8;

  if (qword_1EDA60CB8 != -1)
  {
    OUTLINED_FUNCTION_1_89(&qword_1EDA60CB8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E5A8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v11 = v10;
  v13 = v12;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
  return result;
}

uint64_t sub_1C905E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9042F24(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C905E924()
{
  if (qword_1EDA60CC8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_1EDA60CC8);
  }

  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v0, qword_1EDA6E5C0);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EDA66A00 != -1)
  {
    OUTLINED_FUNCTION_2_81(&qword_1EDA66A00);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EDA6E878);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EDA60CB8 != -1)
  {
    OUTLINED_FUNCTION_1_89(&qword_1EDA60CB8);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EDA6E5A8);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

uint64_t sub_1C905EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = aCategories_5[0];

  return v5;
}

unint64_t sub_1C905EAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE28;
  if (!qword_1EC31EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE28);
  }

  return result;
}

unint64_t sub_1C905EB40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D806B0(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C9042F24(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D80A64(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C905EB80(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C905EB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE30;
  if (!qword_1EC31EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE30);
  }

  return result;
}

unint64_t sub_1C905EBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE38;
  if (!qword_1EC31EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE38);
  }

  return result;
}

unint64_t sub_1C905EC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66A18;
  if (!qword_1EDA66A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A18);
  }

  return result;
}

uint64_t sub_1C905ECB0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C905EC2C(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for CategoryRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C905EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE50;
  if (!qword_1EC31EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE50);
  }

  return result;
}

unint64_t sub_1C905EE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66A08;
  if (!qword_1EDA66A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A08);
  }

  return result;
}

unint64_t sub_1C905EEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66A10;
  if (!qword_1EDA66A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A10);
  }

  return result;
}

uint64_t sub_1C905EF1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656767697274 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C905F0C4(char a1)
{
  result = 0x4972656767697274;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C905F158(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EE98, &unk_1C90C8BD8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905FEBC(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  sub_1C9064B9C();
  if (!v1)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064B2C();
    v13[13] = 2;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064B2C();
    v13[12] = 3;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064B2C();
    v13[11] = 4;
    OUTLINED_FUNCTION_1_2();
    sub_1C9064ADC();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1C905F308@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EE88, &qword_1C90C8BD0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C905FEBC(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_0_53();
  v14 = sub_1C9064A7C();
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_0_53();
  v15 = sub_1C9064A0C();
  v17 = v16;
  v34 = v15;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_0_53();
  v33 = sub_1C9064A0C();
  v35 = v18;
  LOBYTE(v37[0]) = 3;
  OUTLINED_FUNCTION_0_53();
  v32 = sub_1C9064A0C();
  v31 = v14;
  v20 = v19;
  v38 = 4;
  v21 = sub_1C90649AC();
  v22 = *(v7 + 8);
  v23 = v21;
  v30 = v24;
  v22(v10, v5);
  v25 = v31;
  v26 = v34;
  __src[0] = v31;
  __src[1] = v34;
  __src[2] = v17;
  __src[3] = v33;
  __src[4] = v35;
  __src[5] = v32;
  __src[6] = v20;
  __src[7] = v23;
  v27 = v30;
  __src[8] = v30;
  sub_1C905FF10(__src, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v25;
  v37[1] = v26;
  v37[2] = v17;
  v37[3] = v33;
  v37[4] = v35;
  v37[5] = v32;
  v37[6] = v20;
  v37[7] = v23;
  v37[8] = v27;
  sub_1C90431C8(v37);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_1C905F624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C905EF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C905F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905FEBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C905F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905FEBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C905F6C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C905F308(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_1C905F768@<X0>(void *a2@<X8>)
{
  if (qword_1EC312160 != -1)
  {
    OUTLINED_FUNCTION_7_55(&qword_1EC312160);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC391118);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EC312168 != -1)
  {
    OUTLINED_FUNCTION_6_51(&qword_1EC312168);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391130);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v7 = v6;
  v23 = v8;

  if (qword_1EC312170 != -1)
  {
    OUTLINED_FUNCTION_5_60(&qword_1EC312170);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391148);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v21 = v10;
  v22 = v9;

  if (qword_1EC312178 != -1)
  {
    OUTLINED_FUNCTION_4_64(&qword_1EC312178);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391160);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v12 = v11;
  v14 = v13;

  if (qword_1EC312180 != -1)
  {
    OUTLINED_FUNCTION_3_68(&qword_1EC312180);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391178);
  v15 = sub_1C9062E5C();
  v17 = sub_1C8E293EC(v15, v16);
  v19 = v18;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v23;
  a2[3] = v22;
  a2[4] = v21;
  a2[5] = v12;
  a2[6] = v14;
  a2[7] = v17;
  a2[8] = v19;
  return result;
}

uint64_t sub_1C905F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9043174(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C905FA94()
{
  if (qword_1EC312160 != -1)
  {
    OUTLINED_FUNCTION_7_55(&qword_1EC312160);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EC391118);
  sub_1C9062E5C();
  v2 = *v0;
  v28 = MEMORY[0x1E69E7360];
  v29 = MEMORY[0x1E69A01D0];
  v25 = v2;
  sub_1C9062BFC();
  if (qword_1EC312168 != -1)
  {
    OUTLINED_FUNCTION_6_51(&qword_1EC312168);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC391130);
  sub_1C9062E5C();
  v4 = v0[1];
  v3 = v0[2];
  v5 = MEMORY[0x1E69E6158];
  v6 = MEMORY[0x1E69A0138];
  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69A0138];
  v25 = v4;
  v26 = v3;

  OUTLINED_FUNCTION_1_0(v7, v8, v9);
  if (qword_1EC312170 != -1)
  {
    OUTLINED_FUNCTION_5_60(&qword_1EC312170);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC391148);
  sub_1C9062E5C();
  v11 = v0[3];
  v10 = v0[4];
  v28 = v5;
  v29 = v6;
  v25 = v11;
  v26 = v10;

  OUTLINED_FUNCTION_1_0(v12, v13, v14);
  if (qword_1EC312178 != -1)
  {
    OUTLINED_FUNCTION_4_64(&qword_1EC312178);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC391160);
  sub_1C9062E5C();
  v16 = v0[5];
  v15 = v0[6];
  v28 = v5;
  v29 = v6;
  v25 = v16;
  v26 = v15;

  OUTLINED_FUNCTION_1_0(v17, v18, v19);
  if (qword_1EC312180 != -1)
  {
    OUTLINED_FUNCTION_3_68(&qword_1EC312180);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC391178);
  sub_1C9062E5C();
  v30 = *(v0 + 7);
  if (*(&v30 + 1))
  {
    v20 = MEMORY[0x1E69A0138];
    v21 = MEMORY[0x1E69E6158];
    v22 = v30;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v27 = 0;
  }

  v25 = v22;
  v26 = *(&v30 + 1);
  v28 = v21;
  v29 = v20;
  sub_1C8D29F88(&v30, v24);
  return sub_1C9062BFC();
}

uint64_t sub_1C905FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC31EE58;

  return v5;
}

unint64_t sub_1C905FD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE68;
  if (!qword_1EC31EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE68);
  }

  return result;
}

unint64_t sub_1C905FD7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C905FDBC(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C9043174(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8E23238(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C905FE10(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C905FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE70;
  if (!qword_1EC31EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE70);
  }

  return result;
}

unint64_t sub_1C905FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE78;
  if (!qword_1EC31EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE78);
  }

  return result;
}

unint64_t sub_1C905FE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE80;
  if (!qword_1EC31EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE80);
  }

  return result;
}

unint64_t sub_1C905FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EE90;
  if (!qword_1EC31EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EE90);
  }

  return result;
}

uint64_t sub_1C905FF98(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C905FEBC(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for TriggerParameterLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C90600F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEA0;
  if (!qword_1EC31EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEA0);
  }

  return result;
}

unint64_t sub_1C9060148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEA8;
  if (!qword_1EC31EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEA8);
  }

  return result;
}

unint64_t sub_1C90601A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEB0;
  if (!qword_1EC31EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEB0);
  }

  return result;
}

uint64_t sub_1C90601F4()
{
  v0 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v0, qword_1EC391190);
  OUTLINED_FUNCTION_10(v0, qword_1EC391190);
  if (qword_1EC312190 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EC312190);
  }

  v1 = __swift_project_value_buffer(v0, qword_1EC3911A8);
  v2 = *(*(v0 - 8) + 16);

  return v2(qword_1EC391190, v1, v0);
}

uint64_t sub_1C90602A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C90C9880 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C9060444(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x7367616C66;
      break;
    case 3:
      result = 0x6D65726975716572;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90604DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90602A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9060504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90607F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9060540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90607F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t TriggerDefinitionRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EEB8, &qword_1C90C8D00);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = v1[2];
  v26 = v1[3];
  v27 = v9;
  v10 = v1[4];
  v24 = v1[5];
  v25 = v10;
  v23 = v1[6];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C90607F8(v11, v12, v13);
  sub_1C9064E1C();
  LOBYTE(v30) = 0;
  v14 = v28;
  sub_1C9064B1C();
  if (!v14)
  {
    v16 = v24;
    v15 = v25;
    v17 = v23;
    LOBYTE(v30) = 1;
    v18 = sub_1C9064B2C();
    v30 = v15;
    v29 = 2;
    sub_1C904AF64(v18, v19, v20);
    sub_1C9064B8C();
    v30 = v16;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8DD1D20(&qword_1EC3131E0);
    OUTLINED_FUNCTION_9_46();
    v30 = v17;
    v29 = 4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8D269CC(&qword_1EC3131E8);
    OUTLINED_FUNCTION_9_46();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C90607F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEC0;
  if (!qword_1EC31EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEC0);
  }

  return result;
}

uint64_t TriggerDefinitionRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EEC8, qword_1C90C8D08);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C90607F8(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_10_52();
  v9 = sub_1C90649FC();
  v19 = v10;
  LOBYTE(v20) = 1;
  OUTLINED_FUNCTION_10_52();
  v11 = sub_1C9064A0C();
  v14 = v13;
  v18 = v11;
  sub_1C904AFB8(v11, v13, v15);
  sub_1C9064A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  sub_1C8DD1D20(&qword_1EDA69140);
  OUTLINED_FUNCTION_7_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D269CC(&qword_1EC3131C8);
  OUTLINED_FUNCTION_7_56();
  v16 = OUTLINED_FUNCTION_5_9();
  v17(v16);
  *a2 = v9;
  *(a2 + 8) = v19 & 1;
  *(a2 + 16) = v18;
  *(a2 + 24) = v14;
  *(a2 + 32) = v20;
  *(a2 + 40) = v20;
  *(a2 + 48) = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C9060B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C9043120(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C9060B80(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9060BC0(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C9043120(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8DFF09C(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C9060C14(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C9060BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EED0;
  if (!qword_1EC31EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EED0);
  }

  return result;
}

unint64_t sub_1C9060C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EED8;
  if (!qword_1EC31EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EED8);
  }

  return result;
}

unint64_t sub_1C9060C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEE0;
  if (!qword_1EC31EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEE0);
  }

  return result;
}

uint64_t sub_1C9060D10@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EC312190 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EC312190);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC3911A8);
  v4 = sub_1C9062E5C();
  v6 = sub_1C8E29308(v4, v5);
  v8 = v7;

  *a2 = v6;
  *(a2 + 8) = v8 & 1;
  if (qword_1EC312198 != -1)
  {
    OUTLINED_FUNCTION_6_52(&qword_1EC312198);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3911C0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  if (qword_1EC3121A0 != -1)
  {
    OUTLINED_FUNCTION_5_61(&qword_1EC3121A0);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3911D8);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v14 = v13;

  *(a2 + 32) = v14;
  if (qword_1EC3121A8 != -1)
  {
    OUTLINED_FUNCTION_4_65(&qword_1EC3121A8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3911F0);
  v15 = sub_1C9062E5C();
  sub_1C8D279AC(v15);
  v17 = v16;

  *(a2 + 40) = v17;
  if (qword_1EC3121B0 != -1)
  {
    OUTLINED_FUNCTION_3_69(&qword_1EC3121B0);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC391208);
  v18 = sub_1C9062E5C();
  sub_1C8D277DC(v18, v19, v20, v21, v22, v23, v24, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, vars0, vars8);

  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_1C9060F5C()
{
  if (qword_1EC312190 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EC312190);
  }

  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v0, qword_1EC3911A8);
  v1 = sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0(v1, v2, v1, v2, v3);
  if (qword_1EC312198 != -1)
  {
    OUTLINED_FUNCTION_6_52(&qword_1EC312198);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EC3911C0);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EC3121A0 != -1)
  {
    OUTLINED_FUNCTION_5_61(&qword_1EC3121A0);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EC3911D8);
  v4 = sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0(v4, v5, v4, v5, v6);
  if (qword_1EC3121A8 != -1)
  {
    OUTLINED_FUNCTION_4_65(&qword_1EC3121A8);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EC3911F0);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  sub_1C8D28184(qword_1EDA69148, &qword_1EC3131B8, &unk_1C906B520, &unk_1C908BBDC);

  sub_1C9062BFC();
  if (qword_1EC3121B0 != -1)
  {
    OUTLINED_FUNCTION_3_69(&qword_1EC3121B0);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EC391208);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D28184(&qword_1EDA69128, &qword_1EC3131C0, &unk_1C906B4E0, &unk_1C908BB30);

  return sub_1C9062BFC();
}

uint64_t sub_1C9061248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C9061288(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for TriggerDefinitionRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C90613C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEE8;
  if (!qword_1EC31EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEE8);
  }

  return result;
}

unint64_t sub_1C906141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEF0;
  if (!qword_1EC31EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEF0);
  }

  return result;
}

unint64_t sub_1C9061474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31EEF8;
  if (!qword_1EC31EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31EEF8);
  }

  return result;
}

uint64_t sub_1C9061518(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C90607F8(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C9061590()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC311398 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EC390AF8);
  (*(v2 + 16))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  result = (*(v2 + 32))(v9 + v8, v6, v0);
  qword_1EC391220 = sub_1C90617F4;
  *algn_1EC391228 = v9;
  return result;
}

uint64_t sub_1C90616E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E7B8, &unk_1C90C58E0);
  __swift_allocate_value_buffer(v3, qword_1EC391230);
  OUTLINED_FUNCTION_10(v3, qword_1EC391230);
  v4 = sub_1C90623FC();
  v5 = __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v8 = sub_1C8D27FE0(v5, v6, v7);
  sub_1C8D26570(v8, v9, v10);
  sub_1C906251C();
  return sub_1C8DD1ED0(v2);
}

void sub_1C90617F4()
{
  sub_1C9062E6C();

  sub_1C8D2743C();
}