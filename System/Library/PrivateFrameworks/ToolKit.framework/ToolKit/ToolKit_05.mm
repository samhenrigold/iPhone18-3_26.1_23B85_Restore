unint64_t sub_1C8D0BF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C48;
  if (!qword_1EC312C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C48);
  }

  return result;
}

unint64_t sub_1C8D0BFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C50;
  if (!qword_1EC312C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C50);
  }

  return result;
}

unint64_t sub_1C8D0C034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C58;
  if (!qword_1EC312C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C58);
  }

  return result;
}

unint64_t sub_1C8D0C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C60;
  if (!qword_1EC312C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C60);
  }

  return result;
}

unint64_t sub_1C8D0C0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C68;
  if (!qword_1EC312C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C68);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C8D0C148(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t getEnumTagSinglePayload for IdSearchPredicate.Template(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for IdSearchPredicate.Template(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D0C294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C70;
  if (!qword_1EC312C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdSearchPredicate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D0C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C78;
  if (!qword_1EC312C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C78);
  }

  return result;
}

unint64_t sub_1C8D0C430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C80;
  if (!qword_1EC312C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C80);
  }

  return result;
}

unint64_t sub_1C8D0C488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312C88;
  if (!qword_1EC312C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312C88);
  }

  return result;
}

unint64_t sub_1C8D0C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636C8;
  if (!qword_1EDA636C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636C8);
  }

  return result;
}

unint64_t sub_1C8D0C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA636D0;
  if (!qword_1EDA636D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA636D0);
  }

  return result;
}

uint64_t sub_1C8D0C59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0C658(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D0C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0C658(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

unint64_t sub_1C8D0C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E08;
  if (!qword_1EC312E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E08);
  }

  return result;
}

uint64_t ToolDatabase.Version.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C906204C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C8D0C738(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8D0C7B0()
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D0C80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D0C738(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D0C838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0CA0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D0C874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0CA0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t ToolDatabase.Version.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312E10, &qword_1C9069738);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D0CA0C(v8, v9, v10);
  sub_1C9064E1C();
  sub_1C906204C();
  OUTLINED_FUNCTION_0_9();
  sub_1C8CC8020(v11, v12, MEMORY[0x1E69695B0]);
  sub_1C9064B8C();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1C8D0CA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA623E8;
  if (!qword_1EDA623E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623E8);
  }

  return result;
}

uint64_t ToolDatabase.Version.hash(into:)(uint64_t a1)
{
  sub_1C906204C();
  OUTLINED_FUNCTION_0_9();
  sub_1C8CC8020(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1C9063E7C();
}

uint64_t ToolDatabase.Version.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C906204C();
  OUTLINED_FUNCTION_0_9();
  sub_1C8CC8020(v0, v1, MEMORY[0x1E69695B8]);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.Version.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v25 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312E18, &qword_1C9069740);
  OUTLINED_FUNCTION_11();
  v26 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ToolDatabase.Version(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D0CA0C(v16, v17, v18);
  sub_1C9064DEC();
  if (!v2)
  {
    v19 = v25;
    v20 = v27;
    OUTLINED_FUNCTION_0_9();
    sub_1C8CC8020(v21, v22, MEMORY[0x1E69695D0]);
    sub_1C9064A6C();
    (*(v26 + 8))(v12, v8);
    (*(v19 + 32))(v15, v28, v4);
    sub_1C8D0CEB8(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8D0CDE8(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C906204C();
  sub_1C8CC8020(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t type metadata accessor for ToolDatabase.Version(uint64_t a1)
{
  result = qword_1EDA66168;
  if (!qword_1EDA66168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D0CEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.Version(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8D0CF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0D7C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D0CFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0D7C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D0D0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0D814(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D0D0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0D814(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *static ToolDatabase.OSVersion.getCurrent()()
{
  v0 = sub_1C9063EBC();
  result = MGGetStringAnswer();
  if (result)
  {
    v2 = result;
    v3 = sub_1C9063EEC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8D0D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0D868(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D0D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D0D868(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D0D2C4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1C9064E1C();
  return (*(v9 + 8))(v12, v7);
}

void sub_1C8D0D434()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_6();
  sub_1C8D0F574();
}

uint64_t sub_1C8D0D5B4()
{
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_4_4();
  return v0();
}

void sub_1C8D0D640()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_6();
  sub_1C8D106C8();
}

uint64_t sub_1C8D0D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = a3;
  OUTLINED_FUNCTION_3_9();
  v9[2] = v6;

  return v3(v7, v5, v4, v9);
}

uint64_t sub_1C8D0D750()
{
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_4_4();
  return v0();
}

unint64_t sub_1C8D0D7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E28;
  if (!qword_1EC312E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E28);
  }

  return result;
}

unint64_t sub_1C8D0D814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E38;
  if (!qword_1EC312E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E38);
  }

  return result;
}

unint64_t sub_1C8D0D868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E48;
  if (!qword_1EC312E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E48);
  }

  return result;
}

unint64_t sub_1C8D0D8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA623F0;
  if (!qword_1EDA623F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623F0);
  }

  return result;
}

unint64_t sub_1C8D0D950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62408[0];
  if (!qword_1EDA62408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA62408);
  }

  return result;
}

unint64_t sub_1C8D0D9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62400;
  if (!qword_1EDA62400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62400);
  }

  return result;
}

unint64_t sub_1C8D0D9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA623F8;
  if (!qword_1EDA623F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623F8);
  }

  return result;
}

uint64_t sub_1C8D0DA50(void *a1)
{
  a1[1] = sub_1C8CC8020(&qword_1EDA623B8, type metadata accessor for ToolDatabase.Version, &protocol conformance descriptor for ToolDatabase.Version);
  a1[2] = sub_1C8CC8020(&qword_1EDA623D0, type metadata accessor for ToolDatabase.Version, &protocol conformance descriptor for ToolDatabase.Version);
  result = sub_1C8CC8020(&qword_1EDA623C8, type metadata accessor for ToolDatabase.Version, &protocol conformance descriptor for ToolDatabase.Version);
  a1[3] = result;
  return result;
}

uint64_t sub_1C8D0DBCC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1C8D0DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA661A8;
  if (!qword_1EDA661A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661A8);
  }

  return result;
}

unint64_t sub_1C8D0DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA661C0;
  if (!qword_1EDA661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661C0);
  }

  return result;
}

unint64_t sub_1C8D0DCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA661B8;
  if (!qword_1EDA661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661B8);
  }

  return result;
}

unint64_t sub_1C8D0DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA661B0;
  if (!qword_1EDA661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661B0);
  }

  return result;
}

uint64_t sub_1C8D0DD74(void *a1)
{
  v2 = MEMORY[0x1E69E0850];
  a1[1] = sub_1C8CC8020(&qword_1EDA66698, MEMORY[0x1E69E0850], MEMORY[0x1E69E0868]);
  a1[2] = sub_1C8CC8020(&qword_1EDA666A8, v2, MEMORY[0x1E69E0858]);
  result = sub_1C8CC8020(&qword_1EDA666A0, v2, MEMORY[0x1E69E0860]);
  a1[3] = result;
  return result;
}

unint64_t sub_1C8D0DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E50;
  if (!qword_1EC312E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E50);
  }

  return result;
}

unint64_t sub_1C8D0DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E58;
  if (!qword_1EC312E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E58);
  }

  return result;
}

unint64_t sub_1C8D0DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E60;
  if (!qword_1EC312E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E60);
  }

  return result;
}

unint64_t sub_1C8D0DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E68;
  if (!qword_1EC312E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E68);
  }

  return result;
}

unint64_t sub_1C8D0E000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62368;
  if (!qword_1EDA62368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62368);
  }

  return result;
}

unint64_t sub_1C8D0E054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62380;
  if (!qword_1EDA62380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62380);
  }

  return result;
}

unint64_t sub_1C8D0E0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62378;
  if (!qword_1EDA62378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62378);
  }

  return result;
}

unint64_t sub_1C8D0E100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62370;
  if (!qword_1EDA62370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62370);
  }

  return result;
}

uint64_t sub_1C8D0E18C(uint64_t a1)
{
  result = sub_1C906204C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1C8D0E258(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8D0E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E70;
  if (!qword_1EC312E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E70);
  }

  return result;
}

unint64_t sub_1C8D0E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E78;
  if (!qword_1EC312E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E78);
  }

  return result;
}

unint64_t sub_1C8D0E3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E80;
  if (!qword_1EC312E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E80);
  }

  return result;
}

unint64_t sub_1C8D0E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E88;
  if (!qword_1EC312E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E88);
  }

  return result;
}

unint64_t sub_1C8D0E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E90;
  if (!qword_1EC312E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E90);
  }

  return result;
}

unint64_t sub_1C8D0E4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312E98;
  if (!qword_1EC312E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312E98);
  }

  return result;
}

unint64_t sub_1C8D0E528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312EA0;
  if (!qword_1EC312EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312EA0);
  }

  return result;
}

unint64_t sub_1C8D0E580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA623D8;
  if (!qword_1EDA623D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623D8);
  }

  return result;
}

unint64_t sub_1C8D0E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA623E0;
  if (!qword_1EDA623E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA623E0);
  }

  return result;
}

unint64_t sub_1C8D0E630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312EA8;
  if (!qword_1EC312EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312EA8);
  }

  return result;
}

unint64_t sub_1C8D0E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312EB0;
  if (!qword_1EC312EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312EB0);
  }

  return result;
}

uint64_t sub_1C8D0E6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E78D0C(sub_1C8D0ED74, v4);
}

uint64_t sub_1C8D0E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E78D48(sub_1C8D0ED74, v4);
}

uint64_t sub_1C8D0E7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E78EA4(sub_1C8D0EC58, v4);
}

uint64_t sub_1C8D0E7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E78EE0(sub_1C8D0EC58, v4);
}

uint64_t sub_1C8D0E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E78FC4(sub_1C8D0ED5C, v4);
}

uint64_t sub_1C8D0E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E7903C(sub_1C8D0ED5C, v4);
}

uint64_t sub_1C8D0E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[2] = a2;
  return sub_1C8E7910C(sub_1C8D0ED5C, v4);
}

void *sub_1C8D0EA58(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C8D0EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D0E7B4(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C8D0EAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D0E7FC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D0E88C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D0E91C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C8D0EB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D0E9AC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_1C8D0EE18()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v3 = [objc_opt_self() currentProcess];
  v4 = [v3 isManaged];

  if (v4)
  {
    v5 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v7 = OUTLINED_FUNCTION_0_10();
    *(v6 + 32) = sub_1C8D11144(v7, v8, v9, v10);
    v11 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v12 = OUTLINED_FUNCTION_18_0();
    v14 = sub_1C8D13FA0(v12, v13, v5, v6);
    v28 = 0;
    if ([v14 acquireWithError_])
    {
      v15 = v28;
    }

    else
    {
      v16 = v28;
      v17 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v18 = v17;
      v19 = sub_1C9063D1C();
      v20 = sub_1C906444C();

      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_17_0();
        v27 = v1;
        v21 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v17;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1C8C9B000, v19, v20, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v21, 0xCu);
        sub_1C8D14208(v22, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v1 = v27;
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      v25 = OUTLINED_FUNCTION_125();
      v15 = v26(v25);
    }

    (v1)(v15);
    [v14 invalidate];
  }

  else
  {
    v1();
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8D0F1F4()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_31_2(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  v37 = v10;
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v11 = [objc_opt_self() currentProcess];
  v12 = [v11 isManaged];

  if (v12)
  {
    OUTLINED_FUNCTION_49_1();
    v13 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v15 = OUTLINED_FUNCTION_0_10();
    *(v14 + 32) = sub_1C8D11144(v15, v16, v17, v18);
    v19 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v20 = OUTLINED_FUNCTION_18_0();
    v22 = sub_1C8D13FA0(v20, v21, v13, v14);
    v39 = 0;
    if ([v22 acquireWithError_])
    {
      v23 = v39;
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_24_4();
    }

    else
    {
      v26 = v39;
      v27 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v28 = v27;
      v29 = sub_1C9063D1C();
      LOBYTE(v26) = sub_1C906444C();

      if (os_log_type_enabled(v29, v26))
      {
        OUTLINED_FUNCTION_17_0();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = v27;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        OUTLINED_FUNCTION_56_2(&dword_1C8C9B000, v34, v35, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@");
        sub_1C8D14208(v31, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_36_1();
      (*(v37 + 8))(v0, v38);
      OUTLINED_FUNCTION_24_4();
    }

    OUTLINED_FUNCTION_40_2();
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_21_4();
    sub_1C8D136E4();
    [v22 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_40_2();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_30_1(v25);
    sub_1C8D136E4();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0F574()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v4);
  v5 = objc_opt_self();
  v6 = OUTLINED_FUNCTION_59_0(v5);
  v7 = [v6 isManaged];

  if (v7)
  {
    OUTLINED_FUNCTION_43_2();
    v8 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v10 = OUTLINED_FUNCTION_0_10();
    *(v9 + 32) = sub_1C8D11144(v10, v11, v12, v13);
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v15 acquireWithError_])
    {
      v16 = v39;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v21 = v39;
      v22 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      OUTLINED_FUNCTION_63_1(*MEMORY[0x1E69E10F0]);
      v23 = v22;
      v24 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v26);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v32 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v32);
      }

      else
      {
      }

      v33 = OUTLINED_FUNCTION_9_5();
      v34(v33);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v36);
    v37 = OUTLINED_FUNCTION_28_1();
    sub_1C8D137C8(v37, v38);
    OUTLINED_FUNCTION_45_4();
    [v8 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_2_5();
    *(v18 - 16) = v1;
    *(v18 - 8) = v2;
    v19 = OUTLINED_FUNCTION_14_5();
    sub_1C8D137C8(v19, v20);
    OUTLINED_FUNCTION_41_2();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0F8B8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v4);
  v5 = objc_opt_self();
  v6 = OUTLINED_FUNCTION_59_0(v5);
  v7 = [v6 isManaged];

  if (v7)
  {
    OUTLINED_FUNCTION_43_2();
    v8 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v10 = OUTLINED_FUNCTION_0_10();
    *(v9 + 32) = sub_1C8D11144(v10, v11, v12, v13);
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v15 acquireWithError_])
    {
      v16 = v39;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v21 = v39;
      v22 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      OUTLINED_FUNCTION_63_1(*MEMORY[0x1E69E10F0]);
      v23 = v22;
      v24 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v26);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v32 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v32);
      }

      else
      {
      }

      v33 = OUTLINED_FUNCTION_9_5();
      v34(v33);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v36);
    v37 = OUTLINED_FUNCTION_28_1();
    sub_1C8D13918(v37, v38);
    OUTLINED_FUNCTION_45_4();
    [v8 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_2_5();
    *(v18 - 16) = v1;
    *(v18 - 8) = v2;
    v19 = OUTLINED_FUNCTION_14_5();
    sub_1C8D13918(v19, v20);
    OUTLINED_FUNCTION_41_2();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D0FC80()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  v42 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v43 = v10 - v9;
  v11 = [objc_opt_self() currentProcess];
  v12 = [v11 isManaged];

  if (v12)
  {
    v40 = v6;
    v41 = v1;
    v13 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v15 = OUTLINED_FUNCTION_0_10();
    *(v14 + 32) = sub_1C8D11144(v15, v16, v17, v18);
    v19 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v20 = OUTLINED_FUNCTION_18_0();
    v22 = sub_1C8D13FA0(v20, v21, v13, v14);
    v44 = 0;
    if ([v22 acquireWithError_])
    {
      v23 = v44;
    }

    else
    {
      v27 = v44;
      v28 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v29 = v28;
      v30 = sub_1C9063D1C();
      v31 = sub_1C906444C();

      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_17_0();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = v28;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1C8C9B000, v30, v31, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v32, 0xCu);
        sub_1C8D14208(v33, &qword_1EC312EC8, &qword_1C9071EA0);
        v36 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v36);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      (*(v42 + 8))(v43, v40);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v37);
    OUTLINED_FUNCTION_3_10();
    *(v38 - 24) = v5;
    *(v38 - 16) = v3;
    *(v38 - 8) = v41;
    sub_1C8D13A64(sub_1C8D142E0, v39);
    [v22 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_3_10();
    *(v25 - 24) = v5;
    *(v25 - 16) = v3;
    *(v25 - 8) = v1;
    sub_1C8D13A64(sub_1C8D14140, v26);
    OUTLINED_FUNCTION_41_2();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D10194()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  v41 = v9;
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v43 = v11 - v10;
  v12 = [objc_opt_self() currentProcess];
  v13 = [v12 isManaged];

  if (v13)
  {
    v40 = v7;
    v14 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v16 = OUTLINED_FUNCTION_0_10();
    *(v15 + 32) = sub_1C8D11144(v16, v17, v18, v19);
    v20 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v21 = OUTLINED_FUNCTION_18_0();
    v23 = sub_1C8D13FA0(v21, v22, v14, v15);
    v44 = 0;
    if ([v23 acquireWithError_])
    {
      v24 = v44;
      OUTLINED_FUNCTION_36_1();
      v26 = v7;
    }

    else
    {
      v29 = v44;
      v30 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v31 = v30;
      v32 = sub_1C9063D1C();
      v33 = sub_1C906444C();

      if (os_log_type_enabled(v32, v33))
      {
        OUTLINED_FUNCTION_17_0();
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v30;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1C8C9B000, v32, v33, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v34, 0xCu);
        sub_1C8D14208(v35, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_36_1();
      v25 = (*(v41 + 8))(v43, v42);
      v26 = v40;
    }

    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_5_7();
    *(v38 - 32) = v26;
    *(v38 - 24) = v5;
    *(v38 - 16) = v39;
    *(v38 - 8) = v1;
    sub_1C8D13D10();
    [v23 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_40_2();
    MEMORY[0x1EEE9AC00](v27);
    OUTLINED_FUNCTION_5_7();
    *(v28 - 32) = v7;
    *(v28 - 24) = v5;
    *(v28 - 16) = v3;
    *(v28 - 8) = v1;
    sub_1C8D13D10();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D106C8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v4);
  v5 = objc_opt_self();
  v6 = OUTLINED_FUNCTION_59_0(v5);
  v7 = [v6 isManaged];

  if (v7)
  {
    OUTLINED_FUNCTION_43_2();
    v8 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v10 = OUTLINED_FUNCTION_0_10();
    *(v9 + 32) = sub_1C8D11144(v10, v11, v12, v13);
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v15 acquireWithError_])
    {
      v16 = v39;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v21 = v39;
      v22 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      OUTLINED_FUNCTION_63_1(*MEMORY[0x1E69E10F0]);
      v23 = v22;
      v24 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v26);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v32 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v32);
      }

      else
      {
      }

      v33 = OUTLINED_FUNCTION_9_5();
      v34(v33);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v36);
    v37 = OUTLINED_FUNCTION_28_1();
    sub_1C8D13BB4(v37, v38);
    OUTLINED_FUNCTION_45_4();
    [v8 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_2_5();
    *(v18 - 16) = v1;
    *(v18 - 8) = v2;
    v19 = OUTLINED_FUNCTION_14_5();
    sub_1C8D13BB4(v19, v20);
    OUTLINED_FUNCTION_41_2();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D10A90()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_23_2(v4);
  v5 = objc_opt_self();
  v6 = OUTLINED_FUNCTION_59_0(v5);
  v7 = [v6 isManaged];

  if (v7)
  {
    OUTLINED_FUNCTION_43_2();
    v8 = [objc_opt_self() (v0 + 3448)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v10 = OUTLINED_FUNCTION_0_10();
    *(v9 + 32) = sub_1C8D11144(v10, v11, v12, v13);
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_51_1();
    if ([v15 acquireWithError_])
    {
      v16 = v39;
      OUTLINED_FUNCTION_29_3();
    }

    else
    {
      v21 = v39;
      v22 = OUTLINED_FUNCTION_60_0();

      swift_willThrow();
      OUTLINED_FUNCTION_63_1(*MEMORY[0x1E69E10F0]);
      v23 = v22;
      v24 = sub_1C9063D1C();
      sub_1C906444C();
      OUTLINED_FUNCTION_58_1();
      if (OUTLINED_FUNCTION_62_3())
      {
        OUTLINED_FUNCTION_17_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_61_2(5.7779e-34);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_53_3(v26);
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v32 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v32);
      }

      else
      {
      }

      v33 = OUTLINED_FUNCTION_9_5();
      v34(v33);
    }

    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_52_3(v36);
    v37 = OUTLINED_FUNCTION_28_1();
    sub_1C8D13E50(v37, v38);
    OUTLINED_FUNCTION_45_4();
    [v8 invalidate];
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_2_5();
    *(v18 - 16) = v1;
    *(v18 - 8) = v2;
    v19 = OUTLINED_FUNCTION_14_5();
    sub_1C8D13E50(v19, v20);
    OUTLINED_FUNCTION_41_2();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D10DD4()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_38_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  v31 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = [objc_opt_self() currentProcess];
  v9 = [v8 isManaged];

  if (v9)
  {
    v30 = v1;
    v10 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v12 = OUTLINED_FUNCTION_0_10();
    *(v11 + 32) = sub_1C8D11144(v12, v13, v14, v15);
    v16 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v17 = OUTLINED_FUNCTION_18_0();
    v19 = sub_1C8D13FA0(v17, v18, v10, v11);
    v32 = 0;
    if ([v19 acquireWithError_])
    {
      v1(v32);
    }

    else
    {
      v20 = v32;
      v21 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v22 = v21;
      v23 = sub_1C9063D1C();
      v24 = sub_1C906444C();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_17_0();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v21;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_1C8C9B000, v23, v24, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v25, 0xCu);
        sub_1C8D14208(v26, &qword_1EC312EC8, &qword_1C9071EA0);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      v29 = (*(v31 + 8))(v7, v2);
      v30(v29);
    }

    [v19 invalidate];
  }

  else
  {
    (v1)();
  }

  OUTLINED_FUNCTION_198();
}

