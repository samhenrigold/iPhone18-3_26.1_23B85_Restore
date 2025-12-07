unint64_t *sub_1C8D6D410(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a2;
  v68 = *MEMORY[0x1E69E9840];
  v60 = sub_1C906204C();
  v7 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1C906359C();
  v9 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v48 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = (8 * v18);
  v66 = a3;

  if (v17 > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v50 = v4;
    v48 = &v48;
    MEMORY[0x1EEE9AC00](v20);
    v49 = v18;
    v51 = (&v48 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1C8D8D3E0(0, v18, v51);
    v18 = 0;
    v65 = a1;
    v4 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    a1 = (v21 + 63) >> 6;
    v54 = (v7 + 8);
    v55 = (v9 + 4);
    v52 = 0;
    v53 = (v9 + 1);
    v9 = &qword_1EC312DD0;
    v7 = v61;
    v19 = v62;
    v56 = v11;
    while (v23)
    {
      v24 = __clz(__rbit64(v23));
      v67 = (v23 - 1) & v23;
LABEL_12:
      v27 = v24 | (v18 << 6);
      v28 = *(v65 + 48);
      v29 = *(v12 + 72);
      v63 = v27;
      sub_1C8D52860(v28 + v29 * v27, v7, &qword_1EC312DD0, &qword_1C9072940);
      sub_1C8D52860(v7, v19, &qword_1EC312DD0, &qword_1C9072940);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *v19;
        v30 = v19[1];
      }

      else
      {
        v32 = v57;
        v33 = v58;
        (*v55)(v57, v19, v58);
        v34 = v12;
        v35 = v59;
        sub_1C906352C();
        v31 = sub_1C906200C();
        v30 = v36;
        v37 = v35;
        v12 = v34;
        v19 = v62;
        (*v54)(v37, v60);
        v38 = v32;
        v7 = v61;
        v39 = v33;
        v11 = v56;
        (*v53)(v38, v39);
      }

      if (v31 == v64 && v30 == v66)
      {

        v9 = &qword_1EC312DD0;
        sub_1C8D16D78(v7, &qword_1EC312DD0, &qword_1C9072940);
        v23 = v67;
      }

      else
      {
        v41 = sub_1C9064C2C();

        v9 = &qword_1EC312DD0;
        sub_1C8D16D78(v7, &qword_1EC312DD0, &qword_1C9072940);
        v23 = v67;
        if ((v41 & 1) == 0)
        {
          *(v51 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
          if (__OFADD__(v52++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= a1)
      {
        sub_1C9044480(v51, v49, v52, v65);
        v44 = v43;
        swift_bridgeObjectRelease_n();
        return v44;
      }

      v26 = *(v4 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v67 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v46 = swift_slowAlloc();
  v47 = v66;

  v44 = sub_1C8D6DE38(v46, v18, a1, v64, v47);

  MEMORY[0x1CCA833A0](v46, -1, -1);
  swift_bridgeObjectRelease_n();
  return v44;
}

void sub_1C8D6D9CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a2;
  v60 = a4;
  v61 = a5;
  v47 = a1;
  v57 = sub_1C906204C();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C906359C();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &qword_1EC312DD0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v45 - v16;
  v17 = 0;
  v62 = a3;
  v20 = *(a3 + 56);
  v19 = a3 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v50 = (v6 + 8);
  v51 = (v8 + 32);
  v48 = 0;
  v49 = (v8 + 8);
  v25 = v15;
  v59 = v15;
  v52 = v12;
  v53 = v14;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v63 = (v23 - 1) & v23;
LABEL_11:
    v29 = v26 | (v17 << 6);
    v30 = *(v62 + 48);
    v31 = *(v12 + 72);
    v58 = v29;
    v32 = v64;
    sub_1C8D52860(v30 + v31 * v29, v64, v10, &qword_1C9072940);
    sub_1C8D52860(v32, v25, v10, &qword_1C9072940);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v25;
      v33 = v25[1];
    }

    else
    {
      v36 = v54;
      v35 = v55;
      (*v51)(v54, v25, v55);
      v37 = v10;
      v38 = v56;
      sub_1C906352C();
      v34 = sub_1C906200C();
      v33 = v39;
      v40 = v38;
      v10 = v37;
      v12 = v52;
      (*v50)(v40, v57);
      (*v49)(v36, v35);
    }

    if (v34 == v60 && v33 == v61)
    {

      sub_1C8D16D78(v64, v10, &qword_1C9072940);
      v25 = v59;
      v23 = v63;
    }

    else
    {
      v42 = sub_1C9064C2C();

      sub_1C8D16D78(v64, v10, &qword_1C9072940);
      v25 = v59;
      v23 = v63;
      if ((v42 & 1) == 0)
      {
        *(v47 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        if (__OFADD__(v48++, 1))
        {
          goto LABEL_25;
        }
      }
    }
  }

  v27 = v17;
  while (1)
  {
    v17 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      v44 = v62;

      sub_1C9044480(v47, v46, v48, v44);

      return;
    }

    v28 = *(v19 + 8 * v17);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v63 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t *sub_1C8D6DE38(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1C8D6D9CC(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1C8D6DEE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t sub_1C8D6DF3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8D6DF94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t sub_1C8D6DFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D6E060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D6E0D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8D6E118(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != -1)
  {
    return OUTLINED_FUNCTION_264(result, a2, a3 & 1, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1C8D6E130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexingLog.IndexingEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D6E194(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1C8D52860(v4 + a3, v3, a1, a2);
}

void EnumerationCaseDefinition.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_116_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v24);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v26);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_73();
  v28 = v21[1];
  *v20 = *v21;
  v20[1] = v28;
  type metadata accessor for DisplayRepresentation(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  sub_1C8D63FCC();
  sub_1C8CD0B70(&qword_1EDA60930, type metadata accessor for DisplayRepresentation, &protocol conformance descriptor for DisplayRepresentation);

  sub_1C906350C();
  sub_1C8D73304(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
  if (v22)
  {
  }

  else
  {
    v29 = type metadata accessor for EnumerationCaseDefinition(0);
    sub_1C8D60F48(v23, v20 + *(v29 + 20));
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void EnumerationCaseDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v11 = v0[1];
  v20 = *v0;
  type metadata accessor for EnumerationCaseDefinition(0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for DisplayRepresentation(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v3, &qword_1EC312788, &unk_1C906A3A0);
    v14 = 1;
LABEL_6:
    v15 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
    v16 = OUTLINED_FUNCTION_123_1(v2, v14, 1, v15);
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(v16);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v6 = v20;
    v6[1] = v11;
    sub_1C8D7300C();
    goto LABEL_7;
  }

  DisplayRepresentation.protobuf(useCase:)();
  if (!v4)
  {
    OUTLINED_FUNCTION_27_7();
    v14 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_27_7();
LABEL_7:
  OUTLINED_FUNCTION_198();
}

uint64_t TypeDisplayRepresentation.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_47_4();

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v4;
  v0[1] = v2;
  v0[3] = v5;
  v0[4] = v3;
  v0[2] = v1;
  return result;
}

void TypeDefinition.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v22 = v21;
  v122 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v24);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_97();
  v119[8] = v26;
  v27 = OUTLINED_FUNCTION_111();
  v119[7] = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v27);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25();
  v120 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_147();
  v121 = v32;
  v33 = OUTLINED_FUNCTION_111();
  v34 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v33);
  v35 = OUTLINED_FUNCTION_9(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_147();
  v119[6] = v37;
  v38 = OUTLINED_FUNCTION_111();
  v39 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v38);
  v40 = OUTLINED_FUNCTION_9(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_147();
  v119[5] = v42;
  v43 = OUTLINED_FUNCTION_111();
  v44 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v43);
  v45 = OUTLINED_FUNCTION_9(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_147();
  v119[2] = v47;
  v48 = OUTLINED_FUNCTION_111();
  v49 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(v48);
  v50 = OUTLINED_FUNCTION_9(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25();
  v53 = (v51 - v52);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_147();
  v119[0] = v55;
  v56 = OUTLINED_FUNCTION_49();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
  OUTLINED_FUNCTION_9(v58);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v119 - v60;
  v62 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v64);
  v66 = v119 - v65;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
    sub_1C8D16D78(v61, &qword_1EC312910, &qword_1C9074DC0);
    v67 = OUTLINED_FUNCTION_94();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
    v70 = sub_1C8D4F674(&qword_1EC3141F8, &qword_1EC3141F0, &unk_1C9072A30);
    OUTLINED_FUNCTION_6_3(v69, v70);
    *v71 = v62;
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E08B0], v69);
    swift_willThrow();
    OUTLINED_FUNCTION_0_26();
    v73 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    sub_1C8D72D8C();
    sub_1C8D72DE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_51_4();
        OUTLINED_FUNCTION_159();
        sub_1C8D72DE4();
        v93 = OUTLINED_FUNCTION_39_7();
        EntityDefinition.init(protobuf:)(v93, v94, v95, v96, v97, v98, v99, v100, v119[0], v119[1]);
        OUTLINED_FUNCTION_0_26();
        sub_1C8D73304(v22, v101);
        OUTLINED_FUNCTION_1_22();
        sub_1C8D73304(v61, v102);
        OUTLINED_FUNCTION_2_18();
        sub_1C8D73304(v66, v103);
        if (!v20)
        {
          v79 = OUTLINED_FUNCTION_17_8();
          v130 = v127;
          v81 = v62 & 0xFFFFFFFFFFFFFF00;
          v80 = 1;
          v128 = v104;
          v129 = v126;
          goto LABEL_20;
        }

        goto LABEL_21;
      case 2u:
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_51_4();
        OUTLINED_FUNCTION_159();
        sub_1C8D72DE4();
        OUTLINED_FUNCTION_39_7();
        EnumerationDefinition.init(protobuf:)();
        if (v20)
        {
          OUTLINED_FUNCTION_0_26();
          sub_1C8D73304(v22, v90);
          v91 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_0_26();
        sub_1C8D73304(v22, v109);
        OUTLINED_FUNCTION_3_18();
        sub_1C8D73304(v61, v110);
        OUTLINED_FUNCTION_2_18();
        sub_1C8D73304(v66, v111);
        v79 = OUTLINED_FUNCTION_17_8();
        v128 = v112;
        v129.n128_u64[0] = v126.n128_u64[0];
        v81 = v62 & 0xFFFFFFFFFFFFFF00;
        v80 = 2;
        goto LABEL_20;
      case 3u:
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_51_4();
        OUTLINED_FUNCTION_159();
        sub_1C8D72DE4();
        OUTLINED_FUNCTION_39_7();
        QueryDefinition.init(protobuf:)();
        if (!v20)
        {
          OUTLINED_FUNCTION_0_26();
          sub_1C8D73304(v22, v113);
          OUTLINED_FUNCTION_6_12();
          sub_1C8D73304(v61, v114);
          OUTLINED_FUNCTION_2_18();
          sub_1C8D73304(v66, v115);
          v79 = OUTLINED_FUNCTION_17_8();
          v128 = v116;
          v81 = v62 & 0xFFFFFFFFFFFFFF00;
          v80 = 3;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_0_26();
        sub_1C8D73304(v22, v92);
        v91 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
LABEL_12:
        v89 = v91;
        v88 = v61;
        goto LABEL_13;
      case 4u:
        OUTLINED_FUNCTION_113();
        v82 = v121;
        sub_1C8D72D8C();
        v83 = v120;
        sub_1C8D72DE4();
        v62 = *v83;
        v61 = v83[1];
        v84 = sub_1C8D63FCC();
        sub_1C8D60FB8(v84, v85, v86);

        sub_1C906351C();
        if (!v20)
        {
          OUTLINED_FUNCTION_0_26();
          sub_1C8D73304(v22, v105);
          sub_1C8D73304(v83, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable);
          v106 = OUTLINED_FUNCTION_49();
          sub_1C8D73304(v106, v107);
          OUTLINED_FUNCTION_2_18();
          sub_1C8D73304(v66, v108);
          v76 = v123[0];
          v77 = v123[1];
          v79 = v124;
          v81 = v62 & 0xFFFFFFFFFFFFFF00;
          v80 = 4;
          v78 = v125;
LABEL_20:
          v117 = v122;
          v122[2] = v79;
          v118 = v129;
          *(v117 + 56) = v128;
          v117->n128_u64[0] = v81 | v62;
          v117->n128_u64[1] = v61;
          v117[1].n128_u64[0] = v76;
          v117[1].n128_u64[1] = v77;
          v117[3].n128_u64[0] = v78;
          *(v117 + 72) = v118;
          v117[5].n128_u64[1] = v130;
          v117[6].n128_u8[0] = v80;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_0_26();
        sub_1C8D73304(v22, v87);
        sub_1C8D73304(v83, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable);
        v88 = v82;
        v89 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable;
LABEL_13:
        sub_1C8D73304(v88, v89);
        OUTLINED_FUNCTION_2_18();
        v73 = v66;
        break;
      default:
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_51_4();
        OUTLINED_FUNCTION_159();
        sub_1C8D72DE4();
        TypeIdentifier.PrimitiveTypeIdentifier.init(protobuf:)(v53, v123);
        OUTLINED_FUNCTION_0_26();
        sub_1C8D73304(v22, v74);
        sub_1C8D73304(v61, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
        OUTLINED_FUNCTION_2_18();
        sub_1C8D73304(v66, v75);
        if (v20)
        {
          goto LABEL_21;
        }

        v80 = 0;
        v81 = 0;
        LOBYTE(v62) = v123[0];
        goto LABEL_20;
    }
  }

  sub_1C8D73304(v73, v72);
LABEL_21:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void EntityDefinition.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v131 = v10;
  v13 = v12;
  v123 = v14;
  v129 = type metadata accessor for ToolKitProtoTypeInstance(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v125 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v126 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v128 = v22;
  v23 = OUTLINED_FUNCTION_111();
  v127 = type metadata accessor for ToolKitProtoCoercionDefinition(v23);
  OUTLINED_FUNCTION_11();
  v130 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v115 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v29);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v115 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v33);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_86();
  v35 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v36 = sub_1C8D63FCC();
  sub_1C8D4F014(v36, v37, v38);
  v39 = v131;
  v40 = sub_1C906351C();
  v43 = v39;
  if (v39)
  {
    OUTLINED_FUNCTION_1_22();
    sub_1C8D73304(v13, v44);
LABEL_5:
    OUTLINED_FUNCTION_198();
    return;
  }

  v118 = v35;
  v119 = v32;
  v120 = v11;
  v124 = v28;
  v45 = a10;
  v46 = sub_1C8D719E0(v40, v41, v42);
  OUTLINED_FUNCTION_53_1(v46, v47, v48, v49, v50, v51);
  v52 = sub_1C90641EC();
  v53 = v13;
  v54 = v52;
  v55 = *(v13 + 40);
  v56 = *(v55 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (!v56)
  {
LABEL_19:
    v89 = sub_1C8D63FCC();
    sub_1C8D60FB8(v89, v90, v91);
    sub_1C906351C();
    if (v43)
    {
      OUTLINED_FUNCTION_1_22();
      sub_1C8D73304(v53, v92);

LABEL_4:
    }

    else
    {
      v93 = v132;
      v131 = v133;
      v95 = v134;
      v94 = v135;
      v96 = v136;

      v98.rawValue = EntityDefinition.RuntimeFlags.init(protobuf:)(v97).rawValue;
      if (v101)
      {
        OUTLINED_FUNCTION_1_22();
        sub_1C8D73304(v53, v102);
      }

      else
      {
        v129 = v95;
        v130 = v94;
        v128 = v93;
        v117 = v45;
        v103 = v137;
        sub_1C8D1FC54(v98.rawValue, v99.rawValue, v100.rawValue);

        v104 = sub_1C90641EC();
        v105 = v53;
        sub_1C8D72D38(v104, v106, v107);

        v108 = sub_1C90641EC();
        v109 = v130;
        v110 = v108;
        OUTLINED_FUNCTION_1_22();
        sub_1C8D73304(v105, v111);
        v112 = v123;
        *v123 = v117;
        v112[1] = v54;
        v113 = v128;
        v112[2] = v104;
        v112[3] = v113;
        v114 = v129;
        v112[4] = v131;
        v112[5] = v114;
        v112[6] = v109;
        v112[7] = v96;
        v112[8] = v110;
        v112[9] = v57;
        v112[10] = 0;
        v112[11] = v103;
      }
    }

    goto LABEL_5;
  }

  v131 = 0;
  v132 = MEMORY[0x1E69E7CC0];
  v116 = v52;
  v117 = a10;
  v121 = v56;
  sub_1C8D09834(0, v56, 0);
  v58 = 0;
  v57 = v132;
  v122 = v55 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
  v59 = v120;
  while (v58 < *(v55 + 16))
  {
    v60 = v124;
    sub_1C8D72DE4();
    sub_1C8D72DE4();
    v61 = v128;
    sub_1C8D63FCC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v129);
    if (EnumTagSinglePayload == 1)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_26_4();
    v65 = v126;
    sub_1C8D72D8C();
    OUTLINED_FUNCTION_25_8();
    v66 = v125;
    sub_1C8D72DE4();
    v67 = v131;
    TypeInstance.init(protobuf:)(v66, v68, v69, v70, v71, v72, v73, v74, v115, v116);
    v131 = v67;
    if (v67)
    {
      OUTLINED_FUNCTION_4_13();
      sub_1C8D73304(v59, v85);
      OUTLINED_FUNCTION_7_12();
      sub_1C8D73304(v65, v86);
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_48_3();

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_7_12();
    EnumTagSinglePayload = sub_1C8D73304(v65, v75);
    v76 = v137;
    if ((~v137 & 0xF000000000000007) == 0)
    {
LABEL_16:
      v83 = sub_1C8D72CE4(EnumTagSinglePayload, v63, v64);
      OUTLINED_FUNCTION_6_3(&type metadata for CoercionDefinitionProtobufConversionError, v83);
      swift_willThrow();
      OUTLINED_FUNCTION_4_13();
      sub_1C8D73304(v59, v84);
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_48_3();

LABEL_18:
      OUTLINED_FUNCTION_4_13();
      sub_1C8D73304(v60, v87);
      OUTLINED_FUNCTION_1_22();
      sub_1C8D73304(v53, v88);
      goto LABEL_4;
    }

    v77 = v53;
    v78 = *v59;
    sub_1C8D73304(v59, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_1C8D73304(v60, type metadata accessor for ToolKitProtoCoercionDefinition);
    v132 = v57;
    v80 = *(v57 + 16);
    v79 = *(v57 + 24);
    v81 = v57;
    if (v80 >= v79 >> 1)
    {
      sub_1C8D09834((v79 > 1), v80 + 1, 1);
      v81 = v132;
    }

    ++v58;
    *(v81 + 16) = v80 + 1;
    v82 = v81 + 16 * v80;
    *(v82 + 32) = v76;
    *(v82 + 40) = v78;
    v53 = v77;
    v57 = v81;
    if (v121 == v58)
    {
      v45 = v117;
      v54 = v116;
      v43 = v131;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void EnumerationDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_86();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v9 = sub_1C8D63FCC();
  sub_1C8D4F014(v9, v10, v11);
  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_3_18();
    sub_1C8D73304(v2, v12);
  }

  else
  {
    type metadata accessor for EnumerationCaseDefinition(0);
    OUTLINED_FUNCTION_22_11();
    v15 = sub_1C8CD0B70(v13, v14, &protocol conformance descriptor for EnumerationCaseDefinition);
    OUTLINED_FUNCTION_53_1(v15, v16, v17, v18, v19, v20);
    v21 = sub_1C90641EC();
    v22 = *(v2 + 16);
    sub_1C8D1FC54(v21, v23, v24);

    v45 = sub_1C90641EC();
    v25 = sub_1C8D63FCC();
    sub_1C8D60FB8(v25, v26, v27);
    v28 = sub_1C906351C();
    v31 = sub_1C8D72D38(v28, v29, v30);
    OUTLINED_FUNCTION_53_1(v31, v32, v33, v34, v35, v36);
    sub_1C90641EC();
    OUTLINED_FUNCTION_3_18();
    v38 = v37;
    sub_1C8D73304(v2, v39);
    *v4 = v40;
    *(v4 + 8) = v21;
    *(v4 + 16) = 0x2010003u >> (8 * v22);
    *(v4 + 24) = v38;
    *(v4 + 32) = v45;
    *(v4 + 40) = v40;
    *(v4 + 48) = v41;
    *(v4 + 56) = v42;
    *(v4 + 64) = v43;
    *(v4 + 72) = v44;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_116_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_73();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_233();
  v7 = sub_1C8D63FCC();
  sub_1C8D4F014(v7, v8, v9);
  sub_1C906351C();
  if (v2)
  {
    OUTLINED_FUNCTION_6_12();
    return sub_1C8D73304(v1, v10);
  }

  else
  {
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
    v12 = sub_1C8D63FCC();
    sub_1C8D72E3C(v12, v13, v14);
    sub_1C906351C();
    OUTLINED_FUNCTION_6_12();
    result = sub_1C8D73304(v1, v15);
    *v0 = v17;
    *(v0 + 8) = v17;
    *(v0 + 24) = v18;
    *(v0 + 40) = v19;
    v16 = MEMORY[0x1E69E7CC0];
    *(v0 + 56) = v20;
    *(v0 + 64) = v16;
  }

  return result;
}

__n128 CodableDefinition.init(protobuf:)@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_233();
  v7 = *a1;
  v6 = a1[1];
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(0);
  v8 = sub_1C8D63FCC();
  v11 = sub_1C8D60FB8(v8, v9, v10);

  OUTLINED_FUNCTION_30_8();
  sub_1C906351C();
  sub_1C8D73304(a1, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable);
  if (v11)
  {
  }

  else
  {
    result = v15;
    a2->n128_u64[0] = v7;
    a2->n128_u64[1] = v6;
    a2[1].n128_u64[0] = v13;
    a2[1].n128_u64[1] = v14;
    a2[2] = v15;
    a2[3].n128_u64[0] = v16;
  }

  return result;
}

void TypeDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v33 = v4;
  v34 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_233();
  v31 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40_0();
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v32 = v11;
  v12 = *v0;
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  switch(*(v0 + 96))
  {
    case 1:
      OUTLINED_FUNCTION_13_11(v12);
      v36 = *(v0 + 72);
      v37 = *(v0 + 88);
      EntityDefinition.protobuf(useCase:)();
      if (v1)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_13_11(v12);
      *&v36 = *(v0 + 72);
      EnumerationDefinition.protobuf(useCase:)();
      if (!v1)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    case 3:
      OUTLINED_FUNCTION_13_11(v12);
      QueryDefinition.protobuf(useCase:)(v34);
      if (v1)
      {
        goto LABEL_12;
      }

LABEL_10:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_16();
      v17 = v32;
      sub_1C8D72D8C();
      break;
    case 4:
      v18 = *(v0 + 8);
      v19 = *v0;
      v20 = *(v0 + 32);
      v21 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v2 = v14;
      v2[1] = v13;
      v2[3] = v20;
      v2[4] = v15;
      v2[2] = v16;
      OUTLINED_FUNCTION_150();
      v25 = OUTLINED_FUNCTION_123_1(v22, v23, v24, v21);
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v25);
      v17 = v32;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v32 = v19;
      *(v17 + 8) = v18;
      sub_1C8D7300C();
      goto LABEL_4;
    case 5:
      __break(1u);
      return;
    default:
      v35 = *v0;
      v17 = v32;
      TypeIdentifier.PrimitiveTypeIdentifier.protobuf(useCase:)();
LABEL_4:
      swift_storeEnumTagMultiPayload();
      break;
  }

  v29 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  MEMORY[0x1EEE9AC00](v29);
  *(&v31 - 2) = v17;
  sub_1C8CD0B70(qword_1EDA61900, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
  sub_1C9063ACC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8D73304(v17, v30);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

void EntityDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v97 = v1;
  v5 = v4;
  v86 = v6;
  sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v94 = v8;
  v95 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_72();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86();
  v16 = *v0;
  v17 = v0[3];
  v96 = v0[2];
  v18 = v0[5];
  v90 = v0[4];
  v91 = v17;
  v19 = v0[6];
  v92 = v0[7];
  v93 = v18;
  v20 = v0[9];
  v88 = v0[8];
  v89 = v19;
  v87 = v20;
  v21 = v0[11];

  TypeIdentifier.protobuf(useCase:)(v5);
  OUTLINED_FUNCTION_157();
  v22 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  OUTLINED_FUNCTION_150();
  v26 = __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  sub_1C8D72EAC(v26, v27, v28);
  v29 = sub_1C90641FC();
  if (v1)
  {
    sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
  }

  else
  {
    v82 = v16 & 0x1FFFFFFFFFFFFFFFLL;
    v83 = v16;
    v84 = v21;
    v85 = v29;
    v81 = v22;
    v97 = v3;
    sub_1C8D531CC(v29, v30, v31);
    v80 = sub_1C90641FC();
    v32 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
    v33 = *(v32 + 28);
    v34 = v89;

    v35 = v92;

    v36 = v90;

    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v2 = v91;
    v2[1] = v36;
    v2[3] = v93;
    v2[4] = v34;
    v2[2] = v35;
    v37 = OUTLINED_FUNCTION_16_10();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v32);
    (*(v94 + 104))(v11, *MEMORY[0x1E69E0750], v95);
    v96 = v5;
    LOBYTE(v35) = sub_1C906347C();
    v40 = (*(v94 + 8))(v11, v95);
    if (v35)
    {
      v44 = v84;
      v43 = v85;
      v45 = MEMORY[0x1E69E7CC0];
      v46 = v96;
    }

    else
    {
      v95 = v32;
      if (v83 >> 61 == 2)
      {
        v47 = *(v82 + 40);
        v48 = objc_opt_self();
        OUTLINED_FUNCTION_53_1(v48, v49, v50, v51, v52, v53);

        v54 = [v33 sharedProvider];
        v55 = sub_1C9063EBC();

        v56 = [v54 examplePhrasesForBundleIdentifier:v55 useCache:1];

        sub_1C8D72FC8();
        sub_1C906419C();

        v57 = OUTLINED_FUNCTION_49();
        static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v57, v58, v47, 0, 0);
      }

      v46 = v96;
      sub_1C8D72F00(v40, v41, v42);
      v44 = v84;
      v45 = sub_1C90641FC();
      v43 = v85;

      v32 = v95;
    }

    sub_1C8D72F54(v40, v41, v42);
    v59 = sub_1C90641FC();
    v94 = v59;
    v95 = v32;
    if (v44)
    {
      sub_1C8D01350(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v60 = v59;
      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1C8D01350(v61 > 1, v62 + 1, 1, v59);
        v60 = v59;
      }

      *(v60 + 16) = v62 + 1;
      *(v60 + v62 + 32) = 1;
      v46 = v96;
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v59);
    *(&v80 - 2) = v46;
    sub_1C8D3FA0C(sub_1C8D72FA8, (&v80 - 4), v63, v64, v65, v66, v67, v68, v80, v81);
    v96 = v69;
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
    v70 = v86;
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v81);
    v93 = v2;
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v95);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D7300C();
    v77 = v80;
    *v70 = v43;
    v70[1] = v77;
    sub_1C8D7300C();
    v78 = v94;
    v70[2] = v45;
    v70[3] = v78;
    v79 = v96;
    v70[4] = v60;
    v70[5] = v79;
  }

  OUTLINED_FUNCTION_198();
}

void EnumerationDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v42 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v41 = *(v0 + 16);
  v43 = *(v0 + 40);
  v11 = *(v0 + 56);
  v44 = *(v0 + 48);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);

  TypeIdentifier.protobuf(useCase:)(v5);
  OUTLINED_FUNCTION_157();
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  OUTLINED_FUNCTION_150();
  v18 = OUTLINED_FUNCTION_123_1(v15, v16, v17, v14);
  type metadata accessor for EnumerationCaseDefinition(v18);
  OUTLINED_FUNCTION_22_11();
  sub_1C8CD0B70(v19, v20, &protocol conformance descriptor for EnumerationCaseDefinition);
  v21 = sub_1C90641FC();
  if (v1)
  {
    sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
  }

  else
  {
    v46 = v21;
    v39 = v14;
    v40 = v11;
    v24 = v3;
    sub_1C8D531CC(v21, v22, v23);
    v45 = sub_1C90641FC();
    v25 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);

    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v24 = v43;
    v24[1] = v44;
    v24[3] = v40;
    v24[4] = v13;
    v24[2] = v12;
    v26 = OUTLINED_FUNCTION_16_10();
    v29 = __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    sub_1C8D72F54(v29, v30, v31);
    v32 = sub_1C90641FC();
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v39);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v25);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D7300C();
    *v42 = v46;
    *(v42 + 8) = v45;
    sub_1C8D7300C();
    *(v42 + 16) = 0x30201u >> (8 * v41);
    *(v42 + 24) = v32;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.protobuf(useCase:)(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = *(v2 + 24);
  v29 = *(v2 + 8);
  v30 = v10;
  v31 = *(v2 + 40);
  v32 = *(v2 + 56);

  sub_1C8D3A7FC(&v29, v27);
  TypeIdentifier.protobuf(useCase:)(a1);
  OUTLINED_FUNCTION_48_3();

  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v27[0] = v29;
  v27[1] = v30;
  v27[2] = v31;
  v28 = v32;
  QueryDefinition.PredicateTemplates.protobuf(useCase:)();
  OUTLINED_FUNCTION_37_8();
  if (v3)
  {
    return sub_1C8D16D78(v4, &qword_1EC3139D8, &qword_1C9072A40);
  }

  v16 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v17 = OUTLINED_FUNCTION_16_10();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_115();
  v23 = OUTLINED_FUNCTION_123_1(v20, v21, v22, v11);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(v23);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v16);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  sub_1C8D7300C();
  return sub_1C8D7300C();
}

void CodableDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  v6 = v0[1];
  v20 = *v0;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[6];
  v12 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v7;
  v1[1] = v8;
  v1[3] = v9;
  v1[4] = v10;
  v1[2] = v11;
  OUTLINED_FUNCTION_150();
  v16 = OUTLINED_FUNCTION_123_1(v13, v14, v15, v12);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(v16);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v20;
  v3[1] = v6;
  sub_1C8D7300C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D70C8C(uint64_t a1, uint64_t a2)
{
  sub_1C8D16D78(a1, &qword_1EC312910, &qword_1C9074DC0);
  sub_1C8D72DE4();
  v3 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t TypeDefinition.protobuf.getter()
{
  v1 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  memcpy(__dst, v0, sizeof(__dst));
  (*(v3 + 104))(v7, *MEMORY[0x1E69E0760], v1);
  TypeDefinition.protobuf(useCase:)();
  return (*(v3 + 8))(v7, v1);
}

uint64_t TypeDisplayRepresentation.init(protobuf:)@<X0>(void *a1@<X0>, void *a6@<X8>)
{
  v8 = a1[1];
  *a6 = *a1;
  a6[1] = v8;
  v9 = a1[4];
  v10 = a1[2];
  a6[2] = a1[3];
  a6[3] = v9;

  result = sub_1C8D73304(a1, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  a6[4] = v10;
  return result;
}

uint64_t TypeDisplayRepresentation.protobuf.getter()
{
  OUTLINED_FUNCTION_47_4();

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v4;
  v0[1] = v2;
  v0[3] = v5;
  v0[4] = v3;
  v0[2] = v1;
  return result;
}

ToolKit::EntityDefinition::RuntimeFlags __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityDefinition.RuntimeFlags.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C8D09804(0, v5, 0);
    v7 = 0;
    v8 = v19;
    while (v7 < *(v2 + 16))
    {
      if ((*(v2 + v7 + 32) & 1) == 0)
      {

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314210, &qword_1C9072A50);
        v12 = sub_1C8D4F674(&qword_1EC314218, &qword_1EC314210, &qword_1C9072A50);
        OUTLINED_FUNCTION_6_3(v11, v12);
        *v13 = &type metadata for EntityDefinition.RuntimeFlags;
        (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E08A8], v11);
        swift_willThrow();

        goto LABEL_19;
      }

      v10 = *(v19 + 16);
      v9 = *(v19 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C8D09804(v9 > 1, v10 + 1, 1);
      }

      ++v7;
      *(v19 + 16) = v10 + 1;
      *(v19 + 8 * v10 + 32) = 1;
      if (v5 == v7)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v14 = *(v8 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = (v8 + 32);
      do
      {
        v18 = *v16++;
        v17 = v18;
        if ((v18 & ~v15) == 0)
        {
          v17 = 0;
        }

        v15 |= v17;
        --v14;
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    *v4 = v15;
LABEL_19:
    OUTLINED_FUNCTION_198();
  }

  return result;
}

uint64_t EntityDefinition.RuntimeFlags.protobuf(useCase:)()
{
  if ((*v0 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C8D01350(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v1 = v2;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v4 >= v3 >> 1)
  {
    sub_1C8D01350(v3 > 1, v4 + 1, 1, v2);
    v1 = v6;
  }

  *(v1 + 16) = v4 + 1;
  *(v1 + v4 + 32) = 1;
  return v1;
}

uint64_t sub_1C8D713A8@<X0>(void *a3@<X2>, _BYTE *x8_0@<X8>)
{
  result = CoercionDefinition.protobuf(useCase:)(x8_0);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t CoercionDefinition.protobuf(useCase:)@<X0>(_BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = *(v2 + 8);

  TypeInstance.protobuf(useCase:)();

  if (!v3)
  {
    v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
    v10 = OUTLINED_FUNCTION_16_10();
    v13 = OUTLINED_FUNCTION_123_1(v10, v11, v12, v9);
    type metadata accessor for ToolKitProtoCoercionDefinition(v13);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a2 = v7;
    return sub_1C8D7300C();
  }

  return result;
}

uint64_t sub_1C8D71638@<X0>(uint64_t *a1@<X8>)
{
  result = EntityDefinition.RuntimeFlags.protobuf(useCase:)();
  *a1 = result;
  return result;
}

void EntityPropertyDefinition.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_116_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_86();
  v15 = v11[1];
  v21 = *v11;
  v17 = v11[2];
  v16 = v11[3];
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v18 = sub_1C8D63FCC();
  sub_1C8D1FD40(v18, v19, v20);

  sub_1C906351C();
  sub_1C8D73304(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  if (v12)
  {
  }

  else
  {
    *v10 = v21;
    v10[1] = v15;
    v10[2] = v17;
    v10[3] = v16;
    v10[4] = a10;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void EntityPropertyDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72();
  v7 = *v0;
  v6 = v0[1];
  v9 = v0[2];
  v8 = v0[3];

  TypeInstance.protobuf(useCase:)();
  if (v1)
  {
  }

  else
  {

    v10 = type metadata accessor for ToolKitProtoTypeInstance(0);
    v11 = OUTLINED_FUNCTION_16_10();
    v14 = OUTLINED_FUNCTION_123_1(v11, v12, v13, v10);
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(v14);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v9;
    v3[3] = v8;
    sub_1C8D7300C();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8D719E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA607E8;
  if (!qword_1EDA607E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607E8);
  }

  return result;
}

void QueryDefinition.PredicateTemplates.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v169 = v1;
  v4 = v3;
  v151 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v156 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v154 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v165 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v164 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
  OUTLINED_FUNCTION_9(v18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v167 = v20;
  OUTLINED_FUNCTION_111();
  sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v162 = v22;
  v163 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v161 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_97();
  v166 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
  OUTLINED_FUNCTION_9(v28);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v168 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
  OUTLINED_FUNCTION_9(v31);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_73();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
  OUTLINED_FUNCTION_9(v33);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v142 - v35;
  v37 = *(v0 + 8);
  LODWORD(v159) = *(v0 + 9);
  v38 = *(v0 + 10);
  LODWORD(v160) = *(v0 + 11);
  LODWORD(v35) = *(v0 + 12);
  v152 = v38;
  v153 = v35;
  v157 = *(v0 + 13);
  LODWORD(v158) = v37;
  v39 = *(v0 + 24);
  v155 = *(v0 + 16);
  v40 = *(v0 + 32);
  v41 = *(v0 + 40);
  v42 = *(v0 + 48);
  type metadata accessor for ComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_23_10();
  sub_1C8CD0B70(v43, v44, &protocol conformance descriptor for ComparisonPredicate.Template);
  v45 = v169;
  v46 = sub_1C90641FC();
  if (!v45)
  {
    v47 = v157;
    v143 = v42;
    v144 = v41;
    v145 = v40;
    v146 = v39;
    v147 = v46;
    v148 = v4;
    v149 = v2;
    v150 = v36;
    v169 = 0;
    if (v158)
    {
      v48 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
      v49 = 1;
      v51 = v166;
      v50 = v167;
      v53 = v149;
      v52 = v150;
    }

    else
    {
      v52 = v150;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v48 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
      v49 = 0;
      v51 = v166;
      v50 = v167;
      v53 = v149;
    }

    v54 = v47;
    v55 = v160;
    v56 = 1;
    __swift_storeEnumTagSinglePayload(v52, v49, 1, v48);
    v57 = v168;
    if ((v159 & 1) == 0)
    {
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v56 = 0;
    }

    v58 = 1;
    v160 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
    __swift_storeEnumTagSinglePayload(v53, v56, 1, v160);
    if ((v55 & 1) == 0)
    {
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v58 = 0;
    }

    v59 = 1;
    v159 = type metadata accessor for ToolKitProtoAllPredicate(0);
    __swift_storeEnumTagSinglePayload(v57, v58, 1, v159);
    if ((v54 & 1) == 0)
    {
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v59 = 0;
    }

    v60 = v51;
    v158 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
    __swift_storeEnumTagSinglePayload(v51, v59, 1, v158);
    v62 = v161;
    v61 = v162;
    v63 = v163;
    (*(v162 + 104))(v161, *MEMORY[0x1E69E0750], v163);
    v64 = sub_1C906347C();
    v65 = (*(v61 + 8))(v62, v63);
    if (v64)
    {
      v68 = MEMORY[0x1E69E7CC0];
      v69 = v152;
      v70 = v60;
    }

    else
    {
      v71 = v50;
      v72 = v146;
      if (v146)
      {
        v73 = [objc_opt_self() sharedProvider];
        v74 = sub_1C9063EBC();
        v75 = [v73 examplePhrasesForBundleIdentifier:v74 useCache:1];

        sub_1C8D72FC8();
        v76 = sub_1C906419C();

        static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v76, v155, v72, 0, 0);
      }

      v70 = v60;
      sub_1C8D72F00(v65, v66, v67);
      OUTLINED_FUNCTION_94();
      v77 = v169;
      v78 = sub_1C90641FC();
      if (v77)
      {
        OUTLINED_FUNCTION_54_3();

        sub_1C8D16D78(v60, &qword_1EC314240, &unk_1C9074D50);
        sub_1C8D16D78(v57, &qword_1EC314248, &unk_1C9072A80);
        sub_1C8D16D78(v149, &qword_1EC314250, &unk_1C9074D40);
        sub_1C8D16D78(v150, &qword_1EC314258, &qword_1C9072A90);
        goto LABEL_32;
      }

      v68 = v78;
      v50 = v71;
      v169 = 0;

      v53 = v149;
      v69 = v152;
    }

    v79 = v153;
    if (v69)
    {
      v80 = 1;
    }

    else
    {
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v80 = 0;
    }

    v163 = v68;
    v81 = 1;
    v82 = v50;
    v162 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
    __swift_storeEnumTagSinglePayload(v50, v80, 1, v162);
    v83 = v164;
    if ((v79 & 1) == 0)
    {
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v81 = 0;
    }

    valid = type metadata accessor for ToolKitProtoValidPredicate(0);
    __swift_storeEnumTagSinglePayload(v83, v81, 1, valid);
    v85 = v143;
    if ((~v143 & 0xF000000000000007) != 0)
    {
      v161 = valid;
      sub_1C8CD1784(v143);

      v90 = v169;
      TypeInstance.protobuf(useCase:)();
      v169 = v90;
      if (v90)
      {

        OUTLINED_FUNCTION_54_3();
        sub_1C8CD0FB0(v85);
        sub_1C8D16D78(v83, &qword_1EC314230, &unk_1C9074D60);
        sub_1C8D16D78(v82, &qword_1EC314238, &unk_1C9072A70);
        sub_1C8D16D78(v70, &qword_1EC314240, &unk_1C9074D50);
        sub_1C8D16D78(v168, &qword_1EC314248, &unk_1C9072A80);
        sub_1C8D16D78(v53, &qword_1EC314250, &unk_1C9074D40);
        sub_1C8D16D78(v150, &qword_1EC314258, &qword_1C9072A90);
        OUTLINED_FUNCTION_157();
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_157();
      v91 = type metadata accessor for ToolKitProtoTypeInstance(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
      OUTLINED_FUNCTION_115();
      v98 = OUTLINED_FUNCTION_123_1(v95, v96, v97, v91);
      v99 = type metadata accessor for ToolKitProtoValueSearchPredicate.Template(v98);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8CD0FB0(v85);
      sub_1C8D7300C();
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
      valid = v161;
    }

    else
    {
      type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
    }

    v103 = v151;
    v105 = v155;
    v104 = v156;
    v106 = v146;
    v107 = v145;
    v108 = v144;
    if (v146)
    {
      v109 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v104 = v105;
      v104[1] = v106;
      v104[2] = v107;
      v104[3] = v108;
      OUTLINED_FUNCTION_150();
      v161 = v109;
      v113 = v109;
    }

    else
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
      OUTLINED_FUNCTION_115();
      v161 = v113;
    }

    v114 = OUTLINED_FUNCTION_123_1(v110, v111, v112, v113);
    v115 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(v114);
    type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v160);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v159);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v158);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v162);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, valid);
    v162 = *(v115 + 48);
    type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v161);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v103 = v147;
    sub_1C8D7300C();
    sub_1C8D7300C();
    sub_1C8D7300C();
    sub_1C8D7300C();
    v103[1] = v163;
    sub_1C8D7300C();
    sub_1C8D7300C();
    sub_1C8D7300C();
    sub_1C8D7300C();
  }

