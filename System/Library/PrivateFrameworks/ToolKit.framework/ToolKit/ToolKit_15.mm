unint64_t sub_1C8DD7858()
{
  result = qword_1EC315458;
  if (!qword_1EC315458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC315450, &qword_1C907CDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315458);
  }

  return result;
}

uint64_t sub_1C8DD78BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SystemTypeProtocol.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v61 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v60 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v53 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v53 - v12);
  type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v53 - v18;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v24 = v1[4];
  v23 = v1[5];
  v25 = v1[6];
  switch(*(v1 + 56))
  {
    case 1:
      v49 = *v1;
      type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);

      v25 = v56;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v25 = v49;
      *(v25 + 8) = v20;
      goto LABEL_28;
    case 2:
      v53 = v17;
      v54 = v16;
      v31 = *(v19 + 16);
      v32 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v62 = MEMORY[0x1E69E7CC0];
        v33 = v19;
        sub_1C8CA6480();
        v32 = v62;
        v35 = *(v3 + 16);
        v34 = v3 + 16;
        v36 = v33 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
        v57 = *(v34 + 56);
        v58 = v35;
        v59 = v34;
        v37 = (v34 - 8);
        do
        {
          v38 = v60;
          v39 = v61;
          v58(v60, v36, v61);
          v40 = sub_1C9063C1C();
          v42 = v41;
          (*v37)(v38, v39);
          v62 = v32;
          v43 = *(v32 + 16);
          if (v43 >= *(v32 + 24) >> 1)
          {
            sub_1C8CA6480();
            v32 = v62;
          }

          *(v32 + 16) = v43 + 1;
          v44 = v32 + 16 * v43;
          *(v44 + 32) = v40;
          *(v44 + 40) = v42;
          v36 += v57;
          --v31;
        }

        while (v31);
      }

      type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
      v45 = v53;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v45 = v32;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_22();
      v25 = v56;
      sub_1C8DD8008(v45, v56, v46);
      goto LABEL_29;
    case 3:
      v47 = v24 | v23 | v25;
      if (v22 | v20 | v19 | v21 | v47)
      {
        v48 = v22 | v20 | v21 | v47;
        v25 = v56;
        if ((v19 != 1 || v48) && (v19 != 2 || v48) && (v19 != 3 || v48) && (v19 != 4 || v48) && (v19 != 5 || v48) && (v19 != 6 || v48) && (v19 != 7 || v48) && (v19 != 8 || v48) && (v19 != 9 || v48) && (v19 != 10 || v48) && (v19 != 11 || v48))
        {
          OUTLINED_FUNCTION_8_22();
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_22();
      }

      goto LABEL_28;
    default:
      v54 = v16;
      v26 = v19;
      v61 = v23;
      v27 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v9 = v22;
      v9[1] = v21;
      v9[2] = v24;
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v27);
      v28 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
      v29 = *(v28 + 24);
      __swift_storeEnumTagSinglePayload(v13 + v29, 1, 1, v27);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v13 = v26;
      v13[1] = v20;
      sub_1C8D61094(v9, v13 + v29, &qword_1EC313F28, &qword_1C9072058);
      v13[2] = v61;
      v13[3] = v25;
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v28);
      v30 = OUTLINED_FUNCTION_8_22();
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v28);
      type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D61094(v13, v25, &qword_1EC313F20, &unk_1C9074D20);
LABEL_28:
      swift_storeEnumTagMultiPayload();
LABEL_29:
      v50 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      MEMORY[0x1EEE9AC00](v50);
      *(&v53 - 2) = v25;
      sub_1C8DD80DC();
      sub_1C9063ACC();
      OUTLINED_FUNCTION_0_44();
      return sub_1C8DD8068(v25, v51);
  }
}

uint64_t sub_1C8DD7F68(uint64_t a1, uint64_t a2)
{
  sub_1C8D16D78(a1, &qword_1EC312A68, &qword_1C9074DB0);
  sub_1C8DD78BC(a2, a1);
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_1C8DD8008(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8DD8068(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8DD80DC()
{
  result = qword_1EDA64710[0];
  if (!qword_1EDA64710[0])
  {
    type metadata accessor for ToolKitProtoSystemTypeProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA64710);
  }

  return result;
}

uint64_t sub_1C8DD8138()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC315460);
  __swift_project_value_buffer(v0, qword_1EC315460);
  return sub_1C9063D2C();
}

uint64_t static ToolSummaryComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v14 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1C9064C2C();
        v16 = OUTLINED_FUNCTION_100();
        v17 = OUTLINED_FUNCTION_143_1(v16);
        OUTLINED_FUNCTION_143_1(v17);
        j_j__OUTLINED_FUNCTION_265();
        OUTLINED_FUNCTION_100();
        goto LABEL_16;
      }

      v20 = OUTLINED_FUNCTION_143_1(v14);
      OUTLINED_FUNCTION_143_1(v20);
      j_j__OUTLINED_FUNCTION_265();
      j_j__OUTLINED_FUNCTION_265();
      return 1;
    }

LABEL_9:
    v10 = OUTLINED_FUNCTION_100();
    v11 = OUTLINED_FUNCTION_143_1(v10);
    OUTLINED_FUNCTION_143_1(v11);
    j_j__OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_100();
    j_j__OUTLINED_FUNCTION_265();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v12 = 1;
    v18 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v18);
    v19 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v19);
    OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265();
    return v12;
  }

  v7 = sub_1C9064C2C();
  v8 = OUTLINED_FUNCTION_100();
  j_j__OUTLINED_FUNCTION_264(v8);
  v9 = OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_264(v9);
  OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_100();
LABEL_16:
  j_j__OUTLINED_FUNCTION_265();
  return v7 & 1;
}

uint64_t ToolSummaryComponent.hash(into:)()
{
  MEMORY[0x1CCA82810](*(v0 + 16));
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t ToolSummaryComponent.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DD83EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v2);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t ToolSummaryString.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x1CCA82810](v3);
  if (v3)
  {
    v5 = (v2 + 48);
    do
    {
      v6 = *v5;
      v5 += 24;
      MEMORY[0x1CCA82810](v6);

      sub_1C9063FBC();
      result = j_j__OUTLINED_FUNCTION_265();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ToolSummaryString.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C8D04B00();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DD8548(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C8D04B00();
  return sub_1C9064DBC();
}

uint64_t ToolInvocationSignature.visibleParameterKeys.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ToolInvocationSignature.invisibleParameterKeys.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolInvocationSignature.valueConstraints.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void static ToolInvocationSignature.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1C8D2A650(*a1, *a2);
  if (v4)
  {
    sub_1C8D2A650(v2, v3);
    if (v5)
    {
      OUTLINED_FUNCTION_94();

      sub_1C8F582DC();
    }
  }
}

uint64_t ToolInvocationSignature.hash(into:)(void *a1)
{
  sub_1C8D39BF8(a1, *v1);
  v2 = OUTLINED_FUNCTION_145();
  sub_1C8D39BF8(v2, v3);
  v4 = OUTLINED_FUNCTION_94();

  return sub_1C8DC7678(v4, v5);
}

uint64_t ToolInvocationSignature.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  sub_1C8D39BF8(__src, v1);
  sub_1C8D39BF8(__src, v2);
  sub_1C8DC7678(__src, v3);
  return sub_1C9064DBC();
}

uint64_t sub_1C8DD87C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1C9064D7C();
  sub_1C8D39BF8(__src, v2);
  sub_1C8D39BF8(__src, v3);
  sub_1C8DC7678(__src, v4);
  return sub_1C9064DBC();
}

void ToolInvocationSignature.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = sub_1C8DD8EA4(v1);
  v4 = v3;
  v5 = v3[2];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v70 = v3 + 4;
    v8 = MEMORY[0x1E69E7CC0];
    v65 = v3;
    v66 = v2;
    v67 = v3[2];
    while (v7 < v4[2])
    {
      if (*(v2 + 16))
      {
        v9 = &v70[2 * v7];
        v11 = *v9;
        v10 = v9[1];

        v12 = sub_1C8CAE064(v11, v10);
        if (v13)
        {
          v69 = v7;
          v14 = *(*(v2 + 56) + 8 * v12);
          if (*(v14 + 16))
          {
            v68 = v8;
            v84 = v11;
            v85 = v10;

            MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
            v15 = *(v14 + 16);
            if (v15)
            {
              sub_1C8CA6480();
              v77 = v6;
              v16 = sub_1C8D3F274();
              v19 = v16;
              v20 = 0;
              v76 = v14 + 56;
              if ((v16 & 0x8000000000000000) == 0)
              {
                while (v19 < 1 << *(v14 + 32))
                {
                  v21 = v19 >> 6;
                  if ((*(v76 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
                  {
                    goto LABEL_60;
                  }

                  if (*(v14 + 36) != v17)
                  {
                    goto LABEL_61;
                  }

                  v22 = v19 & 0x3F;
                  v23 = *(v14 + 48) + 16 * v19;
                  v24 = *v23;
                  v25 = *(v23 + 8);
                  v26 = v15;
                  v75 = v20 + 1;
                  switch(v25 >> 5)
                  {
                    case 1u:
                      v27 = 15649;
                      goto LABEL_22;
                    case 2u:
                      v71 = v19 & 0x3F;
                      v73 = v18;
                      v29 = v17;
                      if (v25)
                      {
                        v30 = 15678;
                        goto LABEL_19;
                      }

                      v37 = 62;
                      goto LABEL_30;
                    case 3u:
                      v71 = v19 & 0x3F;
                      v73 = v18;
                      v29 = v17;
                      if (v25)
                      {
                        v30 = 15676;
LABEL_19:
                        v80 = v30;
                        v31 = 0xE200000000000000;
                      }

                      else
                      {
                        v37 = 60;
LABEL_30:
                        v80 = v37;
                        v31 = 0xE100000000000000;
                      }

                      v82 = v31;
                      sub_1C8DDC4F8(v16, v17, v18);
                      v38 = sub_1C906433C();
                      MEMORY[0x1CCA81A90](v38);

                      v35 = v80;
                      v36 = v82;
                      v17 = v29;
                      LOBYTE(v18) = v73;
                      v22 = v71;
LABEL_32:
                      v39 = v77;
                      v83 = v77;
                      v40 = *(v77 + 16);
                      if (v40 >= *(v77 + 24) >> 1)
                      {
                        v78 = v17;
                        v74 = v18;
                        v72 = v22;
                        sub_1C8CA6480();
                        v22 = v72;
                        LOBYTE(v18) = v74;
                        v17 = v78;
                        v39 = v83;
                      }

                      *(v39 + 16) = v40 + 1;
                      v41 = v39 + 16 * v40;
                      *(v41 + 32) = v35;
                      *(v41 + 40) = v36;
                      if (v18)
                      {
                        goto LABEL_66;
                      }

                      v42 = 1 << *(v14 + 32);
                      if (v19 >= v42)
                      {
                        goto LABEL_62;
                      }

                      v43 = *(v76 + 8 * v21);
                      if ((v43 & (1 << v19)) == 0)
                      {
                        goto LABEL_63;
                      }

                      v77 = v39;
                      if (*(v14 + 36) != v17)
                      {
                        goto LABEL_64;
                      }

                      v44 = v43 & (-2 << v22);
                      if (v44)
                      {
                        v42 = __clz(__rbit64(v44)) | v19 & 0x7FFFFFFFFFFFFFC0;
                        v15 = v26;
                        goto LABEL_45;
                      }

                      v45 = v21 << 6;
                      v46 = v21 + 1;
                      v47 = (v14 + 64 + 8 * v21);
                      v15 = v26;
                      break;
                    case 4u:
                      v79 = 126;
                      v28 = 0xE100000000000000;
                      goto LABEL_23;
                    case 5u:
                      v27 = 32289;
                      goto LABEL_22;
                    case 6u:
                      if (v24 | v25 ^ 0xC0)
                      {
                        v35 = 0x656E6F4E7369;
                      }

                      else
                      {
                        v35 = 0x656D6F537369;
                      }

                      v36 = 0xE600000000000000;
                      goto LABEL_32;
                    default:
                      v27 = 15677;
LABEL_22:
                      v79 = v27;
                      v28 = 0xE200000000000000;
LABEL_23:
                      v81 = v28;
                      v32 = v17;
                      v33 = v18;
                      sub_1C8DDC4F8(v16, v17, v18);
                      v34 = sub_1C906433C();
                      MEMORY[0x1CCA81A90](v34);

                      v22 = v19 & 0x3F;
                      LOBYTE(v18) = v33;
                      v17 = v32;
                      v35 = v79;
                      v36 = v81;
                      goto LABEL_32;
                  }

                  while (v46 < (v42 + 63) >> 6)
                  {
                    v49 = *v47++;
                    v48 = v49;
                    v45 += 64;
                    ++v46;
                    if (v49)
                    {
                      v16 = sub_1C8CAF698(v19, v17, 0);
                      v42 = __clz(__rbit64(v48)) + v45;
                      goto LABEL_45;
                    }
                  }

                  v16 = sub_1C8CAF698(v19, v17, 0);
LABEL_45:
                  v20 = v75;
                  if (v75 == v15)
                  {

                    v4 = v65;
                    goto LABEL_52;
                  }

                  v18 = 0;
                  v17 = *(v14 + 36);
                  v19 = v42;
                  if (v42 < 0)
                  {
                    break;
                  }
                }
              }

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
              __break(1u);
              break;
            }

LABEL_52:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
            OUTLINED_FUNCTION_0_0();
            sub_1C8D28184(&qword_1EDA6D4A0, &qword_1EC312558, &qword_1C9066990, v50);
            sub_1C9063E9C();

            v51 = OUTLINED_FUNCTION_145();
            MEMORY[0x1CCA81A90](v51);

            v8 = v68;
            v5 = v67;
            v7 = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_20();
              sub_1C8D00CA4();
              v8 = v55;
            }

            v2 = v66;
            v6 = MEMORY[0x1E69E7CC0];
            v53 = *(v8 + 16);
            v52 = *(v8 + 24);
            if (v53 >= v52 >> 1)
            {
              OUTLINED_FUNCTION_4_21(v52);
              sub_1C8D00CA4();
              v8 = v56;
            }

            *(v8 + 16) = v53 + 1;
            v54 = v8 + 16 * v53;
            *(v54 + 32) = v84;
            *(v54 + 40) = v85;
          }

          else
          {

            v5 = v67;
            v7 = v69;
          }
        }

        else
        {
        }
      }

      if (++v7 == v5)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
LABEL_58:
    v57 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
    OUTLINED_FUNCTION_0_0();
    sub_1C8D28184(v59, &qword_1EC312558, &qword_1C9066990, v60);
    v61 = sub_1C9063E9C();
    v63 = v62;

    MEMORY[0x1CCA81A90](v61, v63);

    MEMORY[0x1CCA81A90](31520, 0xE200000000000000);
    sub_1C9063E9C();

    v64 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA81A90](v64);

    MEMORY[0x1CCA81A90](10621, 0xE200000000000000);
  }
}

void *sub_1C8DD8EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C8D01FC4(*(a1 + 16), 0);
  sub_1C8D7C438();
  v4 = v3;

  sub_1C8C9E7E4(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = v2;
  sub_1C8DDB388(&v6);
  return v6;
}