id sub_1C8D11144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C9063EBC();

  v5 = sub_1C9063EBC();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

uint64_t sub_1C8D111D8()
{
  OUTLINED_FUNCTION_7();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = sub_1C9063D3C();
  v0[6] = v4;
  v0[7] = *(v4 - 8);
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8D112C4, 0, 0);
}

uint64_t sub_1C8D112C4()
{
  v1 = [objc_opt_self() currentProcess];
  v2 = [v1 isManaged];

  if (v2)
  {
    v3 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    OUTLINED_FUNCTION_19_0();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    v5 = OUTLINED_FUNCTION_0_10();
    *(v4 + 32) = sub_1C8D11144(v5, v6, v7, v8);
    v9 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v10 = OUTLINED_FUNCTION_18_0();
    v12 = sub_1C8D13FA0(v10, v11, v3, v4);
    v0[2] = 0;
    v0[9] = v12;
    v13 = [v12 acquireWithError_];
    v14 = v0[2];
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v19 = v14;
      v20 = sub_1C9061D7C();

      swift_willThrow();
      sub_1C906371C();
      v21 = v20;
      v22 = sub_1C9063D1C();
      v23 = sub_1C906444C();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_17_0();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_16_4();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v20;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1C8C9B000, v22, v23, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v24, 0xCu);
        sub_1C8D14208(v25, &qword_1EC312EC8, &qword_1C9071EA0);
        v28 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v28);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      else
      {
      }

      (*(v0[7] + 8))(v0[8], v0[6]);
    }

    OUTLINED_FUNCTION_15_3();
    v32 = v29;
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v18 = sub_1C8D11678;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
    v32 = v16;
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v18 = sub_1C8D11858;
  }

  v17[1] = v18;
  v30 = v0[3];

  return v32(v30);
}

uint64_t sub_1C8D11678()
{
  OUTLINED_FUNCTION_7();
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1C8D119C4;
  }

  else
  {
    v2 = sub_1C8D117B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C8D117B4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C8D11858()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C8D119C4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

void sub_1C8D11A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v22 = v21;
  v23 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  ToolDatabase.Transaction.rollBack()();
  if ((v22 & 1) != 0 && v28)
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
    if (swift_dynamicCast())
    {

      v30 = v28;
    }

    else
    {

      v31 = v28;
      sub_1C906268C();
      v32 = sub_1C906243C();

      v33 = OUTLINED_FUNCTION_125();
      v34(v33);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      v30 = v28;
    }

    sub_1C906371C();
    v35 = sub_1C9063D1C();
    v36 = sub_1C906446C();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      v42 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v42);
    }

    (*(v25 + 8))(v20, v23);
  }

LABEL_10:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8D11CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v22 = v21;
  v23 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  sub_1C906245C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  ToolDatabase.Savepoint.rollBack()();
  if ((v22 & 1) != 0 && v28)
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
    if (swift_dynamicCast())
    {

      v30 = v28;
    }

    else
    {

      v31 = v28;
      sub_1C906268C();
      v32 = sub_1C906243C();

      v33 = OUTLINED_FUNCTION_125();
      v34(v33);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      v30 = v28;
    }

    sub_1C906371C();
    v35 = sub_1C9063D1C();
    v36 = sub_1C906446C();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      v42 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v42);
    }

    (*(v25 + 8))(v20, v23);
  }

LABEL_10:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D12198(uint64_t a1, char a2, void (*a3)(void))
{
  v6 = sub_1C90626DC();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for ToolDatabase.Transaction();
  v8 = *(a1 + 16);
  v13 = a2;
  ToolDatabase.environment.getter(&v12);
  v11 = v12;
  result = sub_1C8E78764(v8, &v13, &v11);
  if (!v3)
  {
    a3();
    sub_1C8E78C94();
  }

  return result;
}

uint64_t sub_1C8D12474@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = a4;
  v18 = a3;
  v16 = a5;
  v8 = sub_1C90626DC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for ToolDatabase.Transaction();
  v12 = *(a1 + 16);
  LOBYTE(v19) = a2;
  ToolDatabase.environment.getter(&v21);
  v20 = v21;
  result = sub_1C8E78764(v12, &v19, &v20);
  if (!v5)
  {
    v14 = v16;
    v15[1] = v10;
    v18(&v19);
    sub_1C8E78C94();

    *v14 = v19;
  }

  return result;
}

uint64_t sub_1C8D12798(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr))
{
  v6 = sub_1C90626DC();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for ToolDatabase.Transaction();
  v8 = *(a1 + 16);
  LOBYTE(v11) = a2;
  ToolDatabase.environment.getter(&v13);
  v12 = v13;
  result = sub_1C8E78764(v8, &v11, &v12);
  if (!v3)
  {
    a3(&v11);
    sub_1C8E78C94();

    return v11;
  }

  return result;
}

void sub_1C8D12A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v24;
  a23 = v25;
  v34 = v26;
  v28 = v27;
  v33 = v29;
  sub_1C90626DC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33_1();
  v35 = v28;
  v32 = ToolDatabase.environment.getter(&a13);
  OUTLINED_FUNCTION_57_3(v32, &v35);
  if (!v23)
  {
    v34(v36);
    sub_1C8E78C94();

    memcpy(v33, v36, 0x61uLL);
  }

  OUTLINED_FUNCTION_198();
}

void *sub_1C8D12D8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(void *__return_ptr)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19 = a4;
  v20 = a3;
  v18 = a5;
  v8 = sub_1C90626DC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  type metadata accessor for ToolDatabase.Transaction();
  v14 = *(a1 + 16);
  LOBYTE(__dst[0]) = a2;
  ToolDatabase.environment.getter(&v24);
  v23 = v24;
  result = sub_1C8E78764(v14, __dst, &v23);
  if (!v5)
  {
    v17[0] = v13;
    v16 = v18;
    v17[1] = v10;
    v20(__src);
    sub_1C8E78C94();

    return memcpy(v16, __src, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C8D13388@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[2] = a4;
  v19 = a3;
  v20 = a5;
  v8 = sub_1C90626DC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  type metadata accessor for ToolDatabase.Transaction();
  v14 = *(a1 + 16);
  v23 = a2;
  ToolDatabase.environment.getter(&v22);
  v21 = v22;
  result = sub_1C8E78764(v14, &v23, &v21);
  if (!v5)
  {
    v18[0] = v13;
    v18[1] = v10;
    v19(result, v16, v17);
    sub_1C8E78C94();
  }

  return result;
}

void sub_1C8D136E4()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_35_1(v3, v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_47_1(v6);
  v7 = OUTLINED_FUNCTION_55_0();
  v8(v7);
  v0;
  sub_1C9063DFC();
  v9 = OUTLINED_FUNCTION_46_1();
  v10(v9);
  if (v0)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_39_2(v11);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8D137C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9063DEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3, v5);
  v8;
  LOBYTE(v8) = sub_1C9063DFC();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    return sub_1C90644BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D13918(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9063DEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3, v5);
  v8;
  LOBYTE(v8) = sub_1C9063DFC();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    return sub_1C90644BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D13A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9063DEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8018], v4, v6);
  v9;
  LOBYTE(v9) = sub_1C9063DFC();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    result = sub_1C90644BC();
    if (!v3)
    {
      return v11[1];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8D13BB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9063DEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3, v5);
  v8;
  LOBYTE(v8) = sub_1C9063DFC();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EE8, &unk_1C9091C10);
    return sub_1C90644BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C8D13D10()
{
  OUTLINED_FUNCTION_196();
  v1 = sub_1C9063DEC();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = *(v0 + 24);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x1E69E8018], v1);
  v8;
  LOBYTE(v8) = sub_1C9063DFC();
  (*(v3 + 8))(v7, v1);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_125();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    sub_1C90644BC();
    OUTLINED_FUNCTION_198();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8D13E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C9063DEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3, v5);
  v8;
  LOBYTE(v8) = sub_1C9063DFC();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_1C90620BC();
    return sub_1C90644BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C8D13FA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1C9063EBC();

  sub_1C8CB78AC(0, &qword_1EC312ED0, 0x1E69C7550);
  v7 = sub_1C906418C();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

unint64_t sub_1C8D14048()
{
  result = qword_1EC312ED8;
  if (!qword_1EC312ED8)
  {
    sub_1C90626DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312ED8);
  }

  return result;
}

uint64_t sub_1C8D140A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C8D12798(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C8D14208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 88) = a2;

  return sub_1C9063DEC();
}

void OUTLINED_FUNCTION_52_3(uint64_t a1@<X8>)
{
  v3 = *(v2 - 136);
  *(a1 - 16) = v1;
  *(a1 - 8) = v3;
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_56_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1, unsigned __int8 *a2)
{

  return sub_1C8E78764(v2, a2, (v3 - 66));
}