LABEL_32:
  OUTLINED_FUNCTION_198();
}

void QueryDefinition.PredicateTemplates.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v59 = v0;
  v56 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v58 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_233();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_72();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
  OUTLINED_FUNCTION_9(v18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_38();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
  OUTLINED_FUNCTION_9(v22);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for ComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_23_10();
  sub_1C8CD0B70(v24, v25, &protocol conformance descriptor for ComparisonPredicate.Template);

  v26 = v59;
  v27 = sub_1C90641EC();
  if (v26)
  {
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    v55[2] = v1;
    v55[3] = v17;
    v55[1] = v2;
    v59 = v27;
    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
    v28 = sub_1C8D63FCC();
    sub_1C8D73064(v28, v29, v30);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v62 = v60;
    v31 = sub_1C8D63FCC();
    sub_1C8D730B8(v31, v32, v33);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v67 = v60;
    v34 = sub_1C8D63FCC();
    sub_1C8D7310C(v34, v35, v36);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v66 = v60;
    v37 = sub_1C8D63FCC();
    sub_1C8D73160(v37, v38, v39);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v65 = v60;
    v40 = sub_1C8D63FCC();
    sub_1C8D731B4(v40, v41, v42);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v63 = v60;
    v43 = sub_1C8D63FCC();
    sub_1C8D73208(v43, v44, v45);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v64 = v60;
    v46 = sub_1C8D63FCC();
    sub_1C8D7325C(v46, v47, v48);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    v49 = v60;
    v50 = sub_1C8D63FCC();
    sub_1C8D732B0(v50, v51, v52);
    OUTLINED_FUNCTION_30_8();
    sub_1C906350C();
    OUTLINED_FUNCTION_10_10();
    v53 = v56;
    *v56 = v59;
    *(v53 + 8) = v62;
    *(v53 + 9) = v67;
    *(v53 + 10) = v66;
    *(v53 + 11) = v65;
    *(v53 + 12) = v64;
    *(v53 + 13) = v63;
    v54 = v61;
    *(v53 + 1) = v60;
    *(v53 + 2) = v54;
    v53[6] = v49;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t QueryDefinition.PredicateTemplates.PredicateMetadata.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  return result;
}

uint64_t QueryDefinition.PredicateTemplates.PredicateMetadata.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a6@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  *a6 = v9;
  a6[1] = v8;
  v11 = a1[2];
  v10 = a1[3];

  result = sub_1C8D73304(a1, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);
  a6[2] = v11;
  a6[3] = v10;
  return result;
}

BOOL sub_1C8D72CA4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_1C8D72CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314200;
  if (!qword_1EC314200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314200);
  }

  return result;
}

unint64_t sub_1C8D72D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A08;
  if (!qword_1EDA60A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A08);
  }

  return result;
}

uint64_t sub_1C8D72D8C()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8D72DE4()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t sub_1C8D72E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BA8;
  if (!qword_1EDA60BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BA8);
  }

  return result;
}

unint64_t sub_1C8D72EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA607E0;
  if (!qword_1EDA607E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607E0);
  }

  return result;
}

unint64_t sub_1C8D72F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60748;
  if (!qword_1EDA60748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60748);
  }

  return result;
}

unint64_t sub_1C8D72F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A00;
  if (!qword_1EDA60A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A00);
  }

  return result;
}

unint64_t sub_1C8D72FC8()
{
  result = qword_1EDA62D28;
  if (!qword_1EDA62D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA62D28);
  }

  return result;
}

uint64_t sub_1C8D7300C()
{
  OUTLINED_FUNCTION_223();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_94();
  v4(v3);
  return v0;
}

unint64_t sub_1C8D73064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60878[0];
  if (!qword_1EDA60878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA60878);
  }

  return result;
}

unint64_t sub_1C8D730B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60AC0;
  if (!qword_1EDA60AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60AC0);
  }

  return result;
}

unint64_t sub_1C8D7310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60800;
  if (!qword_1EDA60800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60800);
  }

  return result;
}

unint64_t sub_1C8D73160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60DC0;
  if (!qword_1EDA60DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DC0);
  }

  return result;
}

unint64_t sub_1C8D731B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A48;
  if (!qword_1EDA60A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A48);
  }

  return result;
}

unint64_t sub_1C8D73208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C08;
  if (!qword_1EDA60C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C08);
  }

  return result;
}

unint64_t sub_1C8D7325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314260;
  if (!qword_1EC314260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314260);
  }

  return result;
}

unint64_t sub_1C8D732B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BC8;
  if (!qword_1EDA60BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BC8);
  }

  return result;
}

uint64_t sub_1C8D73304(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D73360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60CA0;
  if (!qword_1EDA60CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60CA0);
  }

  return result;
}

unint64_t sub_1C8D733B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60770;
  if (!qword_1EDA60770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60770);
  }

  return result;
}

unint64_t sub_1C8D73410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314268;
  if (!qword_1EC314268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314268);
  }

  return result;
}

unint64_t sub_1C8D73468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314270;
  if (!qword_1EC314270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314270);
  }

  return result;
}

unint64_t sub_1C8D734C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314278;
  if (!qword_1EC314278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314278);
  }

  return result;
}

unint64_t sub_1C8D73518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314280;
  if (!qword_1EC314280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314280);
  }

  return result;
}

unint64_t sub_1C8D73570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314288;
  if (!qword_1EC314288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314288);
  }

  return result;
}

unint64_t sub_1C8D735CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314290;
  if (!qword_1EC314290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314290);
  }

  return result;
}

unint64_t sub_1C8D73624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314298;
  if (!qword_1EC314298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314298);
  }

  return result;
}

unint64_t sub_1C8D736C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3142A0;
  if (!qword_1EC3142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3142A0);
  }

  return result;
}

unint64_t sub_1C8D7371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BA0;
  if (!qword_1EDA60BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BA0);
  }

  return result;
}

unint64_t sub_1C8D73774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60BC0;
  if (!qword_1EDA60BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoercionDefinitionProtobufConversionError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D73878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3142A8;
  if (!qword_1EC3142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3142A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_8()
{
  v2 = *(v0 - 176);
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = v2;
  *(v0 - 224) = *(v0 - 160);
  *(v0 - 208) = *(v0 - 144);

  return sub_1C8D3ABC4(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_1C8D72D8C();
}

void ToolInvocation.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v144 = v0;
  v2 = v1;
  v141 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F18, &qword_1C907A7B0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v122 - v6;
  v8 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v140 = v11 - v10;
  v12 = OUTLINED_FUNCTION_111();
  v13 = type metadata accessor for ConcreteResolvable(v12);
  v14 = OUTLINED_FUNCTION_46(v13);
  v145 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v148 = (v17 - v16);
  v18 = OUTLINED_FUNCTION_111();
  v19 = type metadata accessor for ToolKitProtoTypedValueResolvable(v18);
  v20 = OUTLINED_FUNCTION_46(v19);
  v147 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v146 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_147();
  v159 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
  OUTLINED_FUNCTION_9(v26);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v122 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v29);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v31);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v122 - v33;
  v35 = sub_1C906204C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_147();
  if (!v2[2])
  {
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v35);
    goto LABEL_7;
  }

  v142 = v41;

  sub_1C9061FFC();

  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
LABEL_7:
    sub_1C8D16D78(v34, &qword_1EC313B18, &qword_1C906F5B8);
LABEL_8:
    v54 = OUTLINED_FUNCTION_94();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
    sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
    swift_allocError();
    *v57 = MEMORY[0x1E69E6158];
    (*(*(v56 - 8) + 104))(v57, *MEMORY[0x1E69E08B0], v56);
    swift_willThrow();
    goto LABEL_9;
  }

  v137 = v8;
  v42 = *(v36 + 32);
  v43 = v142;
  v132 = v36 + 32;
  v131 = v42;
  v42(v142, v34, v35);
  v44 = v2[4];
  if (!v44)
  {
    (*(v36 + 8))(v43, v35);
    goto LABEL_8;
  }

  v130 = v7;
  v139 = v2[3];
  (*(v36 + 16))(v39, v43, v35);
  v45 = type metadata accessor for ToolKitProtoToolInvocation(0);
  v46 = sub_1C8D63FCC();
  sub_1C8D7441C(v46, v47, v48);

  v49 = v144;
  sub_1C906351C();
  if (v49)
  {

    v50 = *(v36 + 8);
    v50(v39, v35);
    v50(v43, v35);
LABEL_9:
    v58 = type metadata accessor for ToolKitProtoToolInvocation;
    v59 = v2;
    goto LABEL_10;
  }

  v129 = v45;
  v127 = v44;
  v144 = 0;
  v124 = v39;
  v125 = v36;
  v126 = v35;
  v60 = v158;
  v123 = v157;
  v128 = v2;
  v61 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142D8, &qword_1C90730C8);
  v62 = sub_1C906493C();
  v63 = 0;
  v135 = v61;
  v64 = 1 << *(v61 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v61 + 64;
  v67 = v65 & *(v61 + 64);
  v68 = (v64 + 63) >> 6;
  v136 = v62;
  v133 = v62 + 64;
  v134 = v60;
  while (v67)
  {
    OUTLINED_FUNCTION_22_12();
    v138 = v70;
LABEL_23:
    v74 = v69 | (v63 << 6);
    v75 = (*(v135 + 48) + 16 * v74);
    v77 = *v75;
    v76 = v75[1];
    sub_1C8D75700();
    v78 = v146;
    sub_1C8D75700();

    v79 = v148;
    v80 = v144;
    ConcreteResolvable.init(protobuf:)(v78, v81, v82, v83, v84, v85, v86, v87, v122, v123);
    v144 = v80;
    if (v80)
    {
      OUTLINED_FUNCTION_24_10();

      OUTLINED_FUNCTION_0_27();
      sub_1C8D75C28(v159, v113);
      v114 = OUTLINED_FUNCTION_1_23();
      v79(v114);
      v115 = OUTLINED_FUNCTION_19_8();
      v79(v115);
      OUTLINED_FUNCTION_4_14();
      sub_1C8D75C28(v128, v116);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_0_27();
    sub_1C8D75C28(v159, v88);
    *(v133 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
    v89 = v136;
    v90 = (*(v136 + 48) + 16 * v74);
    *v90 = v77;
    v90[1] = v76;
    OUTLINED_FUNCTION_8_15();
    sub_1C8D75C80();
    v91 = *(v89 + 16);
    v92 = __OFADD__(v91, 1);
    v93 = v91 + 1;
    if (v92)
    {
LABEL_33:
      __break(1u);
      return;
    }

    *(v89 + 16) = v93;
    v60 = v134;
    v67 = v138;
  }

  v71 = v63;
  v72 = v137;
  while (1)
  {
    v63 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v63 >= v68)
    {
      break;
    }

    ++v71;
    if (*(v66 + 8 * v63))
    {
      OUTLINED_FUNCTION_20_8();
      v138 = v73;
      goto LABEL_23;
    }
  }

  v2 = v128;
  v94 = sub_1C8D63FCC();
  sub_1C8D748E0(v94, v95, v96);
  v97 = v144;
  sub_1C906350C();
  if (v97)
  {
    OUTLINED_FUNCTION_24_10();

    v98 = OUTLINED_FUNCTION_1_23();
    v72(v98);
    v99 = OUTLINED_FUNCTION_19_8();
    v72(v99);
    goto LABEL_9;
  }

  v100 = v151;
  v101 = v152;
  v102 = v153;
  v160 = v154;
  v103 = v155;
  v104 = v156;
  v149 = v123;
  v150 = v60;
  sub_1C8DC4838();
  v144 = v100;
  v145 = v101;
  v146 = v102;
  v147 = v103;
  LODWORD(v148) = v104;

  v105 = v130;
  if (__swift_getEnumTagSinglePayload(v130, 1, v72) == 1)
  {
    sub_1C8D63F84(v144, v145, v146);
    OUTLINED_FUNCTION_24_10();
    v106 = sub_1C8D16D78(v105, &qword_1EC312F18, &qword_1C907A7B0);
    sub_1C8D7534C(v106, v107, v108);
    swift_allocError();
    v109 = v127;
    *v110 = v139;
    v110[1] = v109;
    swift_willThrow();
    v111 = OUTLINED_FUNCTION_1_23();
    v72(v111);
    v112 = OUTLINED_FUNCTION_19_8();
    v72(v112);
    OUTLINED_FUNCTION_4_14();
  }

  else
  {
    v117 = v126;
    (*(v125 + 8))(v142, v126);

    sub_1C8D75C80();
    v118 = type metadata accessor for ToolInvocation(0);
    v119 = v141;
    sub_1C8D75C80();
    v120 = v119 + *(v118 + 28);
    *v120 = 0;
    *(v120 + 8) = 0;
    *(v120 + 24) = 0;
    *(v120 + 32) = 0;
    *(v120 + 16) = 1;
    *(v120 + 40) = 0;
    v131(v119, v124, v117);
    *(v119 + *(v118 + 24)) = v136;
    sub_1C8D63F84(*v120, *(v120 + 8), *(v120 + 16));
    v121 = v145;
    *v120 = v144;
    *(v120 + 8) = v121;
    *(v120 + 16) = v146;
    *(v120 + 24) = v160;
    *(v120 + 32) = v147;
    *(v120 + 40) = v148;
    OUTLINED_FUNCTION_4_14();
    v59 = v128;
  }

LABEL_10:
  sub_1C8D75C28(v59, v58);
LABEL_11:
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8D7441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3142D0;
  if (!qword_1EC3142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3142D0);
  }

  return result;
}

void ConcreteResolvable.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v68 = v10;
  v12 = v11;
  v64 = v13;
  v14 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v65 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_147();
  v66 = v19;
  v20 = OUTLINED_FUNCTION_111();
  v63 = type metadata accessor for ConcreteResolvable(v20);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  v67 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_147();
  v62 = v25;
  v26 = OUTLINED_FUNCTION_111();
  v27 = type metadata accessor for ToolKitProtoTypedValue(v26);
  v28 = OUTLINED_FUNCTION_9(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  OUTLINED_FUNCTION_9(v32);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v61 - v34;
  v36 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v61 - v39;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
  {
    OUTLINED_FUNCTION_7_13();
    sub_1C8D75C80();
    sub_1C8D75700();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = v66;
      sub_1C8D75C80();
      v47 = v65;
      sub_1C8D75700();
      v48 = v68;
      TypedValue.ID.init(protobuf:)(v47, v49, v50, v51, v52, v53, v54, v55, v61, v62);
      OUTLINED_FUNCTION_0_27();
      sub_1C8D75C28(v12, v56);
      sub_1C8D75C28(v46, type metadata accessor for ToolKitProtoTypedValue.ID);
      OUTLINED_FUNCTION_3_19();
      sub_1C8D75C28(v40, v57);
      if (v48)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1C8D75C80();
      sub_1C8D75700();
      v58 = v68;
      TypedValue.init(protobuf:)();
      OUTLINED_FUNCTION_0_27();
      sub_1C8D75C28(v12, v59);
      sub_1C8D75C28(v31, type metadata accessor for ToolKitProtoTypedValue);
      OUTLINED_FUNCTION_3_19();
      sub_1C8D75C28(v40, v60);
      if (v58)
      {
        goto LABEL_9;
      }

      *v62 = a10;
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_15();
    sub_1C8D75C80();
    goto LABEL_9;
  }

  sub_1C8D16D78(v35, &qword_1EC3142F0, &qword_1C9074F30);
  v41 = OUTLINED_FUNCTION_94();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
  sub_1C8D4F674(&qword_1EC314300, &qword_1EC3142F8, &qword_1C90730D0);
  swift_allocError();
  *v44 = v36;
  (*(*(v43 - 8) + 104))(v44, *MEMORY[0x1E69E08B0], v43);
  swift_willThrow();
  OUTLINED_FUNCTION_0_27();
  sub_1C8D75C28(v12, v45);
LABEL_9:
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8D748E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3142E0;
  if (!qword_1EC3142E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3142E0);
  }

  return result;
}