uint64_t sub_1C8DD8F8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A00, &qword_1C9068DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C906A950;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315490, &unk_1C907D0C0);
  v4 = sub_1C9063E2C();
  v5 = MEMORY[0x1E69E7CD0];
  *(inited + 32) = MEMORY[0x1E69E7CD0];
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v129 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = 0;
  v7 = 0;
  if (v129)
  {
    v8 = 0;
    v130 = a1 + 32;
    v9 = inited;
    while (1)
    {
      v131 = v8;
      memcpy(__dst, (v130 + 136 * v8), sizeof(__dst));
      v135 = *(v9 + 16);
      if (v135)
      {
        break;
      }

      inited = MEMORY[0x1E69E7CC0];
LABEL_53:
      v8 = v131 + 1;
      v9 = inited;
      if (v131 + 1 == v129)
      {
        goto LABEL_54;
      }
    }

    v10 = *&__dst[64];
    v138 = *&__dst[8];
    v139 = *__dst;
    v137 = *(*&__dst[64] + 16);
    v134 = v9 + 32;
    sub_1C8D07294(__dst, &v157);

    v11 = 0;
    v141 = v10;
    v132 = (v10 + 56);
    v142 = MEMORY[0x1E69E7CC0];
    v133 = v9;
    while (v11 < *(v9 + 16))
    {
      v136 = v11;
      v12 = (v134 + 24 * v11);
      v13 = *v12;
      v1 = v12[1];
      v14 = v12[2];
      *&v157 = *v12;
      *(&v157 + 1) = v1;
      v158 = v14;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_1C8D8634C(v156, v139, v138);

      if (v137)
      {
        v140 = v13;

        v15 = 0;
        v16 = v132;
        v147 = v14;
        buf = v1;
        while (1)
        {
          if (v15 >= *(v141 + 16))
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          *&v152 = v15;
          v18 = *(v16 - 3);
          v17 = *(v16 - 2);
          v19 = *(v16 - 1);
          v20 = *v16;

          sub_1C8D07154(v19, v20, v21, v22, v23, v24);

          sub_1C8D8634C(v156, v18, v17);

          v25 = OUTLINED_FUNCTION_93();
          sub_1C8F1E700(v25, v26);

          sub_1C8D07154(v19, v20, v27, v28, v29, v30);
          sub_1C8CC7E94(isUniquelyReferenced_nonNull_native, 0);
          v31 = v158;
          swift_isUniquelyReferenced_nonNull_native();
          *v156 = v31;
          v32 = OUTLINED_FUNCTION_93();
          v34 = sub_1C8CAE064(v32, v33);
          v36 = *(v31 + 16);
          v37 = (v35 & 1) == 0;
          isUniquelyReferenced_nonNull_native = v36 + v37;
          if (__OFADD__(v36, v37))
          {
            goto LABEL_62;
          }

          v38 = v34;
          v39 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA0, &unk_1C9072430);
          v40 = sub_1C90648EC();
          v41 = *v156;
          if (v40)
          {
            v42 = OUTLINED_FUNCTION_93();
            v44 = sub_1C8CAE064(v42, v43);
            v46 = v140;
            if ((v39 & 1) != (v45 & 1))
            {
              goto LABEL_82;
            }

            v38 = v44;
          }

          else
          {
            v46 = v140;
          }

          v158 = v41;
          if (v39)
          {
          }

          else
          {
            sub_1C8D64CA4(v38, v18, v17, MEMORY[0x1E69E7CD0], v41);
          }

          *&v152 = v152 + 1;
          sub_1C8D87080(v156, v19, v20);
          sub_1C8D07168(*v156, v156[8]);
          *v156 = v46;
          *&v156[8] = buf;
          *&v156[16] = v147;

          sub_1C8D8634C(v155, v139, v138);

          sub_1C8F1E700(v139, v138);

          v47 = 32;
          v48 = v19;
          switch(v20 >> 5)
          {
            case 1u:
              v47 = 0;
              goto LABEL_24;
            case 2u:
              v49 = ~v20;
              v50 = 96;
              goto LABEL_22;
            case 3u:
              v49 = ~v20;
              v50 = 64;
LABEL_22:
              v47 = v50 & 0xFFFFFFFE | v49 & 1;
              goto LABEL_24;
            case 4u:
              v47 = 160;
              goto LABEL_24;
            case 5u:
              v47 = 128;
LABEL_24:
              v48 = v19;
              break;
            case 6u:
              v48 = (v19 | v20 ^ 0xC0) == 0;
              v47 = 192;
              break;
            default:
              break;
          }

          sub_1C8D07154(v19, v20, v51, v52, v53, v54);
          sub_1C8CC7E94(v7, 0);
          v55 = *&v156[16];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v155 = v55;
          v56 = OUTLINED_FUNCTION_93();
          v58 = sub_1C8CAE064(v56, v57);
          v7 = v59;
          if (__OFADD__(*(v55 + 16), (v59 & 1) == 0))
          {
            goto LABEL_63;
          }

          v60 = v58;
          v61 = sub_1C90648EC();
          v62 = *v155;
          if (v61)
          {
            v63 = OUTLINED_FUNCTION_93();
            v65 = sub_1C8CAE064(v63, v64);
            if ((v7 & 1) != (v66 & 1))
            {
LABEL_82:
              sub_1C9064CBC();
              __break(1u);

              __break(1u);
              return result;
            }

            v60 = v65;
          }

          *&v156[16] = v62;
          if (v7)
          {
          }

          else
          {
            sub_1C8D64CA4(v60, v18, v17, MEMORY[0x1E69E7CD0], v62);
          }

          sub_1C8D87080(v155, v48, v47);

          sub_1C8D07168(v19, v20);
          sub_1C8D07168(*v155, v155[8]);
          v153 = *v156;
          v154 = v62;
          sub_1C8DD9C40(&v153, v155);

          v67 = *v155;
          if (*v155)
          {
            v145 = *&v155[8];
            v68 = v142;
            v1 = buf;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_20();
              sub_1C8D014F4();
              v68 = v72;
            }

            v70 = *(v68 + 16);
            v69 = *(v68 + 24);
            if (v70 >= v69 >> 1)
            {
              OUTLINED_FUNCTION_4_21(v69);
              sub_1C8D014F4();
              v68 = v73;
            }

            *(v68 + 16) = v70 + 1;
            v142 = v68;
            v71 = v68 + 24 * v70;
            *(v71 + 32) = v67;
            *(v71 + 40) = v145;
          }

          else
          {
            v1 = buf;
          }

          OUTLINED_FUNCTION_3_27();
          isUniquelyReferenced_nonNull_native = sub_1C8DDC7A8;
          if (v137 == v15)
          {

            OUTLINED_FUNCTION_3_27();
            isUniquelyReferenced_nonNull_native = sub_1C8DDC7A8;
            goto LABEL_43;
          }
        }
      }

LABEL_43:
      *v155 = v157;
      *&v155[16] = v158;
      sub_1C8DD9C40(v155, v156);

      v74 = *v156;
      if (*v156)
      {
        v152 = *&v156[8];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_20();
          sub_1C8D014F4();
          v142 = v79;
        }

        v76 = *(v142 + 16);
        v75 = *(v142 + 24);
        v77 = v136;
        if (v76 >= v75 >> 1)
        {
          OUTLINED_FUNCTION_4_21(v75);
          sub_1C8D014F4();
          v77 = v136;
          v142 = v80;
        }

        *(v142 + 16) = v76 + 1;
        v78 = v142 + 24 * v76;
        *(v78 + 32) = v74;
        *(v78 + 40) = v152;
      }

      else
      {
        v77 = v136;
      }

      v11 = v77 + 1;
      v9 = v133;
      if (v11 == v135)
      {

        sub_1C8D072F0(__dst);

        inited = v142;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    v81 = *(inited + 16);
    *&v152 = v7;
    if (!v81)
    {
LABEL_64:

      v1 = MEMORY[0x1E69E7CC0];
LABEL_65:
      if (qword_1EC311338 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_81;
    }

    *v156 = MEMORY[0x1E69E7CC0];

    sub_1C8D09C74(0, v81, 0);
    v82 = 0;
    v1 = *v156;
    v143 = inited;
    v7 = inited + 48;
    while (v82 < *(v143 + 16))
    {
      v83 = *(v7 - 8);
      v84 = *v7;
      *&v157 = *(v7 - 16);
      *(&v157 + 1) = v83;
      v158 = v84;

      sub_1C8DDAA4C(&v157, __dst);

      v85 = *__dst;
      v86 = *&__dst[16];
      *v156 = v1;
      v88 = v1[2];
      v87 = v1[3];
      if (v88 >= v87 >> 1)
      {
        *bufb = *__dst;
        sub_1C8D09C74((v87 > 1), v88 + 1, 1);
        v85 = *bufb;
        v1 = *v156;
      }

      ++v82;
      v1[2] = v88 + 1;
      v89 = &v1[3 * v88];
      *(v89 + 2) = v85;
      v89[6] = v86;
      v7 += 24;
      if (v81 == v82)
      {
        swift_bridgeObjectRelease_n();
        v7 = v152;
        goto LABEL_65;
      }
    }
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_66:
  v90 = sub_1C9063D3C();
  __swift_project_value_buffer(v90, qword_1EC315460);
  v91 = sub_1C9063D1C();
  v92 = sub_1C906442C();
  if (os_log_type_enabled(v91, v92))
  {
    v148 = v92;
    v93 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *&v157 = v146;
    bufa = v93;
    *v93 = 136315138;
    v94 = v1[2];
    v95 = MEMORY[0x1E69E7CC0];
    if (v94)
    {
      v144 = v91;
      *v156 = MEMORY[0x1E69E7CC0];

      sub_1C8CA6480();
      v95 = *v156;
      v96 = v1 + 6;
      do
      {
        v97 = *v96;
        *__dst = *(v96 - 1);
        *&__dst[16] = v97;
        ToolInvocationSignature.debugDescription.getter();
        v99 = v98;
        v101 = v100;
        *v156 = v95;
        v102 = *(v95 + 16);
        if (v102 >= *(v95 + 24) >> 1)
        {
          sub_1C8CA6480();
          v95 = *v156;
        }

        *(v95 + 16) = v102 + 1;
        v103 = v95 + 16 * v102;
        *(v103 + 32) = v99;
        *(v103 + 40) = v101;
        v96 += 3;
        --v94;
      }

      while (v94);

      v91 = v144;
    }

    *__dst = v95;
    v104 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v104, v105);
    OUTLINED_FUNCTION_0_0();
    sub_1C8D28184(v106, &qword_1EC312558, &qword_1C9066990, v107);
    sub_1C9063E9C();

    v108 = OUTLINED_FUNCTION_94();
    v114 = sub_1C8CACE04(v108, v109, v110, v111, v112, v113);

    *(bufa + 1) = v114;
    _os_log_impl(&dword_1C8C9B000, v91, v148, "initial signatures: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v146);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();

    v7 = v152;
  }

  else
  {
  }

  v116 = sub_1C8DDAC0C(v115);
  swift_bridgeObjectRelease_n();

  v117 = sub_1C9063D1C();
  v118 = sub_1C906442C();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *__dst = v120;
    *v119 = 136315138;
    v121 = sub_1C8DDB20C(v116);
    v123 = v122;

    v127 = sub_1C8CACE04(v121, v123, __dst, v124, v125, v126);

    *(v119 + 4) = v127;
    _os_log_impl(&dword_1C8C9B000, v117, v118, "merged signatures: %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_1C8CC7E94(isUniquelyReferenced_nonNull_native, 0);
  sub_1C8CC7E94(v7, 0);
  return v116;
}

uint64_t sub_1C8DD9C40@<X0>(uint64_t *a1@<X0>, void *a6@<X8>)
{
  v137 = a6;
  v152 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v8 = a1[2];
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v136 = *a1;

  v135 = v7;

  swift_bridgeObjectRetain_n();
  v14 = 0;
  v142 = v8;
  v140 = v13;
  v139 = v8 + 64;
  if (!v12)
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v115 = v137;
        v116 = v135;
        *v137 = v136;
        v115[1] = v116;
        v115[2] = v8;
        return result;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_9;
      }
    }

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
    swift_once();
    goto LABEL_105;
  }

LABEL_9:
  while (1)
  {
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = *(v142 + 56);
    v18 = (*(v142 + 48) + 16 * v16);
    v19 = v18[1];
    v145 = *v18;
    v20 = *(v17 + 8 * v16);
    v149 = v20;
    v21 = *(v20 + 16);
    v143 = v19;
    if (v21)
    {
      sub_1C9064D7C();
      MEMORY[0x1CCA82810](1);
      v22 = sub_1C9064DBC();
      v23 = v20 + 56;
      v24 = -1 << *(v20 + 32);
      v25 = v22 & ~v24;
      if ((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        break;
      }
    }

    swift_bridgeObjectRetain_n();

LABEL_18:
    v144 = (v12 - 1) & v12;
    v148 = MEMORY[0x1E69E7CD0];
    v29 = v20 + 56;
    v30 = 1 << *(v20 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v20 + 56);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    v146 = MEMORY[0x1E69E7CC0];
    while (v32)
    {
LABEL_27:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v37 = *(v20 + 48) + ((v34 << 10) | (16 * v36));
      v6 = *v37;
      v38 = *(v37 + 8);
      if (v38 <= 0x1F)
      {
        v141 = v20;

        v40 = v8;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = v146;
        }

        else
        {
          sub_1C8D01430();
          v41 = v43;
        }

        v42 = *(v41 + 16);
        if (v42 >= *(v41 + 24) >> 1)
        {
          sub_1C8D01430();
          v41 = v44;
        }

        *(v41 + 16) = v42 + 1;
        v146 = v41;
        *(v41 + 8 * v42 + 32) = v6;
        v8 = v40;
        v20 = v141;
      }

      else if ((v38 & 0xE0) == 0x20)
      {

        sub_1C903667C(v39);
      }
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:

        goto LABEL_112;
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_27;
      }
    }

    v45 = v20;
    v46 = *(v146 + 16);
    if (v46)
    {
      v141 = v45;
      v138 = v8;
      v47 = *(v146 + 32);

      v48 = 32;
      do
      {
        v49 = *(v146 + v48);
        v50 = *(v47 + 32);
        v51 = v50 & 0x3F;
        v52 = ((1 << v50) + 63) >> 6;
        swift_bridgeObjectRetain_n();

        if (v51 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v54 = (&v134 - ((8 * v52 + 15) & 0x3FFFFFFFFFFFFFF0));
          sub_1C8D8D3E0(0, v52, v54);
          sub_1C8DDC160(v54, v52, v47, v49);
          v56 = v55;
        }

        else
        {
          v57 = swift_slowAlloc();

          v56 = sub_1C8DDC0D0(v57, v52, v47, v49);

          swift_bridgeObjectRelease_n();
          MEMORY[0x1CCA833A0](v57, -1, -1);
        }

        v47 = v56;

        v48 += 8;
        --v46;
      }

      while (v46);
      v147 = v56;
      v6 = v148;
      v58 = v148 + 56;
      v59 = 1 << *(v148 + 32);
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v61 = v60 & *(v148 + 56);
      v62 = (v59 + 63) >> 6;

      if (v61)
      {
        while (1)
        {
          v63 = v46;
LABEL_53:
          v64 = __clz(__rbit64(v61));
          v61 &= v61 - 1;
          v65 = *(*(v6 + 48) + ((v63 << 9) | (8 * v64)));

          sub_1C8F1E624(v65);

          sub_1C8D2B114(v150);
          if (!v61)
          {
            goto LABEL_49;
          }
        }
      }

      while (1)
      {
LABEL_49:
        v63 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_114;
        }

        if (v63 >= v62)
        {
          break;
        }

        v61 = *(v58 + 8 * v63);
        ++v46;
        if (v61)
        {
          v46 = v63;
          goto LABEL_53;
        }
      }

      v66 = v141;
      v67 = *(v141 + 32);
      v68 = v67 & 0x3F;
      v69 = ((1 << v67) + 63) >> 6;
      v70 = 8 * v69;

      v8 = v138;
      if (v68 <= 0xD)
      {
LABEL_56:

        MEMORY[0x1EEE9AC00](v71);
        v6 = &v134 - ((v70 + 15) & 0x3FFFFFFFFFFFFFF0);
        sub_1C8D8D3E0(0, v69, v6);
        v72 = 0;
        v73 = 0;
        v74 = 1 << *(v66 + 32);
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        else
        {
          v75 = -1;
        }

        v76 = v75 & *(v66 + 56);
        v77 = (v74 + 63) >> 6;
        while (v76)
        {
          v78 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
          v79 = v78 | (v73 << 6);
LABEL_67:
          if (*(*(v66 + 48) + 16 * v79 + 8) >= 0x40u)
          {
            *(v6 + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v79;
            v82 = __OFADD__(v72++, 1);
            if (v82)
            {
              goto LABEL_122;
            }
          }
        }

        v80 = v73;
        while (1)
        {
          v73 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_115;
          }

          if (v73 >= v77)
          {
            sub_1C904488C((&v134 - ((v70 + 15) & 0x3FFFFFFFFFFFFFF0)), v69, v72, v66);
            v84 = v83;
            goto LABEL_72;
          }

          v81 = *(v29 + 8 * v73);
          ++v80;
          if (v81)
          {
            v76 = (v81 - 1) & v81;
            v79 = __clz(__rbit64(v81)) | (v73 << 6);
            goto LABEL_67;
          }
        }
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_56;
      }

      v112 = swift_slowAlloc();

      v84 = sub_1C8DDC040(v112, v69, v66, sub_1C8DDB368, 0, v113);

      swift_bridgeObjectRelease_n();
      MEMORY[0x1CCA833A0](v112, -1, -1);
