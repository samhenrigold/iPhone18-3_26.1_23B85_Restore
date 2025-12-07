uint64_t sub_197977468()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

void InferenceProviderXPCRequest.InferenceRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_92();
  v27 = v26;
  v51 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_21_6();
  type metadata accessor for InferenceProviderRequestConfiguration(v30);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1_0();
  v38 = v37 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E10, &qword_197A92E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_156();
  v52 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6_0();
  v53 = v41;
  OUTLINED_FUNCTION_16_7();
  sub_197977C50();
  sub_197A883A8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    *v53 = sub_197A87FB8() & 1;
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v42);
    sub_197A87FD8();
    OUTLINED_FUNCTION_14_9();
    sub_197958DA4(v38, v45 + v44);
    OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_11_5();
    sub_19796A788(v46);
    sub_197A87FD8();
    OUTLINED_FUNCTION_12_7();
    sub_197958DA4(v34, &v53[v47]);
    OUTLINED_FUNCTION_22_3(&qword_1ED87FC90);
    sub_197A87FD8();
    v48 = OUTLINED_FUNCTION_155_0();
    v49(v48);
    sub_19794BDF8(v25, &v53[*(v52 + 28)], &qword_1EAF49128, &unk_197A8CE70);
    v50 = OUTLINED_FUNCTION_71_6();
    sub_1979698F8(v50, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_10_11();
    sub_1979699A8(v53, v43);
  }

  OUTLINED_FUNCTION_93();
}

void ClientData.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v25[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  v5 = OUTLINED_FUNCTION_28(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v25[5] = v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0C8, &qword_197A954B8);
  OUTLINED_FUNCTION_2();
  v26 = v11;
  v27 = v12;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_28_0();
  v15 = type metadata accessor for ClientData(v14);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_197977F0C();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v25[1] = v15;
    v25[2] = v19;
    v25[3] = v8;
    sub_197A877A8();
    OUTLINED_FUNCTION_7_8();
    sub_197978008(v20, 255, v21);
    v22 = v26;
    OUTLINED_FUNCTION_97_4();
    sub_19794B118();
    OUTLINED_FUNCTION_97_4();
    v23 = OUTLINED_FUNCTION_118_3();
    v24(v23, v22);
    sub_19794B118();
    OUTLINED_FUNCTION_2_12();
    sub_1979672B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_0_16();
    sub_197978A98();
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_197977C50()
{
  result = qword_1ED87DE50;
  if (!qword_1ED87DE50)
  {
    result = swift_getWitnessTable(byte_197A94DF4, &type metadata for InferenceProviderXPCRequest.InferenceRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DE50);
  }

  return result;
}

uint64_t sub_197977CB8()
{
  OUTLINED_FUNCTION_71();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

void sub_197977D1C()
{
  OUTLINED_FUNCTION_71();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_157();
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_70();
    if (*(v4 + 84) != v2)
    {
      type metadata accessor for InferenceProviderRequestConfiguration(0);
      OUTLINED_FUNCTION_70();
      if (*(v5 + 84) != v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
      }
    }

    OUTLINED_FUNCTION_122_2();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_197977E30()
{
  OUTLINED_FUNCTION_71();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_197977E98()
{
  OUTLINED_FUNCTION_76_1();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_197A87298();
    v6 = v1 + *(v4 + 28);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

unint64_t sub_197977F0C()
{
  result = qword_1ED87FDB8[0];
  if (!qword_1ED87FDB8[0])
  {
    result = swift_getWitnessTable(aW_6, &type metadata for ClientData.CodingKeys, v0, v1);
    atomic_store(result, qword_1ED87FDB8);
  }

  return result;
}

unint64_t sub_197977F60(char a1)
{
  result = 0x6D61657274537369;
  switch(a1)
  {
    case 1:
      result = 0x6144746E65696C63;
      break;
    case 2:
      result = 0x72756769666E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197978008(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    v5 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197978060()
{
  OUTLINED_FUNCTION_111();
  if (v3)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_197A87298();
  v8 = v0 + *(v5 + 28);

  return __swift_getEnumTagSinglePayload(v8, v6, v7);
}

uint64_t sub_1979780E4(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_70();
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[5];
    }

    else
    {
      type metadata accessor for InferenceProviderRequestConfiguration(0);
      OUTLINED_FUNCTION_70();
      if (*(v15 + 84) == a2)
      {
        v12 = v14;
        v13 = a3[6];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
        v13 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v13], a2, v12);
  }
}

void InferenceProviderRequestConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v53 = v4;
  sub_197A87298();
  OUTLINED_FUNCTION_2();
  v58 = v6;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE8, &qword_197A8BAF0);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_64_1();
  v60 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_0();
  v56 = v3;
  v57 = (v21 - v20);
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_197978F70();
  v54 = v1;
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  else
  {
    v22 = v15;
    v23 = v13;
    v24 = v9;
    v25 = v17;
    LOBYTE(v61) = 0;
    v26 = sub_197A87FA8();
    v27 = v57;
    *v57 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_32_2(1);
    v27[2] = sub_197A87FA8();
    v27[3] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    sub_197978AF8(&unk_1ED87FE58);
    OUTLINED_FUNCTION_107();
    sub_197A87FD8();
    v27[4] = v61;
    LOBYTE(v61) = 3;
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v30);
    v31 = v59;
    OUTLINED_FUNCTION_107();
    v52 = v32;
    sub_197A87FD8();
    v33 = v27 + v60[7];
    v34 = v22;
    v35 = *(v58 + 32);
    v51 = v58 + 32;
    v35(v33, v34, v31);
    LOBYTE(v61) = 4;
    OUTLINED_FUNCTION_107();
    sub_197A87FD8();
    v35(v27 + v60[8], v23, v59);
    OUTLINED_FUNCTION_32_2(5);
    v36 = sub_197A87FC8();
    v50 = v35;
    *(v27 + v60[9]) = v36;
    OUTLINED_FUNCTION_32_2(6);
    *(v27 + v60[10]) = sub_197A87FC8();
    LOBYTE(v61) = 7;
    sub_197A87FD8();
    v50(v27 + v60[11], v24, v59);
    sub_1979705E8();
    sub_197A87F88();
    v37 = v63;
    v38 = v27 + v60[12];
    v39 = v62;
    *v38 = v61;
    *(v38 + 1) = v39;
    v38[32] = v37;
    OUTLINED_FUNCTION_32_2(9);
    *(v57 + v60[13]) = sub_197A88008();
    OUTLINED_FUNCTION_62_1(10);
    v40 = sub_197A87FA8();
    v41 = (v57 + v60[14]);
    *v41 = v40;
    v41[1] = v42;
    OUTLINED_FUNCTION_62_1(11);
    v43 = sub_197A87FA8();
    v44 = (v57 + v60[15]);
    *v44 = v43;
    v44[1] = v45;
    sub_19795F5C4();
    OUTLINED_FUNCTION_124_0(&type metadata for Version);
    v46 = DWORD2(v61);
    v47 = v57 + v60[16];
    *v47 = v61;
    *(v47 + 2) = v46;
    sub_197978D10();
    OUTLINED_FUNCTION_124_0(&type metadata for RequestPriority);
    *(v57 + v60[17]) = v61;
    OUTLINED_FUNCTION_62_1(14);
    v48 = sub_197A88008();
    (*(v25 + 8))(v54, v55);
    *(v57 + v60[18]) = v48;
    sub_19796B948();
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    sub_19796B99C();
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_197978A98()
{
  v1 = OUTLINED_FUNCTION_97();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_197978AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v8 = v6;
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197978B60(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_148(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_148_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

ModelManagerServices::RequestPriority_optional __swiftcall RequestPriority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_197978CBC()
{
  result = qword_1ED87DE78[0];
  if (!qword_1ED87DE78[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RequestPriority, &type metadata for RequestPriority, v0, v1);
    atomic_store(result, qword_1ED87DE78);
  }

  return result;
}

unint64_t sub_197978D10()
{
  result = qword_1ED87DE70;
  if (!qword_1ED87DE70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RequestPriority, &type metadata for RequestPriority, v0, v1);
    atomic_store(result, &qword_1ED87DE70);
  }

  return result;
}

unint64_t sub_197978D64(char a1)
{
  result = 0x5574736575716572;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0x556E6F6973736573;
      break;
    case 5:
      result = 0x666C616865426E6FLL;
      break;
    case 6:
    case 11:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x536E6F6973736573;
      break;
    case 8:
      result = 0x6B6F547469647561;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x5674736575716572;
      break;
    case 13:
      result = 0x5074736575716572;
      break;
    case 14:
      result = 0x6575716572627573;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_197978F70()
{
  result = qword_1ED87DDC8;
  if (!qword_1ED87DDC8)
  {
    result = swift_getWitnessTable(byte_197A8CDD0, &type metadata for InferenceProviderRequestConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87DDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x197979090);
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

uint64_t getEnumTagSinglePayload for InferenceProviderRequestConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderRequestConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x19797920CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_197979234()
{
  OUTLINED_FUNCTION_80();
  if (*(v0 + 152) == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v0 + 136) = v1;
    *v1 = v2;
    v1[1] = sub_197A75B1C;

    return sub_197A75D30();
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 72);
    v7 = type metadata accessor for InferenceProviderRequestConfiguration(0);
    v8 = *(v7 + 28);
    sub_197A87298();
    OUTLINED_FUNCTION_6();
    (*(v9 + 16))(v4, v6 + v8);
    *(v4 + *(v5 + 20)) = *(v6 + *(v7 + 72));
    OUTLINED_FUNCTION_178_2();
    if (v7)
    {
      OUTLINED_FUNCTION_1_20();
      sub_197969A00(v10, v11);
      OUTLINED_FUNCTION_164_1();

      OUTLINED_FUNCTION_28_11();

      return v12();
    }

    else
    {
      OUTLINED_FUNCTION_67_12();
      v19 = (MEMORY[0x48] + *MEMORY[0x48]);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 144) = v13;
      *v13 = v14;
      v13[1] = sub_197979B88;
      v15 = *(v0 + 112);
      v16 = *(v0 + 96);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);

      return v19(v15, v17, v18, v16, v4, 0);
    }
  }
}

uint64_t sub_1979794A8()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 152) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for InferenceError(0);
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_28(v6);
  *(v1 + 96) = OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for ClientData(0);
  *(v1 + 104) = v7;
  OUTLINED_FUNCTION_28(v7);
  *(v1 + 112) = OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for RequestKey(0);
  *(v1 + 120) = v8;
  OUTLINED_FUNCTION_28(v8);
  *(v1 + 128) = OUTLINED_FUNCTION_78_0();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

unint64_t sub_197979574(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A00, &qword_197A92D00);
    v3 = sub_19796A788(&qword_1ED87FC60);
    v4 = sub_19796A788(&qword_1ED87DE00);
    OUTLINED_FUNCTION_35_3();
    sub_19796A788(v5);
    v6 = OUTLINED_FUNCTION_42_5(&qword_1ED8813D0);
    result = OUTLINED_FUNCTION_135_2(v6, v7, v8, v9, v10, v11, v12, v13, v3, v4, v14, v15);
    atomic_store(result, v1);
  }

  return result;
}

void ClientData.data.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166_1();
  a17 = v18;
  a18 = v19;
  v20 = OUTLINED_FUNCTION_100_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_28(v22);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  v26 = sub_197A877A8();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_147_2();
  sub_197944528();
  v28 = OUTLINED_FUNCTION_122_3();
  if (__swift_getEnumTagSinglePayload(v28, v29, v26) == 1)
  {
    sub_197947A40(v25, &qword_1EAF49000, &qword_197A954A0);
  }

  else
  {
    OUTLINED_FUNCTION_68_1();
    v30();
    v31 = sub_197A87788();
    bytes_ptr = xpc_data_get_bytes_ptr(v31);
    if (bytes_ptr)
    {
      length = xpc_data_get_length(v31);
      MEMORY[0x19A8EA470](bytes_ptr, length);
      swift_unknownObjectRelease();
      v34 = OUTLINED_FUNCTION_63();
      v35(v34);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_63();
      v37(v36);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_165();
}

uint64_t _s20ModelManagerServices10ClientDataV4dataAC10Foundation0E0VSg_tcfC_0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v4);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_133_2();
  v7 = 1;
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  if (a1 >> 60 != 15)
  {
    v11 = OUTLINED_FUNCTION_147_2();
    sub_19797992C(v11, v12);
    v13 = OUTLINED_FUNCTION_147_2();
    sub_197979B74(v13, v14);
    v7 = 0;
  }

  __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
  type metadata accessor for ClientData(0);
  return sub_19794B118();
}

char *sub_19797992C(uint64_t a1, unint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v7;
      return sub_197979AA0(a1, v5);
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
      return sub_197979AA0(a1, v5);
    case 3uLL:
      memset(v8, 0, 14);
      v3 = 0;
      goto LABEL_5;
    default:
      v8[0] = a1;
      LOWORD(v8[1]) = a2;
      BYTE2(v8[1]) = BYTE2(a2);
      BYTE3(v8[1]) = BYTE3(a2);
      v2 = a2 >> 40;
      BYTE4(v8[1]) = BYTE4(a2);
      v3 = BYTE6(a2);
      BYTE5(v8[1]) = v2;
LABEL_5:
      xpc_data_create(v8, v3);
      return sub_197A87798();
  }
}

char *sub_197979AA0(uint64_t a1, uint64_t a2)
{
  result = sub_197A87058();
  v5 = result;
  if (result)
  {
    result = sub_197A87078();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_197A87068();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_197979B34(v5, v11);
}

uint64_t sub_197979B34(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  xpc_data_create(a1, v2);
  return sub_197A87798();
}

uint64_t sub_197979B74(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_197974AFC(result, a2);
  }

  return result;
}

uint64_t sub_197979B88()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_197979C9C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_119();
  sub_197979D80();
  type metadata accessor for InferenceProviderRequestResult(0);
  sub_197A876D8();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_12();
  sub_197979D80();
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  OUTLINED_FUNCTION_164_1();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_197979D80()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_197979DD8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197979EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v15 = *(v14 + 152);
  OUTLINED_FUNCTION_109_2(*(v14 + 136));
  OUTLINED_FUNCTION_63();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_11();
  sub_1979699A8(v15, v16);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

void InferenceProviderRequestResult.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CD0, &qword_197A92D68);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_13_1();
  v6 = sub_19797A1BC();
  OUTLINED_FUNCTION_125(&type metadata for InferenceProviderRequestResult.CodingKeys, v7, v6);
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_0_15();
  sub_19796A788(v8);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_124_3();
  sub_197A880E8();
  if (!v0)
  {
    type metadata accessor for InferenceProviderRequestResult(0);
    OUTLINED_FUNCTION_149_1();
    sub_197A876D8();
    OUTLINED_FUNCTION_81_4();
    sub_19796A788(v9);
    OUTLINED_FUNCTION_124_3();
    sub_197A88098();
    OUTLINED_FUNCTION_173_0();
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v10);
    OUTLINED_FUNCTION_124_3();
    sub_197A88098();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_19797A1BC()
{
  result = qword_1ED87FC70;
  if (!qword_1ED87FC70)
  {
    result = swift_getWitnessTable(byte_197A951B4, &type metadata for InferenceProviderRequestResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1)
{

  return sub_1979699A8(a1, type metadata accessor for InferenceProviderXPCRequest.ConvertData);
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderRequestResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797A30CLL);
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

uint64_t sub_19797A33C(char a1)
{
  if (!a1)
  {
    return 0x4974736575716572;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001FLL;
  }

  return 0x7365527473726966;
}

uint64_t RequestKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B290, &qword_197AA12A8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797A570();
  sub_197A883D8();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  sub_19796AB98(&qword_1ED87FC98, &qword_1EAF49128, &unk_197A8CE70);
  sub_197A880E8();
  if (!v1)
  {
    type metadata accessor for RequestKey(0);
    v10[14] = 1;
    sub_197A88118();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_19797A570()
{
  result = qword_1ED87FBC0;
  if (!qword_1ED87FBC0)
  {
    result = swift_getWitnessTable(aE_17, &type metadata for RequestKey.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FBC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestKey.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797A690);
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

uint64_t sub_19797A6C0(char a1)
{
  if (a1)
  {
    return 0x6575716572627573;
  }

  else
  {
    return 0x4974736575716572;
  }
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_144_3()
{
  v2 = (*(v0 + 88) + 200);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_144_5()
{
}

uint64_t ClientData.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A0C0, &qword_197A954B0);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_104();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_197977F0C();
  OUTLINED_FUNCTION_159(&type metadata for ClientData.CodingKeys, v11, v10);
  v17 = 0;
  sub_197A877A8();
  OUTLINED_FUNCTION_7_8();
  sub_197978008(v12, 255, v13);
  OUTLINED_FUNCTION_132_3(v4, &v17);
  if (!v2)
  {
    v14 = *(type metadata accessor for ClientData(0) + 20);
    v16 = 1;
    OUTLINED_FUNCTION_132_3(v4 + v14, &v16);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_19797A980()
{
  OUTLINED_FUNCTION_157();
  v1 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v1);
  OUTLINED_FUNCTION_70();
  if (*(v2 + 84) != v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
    OUTLINED_FUNCTION_70();
    if (*(v3 + 84) != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    }
  }

  OUTLINED_FUNCTION_122_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_19797AA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v6);
  OUTLINED_FUNCTION_70();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
    OUTLINED_FUNCTION_70();
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
      v13 = *(a3 + 24);
    }

    v10 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

void InferenceProviderRequestResult.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  v23 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  OUTLINED_FUNCTION_28(v6);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_125_1(v8, v22);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CC8, &qword_197A92D58);
  OUTLINED_FUNCTION_28(v9);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CD8, &qword_197A92D70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21_6();
  v15 = type metadata accessor for InferenceProviderRequestResult(v14);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_113_0(v4, v4[3]);
  sub_19797A1BC();
  sub_197A883A8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_15();
    sub_19796A788(v17);
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_148_1();
    sub_197A87FD8();
    OUTLINED_FUNCTION_1_11();
    sub_197958DA4(v25, v0);
    sub_197A876D8();
    OUTLINED_FUNCTION_81_4();
    sub_19796A788(v18);
    sub_197A87F88();
    sub_19794BDF8(v2, v0 + *(v15 + 20), &qword_1EAF49CC8, &qword_197A92D58);
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_2_11();
    sub_19796A788(v19);
    OUTLINED_FUNCTION_148_1();
    sub_197A87F88();
    v20 = OUTLINED_FUNCTION_112_2();
    v21(v20);
    sub_19794BDF8(v24, v0 + *(v15 + 24), &qword_1EAF49110, &qword_197A92D60);
    sub_1979698F8(v0, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    sub_1979699A8(v0, type metadata accessor for InferenceProviderRequestResult);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_19797AF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_19797B000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t RequestKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B298, &qword_197AA12B0);
  OUTLINED_FUNCTION_2();
  v21 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19797A570();
  sub_197A883A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v21;
  v25 = 0;
  sub_19796AB98(&qword_1ED87FC90, &qword_1EAF49128, &unk_197A8CE70);
  sub_197A87FD8();
  sub_19794B118();
  v24 = 1;
  v16 = v23;
  v17 = sub_197A88008();
  (*(v15 + 8))(v9, v16);
  *(v14 + *(v10 + 20)) = v17;
  OUTLINED_FUNCTION_2_20();
  sub_197969950();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_1_20();
  return sub_197969A00(v14, v18);
}

uint64_t sub_19797B33C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19797B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  v17 = OUTLINED_FUNCTION_21_4();
  sub_19797B768(v17);
  v18 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v18, &qword_1EAF49A00);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  v21 = sub_197955EBC(v19, v20, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_28_3(v21);
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v22, v23);
  sub_197947900(v18, &qword_1EAF49A00);
  OUTLINED_FUNCTION_81_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5(v24))
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v18, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
    }

    v34 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v34, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v35 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v36 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v37);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_197947900(v36, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v25 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v25, qword_1ED87DD88);
  sub_197A878A8();
  v26 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v27 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v27, v28, v29);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v30, v31, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v32 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v32, v33);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_182_1()
{

  return sub_197947A40(v0, v2, v1);
}