id OUTLINED_FUNCTION_61_2(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t sub_1C8D1443C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_1C8D14508(char a1)
{
  if (a1)
  {
    return 0x617A696C61636F6CLL;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_1C8D14548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313010, &qword_1C906A7E0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D17424(v5, v6, v7);
  v8 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v42;
  LOBYTE(v23[0]) = 0;
  sub_1C8D17478(v8, v9, v10);
  OUTLINED_FUNCTION_4_5();
  v12 = sub_1C9064A6C();
  v13 = v27;
  v19 = v24;
  v20 = v26;
  v21 = v25;
  v22 = v28;
  v33 = 1;
  sub_1C8D174CC(v12, v14, v15);
  OUTLINED_FUNCTION_4_5();
  sub_1C9064A6C();
  v16 = OUTLINED_FUNCTION_114();
  v17(v16);
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v23[0] = v19;
  v23[1] = v21;
  v23[2] = v20;
  v23[3] = v13;
  v23[4] = v22;
  *&v23[9] = v36;
  *&v23[11] = v37;
  *&v23[5] = v34;
  *&v23[7] = v35;
  memcpy(v11, v23, 0x68uLL);
  sub_1C8D17520(v23, &v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = v19;
  v25 = v21;
  v26 = v20;
  v27 = v13;
  v28 = v22;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  return sub_1C8D17558(&v24);
}

uint64_t sub_1C8D147D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D1443C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D14800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D17424(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D1483C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D17424(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D14890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D168BC(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8D148F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C90C9760 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90C9780 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F696372656F63 && a2 == 0xE900000000000073;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000012 && 0x80000001C90C97A0 == a2)
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

unint64_t sub_1C8D14B4C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E6F696372656F63;
      break;
    case 5:
      result = 0x72506D6574737973;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D14C34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F28, &qword_1C906A358);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v41 = a1;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D1676C(v6, v7, v8);
  v9 = sub_1C9064DEC();
  if (v2)
  {
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_15_4();
    *&v60[0] = v48;
    *(&v60[0] + 1) = v52;
    v60[1] = v54;
    *&v60[2] = v56;
    *(&v60[2] + 1) = v50;
    *&v60[3] = v46;
    *(&v60[3] + 1) = v44;
    *&v60[4] = v42;
    sub_1C8D16D78(v60, &qword_1EC312F38, &qword_1C906A360);

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    return sub_1C8D16D78(v61, &qword_1EC312F40, &qword_1C906A368);
  }

  else
  {
    v40 = a2;
    v112 = 0;
    sub_1C8D16814(v9, v10, v11);
    v12 = sub_1C9064A6C();
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = v105;
    v111 = 1;
    sub_1C8D16868(v12, v13, v14);
    OUTLINED_FUNCTION_4_5();
    sub_1C90649EC();
    v53 = v95;
    v55 = v96;
    v57 = v97;
    v49 = v94;
    v51 = v98;
    v45 = v100;
    v47 = v99;
    v43 = v101;
    memset(v92, 0, sizeof(v92));
    v93 = 0;
    sub_1C8D16D78(v92, &qword_1EC312F38, &qword_1C906A360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F50, &qword_1C906A370);
    sub_1C8D169BC(&qword_1EC312F58, &qword_1EC312F50, &qword_1C906A370, sub_1C8D168BC);
    sub_1C90649EC();
    v39 = v61[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F68, &qword_1C906A378);
    v15 = sub_1C8D169BC(&qword_1EC312F70, &qword_1EC312F68, &qword_1C906A378, sub_1C8D16910);
    OUTLINED_FUNCTION_1_10(v15);
    v38 = v61[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F80, &qword_1C906A380);
    v16 = sub_1C8D169BC(&qword_1EC312F88, &qword_1EC312F80, &qword_1C906A380, sub_1C8D16968);
    OUTLINED_FUNCTION_1_10(v16);
    v17 = v61[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312F98, &qword_1C906A388);
    LOBYTE(v60[0]) = 5;
    v18 = sub_1C8D169BC(&qword_1EC312FA0, &qword_1EC312F98, &qword_1C906A388, sub_1C8D16A38);
    v19 = OUTLINED_FUNCTION_1_10(v18);
    v20 = v61[0];
    v110 = 6;
    sub_1C8D16A8C(v19, v21, v22);
    OUTLINED_FUNCTION_4_5();
    sub_1C90649EC();
    v23 = OUTLINED_FUNCTION_0_2();
    v24(v23);
    v25 = v83;
    v26 = v84;
    v27 = v86;
    v34 = v86;
    v35 = v83;
    v36 = v88;
    v37 = v85;
    v28 = v89;
    v32 = v87;
    v33 = v89;
    v30 = v91;
    v31 = v90;
    memset(v58, 0, sizeof(v58));
    v59 = 0;
    sub_1C8D16D78(v58, &qword_1EC312F40, &qword_1C906A368);
    v60[0] = v106;
    v60[1] = v107;
    v60[2] = v108;
    v60[3] = v109;
    *&v60[4] = v49;
    *(&v60[4] + 1) = v53;
    v60[5] = v55;
    *&v60[6] = v57;
    *(&v60[6] + 1) = v51;
    *&v60[7] = v47;
    *(&v60[7] + 1) = v45;
    *&v60[8] = v43;
    *(&v60[8] + 1) = v39;
    *&v60[9] = v38;
    *(&v60[9] + 1) = v17;
    *&v60[10] = v20;
    *(&v60[10] + 1) = v25;
    *&v60[11] = v26;
    *(&v60[11] + 1) = v37;
    *&v60[12] = v27;
    *(&v60[12] + 1) = v32;
    *&v60[13] = v36;
    *(&v60[13] + 1) = v28;
    *&v60[14] = v31;
    *(&v60[14] + 1) = v30;
    memcpy(v40, v60, 0xF0uLL);
    sub_1C8D16AE0(v60, v61);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_10_4();
    v62 = v49;
    v63 = v53;
    v64 = v55;
    v65 = v57;
    v66 = v51;
    v67 = v47;
    v68 = v45;
    v69 = v43;
    v70 = v39;
    v71 = v38;
    v72 = v17;
    v73 = v20;
    v74 = v35;
    v75 = v26;
    v76 = v37;
    v77 = v34;
    v78 = v32;
    v79 = v36;
    v80 = v33;
    v81 = v31;
    v82 = v30;
    return sub_1C8D16B18(v61);
  }
}

uint64_t sub_1C8D15330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D148F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D15358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D14B44();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D15380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D1676C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D153BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D1676C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D15410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D16B48(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8D15484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v181 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v181 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v195 = (v181 - v12);
  type metadata accessor for EnumerationCaseRecord(0);
  OUTLINED_FUNCTION_11();
  v212 = v13;
  v213 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v181 - v18;
  type metadata accessor for EnumerationCaseDefinition(0);
  OUTLINED_FUNCTION_11();
  v208 = v21;
  v209 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v196 = v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v210 = v181 - v24;
  v25 = memcpy(v220, a1, 0xF0uLL);
  v28 = v220[2];
  switch(LOBYTE(v220[3]))
  {
    case 1:
      if (v220[2] >> 61)
      {
        goto LABEL_59;
      }

      sub_1C8D16B18(v220);
      LOBYTE(v28) = *(v28 + 16);

      v109 = 0;
      LOBYTE(v103) = 0;
      v108 = 0;
      v107 = 0;
      goto LABEL_110;
    case 2:
      if (!v220[9])
      {
        goto LABEL_73;
      }

      v110 = v220[17];
      if (!v220[17])
      {
        v154 = sub_1C8D16B9C(v25, v26, v27);
        OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v154);
        v127 = 1;
        goto LABEL_78;
      }

      v111 = v220[19];
      if (!v220[19])
      {
        v155 = sub_1C8D16B9C(v25, v26, v27);
        OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v155);
        v127 = 3;
        goto LABEL_78;
      }

      LODWORD(v207) = LOBYTE(v220[6]);
      v184 = v220[7];
      v185 = v2;
      v208 = v220[5];
      v209 = v220[12];
      v7 = v220[13];
      v183 = v220[14];
      a1 = v220[15];
      v186 = v220[16];
      v187 = v220[15];
      v112 = *(v220[17] + 16);
      v210 = v220[13];
      v189 = a2;
      v190 = v220[2];
      v212 = v220[19];
      if (v112)
      {
        sub_1C8CC0620(&v220[8], &v216, &qword_1EC312F38, &qword_1C906A360);
        *&v216 = MEMORY[0x1E69E7CC0];

        sub_1C8D09884(0, v112, 0);
        v113 = v110;
        v10 = v216;
        v211 = v113;
        v114 = (v113 + 64);
        do
        {
          v115 = *(v114 - 2);
          v116 = *(v114 - 1);
          v117 = *v114;
          v118 = v114[8];
          v213 = v114[7];
          v214 = v115;
          *&v216 = v10;
          v119 = v10;
          v120 = *(v10 + 2);
          v121 = *(v119 + 3);

          if (v120 >= v121 >> 1)
          {
            sub_1C8D09884((v121 > 1), v120 + 1, 1);
            v119 = v216;
          }

          *(v119 + 2) = v120 + 1;
          v122 = &v119[40 * v120];
          v123 = v213;
          *(v122 + 4) = v214;
          *(v122 + 5) = v116;
          *(v122 + 6) = v123;
          *(v122 + 7) = v118;
          *(v122 + 8) = v117;
          v114 += 13;
          --v112;
          v10 = v119;
        }

        while (v112);

        a2 = v189;
        a1 = v187;
        v7 = v210;
        v111 = v212;
      }

      else
      {
        sub_1C8CC0620(&v220[8], &v216, &qword_1EC312F38, &qword_1C906A360);

        v10 = MEMORY[0x1E69E7CC0];
      }

      v158 = *(v111 + 2);
      v211 = v10;
      if (v158)
      {
        *&v216 = MEMORY[0x1E69E7CC0];
        sub_1C8D09834(0, v158, 0);
        v159 = 0;
        v160 = v216;
        v161 = *(v216 + 16);
        v162 = 16 * v161;
        do
        {
          v163 = *&v212[v159 + 12];
          v164 = v212[v159 + 14];
          *&v216 = v160;
          v165 = *(v160 + 24);

          if (v161 >= v165 >> 1)
          {
            sub_1C8D09834((v165 > 1), v161 + 1, 1);
            v160 = v216;
          }

          *(v160 + 16) = v161 + 1;
          v166 = v160 + v162;
          *(v166 + 32) = v163;
          *(v166 + 40) = v164;
          v162 += 16;
          v159 += 8;
          ++v161;
          --v158;
        }

        while (v158);
        v182 = v160;

        a2 = v189;
        a1 = v187;
        v7 = v210;
        v10 = v211;
      }

      else
      {

        v182 = MEMORY[0x1E69E7CC0];
      }

      sub_1C8D16D78(&v220[8], &qword_1EC312F38, &qword_1C906A360);
      v167 = v208;
      if (v207)
      {
        v167 = 0;
      }

      v168 = v220[20];
      v214 = v167;
      if (v220[20])
      {
        v169 = *(v220[20] + 16);
        if (v169)
        {
          v221 = MEMORY[0x1E69E7CC0];

          OUTLINED_FUNCTION_14_6();
          a1 = v187;
          v170 = v221;
          v171 = v168 + 88;
          for (i = v169 - 1; ; --i)
          {
            OUTLINED_FUNCTION_11_2(*v171, *(v171 + 16), *(v171 + 32), *(v171 + 41));
            sub_1C8CC0620(&v216, v215, &qword_1EC312FD8, &qword_1C906B500);
            v173 = v170;
            v221 = v170;
            v175 = *(v170 + 2);
            v174 = *(v170 + 3);
            if (v175 >= v174 >> 1)
            {
              sub_1C8D098A4(v174 > 1, v175 + 1, 1);
              a1 = v187;
              v173 = v221;
            }

            *(v173 + 2) = v175 + 1;
            v170 = v173;
            v176 = &v173[64 * v175];
            v177 = v216;
            v178 = v217;
            v179 = v218[0];
            *(v176 + 73) = *(v218 + 9);
            *(v176 + 3) = v178;
            *(v176 + 4) = v179;
            *(v176 + 2) = v177;
            if (!i)
            {
              break;
            }

            v171 += 120;
          }

          result = sub_1C8D16B18(v220);
          v180 = v184;
          a2 = v189;
          v16 = v170;
          v7 = v210;
          v10 = v211;
        }

        else
        {
          v180 = v184;

          result = sub_1C8D16B18(v220);
          v16 = MEMORY[0x1E69E7CC0];
          a2 = v189;
        }
      }

      else
      {
        v180 = v184;

        result = sub_1C8D16B18(v220);
        v16 = MEMORY[0x1E69E7CC0];
      }

      LOBYTE(v28) = v190;
      v107 = v190 & 0xFFFFFFFFFFFFFF00;
      if (v180)
      {
        v103 = v180;
      }

      else
      {
        v103 = MEMORY[0x1E69E7CC0];
      }

      v108 = v103 & 0xFFFFFFFFFFFFFF00;
      v109 = 1;
      v101 = v182;
      v106 = v183;
      v105 = v186;
      v104 = v209;
      v102 = v214;
      goto LABEL_110;
    case 3:
    case 4:
    case 5:
    case 8:
      if (!v220[9])
      {
        v89 = sub_1C8D16B18(v220);
        v92 = sub_1C8D16B9C(v89, v90, v91);
        OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v92);
        *v93 = 0;
        return swift_willThrow();
      }

      if (!v220[18])
      {
        v129 = sub_1C8D16B18(v220);
        v132 = sub_1C8D16B9C(v129, v130, v131);
        OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v132);
        *v133 = 2;
        return swift_willThrow();
      }

      v188 = LOBYTE(v220[3]);
      v194 = v19;
      v184 = v220[7];
      v185 = v2;
      a1 = v220[13];
      v186 = v220[14];
      v181[0] = v220[15];
      v182 = v220[16];
      v183 = v220[12];
      v29 = *(v220[18] + 16);
      if (v29)
      {
        v197 = v10;
        v193 = v7;
        v187 = v220[13];
        v189 = a2;
        v30 = v220[18];
        sub_1C8CC0620(&v220[8], &v216, &qword_1EC312F38, &qword_1C906A360);
        *&v216 = MEMORY[0x1E69E7CC0];
        v190 = v28;

        v214 = v29;
        sub_1C8CB2580(0, v29, 0);
        v32 = *(v213 + 80);
        v181[1] = v30;
        v33 = v30 + ((v32 + 32) & ~v32);
        v10 = v216;
        v198 = *(v213 + 72);
        v34 = v194;
        v35 = v196;
        do
        {
          sub_1C8D16BF0(v33, v34, v31);
          sub_1C8D16BF0(v34, v16, v36);
          v37 = *(v16 + 5);
          *v35 = *(v16 + 4);
          v35[1] = v37;
          if (*(v16 + 7))
          {
            v213 = *(v16 + 7);
            v211 = v10;
            v38 = *(v16 + 6);
            v39 = *(v16 + 8);
            v40 = *(v16 + 9);
            v41 = v16[80];
            v42 = v41 & 1;
            if (v41 == 255)
            {
              v43 = 0;
            }

            else
            {
              v43 = *(v16 + 8);
            }

            v206 = v43;
            v207 = v38;
            if (v41 == 255)
            {
              v44 = 0;
            }

            else
            {
              v44 = v40;
            }

            v205 = v44;
            if (v41 == 255)
            {
              v42 = -1;
            }

            v204 = v42;
            v45 = *(v16 + 11);
            v46 = *(v16 + 12);
            v47 = v16[104];
            v48 = v47 & 1;
            v199 = v46;
            v200 = v45;
            if (v47 == 255)
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

            if (v47 == 255)
            {
              v50 = 0;
            }

            else
            {
              v50 = v46;
            }

            v202 = v50;
            v203 = v49;
            if (v47 == 255)
            {
              v48 = -1;
            }

            v201 = v48;
            v51 = v193;
            sub_1C8CC0620(&v16[v212[10]], v193, &qword_1EC312FC0, &unk_1C906A390);
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FE0, &unk_1C906A3B0);
            if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
            {

              sub_1C8CD3AA0(v39, v40, v41, v53, v54);
              sub_1C8CD3AA0(v200, v199, v47, v55, v56);
              sub_1C8D16D78(v51, &qword_1EC312FC0, &unk_1C906A390);
              v57 = 1;
            }

            else
            {
              v191 = v40;
              v192 = v39;
              sub_1C8CC0620(v51, v197, &qword_1EC312530, &unk_1C9090E80);

              sub_1C8CD3AA0(v192, v191, v41, v61, v62);
              sub_1C8CD3AA0(v200, v199, v47, v63, v64);
              sub_1C8D16D78(v51, &qword_1EC312FE0, &unk_1C906A3B0);
              v57 = 0;
            }

            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
            v66 = v197;
            __swift_storeEnumTagSinglePayload(v197, v57, 1, v65);
            v67 = v212[12];
            v68 = &v16[v212[11]];
            v69 = *v68;
            v70 = v68[1];
            v71 = v68[2];
            v72 = v68[3];
            if (v72)
            {
              v73 = *v68;
            }

            else
            {
              v73 = 0;
            }

            if (v72)
            {
              v74 = v68[1];
            }

            else
            {
              v74 = 0;
            }

            v199 = v74;
            v200 = v73;
            if (v72)
            {
              v75 = v71;
            }

            else
            {
              v75 = 0;
            }

            v76 = *&v16[v67];
            sub_1C8CE9E30(v69, v70, v71, v72);

            sub_1C8D16C54(v16, v77);
            v78 = v195;
            v79 = v213;
            *v195 = v207;
            *(v78 + 8) = v79;
            v80 = v205;
            *(v78 + 16) = v206;
            *(v78 + 24) = v80;
            *(v78 + 32) = v204;
            v81 = v202;
            *(v78 + 40) = v203;
            *(v78 + 48) = v81;
            *(v78 + 56) = v201;
            v82 = type metadata accessor for DisplayRepresentation(0);
            sub_1C8CB21F4(v66, v78 + v82[7], &qword_1EC312528, &unk_1C9066960);
            v83 = (v78 + v82[8]);
            v84 = v199;
            *v83 = v200;
            v83[1] = v84;
            v83[2] = v75;
            v83[3] = v72;
            *(v78 + v82[9]) = v76;
            __swift_storeEnumTagSinglePayload(v78, 0, 1, v82);
            v35 = v196;
            sub_1C8CB21F4(v78, &v196[*(v209 + 5)], &qword_1EC312788, &unk_1C906A3A0);
            v10 = v211;
            v34 = v194;
          }

          else
          {

            sub_1C8D16C54(v16, v58);
            v59 = *(v209 + 5);
            v60 = type metadata accessor for DisplayRepresentation(0);
            __swift_storeEnumTagSinglePayload(v35 + v59, 1, 1, v60);
          }

          v85 = v210;
          sub_1C8D16CB0(v35, v210);
          sub_1C8D16C54(v34, v86);
          *&v216 = v10;
          v88 = *(v10 + 2);
          v87 = *(v10 + 3);
          if (v88 >= v87 >> 1)
          {
            sub_1C8CB2580(v87 > 1, v88 + 1, 1);
            v85 = v210;
            v10 = v216;
          }

          *(v10 + 2) = v88 + 1;
          sub_1C8D16CB0(v85, &v10[((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v88]);
          v33 += v198;
          --v214;
        }

        while (v214);

        a2 = v189;
        v28 = v190;
        a1 = v187;
      }

      else
      {
        sub_1C8CC0620(&v220[8], &v216, &qword_1EC312F38, &qword_1C906A360);

        v10 = MEMORY[0x1E69E7CC0];
      }

      if (v188 - 3) < 6 && ((0x27u >> (v188 - 3)))
      {
        v190 = v28;
        v134 = v220[20];
        v214 = byte_1C906A8F8[8 * (v188 - 3)];
        if (v220[20])
        {
          v189 = a2;
          v135 = *(v220[20] + 16);
          if (v135)
          {
            v136 = v10;
            v221 = MEMORY[0x1E69E7CC0];
            v187 = a1;
            OUTLINED_FUNCTION_14_6();
            a1 = v187;
            v137 = v134 + 88;
            do
            {
              OUTLINED_FUNCTION_11_2(*v137, *(v137 + 16), *(v137 + 32), *(v137 + 41));
              v139 = v138;
              sub_1C8CC0620(&v216, v215, &qword_1EC312FD8, &qword_1C906B500);
              v140 = v139;
              v221 = v139;
              v142 = *(v139 + 2);
              v141 = *(v139 + 3);
              if (v142 >= v141 >> 1)
              {
                sub_1C8D098A4(v141 > 1, v142 + 1, 1);
                a1 = v187;
                v140 = v221;
              }

              *(v140 + 2) = v142 + 1;
              v143 = &v140[64 * v142];
              v144 = v216;
              v145 = v217;
              v146 = v218[0];
              *(v143 + 73) = *(v218 + 9);
              *(v143 + 3) = v145;
              *(v143 + 4) = v146;
              *(v143 + 2) = v144;
              v137 += 120;
              --v135;
            }

            while (v135);
            v209 = v140;
            a2 = v189;
            v10 = v136;
          }

          else
          {
            v209 = MEMORY[0x1E69E7CC0];
            a2 = v189;
          }
        }

        else
        {
          v209 = MEMORY[0x1E69E7CC0];
        }

        v28 = v190;
        if (v184)
        {
          v156 = v184;
        }

        else
        {
          v156 = MEMORY[0x1E69E7CC0];
        }

        sub_1C8D16B18(v220);
        v16 = v181[0];

        v157 = v182;

        result = sub_1C8D16D78(&v220[8], &qword_1EC312F38, &qword_1C906A360);
        v101 = v157;
        v108 = 0;
        v107 = v28 & 0xFFFFFFFFFFFFFF00;
        v109 = 2;
        v7 = v156;
        v106 = v183;
        v105 = v186;
        v104 = v209;
        LOBYTE(v103) = v214;
LABEL_110:
        *a2 = v107 | v28;
        *(a2 + 8) = v10;
        *(a2 + 16) = v108 | v103;
        *(a2 + 24) = v104;
        *(a2 + 32) = v7;
        *(a2 + 40) = v106;
        *(a2 + 48) = a1;
        *(a2 + 56) = v105;
        *(a2 + 64) = v16;
        *(a2 + 72) = v101;
        *(a2 + 80) = 0;
        *(a2 + 88) = v102;
        *(a2 + 96) = v109;
      }

      else
      {

        v147 = sub_1C8D16D78(&v220[8], &qword_1EC312F38, &qword_1C906A360);
        v150 = sub_1C8D16D14(v147, v148, v149);
        OUTLINED_FUNCTION_6_3(&_s5ErrorON, v150);
        swift_willThrow();

        return sub_1C8D16B18(v220);
      }

      return result;
    case 6:
      if (v220[22])
      {
        v189 = a2;
        v190 = v220[2];
        v216 = *&v220[21];
        v94 = *(a1 + 200);
        v217 = *(a1 + 184);
        v218[0] = v94;
        v218[1] = *(a1 + 216);
        v219 = *(a1 + 232);
        OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_12_3();

        sub_1C8D16530(&v216, v215, v95);
        v96 = v215[1];
        v211 = v215[0];
        v98 = v215[2];
        v97 = v215[3];
        v99 = v215[4];
        a1 = v215[5];
        v28 = v215[6];
        sub_1C8D16B18(v220);
        a2 = v189;
        result = sub_1C8D16D78(&v220[21], &qword_1EC312F40, &qword_1C906A368);
        LOBYTE(v103) = v96;
        v104 = v98;
        v105 = v28;
        v106 = v99;
        v7 = v97;
        LOBYTE(v28) = v190;
        v107 = v190 & 0xFFFFFFFFFFFFFF00;
        v108 = v96 & 0xFFFFFFFFFFFFFF00;
        v109 = 3;
        v16 = MEMORY[0x1E69E7CC0];
        v10 = v211;
        goto LABEL_110;
      }

      v153 = sub_1C8D16B9C(v25, v26, v27);
      OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v153);
      v127 = 5;
      goto LABEL_78;
    case 7:
      if (v220[2] >> 61 == 4)
      {
        if (v220[9])
        {
          a1 = v220[16];
          v16 = v220[15];
          v210 = v220[14];
          v124 = v220[13];
          v214 = v220[12];
          v28 = *((v220[2] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v10 = *((v220[2] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

          sub_1C8CC0620(&v220[8], &v216, &qword_1EC312F38, &qword_1C906A360);
          sub_1C8D16B18(v220);

          v7 = v210;
          result = sub_1C8D16D78(&v220[8], &qword_1EC312F38, &qword_1C906A360);
          LOBYTE(v103) = v214;
          v104 = v124;
          v106 = v16;
          v107 = v28 & 0xFFFFFFFFFFFFFF00;
          v108 = v214 & 0xFFFFFFFFFFFFFF00;
          v109 = 4;
          goto LABEL_110;
        }

LABEL_73:
        v151 = sub_1C8D16B9C(v25, v26, v27);
        OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v151);
        *v152 = 0;
      }

      else
      {
LABEL_59:
        v128 = sub_1C8D16B9C(v25, v26, v27);
        OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v128);
        v127 = 7;
LABEL_78:
        *v126 = v127;
      }

      swift_willThrow();
      return sub_1C8D16B18(v220);
    default:
      v125 = sub_1C8D16B9C(v25, v26, v27);
      OUTLINED_FUNCTION_6_3(&unk_1F489D5B0, v125);
      v127 = 6;
      goto LABEL_78;
  }
}

ToolKit::EntityDefinition::RuntimeFlags __swiftcall EntityDefinition.RuntimeFlags.init(rawValue:)(Swift::Int_optional rawValue)
{
  if (rawValue.is_nil)
  {
    value = 0;
  }

  else
  {
    value = rawValue.value;
  }

  *v1 = value;
  return rawValue.value;
}

uint64_t sub_1C8D16530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X4>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v20 = *(a1 + 24);
  v19 = *(a1 + 25);
  v18 = *(a1 + 26);
  v17 = *(a1 + 27);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0xF000000000000007;
  }

  v16 = *(a1 + 28);
  if (v7)
  {
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = *(a1 + 56);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  v14 = v8;
  v15 = *(a1 + 29);
  sub_1C8D16DD0(v6, v7, *(a1 + 56), *(a1 + 64), a3);

  sub_1C8CD1784(v5);

  sub_1C8CD0FB0(v5);
  result = sub_1C8D16E14(v6, v7);
  *a2 = v4;
  *(a2 + 8) = v20;
  *(a2 + 9) = v19;
  *(a2 + 10) = v18;
  *(a2 + 11) = v17;
  *(a2 + 12) = v16;
  *(a2 + 13) = v15;
  *(a2 + 16) = v9;
  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0A21DatabaseProtobufValueVyAA0E15SearchPredicateV8TemplateVGSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C8D166A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1C8D166E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8D1676C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312F30;
  if (!qword_1EC312F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F30);
  }

  return result;
}