LABEL_72:
      v85 = v143;
      v149 = v84;
      v86 = v147;
      if (v147[2])
      {

        sub_1C8D87080(&v150, v86, 0);
        sub_1C8D07168(v150, v151);
        goto LABEL_75;
      }

      if (qword_1EC311338 != -1)
      {
        swift_once();
      }

      v120 = sub_1C9063D3C();
      __swift_project_value_buffer(v120, qword_1EC315460);

      v6 = sub_1C9063D1C();
      v121 = sub_1C906442C();

      if (os_log_type_enabled(v6, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v150 = v123;
        *v122 = 136315138;
        sub_1C8DDC704(v123, v124, v125);
        v126 = sub_1C906433C();
        v128 = v127;

        v132 = sub_1C8CACE04(v126, v128, &v150, v129, v130, v131);

        *(v122 + 4) = v132;
        _os_log_impl(&dword_1C8C9B000, v6, v121, "Signature invalid: equality check constraints in conflict: %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v123);
        MEMORY[0x1CCA833A0](v123, -1, -1);
        MEMORY[0x1CCA833A0](v122, -1, -1);

        goto LABEL_111;
      }

      goto LABEL_116;
    }

    v85 = v143;
LABEL_75:
    v87 = v149;
    swift_isUniquelyReferenced_nonNull_native();
    v150 = v8;
    v88 = sub_1C8CAE064(v145, v85);
    if (__OFADD__(*(v8 + 16), (v89 & 1) == 0))
    {
      goto LABEL_120;
    }

    v6 = v88;
    v90 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA0, &unk_1C9072430);
    if (sub_1C90648EC())
    {
      v91 = sub_1C8CAE064(v145, v85);
      v13 = v140;
      if ((v90 & 1) != (v92 & 1))
      {
        sub_1C9064CBC();
        __break(1u);

        swift_bridgeObjectRelease_n();
        result = MEMORY[0x1CCA833A0](v13, -1, -1);
        __break(1u);
        return result;
      }

      v6 = v91;
    }

    else
    {
      v13 = v140;
    }

    v8 = v150;
    if (v90)
    {
      *(v150[7] + 8 * v6) = v87;
    }

    else
    {
      v150[(v6 >> 6) + 8] |= 1 << v6;
      v93 = (*(v8 + 48) + 16 * v6);
      *v93 = v145;
      v93[1] = v85;
      *(*(v8 + 56) + 8 * v6) = v87;
      v94 = *(v8 + 16);
      v82 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v82)
      {
        goto LABEL_121;
      }

      *(v8 + 16) = v95;
    }

    v9 = v139;
    v12 = v144;
    if (!v144)
    {
      goto LABEL_5;
    }
  }

  v26 = ~v24;
  swift_bridgeObjectRetain_n();

  while (1)
  {
    v27 = *(v20 + 48) + 16 * v25;
    v28 = *v27;
    v6 = *(v27 + 8);
    if (v6 >= 0xC0)
    {
      break;
    }

LABEL_15:
    sub_1C8D07168(v28, v6);
    sub_1C8D07168(1, 0xC0u);
    v25 = (v25 + 1) & v26;
    if (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (!(v28 | v6 ^ 0xC0))
  {
    goto LABEL_15;
  }

  v144 = v12;
  v96 = v20;
  v97 = v8;
  sub_1C8D07168(v28, v6);
  sub_1C8D07168(1, 0xC0u);
  v98 = 1 << *(v96 + 32);
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  else
  {
    v99 = -1;
  }

  v100 = v99 & *(v96 + 56);
  v101 = (v98 + 63) >> 6;
  v102 = v96;

  v107 = 0;
  if (!v100)
  {
LABEL_91:
    while (1)
    {
      v108 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        goto LABEL_119;
      }

      if (v108 >= v101)
      {

        v8 = v97;
        v20 = v102;
        v12 = v144;
        goto LABEL_18;
      }

      v100 = *(v23 + 8 * v108);
      ++v107;
      if (v100)
      {
        goto LABEL_94;
      }
    }
  }

  while (1)
  {
    v108 = v107;
LABEL_94:
    v109 = __clz(__rbit64(v100));
    v100 &= v100 - 1;
    v110 = *(v102 + 48) + ((v108 << 10) | (16 * v109));
    v6 = *v110;
    v111 = *(v110 + 8);
    if (v111 >> 5 != 6)
    {
      sub_1C8D07154(*v110, *(v110 + 8), v103, v104, v105, v106);

      sub_1C8D07168(v6, v111);
      goto LABEL_104;
    }

    if (!(v6 | v111 ^ 0xC0))
    {
      break;
    }

    sub_1C8D07168(v6, v111);
    sub_1C8D07168(1, 0xC0u);
    v107 = v108;
    if (!v100)
    {
      goto LABEL_91;
    }
  }

LABEL_104:
  sub_1C8D07168(v6, v111);
  sub_1C8D07168(1, 0xC0u);

  swift_bridgeObjectRelease_n();
  if (qword_1EC311338 != -1)
  {
    goto LABEL_123;
  }

LABEL_105:
  v117 = sub_1C9063D3C();
  __swift_project_value_buffer(v117, qword_1EC315460);
  v6 = sub_1C9063D1C();
  v118 = sub_1C906442C();
  if (os_log_type_enabled(v6, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_1C8C9B000, v6, v118, "Signature invalid: isNone but contains other constraints", v119, 2u);
    MEMORY[0x1CCA833A0](v119, -1, -1);
  }

LABEL_111:

LABEL_112:

  v133 = v137;
  *v137 = 0;
  v133[1] = 0;
  v133[2] = 0;
  return result;
}

uint64_t sub_1C8DDAA4C@<X0>(uint64_t *a1@<X0>, void *a6@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = (v8 + 63) >> 6;
  v21 = *a1;

  swift_bridgeObjectRetain_n();

  v13 = 0;
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v6 + 48) + ((v13 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];

    sub_1C8CAE064(v17, v18);
    v20 = v19;

    if (v20)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA0, &unk_1C9072430);
      sub_1C90648EC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315490, &unk_1C907D0C0);
      result = sub_1C906490C();
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      *a6 = v21;
      a6[1] = v6;
      a6[2] = v7;
      return result;
    }

    v10 = *(v6 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DDAC0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315498, &qword_1C907D0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3154A0, &qword_1C907D0D8);
  sub_1C8D28184(&qword_1EC3154A8, &qword_1EC315498, &qword_1C907D0D0, MEMORY[0x1E69E64F8]);
  v72 = sub_1C9063E2C();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v3;
      swift_bridgeObjectRetain_n();

      sub_1C8CC7E94(v8, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_1C8D59B8C();
      if (__OFADD__(*(v72 + 16), (v10 & 1) == 0))
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3154B0, &unk_1C907D0E0);
      v13 = v72;
      if (sub_1C90648EC())
      {
        v14 = sub_1C8D59B8C();
        if ((v12 & 1) != (v15 & 1))
        {
          goto LABEL_57;
        }

        v11 = v14;
        v13 = v72;
      }

      if (v12)
      {

        v13 = v72;
      }

      else
      {
        v13[(v11 >> 6) + 8] |= 1 << v11;
        *(v13[6] + 8 * v11) = v5;
        *(v13[7] + 8 * v11) = MEMORY[0x1E69E7CC0];
        v16 = v13[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_55;
        }

        v13[2] = v18;
      }

      v19 = v13[7];
      v20 = *(v19 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v11) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C8D014F4();
        v20 = v24;
        *(v19 + 8 * v11) = v24;
      }

      v22 = *(v20 + 16);
      if (v22 >= *(v20 + 24) >> 1)
      {
        sub_1C8D014F4();
        v20 = v25;
        *(v19 + 8 * v11) = v25;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (v20 + 24 * v22);
      v23[4] = v5;
      v23[5] = v6;
      v23[6] = v7;
      v4 += 3;
      v3 = sub_1C8DDB378;
      if (!--v2)
      {
        goto LABEL_18;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_18:
    v26 = 0;
    v27 = v72;
    v28 = v72 + 64;
    v29 = 1 << *(v72 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v72 + 64);
    v32 = (v29 + 63) >> 6;
    v67 = MEMORY[0x1E69E7CC0];
    v62 = v3;
    v61 = v32;
    if (!v31)
    {
      goto LABEL_22;
    }

LABEL_26:
    while (1)
    {
      v34 = (v26 << 9) | (8 * __clz(__rbit64(v31)));
      v35 = *(*(v27 + 56) + v34);
      if (!*(v35 + 16))
      {
        break;
      }

      v63 = v31;
      v64 = v26;
      v36 = *(v35 + 40);
      v66 = *(*(v27 + 48) + v34);

      v65 = v36;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315490, &unk_1C907D0C0);
      v37 = sub_1C9063E2C();
      v70 = *(v35 + 16);
      if (v70)
      {
        v38 = 0;
        v68 = v35;
        v69 = v35 + 32;
        while (2)
        {
          if (v38 >= *(v35 + 16))
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v39 = *(v69 + 24 * v38 + 16);
          v71 = v38 + 1;
          v40 = 1 << *(v39 + 32);
          if (v40 < 64)
          {
            v41 = ~(-1 << v40);
          }

          else
          {
            v41 = -1;
          }

          v42 = v41 & *(v39 + 64);
          v43 = (v40 + 63) >> 6;

          v44 = 0;
          if (!v42)
          {
            goto LABEL_35;
          }

          do
          {
            v45 = v44;
LABEL_39:
            v46 = __clz(__rbit64(v42));
            v42 &= v42 - 1;
            v47 = v46 | (v45 << 6);
            v48 = (*(v39 + 48) + 16 * v47);
            v49 = *v48;
            v50 = v48[1];
            v51 = *(*(v39 + 56) + 8 * v47);

            v52 = sub_1C8CB26F8(v49, v50, v37);
            v53 = MEMORY[0x1E69E7CD0];
            if (v52)
            {
              v53 = v52;
            }

            v73 = v53;
            sub_1C9036768(v51);
            v54 = swift_isUniquelyReferenced_nonNull_native();
            sub_1C8D64654(v73, v49, v50, v54);
          }

          while (v42);
          while (1)
          {
LABEL_35:
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
              goto LABEL_52;
            }

            if (v45 >= v43)
            {
              break;
            }

            v42 = *(v39 + 64 + 8 * v45);
            ++v44;
            if (v42)
            {
              v44 = v45;
              goto LABEL_39;
            }
          }

          v38 = v71;
          v35 = v68;
          if (v71 != v70)
          {
            continue;
          }

          break;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D014F4();
        v67 = v57;
      }

      v55 = *(v67 + 16);
      if (v55 >= *(v67 + 24) >> 1)
      {
        sub_1C8D014F4();
        v67 = v58;
      }

      *(v67 + 16) = v55 + 1;
      v56 = (v67 + 24 * v55);
      v56[4] = v66;
      v56[5] = v65;
      v56[6] = v37;
      v31 = (v63 - 1) & v63;

      v27 = v72;
      v28 = v72 + 64;
      v3 = v62;
      v26 = v64;
      v32 = v61;
      if (!v31)
      {
LABEL_22:
        while (1)
        {
          v33 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_54;
          }

          if (v33 >= v32)
          {
            v59 = v3;

            sub_1C8CC7E94(v59, 0);
            return v67;
          }

          v31 = *(v28 + 8 * v33);
          ++v26;
          if (v31)
          {
            v26 = v33;
            goto LABEL_26;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_57:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

uint64_t sub_1C8DDB20C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = a1 + 48;
    do
    {
      ToolInvocationSignature.debugDescription.getter();
      v5 = v4;
      v7 = v6;
      v8 = *(v12 + 16);
      if (v8 >= *(v12 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8D28184(&qword_1EDA6D4A0, &qword_1EC312558, &qword_1C9066990, MEMORY[0x1E69E6310]);
  v10 = sub_1C9063E9C();

  return v10;
}

uint64_t sub_1C8DDB388(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C8DDC758();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C8DDB3F4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C8DDB3F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9064BCC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C906421C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C8DDB5B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C8DDB4E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C8DDB4E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1C9064C2C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C8DDB5B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C9064C2C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C9064C2C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1C9064C2C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D00D94();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C8D00D94();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C8DDBBE4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1C8DDBAB8(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1C8DDBAB8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C8DDBD88(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C8DDBBE4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C8DDBBE4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C8D091D4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1C8D091D4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1C9064C2C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1C8DDBD9C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C8DDBDC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A38, &qword_1C9068E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1C8DDBEC8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v23 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 48) + 16 * v17;
    v24 = *v18;
    v25 = *(v18 + 8);
    sub_1C8D07154(v24, v25, a3, a4, a5, a6);
    v19 = v26(&v24);
    sub_1C8D07168(v24, v25);
    if (v6)
    {
      return;
    }

    if (v19)
    {
      *(result + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1C904488C(result, a2, v23, a3);
        return;
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t *sub_1C8DDC040(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C8DDBEC8(v10, a2, a3, a4, a5, a6);
    v12 = v11;

    return v12;
  }

  return result;
}

uint64_t *sub_1C8DDC0D0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C8DDC160(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C8DDC160(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v41 = 0;
    v21 = 0;
    v22 = 1 << *(a3 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;
LABEL_25:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
LABEL_32:
      v37 = v26 | (v21 << 6);
      sub_1C9064D7C();

      TypedValue.hash(into:)();
      v29 = sub_1C9064DBC();
      v30 = ~(-1 << *(a4 + 32));
      do
      {
        v31 = v29 & v30;
        if (((*(a4 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
        {

          v24 = v40;
          goto LABEL_25;
        }

        static TypedValue.== infix(_:_:)();
        v33 = v32;

        v29 = v31 + 1;
      }

      while ((v33 & 1) == 0);

      *(result + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v24 = v40;
      v20 = __OFADD__(v41++, 1);
      if (v20)
      {
        goto LABEL_43;
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
LABEL_39:

        sub_1C9044B04(result, a2, v41, a3);
        return;
      }

      v28 = *(a3 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v40 = (v28 - 1) & v28;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v41 = 0;
    v6 = 0;
    v34 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v36 = v10;
    if (v9)
    {
      do
      {
        v39 = (v9 - 1) & v9;
LABEL_12:
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v13 = sub_1C9064DBC();
        v14 = ~(-1 << *(a3 + 32));
        do
        {
          v15 = v13 & v14;
          v16 = (v13 & v14) >> 6;
          v17 = 1 << (v13 & v14);
          if ((v17 & *(a3 + 56 + 8 * v16)) == 0)
          {

            goto LABEL_19;
          }

          static TypedValue.== infix(_:_:)();
          v19 = v18;

          v13 = v15 + 1;
        }

        while ((v19 & 1) == 0);

        result[v16] |= v17;
        v20 = __OFADD__(v41++, 1);
        if (v20)
        {
          goto LABEL_42;
        }

LABEL_19:
        v10 = v36;
        v9 = v39;
      }

      while (v39);
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_39;
      }

      v12 = *(v34 + 8 * v6);
      ++v11;
      if (v12)
      {
        v39 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_1C8DDC4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60DF0;
  if (!qword_1EDA60DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DF0);
  }

  return result;
}

unint64_t sub_1C8DDC550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315478;
  if (!qword_1EC315478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315478);
  }

  return result;
}

unint64_t sub_1C8DDC5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315480;
  if (!qword_1EC315480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315480);
  }

  return result;
}

unint64_t sub_1C8DDC600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315488;
  if (!qword_1EC315488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315488);
  }

  return result;
}

uint64_t sub_1C8DDC678(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C8DDC6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8DDC704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3154B8;
  if (!qword_1EC3154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154B8);
  }

  return result;
}

uint64_t sub_1C8DDC814(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t WFEncodedTypedValue.decode()()
{
  if (qword_1EC311340 != -1)
  {
    swift_once();
  }

  v1 = [v0 data];
  v2 = sub_1C9061F3C();
  v4 = v3;

  sub_1C8D39E40(v5, v6, v7);
  sub_1C9061C2C();
  return sub_1C8CE7B78(v2, v4);
}

id TypedValue.encode()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EC311348 != -1)
  {
    a1 = swift_once();
  }

  sub_1C8D381AC(a1, a2, a3);
  result = sub_1C9061C5C();
  if (!v3)
  {
    v6 = result;
    v7 = v5;
    sub_1C8DDC9F8();
    return sub_1C8D5CF20(v6, v7);
  }

  return result;
}

unint64_t sub_1C8DDC9F8()
{
  result = qword_1EC3154D0;
  if (!qword_1EC3154D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3154D0);
  }

  return result;
}

uint64_t NSUnit.toolkitUnitType.getter()
{
  swift_getObjectType();
  v0 = objc_opt_self();
  v1 = [v0 unitTypeForUnitClass_];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = WFMeasurementUnitType.toolkitUnitType.getter(v1);

  return v3;
}

__C::WFMeasurementUnitType_optional __swiftcall WFMeasurementUnitType.init(from:)(ToolKit::TypeIdentifier::MeasurementUnitType from)
{
  v1 = **(&unk_1E832F1C0 + from);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t LNMeasurementUnitType.toolkitUnitType.getter(uint64_t a1)
{
  v1 = [objc_opt_self() unitTypeFromLinkMeasurementUnitType_];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = WFMeasurementUnitType.toolkitUnitType.getter(v1);

  return v3;
}

uint64_t INIntentSlotDescription.toolkitUnitType.getter()
{
  v1 = [objc_opt_self() unitTypeFromIntentSlotValueType_];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = WFMeasurementUnitType.toolkitUnitType.getter(v1);

  return v3;
}

uint64_t sub_1C8DDCC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
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

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8DDCD3C(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x656C61636F6CLL;
  }

  return 1701667182;
}

uint64_t sub_1C8DDCD90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315518, &qword_1C907D3B8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DDD978(v9, v10, v11);
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

uint64_t sub_1C8DDCF10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315510, &qword_1C907D3B0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DDD978(v11, v12, v13);
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

uint64_t sub_1C8DDD10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDCC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDD134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DDD978(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DDD170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DDD978(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C8DDD1AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C8DDCF10(a1, v6);
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

double sub_1C8DDD20C@<D0>(uint64_t a1@<X8>)
{
  sub_1C8DDD250(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C8DDD250@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1EDA694B0 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDA694B0);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EDA6EAB0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EDA69498 != -1)
  {
    OUTLINED_FUNCTION_2_32(&qword_1EDA69498);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6EA80);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v7 = v6;
  v9 = v8;

  if (qword_1EDA694A0 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1EDA694A0);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6EA98);
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

uint64_t sub_1C8DDD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8DDD744(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8DDD4CC()
{
  if (qword_1EDA694B0 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDA694B0);
  }

  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v0, qword_1EDA6EAB0);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EDA69498 != -1)
  {
    OUTLINED_FUNCTION_2_32(&qword_1EDA69498);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EDA6EA80);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EDA694A0 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1EDA694A0);
  }

  OUTLINED_FUNCTION_10(v0, qword_1EDA6EA98);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

unint64_t sub_1C8DDD658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3154E8;
  if (!qword_1EC3154E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154E8);
  }

  return result;
}

unint64_t sub_1C8DDD6B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DDD6F0(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8DDD744(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8DDD798(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8DDD7EC(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8DDD6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3154F0;
  if (!qword_1EC3154F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154F0);
  }

  return result;
}

unint64_t sub_1C8DDD744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3154F8;
  if (!qword_1EC3154F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154F8);
  }

  return result;
}

unint64_t sub_1C8DDD798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69480;
  if (!qword_1EDA69480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69480);
  }

  return result;
}

unint64_t sub_1C8DDD7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315500;
  if (!qword_1EC315500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315500);
  }

  return result;
}