uint64_t sub_19797B7D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_124_1();
  if (v0)
  {
    v7 = *(v3 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1979CF60C, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

uint64_t InferenceProviderRequestConfiguration.requestUUID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceProviderRequestConfiguration(v0);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_52_2();

  return v2(v1);
}

double ModelXPCRequest.ExecuteRequest.Response.init(result:lockedInferenceProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_150_1(a1, a2);
  OUTLINED_FUNCTION_100_4();
  sub_197A49444();
  v2 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(0);
  *&result = OUTLINED_FUNCTION_133_4(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11).n128_u64[0];
  return result;
}

uint64_t sub_19797B9FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_4();
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;
  v8 = OUTLINED_FUNCTION_29_3();

  return sub_19797BB14(v8, v1, v2, v4, v3);
}

uint64_t sub_19797BAA8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 40);
  (*(v0 + 24))(*(v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_19797C5EC, v1, 0);
}

uint64_t sub_19797BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19797BAA8, 0, 0);
}

uint64_t sub_19797BB3C(void *a1, uint64_t a2, void *a3)
{
  if (qword_1ED87E900 != -1)
  {
    swift_once();
  }

  v6 = sub_197A87608();
  __swift_project_value_buffer(v6, qword_1ED87DF90);
  v7 = sub_197A875E8();
  v8 = sub_197A87D48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a2;
    _os_log_impl(&dword_197941000, v7, v8, "Replying to message %llu.", v9, 0xCu);
    MEMORY[0x19A8EBE00](v9, -1, -1);
  }

  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  return (*(v11 + 16))(v14, v12, v13, v10, v11);
}

void ModelXPCRequest.ExecuteRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A728, &qword_197A98578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_19797BE04();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.ExecuteRequest.Response.CodingKeys, v3, v2);
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_17_10();
  sub_197954374(v4);
  OUTLINED_FUNCTION_53_11();
  sub_197A880E8();
  if (!v0)
  {
    v5 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(0);
    OUTLINED_FUNCTION_122_5(v5);
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
  }

  v6 = OUTLINED_FUNCTION_79_4();
  v7(v6);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_19797BE04()
{
  result = qword_1ED87F950;
  if (!qword_1ED87F950)
  {
    result = swift_getWitnessTable(byte_197A9DBFC, &type metadata for ModelXPCRequest.ExecuteRequest.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F950);
  }

  return result;
}

uint64_t sub_19797BE5C(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x746C75736572;
  }
}

void InferenceProviderDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49080, &qword_197A8BBE8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_19797C050();
  sub_197A883D8();
  OUTLINED_FUNCTION_101();
  sub_197A880B8();
  if (!v0)
  {
    OUTLINED_FUNCTION_112_0();
    v8 = sub_19797C104();
    sub_197A878A8();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();

    if (!v8)
    {
      OUTLINED_FUNCTION_55();
      sub_197A880C8();
    }
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19797C050()
{
  result = qword_1ED87F8E8;
  if (!qword_1ED87F8E8)
  {
    result = swift_getWitnessTable(byte_197A8CB9C, &type metadata for InferenceProviderDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8E8);
  }

  return result;
}

uint64_t sub_19797C0AC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x65636E6174736E69;
  }

  return 0x6E4F646574736F68;
}

unint64_t sub_19797C104()
{
  result = qword_1ED87CD30;
  if (!qword_1ED87CD30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderDescriptor.Instance, &type metadata for InferenceProviderDescriptor.Instance, v0, v1);
    atomic_store(result, &qword_1ED87CD30);
  }

  return result;
}

void InferenceProviderDescriptor.Instance.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v27 = v1;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49050, &qword_197A8BBB0);
  OUTLINED_FUNCTION_2();
  v25 = v7;
  v26 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_64_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49058, &qword_197A8BBB8);
  OUTLINED_FUNCTION_2();
  v22 = v10;
  v23 = v9;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v21 = &v20 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49060, &qword_197A8BBC0);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_65_0();
  v17 = v0[1];
  v24 = *v0;
  OUTLINED_FUNCTION_113_0(v5, v5[3]);
  sub_19797C400();
  sub_197A883D8();
  if (v17)
  {
    OUTLINED_FUNCTION_112_0();
    sub_1979A83EC();
    OUTLINED_FUNCTION_106();
    sub_197A88058();
    v18 = v26;
    sub_197A880B8();
    (*(v25 + 8))(v2, v18);
  }

  else
  {
    sub_19797C454();
    v19 = v21;
    OUTLINED_FUNCTION_106();
    sub_197A88058();
    (*(v22 + 8))(v19, v23);
  }

  (*(v15 + 8))(v3, v13);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19797C400()
{
  result = qword_1ED87F8B0;
  if (!qword_1ED87F8B0)
  {
    result = swift_getWitnessTable(asc_197A8CC8C, &type metadata for InferenceProviderDescriptor.Instance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F8B0);
  }

  return result;
}

unint64_t sub_19797C454()
{
  result = qword_1ED87F870;
  if (!qword_1ED87F870)
  {
    result = swift_getWitnessTable(byte_197A8CBEC, &type metadata for InferenceProviderDescriptor.Instance.DefaultInstanceCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F870);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderDescriptor.Instance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797C574);
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

uint64_t sub_19797C5A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49746C7561666564;
  }
}

uint64_t sub_19797C5EC()
{
  OUTLINED_FUNCTION_9();
  sub_19795B62C(*(v0 + 48));
  OUTLINED_FUNCTION_13();

  return v1();
}

_BYTE *sub_19797C684(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19797C750);
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