unint64_t sub_1C8D16814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66AF8;
  if (!qword_1EDA66AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AF8);
  }

  return result;
}

unint64_t sub_1C8D16868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312F48;
  if (!qword_1EC312F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F48);
  }

  return result;
}

unint64_t sub_1C8D168BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312F60;
  if (!qword_1EC312F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F60);
  }

  return result;
}

unint64_t sub_1C8D16910(__n128 a1)
{
  result = qword_1EC312F78;
  if (!qword_1EC312F78)
  {
    type metadata accessor for EnumerationCaseRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F78);
  }

  return result;
}

unint64_t sub_1C8D16968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312F90;
  if (!qword_1EC312F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312F90);
  }

  return result;
}

uint64_t sub_1C8D169BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1C8D16A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FA8;
  if (!qword_1EC312FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FA8);
  }

  return result;
}

unint64_t sub_1C8D16A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FB0;
  if (!qword_1EC312FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FB0);
  }

  return result;
}

unint64_t sub_1C8D16B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FB8;
  if (!qword_1EC312FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FB8);
  }

  return result;
}

unint64_t sub_1C8D16B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FC8;
  if (!qword_1EC312FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FC8);
  }

  return result;
}

uint64_t sub_1C8D16BF0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for EnumerationCaseRecord(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C8D16C54(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for EnumerationCaseRecord(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C8D16CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnumerationCaseDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8D16D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FD0;
  if (!qword_1EC312FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FD0);
  }

  return result;
}

uint64_t sub_1C8D16D68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  else
  {
    return sub_1C8CE9144(a1, a2);
  }
}

uint64_t sub_1C8D16D78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C8D16DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1C8D16E14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

_BYTE *_s5ErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for EntityDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C8D16F8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchedType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FetchedType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8D171C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C8D17208(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C8D17270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FE8;
  if (!qword_1EC312FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FE8);
  }

  return result;
}

unint64_t sub_1C8D172C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FF0;
  if (!qword_1EC312FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FF0);
  }

  return result;
}

unint64_t sub_1C8D17320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC312FF8;
  if (!qword_1EC312FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC312FF8);
  }

  return result;
}

unint64_t sub_1C8D17378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313000;
  if (!qword_1EC313000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313000);
  }

  return result;
}

unint64_t sub_1C8D173D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313008;
  if (!qword_1EC313008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313008);
  }

  return result;
}

unint64_t sub_1C8D17424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313018;
  if (!qword_1EC313018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313018);
  }

  return result;
}

unint64_t sub_1C8D17478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313020;
  if (!qword_1EC313020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313020);
  }

  return result;
}

unint64_t sub_1C8D174CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313028;
  if (!qword_1EC313028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedType.FetchedEntityProperty.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D17668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313030;
  if (!qword_1EC313030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313030);
  }

  return result;
}

unint64_t sub_1C8D176C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313038;
  if (!qword_1EC313038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313038);
  }

  return result;
}

unint64_t sub_1C8D17718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313040;
  if (!qword_1EC313040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313040);
  }

  return result;
}

uint64_t sub_1C8D17790()
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_1EDA6D908);
  }

  v0 = sub_1C9061EBC();

  return __swift_project_value_buffer(v0, qword_1EDA6D910);
}

uint64_t ToolDatabase.Pager.CleanupSchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void *sub_1C8D17878()
{
  v0 = sub_1C9061EBC();
  __swift_allocate_value_buffer(v0, qword_1EDA6D910);
  v1 = OUTLINED_FUNCTION_94();
  v3 = __swift_project_value_buffer(v1, v2);
  return sub_1C8D178C0(v3);
}

void *sub_1C8D178C0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C9061D9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1C9061EBC();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v16 = result;
    sub_1C9063EEC();

    v32 = v8;
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    v17 = *(v2 + 104);
    v18 = v1;
    v17(v4, *MEMORY[0x1E6968F70], v1);
    v33 = v14;
    sub_1C9061E8C();
    v38 = 0x7972617262694CLL;
    v39 = 0xE700000000000000;
    v30 = *MEMORY[0x1E6968F58];
    v19 = v30;
    v20 = (v17)(v4, v30, v1);
    v31 = v17;
    sub_1C8CBAEDC(v20, v21, v22);
    v23 = v35;
    sub_1C9061E9C();
    v24 = *(v2 + 8);
    v24(v4, v1);
    v29 = v24;
    v38 = 0x74756374726F6853;
    v39 = 0xE900000000000073;
    v17(v4, v19, v1);
    v25 = v34;
    sub_1C9061E9C();
    v24(v4, v1);
    v26 = v32;
    v27 = *(v36 + 8);
    v27(v23, v32);
    v38 = 0x74694B6C6F6F54;
    v39 = 0xE700000000000000;
    v31(v4, v30, v18);
    sub_1C9061E9C();
    v29(v4, v18);
    v27(v25, v26);
    return (v27)(v33, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ToolDatabase.Pager.dataVaultPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_1EDA6D908);
  }

  v2 = sub_1C9061EBC();
  v3 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ToolDatabase.Pager.dataVaultPath.setter(uint64_t a1)
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_1EDA6D908);
  }

  v2 = sub_1C9061EBC();
  v3 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_94();
  return v5(v4);
}

uint64_t (*static ToolDatabase.Pager.dataVaultPath.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_1EDA6D908);
  }

  v1 = sub_1C9061EBC();
  __swift_project_value_buffer(v1, qword_1EDA6D910);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C8D17EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C8D17790();
  swift_beginAccess();
  v3 = sub_1C9061EBC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C8D17F6C(uint64_t a1)
{
  v2 = sub_1C8D17790();
  swift_beginAccess();
  v3 = sub_1C9061EBC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ToolDatabase.Pager.cleanupSchedule.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDatabase.Pager(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

void ToolDatabase.Pager.sortedExistingFiles.getter()
{
  OUTLINED_FUNCTION_196();
  v103 = v0;
  v105[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313048, &qword_1C906A960);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  v95 = v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313050, &qword_1C906A968);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v96 = type metadata accessor for ToolDatabase.DatabaseFile(v11);
  OUTLINED_FUNCTION_11();
  v87 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  v100 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v93 = v83 - v17;
  OUTLINED_FUNCTION_111();
  v18 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  v104 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v102 = v83 - v25;
  v92 = objc_opt_self();
  v26 = [v92 defaultManager];
  v27 = sub_1C9061DDC();
  v105[0] = 0;
  v28 = [v26 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:0 options:0 error:v105];

  v29 = v105[0];
  if (!v28)
  {
    v81 = v105[0];
    sub_1C9061D7C();

    swift_willThrow();
LABEL_33:
    OUTLINED_FUNCTION_198();
    return;
  }

  v86 = v1;
  v99 = v18;
  v30 = sub_1C906419C();
  v31 = v29;

  v32 = *(v30 + 16);
  if (v32)
  {
    v34 = *(v20 + 16);
    v33 = v20 + 16;
    v97 = v34;
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v83[1] = v30;
    v36 = v30 + v35;
    v85 = (v7 + 32);
    v84 = (v7 + 8);
    v37 = MEMORY[0x1E69E7CC0];
    v98 = v33;
    v89 = *(v33 + 56);
    v90 = v33 - 8;
    v88 = (v33 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v96;
    v40 = v99;
    v39 = v100;
    v91 = v2;
    while (1)
    {
      v101 = v37;
      v41 = v102;
      v42 = v97;
      v97(v102, v36, v40);
      v42(v104, v41, v40);
      v43 = *(v38 + 32);
      v44 = [v92 defaultManager];
      *(v39 + v43) = v44;
      sub_1C9061E5C();
      if (qword_1EDA6DA10 != -1)
      {
        OUTLINED_FUNCTION_14_7();
        swift_once();
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
      __swift_project_value_buffer(v45, qword_1EDA6DA18);
      v46 = v95;
      v47 = v103;
      sub_1C906332C();
      if (v47)
      {

        v48 = OUTLINED_FUNCTION_23_3();
        v40 = v99;
        (v45)(v48, v99);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v94);
        v103 = 0;
      }

      else
      {
        v103 = 0;

        v52 = OUTLINED_FUNCTION_19_1();
        v53 = v94;
        OUTLINED_FUNCTION_108_2(v52, v54, v94);
        if (!v55)
        {
          v66 = v86;
          (*v85)(v86, v46, v53);
          if (qword_1EDA6DA30 != -1)
          {
            OUTLINED_FUNCTION_13_4();
            swift_once();
          }

          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
          __swift_project_value_buffer(v67, qword_1EDA6DA38);
          v68 = v96;
          v45 = *(v96 + 28);
          sub_1C906204C();
          v69 = v100;
          sub_1C906334C();
          v97(v69, v104, v99);
          v57 = v91;
          if (qword_1EDA6D9E8 != -1)
          {
            OUTLINED_FUNCTION_12_4();
            swift_once();
          }

          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313070, &qword_1C906A980);
          __swift_project_value_buffer(v70, qword_1EDA6D9F0);
          sub_1C906334C();
          *(v69 + *(v68 + 24)) = v105[0];
          v38 = v68;
          if (qword_1EDA6DA50 != -1)
          {
            OUTLINED_FUNCTION_11_3();
            swift_once();
          }

          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313078, &qword_1C906A988);
          __swift_project_value_buffer(v71, qword_1EDA6B1A0);
          sub_1C906334C();
          v72 = OUTLINED_FUNCTION_23_3();
          v73 = v99;
          (v45)(v72, v99);
          v74 = v53;
          v40 = v73;
          (*v84)(v66, v74);
          *(v69 + *(v38 + 20)) = v105[0];
          OUTLINED_FUNCTION_0_11();
          sub_1C8CBA80C(v69, v57);
          OUTLINED_FUNCTION_150();
          __swift_storeEnumTagSinglePayload(v75, v76, v77, v38);
          OUTLINED_FUNCTION_1_11();
          sub_1C8CBA864(v69, v78);
          goto LABEL_12;
        }

        v56 = OUTLINED_FUNCTION_23_3();
        v40 = v99;
        (v45)(v56, v99);
      }

      sub_1C8CBE41C(v46, &qword_1EC313048);

      v57 = v91;
      OUTLINED_FUNCTION_115();
      v38 = v96;
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v96);
LABEL_12:
      (v45)(v102, v40);
      v61 = OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_108_2(v61, v62, v38);
      v37 = v101;
      if (v55)
      {
        sub_1C8CBE41C(v57, &qword_1EC313058);
      }

      else
      {
        OUTLINED_FUNCTION_0_11();
        sub_1C8CBAF30(v57, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C8D00E4C();
          v37 = v79;
        }

        v64 = v37[2];
        if (v64 >= v37[3] >> 1)
        {
          sub_1C8D00E4C();
          v37 = v80;
        }

        v37[2] = v64 + 1;
        OUTLINED_FUNCTION_0_11();
        sub_1C8CBAF30(v93, v65);
      }

      v39 = v100;
      v36 += v89;
      if (!--v32)
      {

        goto LABEL_31;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v105[0] = v37;

  v82 = v103;
  sub_1C8D1D190(v105);
  if (!v82)
  {

    goto LABEL_33;
  }

  __break(1u);
}

uint64_t ToolDatabase.Pager.init(directory:latestInterpretableVersion:cleanupSchedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v8 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v12 = type metadata accessor for ToolDatabase.Pager(0);
  *(a4 + *(v12 + 20)) = a2;
  *(a4 + *(v12 + 24)) = v7;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1C9061DDC();
  v21[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v21];

  if (v15)
  {
    v16 = *(v10 + 8);
    v17 = v21[0];
    return v16(a1, v8);
  }

  else
  {
    v19 = v21[0];
    sub_1C9061D7C();

    swift_willThrow();
    (*(v10 + 8))(a1, v8);
    OUTLINED_FUNCTION_2_6();
    return sub_1C8CBA864(a4, v20);
  }
}

uint64_t ToolDatabase.Pager.activeEnvironment.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  sub_1C8CBAA48();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8CBE41C(v6, &qword_1EC313058);
    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBAF30(v6, v1);
    v10 = *(v1 + *(v7 + 20));
    OUTLINED_FUNCTION_1_11();
    result = sub_1C8CBA864(v1, v11);
  }

  *a1 = v10;
  return result;
}