uint64_t sub_1C8DDD840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC3154D8;

  return v5;
}

unint64_t sub_1C8DDD87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315508;
  if (!qword_1EC315508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315508);
  }

  return result;
}

uint64_t sub_1C8DDD900(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8DDD978(v5, v6, v7);
  return sub_1C9062E8C();
}

unint64_t sub_1C8DDD978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694C8;
  if (!qword_1EDA694C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerMetadataLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DDDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC315520;
  if (!qword_1EC315520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315520);
  }

  return result;
}

unint64_t sub_1C8DDDB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694B8;
  if (!qword_1EDA694B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694B8);
  }

  return result;
}

unint64_t sub_1C8DDDB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694C0;
  if (!qword_1EDA694C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694C0);
  }

  return result;
}

void TypedValue.typeIdentifier.getter()
{
  OUTLINED_FUNCTION_422();
  v5 = OUTLINED_FUNCTION_386();
  v6 = type metadata accessor for TypedValue.CodableValue(v5);
  v7 = OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v8 = OUTLINED_FUNCTION_32_7();
  v9 = type metadata accessor for TypedValue.EntityIdentifierValue(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  Value = type metadata accessor for TypedValue.QueryValue(0);
  v12 = OUTLINED_FUNCTION_9(Value);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_12();
  v13 = type metadata accessor for TypedValue.EntityValue(0);
  v14 = OUTLINED_FUNCTION_9(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = (v16 - v15);
  v18 = type metadata accessor for TypedValue.EnumerationValue(0);
  v19 = OUTLINED_FUNCTION_9(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v20 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v21 = OUTLINED_FUNCTION_9(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v22 = OUTLINED_FUNCTION_336_1();
  switch(v23)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_13_15();
      sub_1C8CC5734();
      v25 = *v4;

      OUTLINED_FUNCTION_41_8();
      goto LABEL_11;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_15_15();
      sub_1C8CC5734();
      v25 = *v17;

      OUTLINED_FUNCTION_73_2();
      goto LABEL_11;
    case 3:
      TypedValue.CollectionValue.type.getter(v0);
      break;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_16_15();
      sub_1C8CC5734();
      v25 = *v3;

      OUTLINED_FUNCTION_42_8();
      goto LABEL_11;
    case 5:
    case 7:
      *v0 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_421();

      return;
    case 6:
      swift_projectBox();
      OUTLINED_FUNCTION_12_15();
      sub_1C8CC5734();
      v25 = *v2;

      OUTLINED_FUNCTION_40_9();
LABEL_11:
      sub_1C8CC6AB4();
      *v0 = v25;
      break;
    case 8:
      swift_projectBox();
      OUTLINED_FUNCTION_11_17();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_2();
      v27 = swift_allocObject();
      v29 = *v1;
      v28 = v1[1];

      OUTLINED_FUNCTION_72_2();
      sub_1C8CC6AB4();
      *(v27 + 16) = v29;
      *(v27 + 24) = v28;
      *v0 = v27 | 0x8000000000000000;
      break;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_47();
      sub_1C8CC5734();
      v26 = swift_allocObject();
      TypedValue.PrimitiveValue.primitiveType.getter();
      OUTLINED_FUNCTION_14_20();
      sub_1C8CC6AB4();
      *v0 = v26;
      break;
  }

  OUTLINED_FUNCTION_421();
}

void *TypedValue.CollectionValue.init(typeInstance:values:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t TypedValue.CollectionValue.type.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_238_1();
  TypeInstance.typeIdentifiers.getter();
  v3 = v2;
  v4 = sub_1C8D3F274();
  v6 = v5;
  v8 = v7;
  result = sub_1C8D39D78(v3);
  if (v8 & 1) != 0 || (v11)
  {
    goto LABEL_9;
  }

  if (v6 != v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v4 == result)
  {

    result = swift_allocObject();
    *(result + 16) = 23;
  }

  else
  {
    OUTLINED_FUNCTION_249();
    sub_1C8D3F264();

    result = v12;
  }

  *a1 = result;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PlacemarkValue.init(type:displayRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_165_3();
  *(a2 + v4) = v3;
  v5 = OUTLINED_FUNCTION_94();

  return sub_1C8D60F48(v5, v6);
}

uint64_t TypedValue.ID.identifier.getter()
{
  OUTLINED_FUNCTION_386();
  sub_1C906204C();
  OUTLINED_FUNCTION_13_1();
  v0 = OUTLINED_FUNCTION_94();

  return v1(v0);
}

uint64_t TypedValue.ID.serializedVariable.getter()
{
  type metadata accessor for TypedValue.ID(0);
  v0 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t TypedValue.ID.typeInstance.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  *v0 = *(v1 + *(type metadata accessor for TypedValue.ID(v2) + 24));
}

uint64_t static TypedValue.ID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  if (_s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v2 = type metadata accessor for TypedValue.ID(0), (MEMORY[0x1CCA7F9A0](*(v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 8), *(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8))))
  {
    v3 = *(v2 + 24);
    v32 = *(v0 + v3);
    v35 = *(v1 + v3);

    v12 = OUTLINED_FUNCTION_106(v4, v5, v6, v7, v8, v9, v10, v11, v32, v35);
    static TypeInstance.== infix(_:_:)(v12, v13);
    v15 = v14;
    v23 = OUTLINED_FUNCTION_345_1(v14, v16, v17, v18, v19, v20, v21, v22, v33);
    OUTLINED_FUNCTION_344(v23, v24, v25, v26, v27, v28, v29, v30, v34, v36);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C8DDE170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CAD10 == a2;
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

uint64_t sub_1C8DDE294(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x74736E4965707974;
}

uint64_t sub_1C8DDE304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDE170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDE32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0C34(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DDE368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0C34(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.ID.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315528, &qword_1C907D4D8);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_72();
  v17 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF0C34(v17, v18, v19);
  OUTLINED_FUNCTION_358(&type metadata for TypedValue.ID.CodingKeys);
  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v20);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B8C();
  if (!v14)
  {
    v21 = (v15 + *(type metadata accessor for TypedValue.ID(0) + 20));
    v32 = *v21;
    v33 = v21[1];
    OUTLINED_FUNCTION_276_0();
    v24 = sub_1C8CE9144(v22, v23);
    sub_1C8D02AA8(v24, v25, v26);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    v27 = sub_1C8CE7B78(v32, v33);
    sub_1C8CA6D90(v27, v28, v29);
    OUTLINED_FUNCTION_295_0();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v30 = OUTLINED_FUNCTION_111_0();
  v31(v30);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.ID.hash(into:)()
{
  OUTLINED_FUNCTION_258();
  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v0);
  OUTLINED_FUNCTION_145();
  sub_1C9063E7C();
  type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_265_0();
  sub_1C9061F4C();
  OUTLINED_FUNCTION_238_1();
  TypeInstance.hash(into:)();
}

uint64_t TypedValue.ID.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v1);
  sub_1C9063E7C();
  v2 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_265_0();
  v3 = sub_1C9061F4C();
  OUTLINED_FUNCTION_252_1(v3, v4, v5, v6, v7, v8, v9, v10, *(v0 + *(v2 + 24)), v12);
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void TypedValue.ID.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315530, &qword_1C907D4E0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v11 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8DF0C34(v11, v12, v13);
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v25) = 0;
    OUTLINED_FUNCTION_10_19();
    sub_1C8CC8068(v14);
    sub_1C9064A6C();
    (*(v23 + 32))(v1, v24, v4);
    OUTLINED_FUNCTION_275();
    sub_1C8D02AFC(v15, v16, v17);
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_105_1();
    v18 = sub_1C9064A6C();
    *(v1 + *(v9 + 20)) = v25;
    sub_1C8CAC450(v18, v19, v20);
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_105_1();
    sub_1C9064A6C();
    v21 = OUTLINED_FUNCTION_129_1();
    v22(v21);
    *(v1 + *(v9 + 24)) = v25;
    OUTLINED_FUNCTION_152();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DDE9E8(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  sub_1C906204C();
  sub_1C8CC8068(&qword_1EDA666F0);
  sub_1C9063E7C();
  sub_1C9061F4C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.primitiveType.getter()
{
  OUTLINED_FUNCTION_422();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  type metadata accessor for TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_0_47();
  OUTLINED_FUNCTION_254();
  sub_1C8CC5734();
  OUTLINED_FUNCTION_136();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = 25;
      goto LABEL_27;
    case 2u:
      v8 = 26;
      goto LABEL_27;
    case 3u:
      v8 = 27;
      goto LABEL_27;
    case 4u:
      sub_1C8CC6AB4();
      v8 = 28;
      goto LABEL_27;
    case 5u:
      v9 = 29;
      goto LABEL_25;
    case 6u:
      v9 = 30;
      goto LABEL_25;
    case 7u:
      v9 = 31;
      goto LABEL_25;
    case 8u:
      v9 = 33;
      goto LABEL_25;
    case 9u:
      v10 = OUTLINED_FUNCTION_119();
      v11(v10);
      v12 = sub_1C90618BC();
      v13 = NSUnit.toolkitUnitType.getter();

      (*(v5 + 8))(v0, v3);
      *v2 = v13;
      goto LABEL_28;
    case 0xAu:
      v9 = 34;
      goto LABEL_25;
    case 0xBu:
      v9 = 35;
      goto LABEL_25;
    case 0xCu:
      v9 = 36;
      goto LABEL_25;
    case 0xDu:
      v9 = 37;
      goto LABEL_25;
    case 0xEu:
      v9 = 38;
      goto LABEL_25;
    case 0xFu:
      v9 = 39;
      goto LABEL_25;
    case 0x10u:
      sub_1C8CC6AB4();
      v8 = 40;
      goto LABEL_27;
    case 0x11u:
      v9 = 43;
      goto LABEL_25;
    case 0x12u:
      v9 = 41;
      goto LABEL_25;
    case 0x13u:
      v9 = 44;
      goto LABEL_25;
    case 0x14u:
      v8 = 45;
      goto LABEL_27;
    case 0x15u:
      v9 = 46;
LABEL_25:
      *v2 = v9;
      OUTLINED_FUNCTION_14_20();
      sub_1C8CC6AB4();
      goto LABEL_28;
    case 0x16u:
      sub_1C8CC6AB4();
      v8 = 42;
      goto LABEL_27;
    case 0x17u:
      v8 = 23;
      goto LABEL_27;
    default:
      v8 = 24;
LABEL_27:
      *v2 = v8;
LABEL_28:
      OUTLINED_FUNCTION_421();
      return;
  }
}

uint64_t sub_1C8DDEDA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

unint64_t sub_1C8DDEE78(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8DDEEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDEDA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDEEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0CF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DDEF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0CF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.AppValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315538, &qword_1C907D4E8);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38();
  v18 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF0CF8(v18, v19, v20);
  OUTLINED_FUNCTION_100_3(&type metadata for TypedValue.PrimitiveValue.AppValue.CodingKeys);
  OUTLINED_FUNCTION_97_3();
  sub_1C9064B2C();
  if (!v16)
  {
    type metadata accessor for TypedValue.PrimitiveValue.AppValue(0);
    OUTLINED_FUNCTION_223_0();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v21);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v22 = OUTLINED_FUNCTION_86_2();
  v23(v22);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.AppValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315540, &qword_1C907D4F0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_16_5();
  v8 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF0CF8(v13, v14, v15);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_303_1(v16, v17, v18);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    *v12 = OUTLINED_FUNCTION_288_1();
    v12[1] = v19;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v20);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v21 = OUTLINED_FUNCTION_109();
    v22(v21);
    sub_1C8D60F48(v1, v12 + *(v8 + 20));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DDF388()
{
  v0 = OUTLINED_FUNCTION_386();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_108_1(*(v2 + 20));

  return sub_1C8DF0C88(v3, v4);
}

uint64_t TypedValue.PrimitiveValue.Shortcut.init(identifier:)()
{
  OUTLINED_FUNCTION_223();
  v3 = v2;
  type metadata accessor for TypedValue.PrimitiveValue.Shortcut(0);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t sub_1C8DDF438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v6 = a5 + *(a4(0) + 20);

  return sub_1C8D60F48(a3, v6);
}

void sub_1C8DDF4A0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  OUTLINED_FUNCTION_262_1();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_116_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51();
  v10 = *v2 == *v1 && v2[1] == v1[1];
  if (v10 || (sub_1C9064C2C() & 1) != 0)
  {
    v11 = *(v4(0) + 20);
    v12 = *(v8 + 48);
    sub_1C8DF0C88(v2 + v11, v0);
    sub_1C8DF0C88(v1 + v11, v0 + v12);
    OUTLINED_FUNCTION_92_0(v0);
    if (!v10)
    {
      v13 = OUTLINED_FUNCTION_209();
      sub_1C8DF0C88(v13, v14);
      OUTLINED_FUNCTION_92_0(v0 + v12);
      if (!v15)
      {
        OUTLINED_FUNCTION_348_1();
        OUTLINED_FUNCTION_134();
        static DisplayRepresentation.== infix(_:_:)();
        OUTLINED_FUNCTION_30_13();
        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_181_0();
        sub_1C8CC6AB4();
        sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
        goto LABEL_15;
      }

      sub_1C8CC6AB4();
LABEL_14:
      sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_92_0(v0 + v12);
    if (!v10)
    {
      goto LABEL_14;
    }

    sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
  }

LABEL_15:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DDF6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8DDF788(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C8DDF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDF6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDF7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0D4C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DDF834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0D4C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.Shortcut.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315548, &qword_1C907D4F8);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38();
  v18 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF0D4C(v18, v19, v20);
  OUTLINED_FUNCTION_100_3(&type metadata for TypedValue.PrimitiveValue.Shortcut.CodingKeys);
  OUTLINED_FUNCTION_97_3();
  sub_1C9064B2C();
  if (!v16)
  {
    type metadata accessor for TypedValue.PrimitiveValue.Shortcut(0);
    OUTLINED_FUNCTION_223_0();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v21);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v22 = OUTLINED_FUNCTION_86_2();
  v23(v22);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8DDF9BC(uint64_t a1, uint64_t (*a2)(void))
{
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  sub_1C9063FBC();
  v8 = a2(0);
  sub_1C8DF0C88(v2 + *(v8 + 20), v3);
  OUTLINED_FUNCTION_78_4(v3);
  if (v9)
  {
    return sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_93();
  sub_1C8CCEB64();
  sub_1C9064D9C();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_2_33();
  return sub_1C8CC6AB4();
}

uint64_t sub_1C8DDFB00(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.Shortcut.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315558, &qword_1C907D500);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_16_5();
  v8 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF0D4C(v13, v14, v15);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_303_1(v16, v17, v18);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    *v12 = OUTLINED_FUNCTION_288_1();
    v12[1] = v19;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v20);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v21 = OUTLINED_FUNCTION_109();
    v22(v21);
    sub_1C8D60F48(v1, v12 + *(v8 + 20));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DDFDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

id sub_1C8DDFE34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C9063EBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

BOOL static TypedValue.PrimitiveValue.PlacemarkValue.Type.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      v4 = v3;
      v5 = v2;
      v6 = v4;
      v7 = v5;
      v8 = sub_1C90645BC();

      return v8 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1C8DDFF74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL)
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

uint64_t sub_1C8DE004C(char a1)
{
  if (a1)
  {
    return 0x72616D6563616C70;
  }

  else
  {
    return 0x4C746E6572727563;
  }
}

uint64_t sub_1C8DE009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDFF74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE00C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0DA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE0100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0DA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0E48(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE0178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0E48(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE01B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0DF4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE01F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0DF4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.PlacemarkValue.Type.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315560, &qword_1C907D508);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315568, &qword_1C907D510);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_86();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315570, &qword_1C907D518);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  v9 = *v0;
  v10 = OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8DF0DA0(v10, v11, v12);
  OUTLINED_FUNCTION_103_0();
  v13 = sub_1C9064E1C();
  if (v9)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8DF0DF4(v16, v17, v18);
    sub_1C9064ACC();
    v19 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_290_1(v21);
    sub_1C9064B8C();
    v22 = OUTLINED_FUNCTION_55_4();
  }

  else
  {
    sub_1C8DF0E48(v13, v14, v15);
    OUTLINED_FUNCTION_104_0();
    sub_1C9064ACC();
    v22 = OUTLINED_FUNCTION_107_3();
  }

  v23(v22);
  (*(v7 + 8))(v1, v24);
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.PlacemarkValue.Type.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    MEMORY[0x1CCA82810](1);
    v3 = v2;
    sub_1C90645CC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }
}