void ToolInvocation.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v52 = v3;
  v41 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v43 = sub_1C906200C();
  v44 = v12;
  v13 = type metadata accessor for ToolInvocation(0);
  v14 = (v0 + v13[5]);
  v15 = v14[1];
  v42 = *v14;
  v16 = v14[35];
  if (v16)
  {
    v17 = v14[34];
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v45[6] = v17;
  v45[7] = v16;
  sub_1C8D759B4(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  sub_1C9063ACC();

  OUTLINED_FUNCTION_23_11();
  v19 = *(v2 + v13[6]);
  v45[2] = v52;
  v20 = sub_1C8D753E8(sub_1C8D753BC, v45, v19);
  if (v1)
  {

    sub_1C8D16D78(v11, &qword_1EC3142B8, &qword_1C90730B8);
  }

  else
  {
    v39 = v20;
    v21 = v40;
    v22 = v41;
    v23 = v2 + v13[7];
    v24 = *(v23 + 16);
    if (v24 == 1)
    {
      v25 = 1;
      v26 = v40;
    }

    else
    {
      v27 = *(v23 + 40);
      v28 = *(v23 + 24);
      v29 = *(v23 + 32);
      v30 = *(v23 + 8);
      v46 = *v23;
      v47 = v30;
      v48 = v24;
      v49 = v28;
      v50 = v29;
      v51 = v27;

      v26 = v21;
      ToolInvocationOptions.protobuf(useCase:)(v21);

      v25 = 0;
    }

    v31 = type metadata accessor for ToolKitProtoToolInvocationOptions(0);
    __swift_storeEnumTagSinglePayload(v26, v25, 1, v31);
    type metadata accessor for ToolKitProtoToolInvocation(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v18);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    v38 = v44;
    v22[1] = v43;
    v22[2] = v38;
    v22[3] = v42;
    v22[4] = v15;
    sub_1C8D7300C();
    *v22 = v39;
    sub_1C8D7300C();
  }

  OUTLINED_FUNCTION_198();
}

void ConcreteResolvable.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v33 = v1;
  v34 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  type metadata accessor for ConcreteResolvable(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v32 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - v15;
  sub_1C8D75700();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = v34;
    TypedValue.protobuf(useCase:)();

    if (v21)
    {
      goto LABEL_8;
    }

LABEL_7:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_13();
    sub_1C8D75C80();
    v28 = type metadata accessor for ToolKitProtoTypedValueResolvable(0);
    MEMORY[0x1EEE9AC00](v28);
    v30[-2] = v16;
    sub_1C8D759B4(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable, &protocol conformance descriptor for ToolKitProtoTypedValueResolvable);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_3_19();
    sub_1C8D75C28(v16, v29);
    goto LABEL_8;
  }

  sub_1C8D75C80();
  v17 = (v8 + *(v4 + 20));
  v19 = *v17;
  v18 = v17[1];
  sub_1C8CE9144(*v17, v18);

  v20 = v34;
  TypeInstance.protobuf(useCase:)();
  if (!v20)
  {

    v22 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_23_11();
    v34 = sub_1C906200C();
    v31 = v23;
    v30[1] = *(type metadata accessor for ToolKitProtoTypedValue.ID(0) + 24);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    OUTLINED_FUNCTION_10_11();
    *v13 = v19;
    v13[1] = v18;
    sub_1C8D7300C();
    v27 = v31;
    v13[2] = v34;
    v13[3] = v27;
    goto LABEL_7;
  }

  sub_1C8CE7B78(v19, v18);
  OUTLINED_FUNCTION_10_11();

LABEL_8:
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocationOptions.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v7 = *(v1 + 3);
  v6 = *(v1 + 4);
  v8 = v1[40];
  v9 = v1[41];
  v10 = 11;
  if (v8 != 11)
  {
    ToolInvocationOptions.InterfaceIdiom.protobuf(useCase:)(&v12);
    v10 = v12;
  }

  *a1 = 5;
  *(a1 + 40) = 11;
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  return result;
}

uint64_t ToolInvocationOptions.init(protobuf:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1C8D75774(a1, a3, a4);
  v6 = sub_1C906350C();
  sub_1C8D757C8(v6, v7, v8);
  sub_1C906350C();
  v10 = *(a1 + 1);
  v9 = *(a1 + 2);
  v12 = *(a1 + 3);
  v11 = *(a1 + 4);
  v13 = a1[41];

  result = sub_1C8D75C28(a1, type metadata accessor for ToolKitProtoToolInvocationOptions);
  *a2 = v16;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v11;
  *(a2 + 40) = v15;
  *(a2 + 41) = v13;
  return result;
}

uint64_t sub_1C8D75298(uint64_t a1, uint64_t a2)
{
  sub_1C8D16D78(a1, &qword_1EC3142F0, &qword_1C9074F30);
  sub_1C8D75700();
  v3 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

unint64_t sub_1C8D7534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3142E8;
  if (!qword_1EC3142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3142E8);
  }

  return result;
}

uint64_t sub_1C8D753E8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v4 = type metadata accessor for ToolKitProtoTypedValueResolvable(0);
  v31[1] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ConcreteResolvable(0);
  v31[2] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314350, &qword_1C90732C0);
  result = sub_1C906493C();
  v9 = 0;
  v34 = a3;
  v35 = result;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v31[0] = result + 64;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v34 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_1C8D75700();

      v24 = v37;
      v32(v7);
      v37 = v24;
      if (v24)
      {
        break;
      }

      v25 = v7;
      sub_1C8D75C28(v7, type metadata accessor for ConcreteResolvable);
      *(v31[0] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = v35;
      v27 = (*(v35 + 48) + 16 * v20);
      *v27 = v22;
      v27[1] = v23;
      result = sub_1C8D75C80();
      v28 = *(v26 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v26 + 16) = v30;
      v7 = v25;
      v15 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }

    sub_1C8D75C28(v7, type metadata accessor for ConcreteResolvable);
    return v35;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v35;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8D75700()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t sub_1C8D75774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314310;
  if (!qword_1EC314310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314310);
  }

  return result;
}

unint64_t sub_1C8D757C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314318;
  if (!qword_1EC314318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314318);
  }

  return result;
}

unint64_t sub_1C8D75868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314328;
  if (!qword_1EC314328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314328);
  }

  return result;
}

unint64_t sub_1C8D758C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314330;
  if (!qword_1EC314330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314330);
  }

  return result;
}

unint64_t sub_1C8D75918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314338;
  if (!qword_1EC314338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314338);
  }

  return result;
}

uint64_t sub_1C8D759B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C8D759FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v50 = v25;
  v26 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v27 = OUTLINED_FUNCTION_46(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314348, &qword_1C90732B8);
  v28 = sub_1C906493C();
  v29 = 0;
  v51 = v24;
  v32 = *(v24 + 64);
  v31 = v24 + 64;
  v30 = v32;
  v33 = 1 << *(v31 - 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = (v33 + 63) >> 6;
  v48 = v28 + 64;
  v49 = v28;
  if ((v34 & v30) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_22_12();
      v52 = v37;
LABEL_10:
      v40 = v36 | (v29 << 6);
      v41 = (*(v51 + 48) + 16 * v40);
      v42 = *v41;
      v43 = v41[1];
      a10 = *(*(v51 + 56) + 8 * v40);

      v50(&a10);

      if (v20)
      {
        break;
      }

      *(v48 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v44 = (*(v49 + 48) + 16 * v40);
      *v44 = v42;
      v44[1] = v43;
      sub_1C8D75C80();
      v45 = *(v49 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_17;
      }

      *(v49 + 16) = v47;
      if (!v52)
      {
        goto LABEL_5;
      }
    }

LABEL_15:
    OUTLINED_FUNCTION_198();
  }

  else
  {
LABEL_5:
    v38 = v29;
    while (1)
    {
      v29 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v29 >= v35)
      {
        goto LABEL_15;
      }

      ++v38;
      if (*(v31 + 8 * v29))
      {
        OUTLINED_FUNCTION_20_8();
        v52 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1C8D75C28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8D75C80()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t AssistantSchemaIdentifier.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(OUTLINED_FUNCTION_0_28() + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v9 = OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_1_24(v9);
  *a1 = v4;
  a1[1] = v3;
  result = sub_1C8D75F2C(v2, a1 + v8);
  a1[2] = v5;
  a1[3] = v1;
  return result;
}

double AssistantSchemaIdentifier.init(protobuf:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - v6;
  v9 = *a1;
  v8 = a1[1];
  v10 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v11 = sub_1C8D75F9C(a1 + *(v10 + 24), v7);
  sub_1C8D7600C(v11, v12, v13);

  sub_1C906351C();
  if (v2)
  {
    sub_1C8D76060(a1);
  }

  else
  {
    *v18 = *&v18[3];
    v15 = v18[5];
    v17 = a1[2];
    v16 = a1[3];

    sub_1C8D76060(a1);
    *a2 = v9;
    *(a2 + 8) = v8;
    result = *v18;
    *(a2 + 16) = *v18;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
    *(a2 + 48) = v16;
  }

  return result;
}

uint64_t sub_1C8D75F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D75F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D7600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60868;
  if (!qword_1EDA60868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60868);
  }

  return result;
}

uint64_t sub_1C8D76060(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssistantSchemaIdentifier.protobuf.getter@<X0>(void *a1@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(OUTLINED_FUNCTION_0_28() + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v9 = OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_1_24(v9);
  *a1 = v4;
  a1[1] = v3;
  result = sub_1C8D75F2C(v2, a1 + v8);
  a1[2] = v5;
  a1[3] = v1;
  return result;
}

unint64_t sub_1C8D76188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA607D0;
  if (!qword_1EDA607D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607D0);
  }

  return result;
}

id ToolIcon.wfIcon(with:)()
{
  v1 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v77 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v76 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = type metadata accessor for ToolIcon(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D76988(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *(v16 + 1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v16;
      v20 = *(v16 + 8);
      if (v20 < 0)
      {
        sub_1C8CB78AC(0, &qword_1EC312BB8, 0x1E69E09E0);
        v81 = v20;
        v43 = ToolSymbolIconColor.rawValue.getter();
        v23 = sub_1C8D76A78(v43, v44, &selRef_colorForName_);
        v45 = objc_opt_self();
        v80 = v20;
        ToolSymbolIconColor.rawValue.getter();
        v46 = v23;
        v47 = sub_1C9063EBC();

        v28 = [v45 tintedColorForName_];

        if (!v23)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1C8CB78AC(0, &qword_1EC312BB8, 0x1E69E09E0);
        v79 = v20;
        v21 = ToolSymbolIconColor.rawValue.getter();
        v23 = sub_1C8D76A78(v21, v22, &selRef_colorForName_);
        v78 = BYTE1(v20);
        v24 = ToolSymbolIconColor.rawValue.getter();
        v26 = v25;
        v27 = v23;
        v28 = sub_1C8D76A78(v24, v26, &selRef_colorForName_);
        if (!v23)
        {
          goto LABEL_29;
        }
      }

      if (v28)
      {
        v48 = [objc_allocWithZone(MEMORY[0x1E69E0B48]) initWithColor_];
        v49 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
        v35 = sub_1C8D76ADC(v19, v18, v23, v48);

        return v35;
      }

LABEL_29:

      sub_1C906371C();
      v63 = sub_1C9063D1C();
      v64 = sub_1C906444C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        OUTLINED_FUNCTION_3_20(&dword_1C8C9B000, v66, v67, "Missing symbol color or bakcground color not returning icon");
        MEMORY[0x1CCA833A0](v65, -1, -1);
      }

      else
      {
      }

      v57 = *(v76 + 8);
      v55 = v13;
      v56 = v6;
LABEL_33:
      v57(v55, v56);
      return 0;
    }

    v75 = *v16;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
    (*(v77 + 32))(v5, &v16[*(v36 + 48)], v1);
    v37 = objc_opt_self();
    v38 = sub_1C9061DDC();
    v39 = [v37 ln:v38 uniqueBundleWithURL:?];

    if (!v39)
    {

      sub_1C906371C();
      v50 = sub_1C9063D1C();
      v51 = sub_1C906444C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        OUTLINED_FUNCTION_3_20(&dword_1C8C9B000, v53, v54, "No external asset not returning icon");
        MEMORY[0x1CCA833A0](v52, -1, -1);
      }

      (*(v76 + 8))(v10, v6);
      v55 = OUTLINED_FUNCTION_1_25();
      goto LABEL_33;
    }

    v41 = sub_1C9061E5C() == 0xD00000000000004ELL && 0x80000001C90CA1D0 == v40;
    if (v41)
    {
    }

    else
    {
      v42 = sub_1C9064C2C();

      if ((v42 & 1) == 0)
      {
        v68 = OUTLINED_FUNCTION_0_29();
        if (v41)
        {
          v70 = v68;
        }

        else
        {
          v70 = v69;
        }

        sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
        v71 = v39;
        v62 = sub_1C8D769F8(v75, v18, v39, v70);
        v35 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];

        goto LABEL_38;
      }
    }

    sub_1C8CB78AC(0, &qword_1EC314360, 0x1E696AAE8);
    v58 = sub_1C8D76A78(0xD000000000000015, 0x80000001C90CA220, &selRef_bundleWithIdentifier_);
    v59 = OUTLINED_FUNCTION_0_29();
    if (v41)
    {
      v61 = v59;
    }

    else
    {
      v61 = v60;
    }

    sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
    v62 = sub_1C8D769F8(0xD000000000000012, 0x80000001C90CA240, v58, v61);
    v35 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];

LABEL_38:
    v72 = OUTLINED_FUNCTION_1_25();
    v73(v72);
    return v35;
  }

  v29 = *v16;
  sub_1C8CB78AC(0, &qword_1EC314360, 0x1E696AAE8);
  v30 = sub_1C8D76A78(0xD000000000000015, 0x80000001C90CA220, &selRef_bundleWithIdentifier_);
  v31 = OUTLINED_FUNCTION_0_29();
  if (v41)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
  v34 = sub_1C8D769F8(v29, v18, v30, v33);
  v35 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];

  return v35;
}

uint64_t sub_1C8D76988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C8D769F8(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = sub_1C9063EBC();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 scale:a4];

  return v7;
}

id sub_1C8D76A78(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1C9063EBC();

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

id sub_1C8D76ADC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1C9063EBC();

  v8 = [v4 initWithSymbolName:v7 symbolColor:a3 background:a4];

  return v8;
}

uint64_t ValueSearchPredicate.Template.protobuf(useCase:)@<X0>(uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v2;

  TypeInstance.protobuf(useCase:)();

  if (!v3)
  {
    v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
    type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    return sub_1C8D7732C(v7, a2);
  }

  return result;
}

void ValueSearchPredicate.init(protobuf:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v26 = a2;
    v27 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C8D097CC();
    v14 = 0;
    v15 = v32;
    v28 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v14 < *(v12 + 16))
    {
      sub_1C8D773CC(v28 + *(v7 + 72) * v14, v11);
      sub_1C8D773CC(v11, v29);
      TypedValue.init(protobuf:)();
      if (v3)
      {
        OUTLINED_FUNCTION_1_26();
        sub_1C8CD0DF0(v11, v23);
        OUTLINED_FUNCTION_0_30();
        sub_1C8CD0DF0(v27, v24);

        return;
      }

      v30 = 0;
      v16 = v12;
      v17 = v7;
      OUTLINED_FUNCTION_1_26();
      sub_1C8CD0DF0(v18, v19);
      v20 = v31;
      v32 = v15;
      v21 = *(v15 + 16);
      if (v21 >= *(v15 + 24) >> 1)
      {
        sub_1C8D097CC();
        v15 = v32;
      }

      ++v14;
      *(v15 + 16) = v21 + 1;
      *(v15 + 8 * v21 + 32) = v20;
      v7 = v17;
      v12 = v16;
      v3 = v30;
      if (v13 == v14)
      {
        OUTLINED_FUNCTION_0_30();
        sub_1C8CD0DF0(v27, v25);
        a2 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_30();
    sub_1C8CD0DF0(a1, v22);
    v15 = MEMORY[0x1E69E7CC0];
LABEL_11:
    *a2 = v15;
  }
}

void ValueSearchPredicate.protobuf(useCase:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v30 = type metadata accessor for ToolKitProtoTypedValue(0);
  OUTLINED_FUNCTION_11();
  v24 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v26 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *v2;
  v31 = *(*v2 + 16);
  v29 = v17 + 32;
  v28 = *MEMORY[0x1E69E0760];
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v31 == v16)
    {
      type metadata accessor for ToolKitProtoValueSearchPredicate(0);
      v23 = v25;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v23 = v27;
      return;
    }

    if (v16 >= *(v17 + 16))
    {
      break;
    }

    v32 = *(v29 + 8 * v16);
    (*(v5 + 104))(v8, v28, v3, v14);

    TypedValue.protobuf(useCase:)();
    (*(v5 + 8))(v8, v3);

    __swift_storeEnumTagSinglePayload(v11, 0, 1, v30);
    sub_1C8D77498(v11, v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C8D01004();
      v27 = v21;
    }

    v18 = *(v27 + 16);
    if (v18 >= *(v27 + 24) >> 1)
    {
      sub_1C8D01004();
      v27 = v22;
    }

    ++v16;
    v19 = v26;
    v20 = v27;
    *(v27 + 16) = v18 + 1;
    sub_1C8D77498(v19, v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18);
  }

  __break(1u);
}

uint64_t ValueSearchPredicate.Template.init(protobuf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1C8D774FC(a1, v11 - v6);
  sub_1C8D1FD40(v7, v8, v9);
  sub_1C906351C();
  result = sub_1C8CD0DF0(a1, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);
  if (!v2)
  {
    *a2 = v11[1];
  }

  return result;
}

uint64_t sub_1C8D7732C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D773CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D77430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8D77498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D774FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D77570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314370;
  if (!qword_1EC314370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314370);
  }

  return result;
}

unint64_t sub_1C8D775C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314378;
  if (!qword_1EC314378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314378);
  }

  return result;
}

uint64_t sub_1C8D7761C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C8D7765C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C8D776B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
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

    else if (a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61)
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