void ToolDatabase.Pager.createDatabaseFile(environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v27;
  a23 = v28;
  v29 = v23;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v35 = v34 - 8;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v58 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v40 = *v31;
  (*(v41 + 16))(v26, v29);
  a13 = v40;
  v42 = type metadata accessor for ToolDatabase.Pager(0);
  sub_1C8D1922C(v26, &a13, *(v29 + *(v42 + 20)), v33);
  v43 = *(v33 + *(v35 + 40));
  sub_1C9061E5C();
  v44 = sub_1C9063EBC();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  sub_1C906371C();
  OUTLINED_FUNCTION_0_11();
  sub_1C8CBA80C(v33, v25);
  v45 = sub_1C9063D1C();
  v46 = sub_1C906443C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v47 = 136315138;
    v49 = ToolDatabase.DatabaseFile.debugDescription.getter();
    v51 = v50;
    OUTLINED_FUNCTION_1_11();
    sub_1C8CBA864(v25, v52);
    v56 = sub_1C8CACE04(v49, v51, &v59, v53, v54, v55);

    *(v47 + 4) = v56;
    _os_log_impl(&dword_1C8C9B000, v45, v46, "Created %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_11();
    sub_1C8CBA864(v25, v57);
  }

  (*(v37 + 8))(v24, v58);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D1922C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v9 = v8[8];
  *(a4 + v9) = [objc_opt_self() defaultManager];
  result = sub_1C9061D8C();
  if (result)
  {
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    sub_1C906478C();

    OUTLINED_FUNCTION_24_5();
    if (v7)
    {
      v11 = 7170419;
    }

    else
    {
      v11 = 1685025392;
    }

    if (v7)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    MEMORY[0x1CCA81A90](v11, v12);

    MEMORY[0x1CCA81A90](30254, 0xE200000000000000);
    v13 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v13);

    MEMORY[0x1CCA81A90](45, 0xE100000000000000);
    v14 = sub_1C906200C();
    MEMORY[0x1CCA81A90](v14);

    MEMORY[0x1CCA81A90](0x6574696C71732ELL, 0xE700000000000000);
    sub_1C9061DFC();

    sub_1C9061EBC();
    OUTLINED_FUNCTION_13_1();
    result = (*(v15 + 8))(a1);
    *(a4 + v8[6]) = a3;
    *(a4 + v8[5]) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t ToolDatabase.DatabaseFile.debugDescription.getter()
{
  sub_1C906478C();

  v1 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v2 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](0x203A766E65202CLL, 0xE700000000000000);
  if (*(v0 + *(v1 + 20)))
  {
    v3 = 7170419;
  }

  else
  {
    v3 = 1685025392;
  }

  if (*(v0 + *(v1 + 20)))
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1CCA81A90](v3, v4);

  MEMORY[0x1CCA81A90](0x203A6469202CLL, 0xE600000000000000);
  sub_1C906204C();
  sub_1C8D1EAD4(&qword_1EDA6CB98, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v5 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v5);

  MEMORY[0x1CCA81A90](0x203A7461202CLL, 0xE600000000000000);
  sub_1C9061EBC();
  sub_1C8D1EAD4(&qword_1EDA6D460, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v6 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v6);

  return 0xD000000000000010;
}

void ToolDatabase.Pager.setActive(databaseFile:)()
{
  OUTLINED_FUNCTION_196();
  v66 = v1;
  v68 = *MEMORY[0x1E69E9840];
  sub_1C906188C();
  OUTLINED_FUNCTION_11();
  v55 = v3;
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v54 = v5 - v4;
  v6 = OUTLINED_FUNCTION_111();
  v7 = type metadata accessor for ToolDatabase.DatabaseFile(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v57 = v10 - v9;
  OUTLINED_FUNCTION_111();
  sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v59 = v12;
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v58 = v14 - v13;
  OUTLINED_FUNCTION_111();
  v15 = sub_1C9061D9C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v19 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  v26 = [objc_opt_self() defaultManager];
  strcpy(&v67, "Tools-active");
  BYTE13(v67) = 0;
  HIWORD(v67) = -5120;
  v64 = *MEMORY[0x1E6968F70];
  v63 = *(v17 + 104);
  v27 = v63(v0);
  sub_1C8CBAEDC(v27, v28, v29);
  sub_1C9061EAC();
  v62 = *(v17 + 8);
  v62(v0, v15);
  v30 = sub_1C9061DDC();
  v65 = v19;
  v61 = *(v21 + 8);
  v61(v25, v19);
  *&v67 = 0;
  LODWORD(v19) = [v26 removeItemAtURL:v30 error:&v67];

  if (v19)
  {
    v31 = v67;
  }

  else
  {
    v32 = v67;
    v33 = sub_1C9061D7C();

    swift_willThrow();
  }

  sub_1C9061E5C();
  OUTLINED_FUNCTION_24_5();
  *&v67 = v34 & 0xFFFFFFFFFFFFLL | 0x6361000000000000;
  *(&v67 + 1) = 0xEC00000065766974;
  (v63)(v0, v64, v15);
  sub_1C9061EAC();
  v62(v0, v15);
  sub_1C9061E5C();
  v61(v25, v65);
  v35 = sub_1C9063F7C();

  v36 = sub_1C9063F7C();

  v37 = symlink((v35 + 32), (v36 + 32));

  if (v37 < 0)
  {
    MEMORY[0x1CCA817F0](v38);
    v51 = sub_1C9063D4C();
    if ((v51 & 0x100000000) != 0)
    {
      v52 = 5;
    }

    else
    {
      v52 = v51;
    }

    LODWORD(v67) = v52;
    sub_1C8D1CE58(MEMORY[0x1E69E7CC0]);
    sub_1C8D1EAD4(&unk_1EDA62CE0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1C9061D5C();
    sub_1C906187C();
    (*(v55 + 8))(v54, v56);
    swift_willThrow();
  }

  else
  {
    sub_1C906371C();
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBA80C(v66, v57);
    v39 = sub_1C9063D1C();
    v40 = sub_1C906443C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v67 = v42;
      *v41 = 136315138;
      v43 = ToolDatabase.DatabaseFile.debugDescription.getter();
      v45 = v44;
      OUTLINED_FUNCTION_1_11();
      sub_1C8CBA864(v57, v46);
      v50 = sub_1C8CACE04(v43, v45, &v67, v47, v48, v49);

      *(v41 + 4) = v50;
      _os_log_impl(&dword_1C8C9B000, v39, v40, "Pushed active database symlink to %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_11();
      sub_1C8CBA864(v57, v53);
    }

    (*(v59 + 8))(v58, v60);
    sub_1C8D19C6C();
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8D19C6C()
{
  v1 = type metadata accessor for ToolDatabase.Pager(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (*(v0 + *(v2 + 32)))
  {
    if (*(v0 + *(v2 + 32)) == 1)
    {
      v8 = sub_1C90642AC();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      sub_1C8CBA80C(v0, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      sub_1C8CBAF30(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
      sub_1C8CE80E4(0, 0, v7, &unk_1C906AAF8, v10);
    }
  }

  else
  {

    sub_1C8D19E40();
  }
}

void sub_1C8D19E40()
{
  v0 = sub_1C9063D3C();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C8D1A020();
}

void sub_1C8D1A020()
{
  v120 = sub_1C9061EBC();
  v123 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v102 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FileLock(0);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1C9063D3C();
  v114 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v102 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v102 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v102 - v10;
  v12 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v102 - v22;
  v24 = v124;
  sub_1C8CBAA48();
  v124 = v24;
  if (!v24)
  {
    v115 = v8;
    v107 = v17;
    v108 = v20;
    v109 = v14;
    v110 = v5;
    v106 = v23;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1C8CBE41C(v11, &qword_1EC313058);
    }

    else
    {
      v25 = v12;
      v26 = v106;
      sub_1C8CBAF30(v11, v106);
      v27 = [objc_opt_self() defaultManager];
      v28 = v124;
      ToolDatabase.Pager.sortedExistingFiles.getter();
      v30 = v28;
      if (v28)
      {
        v124 = v28;

        sub_1C8CBA864(v26, type metadata accessor for ToolDatabase.DatabaseFile);
      }

      else
      {
        v31 = v29;
        v103 = v27;
        MEMORY[0x1EEE9AC00](v29);
        *(&v102 - 2) = v26;

        sub_1C8ED5518(sub_1C8D1D738, (&v102 - 4), v31);
        MEMORY[0x1EEE9AC00](v32);
        *(&v102 - 2) = v26;
        sub_1C8ED5518(sub_1C8D1D758, (&v102 - 4), v33);
        v35 = v34;
        v36 = v115;
        v116 = *MEMORY[0x1E69E10F0];
        sub_1C906371C();

        v37 = sub_1C9063D1C();
        v38 = sub_1C906443C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v125 = v124;
          *v39 = 134218498;
          *(v39 + 4) = *(v35 + 16);

          *(v39 + 12) = 2048;
          v40 = *(v31 + 16);

          *(v39 + 14) = v40;

          *(v39 + 22) = 2080;
          v41 = MEMORY[0x1CCA81C30](v35, v25);
          v46 = sub_1C8CACE04(v41, v42, &v125, v43, v44, v45);

          *(v39 + 24) = v46;
          _os_log_impl(&dword_1C8C9B000, v37, v38, "Found %ld stale database files out of %ld: %s", v39, 0x20u);
          v47 = v124;
          __swift_destroy_boxed_opaque_existential_1(v124);
          MEMORY[0x1CCA833A0](v47, -1, -1);
          MEMORY[0x1CCA833A0](v39, -1, -1);

          v49 = v114;
          v48 = v115;
          v50 = *(v114 + 8);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v49 = v114;
          v50 = *(v114 + 8);
          v48 = v36;
        }

        v51 = v119;
        v115 = v50;
        v50(v48, v119);
        v54 = v117;
        v53 = v118;
        v55 = v108;
        v56 = *(v35 + 16);
        if (v56)
        {
          v57 = (*(v113 + 80) + 32) & ~*(v113 + 80);
          v102 = v35;
          v58 = v35 + v57;
          v59 = *(v113 + 72);
          v113 = v123 + 16;
          v114 = v59;
          v111 = v49 + 8;
          v112 = (v123 + 8);
          *&v52 = 136315138;
          v104 = v52;
          *&v52 = 136315394;
          v105 = v52;
          do
          {
            v123 = v56;
            sub_1C8CBA80C(v58, v55);
            v60 = v122;
            v61 = v120;
            (*v113)(v122, v55, v120);
            v62 = v121;
            v63 = v54 + *(v121 + 20);
            *(v63 + 4) = 2;
            *v63 = 0;
            sub_1C9061E0C();
            v64 = (*v112)(v60, v61);
            *(v54 + *(v62 + 24)) = 1;
            MEMORY[0x1EEE9AC00](v64);
            *(&v102 - 2) = v54;
            *(&v102 - 1) = v55;
            sub_1C8D5D318(sub_1C8D1D778);
            if (v30)
            {
              sub_1C906371C();
              v65 = v109;
              sub_1C8CBA80C(v55, v109);
              v66 = v30;
              v67 = v53;
              v68 = sub_1C9063D1C();
              v69 = sub_1C906443C();

              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                v71 = v65;
                v72 = swift_slowAlloc();
                v73 = swift_slowAlloc();
                v125 = v73;
                *v70 = v105;
                v74 = ToolDatabase.DatabaseFile.debugDescription.getter();
                v124 = v30;
                v76 = v75;
                sub_1C8CBA864(v71, type metadata accessor for ToolDatabase.DatabaseFile);
                v80 = sub_1C8CACE04(v74, v76, &v125, v77, v78, v79);
                v54 = v117;

                *(v70 + 4) = v80;
                *(v70 + 12) = 2112;
                v81 = v124;
                v82 = v124;
                v83 = _swift_stdlib_bridgeErrorToNSError();
                *(v70 + 14) = v83;
                *v72 = v83;
                _os_log_impl(&dword_1C8C9B000, v68, v69, "Cleanup skip %s: %@", v70, 0x16u);
                sub_1C8CBE41C(v72, &qword_1EC312EC8);
                MEMORY[0x1CCA833A0](v72, -1, -1);
                __swift_destroy_boxed_opaque_existential_1(v73);
                v84 = v73;
                v55 = v108;
                MEMORY[0x1CCA833A0](v84, -1, -1);
                v85 = v70;
                v51 = v119;
                MEMORY[0x1CCA833A0](v85, -1, -1);

                v53 = v118;
                v115(v118, v51);
                v30 = 0;
              }

              else
              {

                sub_1C8CBA864(v65, type metadata accessor for ToolDatabase.DatabaseFile);
                v115(v67, v51);
                v30 = 0;
                v53 = v67;
              }
            }

            else
            {
              sub_1C906371C();
              v86 = v107;
              sub_1C8CBA80C(v55, v107);
              v87 = sub_1C9063D1C();
              v88 = sub_1C906443C();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = v86;
                v91 = swift_slowAlloc();
                v125 = v91;
                *v89 = v104;
                v92 = ToolDatabase.DatabaseFile.debugDescription.getter();
                v124 = 0;
                v93 = v92;
                v95 = v94;
                sub_1C8CBA864(v90, type metadata accessor for ToolDatabase.DatabaseFile);
                v96 = v93;
                v30 = v124;
                v100 = sub_1C8CACE04(v96, v95, &v125, v97, v98, v99);
                v53 = v118;

                *(v89 + 4) = v100;
                _os_log_impl(&dword_1C8C9B000, v87, v88, "Removed stale db file %s", v89, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v91);
                MEMORY[0x1CCA833A0](v91, -1, -1);
                v101 = v89;
                v55 = v108;
                MEMORY[0x1CCA833A0](v101, -1, -1);
              }

              else
              {

                sub_1C8CBA864(v86, type metadata accessor for ToolDatabase.DatabaseFile);
              }

              v51 = v119;
              v115(v110, v119);
            }

            sub_1C8CBA864(v54, type metadata accessor for FileLock);
            sub_1C8CBA864(v55, type metadata accessor for ToolDatabase.DatabaseFile);
            v58 += v114;
            v56 = v123 - 1;
          }

          while (v123 != 1);

          v26 = v106;
        }

        else
        {
        }

        sub_1C8CBA864(v26, type metadata accessor for ToolDatabase.DatabaseFile);
      }
    }
  }
}

uint64_t sub_1C8D1ABC4()
{
  sub_1C8D19E40();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C8D1ACCC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 2;
  result = FileLock.lock(_:configuration:)(&v6, &v5);
  if (!v2)
  {
    sub_1C8D1C838();
    v4 = 0;
    return FileLock.unlock(configuration:)(&v4);
  }

  return result;
}

uint64_t sub_1C8D1AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_387(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  __swift_allocate_value_buffer(v8, a4);
  __swift_project_value_buffer(v8, a4);
  return sub_1C906326C();
}

uint64_t sub_1C8D1ADEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
  __swift_allocate_value_buffer(v0, qword_1EDA6DA38);
  __swift_project_value_buffer(v0, qword_1EDA6DA38);
  sub_1C906204C();
  return sub_1C906326C();
}

uint64_t sub_1C8D1AE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  __swift_allocate_value_buffer(v0, qword_1EDA6D9D0);
  __swift_project_value_buffer(v0, qword_1EDA6D9D0);
  return sub_1C906330C();
}

uint64_t sub_1C8D1AED0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
  __swift_allocate_value_buffer(v0, qword_1EDA6DA18);
  __swift_project_value_buffer(v0, qword_1EDA6DA18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A0, &qword_1C906AB18);
  sub_1C8D07450(&qword_1EDA6DA68, &qword_1EC313060, &qword_1C906A970, MEMORY[0x1E69E9290]);
  return sub_1C906331C();
}