uint64_t _s20ModelManagerServices15RequestMetadataV2idAA14UUIDIdentifierVyACGvg_0()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for RequestMetadata(v0);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_77();

  return v2(v1);
}

uint64_t UUIDIdentifier.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t RequestMetadata.useCaseID.getter()
{
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

void sub_19797C8D0()
{
  OUTLINED_FUNCTION_17_4();
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_70();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_174_1();
  }
}

void OUTLINED_FUNCTION_154()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_154_1()
{

  return type metadata accessor for RequestMetadata(0);
}

uint64_t sub_19797C9B4()
{
  OUTLINED_FUNCTION_121_4();
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_70();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_64_9();
    return (v6 + 1);
  }
}

void ModelXPCRequest.ExecuteRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A730, &qword_197A98580);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_88_0();
  type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(v6);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_113_0(v3, v3[3]);
  sub_19797BE04();
  OUTLINED_FUNCTION_144_4();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v11) = 0;
    OUTLINED_FUNCTION_17_10();
    sub_197954374(v8);
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    OUTLINED_FUNCTION_100_4();
    sub_197A49444();
    sub_19795F8C8();
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    v9 = OUTLINED_FUNCTION_67_0();
    v10(v9);
    OUTLINED_FUNCTION_151_3(v11);
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_19795130C(v1, type metadata accessor for ModelXPCRequest.ExecuteRequest.Response);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void InferenceProviderDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49088, &qword_197A8BBF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_19797C050();
  OUTLINED_FUNCTION_141();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v12) = 0;
    v6 = sub_197A87FA8();
    v11 = v7;
    OUTLINED_FUNCTION_112_0();
    sub_19797CFE8();
    OUTLINED_FUNCTION_106();
    sub_197A87FD8();
    v8 = sub_197A87FB8();
    v9 = OUTLINED_FUNCTION_74_2();
    v10(v9);
    *v4 = v6;
    *(v4 + 8) = v11;
    *(v4 + 16) = v12;
    *(v4 + 24) = v13;
    *(v4 + 32) = v8 & 1;
    sub_197A878A8();
    sub_197A878A8();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_122_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for InferenceProviderRequestConfiguration(0);

  return sub_197A87298();
}

uint64_t OUTLINED_FUNCTION_122_1()
{

  return sub_197A87E58();
}

unint64_t OUTLINED_FUNCTION_122_5(uint64_t a1)
{
  v4 = (v1 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  LOBYTE(v4) = *(v4 + 32);
  *(v2 - 104) = v5;
  *(v2 - 96) = v6;
  *(v2 - 88) = v7;
  *(v2 - 80) = v8;
  *(v2 - 72) = v4;
  *(v2 - 105) = 1;

  return sub_1979518CC();
}

unint64_t sub_19797CFE8()
{
  result = qword_1ED87F898;
  if (!qword_1ED87F898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderDescriptor.Instance, &type metadata for InferenceProviderDescriptor.Instance, v0, v1);
    atomic_store(result, &qword_1ED87F898);
  }

  return result;
}

uint64_t sub_19797D03C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19797D090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void InferenceProviderDescriptor.Instance.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_92();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v60 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49068, &qword_197A8BBC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_64_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49070, &qword_197A8BBD0);
  OUTLINED_FUNCTION_2();
  v59 = v33;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_65_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49078, &unk_197A8BBD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113_0(v29, v29[3]);
  sub_19797C400();
  sub_197A883A8();
  if (v24)
  {
    goto LABEL_8;
  }

  v36 = sub_197A88028();
  sub_197953BF0(v36, 0);
  if (v38 == v39 >> 1)
  {
LABEL_7:
    sub_197A87E88();
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820);
    *v45 = &type metadata for InferenceProviderDescriptor.Instance;
    sub_197A87F38();
    sub_197A87E78();
    OUTLINED_FUNCTION_36_0();
    (*(v46 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_83_0();
    v48(v47);
LABEL_8:
    v49 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_93();
    return;
  }

  if (v38 < (v39 >> 1))
  {
    a10 = *(v37 + v38);
    sub_197953BF8(v38 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      if (a10)
      {
        OUTLINED_FUNCTION_112_0();
        sub_1979A83EC();
        OUTLINED_FUNCTION_144(&type metadata for InferenceProviderDescriptor.Instance.SpecificInstanceCodingKeys, &a14);
        OUTLINED_FUNCTION_55();
        v52 = sub_197A87FA8();
        v54 = v53;
        swift_unknownObjectRelease();
        v55 = OUTLINED_FUNCTION_79_4();
        v56(v55);
        v57 = OUTLINED_FUNCTION_83_0();
        v58(v57);
      }

      else
      {
        a13 = 0;
        sub_19797C454();
        OUTLINED_FUNCTION_144(&type metadata for InferenceProviderDescriptor.Instance.DefaultInstanceCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v59 + 8))(v25, v32);
        v50 = OUTLINED_FUNCTION_83_0();
        v51(v50);
        v52 = 0;
        v54 = 0;
      }

      v49 = v29;
      *v60 = v52;
      v60[1] = v54;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_19797D5B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19797D5E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19797D5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746C7561666564 && a2 == 0xEF65636E6174736ELL;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197AA2720 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_197A88218();

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

uint64_t OUTLINED_FUNCTION_74_0()
{
  *(*(v0 + 128) + 168) = 0;
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_74_8()
{

  return sub_19794B2DC();
}

uint64_t sub_19797D814()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19797D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_29_4();
  sub_1979D9E24(v19, &qword_1EAF49C50, &qword_197A92CE0);
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &qword_1EAF49C50);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v36);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  v22 = sub_197955F04(v20, v21);
  v23 = OUTLINED_FUNCTION_56_4(v22);
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49C50);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v24);
  OUTLINED_FUNCTION_98_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5(v25))
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v37 = sub_197A87608();
    v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v38);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v39 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v40 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v40);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v41, v42, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v39, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v43 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v43, v44);
    v45 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201(v45);

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v54 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v54, qword_1ED87FB48);
      sub_197A878A8();
      v55 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v56, v57);
        OUTLINED_FUNCTION_146(&dword_197941000, v58, v59, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v60 = OUTLINED_FUNCTION_49_6();
      v62 = OUTLINED_FUNCTION_55_4(v60, v61);
      OUTLINED_FUNCTION_226(v62);
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v46 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v46, qword_1ED87FB48);
      sub_197A878A8();
      v47 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v48, v49);
        OUTLINED_FUNCTION_146(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v53)
      {
        sub_197947900(v52, &qword_1EAF499A8);
      }

      else
      {
        v78 = OUTLINED_FUNCTION_14_8();
        v79(v78);
        sub_197A21F90();
        v80 = OUTLINED_FUNCTION_60_3();
        v81(v80);
      }

      v82 = OUTLINED_FUNCTION_46_4();
      v84 = OUTLINED_FUNCTION_54_3(v82, v83);
      OUTLINED_FUNCTION_201(v84);
      v35 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v27 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v27, qword_1ED87FB48);
      sub_197A875E8();
      v28 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v28))
      {
        v29 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v29);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v30, v31, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v32 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v32, v33);
      v34 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201(v34);
      v35 = v23;
      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v63 = OUTLINED_FUNCTION_221();
      v64 = __swift_project_value_buffer(v63, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v55 = sub_197A875E8();
      v65 = sub_197A87D58();
      v66 = OUTLINED_FUNCTION_118_1(v65);
      v67 = *(v16 + 88);
      if (v66)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v68 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v67, v69);
        v70 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteRequest(v70);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C58, &qword_197A92CE8);
        v72 = OUTLINED_FUNCTION_231(v71);
        OUTLINED_FUNCTION_232(v72, v73, v74, v75);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v68;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v67, v85);
      }

      v86 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v86;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v64, v87);
      break;
  }

  v35 = v55;
LABEL_37:
  sub_197947900(v35, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19797E018()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19797E110()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_186();
  sub_1979636E8(v0, v1);
  OUTLINED_FUNCTION_100_0();
  sub_19796361C();
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t OUTLINED_FUNCTION_181_0(uint64_t a1, uint64_t a2)
{

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_181_1()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_219(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_197948834(a1, a2, va);
}

uint64_t sub_19797E228()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 248);
  if (v0)
  {
    v6 = sub_197A3C08C;
  }

  else
  {
    v6 = sub_19797E370;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_19797E370()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 88);
  OUTLINED_FUNCTION_17_9();
  sub_19794B2DC();
  sub_197A44A54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v6 = *(v0 + 256);

    sub_197947A40(v6, &qword_1EAF49110, &qword_197A92D60);
    v7 = sub_197A875E8();
    v8 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v8))
    {
      v9 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v9);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v10, v11, "ModelXPCSender executeRequest called with invalid data");
      OUTLINED_FUNCTION_44();
    }

    v12 = *(v0 + 376);
    v13 = *(v0 + 320);

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_2_14();
    sub_19794A664(v14, 255, v15);
    v16 = OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_88(v16, v17);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_1_16();
    sub_197962AC8(v13, v18);
    OUTLINED_FUNCTION_46(v12 + 24, v0 + 176);
    os_activity_scope_leave((v12 + 24));
    swift_endAccess();
    OUTLINED_FUNCTION_30_11();

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v20 = *(v0 + 328);
    v21 = *(v0 + 248);
    v22 = *(v0 + 232);
    OUTLINED_FUNCTION_54_7();
    sub_19794B2DC();
    os_unfair_lock_lock((v21 + 200));
    v23 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    sub_197A87298();
    OUTLINED_FUNCTION_3_14();
    (*(v24 + 16))(v20, v22 + v23);
    v25 = OUTLINED_FUNCTION_100_0();
    sub_19797E7A8(v25, v26);
    OUTLINED_FUNCTION_100_3();
    if (!v28)
    {
      v29 = v27[1];
      v30 = v27[2];
      v31 = v5;
      v32 = v27[3];
      v38 = v27[4];
      v27[1] = v4;
      v27[2] = v3;
      OUTLINED_FUNCTION_141_2(v27, v31);
      sub_197A878A8();
      sub_197955620(v29, v30, v32, v38);
    }

    ((v21 + 208))(v0 + 96, 0);

    v33 = *(v0 + 376);
    v34 = *(v0 + 320);
    v35 = *(v0 + 328);

    sub_197947A40(v35, &qword_1EAF49130, &qword_197A969C0);
    os_unfair_lock_unlock((v21 + 200));
    OUTLINED_FUNCTION_1_16();
    sub_197962AC8(v34, v36);
    OUTLINED_FUNCTION_54_7();
    sub_19794B2DC();
    OUTLINED_FUNCTION_46(v33 + 24, v0 + 200);
    os_activity_scope_leave((v33 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
  }

  return v19();
}

uint64_t (*sub_19797E7A8(uint64_t *a1, uint64_t a2))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v5 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  v3[4] = v5;
  sub_197A44A54();
  v3[5] = sub_19797E874(v3, v5);
  return sub_19797EB48;
}

void (*sub_19797E874(void *a1, uint64_t a2))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v5 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  v3[8] = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_197A44A54();
  v3[9] = sub_19797EB20(v3);
  v3[10] = sub_19797E960(v3 + 4, v5, isUniquelyReferenced_nonNull_native);
  return sub_19797EBB4;
}

void (*sub_19797E960(uint64_t *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0xC0uLL);
  *a1 = v7;
  v7[18] = a2;
  v7[19] = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v7[22] = __swift_coroFrameAllocStub(*(v9 + 64));
  v10 = *v3;
  v11 = sub_19794B040();
  *(v7 + 41) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F8, &qword_197A969C8);
  if (sub_197A87EB8())
  {
    v15 = sub_19794B040();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_197A88288();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[23] = v13;
  if (v14)
  {
    v17 = *(*v4 + 56) + 48 * v13;
    v18 = *v17;
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    v21 = *(v17 + 40);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v18 = xmmword_197A97E00;
    v19 = 0uLL;
  }

  *(v7 + 6) = v18;
  *(v7 + 7) = v19;
  v7[16] = v20;
  *(v7 + 136) = v21;
  return sub_19797EC40;
}