uint64_t TypedValue.PrimitiveValue.PlacemarkValue.Type.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  if (v1)
  {
    MEMORY[0x1CCA82810](1);
    v2 = v1;
    sub_1C90645CC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.PlacemarkValue.Type.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v54 = v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315598, &qword_1C907D528);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155A0, &qword_1C907D530);
  OUTLINED_FUNCTION_7_21();
  v53 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155A8, &qword_1C907D538);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = OUTLINED_FUNCTION_107();
  v13 = OUTLINED_FUNCTION_217(v11, v12);
  sub_1C8DF0DA0(v13, v14, v15);
  sub_1C9064DEC();
  if (!v1)
  {
    v16 = sub_1C9064A9C();
    v17 = sub_1C8CB8914(v16, 0);
    if (v19 != v18 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v24 == v25)
      {
        __break(1u);
        return;
      }

      v57 = *(v23 + v21);
      sub_1C8CB891C(v21 + 1, v20, v17, v23, v21, v22);
      v27 = v26;
      v29 = v28;
      v30 = swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        if (v57)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8DF0DF4(v33, v34, v35);
          OUTLINED_FUNCTION_41_4();
          sub_1C906498C();
          v36 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315588, &qword_1C907D520);
          OUTLINED_FUNCTION_5_24();
          sub_1C8D24EA8(v37);
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_235_0();
          v49(v48, v55);
          v50 = OUTLINED_FUNCTION_278();
          v51(v50);
          v52 = v56;
        }

        else
        {
          sub_1C8DF0E48(v30, v31, v32);
          OUTLINED_FUNCTION_41_4();
          sub_1C906498C();
          v36 = v54;
          swift_unknownObjectRelease();
          (*(v53 + 8))(v2, v0);
          v46 = OUTLINED_FUNCTION_241();
          v47(v46, v9);
          v52 = 0;
        }

        *v36 = v52;
        v45 = v4;
        goto LABEL_10;
      }
    }

    v38 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v38, MEMORY[0x1E69E6B28]);
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v40 = &type metadata for TypedValue.PrimitiveValue.PlacemarkValue.Type;
    v41 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v41);
    OUTLINED_FUNCTION_10_0();
    (*(v42 + 104))(v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_241();
    v44(v43, v9);
  }

  v45 = v4;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v45);
  OUTLINED_FUNCTION_198();
}

id TypedValue.PrimitiveValue.PlacemarkValue.placemark.getter()
{
  OUTLINED_FUNCTION_165_3();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    sub_1C8CB78AC(0, &qword_1EDA6CBB8, 0x1E695FC20);
    v4 = sub_1C8DDFE34([objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:1.79769313e308 longitude:1.79769313e308], 0, 0, 0);
    v3 = [objc_allocWithZone(MEMORY[0x1E695FC20]) initWithPlacemark_];

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id TypedValue.PrimitiveValue.PlacemarkValue.type.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_165_3();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void TypedValue.PrimitiveValue.PlacemarkValue.init(placemark:)()
{
  OUTLINED_FUNCTION_422();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_116_3();
  v7 = sub_1C8CADD44(v2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = type metadata accessor for DisplayRepresentation(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    *v0 = v9;
    v0[1] = v10;
    OUTLINED_FUNCTION_278_1();
    v16 = (v0 + *(v11 + 32));
    *v16 = 0u;
    v16[1] = 0u;
    *(v0 + *(v11 + 36)) = MEMORY[0x1E69E7CC0];
    v17 = v0;
    v18 = 0;
    v19 = 1;
    v20 = v11;
  }

  else
  {
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_115();
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_206();
  sub_1C8D60F48(v21, v22);
  OUTLINED_FUNCTION_165_3();
  *(v4 + v23) = v2;
  OUTLINED_FUNCTION_421();
}

uint64_t static TypedValue.PrimitiveValue.PlacemarkValue.currentLocation.getter()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for DisplayRepresentation(v1);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v6 = 0xD000000000000010;
  v6[1] = 0x80000001C90CAC40;
  OUTLINED_FUNCTION_278_1();
  v11 = (v6 + *(v2 + 32));
  *v11 = 0u;
  v11[1] = 0u;
  *(v6 + *(v2 + 36)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_134();
  sub_1C8CCEB64();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  result = OUTLINED_FUNCTION_165_3();
  *(v0 + v13) = 0;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PlacemarkValue.init(codablePlacemark:displayRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_165_3();
  *(a2 + v4) = v3;
  v5 = OUTLINED_FUNCTION_94();

  return sub_1C8D60F48(v5, v6);
}

void static TypedValue.PrimitiveValue.PlacemarkValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_223();
  v3 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v10 = *(v9 + 56);
  v11 = OUTLINED_FUNCTION_181();
  sub_1C8DF0C88(v11, v12);
  sub_1C8DF0C88(v0, v2 + v10);
  OUTLINED_FUNCTION_78_4(v2);
  if (v15)
  {
    OUTLINED_FUNCTION_78_4(v2 + v10);
    if (v15)
    {
      sub_1C8D16D78(v2, &qword_1EC312788, &unk_1C906A3A0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_288();
  sub_1C8DF0C88(v13, v14);
  OUTLINED_FUNCTION_78_4(v2 + v10);
  if (v15)
  {
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
LABEL_9:
    sub_1C8D16D78(v2, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_3_29();
  sub_1C8CCEB64();
  static DisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_177_3();
  sub_1C8CC6AB4();
  sub_1C8CC6AB4();
  sub_1C8D16D78(v2, &qword_1EC312788, &unk_1C906A3A0);
  if (v3)
  {
LABEL_11:
    OUTLINED_FUNCTION_165_3();
    v17 = *(v1 + v16);
    v18 = *(v0 + v16);
    if (v17)
    {
      if (v18)
      {
        sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
        v19 = v18;
        v20 = v17;
        v21 = v19;
        v22 = v20;
        v23 = v21;
        v24 = v22;
        sub_1C90645BC();

        goto LABEL_19;
      }

      v25 = v17;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_19;
      }

      v25 = 0;
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE10CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8DE119C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C8DE11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE10CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE1200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0E9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE123C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0E9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.PlacemarkValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155B0, &qword_1C907D540);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_72();
  v17 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF0E9C(v17, v18, v19);
  OUTLINED_FUNCTION_358(&type metadata for TypedValue.PrimitiveValue.PlacemarkValue.CodingKeys);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_1_42();
  sub_1C8CC8068(v20);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B0C();
  if (!v14)
  {
    v28 = *(v15 + *(type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(0) + 20));
    OUTLINED_FUNCTION_276_0();
    sub_1C8DF0EF0(v21, v22, v23);
    v24 = v28;
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v26 = OUTLINED_FUNCTION_111_0();
  v27(v26);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.PlacemarkValue.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_258();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51();
  v7 = OUTLINED_FUNCTION_206();
  sub_1C8DF0C88(v7, v8);
  OUTLINED_FUNCTION_108_2(v1, 1, v3);
  if (v9)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_3_29();
    OUTLINED_FUNCTION_181();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_284();
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_165_3();
  v11 = *(v1 + v10);
  if (v11)
  {
    MEMORY[0x1CCA82810](1);
    v12 = v11;
    OUTLINED_FUNCTION_45_2();
    sub_1C90645CC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }
}

void TypedValue.PrimitiveValue.PlacemarkValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_264_1(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155C0, &qword_1C907D548);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_16_5();
  v9 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v8);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v11 = OUTLINED_FUNCTION_122_3(v0);
  sub_1C8DF0E9C(v11, v12, v13);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_291_0(v14, v15, v16);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v17);
    OUTLINED_FUNCTION_212_1();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    sub_1C8D60F48(v3, v2);
    OUTLINED_FUNCTION_223_0();
    sub_1C8DF0F44(v18, v19, v20);
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    v21 = OUTLINED_FUNCTION_114();
    v22(v21);
    *(v2 + *(v9 + 20)) = v23;
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

id TypedValue.PrimitiveValue.PersonValue.person.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0) + 20));

  return v1;
}

uint64_t TypedValue.PrimitiveValue.PersonValue.init(person:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  result = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PersonValue.init(person:displayRepresentation:)()
{
  OUTLINED_FUNCTION_223();
  *(v1 + *(type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0) + 20)) = v0;
  v2 = OUTLINED_FUNCTION_145();

  return sub_1C8D60F48(v2, v3);
}

uint64_t sub_1C8DE18C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656C6261646F63 && a2 == 0xED00006E6F737265)
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

uint64_t sub_1C8DE199C(char a1)
{
  if (a1)
  {
    return 0x50656C6261646F63;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C8DE19EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE18C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0F98(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE1A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0F98(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.PersonValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155D0, &qword_1C907D550);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v16 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF0F98(v16, v17, v18);
  OUTLINED_FUNCTION_358(&type metadata for TypedValue.PrimitiveValue.PersonValue.CodingKeys);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_1_42();
  sub_1C8CC8068(v19);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B0C();
  if (!v14)
  {
    v20 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0);
    OUTLINED_FUNCTION_292_1(v20);
    v21 = OUTLINED_FUNCTION_276();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_6_18();
    sub_1C8D24EA8(v23);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v25 = OUTLINED_FUNCTION_111_0();
  v26(v25);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.PersonValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_264_1(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155E0, &qword_1C907D560);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_16_5();
  v8 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_12();
  v10 = OUTLINED_FUNCTION_122_3(v0);
  sub_1C8DF0F98(v10, v11, v12);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_291_0(v13, v14, v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_341_1();
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v16);
    OUTLINED_FUNCTION_212_1();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    sub_1C8D60F48(v2, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155D8, &qword_1C907D558);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_5_24();
    sub_1C8D24EA8(v17);
    OUTLINED_FUNCTION_245_0();
    v18 = OUTLINED_FUNCTION_139_1();
    v19(v18);
    OUTLINED_FUNCTION_323_1();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.init(amount:currencyIdentifier:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v11 = v9;
  *(v11 + 8) = v7;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v1;
  OUTLINED_FUNCTION_421();
}

uint64_t TypedValue.PrimitiveValue.CurrencyAmountValue.init(amount:currencyIdentifier:displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
  v6 = OUTLINED_FUNCTION_216_0();

  return sub_1C8D60F48(v6, v7);
}

void static TypedValue.PrimitiveValue.CurrencyAmountValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_262_1();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_116_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51();
  if (MEMORY[0x1CCA82070](*v2, *(v2 + 8), *(v2 + 16), *v1, *(v1 + 8), *(v1 + 16)))
  {
    v9 = *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
    if (v9 || (sub_1C9064C2C() & 1) != 0)
    {
      v10 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
      OUTLINED_FUNCTION_340_1(v10);
      sub_1C8DF0C88(v1 + v3, v0 + v7);
      OUTLINED_FUNCTION_92_0(v0);
      if (!v9)
      {
        v11 = OUTLINED_FUNCTION_209();
        sub_1C8DF0C88(v11, v12);
        OUTLINED_FUNCTION_92_0(v0 + v7);
        if (!v13)
        {
          OUTLINED_FUNCTION_3_29();
          OUTLINED_FUNCTION_348_1();
          OUTLINED_FUNCTION_134();
          static DisplayRepresentation.== infix(_:_:)();
          OUTLINED_FUNCTION_30_13();
          sub_1C8CC6AB4();
          OUTLINED_FUNCTION_181_0();
          sub_1C8CC6AB4();
          sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
LABEL_15:
        sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_92_0(v0 + v7);
      if (!v9)
      {
        goto LABEL_15;
      }

      sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE21E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CAD30 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8DE22F8(char a1)
{
  if (!a1)
  {
    return 0x746E756F6D61;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DE2358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE21E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE2380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0FEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE23BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF0FEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155E8, &qword_1C907D568);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38();
  v14 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF0FEC(v14, v15, v16);
  OUTLINED_FUNCTION_100_3(&type metadata for TypedValue.PrimitiveValue.CurrencyAmountValue.CodingKeys);
  type metadata accessor for Decimal(0);
  OUTLINED_FUNCTION_37_11();
  sub_1C8CC8068(v17);
  OUTLINED_FUNCTION_47_7();
  sub_1C9064B8C();
  if (!v12)
  {
    OUTLINED_FUNCTION_385();
    OUTLINED_FUNCTION_97_3();
    sub_1C9064B2C();
    type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
    OUTLINED_FUNCTION_275_1();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v18);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v19 = OUTLINED_FUNCTION_86_2();
  v20(v19);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

uint64_t TypedValue.PrimitiveValue.CurrencyAmountValue.hash(into:)(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  sub_1C90645FC();
  sub_1C9063FBC();
  v6 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
  sub_1C8DF0C88(v1 + *(v6 + 24), v2);
  OUTLINED_FUNCTION_92_0(v2);
  if (v7)
  {
    return OUTLINED_FUNCTION_308();
  }

  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_148();
  sub_1C8CCEB64();
  OUTLINED_FUNCTION_419();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_2_33();
  return sub_1C8CC6AB4();
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_196();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v27);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315600, &qword_1C907D570);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_16_5();
  v31 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v30);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17_12();
  v33 = OUTLINED_FUNCTION_122_3(v26);
  sub_1C8DF0FEC(v33, v34, v35);
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    type metadata accessor for Decimal(0);
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_37_11();
    sub_1C8CC8068(v36);
    OUTLINED_FUNCTION_202_2();
    sub_1C9064A6C();
    *v23 = v41;
    *(v23 + 16) = v42;
    OUTLINED_FUNCTION_223_0();
    *(v23 + 24) = sub_1C9064A0C();
    *(v23 + 32) = v37;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v38);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v39 = OUTLINED_FUNCTION_162();
    v40(v39);
    sub_1C8D60F48(v24, v23 + *(v31 + 24));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DE2A34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696B63656863 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73676E69766173 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676172656B6F7262 && a2 == 0xE900000000000065;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469626564 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746964657263 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696170657270 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65726F7473 && a2 == 0xE500000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x796150656C707061 && a2 == 0xE800000000000000)
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

uint64_t sub_1C8DE2CF0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x676E696B63656863;
      break;
    case 2:
      result = 0x73676E69766173;
      break;
    case 3:
      result = 0x676172656B6F7262;
      break;
    case 4:
      result = 0x7469626564;
      break;
    case 5:
      result = 0x746964657263;
      break;
    case 6:
      result = 0x64696170657270;
      break;
    case 7:
      result = 0x65726F7473;
      break;
    case 8:
      result = 0x796150656C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DE2DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1094(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE2E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1094(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1238(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE2E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1238(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE2ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF12E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE2F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF12E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE2F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE2A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE2F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1040(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE2FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1040(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1190(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE3028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1190(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE3064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF11E4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE30A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF11E4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE30DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF113C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE3118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF113C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE3154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF128C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE3190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF128C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE31CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF10E8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE3208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF10E8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE3244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1334(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE3280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1334(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.PaymentMethodValue.Type.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v30;
  a27 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315610, &qword_1C907D578);
  OUTLINED_FUNCTION_11();
  v111 = v33;
  v112 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315618, &qword_1C907D580);
  OUTLINED_FUNCTION_11();
  v108 = v37;
  v109 = v36;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v107 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315620, &qword_1C907D588);
  OUTLINED_FUNCTION_11();
  v105 = v41;
  v106 = v40;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v104 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315628, &qword_1C907D590);
  OUTLINED_FUNCTION_11();
  v102 = v45;
  v103 = v44;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v101 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315630, &qword_1C907D598);
  OUTLINED_FUNCTION_11();
  v99 = v49;
  v100 = v48;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_97();
  v98 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315638, &qword_1C907D5A0);
  OUTLINED_FUNCTION_11();
  v96 = v53;
  v97 = v52;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v95 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315640, &qword_1C907D5A8);
  OUTLINED_FUNCTION_4_22(v56, &a25);
  v94[4] = v57;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315648, &qword_1C907D5B0);
  OUTLINED_FUNCTION_4_22(v60, &a22);
  v94[1] = v61;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_110();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315650, &qword_1C907D5B8);
  OUTLINED_FUNCTION_11();
  v94[0] = v64;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v94 - v66;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315658, &qword_1C907D5C0);
  OUTLINED_FUNCTION_11();
  v69 = v68;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_233();
  v71 = *v27;
  v72 = OUTLINED_FUNCTION_136();
  v74 = OUTLINED_FUNCTION_217(v72, v73);
  sub_1C8DF1040(v74, v75, v76);
  OUTLINED_FUNCTION_197();
  v77 = sub_1C9064E1C();
  switch(v71)
  {
    case 1:
      OUTLINED_FUNCTION_277_0();
      sub_1C8DF12E0(v91, v92, v93);
      v67 = v113;
      OUTLINED_FUNCTION_104_0();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v89 = v29;
      v90 = &a22;
      goto LABEL_8;
    case 2:
      sub_1C8DF128C(v77, v78, v79);
      v87 = v94[3];
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.SavingsCodingKeys);
      OUTLINED_FUNCTION_296();
      v89 = v87;
      v90 = &a25;
LABEL_8:
      v85 = *(v90 - 32);
      goto LABEL_13;
    case 3:
      sub_1C8DF1238(v77, v78, v79);
      v84 = v95;
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.BrokerageCodingKeys);
      v86 = v96;
      v85 = v97;
      goto LABEL_12;
    case 4:
      sub_1C8DF11E4(v77, v78, v79);
      v84 = v98;
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.DebitCodingKeys);
      v86 = v99;
      v85 = v100;
      goto LABEL_12;
    case 5:
      sub_1C8DF1190(v77, v78, v79);
      v84 = v101;
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.CreditCodingKeys);
      v86 = v102;
      v85 = v103;
      goto LABEL_12;
    case 6:
      sub_1C8DF113C(v77, v78, v79);
      v84 = v104;
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.PrepaidCodingKeys);
      v86 = v105;
      v85 = v106;
      goto LABEL_12;
    case 7:
      sub_1C8DF10E8(v77, v78, v79);
      v84 = v107;
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.StoreCodingKeys);
      v86 = v108;
      v85 = v109;
      goto LABEL_12;
    case 8:
      sub_1C8DF1094(v77, v78, v79);
      v84 = v110;
      OUTLINED_FUNCTION_79_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type.ApplePayCodingKeys);
      v86 = v111;
      v85 = v112;