uint64_t sub_1C8D777BC(char a1)
{
  if (!a1)
  {
    return 0x644965707974;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x74736E4965707974;
}

uint64_t sub_1C8D7780C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143C8, &qword_1C90736F8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v17 = v1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D783B4(v10, v11, v12);
  sub_1C9064E1C();
  v24 = 0;
  v13 = v20;
  sub_1C9064B2C();
  if (!v13)
  {
    v14 = v17;
    v23 = 1;
    sub_1C9064B2C();
    v21 = v14;
    v22 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8D78408(&qword_1EC3131E8, &unk_1C908BCB8);
    sub_1C9064B8C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8D77A08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143B8, &unk_1C90736E8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D783B4(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_1C9064A0C();
  v17 = v10;
  v15 = sub_1C9064A0C();
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D78408(&qword_1EC3131C8, &unk_1C908BC38);
  sub_1C9064A6C();
  v12 = OUTLINED_FUNCTION_3_21();
  v13(v12);
  *a2 = v9;
  a2[1] = v17;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8D77C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D776B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D77CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D783B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D77D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D783B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D77D70@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1EC311260 != -1)
  {
    OUTLINED_FUNCTION_4_15(&qword_1EC311260);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390888);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v5 = v4;
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  if (qword_1EC311268 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_1EC311268);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3908A0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v9 = v8;
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  if (qword_1EC311270 != -1)
  {
    OUTLINED_FUNCTION_1_27(&qword_1EC311270);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3908B8);
  v12 = sub_1C9062E5C();
  sub_1C8D277DC(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);

  a2[4] = v22;
  return result;
}

uint64_t sub_1C8D77F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8D782B4(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8D78004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC311260;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_4_15(&qword_1EC311260);
  }

  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v6, qword_1EC390888);
  v7 = sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0(v7, v8, v7, v8, v9);
  if (qword_1EC311268 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_1EC311268);
  }

  OUTLINED_FUNCTION_10(v6, qword_1EC3908A0);
  v10 = sub_1C9062E5C();
  OUTLINED_FUNCTION_5_0(v10, v11, v10, v11, v12);
  if (qword_1EC311270 != -1)
  {
    OUTLINED_FUNCTION_1_27(&qword_1EC311270);
  }

  OUTLINED_FUNCTION_10(v6, qword_1EC3908B8);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D78680();
  return sub_1C9062BFC();
}

uint64_t sub_1C8D7818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC314380;

  return v5;
}

unint64_t sub_1C8D781C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314390;
  if (!qword_1EC314390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314390);
  }

  return result;
}

unint64_t sub_1C8D78220(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D78260(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8D782B4(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D17478(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8D78308(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D78260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314398;
  if (!qword_1EC314398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314398);
  }

  return result;
}

unint64_t sub_1C8D782B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143A0;
  if (!qword_1EC3143A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143A0);
  }

  return result;
}

unint64_t sub_1C8D78308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143A8;
  if (!qword_1EC3143A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143A8);
  }

  return result;
}

unint64_t sub_1C8D78360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143B0;
  if (!qword_1EC3143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143B0);
  }

  return result;
}

unint64_t sub_1C8D783B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143C0;
  if (!qword_1EC3143C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143C0);
  }

  return result;
}

uint64_t sub_1C8D78408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    v9 = sub_1C8CAC450(v4, v5, v6);
    sub_1C8CA6D90(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8D784B0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8D783B4(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8D78528()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC312100 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EC391010);
  (*(v2 + 16))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  result = (*(v2 + 32))(v9 + v8, v6, v0);
  qword_1EC3908D0 = sub_1C8D786E4;
  *algn_1EC3908D8 = v9;
  return result;
}

unint64_t sub_1C8D78680()
{
  result = qword_1EDA69128;
  if (!qword_1EDA69128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69128);
  }

  return result;
}

void sub_1C8D786E4()
{
  sub_1C9062E6C();

  sub_1C8D240D4();
}

_BYTE *storeEnumTagSinglePayload for EntityPropertyRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D7884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143D0;
  if (!qword_1EC3143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143D0);
  }

  return result;
}

unint64_t sub_1C8D788A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143D8;
  if (!qword_1EC3143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143D8);
  }

  return result;
}

unint64_t sub_1C8D788FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3143E0;
  if (!qword_1EC3143E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3143E0);
  }

  return result;
}

void ToolKitIndexingReason.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v38 = v37 - v8;
  OUTLINED_FUNCTION_111();
  v37[2] = sub_1C906357C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v39 = v11 - v10;
  OUTLINED_FUNCTION_111();
  sub_1C906354C();
  OUTLINED_FUNCTION_11();
  v37[1] = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v16 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v37 - v24;
  sub_1C9061FFC();
  if (__swift_getEnumTagSinglePayload(v0, 1, v16) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC313B18, &qword_1C906F5B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143E8, &qword_1C9073818);
    v26 = sub_1C8D4F674(&qword_1EC3143F0, &qword_1EC3143E8, &qword_1C9073818);
    OUTLINED_FUNCTION_45_8(v26);
    *v27 = v16;
    OUTLINED_FUNCTION_10_0();
    (*(v28 + 104))();
    swift_willThrow();
  }

  else
  {
    v37[0] = v5;
    v29 = OUTLINED_FUNCTION_119();
    v30(v29);
    (*(v18 + 16))(v22, v25, v16);
    v31 = *(v3 + 24);
    v32 = *(v3 + 32);
    v40 = *(v3 + 16);
    v41 = v31;
    v42 = v32;
    sub_1C8D78DBC(v40, v31, v32, v33, v34);
    sub_1C8D7C2E4(&qword_1EC3143F8, MEMORY[0x1E69E07D8], &protocol conformance descriptor for ToolKitIndexingReason.Trigger);
    sub_1C906351C();
    if (v1)
    {
      v36 = *(v18 + 8);
      v36(v22, v16);
      v36(v25, v16);
    }

    else
    {
      v35 = type metadata accessor for ToolKitProtoIndexingReason(0);
      sub_1C8D7AE3C(v3 + *(v35 + 24), v38, &qword_1EC3141E0, &unk_1C90729F0);
      sub_1C8D7C2E4(&qword_1EC3141E8, MEMORY[0x1E69E0830], &protocol conformance descriptor for ToolKitIndexingReason.Changeset);
      sub_1C906351C();
      sub_1C906353C();
      (*(v18 + 8))(v25, v16);
    }
  }

  sub_1C8D7AE88();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D78DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 0xFF)
  {
    return sub_1C8D78DD0(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C8D78DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8D78DE8()
{
  OUTLINED_FUNCTION_41_5();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_37_9();
  sub_1C8D02100(v2, v3);
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for IndexingLog.IndexingEvent(v4);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7(v6);
  OUTLINED_FUNCTION_10_12(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C8D78EB4()
{
  OUTLINED_FUNCTION_41_5();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_37_9();
  sub_1C8D020D8(v2, v3);
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for IndexingLog.WALEvent(v4);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7(v6);
  OUTLINED_FUNCTION_10_12(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C8D78F80()
{
  OUTLINED_FUNCTION_41_5();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_37_9();
  sub_1C8D020B0(v2, v3);
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for IndexingLog.VacuumEvent(v4);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7(v6);
  OUTLINED_FUNCTION_10_12(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C8D790A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_37_9();
  v8 = v7(v6);
  v9 = a3(v20, v8 + 32, v4, a1);
  OUTLINED_FUNCTION_10_12(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v20[1], v20[2], v20[3], v20[4]);
  if (!v17)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C8D7912C()
{
  OUTLINED_FUNCTION_41_5();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_37_9();
  sub_1C8D02198(v2, v3);
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for ToolKitProtoIndexingLogEntry(v4);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_18_7(v6);
  OUTLINED_FUNCTION_10_12(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t LaunchServicesSnapshot.State.init(protobuf:)(void *a1)
{
  sub_1C9061EFC();

  OUTLINED_FUNCTION_211();
  sub_1C906360C();
  return sub_1C8D7AE88();
}

uint64_t LaunchServicesSnapshot.State.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C906361C();
  v4 = v3;
  v5 = sub_1C90635FC();
  v6 = sub_1C9061F3C();
  v8 = v7;

  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  return result;
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.init(protobuf:)(void *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B18, &qword_1C906F5B8);
  OUTLINED_FUNCTION_9(v1);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1C9061FFC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C8D16D78(v4, &qword_1EC313B18, &qword_1C906F5B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3143E8, &qword_1C9073818);
    v15 = sub_1C8D4F674(&qword_1EC3143F0, &qword_1EC3143E8, &qword_1C9073818);
    OUTLINED_FUNCTION_45_8(v15);
    *v16 = v5;
    OUTLINED_FUNCTION_10_0();
    (*(v17 + 104))();
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v14, v4, v5);
    (*(v7 + 16))(v11, v14, v5);
    sub_1C90635CC();
    (*(v7 + 8))(v14, v5);
  }

  return sub_1C8D7AE88();
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  sub_1C90635BC();
  v10 = sub_1C906200C();
  v12 = v11;
  (*(v5 + 8))(v9, v3);
  sub_1C90635AC();
  v13 = OUTLINED_FUNCTION_257();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(v13);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v10;
  a1[1] = v12;
  a1[2] = v1;
  return result;
}

void LaunchServicesSnapshot.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;
  sub_1C90635DC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v30 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  sub_1C8D7AE3C(v24 + *(v30 + 20), v28, &qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_15_11();
  sub_1C8D7C2E4(v31, v32, &protocol conformance descriptor for LaunchServicesSnapshot.DatabaseVersion);
  sub_1C906351C();
  if (!v20)
  {
    sub_1C906362C();
    OUTLINED_FUNCTION_7_14();
    sub_1C8D7C2E4(v33, v34, &protocol conformance descriptor for LaunchServicesSnapshot.State);

    sub_1C9063E3C();
    sub_1C906363C();
  }

  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_198();
}

void LaunchServicesSnapshot.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v31 = v1;
  sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v29 = v3;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_1C90635DC();
  OUTLINED_FUNCTION_11();
  v28 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v27 - v16);
  MEMORY[0x1CCA81070](v15);
  OUTLINED_FUNCTION_258();
  sub_1C906362C();
  OUTLINED_FUNCTION_7_14();
  sub_1C8D7C2E4(v18, v19, &protocol conformance descriptor for LaunchServicesSnapshot.State);
  v20 = sub_1C9063E4C();

  if (!v0)
  {
    sub_1C906365C();
    sub_1C90635BC();
    v21 = sub_1C906200C();
    v23 = v22;
    (*(v29 + 8))(v6, v30);
    sub_1C90635AC();
    v24 = OUTLINED_FUNCTION_257();
    v25 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(v24);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    (*(v28 + 8))(v12, v7);
    *v17 = v21;
    v17[1] = v23;
    v17[2] = v12;
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v25);
    v26 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0) + 20);
    __swift_storeEnumTagSinglePayload(v31 + v26, 1, 1, v25);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v31 = v20;
    sub_1C8D7CA88(v17, v31 + v26, &qword_1EC3129D8, &unk_1C909DFC0);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t LinkSnapshot.State.init(protobuf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  v6 = a1[3];

  sub_1C8CE9144(v5, v6);
  OUTLINED_FUNCTION_211();
  sub_1C906339C();
  return sub_1C8D7AE88();
}

uint64_t LinkSnapshot.State.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C90633AC();
  v4 = v3;
  v5 = sub_1C90633BC();
  v7 = v6;
  type metadata accessor for ToolKitProtoLinkSnapshot.State(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

uint64_t LinkSnapshot.init(protobuf:)(uint64_t *a1)
{
  sub_1C90633CC();
  OUTLINED_FUNCTION_4_16();
  sub_1C8D7C2E4(v2, v3, &protocol conformance descriptor for LinkSnapshot.State);

  sub_1C9063E3C();
  if (!v1)
  {
    sub_1C906337C();
  }

  return sub_1C8D7AE88();
}

uint64_t LinkSnapshot.protobuf(useCase:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1C906338C();
  sub_1C90633CC();
  OUTLINED_FUNCTION_4_16();
  sub_1C8D7C2E4(v3, v4, &protocol conformance descriptor for LinkSnapshot.State);
  OUTLINED_FUNCTION_211();
  v5 = sub_1C9063E4C();

  if (!v1)
  {
    type metadata accessor for ToolKitProtoLinkSnapshot(0);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v5;
  }

  return result;
}

void ToolKitIndexingReason.Changeset.Provenance.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v60 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - v7;
  OUTLINED_FUNCTION_111();
  v58 = sub_1C90635DC();
  OUTLINED_FUNCTION_11();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v59 = v11 - v10;
  v12 = OUTLINED_FUNCTION_111();
  v13 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v12);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v54 - v16;
  v17 = OUTLINED_FUNCTION_111();
  v18 = type metadata accessor for ToolKitProtoLinkSnapshot(v17);
  v19 = OUTLINED_FUNCTION_9(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v54 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_31();
  v28 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(v27);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v54 - v34;
  sub_1C8D7AE3C(v3, v0, &qword_1EC3129F0, &qword_1C9068DD0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v28) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC3129F0, &qword_1C9068DD0);
    v36 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    sub_1C8D4F674(&qword_1EC314428, &qword_1EC314420, &qword_1C9073820);
    swift_allocError();
    *v38 = v28;
    OUTLINED_FUNCTION_10_0();
    (*(v39 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_31();
LABEL_14:
    sub_1C8D7AE88();
  }

  else
  {
    OUTLINED_FUNCTION_16_11();
    sub_1C8D7CB58(v0, v35);
    sub_1C8D7CB00(v35, v32);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = v61;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v49 = v55;
        sub_1C8D7CB58(v32, v55);
        sub_1C8D7CB00(v49, v22);
        sub_1C90633CC();
        OUTLINED_FUNCTION_4_16();
        sub_1C8D7C2E4(v50, v51, &protocol conformance descriptor for LinkSnapshot.State);

        sub_1C9063E3C();
        if (v1)
        {
          OUTLINED_FUNCTION_0_31();
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_17_9();
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_119();
          goto LABEL_13;
        }

        v46 = v60;
        sub_1C906337C();
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        OUTLINED_FUNCTION_17_9();
        sub_1C8D7AE88();
        OUTLINED_FUNCTION_119();
        sub_1C8D7AE88();
        v45 = MEMORY[0x1E69E07E8];
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        v45 = MEMORY[0x1E69E07F0];
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        v45 = MEMORY[0x1E69E07E0];
LABEL_8:
        v46 = v60;
        goto LABEL_9;
      default:
        sub_1C8D7CB58(v32, v61);
        v42 = v57;
        sub_1C8D7CB00(v41, v57);
        sub_1C8D7AE3C(v42 + *(v13 + 20), v56, &qword_1EC3129D8, &unk_1C909DFC0);
        OUTLINED_FUNCTION_15_11();
        sub_1C8D7C2E4(v43, v44, &protocol conformance descriptor for LaunchServicesSnapshot.DatabaseVersion);
        sub_1C906351C();
        if (v1)
        {
          OUTLINED_FUNCTION_0_31();
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_14_14();
          sub_1C8D7AE88();
LABEL_13:
          sub_1C8D7AE88();
          OUTLINED_FUNCTION_8_16();
          goto LABEL_14;
        }

        sub_1C906362C();
        OUTLINED_FUNCTION_7_14();
        sub_1C8D7C2E4(v52, v53, &protocol conformance descriptor for LaunchServicesSnapshot.State);

        sub_1C9063E3C();
        v46 = v60;
        sub_1C906363C();
        OUTLINED_FUNCTION_0_31();
        sub_1C8D7AE88();
        OUTLINED_FUNCTION_14_14();
        sub_1C8D7AE88();
        sub_1C8D7AE88();
        v45 = MEMORY[0x1E69E07F8];
LABEL_9:
        OUTLINED_FUNCTION_8_16();
        sub_1C8D7AE88();
        v47 = *v45;
        sub_1C906356C();
        OUTLINED_FUNCTION_13_1();
        (*(v48 + 104))(v46, v47);
        break;
    }
  }

  OUTLINED_FUNCTION_198();
}

void ToolKitIndexingReason.Changeset.Provenance.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v46 = v3;
  v47 = v2;
  v4 = sub_1C906366C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_31();
  sub_1C90633EC();
  OUTLINED_FUNCTION_11();
  v42 = v9;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1C906356C();
  OUTLINED_FUNCTION_11();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v44 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v23 = (v21 - v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v45 = &v42 - v26;
  (*(v15 + 16))(v19, v0, v13, v25);
  v27 = OUTLINED_FUNCTION_224();
  v29 = v28(v27);
  if (v29 == *MEMORY[0x1E69E07F8])
  {
    v30 = OUTLINED_FUNCTION_224();
    v31(v30);
    (*(v6 + 32))(v0, v19, v4);
    LaunchServicesSnapshot.protobuf(useCase:)();
    if (v1)
    {
      (*(v6 + 8))(v0, v4);
LABEL_14:
      OUTLINED_FUNCTION_198();
      return;
    }

    (*(v6 + 8))(v0, v4);
    goto LABEL_13;
  }

  if (v29 == *MEMORY[0x1E69E07E8])
  {
    v32 = OUTLINED_FUNCTION_224();
    v33(v32);
    v35 = v42;
    v34 = v43;
    (*(v42 + 32))(v12, v19, v43);
    sub_1C906338C();
    OUTLINED_FUNCTION_257();
    sub_1C90633CC();
    OUTLINED_FUNCTION_4_16();
    sub_1C8D7C2E4(v36, v37, &protocol conformance descriptor for LinkSnapshot.State);
    v38 = sub_1C9063E4C();
    if (v1)
    {
      (*(v35 + 8))(v12, v34);

      goto LABEL_14;
    }

    v39 = v38;

    type metadata accessor for ToolKitProtoLinkSnapshot(0);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    (*(v35 + 8))(v12, v34);
    *v23 = v39;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_11();
    v40 = v45;
    sub_1C8D7CB58(v23, v45);
    v41 = type metadata accessor for ToolKitProtoChangeset.Provenance(0);
    MEMORY[0x1EEE9AC00](v41);
    *(&v42 - 2) = v40;
    sub_1C8D7C2E4(qword_1EDA62338, type metadata accessor for ToolKitProtoChangeset.Provenance, &protocol conformance descriptor for ToolKitProtoChangeset.Provenance);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_8_16();
    sub_1C8D7AE88();
    goto LABEL_14;
  }

  if (v29 == *MEMORY[0x1E69E07F0] || v29 == *MEMORY[0x1E69E07E0])
  {
    goto LABEL_13;
  }

  sub_1C9064C1C();
  __break(1u);
}

void ToolKitIndexingReason.Changeset.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v40 = v3;
  v4 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A4C0, &unk_1C909DFD0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ToolKitProtoChangesetKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  sub_1C8D7AE3C(v2, v12, &qword_1EC31A4C0, &unk_1C909DFD0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC31A4C0, &unk_1C909DFD0);
    v21 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    sub_1C8D4F674(&qword_1EC314438, &qword_1EC314430, &qword_1C9073828);
    swift_allocError();
    *v23 = v13;
    OUTLINED_FUNCTION_10_0();
    (*(v24 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_2_21();
LABEL_3:
    sub_1C8D7AE88();
    goto LABEL_11;
  }

  sub_1C8D7CB58(v12, v20);
  sub_1C8D7CB00(v20, v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 2, v4);
  if (!EnumTagSinglePayload)
  {
    sub_1C8D7CB58(v17, v8);

    v28 = sub_1C8D2BCE0(v27);

    v30 = sub_1C8D2BCE0(v29);
    sub_1C906356C();
    v31 = MEMORY[0x1E69E0800];
    sub_1C8D7C2E4(&qword_1EDA62BE8, MEMORY[0x1E69E0800], MEMORY[0x1E69E0808]);
    sub_1C8D7C2E4(&qword_1EC314440, v31, &protocol conformance descriptor for ToolKitIndexingReason.Changeset.Provenance);

    v32 = sub_1C906436C();
    if (!v0)
    {
      v35 = v32;
      OUTLINED_FUNCTION_2_21();
      sub_1C8D7AE88();
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_1_28();
      sub_1C8D7AE88();
      v36 = v40;
      *v40 = v28;
      v36[1] = v30;
      v36[2] = v35;
      v37 = *MEMORY[0x1E69E0828];
      sub_1C906357C();
      OUTLINED_FUNCTION_13_1();
      (*(v38 + 104))(v36, v37);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2_21();
    sub_1C8D7AE88();
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_1_28();
    goto LABEL_3;
  }

  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_2_21();
    sub_1C8D7AE88();
    OUTLINED_FUNCTION_1_28();
    sub_1C8D7AE88();
    v26 = MEMORY[0x1E69E0818];
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    sub_1C8D7AE88();
    OUTLINED_FUNCTION_1_28();
    sub_1C8D7AE88();
    v26 = MEMORY[0x1E69E0820];
  }

  v33 = *v26;
  sub_1C906357C();
  OUTLINED_FUNCTION_13_1();
  (*(v34 + 104))(v40, v33);
LABEL_11:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D7AE3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

uint64_t sub_1C8D7AE88()
{
  v1 = OUTLINED_FUNCTION_258();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

void ToolKitIndexingReason.Changeset.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C906357C();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = type metadata accessor for ToolKitProtoChangesetKind(0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v16 = (v14 - v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v31 - v19;
  (*(v7 + 16))(v11, v2, v5, v18);
  v21 = (*(v7 + 88))(v11, v5);
  if (v21 == *MEMORY[0x1E69E0828])
  {
    v31[1] = v4;
    (*(v7 + 96))(v11, v5);
    v22 = v11[1];
    v32 = sub_1C8D790A4(*v11, sub_1C8D01FC4, sub_1C8D7C438);
    v23 = sub_1C8D790A4(v22, sub_1C8D01FC4, sub_1C8D7C438);
    sub_1C906356C();
    v24 = MEMORY[0x1E69E0800];
    sub_1C8D7C2E4(&qword_1EDA62BE8, MEMORY[0x1E69E0800], MEMORY[0x1E69E0808]);
    sub_1C8D7C2E4(&qword_1EDA62BE0, v24, &protocol conformance descriptor for ToolKitIndexingReason.Changeset.Provenance);
    v25 = sub_1C906437C();

    if (v1)
    {

LABEL_11:
      OUTLINED_FUNCTION_198();
      return;
    }

    v29 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v16 = v32;
    v16[1] = v23;
    v16[2] = v25;
    __swift_storeEnumTagSinglePayload(v16, 0, 2, v29);
LABEL_10:
    sub_1C8D7CB58(v16, v20);
    v30 = type metadata accessor for ToolKitProtoChangeset(0);
    MEMORY[0x1EEE9AC00](v30);
    v31[-2] = v20;
    sub_1C8D7C2E4(&qword_1EDA65F00, type metadata accessor for ToolKitProtoChangeset, &protocol conformance descriptor for ToolKitProtoChangeset);
    sub_1C9063ACC();
    OUTLINED_FUNCTION_1_28();
    sub_1C8D7AE88();
    goto LABEL_11;
  }

  if (v21 == *MEMORY[0x1E69E0818])
  {
    v26 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    v27 = v16;
    v28 = 1;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v27, v28, 2, v26);
    goto LABEL_10;
  }

  if (v21 == *MEMORY[0x1E69E0820])
  {
    v26 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
    v27 = v16;
    v28 = 2;
    goto LABEL_8;
  }

  sub_1C9064C1C();
  __break(1u);
}

uint64_t sub_1C8D7B2C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1C8D16D78(a1, a3, a4);
  v8 = OUTLINED_FUNCTION_211();
  sub_1C8D7CB00(v8, v9);
  v10 = a6(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
}

uint64_t ToolKitIndexingReason.Trigger.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v4 = a1[1];
      *a2 = v3;
      a2[1] = v4;
      v5 = MEMORY[0x1E69E07D0];
    }

    else
    {
      switch(v3)
      {
        case 1:
          v5 = MEMORY[0x1E69E0790];
          break;
        case 2:
          v5 = MEMORY[0x1E69E07B8];
          break;
        case 3:
          v5 = MEMORY[0x1E69E07B0];
          break;
        case 4:
          v5 = MEMORY[0x1E69E07C0];
          break;
        case 5:
          v5 = MEMORY[0x1E69E0798];
          break;
        case 6:
          v5 = MEMORY[0x1E69E07A8];
          break;
        case 7:
          v5 = MEMORY[0x1E69E07A0];
          break;
        case 8:
          v5 = MEMORY[0x1E69E0780];
          break;
        case 9:
          v5 = MEMORY[0x1E69E0788];
          break;
        default:
          v5 = MEMORY[0x1E69E0778];
          break;
      }
    }
  }

  else
  {
    *a2 = v3 & 1;
    v5 = MEMORY[0x1E69E07C8];
  }

  v6 = *v5;
  sub_1C906354C();
  OUTLINED_FUNCTION_13_1();
  v9 = *(v8 + 104);

  return v9(a2, v6, v7);
}

void ToolKitIndexingReason.Trigger.protobuf(useCase:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C906354C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  (*(v6 + 16))(v9 - v8, v2, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x1E69E07C8])
  {
    (*(v6 + 96))(v10, v4);
    v12 = 0;
    v13 = 0;
    v14 = *v10;
LABEL_12:
    *a1 = v14;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    return;
  }

  if (v11 == *MEMORY[0x1E69E07D0])
  {
    (*(v6 + 96))(v10, v4);
    v14 = *v10;
    v12 = v10[1];
    v13 = 1;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E0778])
  {
    v14 = 0;
    v12 = 0;
LABEL_7:
    v13 = 2;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E0790])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 1;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E07A0])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 7;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E07B8])
  {
    v12 = 0;
    v14 = 2;
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E69E07B0])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 3;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E07C0])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 4;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E0798])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 5;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E07A8])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 6;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E0780])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 8;
    goto LABEL_12;
  }

  if (v11 == *MEMORY[0x1E69E0788])
  {
    OUTLINED_FUNCTION_24_11();
    v14 = 9;
    goto LABEL_12;
  }

  sub_1C9064C1C();
  __break(1u);
}