uint64_t sub_1C8D1AFA8@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v101 = &v88 - v1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A8, &qword_1C906AB20);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v115 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130B0, &qword_1C906AB28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130B8, &qword_1C906AB30);
  v124 = *(v7 - 8);
  v125 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130C0, &qword_1C906AB38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v88 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130C8, &qword_1C906AB40);
  v123 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v93 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  v126 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D8, &qword_1C906AB48);
  v99 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  v27 = sub_1C90632CC();
  v28 = *(v27 - 8);
  v127 = v27;
  v128 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130E0, &qword_1C906AB50);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v118 = &v88 - v36;
  v133 = 0x2D736C6F6F54;
  v134 = 0xE600000000000000;
  v107 = sub_1C8D1EA80(v37, v38, v39);
  MEMORY[0x1CCA80C70](v135, &v133, MEMORY[0x1E69E6158]);
  if (qword_1EDA6DA50 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313078, &qword_1C906A988);
  __swift_project_value_buffer(v40, qword_1EDA6B1A0);
  sub_1C906321C();
  sub_1C8D1C100(MEMORY[0x1E69E82A0], v22);
  sub_1C906325C();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130E8, &unk_1C9090BF0);
  v42 = sub_1C8D07450(&qword_1EDA6DA70, &qword_1EC3130D0, &qword_1C9090BD0, MEMORY[0x1E69E9290]);
  sub_1C906328C();
  v43 = v126 + 8;
  v106 = *(v126 + 8);
  v106(v22, v16);
  v90 = v16;
  v44 = *(v128 + 8);
  v128 += 8;
  v44(v30, v127);
  v110 = v26;
  v94 = v41;
  MEMORY[0x1CCA80C90](v26, v41);
  v91 = sub_1C8D07450(&qword_1EDA6DA90, &qword_1EC3130E0, &qword_1C906AB50, MEMORY[0x1E69E8230]);
  MEMORY[0x1CCA80C70](v34, v31);
  v46 = *(v32 + 8);
  v45 = v32 + 8;
  v109 = v31;
  v95 = v46;
  v46(v34, v31);
  v131 = 30254;
  v132 = 0xE200000000000000;
  v47 = v107;
  MEMORY[0x1CCA80C70](&v133, &v131, MEMORY[0x1E69E6158], v107);
  if (qword_1EDA6D9E8 != -1)
  {
    swift_once();
  }

  v98 = v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313070, &qword_1C906A980);
  __swift_project_value_buffer(v48, qword_1EDA6D9F0);
  sub_1C906321C();
  sub_1C8D1C100(MEMORY[0x1E69E82A8], v22);
  sub_1C906325C();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130F0, &qword_1C906AB58);
  v108 = v42;
  v50 = v90;
  v51 = v92;
  sub_1C906328C();
  v116 = v22;
  v52 = v22;
  v126 = v43;
  v53 = v106;
  v106(v52, v50);
  v117 = v44;
  v44(v30, v127);
  v54 = v93;
  MEMORY[0x1CCA80C90](v51, v49);
  v55 = sub_1C8D07450(&qword_1EDA6DA88, &qword_1EC3130C8, &qword_1C906AB40, MEMORY[0x1E69E8230]);
  v56 = v121;
  v92 = v55;
  MEMORY[0x1CCA80C70](v54, v121);
  v57 = *(v123 + 8);
  v123 += 8;
  v93 = v57;
  (v57)(v54, v56);
  v129 = 45;
  v130 = 0xE100000000000000;
  MEMORY[0x1CCA80C70](&v131, &v129, MEMORY[0x1E69E6158], v47);
  if (qword_1EDA6DA30 != -1)
  {
    swift_once();
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
  __swift_project_value_buffer(v58, qword_1EDA6DA38);
  sub_1C906321C();
  if (qword_1EDA6D9C8 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v50, qword_1EDA6D9D0);
  v60 = v119;
  v61 = v108;
  MEMORY[0x1CCA80C70](v59, v50, v108);
  v62 = v116;
  sub_1C90631FC();
  v53(v60, v50);
  sub_1C906325C();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130F8, &qword_1C906AB60);
  sub_1C906204C();
  v64 = v96;
  sub_1C906328C();
  v53(v62, v50);
  v117(v30, v127);
  v65 = v97;
  MEMORY[0x1CCA80C90](v64, v63);
  v89 = sub_1C8D07450(&qword_1EDA6DA98, &qword_1EC3130B8, &qword_1C906AB30, MEMORY[0x1E69E8230]);
  v66 = v125;
  MEMORY[0x1CCA80C70](v65, v125, v89);
  v67 = *(v124 + 8);
  v124 += 8;
  v96 = v67;
  (v67)(v65, v66);
  v68 = v119;
  sub_1C906330C();
  MEMORY[0x1CCA80C70](v68, v50, v61);
  v53(v68, v50);
  v129 = v135[0];
  v130 = v135[1];
  sub_1C90631FC();

  sub_1C906321C();
  v69 = v112;
  sub_1C906329C();
  v70 = v53;
  v71 = v110;
  sub_1C906327C();
  v70(v69, v50);
  v72 = v127;
  v73 = v117;
  v117(v30, v127);
  sub_1C8E6FF90(v71, v133, v134, v111);

  sub_1C906321C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313100, &qword_1C906AB68);
  v107 = MEMORY[0x1E69E9290];
  sub_1C8D07450(&qword_1EDA6DA58, &qword_1EC3130D8, &qword_1C906AB48, MEMORY[0x1E69E9290]);
  v74 = v114;
  sub_1C906327C();
  v75 = v72;
  v73(v30, v72);
  v76 = v73;
  sub_1C8D1C48C(v74, v131, v132, v115);

  sub_1C906321C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A0, &qword_1C906AB18);
  v77 = v107;
  sub_1C8D07450(&qword_1EDA6DA60, &qword_1EC3130A8, &qword_1C906AB20, v107);
  v78 = v101;
  v79 = v100;
  sub_1C906327C();
  v76(v30, v75);
  sub_1C906321C();
  v80 = v112;
  sub_1C906329C();
  sub_1C8D07450(&qword_1EDA6DA68, &qword_1EC313060, &qword_1C906A970, v77);
  v81 = v80;
  v82 = v105;
  sub_1C906327C();
  v83 = v106;
  v106(v81, v50);
  v117(v30, v75);
  (*(v104 + 8))(v78, v82);
  v84 = *(v102 + 8);
  v84(v115, v79);
  v84(v114, v79);
  v85 = *(v99 + 8);
  v86 = v113;
  v85(v111, v113);
  v85(v110, v86);
  v83(v119, v50);
  v83(v116, v50);
  (v96)(v122, v125);
  (v93)(v120, v121);
  return v95(v118, v109);
}

uint64_t sub_1C8D1C100@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v39 = v7;
  OUTLINED_FUNCTION_111();
  v40 = sub_1C90632CC();
  OUTLINED_FUNCTION_11();
  v38 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313108, &unk_1C9090BE0);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_247();
  v15 = sub_1C906322C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313110, &unk_1C906AB70);
  OUTLINED_FUNCTION_11();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  v25 = (v23 - v24);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v38 - v28;
  a1(v27);
  sub_1C90632FC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_1C906321C();
  sub_1C8D1EAD4(&qword_1EDA6DA80, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  v34 = v39;
  sub_1C90632BC();
  (*(v38 + 8))(v12, v40);
  sub_1C8CBE41C(v3, &qword_1EC313108);
  (*(v17 + 8))(v2, v15);
  MEMORY[0x1CCA80CD0](v34, MEMORY[0x1E69E67B0]);
  v35 = sub_1C8D07450(&qword_1EDA6DA78, &qword_1EC313110, &unk_1C906AB70, MEMORY[0x1E69E8290]);
  MEMORY[0x1CCA80C70](v25, v19, v35);
  v36 = *(v21 + 8);
  v36(v25, v19);
  sub_1C90631FC();
  return v36(v29, v19);
}

uint64_t sub_1C8D1C48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v21 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v19 = sub_1C90632CC();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C906321C();
  v22 = a2;
  v23 = a3;
  sub_1C8D1EA80(v13, v14, v15);
  sub_1C906329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313100, &qword_1C906AB68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130A8, &qword_1C906AB20);
  v16 = MEMORY[0x1E69E9290];
  sub_1C8D07450(&qword_1EDA6DA60, &qword_1EC3130A8, &qword_1C906AB20, MEMORY[0x1E69E9290]);
  sub_1C8D07450(&qword_1EDA6DA70, &qword_1EC3130D0, &qword_1C9090BD0, v16);
  sub_1C906327C();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1C8D1C6D8()
{
  OUTLINED_FUNCTION_386();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1();
  v0 = OUTLINED_FUNCTION_94();

  return v1(v0);
}

uint64_t ToolDatabase.DatabaseFile.environment.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  result = type metadata accessor for ToolDatabase.DatabaseFile(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t ToolDatabase.DatabaseFile.id.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(type metadata accessor for ToolDatabase.DatabaseFile(v2) + 28);
  sub_1C906204C();
  OUTLINED_FUNCTION_13_1();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t static ToolDatabase.DatabaseFile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_257();
  type metadata accessor for ToolDatabase.DatabaseFile(v2);

  return _s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0();
}

void sub_1C8D1C838()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v36[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9061EBC();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312BA8, &qword_1C9068F40);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v34 = *(v3 + 72);
  v9 = swift_allocObject();
  *(v9 + 1) = xmmword_1C906A950;
  v35 = *(v4 + 16);
  v35(&v9[v8], v1, v2);
  v36[3] = v1;
  sub_1C8D3F668();
  v36[0] = v9;
  sub_1C8D37820(v10);
  v11 = v9;
  v31 = objc_opt_self();
  v12 = [v31 defaultManager];
  v13 = v12;
  v33 = *(v9 + 2);
  if (v33)
  {
    v14 = 0;
    v15 = v11 + v8;
    v32 = (v4 + 8);
    v16 = &off_1E832F000;
    v30 = v12;
    do
    {
      if (v14 >= *(v11 + 2))
      {
        __break(1u);
      }

      v35(v7, v15, v2);
      sub_1C9061E5C();
      v17 = sub_1C9063EBC();

      v18 = [v13 v16[158]];

      if (v18)
      {
        v19 = v2;
        v20 = v16;
        v21 = v19;
        v22 = v11;
        v23 = [v31 defaultManager];
        v24 = sub_1C9061DDC();
        v36[0] = 0;
        v25 = [v23 removeItemAtURL:v24 error:v36];

        if (!v25)
        {
          v29 = v36[0];

          sub_1C9061D7C();

          swift_willThrow();
          (*v32)(v7, v21);
          goto LABEL_11;
        }

        v26 = *v32;
        v27 = v36[0];
        v26(v7, v21);
        v11 = v22;
        v13 = v30;
        v28 = v21;
        v16 = v20;
        v2 = v28;
      }

      else
      {
        (*v32)(v7, v2);
      }

      ++v14;
      v15 += v34;
    }

    while (v33 != v14);
  }

LABEL_11:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D1CBB0(uint64_t *a1)
{
  v2 = sub_1C9061EBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = sub_1C9061DAC();
  v10 = v9;
  sub_1C9061DEC();
  v12[0] = v8;
  v12[1] = v10;

  MEMORY[0x1CCA81A90](v7, v6);

  sub_1C9061E0C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t ToolDatabase.Pager.switchActiveEnvironment(to:)(char *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v7 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v14 = *a1;
  result = ToolDatabase.Pager.createDatabaseFileIfNeeded(environment:)(&v14);
  if (!v1)
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBA80C(v2, v3);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    type metadata accessor for ToolDatabase(0);
    swift_allocObject();
    ToolDatabase.init(file:readonly:)(v3, 0);

    ToolDatabase.Pager.setActive(databaseFile:)();
    OUTLINED_FUNCTION_1_11();
    return sub_1C8CBA864(v2, v13);
  }

  return result;
}