uint64_t (*sub_19797EB20(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_19797EF8C;
}

void sub_19797EB48(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_197947A40(v2, &qword_1EAF49130, &qword_197A969C0);
  free(v2);

  free(v1);
}

void sub_19797EBB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_197947A40(v3, &qword_1EAF49130, &qword_197A969C0);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void sub_19797EC40(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v7 = *(*a1 + 128);
  v8 = *(*a1 + 136);
  if ((a2 & 1) == 0)
  {
    if (v3 == 1)
    {
      if ((*(*a1 + 41) & 1) == 0)
      {
        goto LABEL_15;
      }

      v14 = *(*a1 + 112);
      v15 = *(*a1 + 104);
      v16 = *(*a1 + 120);
      v17 = *(*a1 + 128);
      sub_197947A40(*(**(v2 + 19) + 48) + *(*(v2 + 21) + 72) * *(v2 + 23), &qword_1EAF49130, &qword_197A969C0);
      OUTLINED_FUNCTION_16_10();
      sub_19796AB98(v18, &qword_1EAF49130, &qword_197A969C0);
      sub_197A87EC8();
      goto LABEL_14;
    }

    v19 = **(v2 + 19);
    v20 = *(v2 + 23);
    if ((*(*a1 + 41) & 1) == 0)
    {
      v14 = *(*a1 + 112);
      v16 = *(*a1 + 120);
      v15 = *(*a1 + 104);
      v17 = *(*a1 + 128);
      sub_197A44A54();
      *(v2 + 6) = v3;
      *(v2 + 7) = v15;
      *(v2 + 8) = v14;
      *(v2 + 9) = v16;
      *(v2 + 10) = v17;
      *(v2 + 88) = v8;
      v21 = OUTLINED_FUNCTION_108_3();
      goto LABEL_13;
    }

LABEL_11:
    v24 = v19[7] + 48 * v20;
    *v24 = v3;
    *(v24 + 8) = v5;
    *(v24 + 16) = v4;
    *(v24 + 24) = v6;
    *(v24 + 32) = v7;
    *(v24 + 40) = v8;
    goto LABEL_15;
  }

  if (v3 != 1)
  {
    v19 = **(v2 + 19);
    v20 = *(v2 + 23);
    if ((*(*a1 + 41) & 1) == 0)
    {
      v14 = *(*a1 + 112);
      v16 = *(*a1 + 120);
      v15 = *(*a1 + 104);
      v17 = *(*a1 + 128);
      sub_197A44A54();
      *v2 = v3;
      *(v2 + 1) = v15;
      *(v2 + 2) = v14;
      *(v2 + 3) = v16;
      *(v2 + 4) = v17;
      *(v2 + 40) = v8;
      v21 = OUTLINED_FUNCTION_108_3();
      v23 = v2;
LABEL_13:
      sub_19794BD0C(v21, v22, v23, v19);
LABEL_14:
      v7 = v17;
      v6 = v16;
      v4 = v14;
      v5 = v15;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (*(*a1 + 41))
  {
    v9 = *(*a1 + 112);
    v10 = *(*a1 + 104);
    v11 = *(*a1 + 120);
    v12 = *(*a1 + 128);
    sub_197947A40(*(**(v2 + 19) + 48) + *(*(v2 + 21) + 72) * *(v2 + 23), &qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_16_10();
    sub_19796AB98(v13, &qword_1EAF49130, &qword_197A969C0);
    sub_197A87EC8();
    v7 = v12;
    v6 = v11;
    v4 = v9;
    v5 = v10;
  }

LABEL_15:
  v25 = *(v2 + 22);
  v26 = *(v2 + 14);
  v27 = *(v2 + 15);
  v28 = *(v2 + 16);
  sub_19797EF18(v3, v5, v4, v6, v7);
  v29 = OUTLINED_FUNCTION_108_3();
  sub_197963674(v29, v30, v26, v27, v28);
  free(v25);

  free(v2);
}

void sub_19797EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {

    sub_19794A620(a2, a3, a4, a5);
  }
}

uint64_t sub_19797EFAC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_19797F020(uint64_t a1, void *a2)
{

  OUTLINED_FUNCTION_6_9();
  sub_197978A98();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + *a2));
  return v2;
}

uint64_t sub_19797F0C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_23();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0 + v2);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19797F19C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19798933C();
  *a1 = result;
  return result;
}

uint64_t sub_19797F1CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_197A87258();
    OUTLINED_FUNCTION_70();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_19797F2A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_197A87258();
    OUTLINED_FUNCTION_70();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

double sub_19797F3D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_197961900(a1 + 32, a2);
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

uint64_t sub_19797F5FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19797F550();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19797F778(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_19797F80C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19797F94C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19797FA38()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979801D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = sub_197A87258();
  v8 = a1 + *(a3 + 52);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_197980250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A87258();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1979802D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_52_2();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_197980374()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_19798040C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_70();
    if (*(v10 + 84) != a2)
    {
      return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 24) + 24));
    }

    v9 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_197980504()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_70();
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 24) = (v0 - 1);
      return;
    }

    v7 = OUTLINED_FUNCTION_81_0();
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1979805F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_70();
    if (*(v10 + 84) != a2)
    {
      return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 24)));
    }

    v9 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1979806EC()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_70();
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    v7 = OUTLINED_FUNCTION_81_0();
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1979807DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_97();
  sub_197A87298();
  OUTLINED_FUNCTION_70();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(v3 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_52_2();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_197980870()
{
  OUTLINED_FUNCTION_17_4();
  sub_197A87298();
  OUTLINED_FUNCTION_70();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1979808FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_52_2();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1979809A8()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 3;
  }
}

uint64_t sub_197980B98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19799A9AC();
  *a1 = result;
  return result;
}

uint64_t sub_197980BC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197980C08()
{

  OUTLINED_FUNCTION_33_6();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197980C48()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197980CB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_197A0D6DC(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_197980E6C()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for ClientData(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_197980EA8()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for ClientData(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_197980EE0()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_197980F1C()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_197980F54(unint64_t *a1, uint64_t a2, int *a3)
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
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_70();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for InferenceProviderRequestConfiguration(0);
      OUTLINED_FUNCTION_70();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void sub_197981068()
{
  OUTLINED_FUNCTION_71();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_157();
    type metadata accessor for RequestMetadata(0);
    OUTLINED_FUNCTION_70();
    if (*(v4 + 84) != v2)
    {
      type metadata accessor for InferenceProviderRequestConfiguration(0);
      OUTLINED_FUNCTION_70();
      if (*(v5 + 84) != v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
      }
    }

    OUTLINED_FUNCTION_122_2();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_19798116C()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1979811B8()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_197981200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 4;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_1979812B4()
{
  OUTLINED_FUNCTION_157();
  v4 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for RequestKey(v4);
  OUTLINED_FUNCTION_70();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 + 3);
  }
}

uint64_t sub_197981478()
{
  v1 = (type metadata accessor for Request(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v2));

  sub_197974AFC(*(v0 + v2 + 64), *(v0 + v2 + 72));

  v3 = v1[11];
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(v0 + v2 + v3);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197981580()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979815B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979815F0()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_197981644()
{
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3;
  v5 = sub_197A877A8();
  v6 = OUTLINED_FUNCTION_122_3();
  if (!__swift_getEnumTagSinglePayload(v6, v7, v5))
  {
    OUTLINED_FUNCTION_36_0();
    (*(v8 + 8))(v1 + v3, v5);
  }

  v9 = *(v0 + 20);
  if (!__swift_getEnumTagSinglePayload(v4 + v9, 1, v5))
  {
    OUTLINED_FUNCTION_36_0();
    (*(v10 + 8))(v4 + v9, v5);
  }

  OUTLINED_FUNCTION_165();

  return MEMORY[0x1EEE6BDD0](v11);
}

uint64_t sub_197981788(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_70();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
  }

  else
  {
    sub_197A87298();
    OUTLINED_FUNCTION_70();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
      OUTLINED_FUNCTION_70();
      if (*(v9 + 84) == a2)
      {
        v7 = a3[7];
      }

      else
      {
        type metadata accessor for RequestKey(0);
        v7 = a3[14];
      }
    }
  }

  v10 = OUTLINED_FUNCTION_177(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1979818CC()
{
  OUTLINED_FUNCTION_71();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    type metadata accessor for ClientData(0);
    OUTLINED_FUNCTION_70();
    if (*(v6 + 84) == v5)
    {
      v7 = v4[5];
    }

    else
    {
      sub_197A87298();
      OUTLINED_FUNCTION_70();
      if (*(v8 + 84) == v5)
      {
        v7 = v4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
        OUTLINED_FUNCTION_70();
        if (*(v9 + 84) == v5)
        {
          v7 = v4[7];
        }

        else
        {
          type metadata accessor for RequestKey(0);
          v7 = v4[14];
        }
      }
    }

    v10 = OUTLINED_FUNCTION_177(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_197981A18(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  sub_197A87298();
  v5 = OUTLINED_FUNCTION_177(*(a3 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_197981A90()
{
  OUTLINED_FUNCTION_71();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_197A87298();
    v5 = OUTLINED_FUNCTION_177(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_197981B84()
{
  OUTLINED_FUNCTION_67();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v1 + v3;

  v5 = v1 + v3 + v0[5];
  v6 = sub_197A877A8();
  v7 = OUTLINED_FUNCTION_122_3();
  if (!__swift_getEnumTagSinglePayload(v7, v8, v6))
  {
    OUTLINED_FUNCTION_36_0();
    (*(v9 + 8))(v5, v6);
  }

  v10 = *(type metadata accessor for ClientData(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v5 + v10, 1, v6))
  {
    OUTLINED_FUNCTION_36_0();
    (*(v11 + 8))(v5 + v10, v6);
  }

  v12 = v0[6];
  v13 = sub_197A87298();
  OUTLINED_FUNCTION_6();
  v15 = *(v14 + 8);
  v15(v4 + v12, v13);
  v15(v4 + v0[7], v13);

  v15(v4 + v0[14], v13);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v16);
}

uint64_t sub_197981D70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197981DCC()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197981E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_197A87298();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_197981E8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A87298();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197981F0C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197981F44()
{
  type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_82_6();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  v4 = *(v0 + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v5 + 8))(v1 + v3 + v4);

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_197982020()
{
  type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_82_6();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  v4 = *(v0 + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v5 + 8))(v1 + v3 + v4);

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_197982198()
{

  v0 = OUTLINED_FUNCTION_10_13();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979821D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19798220C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

__n128 sub_197982278(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1979822F8()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197982330()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979823D8()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197982410()
{
  OUTLINED_FUNCTION_67();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v4))
  {
    OUTLINED_FUNCTION_21_9();
    v5 = OUTLINED_FUNCTION_76_7();
    v6(v5);
  }

  v7 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v7))
  {
    OUTLINED_FUNCTION_21_9();
    v8 = OUTLINED_FUNCTION_127_1();
    v9(v8);
  }

  v10 = v0[6];
  v11 = sub_197A87298();
  OUTLINED_FUNCTION_6();
  v13 = *(v12 + 8);
  v13(v1 + v3 + v10, v11);
  v14 = OUTLINED_FUNCTION_126_2(v0[7]);
  (v13)(v14);

  v15 = OUTLINED_FUNCTION_126_2(v0[14]);
  (v13)(v15);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v16);
}

uint64_t sub_1979825A8()
{
  OUTLINED_FUNCTION_67();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v4))
  {
    OUTLINED_FUNCTION_21_9();
    v5 = OUTLINED_FUNCTION_76_7();
    v6(v5);
  }

  v7 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v7))
  {
    OUTLINED_FUNCTION_21_9();
    v8 = OUTLINED_FUNCTION_127_1();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 8);
  v12(v1 + v3 + v3, v10);
  v13 = OUTLINED_FUNCTION_122_4(*(v0 + 28));
  (v12)(v13);

  v14 = OUTLINED_FUNCTION_122_4(*(v0 + 56));
  (v12)(v14);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v15);
}

uint64_t sub_197982738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    OUTLINED_FUNCTION_70();
    if (*(v10 + 84) != v3)
    {
      return OUTLINED_FUNCTION_18_0(*(v4 + *(a3 + 24)));
    }

    v9 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_197982828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    OUTLINED_FUNCTION_70();
    if (*(v12 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = (v4 - 1);
      return;
    }

    v11 = OUTLINED_FUNCTION_81_0();
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_197982920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for InferenceProviderRequestResult(0);
    OUTLINED_FUNCTION_70();
    if (*(v10 + 84) != v3)
    {
      return OUTLINED_FUNCTION_18_0(*(v4 + *(a3 + 24) + 8));
    }

    v9 = OUTLINED_FUNCTION_81_0();
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1979829FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_70();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for InferenceProviderRequestResult(0);
    OUTLINED_FUNCTION_70();
    if (*(v12 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return;
    }

    v11 = OUTLINED_FUNCTION_81_0();
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_197982AE0()
{
  OUTLINED_FUNCTION_67();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v4))
  {
    OUTLINED_FUNCTION_21_9();
    v5 = OUTLINED_FUNCTION_76_7();
    v6(v5);
  }

  v7 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v7))
  {
    OUTLINED_FUNCTION_21_9();
    v8 = OUTLINED_FUNCTION_127_1();
    v9(v8);
  }

  v10 = v0[6];
  v11 = sub_197A87298();
  OUTLINED_FUNCTION_6();
  v13 = *(v12 + 8);
  v13(v3 + v10, v11);
  v14 = OUTLINED_FUNCTION_126_2(v0[7]);
  (v13)(v14);

  v15 = OUTLINED_FUNCTION_126_2(v0[14]);
  (v13)(v15);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v16);
}