uint64_t ToolKitIndexingReason.protobuf(useCase:)(uint64_t a1)
{
  type metadata accessor for ToolKitProtoIndexingReason(0);
  sub_1C8D7C2E4(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason, &protocol conformance descriptor for ToolKitProtoIndexingReason);
  return sub_1C9063ACC();
}

uint64_t sub_1C8D7B8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v4 = sub_1C906354C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C906357C();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1C906204C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C906352C();
  v16 = sub_1C906200C();
  v18 = v17;
  (*(v13 + 8))(v15, v12);

  *a1 = v16;
  *(a1 + 8) = v18;
  sub_1C906358C();
  v19 = v36;
  ToolKitIndexingReason.Changeset.protobuf(useCase:)();
  if (v19)
  {
    return (*(v31 + 8))(v8, v32);
  }

  (*(v31 + 8))(v8, v32);
  v21 = type metadata accessor for ToolKitProtoChangeset(0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  v22 = type metadata accessor for ToolKitProtoIndexingReason(0);
  sub_1C8D7CA88(v11, a1 + *(v22 + 24), &qword_1EC3141E0, &unk_1C90729F0);
  v23 = v28;
  sub_1C906355C();
  ToolKitIndexingReason.Trigger.protobuf(useCase:)(v34);
  (*(v29 + 8))(v23, v30);
  v24 = v34[0];
  v25 = v34[1];
  v26 = v35;
  result = sub_1C8D7CAD4(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  *(a1 + 16) = v24;
  *(a1 + 24) = v25;
  *(a1 + 32) = v26;
  return result;
}

void ToolKitIndexingRequest.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v49 = sub_1C906359C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v48 = v6 - v5;
  OUTLINED_FUNCTION_111();
  v7 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v45 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  sub_1C906367C();
  v16 = sub_1C906200C();
  v18 = v17;
  v19 = *(v9 + 8);
  v46 = v9 + 8;
  v47 = v7;
  v44 = v19;
  v19(v15, v7);
  v20 = sub_1C906368C();
  v21 = *(v20 + 16);
  if (v21)
  {
    v38 = v18;
    v39 = v16;
    v40 = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v22 = v50;
    v23 = v3 + 16;
    OUTLINED_FUNCTION_139();
    v37 = v20;
    v25 = v20 + v24;
    v42 = *(v23 + 56);
    v43 = v26;
    v41 = (v23 - 8);
    do
    {
      v28 = v48;
      v27 = v49;
      v29 = OUTLINED_FUNCTION_224();
      v30 = v23;
      v43(v29);
      v31 = v45;
      sub_1C906352C();
      v32 = sub_1C906200C();
      v34 = v33;
      v44(v31, v47);
      (*v41)(v28, v27);
      v50 = v22;
      v35 = *(v22 + 16);
      if (v35 >= *(v22 + 24) >> 1)
      {
        sub_1C8CA6480();
        v22 = v50;
      }

      *(v22 + 16) = v35 + 1;
      v36 = v22 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v34;
      v25 += v42;
      --v21;
      v23 = v30;
    }

    while (v21);

    v16 = v39;
    v1 = v40;
    v18 = v38;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for ToolKitProtoIndexingRequest(0);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v16;
  v1[1] = v18;
  v1[2] = v22;
  OUTLINED_FUNCTION_163();
}

uint64_t ToolKitIndexingRequest.Response.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C906369C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  (*(v6 + 16))(v9 - v8, v2, v4);
  v10 = OUTLINED_FUNCTION_119();
  result = v11(v10);
  v13 = 0;
  if (result == *MEMORY[0x1E69E0890])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69E0898])
  {
    v13 = 1;
LABEL_4:
    *a1 = 0;
    a1[1] = v13;
    return result;
  }

  result = sub_1C9064C1C();
  __break(1u);
  return result;
}

uint64_t sub_1C8D7C2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C8D7C32C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_33_5();
  v6 = v3 + 56;
  OUTLINED_FUNCTION_11_10();
  if (!v8)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_17:
    *v0 = v1;
    v0[1] = v6;
    OUTLINED_FUNCTION_32_4(v10);
    OUTLINED_FUNCTION_163();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_21_8();
    v13 = (v12 - v4) >> 6;
    while (v11 < v9)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v5 = *(v6 + 8 * v15);
          ++v10;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      OUTLINED_FUNCTION_22();
      *v2 = *(*(v1 + 48) + ((v15 << 9) | (8 * v16)));
      if (v14 == v9)
      {

        v10 = v15;
        goto LABEL_17;
      }

      ++v2;

      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C8D7C438()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_33_5();
  v6 = v3 + 56;
  OUTLINED_FUNCTION_11_10();
  if (!v8)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_17:
    *v0 = v1;
    v0[1] = v6;
    OUTLINED_FUNCTION_32_4(v10);
    OUTLINED_FUNCTION_163();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_21_8();
    v13 = (v12 - v4) >> 6;
    while (v11 < v9)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v5 = *(v6 + 8 * v15);
          ++v10;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      v16 = (*(v1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v5)))));
      v17 = v16[1];
      v5 &= v5 - 1;
      *v2 = *v16;
      v2[1] = v17;
      if (v14 == v9)
      {

        v10 = v15;
        goto LABEL_17;
      }

      v2 += 2;

      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1C8D7C54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 56;
  OUTLINED_FUNCTION_28_6();
  v12 = v11 & v10;
  if (!v13)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_18:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v9;
    a1[3] = v15;
    a1[4] = v12;
    return;
  }

  v14 = v8;
  if (!v8)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_21_8();
    v24 = v17;
    v19 = (v18 - v17) >> 6;
    while (1)
    {
      if (v16 >= v14)
      {
        goto LABEL_21;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v12)
      {
        while (1)
        {
          v21 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v12 = 0;
            goto LABEL_16;
          }

          v12 = *(v7 + 8 * v21);
          ++v15;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = v15;
LABEL_12:
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v23 = (*(a4 + 48) + 136 * (v22 | (v21 << 6)));
      memcpy(__dst, v23, 0x88uLL);
      memmove(v4, v23, 0x88uLL);
      if (v20 == v14)
      {
        break;
      }

      v4 += 136;
      sub_1C8D073F4(__dst, v25);
      v16 = v20;
      v15 = v21;
    }

    sub_1C8D073F4(__dst, v25);
    v15 = v21;
LABEL_16:
    v9 = v24;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C8D7C6BC()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_33_5();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_11_10();
  if (!v6)
  {
    v11 = 0;
LABEL_17:
    *v0 = v1;
    v0[1] = v5;
    v0[2] = ~v3;
    v0[3] = v11;
    v0[4] = v4;
    OUTLINED_FUNCTION_163();
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    v10 = 0;
    v11 = 0;
    while (v10 < v8)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_20;
      }

      if (!v4)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= ((63 - v3) >> 6))
          {
            v4 = 0;
            goto LABEL_17;
          }

          v4 = *(v5 + 8 * v13);
          ++v11;
          if (v4)
          {
            v11 = v13;
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

LABEL_12:
      OUTLINED_FUNCTION_22();
      memmove(v9, (*(v1 + 56) + 104 * (v14 | (v11 << 6))), 0x61uLL);
      v9 += 104;
      v10 = v12;
      if (v12 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

void sub_1C8D7C7C8()
{
  OUTLINED_FUNCTION_164();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_258();
  v11 = v10(v9);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44_8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v36 = v4;
  v15 = v4 + 64;
  OUTLINED_FUNCTION_28_6();
  v19 = v18 & v17;
  if (!v8)
  {
    OUTLINED_FUNCTION_43_6();
LABEL_17:
    *v0 = v36;
    v0[1] = v15;
    OUTLINED_FUNCTION_32_4(v21);
    OUTLINED_FUNCTION_163();
    return;
  }

  if (!v6)
  {
    v21 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v30[1] = v16;
    v31 = v0;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v16) >> 6;
    while (1)
    {
      if (v20 >= v6)
      {
        goto LABEL_20;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_21;
      }

      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            goto LABEL_15;
          }

          v19 = *(v15 + 8 * v24);
          ++v21;
          if (v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v24 = v21;
LABEL_12:
      OUTLINED_FUNCTION_22();
      v26 = v32;
      v27 = *(v33 + 72);
      sub_1C8D7CB00(*(v36 + 56) + v27 * (v25 | (v24 << 6)), v32);
      sub_1C8D7CB58(v26, v14);
      v28 = OUTLINED_FUNCTION_224();
      sub_1C8D7CB58(v28, v29);
      if (v23 == v6)
      {
        break;
      }

      v8 += v27;
      v20 = v23;
      v21 = v24;
    }

    v21 = v24;
LABEL_15:
    v0 = v31;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void *sub_1C8D7C9A4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D7CA88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v4;
}

uint64_t sub_1C8D7CAD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8D7CAE8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C8D7CAE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8D7CB00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t sub_1C8D7CB58(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_13_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t sub_1C8D7CBBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C8D7CBFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8D7CC64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
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

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6972745365757274 && a2 == 0xEA0000000000676ELL;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x72745365736C6166 && a2 == 0xEB00000000676E69)
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

uint64_t sub_1C8D7CE9C(char a1)
{
  result = 0x64496C6F6F74;
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
    case 5:
      result = 0x6972745365757274;
      break;
    case 6:
      result = 0x72745365736C6166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D7CF60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144A8, &qword_1C9073E98);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D7E094(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  sub_1C9064B9C();
  if (!v1)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v13[13] = 2;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v13[12] = 3;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064B2C();
    v13[11] = 4;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
    v13[10] = 5;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
    v13[9] = 6;
    OUTLINED_FUNCTION_3_12();
    sub_1C9064ADC();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1C8D7D150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144A0, &qword_1C9073E90);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D7E094(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v14 = sub_1C9064A7C();
  OUTLINED_FUNCTION_0_32(1);
  v15 = sub_1C9064A0C();
  v41 = v16;
  OUTLINED_FUNCTION_0_32(2);
  v37 = sub_1C9064A0C();
  v40 = v17;
  OUTLINED_FUNCTION_0_32(3);
  v36 = sub_1C9064A0C();
  v39 = v18;
  OUTLINED_FUNCTION_0_32(4);
  v34 = sub_1C90649AC();
  v35 = v15;
  v38 = v19;
  OUTLINED_FUNCTION_0_32(5);
  v20 = sub_1C90649AC();
  v22 = v21;
  v33 = v20;
  v44 = 6;
  v23 = sub_1C90649AC();
  v24 = *(v7 + 8);
  v25 = v23;
  v32 = v26;
  v24(v10, v5);
  __src[0] = v14;
  __src[1] = v35;
  v27 = v41;
  __src[2] = v41;
  __src[3] = v37;
  __src[4] = v40;
  v28 = v39;
  __src[5] = v36;
  __src[6] = v39;
  __src[7] = v34;
  __src[8] = v38;
  __src[9] = v33;
  __src[10] = v22;
  v29 = v32;
  __src[11] = v25;
  __src[12] = v32;
  sub_1C8D7E0E8(__src, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v14;
  v43[1] = v35;
  v43[2] = v27;
  v43[3] = v37;
  v43[4] = v40;
  v43[5] = v36;
  v43[6] = v28;
  v43[7] = v34;
  v43[8] = v38;
  v43[9] = v33;
  v43[10] = v22;
  v43[11] = v25;
  v43[12] = v29;
  sub_1C8D7E120(v43);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1C8D7D5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D7CC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D7D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D7E094(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D7D63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D7E094(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C8D7D678@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8D7D150(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1C8D7D71C@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1EDA62470 != -1)
  {
    OUTLINED_FUNCTION_10_13(&qword_1EDA62470);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EDA6E618);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EDA62498 != -1)
  {
    OUTLINED_FUNCTION_9_11(&qword_1EDA62498);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E660);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  sub_1C8E2B294();
  v7 = v6;
  v9 = v8;

  if (qword_1EDA62480 != -1)
  {
    OUTLINED_FUNCTION_8_17(&qword_1EDA62480);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E630);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  sub_1C8E2B294();
  v33 = v11;
  v34 = v10;

  if (qword_1EDA62488 != -1)
  {
    OUTLINED_FUNCTION_7_15(&qword_1EDA62488);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E648);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v31 = v13;
  v32 = v12;
  v35 = v9;
  v36 = v5;

  if (qword_1EDA624A0 != -1)
  {
    OUTLINED_FUNCTION_6_13(&qword_1EDA624A0);
  }

  v14 = v7;
  OUTLINED_FUNCTION_10(v3, qword_1EDA6E678);
  v15 = sub_1C9062E5C();
  v17 = sub_1C8E293EC(v15, v16);
  v19 = v18;

  if (qword_1EC311288 != -1)
  {
    OUTLINED_FUNCTION_5_17(&qword_1EC311288);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3908E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  v22 = sub_1C8E293EC(v20, v21);
  v24 = v23;

  if (qword_1EC311290 != -1)
  {
    OUTLINED_FUNCTION_4_17(&qword_1EC311290);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC3908F8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_14_15();
  v27 = sub_1C8E293EC(v25, v26);
  v29 = v28;

  *a2 = v36;
  a2[1] = v14;
  a2[2] = v35;
  a2[3] = v34;
  a2[4] = v33;
  a2[5] = v32;
  a2[6] = v31;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v22;
  a2[10] = v24;
  a2[11] = v27;
  a2[12] = v29;
  return result;
}

uint64_t sub_1C8D7D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8D7DF40(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8D7DAE4()
{
  if (qword_1EDA62470 != -1)
  {
    OUTLINED_FUNCTION_10_13(&qword_1EDA62470);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EDA6E618);
  sub_1C9062E5C();
  v2 = *v0;
  v42 = MEMORY[0x1E69E7360];
  v43 = MEMORY[0x1E69A01D0];
  v40 = v2;
  sub_1C9062BFC();
  if (qword_1EDA62498 != -1)
  {
    OUTLINED_FUNCTION_9_11(&qword_1EDA62498);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E660);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v4 = v0[1];
  v3 = v0[2];
  v5 = MEMORY[0x1E69E6158];
  v6 = MEMORY[0x1E69A0138];
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69A0138];
  v40 = v4;
  v41 = v3;

  OUTLINED_FUNCTION_1_0(v7, v8, v9);
  if (qword_1EDA62480 != -1)
  {
    OUTLINED_FUNCTION_8_17(&qword_1EDA62480);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E630);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v11 = v0[3];
  v10 = v0[4];
  v42 = v5;
  v43 = v6;
  v40 = v11;
  v41 = v10;

  OUTLINED_FUNCTION_1_0(v12, v13, v14);
  if (qword_1EDA62488 != -1)
  {
    OUTLINED_FUNCTION_7_15(&qword_1EDA62488);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E648);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v16 = v0[5];
  v15 = v0[6];
  v42 = v5;
  v43 = v6;
  v40 = v16;
  v41 = v15;

  OUTLINED_FUNCTION_1_0(v17, v18, v19);
  if (qword_1EDA624A0 != -1)
  {
    OUTLINED_FUNCTION_6_13(&qword_1EDA624A0);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E678);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v46 = *(v0 + 7);
  v20 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    v21 = MEMORY[0x1E69A0138];
    v22 = MEMORY[0x1E69E6158];
    v23 = v46;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v40 = v23;
  v41 = v20;
  v42 = v22;
  v43 = v21;
  v24 = sub_1C8D29F88(&v46, &v45);
  OUTLINED_FUNCTION_1_0(v24, v25, v26);
  if (qword_1EC311288 != -1)
  {
    OUTLINED_FUNCTION_5_17(&qword_1EC311288);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3908E0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_11_6();
  v45 = *(v0 + 9);
  v27 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v28 = MEMORY[0x1E69A0138];
    v29 = MEMORY[0x1E69E6158];
    v30 = v45;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v40 = v30;
  v41 = v27;
  v42 = v29;
  v43 = v28;
  v31 = sub_1C8D29F88(&v45, &v44);
  OUTLINED_FUNCTION_1_0(v31, v32, v33);
  if (qword_1EC311290 != -1)
  {
    OUTLINED_FUNCTION_4_17(&qword_1EC311290);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EC3908F8);
  sub_1C9062E5C();
  v44 = *(v0 + 11);
  v34 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v35 = MEMORY[0x1E69A0138];
    v36 = MEMORY[0x1E69E6158];
    v37 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_11_11();
  }

  v40 = v37;
  v41 = v34;
  v42 = v36;
  v43 = v35;
  sub_1C8D29F88(&v44, v39);
  return sub_1C9062BFC();
}

uint64_t sub_1C8D7DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC314468;

  return v5;
}

unint64_t sub_1C8D7DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314478;
  if (!qword_1EC314478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314478);
  }

  return result;
}

unint64_t sub_1C8D7DEAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D7DEEC(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8D7DF40(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D7DF94(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8D7DFE8(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D7DEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314480;
  if (!qword_1EC314480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314480);
  }

  return result;
}

unint64_t sub_1C8D7DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314488;
  if (!qword_1EC314488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314488);
  }

  return result;
}

unint64_t sub_1C8D7DF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62458;
  if (!qword_1EDA62458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62458);
  }

  return result;
}

unint64_t sub_1C8D7DFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314490;
  if (!qword_1EC314490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314490);
  }

  return result;
}

