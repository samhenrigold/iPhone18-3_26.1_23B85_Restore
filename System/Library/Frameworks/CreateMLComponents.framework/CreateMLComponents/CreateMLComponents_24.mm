BOOL sub_237E6831C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E68110(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_237E68350@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E68158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E6837C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E683D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237E68424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return sub_237C66C14(v9, a2, a3);
}

void OneHotEncoder.Transformer.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v18 = v0;
  v19 = v1;
  v3 = v2;
  v4 = v2[2];
  v5 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v20 = type metadata accessor for ComparableOptional(0, v4, v3[3], v3[6]);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - v14;
  v16 = *(v18 + 2);
  v21 = *v18;
  v22 = v16;
  (*(v7 + 16))(v10, v19, v5);
  sub_237C66C14(v10, v4, v15);
  sub_237E6872C(v15, v3);
  (*(v12 + 8))(v15, v20);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E6872C(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v6 = sub_237EF90F0();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = a1;
  v12 = type metadata accessor for ComparableOptional(0, v5, a2[3], a2[6]);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = sub_237E87024(v11, v9, v10, v12, WitnessTable, v14);
  if (v16)
  {
    (*(v30 + 16))(v8, v11, v6);
    v17 = sub_237EF85D0();
    v19 = v18;
    sub_237C84150();
    swift_allocError();
    *v20 = xmmword_237F1AE50;
    *(v20 + 16) = v17;
    *(v20 + 24) = v19;
    *(v20 + 32) = 3;
    swift_willThrow();
    return;
  }

  v21 = v15;
  v22 = sub_237E87068(v9, v10, v12);
  sub_237CDBF9C(0, v22);
  v24 = v23;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_237E641B8(v24, v25, v26, v27);
  v24 = v28;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v21 < *(v24 + 16))
  {
    *(v24 + 8 * v21 + 32) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t OneHotEncoder.Transformer.applied<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 2);
  v14[2] = *(a4 + 16);
  v14[3] = a5;
  v10 = *(a4 + 40);
  v15 = *(a4 + 24);
  v16 = v10;
  v17 = a6;
  v18 = *v6;
  v19 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237C8FFEC(sub_237E68C68, v14, a5, v11, v12, a6, MEMORY[0x277D84950], &v20);
}

uint64_t sub_237E68A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v31 = a3;
  v32 = a4;
  v29 = a8;
  v30 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a7;
  v14 = sub_237EF90F0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = type metadata accessor for ComparableOptional(0, a5, a6, a10);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v36[5] = v30;
  v36[6] = v31;
  v36[7] = v32;
  (*(v15 + 16))(v17, v33, v14, v20);
  sub_237C66C14(v17, a5, v22);
  v36[0] = a5;
  v36[1] = a6;
  v36[2] = v35;
  v36[3] = v34;
  v36[4] = a10;
  v23 = type metadata accessor for OneHotEncoder.Transformer(0, v36);
  v24 = v36[9];
  sub_237E6872C(v22, v23);
  if (v24)
  {
    result = (*(v19 + 8))(v22, v18);
    *a12 = v24;
  }

  else
  {
    v27 = v25;
    result = (*(v19 + 8))(v22, v18);
    *v29 = v27;
  }

  return result;
}

uint64_t OneHotEncoder.Transformer.category(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_12_7();
  v9 = type metadata accessor for ComparableOptional(v5, v6, v7, v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v14 = *(v2 + 8);
  v13 = *(v2 + 16);
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_9_60();
  sub_237E8701C(a1, v14, v13, v9);
  OUTLINED_FUNCTION_12_7();
  v15 = sub_237EF90F0();
  return (*(*(v15 - 8) + 32))(a2, v12, v15);
}

uint64_t sub_237E68DA0(void *a1)
{
  OneHotEncoder.Transformer.applied(to:eventHandler:)();
  *a1 = v3;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t OneHotEncoder.Transformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF8260();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000026, 0x8000000237F00E70);
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  swift_getWitnessTable();
  sub_237EF9D00();

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void OneHotEncoder.Transformer.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v13 = *(v3 + 48);
  v14 = v5;
  v12 = *(v3 + 16);
  v18 = v12;
  v19 = v4;
  v20 = v5;
  v21 = v13;
  type metadata accessor for OneHotEncoder.Transformer.CodingKeys(255, &v18);
  OUTLINED_FUNCTION_5_84();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v15 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  *&v18 = v11;
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  v17 = v14;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();

  (*(v15 + 8))(v10, v6);
  OUTLINED_FUNCTION_12_6();
}

void OneHotEncoder.Transformer.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v22 = v8;
  v23 = v9;
  *&v27 = v8;
  *(&v27 + 1) = v3;
  v28 = v9;
  v29 = v1;
  v21 = v10;
  v30 = v10;
  type metadata accessor for OneHotEncoder.Transformer.CodingKeys(255, &v27);
  OUTLINED_FUNCTION_5_84();
  swift_getWitnessTable();
  v24 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v20 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_237EFA190();
  if (!v0)
  {
    v15 = v20;
    sub_237EF90F0();
    v16 = v21;
    OUTLINED_FUNCTION_0_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_13_5();
    sub_237EF8CF0();
    v26 = v23;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();
    OneHotEncoder.Transformer.init(categories:)(v27, v22, v4, v23, v2, v16, &v27);
    (*(v15 + 8))(v14, v24);
    v17 = v28;
    v18 = v19;
    *v19 = v27;
    *(v18 + 2) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E693C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237E69424()
{
  OUTLINED_FUNCTION_13_4();
  v72 = v1;
  v76 = v2;
  v3 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v78 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v77 = v7 - v6;
  v74 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v75 = v11 - v10;
  v71 = sub_237EF7290();
  OUTLINED_FUNCTION_1();
  v79 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v70 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v69 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v83 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v81 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = *(v0 + 8);
  sub_237EF7720();
  sub_237EF7620();
  v30 = swift_dynamicCastMetatype();
  v80 = v28;
  v82 = v23;
  if (v30)
  {
    v68 = v3;
    v85[0] = v29;
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_11_58();
    sub_237EF8A60();
    sub_237EF8260();
    v31 = OUTLINED_FUNCTION_8_79();
    OUTLINED_FUNCTION_14_58(v31, v32, v33, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v31);
    OUTLINED_FUNCTION_21_46();
    (*(v79 + 104))(v16, *MEMORY[0x277D251F0], v71);
    sub_237EF72B0();
    (*(v69 + 104))(v21, *MEMORY[0x277D25320], v70);
    sub_237EF7660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    sub_237EF70E0();
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_4_85();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_13_49(v34, xmmword_237F03530);
    sub_237EF6DB0();
    v35 = MEMORY[0x277D25130];
    v36 = v28;
  }

  else
  {
    v67 = v21;
    v37 = v79;
    v38 = swift_dynamicCastMetatype();
    if (!v38)
    {
      type metadata accessor for SerializationError(0);
      sub_237CA2D6C();
      swift_allocError();
      v63 = v62;
      v85[0] = 0;
      v85[1] = 0xE000000000000000;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000031, 0x8000000237F00EA0);
      v64 = sub_237EFA220();
      MEMORY[0x2383E0710](v64);

      MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
      v65 = v85[1];
      *v63 = v85[0];
      v63[1] = v65;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v82 + 8))(v80, v83);
      goto LABEL_6;
    }

    v68 = v3;
    v85[0] = v29;
    MEMORY[0x28223BE20](v38);
    OUTLINED_FUNCTION_11_58();
    sub_237EF8A60();
    sub_237EF8260();
    v39 = OUTLINED_FUNCTION_8_79();
    OUTLINED_FUNCTION_14_58(v39, v40, v41, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v39);
    OUTLINED_FUNCTION_21_46();
    (*(v37 + 104))(v16, *MEMORY[0x277D251F0], v71);
    v42 = v67;
    sub_237EF72C0();
    v29 = v69 + 104;
    (*(v69 + 104))(v42, *MEMORY[0x277D25320], v70);
    v36 = v80;
    sub_237EF7660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    sub_237EF70E0();
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_4_85();
    v43 = swift_allocObject();
    OUTLINED_FUNCTION_13_49(v43, xmmword_237F03530);
    sub_237EF6D00();
    v35 = MEMORY[0x277D25118];
  }

  (*(v73 + 104))(v29, *v35, v74);
  sub_237EF7090();
  sub_237EF76B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  sub_237EF70E0();
  OUTLINED_FUNCTION_4_85();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  sub_237EF6E40();
  sub_237EF7090();
  sub_237EF7700();
  v44 = v81;
  v45 = *(v82 + 16);
  v46 = v83;
  v45(v81, v36, v83);
  v47 = v77;
  sub_237EF7810();
  v48 = type metadata accessor for CoreMLPackage(0);
  v49 = v76;
  v50 = &v76[*(v48 + 24)];
  *(v50 + 10) = 0;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *v50 = 0u;
  v45(v49, v44, v46);
  memcpy(v85, v50, 0x58uLL);
  sub_237C9BD20(v85);
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *(v50 + 10) = 0;
  v51 = v78;
  v52 = v68;
  (*(v78 + 16))(&v49[*(v48 + 20)], v47, v68);
  v53 = sub_237E34060();
  v55 = v54;
  v56 = sub_237EF7780();
  v58 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v58;
  sub_237C91098(v53, v55, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v58 = v86;
  v56(&v84, 0);
  (*(v51 + 8))(v47, v52);
  v60 = *(v82 + 8);
  v61 = v83;
  v60(v81, v83);
  v60(v80, v61);
LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E69DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, a2) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a2);
    result = swift_dynamicCast();
    v16 = v18[0];
    v17 = v18[1];
  }

  *a3 = v16;
  a3[1] = v17;
  return result;
}

uint64_t sub_237E69F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, a2) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a2);
    result = swift_dynamicCast();
    v16 = v17[1];
  }

  *a3 = v16;
  return result;
}

uint64_t sub_237E6A178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237E6A1B4(_BYTE *result, int a2, int a3)
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

void sub_237E6A2DC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_237E641B8(v1, v3, v4, v5);
    *v0 = v6;
  }
}

unint64_t sub_237E6A31C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_79()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_60()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_58()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);

  return type metadata accessor for ComparableOptional(255, v1, v4, v3);
}

void OUTLINED_FUNCTION_14_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_237C9339C(v6, v7, v8, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_20_42@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4, __n128 a5, uint64_t a6)
{
  a4 = a2;
  a5 = a3;
  a6 = a1;

  return type metadata accessor for OneHotEncoder.Transformer(0, &a4);
}

uint64_t OUTLINED_FUNCTION_21_46()
{
  *(v1 - 304) = v0;
}

uint64_t sub_237E6A4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E6A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  if (*(a4 + 32))(a3, a4, v15) >= a1 || (sub_237E6A680(a2, a3, a4))
  {
    return 1;
  }

  (*(a4 + 24))(a3, a4);
  v18 = v17[*(v11 + 56)];
  (*(v13 + 8))(v17, v11);
  return v18;
}

uint64_t sub_237E6A680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v21 - v18;
  (*(a3 + 24))(a2, a3, v17);
  (*(v7 + 16))(v10, &v19[*(v13 + 44)], AssociatedTypeWitness);
  (*(v15 + 8))(v19, v13);
  LOBYTE(v15) = sub_237EF8410();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v15 & 1;
}

void sub_237E6A888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (sub_237E6A680(v14, v15, v16))
  {
    if (qword_27DEAD0C8 != -1)
    {
      OUTLINED_FUNCTION_2_98(&qword_27DEAD0C8);
    }

    v17 = sub_237EF7DB0();
    __swift_project_value_buffer(v17, qword_27DEE2458);
    (*(v7 + 16))(v13, v3, a2);
    v18 = sub_237EF7D90();
    v19 = sub_237EF8F70();
    if (!os_log_type_enabled(v18, v19))
    {
      (*(v7 + 8))(v13, a2);
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = (*(a3 + 32))(a2, a3);
    (*(v7 + 8))(v13, a2);
    *(v20 + 4) = v21;
    v22 = "The optimizer converged after %ld iterations.";
    v23 = v19;
  }

  else
  {
    if (qword_27DEAD0C8 != -1)
    {
      OUTLINED_FUNCTION_2_98(&qword_27DEAD0C8);
    }

    v24 = sub_237EF7DB0();
    __swift_project_value_buffer(v24, qword_27DEE2458);
    (*(v7 + 16))(v10, v3, a2);
    v18 = sub_237EF7D90();
    v25 = sub_237EF8F80();
    if (!os_log_type_enabled(v18, v25))
    {
      (*(v7 + 8))(v10, a2);
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v26 = (*(a3 + 32))(a2, a3);
    (*(v7 + 8))(v10, a2);
    *(v20 + 4) = v26;
    v22 = "The optimizer failed to converge after %ld iterations.";
    v23 = v25;
  }

  _os_log_impl(&dword_237C51000, v18, v23, v22, v20, 0xCu);
  MEMORY[0x2383E2DF0](v20, -1, -1);
LABEL_13:
}

uint64_t sub_237E6AB70()
{
  v0 = sub_237EF7DB0();
  __swift_allocate_value_buffer(v0, qword_27DEE2458);
  __swift_project_value_buffer(v0, qword_27DEE2458);
  return sub_237EF7DA0();
}

uint64_t OUTLINED_FUNCTION_2_98(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_237E6AC24()
{
  [*(v0 + 48) invalidate];

  v1 = OBJC_IVAR____TtC18CreateMLComponents16LogTableObserver_logger;
  v2 = sub_237EF7DB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_237E6ACBC()
{
  sub_237E6AC24();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogTableObserver(uint64_t a1)
{
  result = qword_27DEB52A8;
  if (!qword_27DEB52A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237E6AD68(uint64_t a1)
{
  result = sub_237EF7DB0();
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

uint64_t OptionalUnwrapper.applied(to:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  (*(v8 + 16))(v15 - v11, a1, v6, v10);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a3, v12, v5);
  }

  (*(v8 + 8))(v12, v6);
  sub_237C84150();
  swift_allocError();
  *v13 = 0xD000000000000011;
  *(v13 + 8) = 0x8000000237F1B230;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  return swift_willThrow();
}

uint64_t sub_237E6AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OptionalUnwrapper.applied(to:eventHandler:)(a2, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237E6B040@<X0>(char *a2@<X8>)
{
  v88 = a2;
  v3 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v89 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v95 = v7 - v6;
  v87 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v94 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v92 = v21;
  MEMORY[0x28223BE20](v22);
  v93 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v85 - v25;
  sub_237EF7720();
  v27 = sub_237EF7620();
  MEMORY[0x2383DF360](v27);
  (*(v16 + 104))(v20, *MEMORY[0x277D253C8], v14);
  v96 = v26;
  sub_237EF7660();
  v28 = swift_dynamicCastMetatype();
  v91 = v2;
  v90 = v3;
  if (v28)
  {
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v29 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v29);
    v30 = swift_allocObject();
    v85[2] = xmmword_237F03530;
    *(v30 + 16) = xmmword_237F03530;
    sub_237EF6DB0();
    v31 = *MEMORY[0x277D25130];
    v32 = *(v9 + 104);
    v33 = v87;
    v32(v13, v31, v87);
    sub_237EF7090();
    v26 = v96;
    sub_237EF76B0();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_12_52(v34);
    sub_237EF6DB0();
    v32(v13, v31, v33);
LABEL_11:
    sub_237EF7090();
    OUTLINED_FUNCTION_11_59();
    sub_237EF7700();
    v54 = v92;
    v55 = v93;
    v56 = *(v92 + 16);
    v57 = v94;
    v56(v93, v26, v94);
    sub_237EF7810();
    v58 = type metadata accessor for CoreMLPackage(0);
    v59 = v88;
    v60 = &v88[*(v58 + 24)];
    *(v60 + 10) = 0;
    *(v60 + 3) = 0u;
    *(v60 + 4) = 0u;
    *(v60 + 1) = 0u;
    *(v60 + 2) = 0u;
    *v60 = 0u;
    v56(v59, v55, v57);
    memcpy(__dst, v60, 0x58uLL);
    sub_237C9BD20(__dst);
    *v60 = 0u;
    *(v60 + 1) = 0u;
    *(v60 + 2) = 0u;
    *(v60 + 3) = 0u;
    *(v60 + 4) = 0u;
    *(v60 + 10) = 0;
    v61 = v89;
    v62 = v90;
    (*(v89 + 16))(&v59[*(v58 + 20)], v95, v90);
    v63 = sub_237E34060();
    v65 = v64;
    v66 = sub_237EF7780();
    v68 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *v68;
    sub_237C91098(v63, v65, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
    *v68 = v99;
    v66(v97, 0);
    (*(v61 + 8))(v95, v62);
    v70 = *(v54 + 8);
    v71 = v94;
    v70(v93, v94);
    return (v70)(v96, v71);
  }

  v86 = v9;
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v35 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v35);
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_5_85(v36, &v100, xmmword_237F03530);
    sub_237EF6DA0();
    v37 = *(v86 + 104);
    v38 = v13;
    v39 = v87;
    v37(v38, *MEMORY[0x277D25128], v87);
    sub_237EF7090();
    v26 = v96;
    sub_237EF76B0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_12_52(v40);
    sub_237EF6DB0();
    v37(v3, *MEMORY[0x277D25130], v39);
    goto LABEL_11;
  }

  if (swift_dynamicCastMetatype())
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v42 = OUTLINED_FUNCTION_8_80(v41);
    OUTLINED_FUNCTION_6_1(v42);
    v43 = OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_5_85(v43, &__dst[10], xmmword_237F03530);
    sub_237EF6D00();
    v44 = *MEMORY[0x277D25118];
    v45 = OUTLINED_FUNCTION_1_106();
    v2(v45);
    OUTLINED_FUNCTION_4_86();
    OUTLINED_FUNCTION_11_59();
    sub_237EF76B0();
    v46 = OUTLINED_FUNCTION_7_68();
    OUTLINED_FUNCTION_2_99(v46);
    sub_237EF6D00();
LABEL_10:
    (v2)(v3, v44, v13);
    goto LABEL_11;
  }

  v47 = sub_237C75918(0, &qword_27DEB0AA8, 0x277CBF758);
  if (OUTLINED_FUNCTION_10_62(v47) || (type metadata accessor for CVBuffer(0), OUTLINED_FUNCTION_10_62(v48)))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v50 = OUTLINED_FUNCTION_8_80(v49);
    OUTLINED_FUNCTION_6_1(v50);
    v51 = OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_5_85(v51, &__dst[10], xmmword_237F03530);
    sub_237EF6D80();
    v44 = *MEMORY[0x277D25120];
    v52 = OUTLINED_FUNCTION_1_106();
    v2(v52);
    OUTLINED_FUNCTION_4_86();
    OUTLINED_FUNCTION_11_59();
    sub_237EF76B0();
    v53 = OUTLINED_FUNCTION_7_68();
    OUTLINED_FUNCTION_2_99(v53);
    sub_237EF6D80();
    goto LABEL_10;
  }

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  if (OUTLINED_FUNCTION_10_62(v73) || (v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350), OUTLINED_FUNCTION_10_62(v74)) || (v75 = sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48), OUTLINED_FUNCTION_10_62(v75)))
  {
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v77 = OUTLINED_FUNCTION_8_80(v76);
    OUTLINED_FUNCTION_6_1(v77);
    v78 = OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_5_85(v78, &__dst[10], xmmword_237F03530);
    sub_237EF6E20();
    v44 = *MEMORY[0x277D250A0];
    v79 = OUTLINED_FUNCTION_1_106();
    v2(v79);
    OUTLINED_FUNCTION_4_86();
    OUTLINED_FUNCTION_11_59();
    sub_237EF76B0();
    v80 = OUTLINED_FUNCTION_7_68();
    OUTLINED_FUNCTION_2_99(v80);
    sub_237EF6E20();
    goto LABEL_10;
  }

  type metadata accessor for SerializationError(0);
  sub_237CA2D6C();
  swift_allocError();
  v82 = v81;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000042, 0x8000000237F00F50);
  v83 = sub_237EFA220();
  MEMORY[0x2383E0710](v83);

  MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
  v84 = __dst[1];
  *v82 = __dst[0];
  v82[1] = v84;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v92 + 8))(v96, v94);
}