uint64_t sub_197982C68()
{

  OUTLINED_FUNCTION_121_3();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197982C9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197982CDC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197982D1C()
{
  OUTLINED_FUNCTION_67();
  type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_124();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_197A877A8();
  if (!OUTLINED_FUNCTION_65_7(v4))
  {
    OUTLINED_FUNCTION_21_9();
    v5 = OUTLINED_FUNCTION_76_7();
    v6(v5);
  }

  v7 = type metadata accessor for ClientData(0);
  if (!OUTLINED_FUNCTION_63_5(v7))
  {
    OUTLINED_FUNCTION_21_9();
    v8 = OUTLINED_FUNCTION_127_1();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_116_4();
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 8);
  v12(v1 + v3 + v3, v10);
  v13 = OUTLINED_FUNCTION_122_4(*(v0 + 28));
  (v12)(v13);

  v14 = OUTLINED_FUNCTION_122_4(*(v0 + 56));
  (v12)(v14);

  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v15);
}

uint64_t sub_197982F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A4B0B4();
  *a1 = result;
  return result;
}

uint64_t sub_197982F88(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6F6972506B736174;
  }
}

uint64_t sub_197982FD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A4B640();
  *a1 = result;
  return result;
}

uint64_t sub_197983128()
{
  OUTLINED_FUNCTION_121_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_70();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_64_9();
    return (v6 + 1);
  }
}

void sub_1979831BC()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A58, &qword_197A98140);
  OUTLINED_FUNCTION_70();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_174_1();
  }
}

uint64_t sub_19798324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1979832F8()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_70();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1979833A4()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for Assertion.DaemonRep(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_1979833E0()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for Assertion.DaemonRep(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_197983418()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_197983464()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1979834DC()
{
  OUTLINED_FUNCTION_43_1();
  sub_197A876D8();
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_197983518()
{
  OUTLINED_FUNCTION_43_1();
  sub_197A876D8();
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_197983580(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87818();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1979835C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87818();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_197983614()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19798364C()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979836C8(char a1)
{
  if (a1)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

uint64_t sub_197983708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A62078();
  *a1 = result;
  return result;
}

unint64_t sub_197983730(char a1)
{
  result = 0x6361667265746E69;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_76_8();
      break;
    case 2:
      result = OUTLINED_FUNCTION_83_6(16);
      break;
    case 3:
      result = 0x6144746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979837D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A618D0();
  *a1 = result;
  return result;
}

uint64_t sub_19798387C(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_98_5();
    return (v2 + 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_68_8();
    type metadata accessor for ClientData(v4);
    v5 = OUTLINED_FUNCTION_15_10();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

uint64_t sub_1979838EC(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    type metadata accessor for ClientData(0);
    v4 = OUTLINED_FUNCTION_15_10();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_197983968()
{
  OUTLINED_FUNCTION_111();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 32));
  }

  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v5 = OUTLINED_FUNCTION_177(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1979839E4()
{
  OUTLINED_FUNCTION_76_1();
  if (v3)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
    v5 = OUTLINED_FUNCTION_177(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_197983A60()
{
  OUTLINED_FUNCTION_111();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 24));
  }

  OUTLINED_FUNCTION_68_8();
  sub_197A87298();
  v3 = OUTLINED_FUNCTION_15_10();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_197983AC4()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_197A87298();
    v3 = OUTLINED_FUNCTION_15_10();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_197983B30()
{
  OUTLINED_FUNCTION_111();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_0(*(v0 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  v3 = OUTLINED_FUNCTION_15_10();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_197983BA8()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
    v3 = OUTLINED_FUNCTION_15_10();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_197983D60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_197A87258();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_197983DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A87258();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_197983FE0()
{
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979840B8()
{
  v1 = type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v9 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v10 + 8))(v0 + v3);
  (*(v8 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197984210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_6();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_155_2();

  return MEMORY[0x1EEE6BDD0](v2);
}

uint64_t sub_197984294()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979842D0()
{
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_10(NextStreamResultsRequest);
  v3 = *(v2 + 80);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(v0 + ((v3 + 16) & ~v3));
  v5 = OUTLINED_FUNCTION_155_2();

  return MEMORY[0x1EEE6BDD0](v5);
}

uint64_t sub_197984388()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979843DC()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

char *sub_197984484(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_8(a3, result);
  }

  return result;
}

uint64_t sub_1979844F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_197A87888();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_197A87878();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197A878A8();
  sub_197A6AD40(a1, a2);
  sub_197984E64(&qword_1EAF489D0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_197A87868();
  v15 = OUTLINED_FUNCTION_1();
  sub_197984D18(v15, v16);
  v17 = OUTLINED_FUNCTION_1();
  sub_197984C7C(v17, v18, v9);
  v19 = OUTLINED_FUNCTION_1();
  sub_197974AFC(v19, v20);
  sub_197A87858();
  (*(v6 + 8))(v9, v4);
  v27 = sub_197984748(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF489D8, &qword_197A88F08);
  sub_197984DB8();
  v21 = sub_197A87908();
  v22 = OUTLINED_FUNCTION_1();
  sub_197974AFC(v22, v23);

  (*(v11 + 8))(v14, v26);
  return v21;
}

void *sub_197984748(uint64_t a1)
{
  v2 = sub_197A87878();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197984E64(&qword_1EAF489E8, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v6 = sub_197A87A38();
  v37 = MEMORY[0x1E69E7CC0];
  sub_19798CC14(0, v6 & ~(v6 >> 63), 0);
  v7 = v37;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_197A87A28();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v9 = v36;
      v10 = *(v35 + 16);
      v33 = v35;
      *&v34 = v10;
      v32 = v35 + 32;
      v31 = xmmword_197A88E50;
      v11 = v36;
      while (v34 != v9)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v9 >= *(v33 + 16))
        {
          goto LABEL_21;
        }

        v12 = *(v32 + v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF489F0, &unk_197A88F10);
        v13 = swift_allocObject();
        *(v13 + 16) = v31;
        *(v13 + 56) = MEMORY[0x1E69E7508];
        *(v13 + 64) = MEMORY[0x1E69E7558];
        *(v13 + 32) = v12;
        result = sub_197A87958();
        v14 = result;
        v16 = v15;
        v37 = v7;
        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_19798CC14((v17 > 1), v18 + 1, 1);
          v7 = v37;
        }

        *(v7 + 16) = v18 + 1;
        v19 = v7 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        ++v9;
        if (!--v6)
        {
          v36 = v9;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v20 = v35;
      v34 = xmmword_197A88E50;
      while (1)
      {
        v21 = *(v20 + 16);
        if (v36 == v21)
        {

          return v7;
        }

        if (v36 >= v21)
        {
          break;
        }

        v22 = *(v20 + 32 + v36++);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF489F0, &unk_197A88F10);
        v23 = swift_allocObject();
        *(v23 + 16) = v34;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_197A87958();
        v24 = result;
        v26 = v25;
        v37 = v7;
        v28 = *(v7 + 16);
        v27 = *(v7 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_19798CC14((v27 > 1), v28 + 1, 1);
          v7 = v37;
        }

        *(v7 + 16) = v28 + 1;
        v29 = v7 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

double default argument 1 of TaskCancellingXPCReceivedMessage.init(isSync:auditToken:request:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t default argument 0 of InputStreamingRequest.init(client:session:loggingIdentifier:clientDataSequence:)@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ED8803B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED880258;
  a1[3] = type metadata accessor for ModelServiceClient();
  a1[4] = &protocol witness table for ModelServiceClient;
  *a1 = v2;
}

uint64_t sub_197984BCC(uint64_t a1, int a2)
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

uint64_t sub_197984BEC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RemoteDeviceSet(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteDeviceSet(uint64_t result, int a2, int a3)
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

void sub_197984C7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_197984F80(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_197984EAC(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_197984D18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

unint64_t sub_197984DB8()
{
  result = qword_1EAF489E0;
  if (!qword_1EAF489E0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF489D8, &qword_197A88F08);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &qword_1EAF489E0);
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

uint64_t sub_197984E64(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197984EAC(uint64_t a1, uint64_t a2)
{
  sub_197A87888();
  sub_197984E64(&qword_1EAF489D0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_197A87848();
}

uint64_t sub_197984F80(uint64_t a1, uint64_t a2)
{
  result = sub_197A87058();
  if (!result || (result = sub_197A87078(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_197A87068();
      sub_197A87888();
      sub_197984E64(&qword_1EAF489D0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_197A87848();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197985060(unsigned __int8 a1)
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](a1);
  return sub_197A88358();
}

uint64_t sub_1979850B0(uint64_t a1)
{
  v2 = *v1;
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v2);
  return sub_197A88358();
}

uint64_t ProcessHandle.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_197A878A8();
  return v1;
}

uint64_t ProcessHandle.executablePath.getter()
{
  v1 = *(v0 + 40);
  sub_197A878A8();
  return v1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_197985170(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1979851C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_197985244(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 5))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
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

uint64_t sub_197985280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Assertion.DaemonRep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_197985358(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_197985434()
{
  result = qword_1EAF48A60;
  if (!qword_1EAF48A60)
  {
    result = swift_getWitnessTable(asc_197A89020, &unk_1F0C0D3D0, v0, v1);
    atomic_store(result, &qword_1EAF48A60);
  }

  return result;
}

uint64_t sub_197985488()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1EAF48A68);
  __swift_project_value_buffer(v0, qword_1EAF48A68);
  return sub_197A875F8();
}

void sub_197985508()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
  [v0 setValues_];
  sub_19798627C(&unk_1F0C0CDD0, v0);
  qword_1ED8817D0 = v0;
}

uint64_t sub_197985568()
{
  v1 = v0;
  v17 = sub_197A87D88();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  v6 = sub_197A87D98();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v7 = sub_197A87838();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_1_0();
  swift_defaultActor_initialize();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1979860A0(MEMORY[0x1E69E7CC0], aBlock);
  *(v0 + 120) = aBlock[0];
  sub_1979863BC(0, &qword_1ED87DD58, 0x1E69E9618);
  sub_197A87828();
  aBlock[0] = v8;
  sub_1979863FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48A98, &unk_197A89100);
  sub_197986454();
  sub_197A87DF8();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v17);
  *(v0 + 128) = sub_197A87DA8();
  v9 = *sub_197A87398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AA0, &qword_197A97D80);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(v1 + 136) = v10;
  v11 = OBJC_IVAR____TtC20ModelManagerServices20RunningBoardProvider____lazy_storage___processEventStream;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48A80, qword_197A890B0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = objc_allocWithZone(MEMORY[0x1E69C75F8]);

  v14 = [v13 init];
  *(v1 + 112) = v14;
  aBlock[4] = sub_197985954;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_197985958;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [v14 updateConfiguration_];
  _Block_release(v15);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

id sub_1979858CC(id a1)
{
  if (qword_1ED87DE68 != -1)
  {
    swift_once();
  }

  [a1 setStateDescriptor_];

  return [a1 setServiceClass_];
}

uint64_t sub_197985958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1979859AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [objc_opt_self() identifierWithPid_];
  if (v4)
  {
    v5 = v4;
    sub_1979863BC(0, &qword_1ED87DD68, 0x1E69C75D0);
    v6 = v5;
    v7 = sub_197985C7C(v6);
    sub_197985D54(v7, &v13);

    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 24) = v15;
    v12 = v16;
  }

  else
  {
    if (qword_1EAF48910 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1EAF48910);
    }

    v8 = sub_197A87608();
    __swift_project_value_buffer(v8, qword_1EAF48A68);
    v9 = sub_197A875E8();
    v10 = sub_197A87D78();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v2;
      _os_log_impl(&dword_197941000, v9, v10, "Failed to get RBSProcessIdentifier for %d.", v11, 8u);
      MEMORY[0x19A8EBE00](v11, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    v12 = 0uLL;
    *(a2 + 24) = 0u;
  }

  *(a2 + 40) = v12;
}

id sub_197985C7C(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_197A870E8();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v1;
}

void sub_197985D54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 isDaemon];
  v5 = sub_1979862E8(a1);
  v7 = v6;
  v8 = [a1 bundle];
  if (v8)
  {
    v9 = sub_19798634C(v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 bundle];
  v13 = v12;
  if (!v12)
  {

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = [v12 executablePath];

  if (!v14)
  {

    v13 = 0;
    goto LABEL_9;
  }

  v13 = sub_197A87938();
  v16 = v15;

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16;
}

uint64_t sub_197985E6C()
{

  sub_197948484(v0 + OBJC_IVAR____TtC20ModelManagerServices20RunningBoardProvider____lazy_storage___processEventStream, &qword_1EAF48A88, &unk_197A890F0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_197985ECC()
{
  sub_197985E6C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for RunningBoardProvider(uint64_t a1)
{
  result = qword_1ED87E420;
  if (!qword_1ED87E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_197985F4C(uint64_t a1)
{
  sub_197986014(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_197986014(uint64_t a1)
{
  if (!qword_1ED87DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48A80, qword_197A890B0);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED87DF50);
    }
  }
}

uint64_t sub_1979860A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_197A87898();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v22 = a1 + 32;
    while (v5 < *(a1 + 16))
    {
      v6 = *(v22 + 4 * v5);
      v7 = v3[2];
      if (v7)
      {
        v8 = sub_197A40860(*(v22 + 4 * v5));
        if (v9)
        {
          v7 = *(v3[7] + 8 * v8);
        }

        else
        {
          v7 = 0;
        }
      }

      v10 = v7 + 1;
      if (v7 == -1)
      {
        goto LABEL_20;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_197A40860(v6);
      if (__OFADD__(v3[2], (v12 & 1) == 0))
      {
        goto LABEL_21;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AA8, &qword_197A89110);
      if (sub_197A87EB8())
      {
        v15 = sub_197A40860(v6);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_23;
        }

        v13 = v15;
      }

      if (v14)
      {
        *(v3[7] + 8 * v13) = v10;
      }

      else
      {
        v3[(v13 >> 6) + 8] |= 1 << v13;
        *(v3[6] + 4 * v13) = v6;
        *(v3[7] + 8 * v13) = v10;
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_22;
        }

        v3[2] = v19;
      }

      ++v5;

      if (v4 == v5)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_197A88288();
    __break(1u);
  }

  else
  {
LABEL_18:

    *a2 = v3;
  }

  return result;
}

void sub_19798627C(uint64_t a1, void *a2)
{
  v3 = sub_197A87AE8();

  [a2 setEndowmentNamespaces_];
}

uint64_t sub_1979862E8(void *a1)
{
  v1 = [a1 daemonJobLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_197A87938();

  return v3;
}

uint64_t sub_19798634C(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_197A87938();

  return v3;
}

uint64_t sub_1979863BC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1979863FC()
{
  result = qword_1ED87DD60;
  if (!qword_1ED87DD60)
  {
    v3 = sub_197A87D98();
    result = swift_getWitnessTable(MEMORY[0x1E69E8138], v3, v0, v1);
    atomic_store(result, &qword_1ED87DD60);
  }

  return result;
}

unint64_t sub_197986454()
{
  result = qword_1ED87DD70;
  if (!qword_1ED87DD70)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48A98, &unk_197A89100);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1ED87DD70);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1979864D0()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_62();
  sub_1979671F8(v11, v12, &qword_1EAF48AB0, &unk_197A89150);
  v13 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v0, &qword_1EAF48AB0, &unk_197A89150);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);
    OUTLINED_FUNCTION_47_0();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();
  OUTLINED_FUNCTION_47_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
  swift_task_create();

  sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);

LABEL_9:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197986798()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87DF78);
  v1 = __swift_project_value_buffer(v0, qword_1ED87DF78);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1979868BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Assertion.__allocating_init(policy:description:collection:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_63_0();
  swift_allocObject();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43(v1);
  OUTLINED_FUNCTION_59();

  return Assertion.init(policy:description:collection:)();
}

uint64_t Assertion.init(policy:description:collection:)()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_28(v7);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v8 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197986A58(uint64_t a1)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 32);
  v8 = *(v1 + 16);
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  sub_197A87238();
  *(v2 + 32) = v5;
  *(v2 + 40) = v4;
  *(v2 + 16) = v8;
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection) = v3;

  Assertion.daemonRep.getter();
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *v6 = v1;
  v6[1] = sub_197986B58;
  OUTLINED_FUNCTION_32_1(*(v1 + 64));

  return sub_19798951C();
}

uint64_t sub_197986B58()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_19798A20C(v5);
  if (v0)
  {
    v9 = sub_197986CE0;
  }

  else
  {
    v9 = sub_197986C74;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_197986C74()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_197986CE0()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

void Assertion.daemonRep.getter()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v6 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_timestamp;
  v8 = type metadata accessor for Assertion.DaemonRep(0);
  v9 = v8[6];
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  (*(v10 + 16))(&v2[v9], &v0[v7]);
  v11 = v8[7];
  v12 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v13 + 16))(&v2[v11], &v0[v12]);
  sub_197A878A8();
  sub_197A878A8();
  v14 = getpid();
  *v2 = v4;
  *(v2 + 1) = v3;
  *(v2 + 2) = v6;
  *(v2 + 3) = v5;
  *&v2[v8[8]] = v14;
  OUTLINED_FUNCTION_66();
}

uint64_t Assertion.__allocating_init(policy:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_4(sub_197986E58);
}

uint64_t sub_197986E58()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ED87DFB8 != -1)
  {
    OUTLINED_FUNCTION_38(&qword_1ED87DFB8);
  }

  swift_allocObject();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_197986F40;
  OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return Assertion.init(policy:description:collection:)();
}

uint64_t sub_197986F40()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_68_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void Assertion.deinit()
{
  OUTLINED_FUNCTION_67();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v1);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_23();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v24[1] = OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection;
  v14 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection);
  v15 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  v16 = sub_197A87298();
  OUTLINED_FUNCTION_70();
  v18 = v17;
  (*(v17 + 16))(v13, v0 + v15, v16);
  v19 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_1979671F8(v13, v11, &qword_1EAF48AB8, &qword_197A92860);
  v20 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v14;
  sub_19798C52C(v11, v21 + v20);
  swift_retain_n();
  sub_19795CB2C();

  sub_197947A40(v13, &qword_1EAF48AB8, &qword_197A92860);

  (*(v18 + 8))(v0 + v15, v16);
  v22 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_timestamp;
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  (*(v23 + 8))(v0 + v22);

  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979872E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_197960FB0;

  return sub_19798A4C4();
}

uint64_t Assertion.__deallocating_deinit()
{
  Assertion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Assertion.DaemonRep.init(policy:description:timestamp:id:acquirerPID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for Assertion.DaemonRep(0);
  v13 = v12[6];
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  (*(v14 + 32))(&a8[v13], a5);
  result = sub_19798C52C(a6, &a8[v12[7]]);
  *&a8[v12[8]] = a7;
  return result;
}

uint64_t Assertion.hash(into:)()
{
  v0 = type metadata accessor for Assertion.DaemonRep(0);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2 - v1;
  Assertion.daemonRep.getter();
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  sub_1979736EC(v4, 255, v5, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_60();
  sub_197A878F8();
  return sub_19798A20C(v3);
}

uint64_t static Assertion.== infix(_:_:)()
{
  v0 = type metadata accessor for Assertion.DaemonRep(0);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  Assertion.daemonRep.getter();
  Assertion.daemonRep.getter();
  v6 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
  sub_19798A20C(v3);
  sub_19798A20C(v5);
  return v6 & 1;
}

uint64_t static Assertion.DaemonRep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Assertion.DaemonRep(0);

  return _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t Assertion.invalidate()()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1979876E4()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v4 + 16))(v1, v2 + v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1979877C4;
  OUTLINED_FUNCTION_32_1(v0[3]);

  return sub_19798A4C4();
}

uint64_t sub_1979877C4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  sub_197947A40(v2, &qword_1EAF48AB8, &qword_197A92860);

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t Assertion.hashValue.getter()
{
  sub_197A882F8();
  Assertion.hash(into:)();
  return sub_197A88358();
}

uint64_t sub_197987984(uint64_t a1)
{
  sub_197A882F8();
  Assertion.hash(into:)();
  return sub_197A88358();
}

uint64_t Assertion.DaemonRep.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Assertion.DaemonRep(0) + 24);
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Assertion.DaemonRep.init(policy:description:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for Assertion.DaemonRep(0);
  sub_197A87238();
  sub_1979671F8(a5, a6 + *(v8 + 28), &qword_1EAF48AB8, &qword_197A92860);
  v9 = getpid();
  result = sub_197947A40(a5, &qword_1EAF48AB8, &qword_197A92860);
  *(a6 + *(v8 + 32)) = v9;
  return result;
}