unint64_t sub_1C8D1CE58(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313088, &qword_1C906AB00);
  v2 = sub_1C906495C();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1C8D1D7B4(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1C8D1CF90(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1C8D1D824(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C8D1CF90(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  v4 = sub_1C9064DBC();

  return sub_1C8CAE0D8(a1, a2, v4);
}

_BYTE **sub_1C8D1D008(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C8D1D040(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v11 = sub_1C8CACE04(v6, v7, a3, v8, v9, v10);

  v13 = *a1;
  *v13 = v11;
  *a1 = v13 + 1;
  return result;
}

char *sub_1C8D1D09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313098, &qword_1C906AB10);
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

void sub_1C8D1D190(uint64_t *a1)
{
  v2 = *(type metadata accessor for ToolDatabase.DatabaseFile(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C8DDC76C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C8D1D834(v6);
  *a1 = v3;
}

unint64_t sub_1C8D1D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313080;
  if (!qword_1EC313080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313080);
  }

  return result;
}

uint64_t sub_1C8D1D300(uint64_t a1)
{
  result = sub_1C9061EBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s5PagerV15CleanupScheduleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8D1D460(uint64_t a1)
{
  result = sub_1C9061EBC();
  if (v2 <= 0x3F)
  {
    result = sub_1C906204C();
    if (v3 <= 0x3F)
    {
      result = sub_1C8D1D514();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C8D1D514()
{
  result = qword_1EDA6D490;
  if (!qword_1EDA6D490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA6D490);
  }

  return result;
}

uint64_t sub_1C8D1D558(uint64_t a1)
{
  v4 = type metadata accessor for ToolDatabase.Pager(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C8D1D644;

  return sub_1C8D1ABA4(a1, v7, v8, v1 + v6);
}

uint64_t sub_1C8D1D644()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C8D1D7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313090, &qword_1C906AB08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C8D1D824(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1C8D1D834(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C9064BCC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ToolDatabase.DatabaseFile(0);
        v6 = sub_1C906421C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ToolDatabase.DatabaseFile(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C8D1DBC0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C8D1D964(0, v2, 1, a1);
  }
}

void sub_1C8D1D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v30 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v35 = -v18;
    v36 = v17;
    v20 = a1 - a3;
    v29 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v33 = v19;
      v34 = a3;
      v31 = v21;
      v32 = v20;
      do
      {
        sub_1C8CBA80C(v21, v16);
        sub_1C8CBA80C(v19, v12);
        v22 = *(v8 + 24);
        v23 = v8;
        v24 = *&v16[v22];
        v25 = *&v12[v22];
        sub_1C8CBA864(v12, type metadata accessor for ToolDatabase.DatabaseFile);
        sub_1C8CBA864(v16, type metadata accessor for ToolDatabase.DatabaseFile);
        v26 = v25 >= v24;
        v8 = v23;
        if (v26)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v27 = v37;
        sub_1C8CBAF30(v21, v37);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C8CBAF30(v27, v19);
        v19 += v35;
        v21 += v35;
        v26 = __CFADD__(v20++, 1);
      }

      while (!v26);
      a3 = v34 + 1;
      v19 = v33 + v29;
      v20 = v32 - 1;
      v21 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C8D1DBC0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v115 = a1;
  v6 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v121 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v112 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v112 - v13;
  v123 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v130 = *v115;
    if (!v130)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v124;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v104 = v16 + 16;
      v105 = *(v16 + 2);
      while (v105 >= 2)
      {
        if (!*v123)
        {
          goto LABEL_138;
        }

        v106 = v6;
        v107 = v16;
        v6 = &v16[16 * v105];
        v108 = *v6;
        v109 = &v104[2 * v105];
        v110 = *(v109 + 1);
        sub_1C8D1E4E8(*v123 + *(v121 + 72) * *v6, *v123 + *(v121 + 72) * *v109, *v123 + *(v121 + 72) * v110, v130);
        v16 = v106;
        if (v106)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_126;
        }

        if (v105 - 2 >= *v104)
        {
          goto LABEL_127;
        }

        *v6 = v108;
        *(v6 + 8) = v110;
        v111 = *v104 - v105;
        if (*v104 < v105)
        {
          goto LABEL_128;
        }

        v105 = *v104 - 1;
        sub_1C8DDBD9C(v109 + 16, v111, v109);
        *v104 = v105;
        v6 = 0;
        v16 = v107;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v16 = sub_1C8DDBD88(v16);
    goto LABEL_102;
  }

  v112 = a4;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v128 = v6;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v113 = v16;
      v18 = *v123;
      v19 = *(v121 + 72);
      v20 = *v123 + v19 * v15;
      v21 = v15;
      v22 = v129;
      v120 = v14;
      sub_1C8CBA80C(v20, v129);
      v23 = v130;
      sub_1C8CBA80C(v18 + v19 * v17, v130);
      v24 = *(v6 + 24);
      v25 = *(v22 + v24);
      v118 = *(v23 + v24);
      v119 = v25;
      sub_1C8CBA864(v23, type metadata accessor for ToolDatabase.DatabaseFile);
      v26 = v22;
      v15 = v21;
      sub_1C8CBA864(v26, type metadata accessor for ToolDatabase.DatabaseFile);
      v27 = v120;
      v114 = v17;
      v28 = (v17 + 2);
      v122 = v19;
      v29 = v18 + v19 * (v17 + 2);
      while (1)
      {
        v16 = v28;
        v30 = v15 + 1;
        if (v30 >= v27)
        {
          break;
        }

        LODWORD(v126) = v118 < v119;
        v125 = v30;
        v31 = v129;
        sub_1C8CBA80C(v29, v129);
        v32 = v130;
        sub_1C8CBA80C(v20, v130);
        v33 = *(v6 + 24);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_1C8CBA864(v32, type metadata accessor for ToolDatabase.DatabaseFile);
        v36 = v31;
        v15 = v125;
        sub_1C8CBA864(v36, type metadata accessor for ToolDatabase.DatabaseFile);
        v27 = v120;
        v29 += v122;
        v20 += v122;
        v28 = v16 + 1;
        if (((v126 ^ (v35 >= v34)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = v27;
LABEL_9:
      if (v118 < v119)
      {
        v17 = v114;
        if (v15 < v114)
        {
          goto LABEL_132;
        }

        if (v114 >= v15)
        {
          v16 = v113;
          goto LABEL_30;
        }

        if (v27 >= v16)
        {
          v37 = v16;
        }

        else
        {
          v37 = v27;
        }

        v38 = v122 * (v37 - 1);
        v39 = v122 * v37;
        v40 = v114 * v122;
        v41 = v114;
        v42 = v15;
        do
        {
          if (v41 != --v42)
          {
            v43 = *v123;
            if (!*v123)
            {
              goto LABEL_139;
            }

            sub_1C8CBAF30(v43 + v40, v117);
            v44 = v40 < v38 || v43 + v40 >= (v43 + v39);
            if (v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C8CBAF30(v117, v43 + v38);
          }

          ++v41;
          v38 -= v122;
          v39 -= v122;
          v40 += v122;
        }

        while (v41 < v42);
      }

      v16 = v113;
      v17 = v114;
    }

LABEL_30:
    v45 = v123[1];
    if (v15 < v45)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_131;
      }

      if (v15 - v17 < v112)
      {
        break;
      }
    }

LABEL_48:
    if (v15 < v17)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C8D00D94();
      v16 = v101;
    }

    v59 = *(v16 + 2);
    v60 = v59 + 1;
    if (v59 >= *(v16 + 3) >> 1)
    {
      sub_1C8D00D94();
      v16 = v102;
    }

    *(v16 + 2) = v60;
    v61 = v16 + 32;
    v62 = &v16[16 * v59 + 32];
    *v62 = v17;
    *(v62 + 1) = v15;
    v126 = *v115;
    if (!v126)
    {
      goto LABEL_140;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v16[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v16 + 4);
          v67 = *(v16 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_68:
          if (v69)
          {
            goto LABEL_117;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_120;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_125;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v60 < 2)
        {
          goto LABEL_119;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_83:
        if (v84)
        {
          goto LABEL_122;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_124;
        }

        if (v91 < v83)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v63 - 1 >= v60)
        {
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
          goto LABEL_134;
        }

        if (!*v123)
        {
          goto LABEL_137;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v97 = &v61[16 * v63];
        v98 = *(v97 + 1);
        v99 = v124;
        sub_1C8D1E4E8(*v123 + *(v121 + 72) * *v95, *v123 + *(v121 + 72) * *v97, *v123 + *(v121 + 72) * v98, v126);
        v6 = v99;
        if (v99)
        {
          goto LABEL_110;
        }

        if (v98 < v96)
        {
          goto LABEL_112;
        }

        v124 = 0;
        v6 = v16;
        v16 = *(v16 + 2);
        if (v63 > v16)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        if (v63 >= v16)
        {
          goto LABEL_114;
        }

        v60 = (v16 - 1);
        sub_1C8DDBD9C(v97 + 16, &v16[-v63 - 1], &v61[16 * v63]);
        *(v6 + 16) = v16 - 1;
        v100 = v16 > 2;
        v16 = v6;
        v6 = v128;
        if (!v100)
        {
          goto LABEL_97;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_115;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_116;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_118;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_121;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v123[1];
    if (v15 >= v14)
    {
      goto LABEL_100;
    }
  }

  v46 = v17 + v112;
  if (__OFADD__(v17, v112))
  {
    goto LABEL_133;
  }

  if (v46 >= v45)
  {
    v46 = v123[1];
  }

  if (v46 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v15 == v46)
  {
    goto LABEL_48;
  }

  v113 = v16;
  v114 = v17;
  v47 = *(v121 + 72);
  v48 = *v123 + v47 * (v15 - 1);
  v49 = -v47;
  v50 = v17 - v15;
  v126 = *v123;
  v116 = v47;
  v51 = v126 + v15 * v47;
  v118 = v46;
LABEL_39:
  v125 = v15;
  v119 = v51;
  v120 = v50;
  v122 = v48;
  v52 = v48;
  while (1)
  {
    v53 = v129;
    sub_1C8CBA80C(v51, v129);
    v54 = v130;
    sub_1C8CBA80C(v52, v130);
    v55 = *(v6 + 24);
    v56 = *(v53 + v55);
    v57 = *(v54 + v55);
    sub_1C8CBA864(v54, type metadata accessor for ToolDatabase.DatabaseFile);
    sub_1C8CBA864(v53, type metadata accessor for ToolDatabase.DatabaseFile);
    if (v57 >= v56)
    {
      v6 = v128;
LABEL_46:
      v15 = v125 + 1;
      v48 = v122 + v116;
      v50 = v120 - 1;
      v51 = v119 + v116;
      if (v125 + 1 == v118)
      {
        v15 = v118;
        v16 = v113;
        v17 = v114;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v126)
    {
      break;
    }

    v58 = v127;
    sub_1C8CBAF30(v51, v127);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C8CBAF30(v58, v52);
    v52 += v49;
    v51 += v49;
    v44 = __CFADD__(v50++, 1);
    if (v44)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1C8D1E4E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v52 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v65 = a1;
  v64 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1C8D0922C(a2, v15 / v12, a4);
    v33 = a4 + v18 * v12;
    v34 = -v12;
    v35 = v33;
    v56 = a1;
    v57 = a4;
    v55 = -v12;
LABEL_37:
    v58 = a2;
    v59 = a2 + v34;
    v36 = a3;
    v37 = v35;
    v54 = v35;
    while (1)
    {
      if (v33 <= a4)
      {
        v65 = a2;
        v63 = v37;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v37;
      v38 = v36 + v34;
      v39 = v33 + v34;
      v40 = v61;
      v41 = v36;
      sub_1C8CBA80C(v33 + v34, v61);
      v42 = v33;
      v43 = v60;
      sub_1C8CBA80C(v59, v60);
      v44 = *(v62 + 24);
      v45 = *(v40 + v44);
      v46 = v43;
      v47 = *(v43 + v44);
      sub_1C8CBA864(v46, type metadata accessor for ToolDatabase.DatabaseFile);
      sub_1C8CBA864(v40, type metadata accessor for ToolDatabase.DatabaseFile);
      if (v47 < v45)
      {
        v33 = v42;
        v50 = v41 < v58 || v38 >= v58;
        a3 = v38;
        if (v50)
        {
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v53;
          a1 = v56;
          a4 = v57;
          v34 = v55;
        }

        else
        {
          v35 = v53;
          v14 = v41 == v58;
          v51 = v59;
          a2 = v59;
          a1 = v56;
          a4 = v57;
          v34 = v55;
          if (!v14)
          {
            v35 = v53;
            swift_arrayInitWithTakeBackToFront();
            a2 = v51;
          }
        }

        goto LABEL_37;
      }

      v48 = v41 < v42 || v38 >= v42;
      v49 = v38;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v38;
        v33 = v39;
        v37 = v39;
        a4 = v57;
        a2 = v58;
        v34 = v55;
        a1 = v56;
        v35 = v54;
      }

      else
      {
        v37 = v39;
        v14 = v42 == v41;
        v36 = v38;
        v33 = v39;
        a4 = v57;
        a2 = v58;
        v34 = v55;
        a1 = v56;
        v35 = v54;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v49;
          v33 = v39;
          v37 = v39;
        }
      }
    }

    v65 = a2;
    v63 = v35;
  }

  else
  {
    sub_1C8D0922C(a1, v13 / v12, a4);
    v58 = a3;
    v59 = a4 + v17 * v12;
    v63 = v59;
    while (a4 < v59 && a2 < a3)
    {
      v20 = v12;
      v21 = a1;
      v22 = v61;
      sub_1C8CBA80C(a2, v61);
      v23 = a4;
      v24 = a4;
      v25 = v60;
      sub_1C8CBA80C(v23, v60);
      v26 = *(v62 + 24);
      v27 = *(v22 + v26);
      v28 = a2;
      v29 = *(v25 + v26);
      sub_1C8CBA864(v25, type metadata accessor for ToolDatabase.DatabaseFile);
      sub_1C8CBA864(v22, type metadata accessor for ToolDatabase.DatabaseFile);
      if (v29 >= v27)
      {
        a2 = v28;
        v12 = v20;
        a4 = v24 + v20;
        v30 = v21;
        if (v21 < v24 || v21 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v58;
        }

        else
        {
          a3 = v58;
          if (v21 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v24 + v20;
      }

      else
      {
        a2 = v28 + v20;
        v30 = v21;
        v31 = v21 < v28 || v21 >= a2;
        a4 = v24;
        if (v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v58;
        }

        else
        {
          a3 = v58;
          if (v21 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v12 = v20;
      }

      a1 = v30 + v12;
      v65 = a1;
    }
  }

LABEL_59:
  sub_1C8D1E9A0(&v65, &v64, &v63);
}

uint64_t sub_1C8D1E9A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1C8D1EA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D4B0[0];
  if (!qword_1EDA6D4B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6D4B0);
  }

  return result;
}

uint64_t sub_1C8D1EAD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8D1EB30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C8D1EB70(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1C8D1EBC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972656767697274 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
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

uint64_t sub_1C8D1EC98(char a1)
{
  if (a1)
  {
    return 0x6E65644965707974;
  }

  else
  {
    return 0x4972656767697274;
  }
}

uint64_t sub_1C8D1ECE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D1EBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D1ED10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D1F7CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D1ED4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D1F7CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D1ED88@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C8D1EDB4(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C8D1EDB4(uint64_t a1)
{
  if (qword_1EC311198 != -1)
  {
    OUTLINED_FUNCTION_1_12(&qword_1EC311198);
  }

  v1 = sub_1C9062E6C();
  __swift_project_value_buffer(v1, qword_1EC390680);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v3 = v2;

  if (qword_1EC3111A0 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1EC3111A0);
  }

  __swift_project_value_buffer(v1, qword_1EC390698);
  sub_1C9062E5C();
  sub_1C8E2B294();

  return v3;
}

uint64_t sub_1C8D1EED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8D1F280(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8D1EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EC311198 != -1)
  {
    OUTLINED_FUNCTION_1_12(&qword_1EC311198);
  }

  v4 = sub_1C9062E6C();
  __swift_project_value_buffer(v4, qword_1EC390680);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EC3111A0 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1EC3111A0);
  }

  __swift_project_value_buffer(v4, qword_1EC390698);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

uint64_t sub_1C8D1F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC313118;

  return v5;
}

unint64_t sub_1C8D1F140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313128;
  if (!qword_1EC313128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313128);
  }

  return result;
}

unint64_t sub_1C8D1F198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313130;
  if (!qword_1EC313130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313130);
  }

  return result;
}

unint64_t sub_1C8D1F1EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D1F22C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8D1F280(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D1F2D4(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8D1F328(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D1F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313138;
  if (!qword_1EC313138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313138);
  }

  return result;
}

unint64_t sub_1C8D1F280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313140;
  if (!qword_1EC313140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313140);
  }

  return result;
}

unint64_t sub_1C8D1F2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313148;
  if (!qword_1EC313148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313148);
  }

  return result;
}

unint64_t sub_1C8D1F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313150;
  if (!qword_1EC313150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313150);
  }

  return result;
}

uint64_t sub_1C8D1F39C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = __swift_project_value_buffer(v4, a2);
  sub_1C8D1F7CC(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t sub_1C8D1F418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313170, &qword_1C906ADA0);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D1F7CC(v12, v13, v14);
  sub_1C9064E1C();
  v18 = 0;
  sub_1C9064B9C();
  if (!v4)
  {
    v17 = 1;
    sub_1C9064B2C();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C8D1F584(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313160, &qword_1C906AD98);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v9 = a1[3];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1C8D1F7CC(v10, v11, v12);
  sub_1C9064DEC();
  if (!v1)
  {
    v14[15] = 0;
    v9 = sub_1C9064A7C();
    v14[14] = 1;
    sub_1C9064A0C();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1C8D1F724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8D1F584(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C8D1F778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313158;
  if (!qword_1EC313158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313158);
  }

  return result;
}

unint64_t sub_1C8D1F7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313168;
  if (!qword_1EC313168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerOutputTypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8D1F900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313178;
  if (!qword_1EC313178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313178);
  }

  return result;
}

unint64_t sub_1C8D1F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313180;
  if (!qword_1EC313180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313180);
  }

  return result;
}

unint64_t sub_1C8D1F9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC313188;
  if (!qword_1EC313188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313188);
  }

  return result;
}

uint64_t type metadata accessor for ToolRecord(uint64_t a1)
{
  result = qword_1EDA6B210;
  if (!qword_1EDA6B210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8D1FA78(uint64_t a1)
{
  sub_1C8D1FDF8(319, &qword_1EDA69458, MEMORY[0x1E69E7360]);
  v4 = v3;
  if (v1 <= 0x3F)
  {
    sub_1C8D1FBBC(319, v1, v2);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_1C8D1FCA8(319, v6, v7);
    if (v8 > 0x3F)
    {
      return v5;
    }

    sub_1C8D1FD94(319);
    if (v9 > 0x3F)
    {
      return v5;
    }

    sub_1C8D1FDF8(319, &qword_1EDA6E558, MEMORY[0x1E69E6158]);
    if (v10 > 0x3F)
    {
      return v5;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

void sub_1C8D1FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EDA6B318)
  {
    v4 = sub_1C8D1FC54(0, a2, a3);
    v5 = sub_1C8D24DBC(qword_1EDA6C268);
    v6 = type metadata accessor for ToolDatabaseProtobufArray(a1, &type metadata for RuntimeRequirement, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDA6B318);
    }
  }
}

unint64_t sub_1C8D1FC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A78;
  if (!qword_1EDA69A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A78);
  }

  return result;
}

void sub_1C8D1FCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EDA69120)
  {
    v4 = sub_1C8D1FD40(0, a2, a3);
    v5 = sub_1C8D24DBC(&qword_1EDA6C600);
    v6 = type metadata accessor for ToolDatabaseProtobufValue(a1, &type metadata for TypeInstance, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDA69120);
    }
  }
}

unint64_t sub_1C8D1FD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66A38;
  if (!qword_1EDA66A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A38);
  }

  return result;
}

void sub_1C8D1FD94(uint64_t a1)
{
  if (!qword_1EDA6B290[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313198, &unk_1C9074080);
    v1 = sub_1C906464C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDA6B290);
    }
  }
}

void sub_1C8D1FDF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C906464C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C8D1FE44()
{
  v0 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v0, qword_1EDA6E5D8);
  OUTLINED_FUNCTION_10(v0, qword_1EDA6E5D8);
  if (qword_1EDA68DF0 != -1)
  {
    OUTLINED_FUNCTION_5_8(&qword_1EDA68DF0);
  }

  __swift_project_value_buffer(v0, qword_1EDA6E8A8);
  OUTLINED_FUNCTION_10_0();
  v2 = *(v1 + 16);

  return v2(qword_1EDA6E5D8);
}