LABEL_12:
      v88 = *(v86 + 8);
      v89 = v84;
LABEL_13:
      v88(v89, v85);
      v83 = *(v69 + 8);
      v81 = v28;
      v82 = v67;
      break;
    default:
      v114 = 0;
      sub_1C8DF1334(v77, v78, v79);
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v80(v67, v63);
      v81 = OUTLINED_FUNCTION_162();
      break;
  }

  v83(v81, v82);
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.Type.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  v0 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v0);
  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.Type.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v32;
  a27 = v33;
  v140 = v28;
  v35 = v34;
  v136 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156B0, &qword_1C907D5C8);
  OUTLINED_FUNCTION_11();
  v130 = v38;
  v131 = v37;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v135 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156B8, &qword_1C907D5D0);
  OUTLINED_FUNCTION_11();
  v128 = v42;
  v129 = v41;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v132 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156C0, &qword_1C907D5D8);
  OUTLINED_FUNCTION_11();
  v126 = v46;
  v127 = v45;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  v138 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156C8, &qword_1C907D5E0);
  OUTLINED_FUNCTION_11();
  v124 = v50;
  v125 = v49;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v137 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156D0, &qword_1C907D5E8);
  OUTLINED_FUNCTION_11();
  v122 = v54;
  v123 = v53;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  v134 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156D8, &qword_1C907D5F0);
  OUTLINED_FUNCTION_4_22(v57, &a25);
  v121 = v58;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v133 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156E0, &qword_1C907D5F8);
  OUTLINED_FUNCTION_4_22(v61, &a23);
  v120 = v62;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156E8, &qword_1C907D600);
  OUTLINED_FUNCTION_4_22(v65, &a21);
  v119 = v66;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_15_0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156F0, &qword_1C907D608);
  OUTLINED_FUNCTION_11();
  v118 = v69;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156F8, &qword_1C907D610);
  OUTLINED_FUNCTION_7_21();
  v72 = v71;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_86();
  v139 = v35;
  v74 = OUTLINED_FUNCTION_136();
  v76 = OUTLINED_FUNCTION_217(v74, v75);
  sub_1C8DF1040(v76, v77, v78);
  sub_1C9064DEC();
  if (!v28)
  {
    v116 = v29;
    v115 = v68;
    v117 = v30;
    v140 = v72;
    v79 = sub_1C9064A9C();
    v80 = sub_1C8CB8914(v79, 0);
    if (v82 != v81 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v87 == v88)
      {
        __break(1u);
        return;
      }

      v114 = *(v86 + v84);
      sub_1C8CB891C(v84 + 1, v83, v80, v86, v84, v85);
      v90 = v89;
      v92 = v91;
      v93 = swift_unknownObjectRelease();
      if (v90 == v92 >> 1)
      {
        v96 = v136;
        switch(v114)
        {
          case 1:
            OUTLINED_FUNCTION_277_0();
            sub_1C8DF12E0(v108, v109, v110);
            OUTLINED_FUNCTION_161_1();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v97 = OUTLINED_FUNCTION_62_0();
            v99 = &a21;
            goto LABEL_16;
          case 2:
            a11 = 2;
            sub_1C8DF128C(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v97 = OUTLINED_FUNCTION_62_0();
            v99 = &a23;
            goto LABEL_16;
          case 3:
            a12 = 3;
            sub_1C8DF1238(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v97 = OUTLINED_FUNCTION_62_0();
            v99 = &a25;
            goto LABEL_16;
          case 4:
            a13 = 4;
            sub_1C8DF11E4(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 5:
            a14 = 5;
            sub_1C8DF1190(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 6:
            a15 = 6;
            sub_1C8DF113C(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 7:
            a16 = 7;
            sub_1C8DF10E8(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 8:
            a17 = 8;
            sub_1C8DF1094(v93, v94, v95);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
LABEL_20:
            v97 = OUTLINED_FUNCTION_47_3();
            break;
          default:
            v141 = 0;
            sub_1C8DF1334(v93, v94, v95);
            OUTLINED_FUNCTION_161_1();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v97 = OUTLINED_FUNCTION_62_0();
            v99 = &a9;
LABEL_16:
            v111 = *(v99 - 32);
            break;
        }

        v98(v97, v111);
        v112 = OUTLINED_FUNCTION_107_3();
        v113(v112, v27);
        v107 = v139;
        *v96 = v114;
        goto LABEL_10;
      }
    }

    v100 = v27;
    v101 = v140;
    v102 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v102, MEMORY[0x1E69E6B28]);
    v104 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v104 = &type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type;
    v105 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v105);
    OUTLINED_FUNCTION_10_0();
    (*(v106 + 104))(v104);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v101 + 8))(v31, v100);
  }

  v107 = v139;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v107);
  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DE43EC()
{
  v0 = OUTLINED_FUNCTION_386();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_108_1(*(v2 + 24));

  return sub_1C8DF0C88(v3, v4);
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.init(type:identificationHint:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.init(type:identificationHint:displayRepresentation:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  v4 = OUTLINED_FUNCTION_216_0();

  return sub_1C8D60F48(v4, v5);
}

void static TypedValue.PrimitiveValue.PaymentMethodValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_262_1();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22_17();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_116_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_51();
  if (*v2 != *v1)
  {
    goto LABEL_20;
  }

  v9 = *(v2 + 2);
  v10 = *(v1 + 2);
  if (!v9)
  {
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_11:
    v12 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
    OUTLINED_FUNCTION_340_1(v12);
    sub_1C8DF0C88(&v1[v3], v0 + v7);
    OUTLINED_FUNCTION_92_0(v0);
    if (v11)
    {
      OUTLINED_FUNCTION_92_0(v0 + v7);
      if (v11)
      {
        sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
        goto LABEL_20;
      }
    }

    else
    {
      v13 = OUTLINED_FUNCTION_209();
      sub_1C8DF0C88(v13, v14);
      OUTLINED_FUNCTION_92_0(v0 + v7);
      if (!v15)
      {
        OUTLINED_FUNCTION_3_29();
        OUTLINED_FUNCTION_348_1();
        OUTLINED_FUNCTION_134();
        static DisplayRepresentation.== infix(_:_:)();
        OUTLINED_FUNCTION_30_13();
        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_181_0();
        sub_1C8CC6AB4();
        sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_2_33();
      sub_1C8CC6AB4();
    }

    sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_20;
  }

  if (v10)
  {
    v11 = *(v2 + 1) == *(v1 + 1) && v9 == v10;
    if (v11 || (sub_1C9064C2C() & 1) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE46DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CAD50 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8DE47F8(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DE4854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE46DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1388(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1388(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.PaymentMethodValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315700, &qword_1C907D618);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38();
  v18 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF1388(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_100_3(&type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.CodingKeys);
  sub_1C8DF13DC(v21, v22, v23);
  OUTLINED_FUNCTION_118_1();
  sub_1C9064B8C();
  if (!v16)
  {
    OUTLINED_FUNCTION_97_3();
    sub_1C9064ADC();
    type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
    OUTLINED_FUNCTION_275_1();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v24);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v25 = OUTLINED_FUNCTION_86_2();
  v26(v25);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.hash(into:)()
{
  OUTLINED_FUNCTION_422();
  v2 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  MEMORY[0x1CCA82810](*v0);
  if (*(v0 + 2))
  {
    sub_1C9064D9C();
    OUTLINED_FUNCTION_208_0();
    sub_1C9063FBC();
  }

  else
  {
    sub_1C9064D9C();
  }

  v6 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  sub_1C8DF0C88(&v0[*(v6 + 24)], v1);
  OUTLINED_FUNCTION_108_2(v1, 1, v2);
  if (v7)
  {
    sub_1C9064D9C();
  }

  else
  {
    OUTLINED_FUNCTION_3_29();
    OUTLINED_FUNCTION_148();
    sub_1C8CCEB64();
    sub_1C9064D9C();
    OUTLINED_FUNCTION_241_1();
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_421();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v28);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315718, &qword_1C907D620);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v35 = v34 - v33;
  v36 = OUTLINED_FUNCTION_122_3(v27);
  sub_1C8DF1388(v36, v37, v38);
  OUTLINED_FUNCTION_103_0();
  v42 = OUTLINED_FUNCTION_303_1(v39, v40, v41);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_1C8DF1430(v42, v43, v44);
    sub_1C9064A6C();
    *v35 = a14;
    *(v35 + 8) = sub_1C90649AC();
    *(v35 + 16) = v45;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v46);
    sub_1C90649EC();
    v47 = OUTLINED_FUNCTION_136();
    v48(v47);
    sub_1C8D60F48(v25, v35 + *(v31 + 24));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

id TypedValue.PrimitiveValue.FileValue.file.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValue.PrimitiveValue.FileValue(0) + 20));

  return v1;
}

void TypedValue.PrimitiveValue.FileValue.init(file:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_116_3();
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_145();
  TypedValue.PrimitiveValue.FileValue.init(file:displayRepresentation:)();
}

void TypedValue.PrimitiveValue.FileValue.init(file:displayRepresentation:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C9061ECC();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v14);
  *(v5 + *(type metadata accessor for TypedValue.PrimitiveValue.FileValue(0) + 20)) = v3;
  v15 = [v3 fileURL];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v32 = v8;
  v33 = v5;
  sub_1C9061E3C();

  OUTLINED_FUNCTION_206_2();
  v17 = OUTLINED_FUNCTION_181_1();
  v18(v17);
  v19 = sub_1C9061E4C();
  if ((v19 & 1) == 0)
  {
    v20 = [objc_opt_self() defaultManager];
    sub_1C9061E6C();
    v21 = sub_1C9063EBC();

    v22 = [v20 isWritableFileAtPath_];

    if (!v22)
    {
LABEL_9:
      v30 = OUTLINED_FUNCTION_181();
      v31(v30);
      v5 = v33;
LABEL_10:
      sub_1C8D60F48(v1, v5);
      OUTLINED_FUNCTION_163();
      return;
    }
  }

  sub_1C9061E6C();
  sub_1C9063F7C();

  v23 = sandbox_extension_issue_file();

  if (!v23)
  {
LABEL_7:
    if (v19)
    {
      sub_1C9061E2C();
    }

    goto LABEL_9;
  }

  v24 = strlen(v23);
  v25 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    (*(v32 + 104))(v12, *MEMORY[0x1E6969000], v6);
    MEMORY[0x1CCA7F960](v23, v25, v12);
    v26 = sub_1C9061DDC();
    OUTLINED_FUNCTION_117();
    v27 = sub_1C9061EFC();
    MEMORY[0x1CCA82A40](v26, v27);

    v28 = OUTLINED_FUNCTION_117();
    sub_1C8CE7B78(v28, v29);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8DE52B8()
{
  OUTLINED_FUNCTION_422();
  v4 = v3;
  OUTLINED_FUNCTION_223();
  v5 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v12 = *(v11 + 56);
  v13 = OUTLINED_FUNCTION_276();
  sub_1C8DF0C88(v13, v14);
  sub_1C8DF0C88(v0, v1 + v12);
  OUTLINED_FUNCTION_108_2(v1, 1, v5);
  if (v15)
  {
    OUTLINED_FUNCTION_108_2(v1 + v12, 1, v5);
    if (v15)
    {
      sub_1C8D16D78(v1, &qword_1EC312788, &unk_1C906A3A0);
LABEL_12:
      v4(0);
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      OUTLINED_FUNCTION_95_0();
      sub_1C90645BC();
      goto LABEL_13;
    }

LABEL_9:
    sub_1C8D16D78(v1, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_13;
  }

  sub_1C8DF0C88(v1, v2);
  OUTLINED_FUNCTION_108_2(v1 + v12, 1, v5);
  if (v15)
  {
    sub_1C8CC6AB4();
    goto LABEL_9;
  }

  sub_1C8CCEB64();
  OUTLINED_FUNCTION_278();
  static DisplayRepresentation.== infix(_:_:)();
  v17 = v16;
  sub_1C8CC6AB4();
  sub_1C8CC6AB4();
  sub_1C8D16D78(v1, &qword_1EC312788, &unk_1C906A3A0);
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE550C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46656C6261646F63 && a2 == 0xEB00000000656C69)
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

uint64_t sub_1C8DE55E0(char a1)
{
  if (a1)
  {
    return 0x46656C6261646F63;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C8DE562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE550C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE5654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1484(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1484(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.FileValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315728, &qword_1C907D628);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v16 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF1484(v16, v17, v18);
  OUTLINED_FUNCTION_358(&type metadata for TypedValue.PrimitiveValue.FileValue.CodingKeys);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_1_42();
  sub_1C8CC8068(v19);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B0C();
  if (!v14)
  {
    v20 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(0);
    OUTLINED_FUNCTION_292_1(v20);
    v21 = OUTLINED_FUNCTION_276();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_6_18();
    sub_1C8D24EA8(v23);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v25 = OUTLINED_FUNCTION_111_0();
  v26(v25);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void sub_1C8DE5854(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = OUTLINED_FUNCTION_258();
  type metadata accessor for DisplayRepresentation(v6);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v8);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51();
  v10 = OUTLINED_FUNCTION_206();
  sub_1C8DF0C88(v10, v11);
  OUTLINED_FUNCTION_78_4(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_284();
    v2 = v3;
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  v13 = *&v5[*(a2(0) + 20)];
  OUTLINED_FUNCTION_45_2();
  sub_1C90645CC();
}

void TypedValue.PrimitiveValue.FileValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_264_1(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315738, &qword_1C907D638);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_16_5();
  v8 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_12();
  v10 = OUTLINED_FUNCTION_122_3(v0);
  sub_1C8DF1484(v10, v11, v12);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_291_0(v13, v14, v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_341_1();
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v16);
    OUTLINED_FUNCTION_212_1();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    sub_1C8D60F48(v2, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315730, &qword_1C907D630);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_5_24();
    sub_1C8D24EA8(v17);
    OUTLINED_FUNCTION_245_0();
    v18 = OUTLINED_FUNCTION_139_1();
    v19(v18);
    OUTLINED_FUNCTION_323_1();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DE5C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1724(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1724(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1970(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1970(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1C10(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1C10(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8DE5BF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C8DE5DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CCA1E4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CCA1E4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF18C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF18C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1A6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1A6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1A18(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1A18(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE5FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF15D4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE5FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF15D4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1B14(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1B14(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE60B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1580(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1580(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1778(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1778(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE61A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1BBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE61DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1BBC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF14D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF14D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF191C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE62CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF191C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CCA238(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CCA238(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1B68(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE63BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1B68(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE63F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1874(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1874(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF17CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE64AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF17CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE64E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF152C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF152C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1820(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1820(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE65D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1628(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1628(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF16D0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE668C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF16D0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE66C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF167C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE6704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF167C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE6740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1AC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1AC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DE67B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF19C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE67F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF19C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.PrimitiveValue.hash(into:)(uint64_t a1)
{
  v117 = a1;
  sub_1C9061D4C();
  OUTLINED_FUNCTION_11();
  v114[2] = v8;
  v114[3] = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v114[1] = v9;
  OUTLINED_FUNCTION_111();
  sub_1C906194C();
  OUTLINED_FUNCTION_11();
  v114[0] = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_111();
  sub_1C90622FC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_0();
  v12 = OUTLINED_FUNCTION_111();
  type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v12);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  v14 = OUTLINED_FUNCTION_111();
  v15 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v14);
  v16 = OUTLINED_FUNCTION_23_16(v15, &v120);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_0();
  v17 = OUTLINED_FUNCTION_111();
  v112 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v17);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_0();
  v113 = v19;
  v20 = OUTLINED_FUNCTION_111();
  v115 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v20);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  v23 = OUTLINED_FUNCTION_27_0(v22);
  v24 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v23);
  v25 = OUTLINED_FUNCTION_23_16(v24, &v119);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v27 = OUTLINED_FUNCTION_27_0(v26);
  v28 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v27);
  v29 = OUTLINED_FUNCTION_23_16(v28, &v118);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_0();
  v31 = OUTLINED_FUNCTION_27_0(v30);
  v116 = type metadata accessor for DisplayRepresentation(v31);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v35 = OUTLINED_FUNCTION_9(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_147();
  v43 = OUTLINED_FUNCTION_27_0(v42);
  v44 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v43);
  v45 = OUTLINED_FUNCTION_23_16(v44, &v117);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_4_22(v47, &v116);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v49);
  v50 = sub_1C9061C0C();
  v51 = OUTLINED_FUNCTION_4_22(v50, v114);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_17_12();
  v52 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_67_4();
  sub_1C9061BAC();
  OUTLINED_FUNCTION_7_21();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_14();
  v55 = sub_1C9061FEC();
  OUTLINED_FUNCTION_11();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  v59 = OUTLINED_FUNCTION_32_7();
  type metadata accessor for TypedValue.PrimitiveValue(v59);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_0_47();
  sub_1C8CC5734();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v77 = *v2;
      MEMORY[0x1CCA82810](2);
      v78 = v77;
      goto LABEL_44;
    case 2u:
      v68 = *v2;
      MEMORY[0x1CCA82810](3);
      v69 = 0.0;
      if (v68 != 0.0)
      {
        v69 = v68;
      }

      MEMORY[0x1CCA82830](*&v69);
      return;
    case 3u:
      MEMORY[0x1CCA82810](4);
      OUTLINED_FUNCTION_181();
      sub_1C90645FC();
      return;
    case 4u:
      MEMORY[0x1CCA82810](5);
      OUTLINED_FUNCTION_95_0();
      sub_1C9063FBC();

      return;
    case 5u:
      v81 = OUTLINED_FUNCTION_206();
      v82(v81);
      MEMORY[0x1CCA82810](6);
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v83);
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      (*(v57 + 8))(v3, v55);
      return;
    case 6u:
      v87 = OUTLINED_FUNCTION_120_3();
      v88(v87);
      MEMORY[0x1CCA82810](7);
      OUTLINED_FUNCTION_34_9();
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_263_1();
      v72(v6, v2, v52);
      MEMORY[0x1CCA82810](8);
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v73);
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      v74 = OUTLINED_FUNCTION_219();
      goto LABEL_38;
    case 8u:
      OUTLINED_FUNCTION_263_1();
      v93 = OUTLINED_FUNCTION_254();
      v94(v93);
      MEMORY[0x1CCA82810](9);
      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v95);
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      v76 = *(v1 + 8);
      v74 = v5;
      v75 = v106;
LABEL_38:
      v76(v74, v75);
      return;
    case 9u:
      OUTLINED_FUNCTION_206_2();
      v66 = OUTLINED_FUNCTION_119();
      v67(v66);
      MEMORY[0x1CCA82810](10);
      sub_1C8D24EA8(&unk_1EC3158E0);
      goto LABEL_42;
    case 0xAu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](11);
      OUTLINED_FUNCTION_339_1();
      sub_1C90645FC();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_130_0();
      sub_1C8DF0C88(v91, v92);
      OUTLINED_FUNCTION_108_2(v1, 1, v116);
      if (!v63)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    case 0xBu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](12);
      MEMORY[0x1CCA82810](*v4);
      if (*(v4 + 2))
      {
        sub_1C9064D9C();
        OUTLINED_FUNCTION_209();
        sub_1C9063FBC();
      }

      else
      {
        sub_1C9064D9C();
      }

      v105 = v116;
      sub_1C8DF0C88(&v4[*(v110 + 24)], v109);
      OUTLINED_FUNCTION_108_2(v109, 1, v105);
      if (v63)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_3_29();
      sub_1C8CCEB64();
      sub_1C9064D9C();
      OUTLINED_FUNCTION_241_1();
      DisplayRepresentation.hash(into:)();
      OUTLINED_FUNCTION_2_33();
      sub_1C8CC6AB4();
      goto LABEL_56;
    case 0xCu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](13);
      OUTLINED_FUNCTION_130_0();
      sub_1C8DF0C88(v64, v65);
      OUTLINED_FUNCTION_108_2(v1, 1, v116);
      if (v63)
      {
        OUTLINED_FUNCTION_308();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_419();
        DisplayRepresentation.hash(into:)();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      v102 = *&v4[*(v111 + 20)];
      if (v102)
      {
        MEMORY[0x1CCA82810](1);
        v103 = v102;
        sub_1C90645CC();
      }

      else
      {
        MEMORY[0x1CCA82810](0);
      }

      goto LABEL_56;
    case 0xDu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](14);
      v62 = v107;
      sub_1C8DF0C88(v4, v107);
      OUTLINED_FUNCTION_108_2(v107, 1, v116);
      if (v63)
      {
        OUTLINED_FUNCTION_283();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_346_1();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      v104 = *&v4[*(v115 + 20)];
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();
      goto LABEL_49;
    case 0xEu:
      OUTLINED_FUNCTION_152();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](15);
      v62 = v108;
      sub_1C8DF0C88(v113, v108);
      OUTLINED_FUNCTION_108_2(v108, 1, v116);
      if (v63)
      {
        OUTLINED_FUNCTION_283();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_346_1();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      v101 = *(v113 + *(v112 + 20));
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();
LABEL_49:
      sub_1C8CC6AB4();
      goto LABEL_50;
    case 0xFu:
      OUTLINED_FUNCTION_152();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](16);
      OUTLINED_FUNCTION_339_1();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_130_0();
      sub_1C8DF0C88(v70, v71);
      OUTLINED_FUNCTION_108_2(v1, 1, v116);
      if (!v63)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    case 0x10u:
      v61 = *v2;
      MEMORY[0x1CCA82810](17);
      OUTLINED_FUNCTION_241_1();
      sub_1C90645CC();

      return;
    case 0x11u:
      OUTLINED_FUNCTION_152();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](18);
      OUTLINED_FUNCTION_339_1();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_130_0();
      sub_1C8DF0C88(v79, v80);
      OUTLINED_FUNCTION_108_2(v1, 1, v116);
      if (v63)
      {
LABEL_54:
        sub_1C9064D9C();
      }

      else
      {
LABEL_35:
        OUTLINED_FUNCTION_3_29();
        OUTLINED_FUNCTION_254_0();
        sub_1C9064D9C();
        OUTLINED_FUNCTION_241_1();
        DisplayRepresentation.hash(into:)();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

LABEL_56:
      sub_1C8CC6AB4();
      return;
    case 0x12u:
      v89 = OUTLINED_FUNCTION_120_3();
      v90(v89);
      MEMORY[0x1CCA82810](19);
      OUTLINED_FUNCTION_70_1();
      goto LABEL_41;
    case 0x13u:
      v97 = OUTLINED_FUNCTION_120_3();
      v98(v97);
      MEMORY[0x1CCA82810](20);
      OUTLINED_FUNCTION_32_8();
      goto LABEL_41;
    case 0x14u:
      MEMORY[0x1CCA82810](21);
      OUTLINED_FUNCTION_95_0();
      sub_1C9064E6C();
      return;
    case 0x15u:
      v84 = OUTLINED_FUNCTION_120_3();
      v85(v84);
      MEMORY[0x1CCA82810](22);
      OUTLINED_FUNCTION_35_11();
LABEL_41:
      sub_1C8CC8068(v86);
LABEL_42:
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      v99 = OUTLINED_FUNCTION_93();
      v100(v99);
      break;
    case 0x16u:
      v96 = *v2;
      MEMORY[0x1CCA82810](23);
      v62 = v96;
      sub_1C90645CC();

LABEL_50:
      break;
    case 0x17u:
      v78 = 0.0;
LABEL_44:
      MEMORY[0x1CCA82810](*&v78);
      break;
    default:
      MEMORY[0x1CCA82810](1);
      sub_1C9064D9C();
      break;
  }
}

uint64_t == infix(_:_:)(uint64_t a1, void *a2)
{
  v216[2] = a1;
  v217 = a2;
  sub_1C9061D4C();
  OUTLINED_FUNCTION_11();
  v215 = v5;
  v216[0] = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v7);
  sub_1C906194C();
  OUTLINED_FUNCTION_11();
  v213 = v9;
  v214 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v11);
  sub_1C90622FC();
  OUTLINED_FUNCTION_11();
  v211 = v13;
  v212 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_147();
  v16 = OUTLINED_FUNCTION_27_0(v15);
  v17 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v16);
  v18 = OUTLINED_FUNCTION_9(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_147();
  v21 = OUTLINED_FUNCTION_27_0(v20);
  v22 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v21);
  v23 = OUTLINED_FUNCTION_9(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_147();
  v26 = OUTLINED_FUNCTION_27_0(v25);
  v27 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v26);
  v28 = OUTLINED_FUNCTION_9(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_147();
  v31 = OUTLINED_FUNCTION_27_0(v30);
  v32 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v31);
  v33 = OUTLINED_FUNCTION_9(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_147();
  v36 = OUTLINED_FUNCTION_27_0(v35);
  v37 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v36);
  v38 = OUTLINED_FUNCTION_9(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_147();
  v41 = OUTLINED_FUNCTION_27_0(v40);
  v42 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v41);
  v43 = OUTLINED_FUNCTION_9(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_147();
  v46 = OUTLINED_FUNCTION_27_0(v45);
  v47 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v46);
  v48 = OUTLINED_FUNCTION_9(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_11();
  v209 = v52;
  v210 = v51;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v54);
  sub_1C9061C0C();
  OUTLINED_FUNCTION_11();
  v207 = v56;
  v208 = v55;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v58);
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v205 = v60;
  v206 = v59;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v62);
  sub_1C9061BAC();
  OUTLINED_FUNCTION_11();
  v203 = v64;
  v204 = v63;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v66);
  sub_1C9061FEC();
  OUTLINED_FUNCTION_11();
  v201 = v68;
  v202 = v67;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_147();
  v71 = OUTLINED_FUNCTION_27_0(v70);
  v216[1] = type metadata accessor for TypedValue.PrimitiveValue(v71);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_337_1();
  MEMORY[0x1EEE9AC00](v89);
  v91 = (v194 - v90);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v93);
  v95 = v194 - v94;
  MEMORY[0x1EEE9AC00](v96);
  v98 = (v194 - v97);
  MEMORY[0x1EEE9AC00](v99);
  v101 = (v194 - v100);
  MEMORY[0x1EEE9AC00](v102);
  v104 = v194 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A10, &qword_1C907D7D8);
  OUTLINED_FUNCTION_9(v105);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_15_0();
  v108 = (v2 + *(v107 + 56));
  sub_1C8CC5734();
  v217 = v108;
  sub_1C8CC5734();
  OUTLINED_FUNCTION_146_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C8CC5734();
      v158 = v217;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_84;
      }

      v146 = *v101 == *v158;
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_347();
      sub_1C8CC5734();
      v145 = v217;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_84;
      }

      v146 = *v98 == *v145;
LABEL_35:
      v110 = v146;
      goto LABEL_63;
    case 3u:
      sub_1C8CC5734();
      v150 = v217;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_84;
      }

      v151 = MEMORY[0x1CCA82070](*v95, *(v95 + 1), *(v95 + 4), *v150, v150[1], *(v150 + 4));
      goto LABEL_42;
    case 4u:
      sub_1C8CC5734();
      v119 = *v3;
      v118 = v3[1];
      v120 = v217;
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_84;
      }

      v121 = *v120;
      v122 = v120[1];
      if (v119 == v121 && v118 == v122)
      {
        v110 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_134();
        v110 = sub_1C9064C2C();
      }

      goto LABEL_63;
    case 5u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_378();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_288();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v162 = v201;
        v163 = *(v201 + 32);
        v164 = v194[0];
        v165 = v91;
        v166 = v202;
        (v163)(v194[0], v165, v202);
        v167 = v194[1];
        v168 = OUTLINED_FUNCTION_278();
        v163(v168);
        OUTLINED_FUNCTION_219();
        v110 = sub_1C9061FCC();
        v169 = *(v162 + 8);
        v169(v167, v166);
        v169(v164, v166);
        goto LABEL_63;
      }

      (*(v201 + 8))(v91, v202);
      goto LABEL_84;
    case 6u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_203();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v153 = v203;
        v156 = v204;
        OUTLINED_FUNCTION_274_2();
        v104 = v194[2];
        v175 = OUTLINED_FUNCTION_219();
        v91(v175);
        v176 = OUTLINED_FUNCTION_87_3(v197);
        v91(v176);
        v177 = OUTLINED_FUNCTION_219();
        v157 = MEMORY[0x1CCA7F4B0](v177);
        goto LABEL_62;
      }

      v190 = OUTLINED_FUNCTION_241();
      goto LABEL_83;
    case 7u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CC5734();
      v152 = v217;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v153 = v205;
        v154 = *(v205 + 32);
        v155 = OUTLINED_FUNCTION_142_2(&v198);
        v156 = v206;
        v154(v155);
        (v154)(v194[5], v152, v156);
        OUTLINED_FUNCTION_219();
        v157 = sub_1C9061E1C();
        goto LABEL_62;
      }

      v189 = v205;
      v188 = v206;
      goto LABEL_82;
    case 8u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v153 = v207;
        OUTLINED_FUNCTION_274_2();
        v182 = OUTLINED_FUNCTION_142_2(&v199);
        v156 = v208;
        v91(v182);
        v183 = OUTLINED_FUNCTION_87_3(v200);
        v91(v183);
        OUTLINED_FUNCTION_219();
        v157 = sub_1C9061BFC();
        goto LABEL_62;
      }

      v189 = v207;
      v188 = v208;
      goto LABEL_82;
    case 9u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CC5734();
      v125 = v217;
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v189 = v209;
        v188 = v210;
        goto LABEL_82;
      }

      v127 = v209;
      v126 = v210;
      v128 = *(v209 + 32);
      v129 = v195;
      v128(v195, v95, v210);
      v130 = v196;
      v128(v196, v125, v126);
      sub_1C90618DC();
      v132 = v131;
      sub_1C90618DC();
      if (v132 == v133)
      {
        v134 = sub_1C90618BC();
        v135 = [v134 symbol];

        v136 = sub_1C9063EEC();
        v138 = v137;

        v139 = sub_1C90618BC();
        v140 = [v139 symbol];

        v141 = sub_1C9063EEC();
        v143 = v142;

        if (v136 == v141 && v138 == v143)
        {
          v110 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_134();
          v110 = sub_1C9064C2C();
        }
      }

      else
      {
        v110 = 0;
      }

      v193 = *(v127 + 8);
      v193(v130, v126);
      v193(v129, v126);
      goto LABEL_63;
    case 0xAu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.CurrencyAmountValue.== infix(_:_:)();
      v110 = v181;
      goto LABEL_55;
    case 0xBu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.PaymentMethodValue.== infix(_:_:)();
      v110 = v117;
      goto LABEL_55;
    case 0xCu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.PlacemarkValue.== infix(_:_:)();
      v110 = v124;
      goto LABEL_55;
    case 0xDu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      v172 = OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.PersonValue.== infix(_:_:)(v172, v173);
      v110 = v174;
      goto LABEL_55;
    case 0xEu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      v114 = OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.FileValue.== infix(_:_:)(v114, v115);
      v110 = v116;
      goto LABEL_55;
    case 0xFu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      v147 = OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.AppValue.== infix(_:_:)(v147, v148);
      v110 = v149;
      goto LABEL_55;
    case 0x10u:
      OUTLINED_FUNCTION_130_0();
      sub_1C8CC5734();
      v111 = *type metadata accessor for TypedValue.PrimitiveValue;
      v112 = v217;
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_5;
      }

      goto LABEL_59;
    case 0x11u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_79:
        sub_1C8CC6AB4();
        goto LABEL_84;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2();
      v159 = OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.Shortcut.== infix(_:_:)(v159, v160);
      v110 = v161;
LABEL_55:
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_93();
      sub_1C8CC6AB4();
      goto LABEL_63;
    case 0x12u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v153 = v211;
        OUTLINED_FUNCTION_274_2();
        v178 = OUTLINED_FUNCTION_142_2(&v211);
        v156 = v212;
        v91(v178);
        v179 = OUTLINED_FUNCTION_87_3(&v212);
        v91(v179);
        v180 = OUTLINED_FUNCTION_219();
        v157 = MEMORY[0x1CCA7FC00](v180);
        goto LABEL_62;
      }

      v189 = v211;
      v188 = v212;
      goto LABEL_82;
    case 0x13u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v153 = v213;
        OUTLINED_FUNCTION_274_2();
        v184 = OUTLINED_FUNCTION_142_2(&v213);
        v156 = v214;
        v91(v184);
        v185 = OUTLINED_FUNCTION_87_3(&v214);
        v91(v185);
        OUTLINED_FUNCTION_219();
        v157 = sub_1C90618EC();
        goto LABEL_62;
      }

      v189 = v213;
      v188 = v214;
      goto LABEL_82;
    case 0x14u:
      sub_1C8CC5734();
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_84;
      }

      v151 = sub_1C9064E5C();