uint64_t Assertion.DaemonRep.receivedFromPID(_:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = *(v0 + 1);
  v8 = *(v0 + 2);
  v7 = *(v0 + 3);
  v9 = type metadata accessor for Assertion.DaemonRep(0);
  v10 = v9[6];
  sub_197A87258();
  OUTLINED_FUNCTION_6();
  (*(v11 + 16))(&v4[v10], &v0[v10]);
  sub_1979671F8(&v0[v9[7]], &v4[v9[7]], &qword_1EAF48AB8, &qword_197A92860);
  *v4 = v6;
  *(v4 + 1) = v5;
  *(v4 + 2) = v8;
  *(v4 + 3) = v7;
  *&v4[v9[8]] = v2;
  sub_197A878A8();
  OUTLINED_FUNCTION_66();

  return sub_197A878A8();
}

uint64_t Assertion.DaemonRep.hash(into:)()
{
  type metadata accessor for Assertion.DaemonRep(0);
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  sub_1979736EC(v0, 255, v1, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_60();
  return sub_197A878F8();
}

uint64_t sub_197987D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7265726975716361 && a2 == 0xEB00000000444950)
        {

          return 4;
        }

        else
        {
          v10 = sub_197A88218();

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

uint64_t sub_197987ED8(char a1)
{
  result = 0x7963696C6F70;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0x6D617473656D6974;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x7265726975716361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197987F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197987D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197987FC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197987EC4();
  *a1 = result;
  return result;
}

uint64_t sub_197987FF0(uint64_t a1)
{
  v2 = sub_19798C688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19798802C(uint64_t a1)
{
  v2 = sub_19798C688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Assertion.DaemonRep.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AC0, &qword_197A89180);
  OUTLINED_FUNCTION_34_0();
  v5 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19798C688();
  sub_197A883D8();
  v12[15] = 0;
  OUTLINED_FUNCTION_58();
  sub_197A880B8();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_58();
    sub_197A880B8();
    type metadata accessor for Assertion.DaemonRep(0);
    v12[13] = 2;
    sub_197A87258();
    OUTLINED_FUNCTION_27_1();
    sub_1979736EC(v9, 255, v10, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v12[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
    sub_19798C6DC(&qword_1ED87E8B0, protocol conformance descriptor for UUIDIdentifier<A>);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v12[11] = 4;
    OUTLINED_FUNCTION_58();
    sub_197A880F8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t Assertion.DaemonRep.hashValue.getter()
{
  sub_197A882F8();
  type metadata accessor for Assertion.DaemonRep(0);
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  v2 = sub_1979736EC(v0, 255, v1, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_76(v2, v3);
  return sub_197A88358();
}

uint64_t Assertion.DaemonRep.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  v37 = v34 - v4;
  v5 = sub_197A87258();
  OUTLINED_FUNCTION_34_0();
  v38 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AC8, &qword_197A89188);
  OUTLINED_FUNCTION_34_0();
  v39 = v12;
  v40 = v11;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  v16 = type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19798C688();
  v41 = v15;
  v21 = v42;
  sub_197A883A8();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v10;
  v47 = 0;
  v23 = sub_197A87FA8();
  v25 = v24;
  *v20 = v23;
  v20[1] = v24;
  v46 = 1;
  v20[2] = sub_197A87FA8();
  v20[3] = v26;
  v45 = 2;
  OUTLINED_FUNCTION_27_1();
  sub_1979736EC(v27, 255, v28, MEMORY[0x1E6969558]);
  v42 = 0;
  sub_197A87FD8();
  v34[1] = v25;
  (*(v38 + 32))(v20 + v16[6], v22, v5);
  v44 = 3;
  sub_19798C6DC(&qword_1EAF48680, protocol conformance descriptor for UUIDIdentifier<A>);
  v29 = v37;
  sub_197A87FD8();
  sub_19798C52C(v29, v20 + v16[7]);
  v43 = 4;
  v30 = sub_197A87FE8();
  v31 = OUTLINED_FUNCTION_69();
  v32(v31);
  *(v20 + v16[8]) = v30;
  sub_19798C72C(v20, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_19798A20C(v20);
}

uint64_t sub_197988818(uint64_t a1)
{
  sub_197A882F8();
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  v3 = sub_1979736EC(v1, 255, v2, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_76(v3, v4);
  return sub_197A88358();
}

uint64_t sub_1979888B0()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_19796E1D4;
  OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return ModelServiceClient.acquireAssertion(assertion:)();
}

uint64_t Assertion.LiveDaemonInterface.invalidate(_:)()
{
  OUTLINED_FUNCTION_9();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v2);
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197988A00()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_197988AB8;
  v2 = OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return ModelServiceClient.releaseAssertion(id:)(v2);
}

uint64_t sub_197988AB8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197988BE4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197988BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  if (qword_1ED87DF70 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
  }

  v27 = *(v24 + 48);
  v28 = sub_197A87608();
  __swift_project_value_buffer(v28, qword_1ED87DF78);
  v29 = OUTLINED_FUNCTION_22();
  sub_1979671F8(v29, v30, v31, v32);
  MEMORY[0x19A8EBBD0](v27);
  v33 = sub_197A875E8();
  v34 = sub_197A87D68();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v24 + 32);
  if (v35)
  {
    v37 = *(v24 + 24);
    a11 = *(v24 + 48);
    v38 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    a13 = a12;
    *v38 = 136315394;
    sub_1979671F8(v36, v37, &qword_1EAF48AB8, &qword_197A92860);
    v39 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v41 = v40;
    sub_197947A40(v37, &qword_1EAF48AB8, &qword_197A92860);
    sub_197947A40(v36, &qword_1EAF48AB8, &qword_197A92860);
    v42 = sub_197948834(v39, v41, &a13);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2112;
    MEMORY[0x19A8EBBD0](a11);
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v43;
    *a10 = v43;
    _os_log_impl(&dword_197941000, v33, v34, "Error occurred while releasing assertion [%s]: %@", v38, 0x16u);
    sub_197947A40(a10, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_42_0();
    __swift_destroy_boxed_opaque_existential_1Tm(a12);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    sub_197947A40(v36, &qword_1EAF48AB8, &qword_197A92860);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197988E5C()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43(v1);

  return ModelServiceClient.fetchAllAssertions()(v3);
}

uint64_t sub_197988F08()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_68_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_19798900C()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_19796E2B4;
  v2 = OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return ModelServiceClient.restoreAssertions(_:)(v2);
}

uint64_t sub_1979890C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960E38;

  return Assertion.LiveDaemonInterface.acquire(_:)(a1);
}

uint64_t sub_19798915C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19795BD18;

  return Assertion.LiveDaemonInterface.invalidate(_:)();
}