uint64_t sub_1C8D1FEF4(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0x657079546C6F6F74 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696C696269736976 && a2 == 0xEF7367616C467974;
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
              v11 = a1 == 0xD000000000000014 && 0x80000001C90C9860 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C90C9880 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x63496D6F74737563 && a2 == 0xEA00000000006E6FLL;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x80000001C90C98A0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C90C98C0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001C90C98E0 == a2;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000016 && 0x80000001C90C9900 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9064C2C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1C8D20300(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x657079546C6F6F74;
      break;
    case 3:
      result = 0x7367616C66;
      break;
    case 4:
      result = 0x696C696269736976;
      break;
    case 5:
      result = 0x6D65726975716572;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x63496D6F74737563;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D2047C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131D8, &qword_1C906B090);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D21E8C(v8, v9, v10);
  sub_1C9064E1C();
  OUTLINED_FUNCTION_19_2();
  sub_1C9064B1C();
  if (!v1)
  {
    OUTLINED_FUNCTION_4_6(1);
    v11 = sub_1C9064B2C();
    sub_1C8D2225C(v11, v12, v13);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    v14 = sub_1C9064B8C();
    sub_1C8D222B0(v14, v15, v16);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    v17 = sub_1C9064B8C();
    sub_1C8D22304(v17, v18, v19);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8D22358(&qword_1EC3131E0);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    v20 = sub_1C9064B8C();
    sub_1C8D223C0(v20, v21, v22);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
    OUTLINED_FUNCTION_22_4();
    sub_1C8D22414(v23);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B8C();

    type metadata accessor for ToolRecord(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
    OUTLINED_FUNCTION_22_4();
    sub_1C8D220D8(v24);
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_4_6(9);
    sub_1C9064ADC();
    OUTLINED_FUNCTION_4_6(10);
    sub_1C9064ADC();
    OUTLINED_FUNCTION_19_2();
    sub_1C9064B9C();
    OUTLINED_FUNCTION_4_6(12);
    sub_1C9064B1C();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C8D20854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_142();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B0, &qword_1C906B088);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v48 = type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v47 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1C8D21E8C(v13, v14, v15);
  sub_1C9064DEC();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v44 = a2;
  v45 = v2;
  LOBYTE(v49) = 0;
  OUTLINED_FUNCTION_52_4();
  *v11 = sub_1C90649FC();
  v11[8] = v16 & 1;
  LOBYTE(v49) = 1;
  OUTLINED_FUNCTION_52_4();
  v17 = sub_1C9064A0C();
  *(v11 + 2) = v17;
  *(v11 + 3) = v18;
  v50 = 2;
  sub_1C8D21EE0(v17, v18, v19);
  v20 = OUTLINED_FUNCTION_6_5(&type metadata for ToolTypeDefinition);
  v11[32] = v49;
  v50 = 3;
  sub_1C8D21F34(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_6_5(&type metadata for ToolFlag);
  *(v11 + 5) = v49;
  v50 = 4;
  sub_1C8D21F88(v23, v24, v25);
  OUTLINED_FUNCTION_6_5(&type metadata for ToolVisibilityFlag);
  *(v11 + 6) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  v50 = 5;
  sub_1C8D22358(&qword_1EDA69140);
  OUTLINED_FUNCTION_15_5();
  v26 = sub_1C9064A6C();
  *(v11 + 7) = v49;
  v50 = 6;
  sub_1C8D22084(v26, v27, v28);
  OUTLINED_FUNCTION_6_5(&type metadata for ToolAuthenticationPolicy);
  v11[64] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  v50 = 7;
  OUTLINED_FUNCTION_20_2();
  sub_1C8D22414(v29);
  OUTLINED_FUNCTION_15_5();
  sub_1C9064A6C();
  *(v11 + 9) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  LOBYTE(v49) = 8;
  OUTLINED_FUNCTION_20_2();
  sub_1C8D220D8(v30);
  v31 = v45;
  OUTLINED_FUNCTION_15_5();
  sub_1C90649EC();
  sub_1C8CB2244(v31, &v11[v48[12]], &qword_1EC313190, &unk_1C9074070);
  LOBYTE(v49) = 9;
  OUTLINED_FUNCTION_52_4();
  v32 = sub_1C90649AC();
  v33 = &v11[v48[13]];
  *v33 = v32;
  v33[1] = v34;
  OUTLINED_FUNCTION_13_5(10);
  v35 = sub_1C90649AC();
  v36 = &v11[v48[14]];
  *v36 = v35;
  v36[1] = v37;
  OUTLINED_FUNCTION_13_5(11);
  *&v11[v48[15]] = sub_1C9064A7C();
  OUTLINED_FUNCTION_13_5(12);
  v38 = sub_1C90649FC();
  LOBYTE(v31) = v39;
  v40 = OUTLINED_FUNCTION_26_0();
  v41(v40);
  v42 = &v11[v48[16]];
  *v42 = v38;
  v42[8] = v31 & 1;
  sub_1C8D2219C(v11, v44);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1C8D22200(v11);
}

uint64_t sub_1C8D20E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D1FEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D20EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D202F8();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D20EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D21E8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8D20F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8D21E8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8D20FD4@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EDA68DF0 != -1)
  {
    OUTLINED_FUNCTION_5_8(&qword_1EDA68DF0);
  }

  v4 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8A8);
  v5 = sub_1C9062E5C();
  v7 = sub_1C8E29308(v5, v6);
  v9 = v8;

  *a2 = v7;
  *(a2 + 8) = v9 & 1;
  if (qword_1EDA68E08 != -1)
  {
    OUTLINED_FUNCTION_43_3(&qword_1EDA68E08);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8D8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  *(a2 + 16) = v7;
  *(a2 + 24) = v2;
  if (qword_1EDA68DE0 != -1)
  {
    OUTLINED_FUNCTION_42_3(&qword_1EDA68DE0);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E890);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  OUTLINED_FUNCTION_64();

  v10._countAndFlagsBits = v7;
  v10._object = v2;
  ToolTypeDefinition.init(rawValue:)(v10);
  v11 = v45;
  if (v45 == 5)
  {
    v11 = 3;
  }

  *(a2 + 32) = v11;
  if (qword_1EDA68DF8 != -1)
  {
    OUTLINED_FUNCTION_41_3(&qword_1EDA68DF8);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8C0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  *(a2 + 40) = v7;
  if (qword_1EDA68E30 != -1)
  {
    OUTLINED_FUNCTION_40_3(&qword_1EDA68E30);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E938);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  OUTLINED_FUNCTION_60_1();

  *(a2 + 48) = v7;
  if (qword_1EDA68E38 != -1)
  {
    OUTLINED_FUNCTION_39_3(&qword_1EDA68E38);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E950);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8D279AC(v12);
  OUTLINED_FUNCTION_60_1();

  *(a2 + 56) = v7;
  if (qword_1EDA68E20 != -1)
  {
    OUTLINED_FUNCTION_37_4(&qword_1EDA68E20);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E908);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();

  v13 = sub_1C906497C();

  if (v13 >= 4)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  *(a2 + 64) = v14;
  if (qword_1EDA68E28 != -1)
  {
    OUTLINED_FUNCTION_36_2(&qword_1EDA68E28);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E920);
  v15 = sub_1C9062E5C();
  sub_1C8D277DC(v15, v16, v17, v18, v19, v20, v21, v22, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);

  *(a2 + 72) = v46;
  if (qword_1EDA68E40 != -1)
  {
    OUTLINED_FUNCTION_35_2(&qword_1EDA68E40);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E968);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_64();
  v23 = type metadata accessor for ToolRecord(0);
  sub_1C905CBB0(a2 + v23[12]);

  if (qword_1EDA68E18 != -1)
  {
    OUTLINED_FUNCTION_34_4(&qword_1EDA68E18);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8F0);
  v24 = sub_1C9062E5C();
  v26 = sub_1C8E293EC(v24, v25);
  v28 = v27;

  v29 = (a2 + v23[13]);
  *v29 = v26;
  v29[1] = v28;
  if (qword_1EDA6B240 != -1)
  {
    OUTLINED_FUNCTION_33_2(&qword_1EDA6B240);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6EBC8);
  v30 = sub_1C9062E5C();
  v32 = sub_1C8E293EC(v30, v31);
  v34 = v33;

  v35 = (a2 + v23[14]);
  *v35 = v32;
  v35[1] = v34;
  if (qword_1EDA6B248 != -1)
  {
    OUTLINED_FUNCTION_32_2(&qword_1EDA6B248);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6EBE0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v37 = v36;

  *(a2 + v23[15]) = v37;
  if (qword_1EDA6B230 != -1)
  {
    OUTLINED_FUNCTION_31_3(&qword_1EDA6B230);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6EBB0);
  v38 = sub_1C9062E5C();
  v40 = sub_1C8E29308(v38, v39);
  v42 = v41;

  v44 = a2 + v23[16];
  *v44 = v40;
  *(v44 + 8) = v42 & 1;
  return result;
}

void sub_1C8D21520()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_38();
  if (qword_1EDA68DF0 != -1)
  {
    OUTLINED_FUNCTION_5_8(&qword_1EDA68DF0);
  }

  v4 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8A8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  if (v0[1])
  {
    OUTLINED_FUNCTION_30_2();
    *(&v66 + 1) = 0;
    *&v67 = 0;
  }

  else
  {
    v9 = *v0;
    v10 = MEMORY[0x1E69A01D0];
    v11 = MEMORY[0x1E69E7360];
  }

  *&v66 = v9;
  *(&v67 + 1) = v11;
  v68 = v10;
  OUTLINED_FUNCTION_7_4(v5, v6, v7, v8);
  if (qword_1EDA68E08 != -1)
  {
    OUTLINED_FUNCTION_43_3(&qword_1EDA68E08);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8D8);
  sub_1C9062E5C();
  v13 = v0[2];
  v12 = v0[3];
  v14 = MEMORY[0x1E69E6158];
  v15 = MEMORY[0x1E69A0138];
  *(&v67 + 1) = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69A0138];
  *&v66 = v13;
  *(&v66 + 1) = v12;

  OUTLINED_FUNCTION_46_2();
  if (qword_1EDA68DE0 != -1)
  {
    OUTLINED_FUNCTION_42_3(&qword_1EDA68DE0);
  }

  v16 = 0xE900000000000064;
  OUTLINED_FUNCTION_10(v4, qword_1EDA6E890);
  v17 = sub_1C9062E5C();
  v19 = 0xE900000000000074;
  v20 = 0x6E65746E49707061;
  switch(*(v0 + 32))
  {
    case 1:
      v19 = 0xEA0000000000746ELL;
      v20 = 0x65746E4969726973;
      break;
    case 2:
      v19 = 0xE600000000000000;
      v20 = 0x6E6F69746361;
      break;
    case 3:
      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
      break;
    case 4:
      v19 = 0xE800000000000000;
      v20 = 0x6C6F6F54776F6C66;
      break;
    default:
      break;
  }

  *(&v67 + 1) = v14;
  v68 = v15;
  *&v66 = v20;
  *(&v66 + 1) = v19;
  OUTLINED_FUNCTION_7_4(v17, v18, v17, v18);
  if (qword_1EDA68DF8 != -1)
  {
    OUTLINED_FUNCTION_41_3(&qword_1EDA68DF8);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8C0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v21 = MEMORY[0x1E69E6530];
  v22 = v0[5];
  v23 = MEMORY[0x1E69A0180];
  *(&v67 + 1) = MEMORY[0x1E69E6530];
  v68 = MEMORY[0x1E69A0180];
  *&v66 = v22;
  OUTLINED_FUNCTION_7_4(v24, v25, v26, v27);
  if (qword_1EDA68E30 != -1)
  {
    OUTLINED_FUNCTION_40_3(&qword_1EDA68E30);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E938);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v28 = v0[6];
  *(&v67 + 1) = v21;
  v68 = v23;
  *&v66 = v28;
  OUTLINED_FUNCTION_7_4(v29, v30, v31, v32);
  if (qword_1EDA68E38 != -1)
  {
    OUTLINED_FUNCTION_39_3(&qword_1EDA68E38);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E950);
  sub_1C9062E5C();
  v33 = v0[7];
  *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  v68 = sub_1C8D24EA8(qword_1EDA69148);
  *&v66 = v33;

  OUTLINED_FUNCTION_46_2();
  if (qword_1EDA68E20 != -1)
  {
    OUTLINED_FUNCTION_37_4(&qword_1EDA68E20);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E908);
  v34 = sub_1C9062E5C();
  v36 = 0x656E696665646E75;
  switch(*(v0 + 64))
  {
    case 1:
      v16 = 0xE400000000000000;
      v36 = 1701736302;
      break;
    case 2:
      v36 = 0xD00000000000001ELL;
      v16 = 0x80000001C90C91D0;
      break;
    case 3:
      v16 = 0x80000001C90C91F0;
      v36 = 0xD000000000000027;
      break;
    default:
      break;
  }

  *(&v67 + 1) = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69A0138];
  *&v66 = v36;
  *(&v66 + 1) = v16;
  OUTLINED_FUNCTION_7_4(v34, v35, v34, v35);
  if (qword_1EDA68E28 != -1)
  {
    OUTLINED_FUNCTION_36_2(&qword_1EDA68E28);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E920);
  sub_1C9062E5C();
  v37 = v0[9];
  *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  OUTLINED_FUNCTION_23_0();
  v68 = sub_1C8D24EA8(v38);
  *&v66 = v37;

  OUTLINED_FUNCTION_46_2();
  if (qword_1EDA68E40 != -1)
  {
    OUTLINED_FUNCTION_35_2(&qword_1EDA68E40);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E968);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_64();
  v39 = type metadata accessor for ToolRecord(0);
  sub_1C8D24768(v0 + v39[12], v1);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313198, &unk_1C9074080);
  if (__swift_getEnumTagSinglePayload(v1, 1, v40) == 1)
  {
    sub_1C8D16D78(v1, &qword_1EC313190, &unk_1C9074070);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    *(&v67 + 1) = v40;
    OUTLINED_FUNCTION_23_0();
    v68 = sub_1C8D24EA8(v41);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
    sub_1C8CB2244(v1, boxed_opaque_existential_1, &qword_1EC313198, &unk_1C9074080);
  }

  sub_1C9062BFC();
  if (qword_1EDA68E18 != -1)
  {
    OUTLINED_FUNCTION_34_4(&qword_1EDA68E18);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6E8F0);
  sub_1C9062E5C();
  v43 = (v0 + v39[13]);
  v44 = v43[1];
  if (v44)
  {
    v45 = *v43;
    v46 = MEMORY[0x1E69A0138];
    v47 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
    *&v67 = 0;
  }

  *&v66 = v45;
  *(&v66 + 1) = v44;
  *(&v67 + 1) = v47;
  v68 = v46;

  OUTLINED_FUNCTION_66_1();
  if (qword_1EDA6B240 != -1)
  {
    OUTLINED_FUNCTION_33_2(&qword_1EDA6B240);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6EBC8);
  sub_1C9062E5C();
  v48 = (v0 + v39[14]);
  v49 = v48[1];
  if (v49)
  {
    v50 = *v48;
    v51 = MEMORY[0x1E69A0138];
    v52 = MEMORY[0x1E69E6158];
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
    *&v67 = 0;
  }

  *&v66 = v50;
  *(&v66 + 1) = v49;
  *(&v67 + 1) = v52;
  v68 = v51;

  OUTLINED_FUNCTION_66_1();
  if (qword_1EDA6B248 != -1)
  {
    OUTLINED_FUNCTION_32_2(&qword_1EDA6B248);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6EBE0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v53 = *(v0 + v39[15]);
  v68 = MEMORY[0x1E69A01D0];
  *(&v67 + 1) = MEMORY[0x1E69E7360];
  *&v66 = v53;
  OUTLINED_FUNCTION_7_4(v54, v55, v56, v57);
  if (qword_1EDA6B230 != -1)
  {
    OUTLINED_FUNCTION_31_3(&qword_1EDA6B230);
  }

  OUTLINED_FUNCTION_10(v4, qword_1EDA6EBB0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v62 = (v0 + v39[16]);
  if (v62[1])
  {
    OUTLINED_FUNCTION_30_2();
    *(&v66 + 1) = 0;
    *&v67 = 0;
  }

  else
  {
    v63 = *v62;
    v64 = MEMORY[0x1E69A01D0];
    v65 = MEMORY[0x1E69E7360];
  }

  *&v66 = v63;
  *(&v67 + 1) = v65;
  v68 = v64;
  OUTLINED_FUNCTION_7_4(v58, v59, v60, v61);
  OUTLINED_FUNCTION_163();
}

unint64_t sub_1C8D21CC4(void *a1)
{
  a1[1] = sub_1C8D24DBC(&unk_1EC3131A0);
  a1[2] = sub_1C8D24DBC(&unk_1EDA68DD0);
  a1[3] = sub_1C8D24DBC(&unk_1EDA68DC0);
  result = sub_1C8D24DBC(&unk_1EC3131A8);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8D21DA4(uint64_t a1)
{
  result = sub_1C8D24DBC(&unk_1EDA68DD0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8D21E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B260;
  if (!qword_1EDA6B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B260);
  }

  return result;
}

unint64_t sub_1C8D21EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B340;
  if (!qword_1EDA6B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B340);
  }

  return result;
}

unint64_t sub_1C8D21F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B278;
  if (!qword_1EDA6B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B278);
  }

  return result;
}

unint64_t sub_1C8D21F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66490;
  if (!qword_1EDA66490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66490);
  }

  return result;
}

unint64_t sub_1C8D21FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CCE8;
  if (!qword_1EDA6CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCE8);
  }

  return result;
}

unint64_t sub_1C8D22030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A68;
  if (!qword_1EDA69A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A68);
  }

  return result;
}

unint64_t sub_1C8D22084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA691D0;
  if (!qword_1EDA691D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA691D0);
  }

  return result;
}

unint64_t sub_1C8D220D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313198, &unk_1C9074080);
    v3 = sub_1C8D24DBC(&unk_1EDA68EC0);
    v11 = sub_1C8D24DBC(&unk_1EDA68EC8);
    result = OUTLINED_FUNCTION_62_4(v11, v4, v5, v6, v7, v8, v9, v10, v3);
    atomic_store(result, v1);
  }

  return result;
}