_BYTE *sub_237E6BAC0(_BYTE *result, int a2, int a3)
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

__n128 OUTLINED_FUNCTION_2_99(__n128 *a1)
{
  result = *(v1 - 352);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_89()
{
  *(v1 - 328) = v0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_86()
{

  return sub_237EF7090();
}

__n128 *OUTLINED_FUNCTION_5_85@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = a3;
  result[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_68()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_80(uint64_t a1)
{
  *(v1 - 320) = a1;

  return sub_237EF70E0();
}

uint64_t OUTLINED_FUNCTION_10_62(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

__n128 OUTLINED_FUNCTION_12_52(__n128 *a1)
{
  result = *(v1 - 320);
  a1[1] = result;
  return result;
}

uint64_t sub_237E6BCA8@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v71 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v70 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v77 = v4 - v3;
  OUTLINED_FUNCTION_12_1();
  v63 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v72 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v61 = v8 - v7;
  OUTLINED_FUNCTION_12_1();
  v65 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v64 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v60 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_237EF73D0();
  v67 = v20;
  v68 = *(v20 - 8);
  v21 = v68;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v75 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v76 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v74 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v57 - v29;
  v31 = *(v62 + 8);
  v59 = *v62;
  v32 = v59;
  v58 = v31;
  memcpy(__dst, (v62 + 16), sizeof(__dst));
  v62 = "tworkClassifierModel ";
  v73 = v30;
  sub_237EF7720();
  v66 = v24;
  sub_237E6CF44(v32, v31, v24);
  (*(v21 + 16))(v19, v24, v20);
  (*(v15 + 104))(v19, *MEMORY[0x277D25338], v60);
  sub_237EF7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  v60 = *(*(sub_237EF70E0() - 8) + 72);
  v33 = swift_allocObject();
  v57 = xmmword_237F03530;
  *(v33 + 16) = xmmword_237F03530;
  v34 = v61;
  v35 = v63;
  (*(v72 + 104))(v61, *MEMORY[0x277D250F0], v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v36 = swift_allocObject();
  *(v36 + 16) = v57;
  v79[0] = v59;
  v79[1] = v58;
  memcpy(&v79[2], __dst, 0x49uLL);
  *(v36 + 32) = BaseLogisticRegressionClassifierModel.featureCount.getter();
  sub_237EF6CF0();

  (*(v72 + 8))(v34, v35);
  OUTLINED_FUNCTION_2_100(0x7365727574616566, 0xE800000000000000);
  v37 = v73;
  sub_237EF76B0();
  *(swift_allocObject() + 16) = xmmword_237F04760;
  OUTLINED_FUNCTION_3_90();
  sub_237EF6D00();
  (*(v64 + 104))(v13, *MEMORY[0x277D25118], v65);
  OUTLINED_FUNCTION_2_100(0x746567726174, 0xE600000000000000);
  OUTLINED_FUNCTION_3_90();
  sub_237EF6E40();
  OUTLINED_FUNCTION_2_100(0xD000000000000011, v62 | 0x8000000000000000);
  sub_237EF7700();
  sub_237EF7620();
  sub_237EF75E0();
  sub_237EF7600();
  sub_237EF7640();
  v38 = *(v76 + 16);
  v39 = v74;
  v40 = v75;
  v38(v74, v37, v75);
  v41 = v77;
  sub_237EF7810();
  v42 = type metadata accessor for CoreMLPackage(0);
  v43 = v69;
  v44 = v69 + *(v42 + 24);
  *(v44 + 80) = 0;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *v44 = 0u;
  v38(v43, v39, v40);
  memcpy(v79, v44, 0x58uLL);
  sub_237C863A0(v79, &unk_27DEAD7B0, &unk_237F03CA0);
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0;
  v45 = v70;
  v46 = v71;
  (*(v70 + 16))(v43 + *(v42 + 20), v41, v71);
  v47 = sub_237E34060();
  v49 = v48;
  v50 = sub_237EF7780();
  v52 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v52;
  sub_237C91098(v47, v49, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v52 = v81;
  v50(v78, 0);
  (*(v45 + 8))(v77, v46);
  v54 = *(v76 + 8);
  v55 = v75;
  v54(v74, v75);
  (*(v68 + 8))(v66, v67);
  return (v54)(v73, v55);
}

uint64_t sub_237E6C52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v97 = sub_237EF7350();
  OUTLINED_FUNCTION_1();
  v93 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v96 = (v7 - v6);
  OUTLINED_FUNCTION_12_1();
  v94 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v105 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v99 = v10;
  MEMORY[0x28223BE20](v11);
  v92 = &v77 - v12;
  OUTLINED_FUNCTION_12_1();
  sub_237EF73D0();
  OUTLINED_FUNCTION_1();
  v103 = v14;
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v98 = v16 - v15;
  OUTLINED_FUNCTION_12_1();
  v95 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v91 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v101 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v102 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5();
  v36 = (v35 - v34);
  memcpy(__dst, v2, 0x70uLL);
  sub_237D4D938(__dst, v107);
  v37 = v106;
  sub_237E6BCA8(a2);
  v106 = v37;
  if (v37)
  {
    memcpy(v107, v2, 0x59uLL);
    return sub_237CC9A9C(v107);
  }

  v85 = v23;
  v86 = v29;
  v89 = v24;
  memcpy(v108, v2, 0x59uLL);
  sub_237CC9A9C(v108);
  v39 = a2;
  sub_237EF75E0();
  v40 = sub_237EF76A0();
  if (!*(v40 + 16))
  {
    __break(1u);
LABEL_12:
    (*(v39 + 8))(v36, v30);
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000028, 0x8000000237F01010, "CreateMLComponents/LogisticRegressionClassifierModel+CoreML.swift", 65, 2, 32);
    __break(1u);
    return result;
  }

  v83 = *(v32 + 80);
  v41 = *(v32 + 16);
  v90 = (v83 + 32) & ~v83;
  v41(v36, v40 + v90, v30);

  v82 = sub_237EF70A0();
  v87 = v42;
  (*(v32 + 8))(v36, v30);
  v84 = sub_237EF75F0();
  v44 = v43;
  v45 = sub_237EF7630();
  v47 = v46;
  v88 = a2;
  v81 = *(v100 + 32);
  v48 = sub_237EF7EF0();
  v49 = v85;
  sub_237E5E9F0(v48, v85);
  v50 = v89;
  if (__swift_getEnumTagSinglePayload(v49, 1, v89) == 1)
  {

    sub_237C863A0(v49, &qword_27DEB0E78, &qword_237F0CCF8);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v52 = v51;
    v107[0] = 0;
    v107[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    __dst[16] = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v53 = v107[1];
    *v52 = v107[0];
    v52[1] = v53;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_237D0F8BC(v88);
  }

  v79 = v44;
  v80 = v45;
  v81 = v47;
  (*(v102 + 32))(v86, v49, v50);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  v85 = *(v32 + 72);
  v78 = v54;
  v55 = swift_allocObject();
  v77 = xmmword_237F03530;
  *(v55 + 16) = xmmword_237F03530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v56 = swift_allocObject();
  *(v56 + 16) = v77;
  memcpy(v107, __dst, sizeof(v107));
  *(v56 + 32) = LogisticRegressionClassifierModel.featureCount.getter();
  sub_237EF8260();
  sub_237EF6CF0();

  sub_237EF7090();
  sub_237EF76B0();
  v36 = v92;
  sub_237EF7650();
  v39 = v105;
  v30 = v94;
  v57 = (*(v105 + 88))(v36, v94);
  v58 = *MEMORY[0x277D25338];
  LODWORD(v82) = v57;
  if (v57 != v58)
  {
    goto LABEL_12;
  }

  (*(v39 + 96))(v36, v30);
  v59 = v98;
  (*(v103 + 32))(v98, v36, v104);
  v60 = swift_dynamicCastMetatype();
  v61 = (v93 + 104);
  v62 = (v91 + 104);
  if (v60)
  {
    v63 = sub_237EF9660();
    v65 = v96;
    v64 = v97;
    *v96 = v63;
    (*v61)(v65, *MEMORY[0x277D25218], v64);
    sub_237EF7360();
    *(swift_allocObject() + 16) = xmmword_237F04760;
    v66 = v101;
    OUTLINED_FUNCTION_3_90();
    sub_237EF6DB0();
    (*v62)(v66, *MEMORY[0x277D25130], v95);
    OUTLINED_FUNCTION_2_100(v84, v79);
    OUTLINED_FUNCTION_3_90();
    sub_237EF6E50();
  }

  else
  {
    v67 = sub_237EF9660();
    v69 = v96;
    v68 = v97;
    *v96 = v67;
    (*v61)(v69, *MEMORY[0x277D25210], v68);
    sub_237EF7360();
    *(swift_allocObject() + 16) = xmmword_237F04760;
    v70 = v101;
    OUTLINED_FUNCTION_3_90();
    sub_237EF6D00();
    (*v62)(v70, *MEMORY[0x277D25118], v95);
    OUTLINED_FUNCTION_2_100(v84, v79);
    OUTLINED_FUNCTION_3_90();
    sub_237EF6E40();
  }

  v71 = v59;
  v72 = v82;
  OUTLINED_FUNCTION_2_100(v80, v81);
  sub_237EF7700();
  v73 = v103;
  v74 = v99;
  v75 = v59;
  v76 = v104;
  (*(v103 + 16))(v99, v75, v104);
  (*(v105 + 104))(v74, v72, v30);
  sub_237EF7660();
  (*(v73 + 8))(v71, v76);
  return (*(v102 + 8))(v86, v89);
}

void sub_237E6CF44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF7370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237EF7380();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237EF7350();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a2 == 1)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  if (v17 < 0)
  {
    goto LABEL_41;
  }

  v45 = v16;
  v46 = v11;
  v47 = v10;
  v48 = v13;
  v52 = a3;
  v53 = a2;
  v49 = v9;
  v50 = v7;
  v51 = v6;
  v18 = 0;
  v19 = *(a1 + 16);
  v20 = v19 / v17;
  v21 = a1 + 32;
  v56 = v19 / v17 - 1;
  v22 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v57 = v19 / v17;
  do
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_32;
    }

    v24 = v18 * v20;
    if ((v18 * v20) >> 64 != (v18 * v20) >> 63)
    {
      goto LABEL_33;
    }

    v25 = v24 + v20;
    if (__OFADD__(v24, v20))
    {
      goto LABEL_34;
    }

    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_35;
    }

    if (v26 < v24)
    {
      goto LABEL_36;
    }

    v58 = v22;
    v27 = MEMORY[0x277D84F90];
    if (v24 != v26)
    {
      if (v24 < v26)
      {
        sub_237D0BEC0();
        v27 = v33;
        v34 = v56;
        while (v24 < v19)
        {
          v35 = *(v21 + 8 * v24);
          v36 = *(v27 + 16);
          if (v36 >= *(v27 + 24) >> 1)
          {
            sub_237D0BEC0();
            v27 = v37;
          }

          *(v27 + 16) = v36 + 1;
          *(v27 + 8 * v36 + 32) = v35;
          ++v24;
          if (!--v34)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0BE9C(0, v59[2] + 1, 1, v59);
      v59 = v38;
    }

    v22 = v58;
    v29 = v59[2];
    v28 = v59[3];
    if (v29 >= v28 >> 1)
    {
      sub_237D0BE9C(v28 > 1, v29 + 1, 1, v59);
      v59 = v39;
    }

    v30 = v59;
    v59[2] = v29 + 1;
    v30[v29 + 4] = v27;
    if (v26 >= v19)
    {
      goto LABEL_37;
    }

    v31 = *(v21 + 8 * v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0BEC0();
      v22 = v40;
    }

    v32 = *(v22 + 16);
    if (v32 >= *(v22 + 24) >> 1)
    {
      sub_237D0BEC0();
      v22 = v41;
    }

    *(v22 + 16) = v32 + 1;
    *(v22 + 8 * v32 + 32) = v31;
    v18 = v23;
    v20 = v57;
  }

  while (v23 != a2 - 1);
  if (v53 < 0)
  {
    goto LABEL_42;
  }

  v42 = sub_237EC9280(0, v53);
  v43 = v45;
  *v45 = v42;
  (*(v54 + 104))(v43, *MEMORY[0x277D25210], v55);
  (*(v46 + 104))(v48, *MEMORY[0x277D25228], v47);
  (*(v50 + 104))(v49, *MEMORY[0x277D25220], v51);
  sub_237EF73A0();
}

uint64_t OUTLINED_FUNCTION_2_100(uint64_t a1, uint64_t a2)
{

  return sub_237EF7090();
}

uint64_t type metadata accessor for TemporalConvolution(uint64_t a1)
{
  result = qword_27DEB5338;
  if (!qword_27DEB5338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237E6D494(uint64_t a1)
{
  result = sub_237EF6C30();
  if (v2 <= 0x3F)
  {
    result = sub_237EF6940();
    if (v3 <= 0x3F)
    {
      result = sub_237EF6BA0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237E6D540()
{
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  type metadata accessor for TemporalConvolution(0);
  sub_237EF6C30();
  sub_237EF6850();
  sub_237EF6760();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_21_30();
  v6(v7);
  v8 = *(v3 + 32);
  v9 = OUTLINED_FUNCTION_5_86();
  v8(v9);
  sub_237EF6940();
  sub_237EF6850();
  v10 = OUTLINED_FUNCTION_21_30();
  v6(v10);
  v11 = OUTLINED_FUNCTION_5_86();
  v8(v11);
  sub_237EF6850();
  v12 = OUTLINED_FUNCTION_21_30();
  v6(v12);
  v13 = OUTLINED_FUNCTION_5_86();
  v8(v13);
  sub_237EF6BA0();
  sub_237EF6850();
  v14 = OUTLINED_FUNCTION_21_30();
  return (v6)(v14);
}

uint64_t sub_237E6D74C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000237EFB100 == a2;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000237F01040 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000237F01060 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74756C6F766E6F63 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74756F706F7264 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

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

unint64_t sub_237E6D8FC(char a1)
{
  result = 0x74756C6F766E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    case 4:
      result = 0x74756F706F7264;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_237E6D9A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5378, &qword_237F1B420);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E6E52C();
  sub_237EFA1B0();
  v21 = 0;
  OUTLINED_FUNCTION_35_4();
  sub_237EF9A40();
  if (!v1)
  {
    type metadata accessor for TemporalConvolution(0);
    v20 = 1;
    sub_237EF6C30();
    OUTLINED_FUNCTION_1_107();
    sub_237E6E640(v9, v10, MEMORY[0x277D2CEF8]);
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    v19 = 2;
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    v18 = 3;
    sub_237EF6940();
    OUTLINED_FUNCTION_3_91();
    sub_237E6E640(v11, v12, MEMORY[0x277D2CE88]);
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    v17 = 4;
    sub_237EF6BA0();
    OUTLINED_FUNCTION_2_101();
    sub_237E6E640(v13, v14, MEMORY[0x277D2CED8]);
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237E6DC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = sub_237EF6BA0();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v58 = v6 - v5;
  v66 = sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v61 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v65 = sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v67 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5360, &qword_237F1B418);
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v63 = type metadata accessor for TemporalConvolution(0);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  v27 = a1[3];
  v64 = a1;
  v28 = __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_237E6E52C();
  v60 = v23;
  v29 = v62;
  sub_237EFA190();
  if (v29)
  {
    OUTLINED_FUNCTION_7_69();
    v30 = v65;
    v31 = v26;
    v32 = v63;
    result = __swift_destroy_boxed_opaque_existential_1(v64);
    if (v20)
    {
      result = (*(v67 + 8))(&v31[v32[5]], v30);
    }

    if (v15)
    {
      result = (*(v67 + 8))(&v31[v32[6]], v30);
    }

    if (v28)
    {
      return (*(v61 + 8))(&v31[v32[7]], v66);
    }
  }

  else
  {
    v54 = v11;
    v62 = v20;
    v72 = 0;
    sub_237EF9940();
    v33 = v26;
    *v26 = v34;
    v71 = 1;
    OUTLINED_FUNCTION_1_107();
    sub_237E6E640(v35, v36, MEMORY[0x277D2CF00]);
    v37 = v65;
    sub_237EF9970();
    v38 = v63;
    v39 = *(v63 + 20);
    v52 = *(v67 + 32);
    v53 = v33;
    v52(&v33[v39], v18, v37);
    v70 = 2;
    sub_237EF9970();
    v52((v53 + v38[6]), v15, v37);
    v69 = 3;
    OUTLINED_FUNCTION_3_91();
    sub_237E6E640(v40, v41, MEMORY[0x277D2CE90]);
    v42 = v54;
    v43 = v66;
    sub_237EF9970();
    v44 = v53;
    (*(v61 + 32))(v53 + v38[7], v42, v43);
    v68 = 4;
    OUTLINED_FUNCTION_2_101();
    sub_237E6E640(v45, v46, MEMORY[0x277D2CEE0]);
    v47 = v57;
    v48 = v58;
    sub_237EF9970();
    v49 = OUTLINED_FUNCTION_4_87();
    v50(v49);
    (*(v55 + 32))(v44 + v38[8], v48, v47);
    sub_237E6E580(v44, v56);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_237E6E5E4(v44);
  }

  return result;
}

uint64_t sub_237E6E280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E6D74C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E6E2A8(uint64_t a1)
{
  v2 = sub_237E6E52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E6E2E4(uint64_t a1)
{
  v2 = sub_237E6E52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E6E354(uint64_t a1, uint64_t a2)
{
  sub_237E6E640(&qword_27DEB2638, type metadata accessor for TemporalConvolution, &unk_237F1B3B8);

  return sub_237EF6890();
}

uint64_t sub_237E6E3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237E6E640(&qword_27DEB2638, type metadata accessor for TemporalConvolution, &unk_237F1B3B8);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237E6E52C()
{
  result = qword_27DEB5368;
  if (!qword_27DEB5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5368);
  }

  return result;
}

uint64_t sub_237E6E580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemporalConvolution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E6E5E4(uint64_t a1)
{
  v2 = type metadata accessor for TemporalConvolution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237E6E640(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for TemporalConvolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E6E768()
{
  result = qword_27DEB5388;
  if (!qword_27DEB5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5388);
  }

  return result;
}

unint64_t sub_237E6E7C0()
{
  result = qword_27DEB5390;
  if (!qword_27DEB5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5390);
  }

  return result;
}

unint64_t sub_237E6E818()
{
  result = qword_27DEB5398[0];
  if (!qword_27DEB5398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5398);
  }

  return result;
}

uint64_t sub_237E6E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  sub_237EF83A0();
  sub_237EF83A0();
  sub_237EF8330();
  v13 = *(v5 + 8);
  v13(v9, a3);
  return v13(v12, a3);
}

uint64_t sub_237E6EA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v90 = a6;
  v108 = *(*(*(a4 + 16) + 16) + 8);
  v111 = *(v108 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v102 = v80 - v12;
  v89 = *(a4 + 8);
  v88 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = v80 - v14;
  OUTLINED_FUNCTION_1_1();
  v84 = v16;
  MEMORY[0x28223BE20](v17);
  v85 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v83 = v80 - v21;
  v82 = *(swift_getAssociatedConformanceWitness() + 8);
  v86 = v19;
  v110 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v87 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v109 = v80 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v81 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26();
  v104 = v27 - v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v31 = v80 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v97 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v36 = v80 - v35;
  OUTLINED_FUNCTION_1_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_26();
  v101 = v40 - v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  v100 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v99 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  v98 = v47;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_16();
  v112 = v49;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_16();
  v107 = v51;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_16();
  v106 = v53;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v54);
  v56 = v80 - v55;
  v91 = a1;
  v95 = a5;
  AssociatedConformanceWitness = a3;
  if (sub_237EF8DA0() < 2)
  {
    OUTLINED_FUNCTION_11_19();
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    OUTLINED_FUNCTION_6_70();
    return sub_237EF9D20();
  }

  v80[1] = v15;
  v94 = *(v108 + 8);
  sub_237EF9790();
  sub_237EF8E80();
  result = __swift_getEnumTagSinglePayload(v36, 1, TupleTypeMetadata2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v102 = v56;
  v58 = TupleTypeMetadata2;
  v59 = v38 + 32;
  v60 = *(v38 + 32);
  v60(v106, &v36[*(TupleTypeMetadata2 + 48)], a2);
  v63 = *(v38 + 8);
  v62 = v38 + 8;
  v61 = v63;
  v63(v36, a2);
  v64 = v97;
  sub_237EF8E80();
  result = __swift_getEnumTagSinglePayload(v64, 1, v58);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v65 = *(TupleTypeMetadata2 + 48);
  v60(v107, v64, a2);
  AssociatedTypeWitness = v62;
  v97 = v61;
  v61(v64 + v65, a2);
  (*(v84 + 16))(v85, v91, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_31();
  sub_237EF8EE0();
  sub_237EF86F0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v95 = (v81 + 32);
  v93 = v31;
  v111 = v59;
  v92 = v60;
  while (1)
  {
    v66 = v104;
    sub_237EF91A0();
    (*v95)(v31, v66, v105);
    if (__swift_getEnumTagSinglePayload(v31, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v67 = *(TupleTypeMetadata2 + 48);
    v60(v112, v31, a2);
    v68 = v98;
    v60(v98, &v31[v67], a2);
    v69 = v100;
    v70 = v106;
    sub_237EF9760();
    v71 = v101;
    v72 = v107;
    sub_237EF9750();
    sub_237EF8D30();
    v73 = v97;
    v97(v71, a2);
    v74 = v69;
    v60 = v92;
    v73(v74, a2);
    sub_237EF9770();
    v75 = OUTLINED_FUNCTION_11_19();
    (v73)(v75);
    v73(v72, a2);
    v73(v70, a2);
    v76 = v70;
    v31 = v93;
    v60(v76, v68, a2);
    v60(v72, v112, a2);
  }

  (*(v87 + 8))(v109, v110);
  OUTLINED_FUNCTION_11_19();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v77 = v112;
  OUTLINED_FUNCTION_6_70();
  sub_237EF9CE0();
  sub_237EF8D30();
  v78 = v97;
  v97(v77, a2);
  v78(v107, a2);
  v78(v106, a2);
  v79 = OUTLINED_FUNCTION_11_19();
  return (v78)(v79);
}

uint64_t sub_237E6F3D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(result, a2);
  v4 = result + a2;
  if (!v3)
  {
    return sub_237E6E8FC(result, v4, a3);
  }

  __break(1u);
  return result;
}

uint64_t CompatibilityError.errorDescription.getter()
{
  OUTLINED_FUNCTION_2_102();

  OUTLINED_FUNCTION_0_87();
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  OUTLINED_FUNCTION_28_4();
  return v2;
}

uint64_t CompatibilityError.debugDescription.getter()
{
  OUTLINED_FUNCTION_2_102();

  OUTLINED_FUNCTION_0_87();
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  OUTLINED_FUNCTION_28_4();
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_102()
{

  return sub_237EF9330();
}

void sub_237E6F56C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_237E613EC(v1, 1.0);
  v6 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
LABEL_54:
    __break(1u);
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5;
    v8 = 0;
    v9 = v4 + 32;
    v10 = __OFSUB__(v2, 1);
    v11 = 8 * v2;
    while (1)
    {
      if (v8 == v6)
      {
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v12 = v8;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_45;
      }

      v14 = v12 * v2;
      v15 = v12;
      v16 = v1;
      v17 = (v12 * v2) >> 64;
      if (v3)
      {
        if (v17 != v14 >> 63)
        {
          goto LABEL_48;
        }

        v15 = v12 * v2;
        v16 = 1;
      }

      if (v2)
      {
        if ((v2 * v16) >> 64 != (v2 * v16) >> 63)
        {
          goto LABEL_47;
        }

        if (v2 * v16)
        {
          v18 = 0;
          v19 = 8 * v16;
          v20 = v11 * v16;
          v21 = 0.0;
          v22 = 0.0;
          v23 = v9 + 8 * v15;
          do
          {
            v24 = *(v23 + v18) - v21;
            v25 = v22 + v24;
            v21 = v22 + v24 - v22 - v24;
            v18 += v19;
            v22 = v25;
          }

          while (v20 != v18);
        }

        else
        {
          v25 = 0.0;
        }

        v26 = v25 / v2;
      }

      else
      {
        v26 = 0.0;
      }

      v27 = v12;
      v28 = v1;
      if (v3)
      {
        if (v17 != v14 >> 63)
        {
          goto LABEL_49;
        }

        v27 = v12 * v2;
        v28 = 1;
      }

      v29 = 0.0;
      if (v2 != 1)
      {
        if (v2)
        {
          if ((v2 * v28) >> 64 == (v2 * v28) >> 63)
          {
            if (v2 * v28)
            {
              v30 = 0;
              v31 = 0;
              v32 = 8 * v28;
              v33 = v11 * v28;
              v34 = 0.0;
              v35 = v9 + 8 * v27;
              do
              {
                v36 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  __break(1u);
                  goto LABEL_44;
                }

                v37 = *(v35 + v31) - v29;
                v38 = v34 + v37;
                v29 = v34 + v37 - v34 - v37;
                v31 += v32;
                ++v30;
                v34 = v38;
              }

              while (v33 != v31);
              if (!v36)
              {
                goto LABEL_52;
              }

              v39 = 0;
              v40 = v38 / v36;
              v41 = 0.0;
              do
              {
                v41 = v41 + (*(v35 + v39) - v40) * (*(v35 + v39) - v40);
                v39 += v32;
              }

              while (v33 != v39);
              if (!v10)
              {
                v29 = sqrt(v41 / (v2 - 1));
                goto LABEL_37;
              }

              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_37:
      v42 = sqrt(v26 * v26 + v29 * v29);
      if (v42 != 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v7, v43, v44, v45);
          v7 = v46;
        }

        if (v12 >= *(v7 + 16))
        {
          goto LABEL_56;
        }

        *(v7 + 8 * v12 + 32) = 1.0 / v42;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_237E6F7F0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v6 = *(a2 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC(v2, v7, v8, v9);
      v2 = v10;
    }

    v11 = 0;
    while ((v6 & ~(v6 >> 63)) != v11)
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_11;
      }

      *(v2 + 8 * v11 + 32) = *(a2 + 32 + 8 * v11) * *(v2 + 8 * v11 + 32);
      if (v3 == ++v11)
      {
        *result = v2;
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

uint64_t UniformRandomFloatingPointParameter.range.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t UniformRandomFloatingPointParameter.range.setter(uint64_t a1)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t UniformRandomFloatingPointParameter.init<A>(range:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  (*(v17 + 32))(a8, a1);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a9;
  result = type metadata accessor for UniformRandomFloatingPointParameter(0, v20);
  v19 = (a8 + *(result + 60));
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t UniformRandomFloatingPointParameter.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[7] = v2;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = v10;
  v11 = *(v2 + 16);
  v1[11] = v11;
  v1[12] = *(v11 - 8);
  v1[13] = swift_task_alloc();
  v12 = *(v3 + 24);
  v1[14] = v12;
  v1[15] = *(v12 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237E6FBC4, 0, 0);
}

void sub_237E6FBC4()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];
  sub_237EF81A0();
  (*(v2 + *(v3 + 60)))(v1);
  v6 = *(*(v3 + 32) + 24) + **(*(v3 + 32) + 24);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_237E6FD44;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E6FD44()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_237E6FF2C;
  }

  else
  {
    v5 = sub_237E6FEB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237E6FEB4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = OUTLINED_FUNCTION_2_103();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237E6FF2C()
{
  OUTLINED_FUNCTION_2_0();
  v1 = OUTLINED_FUNCTION_2_103();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237E6FFA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237E53A6C;

  return UniformRandomFloatingPointParameter.applied<A>(to:generator:eventHandler:)();
}

uint64_t sub_237E70098(uint64_t a1)
{
  result = sub_237EF84E0();
  if (v2 <= 0x3F)
  {
    result = sub_237E704FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E70130(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v17 = *((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v6, v4);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v7;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_237E70280(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = ((*(*(v6 - 8) + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(*(v6 - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v21 = (&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v21 = a2 & 0x7FFFFFFF;
              v21[1] = 0;
            }

            else
            {
              *v21 = (a2 - 1);
            }
          }

          else if (v8 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
          }

          else
          {
            if (v10 <= 3)
            {
              v18 = ~(-1 << (8 * v10));
            }

            else
            {
              v18 = -1;
            }

            if (v10)
            {
              v19 = v18 & (~v8 + a2);
              if (v10 <= 3)
              {
                v20 = v10;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v10);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_237E704FC()
{
  result = qword_27DEB5420[0];
  if (!qword_27DEB5420[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27DEB5420);
  }

  return result;
}

uint64_t sub_237E7068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v6[0] = *(a2 + a3 - 32);
  v6[1] = v3;
  v4 = type metadata accessor for PreprocessingSupervisedTabularEstimator(0, v6);
  return PreprocessingSupervisedTabularEstimator.annotationColumnID.getter(v4);
}

uint64_t sub_237E706D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 8);
  v14 = *(a3 + a4 - 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_237EF62C0();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, v8);
  v15 = v5;
  v16 = v14;
  v17 = v6;
  v12 = type metadata accessor for PreprocessingSupervisedTabularEstimator(0, &v15);
  return PreprocessingSupervisedTabularEstimator.annotationColumnID.setter(v10, v12);
}

uint64_t PreprocessingSupervisedTabularEstimator.annotationColumnID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v5 = sub_237EF62C0();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v7 + 16))(&v13 - v10, a1, v5, v9);
  (*(v3 + 40))(v11, v4, v3);
  return (*(v7 + 8))(a1, v5);
}

void (*PreprocessingSupervisedTabularEstimator.annotationColumnID.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  swift_getAssociatedTypeWitness();
  v6 = sub_237EF62C0();
  v5[2] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v5[3] = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v5[5] = __swift_coroFrameAllocStub(v9);
  PreprocessingSupervisedTabularEstimator.annotationColumnID.getter(a2);
  return sub_237E70A38;
}

void sub_237E70A38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    PreprocessingSupervisedTabularEstimator.annotationColumnID.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PreprocessingSupervisedTabularEstimator.annotationColumnID.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PreprocessingSupervisedTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for PreprocessingSupervisedTabularEstimator(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t PreprocessingSupervisedTabularEstimator.preprocessed(from:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E70C8C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingSupervisedTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  v11 = (*(v2 + 24) + **(v2 + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v3;
  *v3 = v4;
  v3[1] = sub_237D9E1CC;
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v6, v7, v5, v2);
}

uint64_t PreprocessingSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[2] = v8;
  v1[9] = *(v2 + 16);
  v1[10] = swift_task_alloc();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v9;
  v1[13] = swift_task_alloc();
  v1[14] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[16] = v11;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237E70F24()
{
  OUTLINED_FUNCTION_12_2();
  v12 = v0[14];
  PreprocessingSupervisedTabularEstimator.estimator.getter(v0[7], v0[13]);
  v11 = (*(v12 + 56) + **(v12 + 56));
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v1;
  *v1 = v2;
  v1[1] = sub_237E71044;
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  return v11(v3, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237E71044()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E7119C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[10];
  v12 = v0[9];
  v6 = v0[7];
  v11 = v0[2];
  PreprocessingSupervisedTabularEstimator.preprocessor.getter(v6, v5);
  (*(v4 + 32))(v2, v1, v3);
  v7 = *(v6 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v12, v3, v7, AssociatedConformanceWitness, v11);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t PreprocessingSupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8, &unk_237F04C00);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_237EF61A0();
  v1[11] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[15] = v9;
  *v9 = v10;
  v9[1] = sub_237E7143C;

  return PreprocessingSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237E7143C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E71538()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  v1 = v0[11];
  v2 = v0[9];
  sub_237C89E7C(v0[3], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[10];
    v4 = v0[11];
    sub_237C89EEC(v0[9]);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    v5 = v0[16];
    sub_237EF8B90();
    if (v5)
    {
      sub_237C89EEC(v0[10]);
      v6 = OUTLINED_FUNCTION_31_0();
      v7(v6);

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_59();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[19] = v20;
      *v20 = v21;
      OUTLINED_FUNCTION_3_64(v20);
      OUTLINED_FUNCTION_59();

      return PreprocessingSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
    }
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[9], v0[11]);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[17] = v17;
    *v17 = v18;
    v17[1] = sub_237E71720;
    OUTLINED_FUNCTION_59();

    return PreprocessingSupervisedTabularEstimator.preprocessed(from:eventHandler:)();
  }
}

uint64_t sub_237E71720()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E7181C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  (*(v0[12] + 8))(v0[13], v2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_237C89F54(v3, v1);
  v4 = v0[18];
  sub_237EF8B90();
  if (v4)
  {
    sub_237C89EEC(v0[10]);
    v5 = OUTLINED_FUNCTION_31_0();
    v6(v5);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_59();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[19] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_3_64(v16);
    OUTLINED_FUNCTION_59();

    return PreprocessingSupervisedTabularEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t PreprocessingSupervisedTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTabularTransformer(0, v13);
  return (*(v5 + 64))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingSupervisedTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v32 = a3;
  v33 = v6;
  OUTLINED_FUNCTION_1_1();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v34 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v30 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = v3;
  v24 = v35;
  result = (*(v12 + 72))(a1, v13, v12, v20);
  if (!v24)
  {
    v26 = v33;
    (*(v31 + 16))(v34, v23, v33);
    (*(v30 + 32))(v18, v22, AssociatedTypeWitness);
    v27 = *(a2 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v34, v18, v26, AssociatedTypeWitness, v27, AssociatedConformanceWitness, v32);
  }

  return result;
}

void (*sub_237E71C7C(void *a1, uint64_t a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = PreprocessingSupervisedTabularEstimator.annotationColumnID.modify(v4, a2);
  return sub_237C803C0;
}

uint64_t sub_237E71CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingSupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)();
}

uint64_t sub_237E71F54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E7211C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_237E723D4()
{
  v2 = v0[1];
  v3 = v0[3];
  if (v3 >= *(v2 + 16))
  {
    v4 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v4, MEMORY[0x277D841A0]);
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60, &unk_237F10530);
    v7 = *v0;
    swift_beginAccess();
    v8 = *(v7 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    v10 = sub_237DA2564();
    OUTLINED_FUNCTION_14_59();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v11 = swift_allocObject();
    inited[2].n128_u64[0] = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    OUTLINED_FUNCTION_15_43(v11);
    v14 = v8;
    sub_237E486B8(inited);
    sub_237EF93D0();
    OUTLINED_FUNCTION_5_16();
    (*(v12 + 104))(v6);
    swift_willThrow();
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA478(v2 + 32 * v3 + 32, v13);
    sub_237DAE308();
    if (swift_dynamicCast())
    {

      v0[3] = v3 + 1;
    }
  }
}

void sub_237E743E0()
{
  OUTLINED_FUNCTION_0_88();
  if (v5 == v6)
  {
    v42 = sub_237EF93E0();
    v79 = OUTLINED_FUNCTION_45_0(v42, MEMORY[0x277D841A0]);
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    OUTLINED_FUNCTION_13_50(MEMORY[0x277D83A90], v70, v73, v79, v81, v84, v86, v88, v90, v91, v92, v93, v94, v95, v96, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_8_81();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_2_104(v46);
    OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_5_16();
    (*(v47 + 104))(v44);
    swift_willThrow();
    return;
  }

  v7 = *v2;
  v8 = sub_237DA2564();
  OUTLINED_FUNCTION_6_71(v8, v9, v10, v11, v12, v13, v14, v15, v70, v0, v8, v81, v84, v86, v88);
  sub_237D86C8C();
  OUTLINED_FUNCTION_21_47();
  v16 = OUTLINED_FUNCTION_9_61();
  sub_237D6D628(v16, v77, v3, v4, v17, v18);
  swift_endAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_35();
  if (v27)
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_26_28(v19, v20, v21, v22, v23, v24, v25, v26, v71, v74, v77, v82, v85, v87, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  sub_237CB6954(v98, v28, v29, v30, v31);
  if (v75)
  {
    v33 = __swift_destroy_boxed_opaque_existential_1(v98);
    OUTLINED_FUNCTION_18_42(v33, v34, v35, v36, v37, v38, v39, v40, v72, v75, v78, v83);
    OUTLINED_FUNCTION_24_36();
  }

  else
  {
    v48 = v32;
    v49 = __swift_destroy_boxed_opaque_existential_1(v98);
    if ((v48 & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_11_61(v49, v50, v51, v52, v53, v54, v55, v56, v72, 0, v78, v83);
      OUTLINED_FUNCTION_24_36();
      sub_237D6D14C(v57);
      __swift_destroy_boxed_opaque_existential_1(v98);
      swift_endAccess();
      return;
    }

    v80 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v80, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_30_38();
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360) + 48);
    OUTLINED_FUNCTION_31_26(MEMORY[0x277D83A90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    v58 = swift_initStackObject();
    OUTLINED_FUNCTION_42_17(v58, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_45_18();
    v58[3].n128_u64[1] = &type metadata for _JSONKey;
    v58[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v59 = swift_allocObject();
    OUTLINED_FUNCTION_1_108(v59);
    OUTLINED_FUNCTION_44_18();
    OUTLINED_FUNCTION_38_16(v60);
    OUTLINED_FUNCTION_22_3();
    (*(v61 + 104))(v7);
    v62 = swift_willThrow();
    OUTLINED_FUNCTION_20_43(v62, v63, v64, v65, v66, v67, v68, v69, v72, v76, v80, v83);
    OUTLINED_FUNCTION_32_28();
  }

  sub_237D6D14C(v41);
  __swift_destroy_boxed_opaque_existential_1(v98);
  swift_endAccess();
}

void sub_237E74704()
{
  OUTLINED_FUNCTION_0_88();
  if (v4 == v5)
  {
    v40 = sub_237EF93E0();
    v77 = OUTLINED_FUNCTION_45_0(v40, MEMORY[0x277D841A0]);
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    OUTLINED_FUNCTION_13_50(MEMORY[0x277D839F8], v68, v71, v77, v79, v82, v84, v86, v88, v89, v90, v91, v92, v93, v94, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_8_81();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_2_104(v44);
    OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_5_16();
    (*(v45 + 104))(v42);
    swift_willThrow();
    return;
  }

  v6 = sub_237DA2564();
  OUTLINED_FUNCTION_6_71(v6, v7, v8, v9, v10, v11, v12, v13, v68, v0, v6, v79, v82, v84, v86);
  sub_237D86C8C();
  OUTLINED_FUNCTION_21_47();
  v14 = OUTLINED_FUNCTION_9_61();
  sub_237D6D628(v14, v75, v2, v3, v15, v16);
  swift_endAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_35();
  if (v25)
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_26_28(v17, v18, v19, v20, v21, v22, v23, v24, v69, v72, v75, v80, v83, v85, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  sub_237CB6E10(v96, v26, v27, v28, v29);
  if (v73)
  {
    v31 = __swift_destroy_boxed_opaque_existential_1(v96);
    OUTLINED_FUNCTION_18_42(v31, v32, v33, v34, v35, v36, v37, v38, v70, v73, v76, v81);
    OUTLINED_FUNCTION_24_36();
LABEL_9:
    sub_237D6D14C(v39);
    __swift_destroy_boxed_opaque_existential_1(v96);
    swift_endAccess();
    return;
  }

  v46 = v30;
  v47 = __swift_destroy_boxed_opaque_existential_1(v96);
  if (v46)
  {
    v78 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v78, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_30_38();
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360) + 48);
    OUTLINED_FUNCTION_31_26(MEMORY[0x277D839F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    v55 = swift_initStackObject();
    OUTLINED_FUNCTION_42_17(v55, xmmword_237F03530);
    sub_237DA2564();
    OUTLINED_FUNCTION_45_18();
    v55[3].n128_u64[1] = &type metadata for _JSONKey;
    v55[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v56 = swift_allocObject();
    OUTLINED_FUNCTION_1_108(v56);
    OUTLINED_FUNCTION_44_18();
    OUTLINED_FUNCTION_39_19(v57);
    OUTLINED_FUNCTION_22_3();
    (*(v58 + 104))(v46);
    v59 = swift_willThrow();
    OUTLINED_FUNCTION_20_43(v59, v60, v61, v62, v63, v64, v65, v66, v70, v74, v78, v81);
    OUTLINED_FUNCTION_32_28();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_61(v47, v48, v49, v50, v51, v52, v53, v54, v70, 0, v76, v81);
  OUTLINED_FUNCTION_24_36();
  sub_237D6D14C(v67);
  __swift_destroy_boxed_opaque_existential_1(v96);
  swift_endAccess();
}

uint64_t sub_237E74CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = sub_237EF90F0();
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = v6[1];
  v17 = v6[3];
  if (v17 >= *(v16 + 16))
  {
    v28 = sub_237EF93E0();
    v61 = OUTLINED_FUNCTION_45_0(v28, MEMORY[0x277D841A0]);
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v30 = a1;
    v31 = *v6;
    swift_beginAccess();
    v32 = *(v31 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_40_16(inited, xmmword_237F03530);
    v34 = sub_237DA2564();
    OUTLINED_FUNCTION_14_59();
    inited[3].n128_u64[1] = &type metadata for _JSONKey;
    inited[4].n128_u64[0] = sub_237CBA80C();
    OUTLINED_FUNCTION_20_22();
    v35 = swift_allocObject();
    inited[2].n128_u64[0] = v35;
    *(v35 + 16) = v34;
    *(v35 + 24) = a2;
    OUTLINED_FUNCTION_15_43(v35);
    v58[0] = v32;
    sub_237E486B8(inited);
    OUTLINED_FUNCTION_41_14(v58[0], 0xD00000000000001CLL);
    OUTLINED_FUNCTION_5_16();
    (*(v36 + 104))(v30);
    return swift_willThrow();
  }

  v53 = a3;
  v54 = v5;
  v50 = v13;
  v51 = v12;
  v52 = a4;
  v55 = a1;
  v18 = *v6;
  v61 = sub_237DA2564();
  v57 = v19;
  v56 = v20;
  v22 = v21;
  OUTLINED_FUNCTION_11_28(v18 + 120, &v59);
  sub_237D86C8C();
  v23 = *(*(v18 + 120) + 16);
  sub_237D86D60(v23);
  v24 = v18;
  sub_237D6D628(v23, v61, v57, v56, v22 & 1, (v18 + 120));
  result = swift_endAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 >= *(v16 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_237CBA478(v16 + 32 * v17 + 32, &v59);
  v26 = v55;
  v27 = v54;
  sub_237CB7708(&v59, v55, a2, v53, v15);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    if (__swift_getEnumTagSinglePayload(v15, 1, a2) == 1)
    {
      (*(v50 + 8))(v15, v51);
      v61 = sub_237EF93E0();
      OUTLINED_FUNCTION_45_0(v61, MEMORY[0x277D841A0]);
      v38 = v37;
      v56 = v37;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360) + 48);
      *v38 = v26;
      v39 = *(v18 + 120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0418, &qword_237F0AFD0);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_237F03530;
      sub_237EF8260();
      v41 = sub_237DA2564();
      v43 = v42;
      v54 = v24;
      *(v40 + 56) = &type metadata for _JSONKey;
      *(v40 + 64) = sub_237CBA80C();
      OUTLINED_FUNCTION_20_22();
      v44 = swift_allocObject();
      *(v40 + 32) = v44;
      *(v44 + 16) = v41;
      *(v44 + 24) = v43;
      OUTLINED_FUNCTION_15_43(v44);
      v59 = v39;
      sub_237E486B8(v40);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_237EF9330();

      v59 = 0x6465746365707845;
      v60 = 0xE900000000000020;
      v45 = sub_237EFA220();
      MEMORY[0x2383E0710](v45);

      MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237F01130);
      v46 = v56;
      sub_237EF93D0();
      OUTLINED_FUNCTION_10_63();
      (*(v47 + 104))(v46);
      swift_willThrow();
      v24 = v54;
    }

    else
    {
      OUTLINED_FUNCTION_22_3();
      (*(v48 + 32))(v52, v15, a2);
      v6[3] = v17 + 1;
    }
  }

  OUTLINED_FUNCTION_11_28(v24 + 120, v58);
  sub_237D6D14C(&v59);
  __swift_destroy_boxed_opaque_existential_1(&v59);
  return swift_endAccess();
}

uint64_t sub_237E7528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[3];
  v6 = sub_237DA2564();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_11_28(v4 + 120, v42);
  sub_237D86C8C();
  v13 = *(*(v4 + 120) + 16);
  sub_237D86D60(v13);
  sub_237D6D628(v13, v6, v8, v10, v12 & 1, (v4 + 120));
  result = swift_endAccess();
  v15 = v3[1];
  if (v5 >= *(v15 + 16))
  {
    v21 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v21, MEMORY[0x277D841A0]);
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v23 = sub_237EF99A0();
    v24 = sub_237EF8260();
    OUTLINED_FUNCTION_51_15(v24, 0xD000000000000041);
    OUTLINED_FUNCTION_22_3();
    (*(v25 + 104))(v23);
    swift_willThrow();
  }

  else
  {
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    sub_237CBA478(v15 + 32 * v5 + 32, v42);
    sub_237CBA478(v42, &v39);
    sub_237DAE308();
    if (swift_dynamicCast())
    {

      v16 = sub_237EF93E0();
      OUTLINED_FUNCTION_45_0(v16, MEMORY[0x277D841A0]);
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
      *v18 = sub_237EF99A0();
      v19 = sub_237EF8260();
      OUTLINED_FUNCTION_51_15(v19, 0xD000000000000040);
      OUTLINED_FUNCTION_22_3();
      (*(v20 + 104))(v18);
    }

    else
    {
      sub_237CBA478(v42, &v39);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD0, &unk_237F073A0);
      if (swift_dynamicCast())
      {
        v3[3] = v5 + 1;
        v39 = sub_237DAA044(v4);
        v40 = v27;
        v41 = v28;
        _s14KeyedContainerVMa(0, a2, a3, v29);

        swift_getWitnessTable();
        sub_237EF99B0();
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_11_28(v4 + 120, &v39);
        sub_237D6D14C(v42);
        __swift_destroy_boxed_opaque_existential_1(v42);
        return swift_endAccess();
      }

      v30 = sub_237EF93E0();
      OUTLINED_FUNCTION_45_0(v30, MEMORY[0x277D841A0]);
      v32 = v31;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_237EF9330();

      v39 = 0xD000000000000035;
      v40 = 0x8000000237EFC830;
      v33 = sub_237DA2870(v42);
      MEMORY[0x2383E0710](v33);

      v34 = OUTLINED_FUNCTION_1_14();
      MEMORY[0x2383E0710](v34, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
      *v32 = v26;
      v35 = sub_237EF8260();
      OUTLINED_FUNCTION_50_16(v35);
      OUTLINED_FUNCTION_22_3();
      (*(v36 + 104))(v32);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  OUTLINED_FUNCTION_11_28(v4 + 120, &v39);
  sub_237D6D14C(v42);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return swift_endAccess();
}

uint64_t sub_237E75728@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[3];
  v5 = sub_237DA2564();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_11_28(v3 + 120, v39);
  sub_237D86C8C();
  v12 = *(*(v3 + 120) + 16);
  sub_237D86D60(v12);
  sub_237D6D628(v12, v5, v7, v9, v11 & 1, (v3 + 120));
  result = swift_endAccess();
  v14 = v1[1];
  if (v4 >= *(v14 + 16))
  {
    v20 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v20, MEMORY[0x277D841A0]);
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE0, &qword_237F073B8);
    v23 = sub_237EF8260();
    OUTLINED_FUNCTION_51_15(v23, 0xD000000000000041);
    OUTLINED_FUNCTION_22_3();
    (*(v24 + 104))(v22);
    swift_willThrow();
  }

  else
  {
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    sub_237CBA478(v14 + 32 * v4 + 32, v39);
    sub_237CBA478(v39, &v37);
    sub_237DAE308();
    if (swift_dynamicCast())
    {

      v15 = sub_237EF93E0();
      OUTLINED_FUNCTION_45_0(v15, MEMORY[0x277D841A0]);
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
      *v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE0, &qword_237F073B8);
      v18 = sub_237EF8260();
      OUTLINED_FUNCTION_51_15(v18, 0xD000000000000040);
      OUTLINED_FUNCTION_22_3();
      (*(v19 + 104))(v17);
    }

    else
    {
      sub_237CBA478(v39, &v37);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8, &qword_237F073B0);
      if (swift_dynamicCast())
      {
        v26 = v40;
        v2[3] = v4 + 1;
        v27 = *(v3 + 120);
        a1[3] = &_s16UnkeyedContainerVN_0;
        a1[4] = sub_237CBA8FC();
        v28 = swift_allocObject();
        *a1 = v28;
        v28[2] = v3;
        v28[3] = v26;
        v28[4] = v27;
        v28[5] = 0;

        sub_237EF8260();
        __swift_destroy_boxed_opaque_existential_1(v39);
        OUTLINED_FUNCTION_11_28(v3 + 120, &v37);
        sub_237D6D14C(v39);
        __swift_destroy_boxed_opaque_existential_1(v39);
        return swift_endAccess();
      }

      v29 = sub_237EF93E0();
      OUTLINED_FUNCTION_45_0(v29, MEMORY[0x277D841A0]);
      v31 = v30;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_237EF9330();

      v37 = 0xD000000000000028;
      v38 = 0x8000000237EFC7B0;
      v32 = sub_237DA2870(v39);
      MEMORY[0x2383E0710](v32);

      v33 = OUTLINED_FUNCTION_1_14();
      MEMORY[0x2383E0710](v33, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
      *v31 = v25;
      v34 = sub_237EF8260();
      OUTLINED_FUNCTION_50_16(v34);
      OUTLINED_FUNCTION_22_3();
      (*(v35 + 104))(v31);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  OUTLINED_FUNCTION_11_28(v3 + 120, &v37);
  sub_237D6D14C(v39);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return swift_endAccess();
}

uint64_t sub_237E75BA8@<X0>(void *a1@<X8>)
{
  v5 = v1;
  v6 = *v1;
  v7 = v1[3];
  v8 = sub_237DA2564();
  OUTLINED_FUNCTION_14_59();
  OUTLINED_FUNCTION_11_28((v6 + 15), v21);
  sub_237D86C8C();
  v9 = *(v6[15] + 16);
  sub_237D86D60(v9);
  sub_237D6D628(v9, v8, v2, v3, v4 & 1, v6 + 15);
  v10 = v6[15];
  result = swift_endAccess();
  v12 = v5[1];
  if (v7 >= *(v12 + 16))
  {
    v16 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v16, MEMORY[0x277D841A0]);
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB54A8, &unk_237F1B960);
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v19 + 104))(v18);
    swift_willThrow();
    OUTLINED_FUNCTION_11_28((v6 + 15), v22);
    sub_237D6D14C(v21);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return swift_endAccess();
  }

  else if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v5[3] = v7 + 1;
    sub_237CBA478(v12 + 32 * v7 + 32, v22);
    memcpy(__dst, v6 + 3, 0x58uLL);
    v13 = v6[14];
    v14 = _s19IntermediateDecoderCMa();
    swift_allocObject();
    sub_237EF8260();
    sub_237C9FEDC(__dst, v21);
    sub_237EF8260();
    v15 = sub_237CB2D00(v22, v10, __dst, v13);
    a1[3] = v14;
    a1[4] = sub_237DAE3B4();
    *a1 = v15;
    OUTLINED_FUNCTION_11_28((v6 + 15), v22);
    sub_237D6D14C(v21);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_237E76040()
{
  result = sub_237EF9B10();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76090()
{
  result = sub_237EF9B20();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76138()
{
  result = sub_237EF9B50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76188()
{
  result = sub_237EF9B30();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E762C8()
{
  result = sub_237EF9B60();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_237E76318(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_108(uint64_t a1)
{
  *(v3 + 32) = a1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v2 & 1;

  return sub_237E486B8(v3);
}

uint64_t OUTLINED_FUNCTION_2_104(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5 & 1;

  return sub_237E486B8(v2);
}

uint64_t OUTLINED_FUNCTION_5_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  *(v16 - 72) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_70()
{
  v7 = *(v5 - 72);

  return sub_237D6D628(v0, v7, v2, v3, v4 & 1, (v1 + 120));
}

uint64_t OUTLINED_FUNCTION_11_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  *(v13 + 24) = v12 + 1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_53()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_13_50@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  *v16 = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_43(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_47()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_237D86D60(v2);
}

uint64_t OUTLINED_FUNCTION_26_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return sub_237CBA478(v23 + 32 * v24 + 32, va);
}

uint64_t OUTLINED_FUNCTION_27_29()
{

  return sub_237DA2564();
}

uint64_t OUTLINED_FUNCTION_38_16(uint64_t a1)
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_39_19(uint64_t a1)
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_40_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_41_14(uint64_t a1, uint64_t a2)
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_42_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_43_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_46_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_50_16(uint64_t a1)
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_51_15(uint64_t a1, uint64_t a2)
{

  return sub_237EF93D0();
}

uint64_t TransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E7686C()
{
  TransformerToEstimatorAdaptor.transformer.getter(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_237E76904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_237C5FFA4;

  return TransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v10, v11, v12, a7);
}

uint64_t TransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E769D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;

  return TransformerToUpdatableEstimatorAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E76A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_237C606BC;

  return TransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v10, v11, v12, a7);
}

uint64_t TemporalTransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_237C606BC;

  return TemporalTransformerToEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v11, v12, v13, a8);
}

uint64_t TemporalTransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;

  return TemporalTransformerToUpdatableEstimatorAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E76C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_237C606BC;

  return TemporalTransformerToUpdatableEstimatorAdaptor.fitted<A>(to:eventHandler:)(a1, v11, v12, v13, a8);
}

uint64_t TabularTransformerToEstimatorAdaptor.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C606BC;

  return TabularTransformerToEstimatorAdaptor.fitted(to:eventHandler:)(a1, v8, v9, v10, a5);
}

uint64_t _s18CreateMLComponents11TransformerPAAE18adaptedAsEstimatorAA0c2ToF7AdaptorVyxGyF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t TabularTransformerToUpdatableEstimatorAdaptor.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a1;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237E76EF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E76F2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E76F68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C606BC;

  return TabularTransformerToUpdatableEstimatorAdaptor.update(_:with:eventHandler:)();
}

uint64_t sub_237E76FF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E77030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C606BC;

  return TabularTransformerToUpdatableEstimatorAdaptor.fitted(to:eventHandler:)(a1, v8, v9, v10, a5);
}

uint64_t sub_237E77150(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237E7728C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_237E775D8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v47 = v5;
  v7 = v6;
  v9 = v8;
  v43 = v10;
  OUTLINED_FUNCTION_38_17();
  swift_getAssociatedTypeWitness();
  v11 = sub_237EF62C0();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v17 = (v15 - v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v22 = *(v3 + 32);
  v44 = v3;
  v45 = v9;
  v41 = v22;
  v42 = v3 + 32;
  (v22)(v7, v3, v19);
  v23 = sub_237EF62B0();
  v25 = v24;
  v26 = *(v13 + 8);
  v26(v21, v11);
  (*(v1 + 32))(v47, v1);
  v27 = sub_237EF62B0();
  v29 = v28;
  v26(v17, v11);
  if (v23 == v27 && v25 == v29)
  {
    goto LABEL_7;
  }

  v31 = sub_237EF9D40();

  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  v32 = v47;
  v48[0] = v7;
  v48[1] = v47;
  v33 = v44;
  v48[2] = v44;
  v48[3] = v1;
  v34 = type metadata accessor for ComposedSupervisedTabularEstimator(0, v48);
  v35 = *(v7 - 8);
  v36 = v43;
  v37 = v45;
  (*(v35 + 16))(v43 + *(v34 + 52), v45, v7);
  v38 = *(v32 - 8);
  v39 = v46;
  (*(v38 + 16))(v36 + *(v34 + 56), v46, v32);
  v41(v7, v33);
  (*(v38 + 8))(v39, v32);
  (*(v35 + 8))(v37, v7);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E778C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v17 = v16;
  v15[7] = v16;
  v15[8] = v14;
  v15[5] = v18;
  v15[6] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v15[2] = v22;
  v15[9] = *(v16 + 40);
  v15[10] = *(v16 + 24);
  v15[11] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[12] = v23;
  v15[13] = swift_task_alloc();
  v15[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8, &unk_237F04C00);
  v15[15] = swift_task_alloc();
  v15[16] = swift_task_alloc();
  v15[17] = swift_task_alloc();
  v15[18] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v15[19] = v24;
  v15[20] = swift_task_alloc();
  v15[21] = swift_task_alloc();
  v25 = *(v17 + 32);
  v15[22] = v25;
  v15[23] = *(v17 + 16);
  v15[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[25] = v26;
  v15[26] = swift_task_alloc();
  v15[27] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v40 = v27 + *v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v15[28] = v28;
  *v28 = v29;
  v28[1] = sub_237E77BD4;
  OUTLINED_FUNCTION_18_3();

  return v37(v30, v31, v32, v33, v34, v35, v36, v37, a9, v25 + 56, v40, a12, a13, a14);
}

uint64_t sub_237E77BD4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E77CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[29];
  sub_237EF8B90();
  if (v15)
  {
    (*(v14[25] + 8))(v14[27], v14[24]);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_18_3();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[30] = AssociatedConformanceWitness;
    v26 = *(AssociatedConformanceWitness + 8);
    v14[31] = v26;
    v27 = *(v26 + 24);
    v14[32] = v27;
    v14[33] = (v26 + 24) & 0xFFFFFFFFFFFFLL | 0x19C4000000000000;
    v39 = v27 + *v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[34] = v28;
    *v28 = v29;
    v28[1] = sub_237E77EC4;
    OUTLINED_FUNCTION_18_3();

    return v36(v30, v31, v32, v33, v34, v35, v36, v37, v26 + 24, v39, a11, a12, a13, a14);
  }
}

uint64_t sub_237E77EC4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E77FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[35];
  sub_237EF8B90();
  if (v15)
  {
    (*(v14[19] + 8))(v14[21], v14[18]);
    v16 = OUTLINED_FUNCTION_31_0();
    v17(v16);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_18_3();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v27 = v14[18];
    v28 = v14[16];
    v29 = v14[4];
    __swift_storeEnumTagSinglePayload(v14[17], 1, 1, v27);
    sub_237C89E7C(v29, v28);
    if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
    {
      sub_237C89EEC(v14[16]);
      OUTLINED_FUNCTION_14_60();
      v46 = v30 + *v30;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v14[38] = v31;
      *v31 = v32;
      OUTLINED_FUNCTION_7_71(v31);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      v42 = v14[32];
      (*(v14[19] + 32))(v14[20], v14[16], v14[18]);
      v46 = v42 + *v42;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v14[36] = v43;
      *v43 = v44;
      v43[1] = sub_237E78290;
      OUTLINED_FUNCTION_18_3();
    }

    return v40(v33, v34, v35, v36, v37, v38, v39, v40, a9, v46, a11, a12, a13, a14);
  }
}

uint64_t sub_237E78290()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E7838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[37];
  v16 = v14[19];
  v18 = v14[17];
  v17 = v14[18];
  v19 = v14[15];
  sub_237C89EEC(v18);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v17);
  sub_237C89F54(v19, v18);
  sub_237EF8B90();
  v20 = *(v16 + 8);
  v21 = OUTLINED_FUNCTION_31_0();
  v20(v21);
  if (v15)
  {
    v22 = v14[21];
    v23 = v14[18];
    sub_237C89EEC(v14[17]);
    (v20)(v22, v23);
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_18_3();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_14_60();
    v47 = v35 + *v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[38] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_7_71(v36);
    OUTLINED_FUNCTION_18_3();

    return v45(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, a11, a12, a13, a14);
  }
}

uint64_t sub_237E78570()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E7866C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[21];
  v14 = v12[18];
  v15 = v12[17];
  v16 = *(v12[19] + 8);
  v16(v12[20], v14);
  sub_237C89EEC(v15);
  v16(v13, v14);
  v17 = OUTLINED_FUNCTION_31_0();
  v18(v17);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_237E78764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 64))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(a3 + 40);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTabularTransformer(0, v12);
    return (*(v9 + 64))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237E788D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v6 = a2[5];
  v42 = a2[3];
  v43 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v40 = &v34 - v13;
  v14 = a2[4];
  v15 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v38 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18_43();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v34 - v21;
  v23 = *(v14 + 72);
  v41 = v3;
  v39 = a1;
  v24 = v44;
  result = v23(a1, v15, v14, v20);
  if (!v24)
  {
    v44 = &protocol requirements base descriptor for SupervisedTabularEstimator;
    v26 = v40;
    (*(v43 + 72))(v39, v42);
    (*(v38 + 32))(v44, v22, AssociatedTypeWitness);
    v27 = v11;
    v28 = v35;
    (*(v36 + 32))(v27, v26, v35);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v30 = OUTLINED_FUNCTION_28_6();
    return ComposedTabularTransformer.init(_:_:)(v30, v31, AssociatedTypeWitness, v28, AssociatedConformanceWitness, v32, v33);
  }

  return result;
}

uint64_t sub_237E78BB4@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_237EF62C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_237E78C40(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_237EF62C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_237E78CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_237C6A904;

  return sub_237E778C4(a1, a2, a3, a4, a5, a6, v21, v22, a9, a10, a11, a12, a13, a14);
}

void TabularTransformer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v38 = v3;
  v39 = v0;
  v42 = v4;
  v36 = v5;
  OUTLINED_FUNCTION_1_1();
  v41 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v40 = v9 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_41_15(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v35 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_33_21();
  OUTLINED_FUNCTION_62_2();
  v17 = type metadata accessor for TabularTransformerToEstimatorAdaptor(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1();
  v34 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &WitnessTable - v20;
  OUTLINED_FUNCTION_0_83();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor(0, v17, v1, WitnessTable);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_15_44();
  TabularTransformer.adaptedAsEstimator()(v24, v25);
  OUTLINED_FUNCTION_33_23();
  v26(v36);
  TabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)();
  (*(v35 + 8))(v2, v37);
  (*(v34 + 8))(v21, v17);
  v27 = OUTLINED_FUNCTION_26_29();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_39();
  v30(v29);
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  sub_237E775D8();
  v31 = OUTLINED_FUNCTION_28_6();
  v32(v31);
  OUTLINED_FUNCTION_38_0();
}

void TabularEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v32[1] = v2;
  v33 = v0;
  v37 = v4;
  v38 = v3;
  v5 = v2;
  v7 = v6;
  v9 = v8;
  v34 = v10;
  OUTLINED_FUNCTION_1_1();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v35 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_237EF62C0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v20 = OUTLINED_FUNCTION_33_21();
  v21 = type metadata accessor for TabularEstimatorToSupervisedAdaptor(v20, v9, AssociatedTypeWitness, v5);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18_43();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v32 - v27;
  (*(v18 + 16))(v1, v33, v9, v26);
  (*(v38 + 32))(v7);
  OUTLINED_FUNCTION_20_44();
  v29 = OUTLINED_FUNCTION_27_30();
  v30(v29);
  OUTLINED_FUNCTION_62_2();
  v31();
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_6();
  sub_237E775D8();
  (*(v23 + 8))(v28, v21);
  OUTLINED_FUNCTION_38_0();
}

void SupervisedTabularEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v39 = v2;
  v40 = v0;
  v43 = v3;
  v37 = v4;
  OUTLINED_FUNCTION_1_1();
  v42 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v41 = v8 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = OUTLINED_FUNCTION_41_15(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v36 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  OUTLINED_FUNCTION_62_2();
  v18 = type metadata accessor for TabularTransformerToEstimatorAdaptor(v14, v15, v16, v17);
  OUTLINED_FUNCTION_1();
  v35 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = v34 - v21;
  OUTLINED_FUNCTION_0_83();
  v34[0] = swift_getWitnessTable();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor(0, v18, v1, v34[0]);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_15_44();
  TabularTransformer.adaptedAsEstimator()(v25, v26);
  OUTLINED_FUNCTION_33_23();
  v27(v37);
  TabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)();
  (*(v36 + 8))(v13, v38);
  (*(v35 + 8))(v22, v18);
  v28 = OUTLINED_FUNCTION_30_39();
  v29(v28);
  v30 = OUTLINED_FUNCTION_26_29();
  v31(v30);
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  sub_237E775D8();
  v32 = OUTLINED_FUNCTION_28_6();
  v33(v32);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v31[1] = v1;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v33 = v8;
  v36 = v9;
  OUTLINED_FUNCTION_1_1();
  v35 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v34 = v13 - v12;
  OUTLINED_FUNCTION_37_22();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_237EF62C0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v19 = OUTLINED_FUNCTION_33_21();
  v20 = type metadata accessor for TabularEstimatorToSupervisedAdaptor(v19, v7, AssociatedTypeWitness, v2);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18_43();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v31 - v26;
  (*(v17 + 16))(v0, v33, v7, v25);
  v31[0] = v5;
  (*(v5 + 32))(v32, v5);
  OUTLINED_FUNCTION_20_44();
  OUTLINED_FUNCTION_62_2();
  v28();
  v29 = OUTLINED_FUNCTION_27_30();
  v30(v29);
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  sub_237E775D8();
  (*(v22 + 8))(v27, v20);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  (*(v15 + 16))(v14 - v13, v16, v3);
  (*(v7 + 16))(v11, v5, v1);
  sub_237E775D8();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E79A94(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_237EF62C0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_109()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_44()
{

  return TabularEstimatorToSupervisedAdaptor.init(_:annotationColumnID:)();
}

uint64_t OUTLINED_FUNCTION_41_15(uint64_t a1)
{
  *(v1 - 168) = a1;

  return sub_237EF62C0();
}

uint64_t TabularTransformer.callAsFunction(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 8);
  v15 = (*(v12 + 24) + **(v12 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C5FFA4;

  return v15(a1, a2, a3, a4, a5, v12);
}

void __swiftcall BoostedTreeConfiguration.init()(CreateMLComponents::BoostedTreeConfiguration *__return_ptr retstr)
{
  retstr->_learningRate = 0.3;
  *&retstr->maximumDepth = xmmword_237F1BD60;
  *&retstr->minimumLossReduction = xmmword_237F1BD70;
  retstr->randomSeed = 0;
  retstr->earlyStoppingIterationCount.value = 0;
  retstr->earlyStoppingIterationCount.is_nil = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *&retstr->rowSubsample = _Q0;
  retstr->parallelTreeCount = 1;
}

double (*BoostedTreeConfiguration.learningRate.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_237E79EE4;
}

double sub_237E79EE4(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*BoostedTreeConfiguration.stepSize.modify(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_237E7B0CC;
}

uint64_t BoostedTreeConfiguration.earlyStoppingIterationCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

BOOL static BoostedTreeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  if (*(a1 + 56))
  {
    if (v9 == v11)
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = 0;
    }

    if (v12 != 1 || v8 != v10)
    {
      return 0;
    }

    return *(a1 + 80) == *(a2 + 80);
  }

  v7 = 0;
  if ((*(a2 + 56) & 1) == 0)
  {
    v14 = *(a1 + 48) == *(a2 + 48) && v9 == v11;
    if (v14 && v8 == v10)
    {
      return *(a1 + 80) == *(a2 + 80);
    }
  }

  return v7;
}

uint64_t sub_237E7A184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E7261656C5FLL && a2 == 0xED00006574615267;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x446D756D6978616DLL && a2 == 0xEC00000068747065;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000237EFF3E0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000237F013F0 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000237F01410 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6173627553776F72 && a2 == 0xEC000000656C706DLL;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x75536E6D756C6F63 && a2 == 0xEF656C706D617362;
                  if (v13 || (sub_237EF9D40() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000011 && 0x8000000237F01430 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_237EF9D40();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_237E7A4B0(char a1)
{
  result = 0x6E696E7261656C5FLL;
  switch(a1)
  {
    case 1:
      result = 0x446D756D6978616DLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x65536D6F646E6172;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x6173627553776F72;
      break;
    case 8:
      result = 0x75536E6D756C6F63;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E7A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E7A184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E7A63C(uint64_t a1)
{
  v2 = sub_237E7A9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E7A678(uint64_t a1)
{
  v2 = sub_237E7A9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoostedTreeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5830, &qword_237F1BD80);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(v1 + 8);
  v14[3] = *(v1 + 16);
  v15 = v9;
  v10 = *(v1 + 40);
  v14[1] = *(v1 + 48);
  v14[2] = v10;
  v11 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7A9A0();
  sub_237EFA1B0();
  v26 = 0;
  v12 = v16;
  sub_237EF9A30();
  if (!v12)
  {
    LODWORD(v16) = v11;
    v25 = 1;
    sub_237EF9A50();
    v24 = 2;
    v15 = v8;
    sub_237EF9A50();
    v23 = 3;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v22 = 4;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v21 = 5;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A50();
    v20 = 6;
    OUTLINED_FUNCTION_1_110();
    sub_237EF99F0();
    v19 = 7;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v18 = 8;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A30();
    v17 = 9;
    OUTLINED_FUNCTION_1_110();
    sub_237EF9A50();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237E7A9A0()
{
  result = qword_27DEB5838;
  if (!qword_27DEB5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5838);
  }

  return result;
}

uint64_t BoostedTreeConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x2383E2240](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x2383E2240](*&v13);
  MEMORY[0x2383E2210](v7);
  sub_237EFA140();
  if (v8 != 1)
  {
    MEMORY[0x2383E2210](v6);
  }

  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x2383E2240](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x2383E2240](*&v15);
  return MEMORY[0x2383E2210](v11);
}

uint64_t BoostedTreeConfiguration.hashValue.getter()
{
  sub_237EFA120();
  BoostedTreeConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t BoostedTreeConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5840, &qword_237F1BD88);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7A9A0();
  sub_237EFA190();
  if (!v2)
  {
    v40 = 0;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v12 = v11;
    v39 = 1;
    OUTLINED_FUNCTION_0_90();
    v13 = sub_237EF9950();
    v38 = 2;
    OUTLINED_FUNCTION_0_90();
    v14 = sub_237EF9950();
    v37 = 3;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v16 = v15;
    v36 = 4;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v18 = v17;
    v35 = 5;
    OUTLINED_FUNCTION_0_90();
    v29 = sub_237EF9950();
    v34 = 6;
    OUTLINED_FUNCTION_0_90();
    v28 = sub_237EF98F0();
    v33 = v19 & 1;
    v32 = 7;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v27 = v20;
    v31 = 8;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v23 = v22;
    v30 = 9;
    OUTLINED_FUNCTION_0_90();
    v24 = sub_237EF9950();
    (*(v7 + 8))(v10, v5);
    v25 = v33;
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    v26 = v28;
    *(a2 + 40) = v29;
    *(a2 + 48) = v26;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v23;
    *(a2 + 80) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237E7AE0C(uint64_t a1)
{
  sub_237EFA120();
  BoostedTreeConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237E7AE4C()
{
  result = qword_27DEB5848;
  if (!qword_27DEB5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5848);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoostedTreeConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237E7AFC4()
{
  result = qword_27DEB5850;
  if (!qword_27DEB5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5850);
  }

  return result;
}

unint64_t sub_237E7B01C()
{
  result = qword_27DEB5858;
  if (!qword_27DEB5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5858);
  }

  return result;
}

unint64_t sub_237E7B074()
{
  result = qword_27DEB5860[0];
  if (!qword_27DEB5860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5860);
  }

  return result;
}

uint64_t SupervisedEstimator.fitted<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_54(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_34_12();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_1(v5);
  *v6 = v7;
  v6[1] = sub_237C6B728;
  OUTLINED_FUNCTION_2_36();

  return v8();
}

void SupervisedEstimator.fitted<A, B>(to:validateOn:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C6A904;
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t UpdatableSupervisedEstimator.update<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_54(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_34_12();
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_16_50(v6);
  OUTLINED_FUNCTION_2_36();

  return v7();
}

uint64_t SupervisedEstimator.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_51(a1, a2, a3, a4, a5, a6, a7);
  v10 = swift_task_alloc();
  *(v9 + 72) = v10;
  *v10 = v9;
  OUTLINED_FUNCTION_16_50(v10);

  return sub_237D0D458(v8, v7);
}

void sub_237E7B500(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_102_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 16) = a1;
  v11 = v5 + 16;
  *(v11 + 64) = a1;
  OUTLINED_FUNCTION_15_0();
  v12 = swift_task_alloc();
  *(v11 + 72) = v12;
  OUTLINED_FUNCTION_7_72(v12, v13, v14, v15, &associated type descriptor for SupervisedEstimator.Transformer);
  OUTLINED_FUNCTION_14_61();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = OUTLINED_FUNCTION_7_72(AssociatedTypeWitness, v17, v18, v19, &associated type descriptor for SupervisedEstimator.Annotation);
  OUTLINED_FUNCTION_17_50(v20, v21, v22, v23);
  sub_237EF8A60();
  OUTLINED_FUNCTION_8_66();
  *v12 = v7;
  v12[1] = sub_237E7B74C;
  OUTLINED_FUNCTION_102_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E7B74C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237E7B884, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v16;
  v9[11] = v8;
  v9[8] = a8;
  v9[9] = v14;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[3] = a1;
  v11 = swift_task_alloc();
  v9[12] = v11;
  *v11 = v9;
  OUTLINED_FUNCTION_16_50(v11);

  return sub_237D0D458(a7, v15);
}

uint64_t sub_237E7B950(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (!v1)
  {
    *(v5 + 16) = a1;
    v11 = v5 + 16;
    *(v11 + 88) = a1;
    OUTLINED_FUNCTION_15_0();
    v12 = swift_task_alloc();
    *(v11 + 96) = v12;
    OUTLINED_FUNCTION_7_72(v12, v13, v14, v15, &associated type descriptor for SupervisedEstimator.Transformer);
    OUTLINED_FUNCTION_14_61();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = OUTLINED_FUNCTION_7_72(AssociatedTypeWitness, v17, v18, v19, &associated type descriptor for SupervisedEstimator.Annotation);
    OUTLINED_FUNCTION_17_50(v20, v21, v22, v23);
    sub_237EF8A60();
    OUTLINED_FUNCTION_8_66();
    *v12 = v7;
    v12[1] = sub_237E7BBBC;
    OUTLINED_FUNCTION_102_1();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237E7BBBC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237E7BCF4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

uint64_t UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_51(a1, a2, a3, a4, a5, a6, a7);
  v10 = swift_task_alloc();
  *(v9 + 72) = v10;
  *v10 = v9;
  OUTLINED_FUNCTION_16_50(v10);

  return sub_237D0D458(v8, v7);
}

void sub_237E7BD9C(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_102_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 16) = a1;
  v11 = v5 + 16;
  *(v11 + 64) = a1;
  OUTLINED_FUNCTION_34_12();
  v12 = swift_task_alloc();
  *(v11 + 72) = v12;
  OUTLINED_FUNCTION_23_17(v26, v13, v14, v15, &associated type descriptor for SupervisedEstimator.Transformer);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = OUTLINED_FUNCTION_23_17(AssociatedTypeWitness, v17, v18, v19, &associated type descriptor for SupervisedEstimator.Annotation);
  OUTLINED_FUNCTION_17_50(v20, v21, v22, v23);
  sub_237EF8A60();
  OUTLINED_FUNCTION_8_66();
  *v12 = v7;
  v12[1] = sub_237E7C000;
  OUTLINED_FUNCTION_102_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E7C000()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237E7C578, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }
}

void dispatch thunk of SupervisedEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_34_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C6B728;
  OUTLINED_FUNCTION_4_89();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_15_0();
  v8 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_1(v1);
  *v2 = v3;
  v2[1] = sub_237C6A904;
  OUTLINED_FUNCTION_4_89();

  return v8(v4, v5, v6);
}

void dispatch thunk of UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_34_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_16_50(v1);
  OUTLINED_FUNCTION_4_89();
  OUTLINED_FUNCTION_18_3();

  __asm { BRAA            X8, X16 }
}

uint64_t OUTLINED_FUNCTION_7_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_13_51(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = result;
  v8[4] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_61()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_17_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for AnnotatedFeature(255, v4, a1, a4);
}

uint64_t ApplyRandomly.init<A>(probability:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, double *a4@<X8>, double a5@<D0>, uint64_t a6@<X3>)
{
  type metadata accessor for ApplyRandomly(0, a2, a3, a6);
  result = a1();
  *a4 = a5;
  return result;
}

uint64_t ApplyRandomly.applied<A>(to:generator:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  return MEMORY[0x2822009F8](sub_237E7C720, 0, 0);
}

uint64_t sub_237E7C720()
{
  *(v0 + 16) = xmmword_237F031B0;
  v1 = *(v0 + 104);
  sub_237C65348();
  sub_237C665D8();
  sub_237EF81B0();
  if (*(v0 + 32) < *v1)
  {
    v8 = (*(*(v0 + 80) + 24) + 24);
    v9 = *v8 + **v8;
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_237E7C968;

    __asm { BRAA            X8, X16 }
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v3, v4, AssociatedTypeWitness);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_237E7C968()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237E7CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_237C5FFA4;

  return ApplyRandomly.applied<A>(to:generator:eventHandler:)(a1, a2, a3, a4, a5, a8, a6, a7);
}

uint64_t sub_237E7CB50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E7CBD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v9 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_237E7CD2C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 8] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for ConvolutionBatchNormalization(uint64_t a1)
{
  result = qword_27DEB58E8;
  if (!qword_27DEB58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237E7CFC4(uint64_t a1)
{
  result = sub_237EF6940();
  if (v2 <= 0x3F)
  {
    result = sub_237EF6C30();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E7D048()
{
  type metadata accessor for ConvolutionBatchNormalization(0);
  sub_237EF6940();
  sub_237EF6C30();
  return sub_237EF6B00();
}

uint64_t sub_237E7D0C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756C6F766E6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000237EFEB30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237E7D19C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x74756C6F766E6F63;
  }
}

uint64_t sub_237E7D1E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5920, &qword_237F1C220);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7D9E8();
  sub_237EFA1B0();
  v19 = 0;
  sub_237EF6940();
  OUTLINED_FUNCTION_2_105();
  sub_237E7DAFC(v11, v12, MEMORY[0x277D2CE88]);
  OUTLINED_FUNCTION_5_88(v3, &v19);
  if (!v2)
  {
    v13 = *(type metadata accessor for ConvolutionBatchNormalization(0) + 20);
    v18 = 1;
    sub_237EF6C30();
    OUTLINED_FUNCTION_1_111();
    sub_237E7DAFC(v14, v15, MEMORY[0x277D2CEF8]);
    OUTLINED_FUNCTION_5_88(v3 + v13, &v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_237E7D394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v30 = sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v27 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v29 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5910, &qword_237F1C218);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for ConvolutionBatchNormalization(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E7D9E8();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_105();
  sub_237E7DAFC(v18, v19, MEMORY[0x277D2CE90]);
  sub_237EF9970();
  (*(v27 + 32))(v17, v29, v30);
  OUTLINED_FUNCTION_1_111();
  sub_237E7DAFC(v20, v21, MEMORY[0x277D2CF00]);
  sub_237EF9970();
  v22 = OUTLINED_FUNCTION_3_93();
  v23(v22);
  (*(v25 + 32))(v17 + *(v14 + 20), v8, v28);
  sub_237E7DA3C(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237E7DAA0(v17);
}

uint64_t sub_237E7D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E7D0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E7D764(uint64_t a1)
{
  v2 = sub_237E7D9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E7D7A0(uint64_t a1)
{
  v2 = sub_237E7D9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E7D810(uint64_t a1, uint64_t a2)
{
  sub_237E7DAFC(&qword_27DEB2640, type metadata accessor for ConvolutionBatchNormalization, &unk_237F1C1B4);

  return sub_237EF6890();
}

uint64_t sub_237E7D88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237E7DAFC(&qword_27DEB2640, type metadata accessor for ConvolutionBatchNormalization, &unk_237F1C1B4);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237E7D9E8()
{
  result = qword_27DEB5918;
  if (!qword_27DEB5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5918);
  }

  return result;
}

uint64_t sub_237E7DA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConvolutionBatchNormalization(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E7DAA0(uint64_t a1)
{
  v2 = type metadata accessor for ConvolutionBatchNormalization(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237E7DAFC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ConvolutionBatchNormalization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E7DC24()
{
  result = qword_27DEB5928;
  if (!qword_27DEB5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5928);
  }

  return result;
}

unint64_t sub_237E7DC7C()
{
  result = qword_27DEB5930;
  if (!qword_27DEB5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5930);
  }

  return result;
}

unint64_t sub_237E7DCD4()
{
  result = qword_27DEB5938[0];
  if (!qword_27DEB5938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5938);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_88(uint64_t a1, uint64_t a2)
{

  return sub_237EF9A70();
}

uint64_t NormalizationScaler.NormalizationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

uint64_t sub_237E7DE24(uint64_t a1)
{
  sub_237EFA120();
  NormalizationScaler.NormalizationStrategy.hash(into:)();
  return sub_237EFA170();
}

void NormalizationScaler.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v12 = v1;
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *v0;
  sub_237EF8760();
  sub_237EF8A60();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    sub_237C84150();
    swift_allocError();
    *v11 = 0xD00000000000001ALL;
    *(v11 + 8) = 0x8000000237F01450;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_3_94();
    if (v10)
    {
      sub_237D11194();
    }

    else
    {
      sub_237D10DA8();
    }

    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0xD000000000000013, 0x8000000237F1C320);
    }

    (*(v5 + 32))(v12, v9, v3);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E7E17C()
{
  NormalizationScaler.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NormalizationScaler.Transformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  NormalizationScaler.Transformer.scale.getter(v11, v9 - v8);
  sub_237EF8330();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_237E7E3A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237E7E440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E7E3A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237E7E478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E7E4CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NormalizationScaler.Transformer.hashValue.getter(uint64_t a1)
{
  sub_237EFA120();
  NormalizationScaler.Transformer.hash(into:)(v3, a1);
  return sub_237EFA170();
}

uint64_t sub_237E7E57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NormalizationScaler.Transformer.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237E7E5F0(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  NormalizationScaler.Transformer.hash(into:)(v4, a2);
  return sub_237EFA170();
}

uint64_t NormalizationScaler.Transformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000027, 0x8000000237F01470);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void NormalizationScaler.Transformer.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v13 = v0;
  v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v12 = *(v3 + 16);
  v14 = v12;
  v15 = v4;
  v16 = v5;
  type metadata accessor for NormalizationScaler.Transformer.CodingKeys(255, &v14);
  OUTLINED_FUNCTION_2_106();
  OUTLINED_FUNCTION_4_19();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v12 - v10;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA1B0();
  sub_237EF9A70();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_12_6();
}

void NormalizationScaler.Transformer.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v37 = v11;
  OUTLINED_FUNCTION_1_1();
  v40 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v42 = v15 - v14;
  v44 = v16;
  v45 = v17;
  v46 = v18;
  v47 = v19;
  type metadata accessor for NormalizationScaler.Transformer.CodingKeys(255, &v44);
  OUTLINED_FUNCTION_2_106();
  OUTLINED_FUNCTION_4_19();
  v43 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v38 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v39 = v8;
  v44 = v8;
  v45 = v6;
  v41 = v4;
  v46 = v4;
  v47 = v2;
  v24 = type metadata accessor for NormalizationScaler.Transformer(0, &v44);
  OUTLINED_FUNCTION_1_1();
  v36 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v34 - v27;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_237EFA190();
  if (!v0)
  {
    v35 = v28;
    v30 = v38;
    v29 = v39;
    v31 = v40;
    v32 = v42;
    sub_237EF9970();
    (*(v30 + 8))(v23, v43);
    v33 = v35;
    (*(v31 + 32))(v35, v32, v29);
    (*(v36 + 32))(v37, v33, v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E7EB78()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237EF7820();
  OUTLINED_FUNCTION_1_1();
  v39 = v7;
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v37 = v9 - v8;
  v10 = sub_237EF7730();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = *(v3 + 16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  (*(v23 + 16))(v22 - v21, v1, v19);
  sub_237C65348();
  sub_237EF8190();
  v38 = v18;
  sub_237CFA100(1.0 / v42[0], 0.0);
  v24 = *(v12 + 16);
  v36 = v15;
  v24(v15, v18, v10);
  v25 = v37;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage(0);
  v27 = &v5[*(v26 + 24)];
  *(v27 + 10) = 0;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *v27 = 0u;
  v24(v5, v15, v10);
  memcpy(v42, v27, 0x58uLL);
  sub_237C9BD20(v42);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 10) = 0;
  (*(v39 + 16))(&v5[*(v26 + 20)], v25, v40);
  v28 = sub_237E34060();
  v30 = v29;
  v31 = sub_237EF7780();
  v33 = v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  sub_237C91098(v28, v30, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v33 = v43;
  v31(&v41, 0);
  (*(v39 + 8))(v25, v40);
  v35 = *(v12 + 8);
  v35(v36, v10);
  v35(v38, v10);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E7EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237E7EF60(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E7F044(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237E7F180(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237E7F384(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_106()
{

  return swift_getWitnessTable();
}

uint64_t sub_237E7F4BC(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = v4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1 = type metadata accessor for DenseVector(319, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
    if (v9 <= 0x3F)
    {
      v10 = type metadata accessor for OptimizerState(319, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
      if (v12 > 0x3F)
      {
        return v10;
      }

      v10 = type metadata accessor for OptimizerStatistics(319, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
      if (v13 > 0x3F)
      {
        return v10;
      }

      else if (v5 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_237E7F628(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = result;
  v16 = v13 | 7;
  if (v11 >= a2)
  {
LABEL_27:
    if (v7 == v11)
    {
      v25 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v26 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) == 0)
      {
        v27 = *v26;
        if (*v26 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v25 = ((v13 + ((((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v13);
    }

    return __swift_getEnumTagSinglePayload(v25, v10, v15);
  }

  v14 = *(*(result - 8) + 64);
  v17 = ((v14 + ((v13 + 8 + ((((((6 - (((-9 - ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) - (v13 + 8)) | v16) - v14) - ((((((-49 - v13) | v13) - (v14 + v13)) | v13) - (v14 + v13)) | v13)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v11 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_27;
      }

LABEL_24:
      v23 = v22 - 1;
      if (v18)
      {
        v23 = 0;
        v24 = *a1;
      }

      else
      {
        v24 = 0;
      }

      result = v11 + (v24 | v23) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void sub_237E7F8E4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= v12)
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = v16 | 7;
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = v18 + ((v18 + v16 + ((v18 + v16 + ((v16 + 48) & ~v16)) & ~v16)) & ~v16) + 1;
  v20 = ((v18 + ((v16 + 8 + ((((((v19 + ((v16 + 8 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~(v16 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (((v18 + ((v16 + 8 + ((((((v19 + ((v16 + 8 + ((((v15 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~(v16 | 7)) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v14 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v20)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v14;
    }

    if (v20)
    {
      v25 = ~v14 + a2;
      bzero(a1, v20);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v20) = v24;
        break;
      case 2:
        *(a1 + v20) = v24;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *(a1 + v20) = v24;
        break;
      default:
        return;
    }

    return;
  }

  switch(v23)
  {
    case 1:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_37;
      }

      return;
    case 2:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_37;
      }

      return;
    case 3:
LABEL_64:
      __break(1u);
      return;
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_36;
    default:
LABEL_36:
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 == v14)
      {
        v26 = a1;
        v27 = a2;
        v12 = v9;
        AssociatedTypeWitness = v7;
LABEL_39:

        __swift_storeEnumTagSinglePayload(v26, v27, v12, AssociatedTypeWitness);
        return;
      }

      v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v29 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v29 = (a2 - 1);
        }

        *v28 = v29;
        return;
      }

      v30 = (((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17;
      if (v13 >= a2)
      {
        v26 = ((v16 + ((((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16);
        v27 = a2;
        goto LABEL_39;
      }

      if (v19 <= 3)
      {
        v31 = ~(-1 << (8 * v19));
      }

      else
      {
        v31 = -1;
      }

      if (v19)
      {
        v32 = v31 & (~v13 + a2);
        if (v19 <= 3)
        {
          v33 = v19;
        }

        else
        {
          v33 = 4;
        }

        bzero(((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17), v19);
        switch(v33)
        {
          case 2:
            *v30 = v32;
            break;
          case 3:
            *v30 = v32;
            *(v30 + 2) = BYTE2(v32);
            break;
          case 4:
            *v30 = v32;
            break;
          default:
            *v30 = v32;
            break;
        }
      }

      return;
  }
}

void sub_237E7FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v50 = a1;
  v59 = a3;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = sub_237EFA1D0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v51 = &v43 - v7;
  OUTLINED_FUNCTION_1_1();
  v60 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v57 = v3;
  v16 = *(v3 + 32);
  v47 = v4;
  v16(v4, v3, v13);
  v48 = v16;
  v49 = v3 + 32;
  v56 = v11;
  v58 = swift_getAssociatedConformanceWitness();
  v45 = v15;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  v17 = v46;
  sub_237EF9CE0();
  v18 = v54;
  v19 = (v16)(v4, v57);
  v20 = DenseVector.init(repeating:count:)(v17, v19, AssociatedTypeWitness);
  v21 = v59;
  v22 = *(v59 + 52);

  *(v18 + v22) = v20;
  v23 = v18;
  DenseVector.init(scalars:)();
  v25 = v24;
  v26 = v21[14];
  v27 = v17;

  *(v23 + v26) = v25;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_13_52();
  v28 = v60;
  v29 = *(v60 + 40);
  v30 = (v23 + v21[15]);
  v50 = v60 + 40;
  v44 = v29;
  v29(v30, v17, AssociatedTypeWitness);
  v31 = (v23 + v21[11]);
  v32 = AssociatedConformanceWitness;
  v43 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v33);
  (*(v28 + 24))(&v31[*(v43 + 52)], v52, AssociatedTypeWitness);

  *v31 = v25;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_13_52();
  v34 = v47;
  v35 = v57;
  v48(v47, v57);
  sub_237EF9430();
  (*(v60 + 8))(v17, AssociatedTypeWitness);
  swift_getWitnessTable();
  v36 = DenseVector.init<A>(scalars:)();

  *(v31 + 1) = v36;
  (*(v35 + 48))(v31, v34, v35);
  OUTLINED_FUNCTION_15_45();
  if (v39)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v37 + 8) = v38;
  v40 = *(v37 + 16);
  v39 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v39)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v37 + 16) = v41;
  DenseVector.maximumAbsoluteValue.getter(*(v31 + 1), AssociatedTypeWitness, v32);
  v44(&v31[*(v43 + 44)], v27, AssociatedTypeWitness);
  if ((sub_237EF8380() & 1) == 0)
  {
    sub_237DC6AD0();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
  }
}

uint64_t sub_237E8017C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v32 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v31 = v27 - v9;
  v29 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = *(AssociatedConformanceWitness + 8);
  v30 = AssociatedConformanceWitness;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x28223BE20](v11);
  v13 = v5;
  v28 = v5;
  v14 = *(v5 + 32);
  v14(v4, v13, v12);
  v15 = *(v35 + 44);
  type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  OUTLINED_FUNCTION_4();
  (*(v17 + 24))(v2 + v15, v34);
  OUTLINED_FUNCTION_42_2();
  v27[1] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  v18 = v31;
  OUTLINED_FUNCTION_2_107();
  sub_237EF9CE0();
  v19 = (v14)(v29, v28);
  v20 = v18;
  v21 = DenseVector.init(repeating:count:)(v18, v19, AssociatedTypeWitness);
  v22 = v35;
  v23 = *(v35 + 52);

  *(v3 + v23) = v21;
  v24 = *v34;
  v25 = *(v22 + 56);

  *(v3 + v25) = v24;
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9CE0();
  return (*(v32 + 40))(v3 + *(v22 + 60), v20, AssociatedTypeWitness);
}

void sub_237E80448(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v137 = *(a1 + 24);
  OUTLINED_FUNCTION_47_1();
  swift_getAssociatedTypeWitness();
  v131 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v152 = *(AssociatedConformanceWitness + 16);
  v146 = *(*(v152 + 16) + 8);
  v125 = *(v146 + 16);
  v120[2] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v123 = v120 - v8;
  v144 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v120 - v10;
  v12 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v134 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v135 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v151 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = v120 - v27;
  v29 = (v2 + *(a1 + 44));
  v30 = *v29;
  v136 = a1;
  v31 = *(a1 + 64);

  v129 = v31;
  *(v2 + v31) = v30;
  v153 = v12;
  v138 = AssociatedConformanceWitness;
  v130 = type metadata accessor for OptimizerState(0, v12, AssociatedConformanceWitness, v32);
  v154 = v130[13];
  v128 = v2 + 8;
  v121 = v14;
  v33 = (v14 + 8);
  v127 = v137 + 40;
  v34 = v30;
  v149 = v30;
  v150 = v28;
  v139 = v2;
  v147 = v29;
  v148 = (v14 + 8);
  v132 = v30;
  v143 = v11;
  while (1)
  {
    v35 = v152;
    v36 = v153;
    sub_237EF8390();
    v145 = *(*(v35 + 24) + 8);
    LOBYTE(v35) = sub_237EF8400();
    v37 = *v33;
    (*v33)(v28, v36);
    if ((v35 & 1) == 0)
    {
      v142 = v37;
      v68 = v139;
      goto LABEL_8;
    }

    v38 = v153;
    v39 = v138;
    static DenseVector.* infix(_:_:)(v29[1]);
    v41 = static DenseVector.- infix(_:_:)(v34, v40, v38, v39);

    v42 = v139;
    v43 = v129;
    *(v139 + v129) = v41;
    v44 = v136;
    sub_237E81260(v136);
    v45 = *(v42 + v43);
    v46 = DenseVector.scalars.getter(v45);
    (*(v137 + 40))(v46);

    v47 = *(v44 + 48);
    v48 = *(v128 + v47);
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v128 + v47) = v50;
    v149 = v45;
    v51 = v34;
    v52 = v153;
    v53 = static DenseVector.- infix(_:_:)(v45, v51, v153, v39);
    v54 = *(v44 + 52);

    v141 = v53;
    *(v42 + v54) = v53;
    OUTLINED_FUNCTION_47_1();
    dot<A>(_:_:)(v55, v56, v57, v39);
    v142 = *(v146 + 8);
    sub_237EF9750();
    v58 = OUTLINED_FUNCTION_17_51();
    (v37)(v58);
    OUTLINED_FUNCTION_42_2();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_7_51();
    v140 = v59;
    sub_237EF9FA0();
    v60 = v133;
    OUTLINED_FUNCTION_2_107();
    sub_237EF9CE0();
    v61 = v39;
    v33 = v148;
    DenseVector.squaredMagnitude.getter(v141, v52, v61);
    OUTLINED_FUNCTION_47_1();
    sub_237EF8D30();
    v62 = OUTLINED_FUNCTION_81_1();
    (v37)(v62);
    v37(v60, v52);
    v29 = v147;
    sub_237EF8330();
    v63 = OUTLINED_FUNCTION_42_2();
    (v37)(v63);
    v28 = v150;
    sub_237EF9750();
    v64 = OUTLINED_FUNCTION_17_51();
    (v37)(v64);
    v65 = OUTLINED_FUNCTION_81_1();
    (v37)(v65);
    if (sub_237EF8410())
    {
      break;
    }

    OUTLINED_FUNCTION_7_51();
    sub_237EF9FA0();
    OUTLINED_FUNCTION_2_107();
    sub_237EF9CE0();
    OUTLINED_FUNCTION_47_1();
    sub_237EF8340();
    v66 = OUTLINED_FUNCTION_81_1();
    (v37)(v66);
    v67 = OUTLINED_FUNCTION_42_2();
    (v37)(v67);
    v37(v151, v52);
    v34 = v132;
  }

  v69 = OUTLINED_FUNCTION_42_2();
  (v37)(v69);
  v70 = OUTLINED_FUNCTION_17_51();
  (v37)(v70);
  v68 = v139;
  v142 = v37;
LABEL_8:
  v71 = v136;
  v72 = *(v136 + 56);
  v73 = v149;
  v74 = v153;
  v75 = static DenseVector.- infix(_:_:)(v149, *(v68 + v72), v153, v138);
  v143 = v75;
  v76 = *(v71 + 52);

  *(v68 + v76) = v75;
  v149 = v73;

  *(v68 + v72) = v73;
  OUTLINED_FUNCTION_81_1();
  v77 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_8_82();
  v144 = v77;
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  v154 = *(v71 + 60);
  v78 = v146;
  sub_237EF8D30();
  v79 = OUTLINED_FUNCTION_6_73();
  v80 = v142;
  (v142)(v79);
  sub_237EF8D30();
  v81 = OUTLINED_FUNCTION_81_1();
  (v80)(v81);
  v151 = *(v78 + 8);
  OUTLINED_FUNCTION_12_55();
  sub_237EF9750();
  v82 = OUTLINED_FUNCTION_6_73();
  (v80)(v82);
  v80(v78, v74);
  OUTLINED_FUNCTION_8_82();
  v83 = v144;
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  sub_237EF8320();
  sub_237EF9750();
  v84 = OUTLINED_FUNCTION_81_1();
  (v80)(v84);
  v85 = OUTLINED_FUNCTION_6_73();
  (v80)(v85);
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  OUTLINED_FUNCTION_12_55();
  sub_237EF8330();
  v86 = OUTLINED_FUNCTION_6_73();
  (v80)(v86);
  v80(v83, v74);
  OUTLINED_FUNCTION_8_82();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_2_107();
  sub_237EF9D20();
  OUTLINED_FUNCTION_47_1();
  sub_237EF9760();
  v87 = OUTLINED_FUNCTION_81_1();
  (v80)(v87);
  v88 = v150;
  sub_237EF8330();
  v89 = OUTLINED_FUNCTION_6_73();
  (v80)(v89);
  v90 = v88;
  v91 = v138;
  v92 = static DenseVector.* infix(_:_:)(v88, v143);
  v80(v90, v74);
  v93 = static DenseVector.+ infix(_:_:)(v149, v92, v74, v91);

  *v147 = v93;
  (*(v121 + 24))(&v154[v139], v124, v74);
  v94 = OUTLINED_FUNCTION_17_51();
  DenseVector.magnitude.getter(v94, v95, v91);
  sub_237EF8390();
  LOBYTE(v92) = sub_237EF8430();
  v96 = OUTLINED_FUNCTION_6_73();
  (v80)(v96);
  v97 = OUTLINED_FUNCTION_81_1();
  v98 = (v80)(v97);
  if (v92)
  {
    v99 = 0;
LABEL_18:
    sub_237DC6AD0();
    swift_allocError();
    *v118 = v99;
    swift_willThrow();
    v119 = OUTLINED_FUNCTION_14_62();
    (v80)(v119);
    v80(v122, v99);
    return;
  }

  v155 = v143;
  MEMORY[0x28223BE20](v98);
  v100 = v91;
  v101 = v131;
  v102 = v137;
  v120[-2] = v131;
  v120[-1] = v102;
  KeyPath = swift_getKeyPath();
  v154 = v120;
  MEMORY[0x28223BE20](KeyPath);
  v120[-4] = v101;
  v120[-3] = v102;
  v120[-2] = v104;
  type metadata accessor for DenseVector(0, v153, v91, v105);

  swift_getWitnessTable();
  v106 = sub_237EF8750();

  if ((v106 & 1) == 0)
  {
    v99 = 1;
    goto LABEL_18;
  }

  v107 = v80;
  v108 = v147;
  (*(v102 + 48))(v147, v101, v102);
  v109 = v150;
  v110 = v100;
  v111 = v153;
  DenseVector.maximumAbsoluteValue.getter(v143, v153, v110);
  (*(v121 + 40))(v108 + v130[11], v109, v111);
  OUTLINED_FUNCTION_15_45();
  if (v49)
  {
    goto LABEL_21;
  }

  v112[1] = v113;
  v114 = v112[2];
  v49 = __OFADD__(v114, 1);
  v115 = v114 + 1;
  if (v49)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v112[2] = v115;
  if (!__OFADD__(*v112, 1))
  {
    ++*v112;
    v116 = v108 + v130[12];
    if (sub_237EF8380())
    {
      v117 = OUTLINED_FUNCTION_14_62();
      (v107)(v117);
      v107(v122, v116);
      return;
    }

    v99 = 1;
    v80 = v107;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_237E81260(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = *(a1 + 24);
  v9[2] = *(a1 + 16);
  v9[3] = v3;
  v9[6] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for DenseVector(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);

  DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E81CEC, v9, v7, MEMORY[0x277D84F78] + 8);
}

void sub_237E81368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a6;
  v63 = a5;
  v84 = a4;
  v81 = a1;
  v82 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = *(AssociatedConformanceWitness + 16);
  v62 = *(v76 + 16);
  v75 = *(v62 + 8);
  v57 = *(v75 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55[5] = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55[4] = v55 - v14;
  v77 = *(AssociatedConformanceWitness + 8);
  v61 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v61);
  v60 = v55 - v15;
  v16 = swift_checkMetadataState();
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v85 = v55 - v20;
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = v55 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v55 - v26;
  MEMORY[0x28223BE20](v28);
  v83 = a2;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v59 = v31;
  v73 = v32;
  v33 = v55 - v30;
  if (v83)
  {
    v34 = a8;
    v35 = v27;
    v36 = type metadata accessor for FISTAOptimizer(0, a7, v34, v29);
    v72 = v84 + *(v36 + 44);
    v38 = type metadata accessor for OptimizerState(0, v16, AssociatedConformanceWitness, v37);
    v84 = 0;
    v39 = *(v38 + 52);
    v69 = *(v64 + 16);
    v67 = (v64 + 8);
    v70 = v64 + 16;
    v71 = v39;
    v55[3] = v64 + 40;
    v80 = v33;
    v55[2] = AssociatedConformanceWitness;
    v79 = v24;
    v68 = v27;
    while (1)
    {
      v40 = v85;
      v41 = v35;
      v69(v35, v72 + v71, v16);
      v42 = v24;
      v43 = v84;
      DenseVector.subscript.getter(v84, v63, v16);
      v44 = v75;
      sub_237EF8D30();
      v45 = *v67;
      (*v67)(v42, v16);
      v45(v41, v16);
      UnsafeMutableVectorPointer.subscript.getter(v43, v81, v82, v16, v40);
      v78 = *(v44 + 8);
      v46 = v73;
      sub_237EF9760();
      v45(v40, v16);
      v66 = swift_getAssociatedConformanceWitness();
      v47 = v74;
      sub_237EF9FA0();
      sub_237EF9CE0();
      v65 = *(*(v76 + 24) + 8);
      sub_237EF9FE0();
      v45(v85, v16);
      v45(v46, v16);
      UnsafeMutableVectorPointer.subscript.getter(v84, v81, v82, v16, v47);
      v48 = v59;
      sub_237EF9410();
      v45(v47, v16);
      sub_237EF9760();
      v45(v48, v16);
      sub_237EF9FA0();
      v49 = v85;
      sub_237EF9CE0();
      sub_237EF9FE0();
      v45(v48, v16);
      v45(v49, v16);
      v50 = v79;
      sub_237EF9760();
      v45(v46, v16);
      v45(v50, v16);
      if ((v84 * v82) >> 64 != (v84 * v82) >> 63)
      {
        break;
      }

      v66 = v84 + 1;
      v65 = v81 + *(v64 + 72) * v84 * v82;
      (*(v64 + 40))();
      swift_getAssociatedConformanceWitness();
      v51 = v48;
      sub_237EF9FB0();
      sub_237EF9D20();
      sub_237EF9FB0();
      v52 = v85;
      sub_237EF9D20();
      v53 = v74;
      v69(v74, v72 + v71, v16);
      sub_237EF8D30();
      v45(v53, v16);
      v45(v51, v16);
      DenseVector.subscript.getter(v84, v58, v16);
      v54 = v73;
      sub_237EF8D30();
      v45(v51, v16);
      v45(v52, v16);
      v35 = v68;
      v24 = v79;
      sub_237EF9750();
      v45(v54, v16);
      v45(v24, v16);
      sub_237EF8340();
      v45(v35, v16);
      v45(v80, v16);
      v84 = v66;
      if (v83 == v66)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return sub_237EF9CE0();
}

uint64_t FullyConnectedNetworkRegressor.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_237C8F200(v7, &v6);
}

__n128 FullyConnectedNetworkRegressor.configuration.setter(uint64_t a1)
{
  v3 = v1[1];
  v9[0] = *v1;
  v9[1] = v3;
  v4 = v1[3];
  v9[2] = v1[2];
  v9[3] = v4;
  OUTLINED_FUNCTION_22_3();
  (*(v5 + 8))(v9);
  v6 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v8;
  return result;
}

__n128 FullyConnectedNetworkRegressor.init(configuration:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  a2->n128_u64[0] = &unk_284ACECA8;
  a2->n128_u32[2] = 981668463;
  a2[1].n128_u64[0] = 1000;
  a2[1].n128_u32[2] = 1045220557;
  a2[2].n128_u64[0] = 16;
  a2[2].n128_u64[1] = 0x3F847AE147AE147BLL;
  a2[3] = xmmword_237F11780;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v15[2] = a2[2];
  v15[3] = v8;
  v15[0] = v6;
  v15[1] = v7;
  type metadata accessor for FullyConnectedNetworkRegressor(0, a3, a4, a5);
  OUTLINED_FUNCTION_22_3();
  (*(v9 + 8))(v15);
  *a2 = v11;
  a2[1] = v12;
  result = v13;
  a2[2] = v13;
  a2[3] = v14;
  return result;
}

uint64_t FullyConnectedNetworkRegressor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[13] = v5;
  v0[14] = v6;
  v0[12] = v7;
  v0[19] = *(v1 - 8);
  v0[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_27_31();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E82020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v10[19] + 16))(v10[20], v10[13], v10[17]);
  v11 = sub_237EF7E90();
  type metadata accessor for AnnotatedFeature(0, v11, MEMORY[0x277D83A90], v12);
  v13 = sub_237EF8A90();
  v10[21] = v13;
  v10[10] = v13;
  v14 = sub_237EF89A0();
  v10[22] = v14;
  v10[11] = v14;
  v15 = swift_task_alloc();
  v10[23] = v15;
  v16 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v15 = v10;
  v15[1] = sub_237E82180;
  v18 = OUTLINED_FUNCTION_61_8(WitnessTable);

  return sub_237E8233C(v18, (v10 + 10), (v10 + 11), v19, v20, v21, v16, v16, a9, a10);
}

uint64_t sub_237E82180()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237E822E0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237E8233C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_12_2();
  v12 = v11;
  v10[88] = a10;
  v10[87] = a9;
  v10[86] = v13;
  v10[85] = v14;
  v10[84] = v11;
  v10[83] = v15;
  v10[82] = v16;
  v10[81] = v17;
  v10[80] = v18;
  v10[79] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  v10[89] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v10[90] = v21;
  v10[91] = OUTLINED_FUNCTION_27_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A0, &qword_237F118B0);
  OUTLINED_FUNCTION_18(v22);
  v10[92] = OUTLINED_FUNCTION_27_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8, &qword_237F118B8);
  v10[93] = v23;
  OUTLINED_FUNCTION_18(v23);
  v10[94] = OUTLINED_FUNCTION_27_0();
  v24 = sub_237EF6B10();
  v10[95] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v10[96] = v25;
  v10[97] = swift_task_alloc();
  v10[98] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B0, &qword_237F118C0);
  v10[99] = v26;
  OUTLINED_FUNCTION_6_1(v26);
  v10[100] = v27;
  v10[101] = OUTLINED_FUNCTION_27_0();
  v28 = sub_237EF64C0();
  v10[102] = v28;
  OUTLINED_FUNCTION_6_1(v28);
  v10[103] = v29;
  v10[104] = OUTLINED_FUNCTION_27_0();
  v30 = v12[2];
  v10[105] = v30;
  v31 = v12[3];
  v10[106] = v31;
  v32 = v12[4];
  v10[107] = v32;
  v33 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, v30, v31, v32);
  v10[108] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v10[109] = v34;
  v10[110] = OUTLINED_FUNCTION_27_0();
  v10[111] = sub_237EF7E90();
  v35 = sub_237EF90F0();
  v10[112] = v35;
  OUTLINED_FUNCTION_6_1(v35);
  v10[113] = v36;
  v10[114] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_27_31();
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v37, v38, v39);
}

void sub_237E8264C()
{
  v129 = v0;
  v124 = *(v0 + 888);
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v7;
  v8[2] = v6;
  v8[3] = v2;
  v8[4] = v1;
  v8[5] = v5;
  v8[6] = v4;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v1;
  v10[5] = v5;
  v10[6] = v4;
  v10[7] = KeyPath;
  sub_237C9339C(sub_237E86944, v10, v7, v124, MEMORY[0x277D84A98], v5);
  v12 = v11;

  *(v0 + 584) = v12;
  v13 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_55_1();
  if (sub_237EF8EC0())
  {

LABEL_5:
    sub_237C84150();
    swift_allocError();
    *v21 = 0xD000000000000025;
    *(v21 + 8) = 0x8000000237F014A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_7_73();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  v15 = *(v0 + 912);
  v16 = *(v0 + 888);
  *(v0 + 592) = v12;
  OUTLINED_FUNCTION_55_1();
  sub_237EF8E80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v18 = *(v0 + 912);
  if (EnumTagSinglePayload == 1)
  {

    v19 = OUTLINED_FUNCTION_31_0();
    v20(v19);
    goto LABEL_5;
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 856);
  v120 = *(v0 + 840);
  v125 = *(v0 + 848);
  v26 = *(v0 + 672);
  v27 = sub_237EF7E20();
  OUTLINED_FUNCTION_22_3();
  (*(v28 + 8))(v18, v24);
  v29 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v29;
  v30 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v30;
  *(v0 + 600) = v12;
  v31 = swift_getWitnessTable();
  sub_237D13CC4(v0 + 600, v27, v26, v13, v120, v31, WitnessTable, v125, v25);
  v126 = v27;

  if ((sub_237EF8DD0() & 1) == 0)
  {
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    v114 = *(v0 + 888);
    v111 = *(v0 + 696);
    v112 = *(v0 + 704);
    v34 = *(v0 + 688);
    v35 = *(v0 + 680);
    v110 = v34;
    v117 = *(v0 + 672);
    v121 = *(v0 + 856);
    v36 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v36;
    v37 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v37;
    v38 = swift_task_alloc();
    *v38 = v33;
    v38[1] = v35;
    v38[2] = v34;
    v38[3] = v32;
    v38[4] = v121;
    v38[5] = v111;
    v38[6] = v112;
    v39 = swift_getKeyPath();

    v40 = swift_task_alloc();
    v40[2] = v35;
    v40[3] = v110;
    v40[4] = v121;
    v40[5] = v111;
    v40[6] = v112;
    v40[7] = v39;
    sub_237C9339C(sub_237D9C1CC, v40, v110, v114, MEMORY[0x277D84A98], v112);
    v42 = v41;

    *(v0 + 608) = v42;
    sub_237D13CC4(v0 + 608, v126, v117, v13, v33, v31, WitnessTable, v32, v121);
  }

  v43 = *(v0 + 880);
  v44 = *(v0 + 856);
  v45 = *(v0 + 848);
  v46 = *(v0 + 840);
  v47 = *(v0 + 832);
  v48 = *(v0 + 824);
  v49 = *(v0 + 816);
  v122 = *(v0 + 696);
  v118 = *(v0 + 680);
  v50 = *(v0 + 672);
  v51 = *(v0 + 640);
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_22_3();
  (*(v52 + 16))(v0 + 208, v0 + 16, v50);
  sub_237E43D20(v128, v126, 0, v46, v45, v44, v43);
  v53 = *(v0 + 56);
  sub_237CDC02C(*(v0 + 64), 0.0);
  *(v0 + 568) = v53;
  *(v0 + 576) = v54;
  (*(v48 + 104))(v47, *MEMORY[0x277D2CD40], v49);
  type metadata accessor for FullyConnectedNetwork(0);
  sub_237C77B74();
  sub_237EF68C0();
  (*(v48 + 8))(v47, v49);
  OUTLINED_FUNCTION_55_10();
  sub_237E85000(v51, v50, v118, v122);
  v55 = *(v0 + 32);
  *(v0 + 920) = v55;
  if (v55 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v55)
    {
LABEL_25:

      if ((sub_237D0510C() & 1) == 0)
      {
        v87 = FullyConnectedNetworkRegressorModel.debugDescription.getter();
        sub_237D05198(v87, v88);
      }

      OUTLINED_FUNCTION_3_95();
      v89 = OUTLINED_FUNCTION_24_37();
      v90(v89);
      v91 = OUTLINED_FUNCTION_6_74();
      v92(v91);
      v93 = OUTLINED_FUNCTION_22_38();
      v94(v93);

      OUTLINED_FUNCTION_10_3();
LABEL_6:
      OUTLINED_FUNCTION_51_16();

      __asm { BRAA            X1, X16 }
    }

    v56 = 0;
    v57 = &qword_27DEB24B8;
    while (1)
    {
      *(v0 + 928) = v56;
      sub_237EF6A10();
      sub_237EF6B60();
      OUTLINED_FUNCTION_42_18();
      v113 = v58;
      OUTLINED_FUNCTION_6_38();
      sub_237C96710(&qword_27DEB24C0, v57, &qword_237F118C8, v59);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v57, &qword_237F118C8);
        sub_237EF91A0();
        v60 = *(v0 + 736);
        v61 = *(v0 + 712);
        if (*(v0 + 616))
        {
          v128[0] = *(v0 + 616);
          v113(v128);

          v62 = v60;
          v63 = 0;
        }

        else
        {
          v62 = OUTLINED_FUNCTION_38_7();
        }

        __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
        v64 = *(v0 + 736);
        v65 = *(v0 + 712);
        v66 = __swift_getEnumTagSinglePayload(v64, 1, v65);
        v67 = *(v0 + 880);
        if (v66 == 1)
        {
          break;
        }

        v68 = v57;
        v123 = *(v0 + 848);
        v127 = *(v0 + 856);
        v116 = *(v0 + 784);
        v119 = *(v0 + 840);
        v69 = *(v0 + 728);
        v70 = *(v0 + 704);
        v71 = *(v0 + 696);
        v115 = *(v0 + 688);
        v72 = *(v0 + 680);
        v73 = (*(*(v0 + 720) + 32))(v69, v64, v65);
        v74 = MEMORY[0x2383E24F0](v73);
        sub_237E85270(v116, v67, v69, v119, v72, v115, v123, v127, v71, v70, (v0 + 624));
        v75 = *(v0 + 728);
        v76 = *(v0 + 720);
        v77 = *(v0 + 712);
        objc_autoreleasePoolPop(v74);
        (*(v76 + 8))(v75, v77);
        v57 = v68;
      }

      v78 = *(v0 + 864);
      sub_237E868B4(*(v0 + 752));
      v79 = *(v67 + *(v78 + 52));
      *(v0 + 936) = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_44_19();
      *(v67 + v80) = v81;
      if ((sub_237EF8DD0() & 1) == 0)
      {
        OUTLINED_FUNCTION_25_36();
        v95 = swift_task_alloc();
        v96 = OUTLINED_FUNCTION_43_20(v95);
        *v96 = v97;
        OUTLINED_FUNCTION_1_112(v96);
        OUTLINED_FUNCTION_12_56();
        OUTLINED_FUNCTION_51_16();

        sub_237E853B0();
        return;
      }

      *(v0 + 960) = 0;
      *(v0 + 1056) = 0;
      v82 = *(v0 + 656);
      if (v82)
      {
        v99 = *(v0 + 664);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
        sub_237C70604(v82, v99);
        sub_237EF6A90();
        OUTLINED_FUNCTION_54_10();
        v101 = sub_237EF8230();
        OUTLINED_FUNCTION_16_51(v101);
        v102 = swift_task_alloc();
        *(v0 + 976) = v102;
        *v102 = v0;
        OUTLINED_FUNCTION_0_92(v102);
        OUTLINED_FUNCTION_15_46();
        OUTLINED_FUNCTION_59_10(v103);
        OUTLINED_FUNCTION_51_16();

        sub_237E859F8(v104, v105, v106, v107, v108);
        return;
      }

      v83 = OUTLINED_FUNCTION_14_63();
      v85 = v84 + 1;
      (*(v86 + 8))(v83);
      if (v85 == v78)
      {
        goto LABEL_25;
      }

      v56 = *(v0 + 928) + 1;
    }
  }

  __break(1u);
}