uint64_t sub_1979891F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19798E644;

  return Assertion.LiveDaemonInterface.fetchAll()();
}

uint64_t sub_19798927C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return Assertion.LiveDaemonInterface.restore(_:)(a1);
}

uint64_t sub_197989374(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_197989438(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_19798951C()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = sub_197A87768();
  OUTLINED_FUNCTION_23();
  v1[23] = v3;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  v1[27] = v4;
  OUTLINED_FUNCTION_28(v4);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197989660()
{
  v36 = v0;
  v35[1] = *MEMORY[0x1E69E9840];
  v1 = v0[30];
  v2 = v0[21];
  sub_19798C72C(v0[20], v0[29]);
  OUTLINED_FUNCTION_46(v2 + 112, (v0 + 7));
  OUTLINED_FUNCTION_60();
  sub_197A7FE14();
  LOBYTE(v2) = v3;
  sub_19798A20C(v1);
  swift_endAccess();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_45();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_75_1();

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for _OSActivity();
  v0[31] = swift_initStackObject();
  v0[32] = sub_1979489D4("Acquiring Assertion", 19, 2);
  if (qword_1ED87DF70 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
  }

  v4 = sub_197A87608();
  v0[33] = __swift_project_value_buffer(v4, qword_1ED87DF78);
  v5 = OUTLINED_FUNCTION_22();
  sub_19798C72C(v5, v6);
  v7 = sub_197A875E8();
  v8 = sub_197A87D78();
  if (OUTLINED_FUNCTION_65(v8))
  {
    v9 = v0[30];
    v10 = v0[28];
    v11 = OUTLINED_FUNCTION_56();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136315138;
    sub_19798C72C(v10, v9);
    v13 = sub_197A87988();
    v15 = v14;
    sub_19798A20C(v10);
    v16 = sub_197948834(v13, v15, v35);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_53();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    v24 = v0[28];

    sub_19798A20C(v24);
  }

  v25 = v0[21];
  if (*(v25 + 120))
  {
    OUTLINED_FUNCTION_15_0(v25);
    OUTLINED_FUNCTION_23();
    v26 = swift_task_alloc();
    v0[35] = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_24_0(v26);
    OUTLINED_FUNCTION_11(v27);
    OUTLINED_FUNCTION_75_1();

    __asm { BRAA            X4, X16 }
  }

  *(v25 + 120) = 1;
  if (qword_1ED880250 != -1)
  {
    swift_once();
  }

  v0[34] = qword_1ED881808;

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75_1();

  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

uint64_t sub_197989A34()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_47_0();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_19798E518;
  *(v4 + 24) = v2;
  OUTLINED_FUNCTION_46(v1 + 128, v0 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 128);
  sub_197A25238(sub_19798E520, v4, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + 128) = v7;

  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_197989B94, v2, 0);
}

uint64_t sub_197989B94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_0(*(v0 + 168));
  OUTLINED_FUNCTION_23();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_24_0(v2);
  v4 = OUTLINED_FUNCTION_11(v3);

  return v6(v4);
}

uint64_t sub_197989CA8()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_197989EDC;
  }

  else
  {
    v6 = sub_197989DF8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197989DF8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_46(v1 + 24, v0 + 128);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_45();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197989EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  *(v24 + 152) = *(v24 + 288);
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_22();
  if (swift_dynamicCast())
  {
    v28 = *(v24 + 200);
    v27 = *(v24 + 208);
    v30 = *(v24 + 184);
    v29 = *(v24 + 192);
    v31 = *(v24 + 176);

    (*(v30 + 32))(v28, v27, v31);
    (*(v30 + 16))(v29, v28, v31);
    v32 = sub_197A875E8();
    v33 = sub_197A87D58();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v24 + 192);
    v36 = *(v24 + 200);
    v38 = *(v24 + 176);
    v37 = *(v24 + 184);
    if (v34)
    {
      a11 = *(v24 + 200);
      v39 = OUTLINED_FUNCTION_56();
      v40 = swift_slowAlloc();
      a12 = v40;
      *v39 = 136315138;
      v41 = sub_197A87758();
      v43 = v42;
      a10 = v38;
      v44 = *(v37 + 8);
      v44(v35, v38);
      v45 = sub_197948834(v41, v43, &a12);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_197941000, v32, v33, "Acquiring assertion caught XPC error: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();

      v44(a11, v38);
    }

    else
    {

      v47 = *(v37 + 8);
      v47(v35, v38);
      v47(v36, v38);
    }

    v48 = *(v24 + 256);
    OUTLINED_FUNCTION_46(v48 + 24, v24 + 128);
    os_activity_scope_leave((v48 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_45();

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v46 = *(v24 + 256);

    OUTLINED_FUNCTION_46(v46 + 24, v24 + 104);
    os_activity_scope_leave((v46 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
  }

  OUTLINED_FUNCTION_30_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_19798A20C(uint64_t a1)
{
  v2 = type metadata accessor for Assertion.DaemonRep(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19798A268(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  if (a1)
  {
    v7 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a2;

    sub_19795CB2C();
  }

  else
  {
    if (qword_1ED87DF70 != -1)
    {
      swift_once();
    }

    v9 = sub_197A87608();
    __swift_project_value_buffer(v9, qword_1ED87DF78);
    v14 = sub_197A875E8();
    v10 = sub_197A87D78();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_197941000, v14, v10, "Can't retry modelmanagerd connection. Assertions cannot be restored.", v11, 2u);
      MEMORY[0x19A8EBE00](v11, -1, -1);
    }

    v12 = v14;
  }
}

uint64_t sub_19798A434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return sub_19798B6B8();
}

uint64_t sub_19798A4C4()
{
  OUTLINED_FUNCTION_18();
  v1[16] = v2;
  v1[17] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v3);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_28(v4);
  v1[21] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19798A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v113 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  inited = swift_initStackObject();
  *(v18 + 176) = inited;
  *(v18 + 184) = sub_1979489D4("Invalidating Assertion", 22, 2);
  v21 = *(v18 + 136);
  if (*(v21 + 168))
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
    }

    v23 = sub_197A87608();
    __swift_project_value_buffer(v23, qword_1ED87DF78);
    v24 = sub_197A875E8();
    v25 = sub_197A87D78();
    if (OUTLINED_FUNCTION_65(v25))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_53();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v16 = *(v18 + 136);

    inited = *(v16 + 168);
    *(v18 + 192) = inited;
    if (inited)
    {

      v31 = swift_task_alloc();
      *(v18 + 200) = v31;
      *v31 = v18;
      OUTLINED_FUNCTION_25_1(v31);
      OUTLINED_FUNCTION_30_0();

      return MEMORY[0x1EEE6DA40](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, v113, a14, a15, a16);
    }

    v21 = *(v18 + 136);
  }

  OUTLINED_FUNCTION_64();
  v40 = *(v21 + 112);
  *(swift_task_alloc() + 16) = inited;
  sub_197A878A8();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_54();
  *(v18 + 208) = v16;
  *(v18 + 216) = v17;
  *(v18 + 232) = inited;

  if (v19)
  {
    v41 = *(v18 + 168);
    OUTLINED_FUNCTION_46(v21 + 112, v18 + 104);
    v42 = OUTLINED_FUNCTION_60();
    sub_19798D21C(v42, v43, v44);
    sub_19798A20C(v41);
    swift_endAccess();
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
    }

    v45 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v45, qword_1ED87DF78);
    v46 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v46, v47, v48, v49);
    v50 = sub_197A875E8();
    v51 = sub_197A87D78();
    v52 = OUTLINED_FUNCTION_48(v51);
    v53 = *(v18 + 160);
    if (v52)
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v41 = 136315138;
      v54 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v54, v55, v56, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v57 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_55_1(v57);
      v58 = OUTLINED_FUNCTION_40();
      v60 = sub_197947A40(v58, v59, &qword_197A92860);
      OUTLINED_FUNCTION_51(v60, v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_77_0();
      *(v41 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v66, v67, "Invalidating assertion: %s");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      sub_197947A40(v53, &qword_1EAF48AB8, &qword_197A92860);
    }

    OUTLINED_FUNCTION_15_0(*(v18 + 136));
    OUTLINED_FUNCTION_23();
    v111 = v91 + *v91;
    v112 = v90;
    v92 = swift_task_alloc();
    *(v18 + 224) = v92;
    *v92 = v18;
    OUTLINED_FUNCTION_19_0(v92);
    OUTLINED_FUNCTION_11(v93);
    OUTLINED_FUNCTION_30_0();

    return v98(v94, v95, v96, v97, v98, v99, v100, v101, v111, v112, a11, a12, v113, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
    }

    v68 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v68, qword_1ED87DF78);
    v69 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v69, v70, v71, v72);
    v73 = sub_197A875E8();
    v74 = sub_197A87D78();
    if (OUTLINED_FUNCTION_48(v74))
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v40 = 136315138;
      v75 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v75, v76, v77, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v78 = OUTLINED_FUNCTION_36();
      v79 = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_55_1(v78);
      v80 = OUTLINED_FUNCTION_40();
      v82 = sub_197947A40(v80, v81, &qword_197A92860);
      OUTLINED_FUNCTION_51(v82, v83, v84, v85, v86, v87);
      OUTLINED_FUNCTION_77_0();
      *(v40 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v88, v89, "Assertion %s has already been removed.");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {
      v79 = *(v18 + 144);

      sub_197947A40(v79, &qword_1EAF48AB8, &qword_197A92860);
    }

    OUTLINED_FUNCTION_14_0();
    os_activity_scope_leave((v79 + 3));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_30_0();

    return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, v113, a14, a15, a16);
  }
}