unint64_t sub_1C8D7E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314498;
  if (!qword_1EC314498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314498);
  }

  return result;
}

unint64_t sub_1C8D7E094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624B8;
  if (!qword_1EDA624B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624B8);
  }

  return result;
}

uint64_t sub_1C8D7E1C0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8D7E094(v5, v6, v7);
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for ToolParameterLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D7E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3144B0;
  if (!qword_1EC3144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144B0);
  }

  return result;
}

unint64_t sub_1C8D7E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624A8;
  if (!qword_1EDA624A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624A8);
  }

  return result;
}

unint64_t sub_1C8D7E3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624B0;
  if (!qword_1EDA624B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624B0);
  }

  return result;
}

unint64_t *static TypedValueResolutionCoercion.producing(_:)@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if ((~*result & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = v3 >> 61;
  if (v3 >> 61 == 4)
  {
    result = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v8 >> 61 || *(v8 + 16) != 38)
    {
LABEL_2:
      *a2 = 0;
      return result;
    }

    v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = *(v9 + 16);
    v10 = (v9 + 32);

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v23 == v11)
      {
        result = sub_1C8D076D8(v3);
        *a2 = v12;
        return result;
      }

      if (v11 >= *(v9 + 16))
      {
        break;
      }

      memcpy(__dst, v10, sizeof(__dst));
      memmove(v26, v10, 0x88uLL);
      if (sub_1C8CA638C(v26) == 2)
      {
        v13 = *sub_1C8CA62B8(v26);
        memcpy(v24, __dst, sizeof(v24));
        sub_1C8CA62B8(v24);
      }

      else
      {
        result = sub_1C8CA62B8(v26);
        v13 = MEMORY[0x1E69E7CC0];
      }

      v14 = *(v13 + 16);
      v15 = *(v12 + 16);
      if (__OFADD__(v15, v14))
      {
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v16 = *(v12 + 24) >> 1, v16 < v15 + v14))
      {
        sub_1C8CACA10();
        v12 = v17;
        v16 = *(v17 + 24) >> 1;
      }

      if (*(v13 + 16))
      {
        v18 = v16 - *(v12 + 16);
        result = sub_1C9063C4C();
        if (v18 < v14)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v19 = *(v12 + 16);
          v20 = __OFADD__(v19, v14);
          v21 = v19 + v14;
          if (v20)
          {
            goto LABEL_41;
          }

          *(v12 + 16) = v21;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_39;
        }
      }

      v10 += 136;
      ++v11;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    if (v4 == 1)
    {
      v26[0] = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = v26[0];
      sub_1C8CD1784(v3);

      static TypedValueResolutionCoercion.producing(_:)(v26, a2);
      sub_1C8D076D8(v7);
      return sub_1C8D076D8(v3);
    }

    if (v4)
    {
      goto LABEL_2;
    }

    v5 = *(v3 + 16);
    if (v5 >> 61)
    {
      goto LABEL_2;
    }

    switch(*(v5 + 16))
    {
      case 0x19:
        v6 = 2;
        goto LABEL_36;
      case 0x1B:
        v6 = 1;
        goto LABEL_36;
      case 0x1E:
        v6 = 3;
        goto LABEL_36;
      case 0x21:
        v6 = 4;
        goto LABEL_36;
      case 0x25:
        v6 = 5;
LABEL_36:
        *a2 = v6;
        break;
      case 0x26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B88, &qword_1C9068F20);
        sub_1C9063C4C();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1C906A950;

        sub_1C9063C3C();
        result = sub_1C8D076D8(v3);
        *a2 = v22;
        break;
      default:
        goto LABEL_2;
    }
  }

  return result;
}

uint64_t static TypedValueResolutionCoercion.== infix(_:_:)(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v6)
      {
        goto LABEL_16;
      }

      v5 = 0;
      goto LABEL_12;
    case 1uLL:
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      v5 = 1;
LABEL_12:
      v7 = 1;
      break;
    case 2uLL:
      if (v6 != 2)
      {
        goto LABEL_16;
      }

      v7 = 1;
      v5 = 2;
      break;
    case 3uLL:
      if (v6 != 3)
      {
        goto LABEL_16;
      }

      v7 = 1;
      v5 = 3;
      break;
    case 4uLL:
      if (v6 != 4)
      {
        goto LABEL_16;
      }

      v7 = 1;
      v5 = 4;
      break;
    case 5uLL:
      if (v6 != 5)
      {
        goto LABEL_16;
      }

      v7 = 1;
      v5 = 5;
      break;
    default:
      if (v6 >= 6)
      {
        sub_1C8D7E8F4(*a2, a2, a3, a4, a5);
        sub_1C8D7E8F4(v5, v13, v14, v15, v16);
        sub_1C8CEAF48();
        v7 = v17;
      }

      else
      {
LABEL_16:
        sub_1C8D7E8F4(*a2, a2, a3, a4, a5);
        sub_1C8D7E8F4(v5, v8, v9, v10, v11);
        v7 = 0;
      }

      break;
  }

  sub_1C8D7E904(v5);
  sub_1C8D7E904(v6);
  return v7 & 1;
}

unint64_t sub_1C8D7E8F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 6)
  {
  }

  return result;
}

unint64_t sub_1C8D7E904(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit28TypedValueResolutionCoercionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8D7E92C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8D7E984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_1C8D7E9D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C8D7EA04@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v69 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v69 - v8;
  v9 = v1[1];
  v84 = *v1;
  v10 = type metadata accessor for FetchedToolDisplayMetadata(0);
  v11 = *(v10 + 44);
  v12 = v1 + *(v10 + 40);
  v13 = *(v12 + 32);
  v82 = *(v12 + 24);
  v83 = v9;
  v79 = v12;
  v80 = *(v1 + 32);
  v14 = *(v1 + v11);
  v15 = *(v14 + 16);
  v88 = v1;
  v89 = v5;
  v87 = v10;
  v81 = v13;
  if (v15)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];

    v16 = OUTLINED_FUNCTION_3_22();
    sub_1C8D09BC4(v16, v17, v18);
    v19 = __dst[0];
    v20 = (v14 + 64);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      __dst[0] = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);

      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_8_18();
        sub_1C8D09BC4(v26, v27, v28);
        v19 = __dst[0];
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      v20 += 5;
      --v15;
    }

    while (v15);
    v1 = v88;
    v5 = v89;
    v29 = v87;
  }

  else
  {
    v29 = v10;

    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v1 + v29[12]);
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_22();
    sub_1C8CA6480();
    v32 = __dst[0];
    v33 = (v30 + 64);
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;
      __dst[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);

      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_8_18();
        sub_1C8CA6480();
        v32 = __dst[0];
      }

      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      v33 += 6;
      --v31;
    }

    while (v31);
    v1 = v88;
    v5 = v89;
    v29 = v87;
  }

  v39 = *(v1 + v29[9]);
  v40 = v1[2];
  v76 = v1[3];
  memcpy(__dst, v1 + v29[13], 0x88uLL);
  v78 = v39;

  sub_1C8D50178(__dst, v96);
  sub_1C8F28B4C(__dst, v92);
  v41 = v29[14];
  memcpy(v93, v1 + v41, sizeof(v93));
  memcpy(v94, v1 + v41, sizeof(v94));
  v42 = sub_1C8CE5448(v94);
  v77 = v40;
  if (v42 == 1)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
  }

  else
  {
    memcpy(v96, v93, sizeof(v96));
    memcpy(v95, v93, sizeof(v95));
    sub_1C8D50178(v95, v90);
    sub_1C8F28B4C(v96, v90);
    v74 = v90[0];
    v72 = v90[1];
    v73 = v90[2];
    v70 = v90[3];
    v71 = v90[5];
    v69 = v90[4];
    v75 = LOBYTE(v90[6]);
  }

  v43 = *(v1 + v29[15]);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
    v91 = MEMORY[0x1E69E7CC0];
    v46 = OUTLINED_FUNCTION_3_22();
    sub_1C8D09B8C(v46, v47, v48);
    v45 = v91;
    v49 = (v43 + 32);
    do
    {
      memcpy(v95, v49, sizeof(v95));
      sub_1C8D50178(v95, v90);
      sub_1C8F28B4C(v95, v90);
      v91 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1C8D09B8C(v50 > 1, v51 + 1, 1);
        v45 = v91;
      }

      *(v45 + 16) = v51 + 1;
      memcpy((v45 + 104 * v51 + 32), v90, 0x61uLL);
      v49 += 136;
      --v44;
    }

    while (v44);
    v1 = v88;
    v5 = v89;
    v29 = v87;
  }

  v52 = *(v79 + 56);
  v53 = *(v79 + 64);
  sub_1C8D24768(v1 + v29[8], v5);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v54);
  v56 = v85;
  if (EnumTagSinglePayload == 1)
  {

    sub_1C8D16D78(v5, &qword_1EC313190, &unk_1C9074070);
    v57 = 1;
  }

  else
  {
    sub_1C8D80B88(v5, v85, type metadata accessor for ToolIcon);

    sub_1C8D16D78(v5, &qword_1EC313198, &unk_1C9074080);
    v57 = 0;
  }

  v58 = v78;
  v59 = v76;
  v60 = type metadata accessor for ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v56, v57, 1, v60);
  v61 = v56;
  v62 = v86;
  v63 = v83;
  *v86 = v84;
  v62[1] = v63;
  v64 = v81;
  v62[2] = v82;
  v62[3] = v64;
  *(v62 + 32) = v80;
  v62[5] = v19;
  v62[6] = v32;
  v65 = v77;
  v62[7] = v58;
  v62[8] = v65;
  v62[9] = v59;
  memcpy(v62 + 10, v92, 0x61uLL);
  *(v62 + 25) = v72;
  *(v62 + 23) = v74;
  v66 = v69;
  *(v62 + 29) = v70;
  *(v62 + 31) = v66;
  *(v62 + 27) = v73;
  *(v62 + 33) = v71;
  *(v62 + 280) = v75;
  v62[36] = v45;
  v62[37] = v52;
  v62[38] = v53;
  v67 = type metadata accessor for ToolDisplayMetadata(0);
  return sub_1C8D80354(v61, v62 + *(v67 + 64));
}