LABEL_42:
      v110 = v151;
      goto LABEL_63;
    case 0x15u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v153 = v215;
        OUTLINED_FUNCTION_274_2();
        v170 = OUTLINED_FUNCTION_142_2(&v215);
        v156 = v216[0];
        v91(v170);
        v171 = OUTLINED_FUNCTION_87_3(v216);
        v91(v171);
        OUTLINED_FUNCTION_219();
        v157 = sub_1C9061D1C();
LABEL_62:
        v110 = v157;
        v186 = *(v153 + 8);
        v187 = OUTLINED_FUNCTION_278();
        v186(v187);
        (v186)(v104, v156);
        goto LABEL_63;
      }

      v189 = v215;
      v188 = v216[0];
LABEL_82:
      v191 = *(v189 + 8);
      v190 = v95;
LABEL_83:
      v191(v190, v188);
      goto LABEL_84;
    case 0x16u:
      OUTLINED_FUNCTION_130_0();
      sub_1C8CC5734();
      v111 = *type metadata accessor for TypedValue.PrimitiveValue;
      v112 = v217;
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() == 22)
      {
LABEL_5:
        v113 = *v112;
        sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
        OUTLINED_FUNCTION_45_2();
        v110 = sub_1C90645BC();

LABEL_63:
        sub_1C8CC6AB4();
      }

      else
      {
LABEL_59:

LABEL_84:
        sub_1C8D16D78(v2, &qword_1EC315A10, &qword_1C907D7D8);
        v110 = 0;
      }

      return v110 & 1;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_84;
      }

      sub_1C8CC6AB4();
      v110 = 1;
      return v110 & 1;
    default:
      sub_1C8CC5734();
      v109 = v217;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_84;
      }

      v110 = *v104 ^ *v109 ^ 1;
      goto LABEL_63;
  }
}