uint64_t sub_19798AB28()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19798AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v113 = *MEMORY[0x1E69E9840];
  v21 = *(v19 + 136);
  if (*(v21 + 168))
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
    }

    v23 = sub_197A87608();
    __swift_project_value_buffer(v23, qword_1ED87DF78);
    v24 = sub_197A875E8();
    v25 = sub_197A87D78();
    if (OUTLINED_FUNCTION_65(v25))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      OUTLINED_FUNCTION_53();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v16 = *(v19 + 136);

    v17 = *(v16 + 168);
    *(v19 + 192) = v17;
    if (v17)
    {

      v31 = swift_task_alloc();
      *(v19 + 200) = v31;
      *v31 = v19;
      OUTLINED_FUNCTION_25_1(v31);
      OUTLINED_FUNCTION_30_0();

      return MEMORY[0x1EEE6DA40](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, v113, a14, a15, a16);
    }

    v21 = *(v19 + 136);
  }

  OUTLINED_FUNCTION_64();
  v40 = *(v21 + 112);
  *(swift_task_alloc() + 16) = v17;
  sub_197A878A8();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_54();
  *(v19 + 208) = v16;
  *(v19 + 216) = v18;
  *(v19 + 232) = v17;

  if (v20)
  {
    v41 = *(v19 + 168);
    OUTLINED_FUNCTION_46(v21 + 112, v19 + 104);
    v42 = OUTLINED_FUNCTION_60();
    sub_19798D21C(v42, v43, v44);
    sub_19798A20C(v41);
    swift_endAccess();
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
    }

    v45 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v45, qword_1ED87DF78);
    v46 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v46, v47, v48, v49);
    v50 = sub_197A875E8();
    v51 = sub_197A87D78();
    v52 = OUTLINED_FUNCTION_48(v51);
    v53 = *(v19 + 160);
    if (v52)
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v41 = 136315138;
      v54 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v54, v55, v56, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v57 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_55_1(v57);
      v58 = OUTLINED_FUNCTION_40();
      v60 = sub_197947A40(v58, v59, &qword_197A92860);
      OUTLINED_FUNCTION_51(v60, v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_77_0();
      *(v41 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v66, v67, "Invalidating assertion: %s");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      sub_197947A40(v53, &qword_1EAF48AB8, &qword_197A92860);
    }

    OUTLINED_FUNCTION_15_0(*(v19 + 136));
    OUTLINED_FUNCTION_23();
    v111 = v91 + *v91;
    v112 = v90;
    v92 = swift_task_alloc();
    *(v19 + 224) = v92;
    *v92 = v19;
    OUTLINED_FUNCTION_19_0(v92);
    OUTLINED_FUNCTION_11(v93);
    OUTLINED_FUNCTION_30_0();

    return v98(v94, v95, v96, v97, v98, v99, v100, v101, v111, v112, a11, a12, v113, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
    }

    v68 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v68, qword_1ED87DF78);
    v69 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v69, v70, v71, v72);
    v73 = sub_197A875E8();
    v74 = sub_197A87D78();
    if (OUTLINED_FUNCTION_48(v74))
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v40 = 136315138;
      v75 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v75, v76, v77, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v78 = OUTLINED_FUNCTION_36();
      v79 = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_55_1(v78);
      v80 = OUTLINED_FUNCTION_40();
      v82 = sub_197947A40(v80, v81, &qword_197A92860);
      OUTLINED_FUNCTION_51(v82, v83, v84, v85, v86, v87);
      OUTLINED_FUNCTION_77_0();
      *(v40 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v88, v89, "Assertion %s has already been removed.");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {
      v79 = *(v19 + 144);

      sub_197947A40(v79, &qword_1EAF48AB8, &qword_197A92860);
    }

    OUTLINED_FUNCTION_14_0();
    os_activity_scope_leave((v79 + 3));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_30_0();

    return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, v113, a14, a15, a16);
  }
}

uint64_t sub_19798B1B0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v2 + 136);
  if (v0)
  {

    v6 = sub_19798E5D4;
  }

  else
  {
    v6 = sub_19798B308;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_19798B308()
{
  OUTLINED_FUNCTION_33();
  sub_19798E49C(*(v1 + 208), *(v1 + 216), *(v1 + 232));
  OUTLINED_FUNCTION_14_0();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_19798B42C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v6 = type metadata accessor for Assertion.DaemonRep(0);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19798E10C(a3);
  v10 = a3 + 56;
  v30 = a3 + 64;
  if (v11)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (1)
    {
      v12 = *(a3 + 36);
      if (v12 != v9)
      {
        break;
      }

      v13 = 1 << *(a3 + 32);
      if (result == v13)
      {
        return 0;
      }

      if (result < 0 || result >= v13)
      {
        goto LABEL_25;
      }

      v34 = v9;
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v10 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      v35 = v12;
      v16 = v31;
      v17 = result;
      sub_19798C72C(*(a3 + 48) + *(v32 + 72) * result, v31);
      v18 = v4;
      v19 = v33(v16);
      result = sub_19798A20C(v16);
      if (v18)
      {
        return result;
      }

      if (v19)
      {
        return v17;
      }

      v20 = 1 << *(a3 + 32);
      if (v17 >= v20)
      {
        goto LABEL_27;
      }

      v21 = *(v10 + 8 * v14);
      if ((v21 & v15) == 0)
      {
        goto LABEL_28;
      }

      if (*(a3 + 36) != v35)
      {
        goto LABEL_29;
      }

      v22 = v17;
      v23 = v21 & (-2 << (v17 & 0x3F));
      if (v23)
      {
        v20 = __clz(__rbit64(v23)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v26 = (v30 + 8 * v14);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_19798E46C(v22, v34, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        sub_19798E46C(v22, v34, 0);
      }

LABEL_19:
      v9 = *(a3 + 36);
      result = v20;
      v4 = 0;
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
  }

  return result;
}

uint64_t sub_19798B6B8()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19798B740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_18();
  v18 = v16[2];
  v17 = v16[3];
  v19 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  v21 = sub_1979736EC(qword_1ED87D7D8, v20, type metadata accessor for Assertion.Collection, protocol conformance descriptor for Assertion.Collection);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v18;
  swift_retain_n();
  sub_19795CB2C();
  v24 = v23;
  v16[4] = v23;
  *(v18 + 168) = v23;

  v25 = swift_task_alloc();
  v16[5] = v25;
  *v25 = v16;
  v25[1] = sub_19798B8AC;
  v31 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v25, v24, v31, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_19798B8AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19798B9A8()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_19798BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = a4;

  return MEMORY[0x1EEE6DFA0](sub_19798BA98, a4, 0);
}

void sub_19798BA98()
{
  v16[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  v0[17] = swift_initStackObject();
  v0[18] = sub_1979489D4("Restoring Assertions", 20, 2);
  if (qword_1ED87DF70 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1ED87DF70);
  }

  v2 = sub_197A87608();
  v0[19] = __swift_project_value_buffer(v2, qword_1ED87DF78);

  v3 = sub_197A875E8();
  v4 = sub_197A87D78();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_61_1();
    *v1 = 136315138;
    swift_beginAccess();
    v5 = sub_197A878A8();
    v6 = sub_19798C11C(v5);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
    v8 = MEMORY[0x19A8EADB0](v6, v7);
    v10 = v9;

    v11 = sub_197948834(v8, v10, v16);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_197941000, v3, v4, "Restoring assertions: %s", v1, 0xCu);
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_29();
  }

  v12 = v0[16];
  __swift_project_boxed_opaque_existential_1(v12 + 16, v12[19]);
  swift_beginAccess();
  v0[20] = v12[14];
  sub_197A878A8();
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_19798BD90;
  OUTLINED_FUNCTION_75_1();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_19798BD90()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v2 + 176) = v0;

  if (v0)
  {
    v6 = *(v2 + 128);
    v7 = sub_19798BF90;
  }

  else
  {
    v8 = *(v2 + 128);

    v7 = sub_19798BEF4;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_19798BEF4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_19798BF90()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 176);

  MEMORY[0x19A8EBBD0](v1);
  v2 = sub_197A875E8();
  v3 = sub_197A87D58();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_56();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x19A8EBBD0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_197941000, v2, v3, "Failed to restore all assertions: %@", v6, 0xCu);
    sub_197947A40(v7, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v2 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_19798C11C(uint64_t a1)
{
  v3 = type metadata accessor for Assertion.DaemonRep(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v31 = v1;
  v41 = MEMORY[0x1E69E7CC0];
  v38 = v6;
  sub_19798CC74(0, v9, 0);
  v10 = v41;
  result = sub_19798E10C(v38);
  v13 = result;
  v14 = v38;
  v16 = v15;
  v17 = 0;
  v40 = v38 + 56;
  v32 = v38 + 64;
  v33 = v9;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v13 < 1 << *(v14 + 32))
    {
      v18 = v13 >> 6;
      if ((*(v40 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v14 + 36) != v12)
      {
        goto LABEL_25;
      }

      v39 = v12;
      v19 = v35;
      sub_19798C72C(*(v14 + 48) + *(v36 + 72) * v13, v35);
      sub_1979671F8(v19 + *(v37 + 28), v8, &qword_1EAF48AB8, &qword_197A92860);
      sub_19798A20C(v19);
      v41 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_19798CC74((v20 > 1), v21 + 1, 1);
        v10 = v41;
      }

      *(v10 + 16) = v21 + 1;
      v22 = v8;
      result = sub_19798C52C(v8, v10 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21);
      if (v16)
      {
        goto LABEL_29;
      }

      v14 = v38;
      v23 = 1 << *(v38 + 32);
      if (v13 >= v23)
      {
        goto LABEL_26;
      }

      v24 = *(v40 + 8 * v18);
      if ((v24 & (1 << v13)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v38 + 36) != v39)
      {
        goto LABEL_28;
      }

      v25 = v24 & (-2 << (v13 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v18 << 6;
        v27 = v18 + 1;
        v28 = (v32 + 8 * v18);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_19798E46C(v13, v39, 0);
            v14 = v38;
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_19798E46C(v13, v39, 0);
        v14 = v38;
      }

LABEL_19:
      if (++v17 == v33)
      {
        return v10;
      }

      v16 = 0;
      v12 = *(v14 + 36);
      v13 = v23;
      v8 = v22;
      if (v13 < 0)
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

uint64_t sub_19798C4B4()
{
  type metadata accessor for Assertion.Collection();
  v0 = swift_allocObject();
  v3 = &type metadata for Assertion.LiveDaemonInterface;
  v4 = &protocol witness table for Assertion.LiveDaemonInterface;
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CD0];
  *(v0 + 120) = 0;
  *(v0 + 168) = 0;
  result = sub_197945EF8(&v2, v0 + 128);
  qword_1ED87DFC0 = v0;
  return result;
}

uint64_t sub_19798C52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19798C59C()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  v7 = OUTLINED_FUNCTION_7();

  return sub_1979872E4(v7, v8, v2, v3, v9);
}

unint64_t sub_19798C688()
{
  result = qword_1ED87E930[0];
  if (!qword_1ED87E930[0])
  {
    result = swift_getWitnessTable(byte_197A89534, &type metadata for Assertion.DaemonRep.CodingKeys, v0, v1);
    atomic_store(result, qword_1ED87E930);
  }

  return result;
}

uint64_t sub_19798C6DC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48AB8, &qword_197A92860);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19798C72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Assertion.Collection.default.getter()
{
  if (qword_1ED87DFB8 != -1)
  {
    OUTLINED_FUNCTION_38(&qword_1ED87DFB8);
  }
}

uint64_t Assertion.Collection.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Assertion.Collection.__deallocating_deinit()
{
  Assertion.Collection.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19798C868(uint64_t a1, unint64_t a2)
{
  v3 = sub_19798C8B4(a1, a2);
  sub_19798C9CC(&unk_1F0C0CE00);
  return v3;
}

uint64_t sub_19798C8B4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_197A879D8())
  {
    result = sub_19798CAB0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_197A87E48();
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
          result = sub_197A87E98();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19798C9CC(uint64_t result)
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

    result = sub_19798CB20(result, v7, 1, v3);
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

void *sub_19798CAB0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B10, &qword_197A895E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_19798CB20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B10, &qword_197A895E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_19798CC14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19798CC94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19798CC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19798CD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19798CC54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19798CEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19798CC74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19798D050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19798CC94(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_197A1F528((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_19798CD94(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AF0, &qword_197A895C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_197984484((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AF8, &qword_197A895C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_19798CEA4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B00, &qword_197A895D0);
  sub_197A87298();
  OUTLINED_FUNCTION_23();
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v13) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v11);
LABEL_19:
  sub_197A87298();
  OUTLINED_FUNCTION_70();
  if (v5)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_197A1F548(a4 + v17, v8, v14 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_19798D050(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE8, &qword_197A895B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_197A1F560(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_19798D21C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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

  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_197A80F54();
    v9 = v12;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for Assertion.DaemonRep(0);
  sub_19798E4B4(v10 + *(*(v11 - 8) + 72) * a1, a3);
  sub_197A8198C();
  *v4 = v12;
}

uint64_t sub_19798D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  type metadata accessor for Assertion.Collection();
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_19798D448(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_19798D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 112) = MEMORY[0x1E69E7CD0];
  *(a2 + 120) = 0;
  *(a2 + 168) = 0;
  sub_197945EF8(&v9, a2 + 128);
  return a2;
}

uint64_t dispatch thunk of AssertionDaemonInterface.acquire(_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssertionDaemonInterface.invalidate(_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssertionDaemonInterface.fetchAll()()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_23();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_43(v6);

  return v9(v3, v1);
}

uint64_t sub_19798D8A0()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_68_0();

  return v5(v2);
}

uint64_t dispatch thunk of AssertionDaemonInterface.restore(_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37_0(v0, v1, v2);
  OUTLINED_FUNCTION_23();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_0(v4);

  return v7(v6);
}

uint64_t sub_19798DA8C(uint64_t a1)
{
  result = sub_197A87298();
  if (v2 <= 0x3F)
  {
    result = sub_197A87258();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of Assertion.__allocating_init(policy:description:collection:)()
{
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_23();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43(v2);
  v4 = OUTLINED_FUNCTION_59();

  return v6(v4);
}

void sub_19798DCC4(uint64_t a1)
{
  sub_197A87258();
  if (v1 <= 0x3F)
  {
    sub_19798DD60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19798DD60(uint64_t a1)
{
  if (!qword_1ED880650)
  {
    v2 = type metadata accessor for Assertion(255);
    v4 = type metadata accessor for UUIDIdentifier(a1, v2, &protocol witness table for Assertion, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED880650);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Assertion.LiveDaemonInterface(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Assertion.DaemonRep.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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