uint64_t type metadata accessor for FetchedToolDisplayMetadata(uint64_t a1)
{
  result = qword_1EDA62920;
  if (!qword_1EDA62920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D7EFD0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v30 - v5;
  v7 = type metadata accessor for FetchedToolDisplayMetadata(0);
  v8 = v7[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = v7[14];
  sub_1C8D805E4(__src);
  memcpy((a2 + v10), __src, 0x88uLL);
  sub_1C8E2B294();
  *a2 = v11;
  *(a2 + 8) = v12;
  sub_1C8E2B088();
  *(a2 + 16) = v13;
  sub_1C8E2B088();
  *(a2 + 24) = v14;
  sub_1C8E2B294();
  ToolTypeDefinition.init(rawValue:)(v15);
  v16 = v31[0];
  if (LOBYTE(v31[0]) == 5)
  {
    v16 = 3;
  }

  *(a2 + 32) = v16;
  sub_1C905CBB0(v6);
  sub_1C8D805EC(v6, a2 + v8);
  sub_1C8D279AC(0x6D65726975716572);
  *(a2 + v7[9]) = v17;
  sub_1C8D8065C(v17, v18, v19);
  sub_1C9062E0C();
  memcpy((a2 + v7[10]), v31, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C0, &qword_1C9074120);
  v20 = sub_1C8D80758(&qword_1EDA60510, &qword_1EC3144C0, &qword_1C9074120);
  sub_1C8D806B0(v20, v21, v22);
  sub_1C9062E1C();
  *(a2 + v7[11]) = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C8, &qword_1C9074128);
  v23 = sub_1C8D80758(&qword_1EDA604E8, &qword_1EC3144C8, &qword_1C9074128);
  sub_1C8CE6D7C(v23, v24, v25);
  v26 = sub_1C9062E1C();
  *(a2 + v7[12]) = v31[0];
  sub_1C8D80704(v26, v27, v28);
  sub_1C9062E0C();
  memcpy((a2 + v7[13]), v31, 0x88uLL);
  sub_1C9062E2C();
  memcpy(v32, v30, sizeof(v32));
  memcpy(v31, (a2 + v10), 0x88uLL);
  sub_1C8D16D78(v31, &qword_1EC3144D0, &qword_1C9074130);
  memcpy((a2 + v10), v32, 0x88uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144D8, &qword_1C9074138);
  sub_1C8D80758(&qword_1EDA604E0, &qword_1EC3144D8, &qword_1C9074138);
  sub_1C9062E1C();

  *(a2 + v7[15]) = v30[0];
  return result;
}

uint64_t sub_1C8D7F468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C696269736976 && a2 == 0xEF7367616C467974;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657079546C6F6F74 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x63496D6F74737563 && a2 == 0xEA00000000006E6FLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x654B686372616573 && a2 == 0xEE007364726F7779;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD00000000000001FLL && 0x80000001C90CA2C0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C9064C2C();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1C8D7F82C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7367616C66;
      break;
    case 2:
      result = 0x696C696269736976;
      break;
    case 3:
      result = 0x657079546C6F6F74;
      break;
    case 4:
      result = 0x63496D6F74737563;
      break;
    case 5:
      result = 0x6D65726975716572;
      break;
    case 6:
      result = 0x617A696C61636F6CLL;
      break;
    case 7:
      result = 0x69726F6765746163;
      break;
    case 8:
      result = 0x654B686372616573;
      break;
    case 9:
      result = 0x6F43656372756F73;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D7F9B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144E0, &unk_1C9074140);
  v53[1] = *(v7 - 8);
  v54 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  v11 = type metadata accessor for FetchedToolDisplayMetadata(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  v69 = v16;
  __swift_storeEnumTagSinglePayload(&v14[v16], 1, 1, v17);
  v59 = v11;
  v18 = *(v11 + 56);
  sub_1C8D805E4(__src);
  v56 = v18;
  memcpy(&v14[v18], __src, 0x88uLL);
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D807AC(v19, v20, v21);
  v55 = v10;
  v22 = v58;
  sub_1C9064DEC();
  v57 = v14;
  if (v22)
  {
    v58 = v22;
    LODWORD(v55) = 0;
    LODWORD(v54) = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v57;
    goto LABEL_4;
  }

  LOBYTE(v67[0]) = 0;
  v23 = sub_1C9064A0C();
  *v14 = v23;
  *(v14 + 1) = v24;
  LOBYTE(v65[0]) = 1;
  sub_1C8D21F34(v23, v24, v25);
  OUTLINED_FUNCTION_0_33();
  v26 = sub_1C9064A6C();
  *(v14 + 2) = v67[0];
  LOBYTE(v65[0]) = 2;
  sub_1C8D21F88(v26, v27, v28);
  OUTLINED_FUNCTION_0_33();
  v29 = sub_1C9064A6C();
  *(v14 + 3) = v67[0];
  LOBYTE(v65[0]) = 3;
  sub_1C8D21EE0(v29, v30, v31);
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_9_12();
  sub_1C9064A6C();
  v14[32] = v67[0];
  LOBYTE(v67[0]) = 4;
  sub_1C8D80854();
  OUTLINED_FUNCTION_9_12();
  sub_1C90649EC();
  sub_1C8D805EC(v6, &v14[v69]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  LOBYTE(v65[0]) = 5;
  sub_1C8D80984();
  OUTLINED_FUNCTION_9_12();
  v38 = sub_1C9064A6C();
  v39 = v59;
  *&v14[v59[9]] = v67[0];
  v66 = 6;
  sub_1C8D80A10(v38, v40, v41);
  OUTLINED_FUNCTION_9_12();
  sub_1C9064A6C();
  memcpy(&v14[v39[10]], v67, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C0, &qword_1C9074120);
  v64[0] = 7;
  sub_1C8D80B0C(&qword_1EDA667A8, &qword_1EC3144C0, &qword_1C9074120, sub_1C8D80A64);
  OUTLINED_FUNCTION_2_23();
  *&v14[v39[11]] = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144C8, &qword_1C9074128);
  v64[0] = 8;
  sub_1C8D80B0C(&qword_1EDA66778, &qword_1EC3144C8, &qword_1C9074128, sub_1C8CE6E24);
  v42 = OUTLINED_FUNCTION_2_23();
  v58 = 0;
  *&v57[v59[12]] = v65[0];
  v64[143] = 9;
  sub_1C8D80AB8(v42, v43, v44);
  OUTLINED_FUNCTION_11_12();
  sub_1C9064A6C();
  v58 = 0;
  memcpy(&v57[v59[13]], v65, 0x88uLL);
  v63[143] = 10;
  OUTLINED_FUNCTION_11_12();
  sub_1C90649EC();
  v58 = 0;
  memcpy(v62, v64, sizeof(v62));
  v46 = v56;
  v45 = v57;
  memcpy(v63, &v57[v56], 0x88uLL);
  sub_1C8D16D78(v63, &qword_1EC3144D0, &qword_1C9074130);
  memcpy(&v45[v46], v62, 0x88uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144D8, &qword_1C9074138);
  v60 = 11;
  sub_1C8D80B0C(&qword_1EDA66758, &qword_1EC3144D8, &qword_1C9074138, sub_1C8D80AB8);
  v47 = v58;
  sub_1C9064A6C();
  v58 = v47;
  if (v47)
  {
    v48 = OUTLINED_FUNCTION_6_14();
    v49(v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_1_29();
    v35 = v57;

    v32 = 1;
    v33 = 1;
    v34 = 1;
LABEL_4:
    sub_1C8D16D78(&v35[v69], &qword_1EC313190, &unk_1C9074070);
    v36 = v59;
    if (v55)
    {
    }

    if (v54)
    {
      memcpy(v67, &v35[v36[10]], sizeof(v67));
      sub_1C8D80800(v67);
      if (!v32)
      {
        goto LABEL_8;
      }
    }

    else if (!v32)
    {
LABEL_8:
      if (v33)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v33)
    {
LABEL_9:

      if (!v34)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (!v34)
    {
LABEL_15:
      memcpy(v67, &v35[v56], 0x88uLL);
      return sub_1C8D16D78(v67, &qword_1EC3144D0, &qword_1C9074130);
    }

LABEL_14:
    memcpy(v67, &v35[v36[13]], 0x88uLL);
    sub_1C8D501D4(v67);
    goto LABEL_15;
  }

  v50 = OUTLINED_FUNCTION_6_14();
  v51(v50);
  v52 = v57;
  *&v57[v59[15]] = v61;
  sub_1C8D80B88(v52, v53[0], type metadata accessor for FetchedToolDisplayMetadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C8D80BE8(v52);
}

uint64_t sub_1C8D80270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D7F468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D80298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D7F824();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D802C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D807AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D802FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D807AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D80354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C8D803EC(uint64_t a1)
{
  sub_1C8D1FD94(319);
  if (v1 <= 0x3F)
  {
    sub_1C8D1FBBC(319, v1, v2);
    if (v3 <= 0x3F)
    {
      sub_1C8D80594(319, &qword_1EDA667B0, &type metadata for CategoryRecord, MEMORY[0x1E69E62F8]);
      if (v4 <= 0x3F)
      {
        sub_1C8D80594(319, &qword_1EDA66780, &type metadata for SearchKeywordRecord, MEMORY[0x1E69E62F8]);
        if (v5 <= 0x3F)
        {
          sub_1C8D80594(319, &qword_1EDA668B8, &type metadata for FetchedContainerMetadata, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            sub_1C8D80594(319, &qword_1EDA66760, &type metadata for FetchedContainerMetadata, MEMORY[0x1E69E62F8]);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C8D80594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C8D805EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D8065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624D0;
  if (!qword_1EDA624D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624D0);
  }

  return result;
}

unint64_t sub_1C8D806B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60CA8;
  if (!qword_1EDA60CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60CA8);
  }

  return result;
}

unint64_t sub_1C8D80704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63078;
  if (!qword_1EDA63078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63078);
  }

  return result;
}

uint64_t sub_1C8D80758(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C8D807AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3144E8;
  if (!qword_1EC3144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144E8);
  }

  return result;
}

unint64_t sub_1C8D80854()
{
  result = qword_1EC3131D0;
  if (!qword_1EC3131D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313198, &unk_1C9074080);
    sub_1C8D8093C(&qword_1EDA68EC0, type metadata accessor for ToolIcon, &protocol conformance descriptor for ToolIcon);
    sub_1C8D8093C(qword_1EDA68EC8, type metadata accessor for ToolIcon, &protocol conformance descriptor for ToolIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3131D0);
  }

  return result;
}

uint64_t sub_1C8D8093C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8D80984()
{
  result = qword_1EDA69140;
  if (!qword_1EDA69140)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131B8, &unk_1C906B520);
    v6 = sub_1C8D21FDC(v1, v2, v3);
    sub_1C8D22030(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69140);
  }

  return result;
}

unint64_t sub_1C8D80A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA691E0;
  if (!qword_1EDA691E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691E0);
  }

  return result;
}

unint64_t sub_1C8D80A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA669F0;
  if (!qword_1EDA669F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669F0);
  }

  return result;
}

unint64_t sub_1C8D80AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695D0;
  if (!qword_1EDA695D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695D0);
  }

  return result;
}

uint64_t sub_1C8D80B0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t sub_1C8D80B88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8D80BE8(uint64_t a1)
{
  v2 = type metadata accessor for FetchedToolDisplayMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FetchedToolDisplayMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D80D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3144F0;
  if (!qword_1EC3144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144F0);
  }

  return result;
}

unint64_t sub_1C8D80D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3144F8;
  if (!qword_1EC3144F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3144F8);
  }

  return result;
}

unint64_t sub_1C8D80DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314500;
  if (!qword_1EC314500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314500);
  }

  return result;
}

uint64_t CompoundPredicate.init(protobuf:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v5 = *a1 != 1;
    type metadata accessor for ComparisonPredicate(0);
    sub_1C8D811A8(&dword_1EC314508, &protocol conformance descriptor for ComparisonPredicate);

    v6 = sub_1C90641EC();
    if (!v2)
    {
      v7 = v6;
      result = sub_1C8D81014(a1);
      *a2 = v5;
      *(a2 + 8) = v7;
      return result;
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC314510, &qword_1C9074268);
    v10 = sub_1C8D81070();
    OUTLINED_FUNCTION_29_0(v10);
    *v11 = &type metadata for CompoundPredicate.Operator;
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E08A8], v9);
    swift_willThrow();
  }

  return sub_1C8D81014(a1);
}

ToolKit::CompoundPredicate::Operator __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CompoundPredicate.Operator.init(protobuf:)(ToolKit::CompoundPredicate::Operator protobuf)
{
  if (*protobuf)
  {
    *v1 = *protobuf != 1;
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC314510, &qword_1C9074268);
    v3 = sub_1C8D81070();
    OUTLINED_FUNCTION_29_0(v3);
    *v4 = &type metadata for CompoundPredicate.Operator;
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E08A8], v2);
    return swift_willThrow();
  }

  return protobuf;
}

uint64_t sub_1C8D81014(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8D81070()
{
  result = qword_1EC314518;
  if (!qword_1EC314518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&dword_1EC314510, &qword_1C9074268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314518);
  }

  return result;
}

uint64_t CompoundPredicate.protobuf(useCase:)@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  type metadata accessor for ComparisonPredicate(0);
  sub_1C8D811A8(&qword_1EC314520, &protocol conformance descriptor for ComparisonPredicate);
  result = sub_1C90641FC();
  if (!v3)
  {
    v7 = result;
    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    type metadata accessor for ToolKitProtoCompoundPredicate(0);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a2 = v8;
    *(a2 + 8) = v7;
  }

  return result;
}

void CompoundPredicate.Operator.protobuf(useCase:)(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_1C8D811A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComparisonPredicate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8D811F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314528;
  if (!qword_1EC314528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314528);
  }

  return result;
}

unint64_t sub_1C8D81278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC314530;
  if (!qword_1EC314530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314530);
  }

  return result;
}

void TypeInstance.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_35_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      type metadata accessor for ToolKitProtoTypeInstance(0);
      v39 = swift_allocBox();
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)();
      if (v2)
      {
        goto LABEL_15;
      }

      v17 = v39 | 0x2000000000000000;
      goto LABEL_23;
    case 2uLL:
      v82[1] = v3;
      v29 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
      v30 = swift_allocBox();
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)();
      if (v2)
      {
        goto LABEL_15;
      }

      v82[0] = v30;
      v55 = type metadata accessor for ToolKitProtoTypeInstance(0);
      v56 = 1;
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
      if ((~v29 & 0xF000000000000007) != 0)
      {

        OUTLINED_FUNCTION_36_7();
        TypedValue.protobuf(useCase:)();
        v60 = v55;

        v56 = 0;
      }

      else
      {
        v60 = v55;
      }

      v73 = v82[0];
      v74 = type metadata accessor for ToolKitProtoTypedValue(0);
      __swift_storeEnumTagSinglePayload(v11, v56, 1, v74);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v60);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v74);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      sub_1C8D7300C();
      v17 = v73 | 0x4000000000000000;
      goto LABEL_23;
    case 3uLL:
      type metadata accessor for ToolKitProtoTypeInstance.Union(0);
      v31 = swift_allocBox();
      v33 = v32;
      v35 = sub_1C8CAF814(v31, v32, v34);
      sub_1C8D824C4(v35, v36, v37);
      v38 = sub_1C906437C();
      if (v0)
      {
        goto LABEL_15;
      }

      v61 = v38;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v33 = v61;
      v17 = v31 | 0x6000000000000000;
      goto LABEL_23;
    case 4uLL:
      type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
      v18 = swift_allocBox();
      v20 = v19;
      OUTLINED_FUNCTION_38_8();
      TypeIdentifier.protobuf(useCase:)(v4);
      v21 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
      OUTLINED_FUNCTION_150();
      v25 = __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      sub_1C8D819EC(v25, v26, v27);
      v28 = sub_1C90641FC();
      if (v0)
      {
        sub_1C8CD0CC8(v5, &qword_1EC3139D8);
        goto LABEL_15;
      }

      v51 = v28;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v21);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      *v20 = v51;
      v17 = v18 | 0x8000000000000000;
      goto LABEL_23;
    case 5uLL:
      type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
      v40 = swift_allocBox();
      v42 = v41;
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)();
      if (v2)
      {
        goto LABEL_15;
      }

      v43 = type metadata accessor for ToolKitProtoTypeInstance(0);
      OUTLINED_FUNCTION_150();
      v47 = __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
      sub_1C8D819EC(v47, v48, v49);
      v69 = sub_1C90641FC();
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v43);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      *v42 = v69;
      v17 = v40 | 0xC000000000000000;
      goto LABEL_23;
    case 6uLL:
      type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
      v50 = swift_allocBox();

      OUTLINED_FUNCTION_36_7();
      TypeInstance.protobuf(useCase:)();
      if (v2)
      {

LABEL_15:
        swift_deallocBox();
      }

      else
      {
        v62 = type metadata accessor for ToolKitProtoTypeInstance(0);
        OUTLINED_FUNCTION_150();
        __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v66, v67, v68, v62);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

        sub_1C8D7300C();
        v17 = v50 | 0xA000000000000000;
LABEL_23:
        v81 = type metadata accessor for ToolKitProtoTypeInstance(0);
        MEMORY[0x1EEE9AC00](v81);
        v82[-2] = v17;
        sub_1C8D852C4(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
        sub_1C9063ACC();
      }

      OUTLINED_FUNCTION_198();
      return;
    default:
      type metadata accessor for ToolKitProtoTypeIdentifier(0);
      v17 = swift_allocBox();
      OUTLINED_FUNCTION_38_8();
      TypeIdentifier.protobuf(useCase:)(v4);
      goto LABEL_23;
  }
}

unint64_t sub_1C8D819EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635C0;
  if (!qword_1EDA635C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635C0);
  }

  return result;
}

void TypeInstance.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v14 = OUTLINED_FUNCTION_44_9(v13);
  v145 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(v14);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v148 = v16;
  v17 = OUTLINED_FUNCTION_111();
  v18 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(v17);
  v19 = OUTLINED_FUNCTION_9(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_0();
  v146 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v21);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  v143 = &v138 - v23;
  v24 = OUTLINED_FUNCTION_111();
  v142 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(v24);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v147 = v26;
  v27 = OUTLINED_FUNCTION_111();
  v28 = type metadata accessor for ToolKitProtoTypeInstance.Union(v27);
  v29 = OUTLINED_FUNCTION_9(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_0();
  v144 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_9(v31);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v140 = &v138 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v35 = OUTLINED_FUNCTION_9(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v138 - v41;
  v139 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_7_0();
  v141 = v44;
  v45 = OUTLINED_FUNCTION_111();
  v46 = type metadata accessor for ToolKitProtoTypeInstance(v45);
  v47 = OUTLINED_FUNCTION_9(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_32();
  v52 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v53 = OUTLINED_FUNCTION_9(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_25();
  v56 = (v54 - v55);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v138 - v58;
  v60 = v11;
  v61 = *v11;
  if ((~v61 & 0xF000000000000007) != 0)
  {
    v138 = v60;
    switch(v61 >> 61)
    {
      case 1uLL:
        v85 = v61;
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v101 = swift_allocObject();
        sub_1C8D85734();

        TypeInstance.init(protobuf:)(v50, v102, v103, v104, v105, v106, v107, v108, v138, v139);
        sub_1C8D85364(v138, type metadata accessor for ToolKitProtoTypeInstance);
        sub_1C8D85364(v10, type metadata accessor for ToolKitProtoTypeInstance);
        if (a10)
        {
          goto LABEL_21;
        }

        sub_1C8CD0FB0(v61);
        v71 = v101 | 0x2000000000000000;
        goto LABEL_28;
      case 2uLL:
        v85 = v61;
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_2();
        v86 = swift_allocObject();
        v87 = sub_1C8D63FCC();
        v90 = sub_1C8D1FD40(v87, v88, v89);

        OUTLINED_FUNCTION_30_9(v42, &type metadata for TypeInstance);
        if (v90)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v138, v91);
          OUTLINED_FUNCTION_10_14();
          goto LABEL_21;
        }

        v126 = sub_1C8D63FCC();
        sub_1C8D4F068(v126, v127, v128);
        sub_1C906350C();
        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v138, v135);
        OUTLINED_FUNCTION_10_14();
        sub_1C8CD0FB0(v61);
        v71 = v86 | 0x4000000000000000;
        goto LABEL_28;
      case 3uLL:
        v85 = v61;
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v92 = swift_allocObject();
        v93 = sub_1C8CD1784(v61);
        v96 = sub_1C8CAF814(v93, v94, v95);
        sub_1C8D1FD40(v96, v97, v98);

        v99 = sub_1C906436C();
        if (!a10)
        {
          v129 = v99;
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v138, v130);
          OUTLINED_FUNCTION_21_9();
          *(v92 + 16) = v129;
          sub_1C8CD0FB0(v85);
          v71 = v92 | 0x6000000000000000;
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v138, v100);
        OUTLINED_FUNCTION_21_9();
LABEL_21:
        swift_deallocUninitializedObject();
        v84 = v85;
        goto LABEL_27;
      case 4uLL:
        v73 = v61;
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_2();
        v74 = swift_allocObject();
        v75 = v143;
        v76 = sub_1C8D63FCC();
        v79 = sub_1C8D4F014(v76, v77, v78);

        v80 = OUTLINED_FUNCTION_30_9(v75, &type metadata for TypeIdentifier);
        if (v79)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v138, v83);
          OUTLINED_FUNCTION_11_13();
          OUTLINED_FUNCTION_2();
          swift_deallocUninitializedObject();
          v84 = v73;
          goto LABEL_27;
        }

        v124 = v73;
        sub_1C8D82518(v80, v81, v82);

        v125 = sub_1C90641EC();
        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v133, v134);
        OUTLINED_FUNCTION_11_13();
        *(v74 + 24) = v125;
        sub_1C8CD0FB0(v124);
        v71 = v74 | 0x8000000000000000;
        goto LABEL_28;
      case 5uLL:
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v109 = swift_allocObject();
        v110 = sub_1C8D63FCC();
        v113 = sub_1C8D1FD40(v110, v111, v112);

        OUTLINED_FUNCTION_30_9(v12, &type metadata for TypeInstance);
        if (v113)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v138, v114);
          OUTLINED_FUNCTION_20_10();
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v138, v131);
        OUTLINED_FUNCTION_20_10();
        sub_1C8CD0FB0(v61);
        v71 = v109 | 0xC000000000000000;
        goto LABEL_28;
      case 6uLL:
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_2();
        v115 = swift_allocObject();
        v116 = sub_1C8D63FCC();
        v119 = sub_1C8D1FD40(v116, v117, v118);

        v120 = OUTLINED_FUNCTION_30_9(v38, &type metadata for TypeInstance);
        if (v119)
        {
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v138, v123);
          OUTLINED_FUNCTION_9_13();
LABEL_26:
          swift_deallocUninitializedObject();
          v84 = v61;
LABEL_27:
          sub_1C8CD0FB0(v84);
        }

        else
        {
          sub_1C8D82518(v120, v121, v122);

          v132 = sub_1C90641EC();
          OUTLINED_FUNCTION_0_34();
          sub_1C8D85364(v136, v137);
          OUTLINED_FUNCTION_9_13();
          *(v115 + 24) = v132;
          sub_1C8CD0FB0(v61);
          v71 = v115 | 0xA000000000000000;
LABEL_28:
          *v149 = v71;
        }

        break;
      default:
        swift_projectBox();
        sub_1C8D85734();
        OUTLINED_FUNCTION_50();
        v71 = swift_allocObject();
        OUTLINED_FUNCTION_211();
        sub_1C8D85734();

        TypeIdentifier.init(protobuf:)(v56, (v71 + 16));
        OUTLINED_FUNCTION_0_34();
        sub_1C8D85364(v138, v72);
        sub_1C8D85364(v59, type metadata accessor for ToolKitProtoTypeIdentifier);
        if (a10)
        {
          goto LABEL_26;
        }

        sub_1C8CD0FB0(v61);
        goto LABEL_28;
    }
  }

  else
  {
    v62 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
    OUTLINED_FUNCTION_116();
    v67 = sub_1C8D4F674(v64, v65, v66);
    OUTLINED_FUNCTION_89(v67);
    *v68 = &type metadata for ToolKitProtoTypeInstanceKind;
    OUTLINED_FUNCTION_10_0();
    (*(v69 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_34();
    sub_1C8D85364(v60, v70);
  }

  OUTLINED_FUNCTION_198();
}