uint64_t TypedValue.EnumerationValue.init(type:case:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for TypedValue.EnumerationValue(0);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *a4 = v7;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C8DE8F78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702060387 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8DE9098(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1702060387;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DE90EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE8F78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE9114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1C64(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DE9150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DF1C64(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypedValue.EnumerationValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A18, &qword_1C907D7E0);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38();
  v18 = OUTLINED_FUNCTION_24_15();
  sub_1C8DF1C64(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_100_3(&type metadata for TypedValue.EnumerationValue.CodingKeys);
  OUTLINED_FUNCTION_294_1(v21, v22, v23);
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_118_1();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_157();
  if (!v16)
  {
    OUTLINED_FUNCTION_97_3();
    sub_1C9064B2C();
    type metadata accessor for TypedValue.EnumerationValue(0);
    OUTLINED_FUNCTION_275_1();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v24);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v25 = OUTLINED_FUNCTION_86_2();
  v26(v25);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.EnumerationValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A20, &qword_1C907D7E8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_16_5();
  v8 = type metadata accessor for TypedValue.EnumerationValue(v7);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v10 = OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF1C64(v10, v11, v12);
  OUTLINED_FUNCTION_197();
  v16 = OUTLINED_FUNCTION_303_1(v13, v14, v15);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1C8CB892C(v16, v17, v18);
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    *(v1 + 8) = OUTLINED_FUNCTION_228_1();
    *(v1 + 16) = v19;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v20);
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v21 = OUTLINED_FUNCTION_0_2();
    v22(v21);
    sub_1C8D60F48(v1, v1 + *(v8 + 24));
    OUTLINED_FUNCTION_13_15();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_41_8();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.EntityValue.displayRepresentation.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for TypedValue.EntityValue(v0);
  v2 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return sub_1C8DF0C88(v2, v3);
}

id TypedValue.EntityValue.hydratedAppEntity.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(v1 + *(type metadata accessor for TypedValue.EntityValue(v2) + 32));
  *v0 = v3;

  return v3;
}

id TypedValue.EntityValue.siriKitEntity.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(v1 + *(type metadata accessor for TypedValue.EntityValue(v2) + 36));
  *v0 = v3;

  return v3;
}

uint64_t TypedValue.EntityValue.init(type:identifier:properties:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = *a1;
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *a5 = v13;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  v18 = type metadata accessor for TypedValue.EntityValue(0);
  result = sub_1C8D60F48(v5, a5 + v18[7]);
  *(a5 + v18[8]) = 0;
  *(a5 + v18[9]) = 0;
  return result;
}

uint64_t TypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  *a6 = *a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v9 = type metadata accessor for TypedValue.EntityValue(0);
  result = OUTLINED_FUNCTION_343_1(v9);
  *(a6 + *(v6 + 32)) = a5;
  *(a6 + *(v6 + 36)) = 0;
  return result;
}

void TypedValue.EntityValue.init(type:transientAppEntity:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = [v0 identifier];
  v7 = [v6 instanceIdentifier];

  v8 = sub_1C9063EEC();
  v10 = v9;

  v11 = sub_1C9063E2C();
  v12 = type metadata accessor for TypedValue.EntityValue(0);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v3 = v5;
  v3[1] = v8;
  v3[2] = v10;
  v3[3] = v11;
  *(v3 + *(v12 + 32)) = v1;
  *(v3 + *(v12 + 36)) = 0;
  OUTLINED_FUNCTION_421();
}

uint64_t TypedValue.EntityValue.init(identifier:type:displayRepresentation:object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a3;
  a5[1] = a1;
  a5[2] = a2;
  *a5 = v8;
  a5[3] = sub_1C9063E2C();
  v9 = type metadata accessor for TypedValue.EntityValue(0);
  result = OUTLINED_FUNCTION_343_1(v9);
  *(a5 + *(v5 + 32)) = 0;
  *(a5 + *(v5 + 36)) = a4;
  return result;
}

uint64_t TypedValue.EntityValue.init(identifier:type:displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a3;
  a5[1] = a1;
  a5[2] = a2;
  *a5 = v7;
  a5[3] = sub_1C9063E2C();
  v8 = type metadata accessor for TypedValue.EntityValue(0);
  result = sub_1C8D60F48(a4, a5 + v8[7]);
  *(a5 + v8[8]) = 0;
  *(a5 + v8[9]) = 0;
  return result;
}

void static TypedValue.EntityValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *v4;
  v31 = *v2;
  v32 = v11;

  LOBYTE(v11) = static TypeIdentifier.== infix(_:_:)(&v32, &v31);

  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = v4[1] == v2[1] && v4[2] == v2[2];
  if (!v12 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1C8F55F9C(v4[3], v2[3]);
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = type metadata accessor for TypedValue.EntityValue(0);
  v15 = v14[7];
  v16 = *(v9 + 48);
  sub_1C8DF0C88(v4 + v15, v0);
  sub_1C8DF0C88(v2 + v15, v0 + v16);
  OUTLINED_FUNCTION_78_4(v0);
  if (!v12)
  {
    v17 = OUTLINED_FUNCTION_288();
    sub_1C8DF0C88(v17, v18);
    OUTLINED_FUNCTION_78_4(v0 + v16);
    if (!v19)
    {
      OUTLINED_FUNCTION_3_29();
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_254();
      static DisplayRepresentation.== infix(_:_:)();
      OUTLINED_FUNCTION_177_3();
      sub_1C8CC6AB4();
      sub_1C8CC6AB4();
      sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
      if ((v5 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
LABEL_16:
    sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_78_4(v0 + v16);
  if (!v12)
  {
    goto LABEL_16;
  }

  sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
LABEL_19:
  v20 = v14[8];
  v21 = *(v4 + v20);
  v22 = *(v2 + v20);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_17;
    }

    sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
    v23 = v21;
    v24 = v22;
    OUTLINED_FUNCTION_288();
    v25 = sub_1C90645BC();

    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v22)
  {
    goto LABEL_17;
  }

  v26 = v14[9];
  v27 = *(v4 + v26);
  v28 = *(v2 + v26);
  if (v27 && v28)
  {
    sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
    v29 = v27;
    v30 = v28;
    OUTLINED_FUNCTION_145();
    sub_1C90645BC();
  }

LABEL_17:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DE9D08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C90CAD70 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4574694B69726973 && a2 == 0xED0000797469746ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8DE9F0C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x69747265706F7270;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x4574694B69726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DE9FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE9D08(a1, a2);
  *a3 = result;
  return result;
}