unint64_t sub_1C8DFD824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3160C0;
  if (!qword_1EC3160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160C0);
  }

  return result;
}

unint64_t sub_1C8DFD87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3160C8;
  if (!qword_1EC3160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160C8);
  }

  return result;
}

unint64_t sub_1C8DFD8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3160D0;
  if (!qword_1EC3160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160D0);
  }

  return result;
}

__n128 AssistantSchemaIdentifier.init(kind:version:domain:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a3[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = v6;
  a6[2].n128_u64[1] = a4;
  a6[3].n128_u64[0] = a5;
  return result;
}

uint64_t AssistantSchemaIdentifier.kind.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;

  return v6;
}

__n128 AssistantSchemaIdentifier.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t AssistantSchemaIdentifier.domain.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 40);

  return v6;
}

uint64_t AssistantSchemaIdentifier.init(kind:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = *a3;
  *(a4 + 32) = v4;
  strcpy((a4 + 40), "UnknownDomain");
  *(a4 + 54) = -4864;
  return result;
}

uint64_t static AssistantSchemaIdentifier.for (_:)@<X0>(uint64_t *x8_0@<X8>)
{
  return sub_1C8DFDA9C(MEMORY[0x1E69AC130], x8_0);
}

{
  return sub_1C8DFDA9C(MEMORY[0x1E69AC120], x8_0);
}

{
  return sub_1C8DFDA9C(MEMORY[0x1E69AC110], x8_0);
}

uint64_t sub_1C8DFDA9C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  sub_1C906308C();
  OUTLINED_FUNCTION_11();
  v36 = v5;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C90631AC();
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  (a1)(v14);
  v17 = sub_1C906317C();
  v34 = v18;
  v35 = v17;
  v19 = *(v9 + 8);
  v20 = v16;
  v21 = v38;
  v22 = v19(v20, v38);
  a1(v22);
  sub_1C906319C();
  v19(v12, v21);
  v33 = sub_1C906305C();
  v32 = sub_1C906306C();
  v23 = sub_1C906307C();
  v24 = (*(v36 + 8))(v7, v37);
  a1(v24);
  v25 = sub_1C906318C();
  v27 = v26;
  result = v19(v12, v38);
  v29 = v34;
  *a2 = v35;
  a2[1] = v29;
  v30 = v32;
  a2[2] = v33;
  a2[3] = v30;
  a2[4] = v23;
  a2[5] = v25;
  a2[6] = v27;
  return result;
}

uint64_t static AssistantSchemaIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v13 = sub_1C9064C2C();
  result = 0;
  if (v13)
  {
    v15 = v2 == v8 && v4 == v7;
    if (v15 && v3 == v10)
    {
LABEL_22:
      if (v5 == v9 && v6 == v11)
      {
        return 1;
      }

      else
      {

        return sub_1C9064C2C();
      }
    }
  }

  return result;
}

uint64_t sub_1C8DFDDD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
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

uint64_t sub_1C8DFDEDC(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6E69616D6F64;
}

uint64_t sub_1C8DFDF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DFDDD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DFDF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DFE1A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DFDF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DFE1A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AssistantSchemaIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160D8, &qword_1C9083E80);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = v1[2];
  v21 = v1[3];
  v22 = v9;
  v10 = v1[4];
  v19[2] = v1[5];
  v20 = v10;
  v19[1] = v1[6];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFE1A0(v11, v12, v13);
  sub_1C9064E1C();
  LOBYTE(v24) = 0;
  v14 = v23;
  v15 = sub_1C9064B2C();
  if (!v14)
  {
    v24 = v22;
    v25 = v21;
    v26 = v20;
    v27 = 1;
    sub_1C8DFE1F4(v15, v16, v17);
    sub_1C9064B8C();
    LOBYTE(v24) = 2;
    sub_1C9064B2C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C8DFE1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63070;
  if (!qword_1EDA63070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63070);
  }

  return result;
}

unint64_t sub_1C8DFE1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60858;
  if (!qword_1EDA60858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60858);
  }

  return result;
}

uint64_t AssistantSchemaIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v2);
  MEMORY[0x1CCA82830](v3);
  MEMORY[0x1CCA82830](v4);

  return sub_1C9063FBC();
}

uint64_t AssistantSchemaIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_1_45();
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v0);
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t AssistantSchemaIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160E0, &qword_1C9083E88);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFE1A0(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  v14 = OUTLINED_FUNCTION_2_35();
  v16 = v15;
  v33 = 1;
  sub_1C8DFE658(v14, v15, v17);
  sub_1C9064A6C();
  v28 = v31;
  v29 = v30;
  v27 = v32;
  LOBYTE(v30) = 2;
  v18 = OUTLINED_FUNCTION_2_35();
  v21 = v20;
  v22 = *(v7 + 8);
  v26 = v18;
  v22(v10, v5);
  *a2 = v14;
  a2[1] = v16;
  v23 = v28;
  a2[2] = v29;
  a2[3] = v23;
  v24 = v26;
  a2[4] = v27;
  a2[5] = v24;
  a2[6] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8DFE5C4()
{
  OUTLINED_FUNCTION_1_45();
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v0);
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

unint64_t sub_1C8DFE658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63218;
  if (!qword_1EDA63218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63218);
  }

  return result;
}

unint64_t sub_1C8DFE6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63058;
  if (!qword_1EDA63058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63058);
  }

  return result;
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

uint64_t sub_1C8DFE720(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C8DFE760(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AssistantSchemaIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DFE89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3160E8;
  if (!qword_1EC3160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160E8);
  }

  return result;
}

unint64_t sub_1C8DFE8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63060;
  if (!qword_1EDA63060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63060);
  }

  return result;
}

unint64_t sub_1C8DFE94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63068;
  if (!qword_1EDA63068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63068);
  }

  return result;
}

uint64_t sub_1C8DFE9A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1C8DFE9E0(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8DFEA50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
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

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_1C8DFEB6C(char a1)
{
  if (!a1)
  {
    return 0x72656767697274;
  }

  if (a1 == 1)
  {
    return 0x617A696C61636F6CLL;
  }

  return 0x6574656D61726170;
}

uint64_t sub_1C8DFEBD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160F0, &qword_1C9084250);
  MEMORY[0x1EEE9AC00](v24);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFF048(v5, v6, v7);
  v8 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26[0]) = 0;
  sub_1C8DFF09C(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_1_46(&type metadata for TriggerDefinitionRecord, v26);
  v19 = v29;
  v20 = v27;
  v22 = v30;
  v18 = v31;
  v21 = v32;
  v23 = v33;
  v39 = v28;
  v41 = 1;
  sub_1C8DFF0F0(v11, v12, v13);
  OUTLINED_FUNCTION_1_46(&type metadata for TriggerDefinitionLocalizationRecord, &v41);
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316110, &qword_1C9084258);
  v40 = 2;
  sub_1C8DFF198();
  sub_1C9064A6C();
  v14 = OUTLINED_FUNCTION_0_2();
  v15(v14);
  v16 = v36;
  v26[0] = v20;
  v25 = v39;
  LOBYTE(v26[1]) = v39;
  v26[2] = v19;
  v26[3] = v22;
  v26[4] = v18;
  v26[5] = v21;
  v26[6] = v23;
  memcpy(&v26[7], __dst, 0x48uLL);
  v26[16] = v36;
  memcpy(a2, v26, 0x88uLL);
  sub_1C8D500C8(v26, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v20;
  v28 = v25;
  v29 = v19;
  v30 = v22;
  v31 = v18;
  v32 = v21;
  v33 = v23;
  memcpy(v34, __dst, sizeof(v34));
  v35 = v16;
  return sub_1C8D50124(&v27);
}

uint64_t sub_1C8DFEF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DFEA50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DFEF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DFF048(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8DFEF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8DFF048(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8DFEFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DFF270(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C8DFF048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3160F8;
  if (!qword_1EC3160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160F8);
  }

  return result;
}

unint64_t sub_1C8DFF09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316100;
  if (!qword_1EC316100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316100);
  }

  return result;
}

unint64_t sub_1C8DFF0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316108;
  if (!qword_1EC316108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316108);
  }

  return result;
}

unint64_t sub_1C8DFF198()
{
  result = qword_1EC316118;
  if (!qword_1EC316118)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316110, &qword_1C9084258);
    sub_1C8DFF21C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316118);
  }

  return result;
}

unint64_t sub_1C8DFF21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316120;
  if (!qword_1EC316120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316120);
  }

  return result;
}

unint64_t sub_1C8DFF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316128;
  if (!qword_1EC316128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316128);
  }

  return result;
}

uint64_t sub_1C8DFF2C4@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x88uLL);
  v3 = __dst[2];
  v4 = __dst[3];
  v5 = __dst[4];
  v6 = __dst[5];
  v7 = __dst[6];
  v9 = __dst[10];
  v8 = __dst[11];
  v34 = __dst[14];
  v10 = __dst[16];
  v11 = *(__dst[16] + 16);
  if (v11)
  {
    v27 = __dst[10];
    v29 = __dst[2];
    v30 = __dst[5];
    v31 = __dst[6];
    v32 = __dst[4];
    v33 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    v28 = __dst[3];
    v12 = __dst[15];

    v26 = v8;

    v25 = v12;

    sub_1C8D0971C(0, v11, 0);
    v13 = v39;
    v14 = (v10 + 168);
    do
    {
      v15 = *(v14 - 17);
      v16 = *(v14 - 15);
      v37 = *(v14 - 16);
      v38 = *(v14 - 12);
      v17 = *(v14 - 2);
      v18 = *v14;
      v35 = *(v14 - 1);
      v36 = *(v14 - 3);
      v19 = *(v39 + 16);
      v20 = *(v39 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_1C8D0971C((v20 > 1), v19 + 1, 1);
      }

      *(v39 + 16) = v19 + 1;
      v21 = v39 + 136 * v19;
      *(v21 + 32) = v37;
      *(v21 + 40) = v16;
      *(v21 + 48) = v36;
      *(v21 + 56) = v17;
      *(v21 + 64) = v35;
      *(v21 + 72) = v18;
      *(v21 + 80) = v38;
      *(v21 + 88) = v15;
      *(v21 + 96) = MEMORY[0x1E69E7CC0];
      *(v21 + 104) = 0u;
      *(v21 + 120) = 0u;
      *(v21 + 136) = 0u;
      v14 += 18;
      *(v21 + 152) = 0u;
      --v11;
    }

    while (v11);
    v5 = v32;
    a2 = v33;
    v6 = v30;
    v7 = v31;
    v4 = v28;
    v3 = v29;
    v22 = v26;
    v9 = v27;
    v23 = v25;
  }

  else
  {
    v23 = __dst[15];

    v22 = v8;
    v13 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1C8D50124(__dst);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v9;
  a2[3] = v22;
  a2[4] = v34;
  a2[5] = v23;
  a2[6] = v13;
  a2[7] = v6;
  a2[8] = v7;
  a2[9] = v5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedTrigger.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DFF5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316130;
  if (!qword_1EC316130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316130);
  }

  return result;
}

unint64_t sub_1C8DFF610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316138;
  if (!qword_1EC316138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316138);
  }

  return result;
}

unint64_t sub_1C8DFF668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316140;
  if (!qword_1EC316140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316140);
  }

  return result;
}

uint64_t sub_1C8DFF6BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C8D09D9C(0, v1, 0);
  v2 = v26;
  result = sub_1C8D3F274();
  v7 = result;
  v8 = v25;
  v9 = 0;
  v10 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_25;
      }

      v12 = *(*(a1 + 48) + v7);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v5;
        v23 = v6;
        result = sub_1C8D09D9C((v13 > 1), v14 + 1, 1);
        v6 = v23;
        v5 = v24;
        v10 = a1 + 56;
        v8 = v25;
      }

      *(v26 + 16) = v14 + 1;
      *(v26 + v14 + 32) = 0x20005080403uLL >> (8 * v12);
      if (v6)
      {
        goto LABEL_29;
      }

      v15 = 1 << *(a1 + 32);
      if (v7 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 64 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1C8CAF698(v7, v5, 0);
            v10 = a1 + 56;
            v8 = v25;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_1C8CAF698(v7, v5, 0);
        v10 = a1 + 56;
        v8 = v25;
      }

LABEL_19:
      if (++v9 == v8)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v15;
      if (v15 < 0)
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

void sub_1C8DFF934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v29;
    v6 = sub_1C8D3F274();
    v7 = 0;
    v28 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v27 = v5;
        v25 = v7;
        v26 = v4;
        v9 = SystemTypeProtocol.Identifier.rawValue.getter();
        v11 = v10;
        v12 = *(v3 + 16);
        if (v12 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v3 + 16) = v12 + 1;
        v13 = v3 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_30;
        }

        v2 = v24;
        v14 = 1 << *(v24 + 32);
        if (v6 >= v14)
        {
          goto LABEL_27;
        }

        v15 = *(v28 + 8 * v8);
        if ((v15 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v24 + 36) != v26)
        {
          goto LABEL_29;
        }

        v16 = v15 & (-2 << (v6 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v3;
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v14 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C8CAF698(v6, v26, 0);
              v14 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v26, 0);
LABEL_19:
          v3 = v17;
        }

        v7 = v25 + 1;
        if (v25 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v24 + 36);
        v6 = v14;
        if (v14 < 0)
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
}

uint64_t sub_1C8DFFB9C(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_45_12();

      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_63_7();
      sub_1C8DFFB9C(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v10;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316320, &qword_1C9084E90);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v10;
  }
}

uint64_t sub_1C8DFFCB8(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_45_12();

      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_63_7();
      sub_1C8DFFCB8(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v10;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312C98, &qword_1C9069590);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();

      OUTLINED_FUNCTION_20_13();
      return v10;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_38_11();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v10;
  }
}

uint64_t sub_1C8DFFDDC(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_45_12();
      v13 = sub_1C8E0682C(v10, v11, v12);
      OUTLINED_FUNCTION_65_5(v13, v14, v15, v16, v17, v18);
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_63_7();
      sub_1C8DFFDDC(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v19;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316310, &qword_1C9084E88);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v19;
  }
}

uint64_t sub_1C8DFFEF4(unint64_t a1)
{
  v5 = a1 >> 61;
  result = 7958113;
  switch(v5)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      __dst[0] = v10;
      __dst[1] = 0xE300000000000000;
      v14 = sub_1C8D3ED80(v11, v12, v13);
      OUTLINED_FUNCTION_65_5(v14, v15, v16, v17, v18, v19);
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      __dst[0] = v20;
      __dst[1] = v21;

      v22 = sub_1C8DFFEF4(v1);
      MEMORY[0x1CCA81A90](v22);

      OUTLINED_FUNCTION_340();

      goto LABEL_9;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      __dst[0] = v8;
      __dst[1] = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316358, &qword_1C9084EB0);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      MEMORY[0x1CCA81A90](v2, v3);

      OUTLINED_FUNCTION_340();
LABEL_9:
      result = __dst[0];
      break;
    case 5uLL:
      return result;
    default:
      memcpy(__dst, (a1 + 16), 0x61uLL);
      v25 = 2650985;
      v26 = 0xE300000000000000;
      memcpy(v24, __dst, sizeof(v24));
      sub_1C8CC1340(__dst, v23);
      sub_1C8CC1340(__dst, v23);
      v7 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v7);

      OUTLINED_FUNCTION_340();
      sub_1C8CC15FC(__dst);
      result = v25;
      break;
  }

  return result;
}

uint64_t sub_1C8E00098(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_45_12();
      v13 = sub_1C8E06880(v10, v11, v12);
      OUTLINED_FUNCTION_65_5(v13, v14, v15, v16, v17, v18);
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_63_7();
      sub_1C8E00098(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v19;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316328, &qword_1C9084E98);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();

      OUTLINED_FUNCTION_20_13();
      return v19;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_38_11();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v19;
  }
}

uint64_t sub_1C8E001B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 >> 61;
  result = 7958113;
  switch(v6)
  {
    case 1uLL:
      v22 = 2649705;
      sub_1C8D3AEB8(7958113, 0xE300000000000000, a3);

      v11 = sub_1C906433C();
      goto LABEL_9;
    case 2uLL:
      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = 678719342;

      v18 = sub_1C8E001B8(v13, v14, v15, v16, v17);
      MEMORY[0x1CCA81A90](v18);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      goto LABEL_6;
    case 3uLL:
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 677670497;
      goto LABEL_8;
    case 4uLL:
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 2650735;
LABEL_8:
      v22 = v10;

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316360, &qword_1C9084EB8);
      v11 = MEMORY[0x1CCA81C60](v9, v19);
LABEL_9:
      v20 = v11;
      v21 = v12;

      MEMORY[0x1CCA81A90](v20, v21);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      return v22;
    case 5uLL:
      return result;
    default:
      v22 = 2650985;
      swift_retain_n();
      v8 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v8);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
LABEL_6:

      return v22;
  }
}

uint64_t sub_1C8E003A8(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_45_12();
      v13 = sub_1C8E06928(v10, v11, v12);
      OUTLINED_FUNCTION_65_5(v13, v14, v15, v16, v17, v18);
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_63_7();
      sub_1C8E003A8(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v19;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316348, &qword_1C9084EA8);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v19;
  }
}

uint64_t sub_1C8E004C0(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_45_12();
      v13 = sub_1C8E068D4(v10, v11, v12);
      OUTLINED_FUNCTION_65_5(v13, v14, v15, v16, v17, v18);
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_63_7();
      sub_1C8E004C0(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v19;
    case 3uLL:
      OUTLINED_FUNCTION_6_20();
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30();
LABEL_7:
      OUTLINED_FUNCTION_49_7(v4, v5, v6, v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316338, &qword_1C9084EA0);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v19;
  }
}

uint64_t static TypeDefinitionQuery.local()@<X0>(void *a1@<X8>)
{
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1EC311368);
  }

  v2 = qword_1EC316148;
  OUTLINED_FUNCTION_2();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = qword_1EC311370;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_20(&qword_1EC311370);
  }

  OUTLINED_FUNCTION_22_18();
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v2;
  a1[3] = v6;
  a1[4] = v3;
  a1[5] = v5;
  v9 = OUTLINED_FUNCTION_12_16(v7, v8);

  return j__swift_bridgeObjectRetain(v9, v10, v11, v12, v13, v14);
}

uint64_t TypeDefinitionQuery.rowID.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TypeDefinitionQuery.typeID.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.kind.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.sourceContainer.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.sourceDevice.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.coercibleToType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = j__swift_bridgeObjectRelease(*(v1 + 40));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t TypeDefinitionQuery.systemProtocol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = j__swift_bridgeObjectRelease(*(v1 + 56));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t TypeDefinitionQuery.assistantVersionRange.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8E05190(v2, v3);
}

uint64_t TypeDefinitionQuery.assistantVersionRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8CC7E94(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

uint64_t static TypeDefinitionQuery.all()@<X0>(uint64_t a5@<X8>)
{
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1EC311368);
  }

  v6 = qword_1EC316148;
  v7 = qword_1EC311370;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_20(&qword_1EC311370);
  }

  v8 = OUTLINED_FUNCTION_22_18();
  *(a5 + 16) = v6;
  *(a5 + 24) = v8;
  *(a5 + 40) = MEMORY[0x1E69E7CD0];
  v11 = OUTLINED_FUNCTION_12_16(v9, v10);

  return j__swift_bridgeObjectRetain(v11, v12, v13, v14, v15, v16);
}

uint64_t static TypeDefinitionQuery.from(device:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1EC311368);
  }

  v5 = qword_1EC316148;
  OUTLINED_FUNCTION_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = qword_1EC311370;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_20(&qword_1EC311370);
  }

  OUTLINED_FUNCTION_22_18();
  v8 = MEMORY[0x1E69E7CD0];
  a2[2] = v5;
  a2[3] = v9;
  a2[4] = v6;
  a2[5] = v8;
  v12 = OUTLINED_FUNCTION_12_16(v10, v11);

  return j__swift_bridgeObjectRetain(v12, v13, v14, v15, v16, v17);
}

void TypeDefinitionQuery.shouldFilterOut(model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 72);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    switch(*(a1 + 96))
    {
      case 1:
      case 2:

        break;
      default:
        break;
    }

    v8 = *(v7 + 16);

    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v11 = v7 + (v9 << 6);
    while (v8 != v9)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v12 = (v11 + 64);
      ++v9;
      v13 = *(v11 + 88);
      v11 += 64;
      if (!v13)
      {
        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v29 = *v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8D01378();
          v10 = v19;
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_176(v16);
          sub_1C8D01378();
          v10 = v20;
        }

        v10[2] = v17 + 1;
        v18 = &v10[3 * v17];
        v18[4] = v14;
        v18[5] = v15;
        v18[6] = v29;
        goto LABEL_5;
      }
    }

    v21 = v10 + 6;
    v22 = -v10[2];
    v23 = -1;
    do
    {
      if (v22 + v23 == -1)
      {
        break;
      }

      if (++v23 >= v10[2])
      {
        goto LABEL_21;
      }

      v24 = v21 + 3;
      v25 = *v21;
      v30 = *(v21 - 1);
      v31 = v25;
      v26 = v6(&v30);
      v21 = v24;
    }

    while ((v26 & 1) != 0);
    v27 = OUTLINED_FUNCTION_94();
    sub_1C8CC7E94(v27, v28);
  }
}

uint64_t TypeDefinitionQuery.where(_:_:)@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(a3, v3, 0x58uLL);
  v8[11] = v5;
  v8[12] = v6;
  sub_1C8E051A0(__dst, v8);
  sub_1C8E05190(v5, v6);
  return swift_setAtWritableKeyPath();
}

uint64_t TypeDefinitionQuery.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  sub_1C906478C();
  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90]();
  v7 = sub_1C8DFFCB8(v2);
  MEMORY[0x1CCA81A90](v7);

  MEMORY[0x1CCA81A90](0x3A44496570797420, 0xE900000000000020);
  v12 = sub_1C8E001B8(v1, v8, v9, v10, v11);
  MEMORY[0x1CCA81A90](v12);

  MEMORY[0x1CCA81A90](0x203A646E696B20, 0xE700000000000000);
  if (*(v4 + 16))
  {
    OUTLINED_FUNCTION_47_8();
    v27 = v13;
    v28 = v14;
    sub_1C8E051D8(v15, v16, v17);
    v18 = sub_1C906435C();
    MEMORY[0x1CCA81A90](v18);

    v19 = v27;
    v20 = v28;
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 7958113;
  }

  MEMORY[0x1CCA81A90](v19, v20);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90](0xD000000000000012);
  v21 = sub_1C8DFFEF4(v3);
  MEMORY[0x1CCA81A90](v21);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90](0xD000000000000012);
  v22 = CoercibleTypePropertyFilter.debugDescription.getter();
  MEMORY[0x1CCA81A90](v22);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90]();
  v24 = sub_1C8E0505C(v5, v6, v23);
  MEMORY[0x1CCA81A90](v24);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316168, &qword_1C9084380);
  v25 = sub_1C906462C();
  MEMORY[0x1CCA81A90](v25);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t TypeKindPropertyFilter.debugDescription.getter()
{
  if (!*(*v0 + 16))
  {
    return 7958113;
  }

  OUTLINED_FUNCTION_47_8();
  v7 = v1;
  sub_1C8E051D8(v2, v3, v4);
  v5 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v5);

  return v7;
}

uint64_t CoercibleTypePropertyFilter.debugDescription.getter()
{
  if ((*(v0 + 8) & 1) == 0)
  {
    sub_1C8D2B12C();
    if (v1)
    {
      return 7958113;
    }
  }

  OUTLINED_FUNCTION_47_8();
  v5 = v3;
  sub_1C9063C4C();
  sub_1C8E0522C();
  OUTLINED_FUNCTION_94();
  v4 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v4);

  OUTLINED_FUNCTION_340();
  return v5;
}

uint64_t sub_1C8E01160(const void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  memcpy(__dst, a1, sizeof(__dst));
  (*(v7 + 16))(v11, a3, v5);
  v12 = sub_1C902E158();
  (*(v7 + 8))(a3, v5);
  return v12;
}

uint64_t sub_1C8E01294@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __src, sizeof(v6));
  sub_1C8D16AE0(__dst, &v5);
  return sub_1C8D15484(v6, a2);
}

uint64_t sub_1C8E01308(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = v2 + *(*v2 + 136);
  memcpy(__dst, v12, sizeof(__dst));
  OUTLINED_FUNCTION_2();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  memcpy(v19, (v12 + 8), sizeof(v19));

  sub_1C8E051A0(__dst, &v20);

  v18 = v13;
  v14 = *v2;
  v15 = v2 + *(*v2 + 144);
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v20 = v16;
  v21 = v15;
  (*(v7 + 16))(v11, v2 + *(v14 + 152), v5);
  type metadata accessor for TypeDefinitionQueryRequest(0);
  swift_allocObject();
  return sub_1C8E01160(&v18, &v20, v11);
}

void sub_1C8E014B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315200, &unk_1C9084E10);
  OUTLINED_FUNCTION_11();
  v173 = v23;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  v172 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313288, &qword_1C906B0C0);
  OUTLINED_FUNCTION_11();
  v170 = v27;
  v171 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v168 = v28;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_147();
  v169 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3132A0, &unk_1C9084E20);
  OUTLINED_FUNCTION_11();
  v165 = v32;
  v166 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v34);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315210, &qword_1C907C0A0);
  OUTLINED_FUNCTION_11();
  v167 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v38);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133D0, &qword_1C906B560);
  OUTLINED_FUNCTION_11();
  v163 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v42);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315218, &qword_1C907C0A8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v44);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315228, &unk_1C9084E30);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v46);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  OUTLINED_FUNCTION_11();
  v157 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v50);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11();
  v181 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_216();
  v175 = v55;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v59);
  v60 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  OUTLINED_FUNCTION_11();
  v179 = v62;
  v180 = v63;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_147();
  v176 = v66;
  v67 = v20 + *(*v20 + 136);
  v68 = *v67;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  v69 = sub_1C9062E6C();
  __swift_project_value_buffer(v69, qword_1EC390958);
  v70 = OUTLINED_FUNCTION_125();
  sub_1C8E05EB0(v70, v71, v68, v72);
  v73 = OUTLINED_FUNCTION_125();
  sub_1C8E05EB0(v73, v74, v75, v76);
  v182 = *(v67 + 16);

  sub_1C8E02848();

  if (!v21)
  {
    v155 = v22;
    v77 = *(v67 + 64);
    v182 = *(v67 + 56);
    v183 = v77;
    v78 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRetain(v78, v79, v80, v81, v82, v83);
    sub_1C8E02AA8();
    v84 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRelease(v84);
    v85 = *(v67 + 48);
    v182 = *(v67 + 40);
    v183 = v85;
    v86 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRetain(v86, v87, v88, v89, v90, v91);
    sub_1C8E036E0();
    v92 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRelease(v92);
    if (qword_1EC3112F0 != -1)
    {
      swift_once();
    }

    v93 = __swift_project_value_buffer(v179, qword_1EC3909E8);
    (*(v180 + 16))(v176, v93, v179);
    sub_1C8D5ED2C(*(v67 + 32), &v182);
    if (qword_1EDA69640 != -1)
    {
      swift_once();
    }

    v94 = __swift_project_value_buffer(v69, qword_1EDA6EAF0);
    sub_1C8E061A0(v176, v94);

    sub_1C8D5F064(*(v67 + 24), &v182);
    sub_1C8E294C8();
    OUTLINED_FUNCTION_116();
    sub_1C8E064C4(v95, v96);

    v97 = OUTLINED_FUNCTION_23();
    v98(v97, v60);
    if (qword_1EDA69688 != -1)
    {
      swift_once();
    }

    v100 = qword_1EDA6EB98;
    v99 = unk_1EDA6EBA0;
    sub_1C906206C();
    OUTLINED_FUNCTION_123();
    v100();

    OUTLINED_FUNCTION_14_0();
    sub_1C8D28184(v101, &qword_1EC3133C8, &unk_1C909F250, v102);
    OUTLINED_FUNCTION_40_10();
    sub_1C9062A1C();
    v103 = *(v157 + 8);
    v103(v69, v158);
    sub_1C8D28184(&qword_1EC316238, &qword_1EC315238, &qword_1C907C0B0, MEMORY[0x1E699FF50]);
    OUTLINED_FUNCTION_13_3();
    sub_1C8D28184(v104, &qword_1EC3133C8, &unk_1C909F250, v105);
    sub_1C906295C();
    v103(v99, v158);
    sub_1C8D28184(&qword_1EC316240, &qword_1EC315238, &qword_1C907C0B0, MEMORY[0x1E699FF38]);
    OUTLINED_FUNCTION_40_10();
    sub_1C9062A1C();
    v106 = *(v180 + 8);
    v106(v156, v179);
    sub_1C8D28184(&qword_1EC316248, &qword_1EC316230, &unk_1C9084E40, MEMORY[0x1E699FF78]);
    sub_1C8D28184(&qword_1EC316250, &qword_1EC315238, &qword_1C907C0B0, MEMORY[0x1E699FF30]);
    sub_1C906296C();
    v107 = *(v181 + 8);
    v108 = OUTLINED_FUNCTION_332();
    v107(v108);
    v106(v99, v179);
    if (qword_1EC3112F8 != -1)
    {
      OUTLINED_FUNCTION_15_16(&qword_1EC3112F8);
    }

    OUTLINED_FUNCTION_10(v160, qword_1EC390A00);
    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v109, v110, v111, v112);
    OUTLINED_FUNCTION_37_12();
    sub_1C9062B1C();
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    OUTLINED_FUNCTION_296();
    v113(v159, v160);
    v114 = OUTLINED_FUNCTION_332();
    v107(v114);
    if (qword_1EC311300 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_10(v161, qword_1EC390A18);
    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v115, v116, v117, v118);
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_123();
    sub_1C9062B1C();
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    OUTLINED_FUNCTION_296();
    v119(v106, v161);
    v120 = OUTLINED_FUNCTION_77_3();
    v107(v120);
    v174 = v107;
    if (qword_1EC311310 != -1)
    {
      swift_once();
    }

    v121 = qword_1EC390A48;
    sub_1C906206C();
    OUTLINED_FUNCTION_123();
    v121();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_80_2(v122, v123, v124, v125);
    sub_1C9062A1C();
    v126 = *(v163 + 8);
    v126(v106, v164);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_80_2(v127, v128, v129, v130);
    sub_1C906295C();
    v126(v162, v164);
    (v107)(v175, v178);
    if (qword_1EC311318 != -1)
    {
      swift_once();
    }

    v131 = __swift_project_value_buffer(v177, qword_1EC390A58);
    if (qword_1EC311278 != -1)
    {
      v131 = swift_once();
    }

    v132 = qword_1EC3908D0;
    OUTLINED_FUNCTION_64_3(v131);
    OUTLINED_FUNCTION_50_9();
    v132();

    v133 = MEMORY[0x1E699FEE0];
    sub_1C8D28184(&qword_1EC316278, &qword_1EC3132A0, &unk_1C9084E20, MEMORY[0x1E699FEE0]);
    OUTLINED_FUNCTION_54_5();
    sub_1C9062B1C();
    v134 = *(v165 + 8);
    v134(v164, v166);
    sub_1C8D28184(&qword_1EC316280, &qword_1EC315210, &qword_1C907C0A0, MEMORY[0x1E699FEF8]);
    sub_1C8D28184(&qword_1EC316288, &qword_1EC3132A0, &unk_1C9084E20, MEMORY[0x1E699FED8]);
    OUTLINED_FUNCTION_123();
    sub_1C906296C();
    v134(v132, v166);
    sub_1C8D28184(&qword_1EC316290, &qword_1EC315210, &qword_1C907C0A0, v133);
    OUTLINED_FUNCTION_54_5();
    sub_1C9062B1C();
    v135 = *(v167 + 8);
    v135(&qword_1EC3132A0, v177);
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    v135(v132, v177);
    v136 = OUTLINED_FUNCTION_332();
    v137 = v174(v136);
    if (qword_1EC311320 != -1)
    {
      v137 = swift_once();
    }

    v138 = qword_1EC390A70;
    v139 = OUTLINED_FUNCTION_64_3(v137);
    v138(v139);

    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v140, v141, v142, v143);
    sub_1C9062B1C();
    v144 = *(v170 + 8);
    v144(v168, v171);
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    v144(v169, v171);
    v145 = OUTLINED_FUNCTION_332();
    v174(v145);
    if (qword_1EC311328 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_10(v155, qword_1EC390A80);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_80_2(v146, v147, v148, v149);
    sub_1C9062A1C();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_80_2(v150, v151, v152, v153);
    OUTLINED_FUNCTION_334();
    sub_1C906295C();
    (*(v173 + 8))(v172, v155);
    v154 = OUTLINED_FUNCTION_77_3();
    v174(v154);
    v106(v176, v179);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8E02848()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  if (*(*v0 + 16))
  {
    sub_1C8DFF6BC(*v0);
    OUTLINED_FUNCTION_56_6();
    v9();
    v21[1] = v2;
    if (qword_1EC3112D0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C9062E6C();
    __swift_project_value_buffer(v10, qword_1EC390988);
    v22[3] = v10;
    v22[4] = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_10_0();
    (*(v11 + 16))();
    v23[3] = sub_1C90627EC();
    v23[4] = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162F0, &qword_1C9084E80);
    OUTLINED_FUNCTION_2_36();
    v14 = sub_1C8D28184(v12, &qword_1EC3162F0, &qword_1C9084E80, v13);
    sub_1C8E067D8(v14, v15, v16);
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v22);

    OUTLINED_FUNCTION_28_10();
    sub_1C8D28184(v17, v18, v19, v20);
    sub_1C906292C();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8E02AA8()
{
  OUTLINED_FUNCTION_196();
  v140 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_0();
  v137 = sub_1C90627DC();
  OUTLINED_FUNCTION_11();
  v136 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315228, &unk_1C9084E30);
  OUTLINED_FUNCTION_11();
  v141 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v15);
  v146 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v147 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v127[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v127[-v21];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162C0, &unk_1C9084E60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v25);
  v32 = *v0;
  if (*(*v0 + 16))
  {
    v129 = v31;
    v130 = v12;
    v131 = v22;
    v132 = v30;
    v133 = v2;
    v134 = v6;
    v135 = v4;
    v145 = v1;
    v33 = v0[8];
    v159 = v32;
    v34 = v32 + 56;
    v35 = 1 << *(v32 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v32 + 56);
    j__swift_bridgeObjectRetain(v32, v33, v26, v27, v28, v29);
    v128 = v33;
    j__swift_bridgeObjectRetain(v32, v33, v38, v39, v40, v41);
    v42 = 0;
    v43 = (v35 + 63) >> 6;
    v139 = v19;
    v138 = v32;
    while (v37)
    {
LABEL_10:
      v45 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v46 = *(v32 + 48) + 40 * (v45 | (v42 << 6));
      if (!*(v46 + 32))
      {
        v47 = *v46;
        v2 = *(v46 + 8);
        sub_1C8D54590(*v46, v2, *(v46 + 16), *(v46 + 24), 0);

        v48 = sub_1C906316C();
        if (*(v48 + 16) && (v49 = sub_1C8CAE064(v47, v2), (v50 & 1) != 0))
        {
          v51 = (*(v48 + 56) + 16 * v49);
          v52 = v51[1];
          v144 = *v51;
          v143 = v52;
        }

        else
        {

          v144 = 0x446E776F6E6B6E55;
          v143 = 0xED00006E69616D6FLL;
        }

        v157[0] = v47;
        v157[1] = v2;
        v157[2] = 0;
        v157[3] = 0;
        v158 = 0;

        sub_1C8F1E818(v157, &v149);
        OUTLINED_FUNCTION_62_1();
        sub_1C8E067C4(v149, v150, v151, v152, v153);
        v155[0] = v47;
        v155[1] = v2;
        v155[2] = v144;
        v155[3] = v143;
        v156 = 1;
        sub_1C8D874AC(&v149, v155);
        OUTLINED_FUNCTION_62_1();
        sub_1C8D3ED20(v149, v150, v151, v152, v153);
        v19 = v139;
        v32 = v138;
      }
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v44 >= v43)
      {
        break;
      }

      v37 = *(v34 + 8 * v44);
      ++v42;
      if (v37)
      {
        v42 = v44;
        goto LABEL_10;
      }
    }

    v53 = v145;
    sub_1C8DFF934(v159);
    v55 = v54;
    v145 = v53;
    if (v128)
    {

      v148[0] = v55;
      v34 = v130;
      if (qword_1EC311400 == -1)
      {
LABEL_18:
        v56 = sub_1C9062E6C();
        OUTLINED_FUNCTION_10(v56, qword_1EC390BB8);
        v152 = v56;
        v153 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(&v149);
        OUTLINED_FUNCTION_10_0();
        (*(v57 + 16))();
        v58 = OUTLINED_FUNCTION_94();
        __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_116();
        sub_1C8D28184(v60, v61, v62, v63);
        OUTLINED_FUNCTION_123();
        sub_1C90640CC();
        __swift_destroy_boxed_opaque_existential_1(&v149);

        v64 = v142;
        if (qword_1EC3112F8 != -1)
        {
          OUTLINED_FUNCTION_15_16(&qword_1EC3112F8);
        }

        OUTLINED_FUNCTION_10(v34, qword_1EC390A00);
        v65 = v146;
        v152 = v146;
        v153 = MEMORY[0x1E699FE60];
        v66 = __swift_allocate_boxed_opaque_existential_1(&v149);
        v67 = v147;
        (*(v147 + 16))(v66, v2, v65);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_56_6();
        sub_1C8D28184(v68, v69, v70, v71);
        OUTLINED_FUNCTION_40_10();
        sub_1C906292C();
        __swift_destroy_boxed_opaque_existential_1(&v149);
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_56_6();
        sub_1C8D28184(v72, v73, v74, v75);
        OUTLINED_FUNCTION_50_9();
        v76 = &qword_1EC312558;
        sub_1C9062B0C();
        v77 = OUTLINED_FUNCTION_23();
        v78(v77, v34);
        v152 = MEMORY[0x1E69E6530];
        v153 = MEMORY[0x1E69A0178];
        v149 = 0;
        OUTLINED_FUNCTION_60_6();
        sub_1C9062BCC();
        v79 = OUTLINED_FUNCTION_17_14();
        v80 = v64;
        v144 = v81;
        v81(v79, v64);
        (*(v67 + 8))(v2, v65);
        __swift_destroy_boxed_opaque_existential_1(&v149);
        goto LABEL_34;
      }

LABEL_37:
      OUTLINED_FUNCTION_26_10();
      swift_once();
      goto LABEL_18;
    }

    v82 = *(v54 + 16);
    v144 = v82;
    if (v82)
    {
      v138 = v159;
      v154 = MEMORY[0x1E69E7CC0];
      sub_1C8D09DBC(0, v82, 0);
      v143 = v55;
      v55 += 40;
      v83 = v154;
      v84 = v82;
      do
      {
        v86 = *(v55 - 8);
        v85 = *v55;
        v87 = qword_1EC311400;

        if (v87 != -1)
        {
          OUTLINED_FUNCTION_26_10();
          swift_once();
        }

        v88 = sub_1C9062E6C();
        __swift_project_value_buffer(v88, qword_1EC390BB8);
        v152 = v88;
        v153 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(&v149);
        OUTLINED_FUNCTION_10_0();
        (*(v89 + 16))();
        v148[3] = MEMORY[0x1E69E6158];
        v148[4] = MEMORY[0x1E69A0130];
        v148[0] = v86;
        v148[1] = v85;
        sub_1C9062D6C();
        sub_1C8D3F0C4(v148, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(&v149);
        v154 = v83;
        v91 = *(v83 + 16);
        v90 = *(v83 + 24);
        if (v91 >= v90 >> 1)
        {
          v95 = OUTLINED_FUNCTION_176(v90);
          sub_1C8D09DBC(v95, v91 + 1, 1);
          v83 = v154;
        }

        *(v83 + 16) = v91 + 1;
        OUTLINED_FUNCTION_53_7();
        (*(v94 + 32))(v92 + v93 * v91, v19, v146);
        v55 += 16;
        --v84;
      }

      while (v84);
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
    }

    v149 = v83;
    OUTLINED_FUNCTION_54_5();
    sub_1C90627AC();
    v96 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v96, v97);
    OUTLINED_FUNCTION_2_36();
    OUTLINED_FUNCTION_116();
    sub_1C8D28184(v98, v99, v100, v101);
    v102 = MEMORY[0x1E699FE60];
    v103 = v131;
    OUTLINED_FUNCTION_125();
    sub_1C90640DC();
    OUTLINED_FUNCTION_296();
    v104(v55, v137);

    v105 = v142;
    if (qword_1EC3112F8 != -1)
    {
      OUTLINED_FUNCTION_15_16(&qword_1EC3112F8);
    }

    v106 = v130;
    OUTLINED_FUNCTION_10(v130, qword_1EC390A00);
    v107 = v146;
    v152 = v146;
    v153 = v102;
    __swift_allocate_boxed_opaque_existential_1(&v149);
    OUTLINED_FUNCTION_54_5();
    (*(v108 + 16))();
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_56_6();
    sub_1C8D28184(v109, v110, v111, v112);
    OUTLINED_FUNCTION_40_10();
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(&v149);
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_56_6();
    sub_1C8D28184(v113, v114, v115, v116);
    OUTLINED_FUNCTION_50_9();
    v76 = v102;
    sub_1C9062B0C();
    v117 = OUTLINED_FUNCTION_23();
    v118(v117, v106);
    v152 = MEMORY[0x1E69E6530];
    v153 = MEMORY[0x1E69A0178];
    v149 = v144;
    OUTLINED_FUNCTION_60_6();
    sub_1C9062D8C();
    v119 = OUTLINED_FUNCTION_17_14();
    v144 = v120;
    v120(v119, v105);
    (*(v55 + 8))(v103, v107);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    v80 = v105;
LABEL_34:
    v121 = v135;
    OUTLINED_FUNCTION_123();
    (*(v122 + 32))(v133, v140, v121);
    OUTLINED_FUNCTION_37_12();
    v123 = v76;
    sub_1C9062BEC();
    OUTLINED_FUNCTION_31_9(&qword_1EC3162E0, &qword_1EC316230, &unk_1C9084E40);
    OUTLINED_FUNCTION_77_3();
    sub_1C9062A6C();
    v124 = v144;
    (v144)(&qword_1EC315228, v80);
    v125 = OUTLINED_FUNCTION_334();
    v126(v125);
    v124(v123, v80);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8E036E0()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v120[-v9];
  v128 = sub_1C90627DC();
  OUTLINED_FUNCTION_11();
  v127 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v14 - v13);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315240, &qword_1C907C0B8);
  OUTLINED_FUNCTION_11();
  v129 = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v17);
  sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v142 = v18;
  v143 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v141 = v20;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_147();
  v133 = v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162C0, &unk_1C9084E60);
  OUTLINED_FUNCTION_11();
  v130 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v120[-v26];
  v140 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v139 = (v36 - v35);
  v37 = *v0;
  if (!*(v37 + 16))
  {
    goto LABEL_33;
  }

  v122 = v10;
  v123 = v4;
  v124 = v7;
  v125 = v5;
  v126 = v1;
  v38 = *(v2 + 8);
  v39 = v37 + 56;
  v40 = 1 << *(v37 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v37 + 56);
  j__swift_bridgeObjectRetain(v37, v38, v31, v32, v33, v34);
  v121 = v38;
  j__swift_bridgeObjectRetain(v37, v38, v43, v44, v45, v46);
  v47 = 0;
  v48 = (v40 + 63) >> 6;
  v134 = v29 + 8;
  v135 = v29 + 16;
  v49 = MEMORY[0x1E69E7CC0];
  v137 = v37;
  v138 = v27;
  v136 = v29;
  if (v42)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_27_10();
      swift_once();
      goto LABEL_25;
    }

    if (v50 >= v48)
    {
      break;
    }

    v42 = *(v39 + 8 * v50);
    ++v47;
    if (v42)
    {
      v47 = v50;
      do
      {
LABEL_9:
        v51 = *(v37 + 48) + *(v29 + 72) * (__clz(__rbit64(v42)) | (v47 << 6));
        v52 = v139;
        v53 = v140;
        (*(v29 + 16))(v139, v51, v140);
        v54 = sub_1C9063C1C();
        v55 = v29;
        v57 = v56;
        (*(v55 + 8))(v52, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8D00CA4();
          v49 = v62;
        }

        v59 = v49[2];
        v58 = v49[3];
        v60 = v49;
        if (v59 >= v58 >> 1)
        {
          OUTLINED_FUNCTION_176(v58);
          sub_1C8D00CA4();
          v60 = v63;
        }

        v42 &= v42 - 1;
        v60[2] = v59 + 1;
        v49 = v60;
        v61 = &v60[2 * v59];
        v61[4] = v54;
        v61[5] = v57;
        v37 = v137;
        v29 = v136;
      }

      while (v42);
    }
  }

  v64 = v121;
  j__swift_bridgeObjectRelease(v37);
  if (v64)
  {
    v65 = v49[2];
    v140 = v65;
    if (v65)
    {
      v148 = MEMORY[0x1E69E7CC0];
      sub_1C8D09DBC(0, v65, 0);
      v139 = v49;
      v66 = v49 + 5;
      v67 = v148;
      do
      {
        v69 = *(v66 - 1);
        v68 = *v66;
        v70 = qword_1EC311480;

        if (v70 != -1)
        {
          OUTLINED_FUNCTION_27_10();
          swift_once();
        }

        v71 = sub_1C9062E6C();
        __swift_project_value_buffer(v71, qword_1EC390C98);
        v146 = v71;
        v147 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(v145);
        OUTLINED_FUNCTION_10_0();
        (*(v72 + 16))();
        v144[3] = MEMORY[0x1E69E6158];
        v144[4] = MEMORY[0x1E69A0130];
        v144[0] = v69;
        v144[1] = v68;
        v73 = v141;
        sub_1C9062D6C();
        sub_1C8D3F0C4(v144, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(v145);
        v39 = *(v148 + 16);
        v74 = *(v148 + 24);
        if (v39 >= v74 >> 1)
        {
          v78 = OUTLINED_FUNCTION_176(v74);
          sub_1C8D09DBC(v78, v39 + 1, 1);
          v73 = v141;
        }

        *(v148 + 16) = v39 + 1;
        OUTLINED_FUNCTION_53_7();
        (*(v77 + 32))(v75 + v76 * v39, v73);
        v66 += 2;
        --v65;
      }

      while (v65);
    }

    else
    {

      v67 = MEMORY[0x1E69E7CC0];
    }

    v145[0] = v67;
    OUTLINED_FUNCTION_54_5();
    sub_1C90627AC();
    v94 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
    OUTLINED_FUNCTION_2_36();
    OUTLINED_FUNCTION_116();
    sub_1C8D28184(v96, v97, v98, v99);
    v48 = MEMORY[0x1E699FE60];
    v100 = v133;
    OUTLINED_FUNCTION_125();
    sub_1C90640DC();
    OUTLINED_FUNCTION_296();
    v101(v39, v128);

    if (qword_1EC311308 != -1)
    {
      OUTLINED_FUNCTION_30_14(&qword_1EC311308);
    }

    v102 = v131;
    OUTLINED_FUNCTION_10(v131, qword_1EC390A30);
    v103 = v142;
    v146 = v142;
    v147 = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v145);
    v105 = v143;
    (*(v143 + 16))(boxed_opaque_existential_1, v100, v103);
    OUTLINED_FUNCTION_3_2();
    sub_1C8D28184(v106, v107, &qword_1C907C0B8, v108);
    OUTLINED_FUNCTION_40_10();
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(v145);
    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v109, &qword_1EC315240, &qword_1C907C0B8, v110);
    OUTLINED_FUNCTION_78_5();
    v111 = OUTLINED_FUNCTION_23();
    v112(v111, v102);
    v146 = MEMORY[0x1E69E6530];
    v147 = MEMORY[0x1E69A0178];
    v145[0] = v140;
    sub_1C9062D8C();
    OUTLINED_FUNCTION_17_14();
    OUTLINED_FUNCTION_73_3();
    v113();
    (*(v105 + 8))(v100, v103);
    goto LABEL_32;
  }

  v144[0] = v49;
  v48 = v133;
  if (qword_1EC311480 != -1)
  {
    goto LABEL_35;
  }

LABEL_25:
  v79 = sub_1C9062E6C();
  __swift_project_value_buffer(v79, qword_1EC390C98);
  v146 = v79;
  v147 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v145);
  OUTLINED_FUNCTION_10_0();
  (*(v80 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_2_36();
  sub_1C8D28184(v81, &qword_1EC312558, &qword_1C9066990, v82);
  sub_1C90640CC();
  __swift_destroy_boxed_opaque_existential_1(v145);

  if (qword_1EC311308 != -1)
  {
    OUTLINED_FUNCTION_30_14(&qword_1EC311308);
  }

  v83 = v131;
  OUTLINED_FUNCTION_10(v131, qword_1EC390A30);
  v84 = v142;
  v146 = v142;
  v147 = MEMORY[0x1E699FE60];
  v85 = __swift_allocate_boxed_opaque_existential_1(v145);
  v86 = v143;
  (*(v143 + 16))(v85, v48, v84);
  OUTLINED_FUNCTION_3_2();
  sub_1C8D28184(v87, &qword_1EC315240, &qword_1C907C0B8, v88);
  OUTLINED_FUNCTION_40_10();
  sub_1C906292C();
  __swift_destroy_boxed_opaque_existential_1(v145);
  OUTLINED_FUNCTION_0_51();
  sub_1C8D28184(v89, &qword_1EC315240, &qword_1C907C0B8, v90);
  OUTLINED_FUNCTION_78_5();
  v91 = OUTLINED_FUNCTION_23();
  v92(v91, v83);
  v146 = MEMORY[0x1E69E6530];
  v147 = MEMORY[0x1E69A0178];
  v145[0] = 0;
  sub_1C9062BCC();
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_73_3();
  v93();
  (*(v86 + 8))(v133, v84);
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v145);
  OUTLINED_FUNCTION_40_10();
  v115 = v122;
  v116 = v125;
  (*(v114 + 32))(v122, v123, v125);
  OUTLINED_FUNCTION_67_5();
  sub_1C9062BEC();
  OUTLINED_FUNCTION_31_9(&qword_1EC3162E0, &qword_1EC316230, &unk_1C9084E40);
  sub_1C9062A6C();
  v117 = OUTLINED_FUNCTION_77_3();
  v118 = v141;
  v141(v117);
  (*(v48 + 8))(v115, v116);
  v119 = OUTLINED_FUNCTION_334();
  v118(v119);
LABEL_33:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E0425C()
{
  v0 = sub_1C902E57C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static TypeKindPropertyFilter.any.getter@<X0>(void *a5@<X8>)
{
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1EC311368);
  }

  *a5 = qword_1EC316148;
}

uint64_t static TypeKindPropertyFilter.Kind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else if (v3 != 5)
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v3 != 4 && (sub_1C8E5A138(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C8E0438C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1C8E04454(char a1)
{
  if (a1)
  {
    return 0x746172656D756E65;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_1C8E04490(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t sub_1C8E04520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E0438C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E04548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E05284(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E04584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E05284(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E045C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E05380(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E045FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E05380(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E0463C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E04490(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E04668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E052D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E046A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E052D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypeKindPropertyFilter.Kind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  v59 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316170, &qword_1C9084388);
  OUTLINED_FUNCTION_11();
  v57 = v29;
  v58 = v28;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v56 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316178, &qword_1C9084390);
  OUTLINED_FUNCTION_11();
  v54 = v33;
  v55 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v54 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316180, &qword_1C9084398);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15_0();
  v39 = *v24;
  v40 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C8E05284(v40, v41, v42);
  v43 = sub_1C9064E1C();
  if (v39 == 5)
  {
    sub_1C8E05380(v43, v44, v45);
    OUTLINED_FUNCTION_79_4(&type metadata for TypeKindPropertyFilter.Kind.EntityCodingKeys);
    (*(v54 + 8))(v36, v55);
  }

  else
  {
    sub_1C8E052D8(v43, v44, v45);
    v48 = v56;
    v49 = OUTLINED_FUNCTION_79_4(&type metadata for TypeKindPropertyFilter.Kind.EnumerationCodingKeys);
    sub_1C8E0532C(v49, v50, v51);
    v52 = v58;
    sub_1C9064B0C();
    OUTLINED_FUNCTION_59_8();
    v53(v48, v52);
  }

  v46 = OUTLINED_FUNCTION_66_5();
  v47(v46, v37);
  OUTLINED_FUNCTION_198();
}

uint64_t TypeKindPropertyFilter.Kind.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    return MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](1);
  if (v1 == 4)
  {
    return sub_1C9064D9C();
  }

  sub_1C9064D9C();

  return sub_1C8D2FEF0();
}

uint64_t TypeKindPropertyFilter.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  if (v1 == 5)
  {
    MEMORY[0x1CCA82810](0);
  }

  else
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9064D9C();
    if (v1 != 4)
    {
      sub_1C8D2FEF0();
    }
  }

  return sub_1C9064DBC();
}

void TypeKindPropertyFilter.Kind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_196();
  v84 = v25;
  v28 = v27;
  v80 = v29;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3161A0, &qword_1C90843A0);
  OUTLINED_FUNCTION_11();
  v81 = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3161A8, &qword_1C90843A8);
  OUTLINED_FUNCTION_11();
  v79 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3161B0, &unk_1C90843B0);
  OUTLINED_FUNCTION_11();
  v82 = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v75 - v40;
  v42 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C8E05284(v42, v43, v44);
  v45 = v84;
  sub_1C9064DEC();
  if (v45)
  {
    goto LABEL_8;
  }

  v76 = v34;
  v77 = v26;
  v78 = v33;
  v84 = v28;
  v46 = v83;
  v47 = sub_1C9064A9C();
  v51 = sub_1C8CB8914(v47, 0);
  if (v49 == v50 >> 1)
  {
LABEL_7:
    sub_1C90647DC();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v62 = &type metadata for TypeKindPropertyFilter.Kind;
    sub_1C906499C();
    sub_1C90647CC();
    OUTLINED_FUNCTION_10_0();
    (*(v63 + 104))(v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_59_8();
    v64(v41, v37);
    v28 = v84;
LABEL_8:
    v65 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v49 < (v50 >> 1))
  {
    v85 = *(v48 + v49);
    sub_1C8CB891C(v49 + 1, v50 >> 1, v51, v48, v49, v50);
    v53 = v52;
    v55 = v54;
    v56 = swift_unknownObjectRelease();
    if (v53 == v55 >> 1)
    {
      if (v85)
      {
        sub_1C8E052D8(v56, v57, v58);
        v59 = sub_1C906498C();
        v60 = v80;
        sub_1C8E053D4(v59, v67, v68);
        sub_1C90649EC();
        v69 = v82;
        swift_unknownObjectRelease();
        v72 = OUTLINED_FUNCTION_66_5();
        v73(v72, v46);
        (*(v69 + 8))(v41, v37);
      }

      else
      {
        sub_1C8E05380(v56, v57, v58);
        v66 = v77;
        sub_1C906498C();
        v60 = v80;
        swift_unknownObjectRelease();
        (*(v79 + 8))(v66, v76);
        OUTLINED_FUNCTION_59_8();
        v70 = OUTLINED_FUNCTION_332();
        v71(v70);
        a14 = 5;
      }

      *v60 = a14;
      v65 = v84;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C8E04FCC(uint64_t a1)
{
  v2 = *v1;
  sub_1C9064D7C();
  if (v2 == 5)
  {
    MEMORY[0x1CCA82810](0);
  }

  else
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9064D9C();
    if (v2 != 4)
    {
      sub_1C8D2FEF0();
    }
  }

  return sub_1C9064DBC();
}

uint64_t sub_1C8E0505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 679046753;
  }

  else
  {
    v3 = 678194273;
  }

  v6 = v3 | 0x203A666F00000000;
  sub_1C8D3EBC0(a1, a2, a3);
  v4 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v4);

  return v6;
}

uint64_t static SystemTypeProtocolFilter.any.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (qword_1EC311370 != -1)
  {
    OUTLINED_FUNCTION_20(&qword_1EC311370);
  }

  v6 = qword_1EC316150;
  v7 = byte_1EC316158;
  *a5 = qword_1EC316150;
  *(a5 + 8) = v7;

  return j__swift_bridgeObjectRetain(v6, v7, a1, a2, a3, a4);
}

uint64_t static SystemTypeProtocolFilter.implementing(any:)@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = 1;
}

uint64_t static SystemTypeProtocolFilter.implementing(all:)@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = 0;
}

uint64_t sub_1C8E05190(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C8E051D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316160;
  if (!qword_1EC316160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316160);
  }

  return result;
}

unint64_t sub_1C8E0522C()
{
  result = qword_1EDA66688;
  if (!qword_1EDA66688)
  {
    sub_1C9063C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66688);
  }

  return result;
}

unint64_t sub_1C8E05284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316188;
  if (!qword_1EC316188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316188);
  }

  return result;
}

unint64_t sub_1C8E052D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316190;
  if (!qword_1EC316190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316190);
  }

  return result;
}

unint64_t sub_1C8E0532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60920;
  if (!qword_1EDA60920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60920);
  }

  return result;
}

unint64_t sub_1C8E05380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316198;
  if (!qword_1EC316198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316198);
  }

  return result;
}

unint64_t sub_1C8E053D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60918;
  if (!qword_1EDA60918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60918);
  }

  return result;
}

unint64_t sub_1C8E05428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8E05450(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E05450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161B8;
  if (!qword_1EC3161B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161B8);
  }

  return result;
}

unint64_t sub_1C8E054A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161C0;
  if (!qword_1EC3161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161C0);
  }

  return result;
}

unint64_t sub_1C8E054FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8E05524(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E05524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161C8;
  if (!qword_1EC3161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161C8);
  }

  return result;
}

unint64_t sub_1C8E05578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8E055A0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E055A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161D0;
  if (!qword_1EC3161D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161D0);
  }

  return result;
}

unint64_t sub_1C8E055F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8E0561C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E0561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161D8;
  if (!qword_1EC3161D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit27AssistantSchemaVersionRangeVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8E0569C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C8E056DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TypeDefinitionQueryRequest(uint64_t a1)
{
  result = qword_1EC3161E0;
  if (!qword_1EC3161E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for TypeKindPropertyFilter.Kind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 <= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = *result;
    }

    v8 = v7 - 5;
    if (v6 < 4)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    if (v9 + 1 >= 2)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeKindPropertyFilter.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8E05964(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C8E05984(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_1C8E059C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E05A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for TypeKindPropertyFilter.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TypeKindPropertyFilter.Kind.EnumerationCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E05BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161F0;
  if (!qword_1EC3161F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161F0);
  }

  return result;
}

unint64_t sub_1C8E05C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3161F8;
  if (!qword_1EC3161F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161F8);
  }

  return result;
}

unint64_t sub_1C8E05CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316200;
  if (!qword_1EC316200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316200);
  }

  return result;
}

unint64_t sub_1C8E05CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316208;
  if (!qword_1EC316208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316208);
  }

  return result;
}

unint64_t sub_1C8E05D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316210;
  if (!qword_1EC316210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316210);
  }

  return result;
}

unint64_t sub_1C8E05DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316218;
  if (!qword_1EC316218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316218);
  }

  return result;
}

unint64_t sub_1C8E05E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316220;
  if (!qword_1EC316220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316220);
  }

  return result;
}

unint64_t sub_1C8E05E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316228;
  if (!qword_1EC316228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316228);
  }

  return result;
}

uint64_t sub_1C8E05EB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11();
  v29 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v32[3] = sub_1C9062E6C();
  v32[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_10_0();
  (*(v21 + 16))();
  a4(v32, a3);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C8D3F0C4(v13, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    v22 = v29;
    (*(v29 + 32))(v10, v30, v6);
    v31[3] = v14;
    v31[4] = MEMORY[0x1E699FE60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v16 + 16))(boxed_opaque_existential_1, v20, v14);
    OUTLINED_FUNCTION_28_10();
    sub_1C8D28184(v24, v25, v26, v27);
    sub_1C906292C();
    (*(v22 + 8))(v10, v6);
    (*(v16 + 8))(v20, v14);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1C8E061A0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
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
    sub_1C8D3F0C4(v9, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v4 + 32))(v6, v19, v3);
    v20[3] = v10;
    v20[4] = MEMORY[0x1E699FE60];
    v16 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(v11 + 16))(v16, v13, v10);
    sub_1C8D28184(&qword_1EC3162B8, &qword_1EC315238, &qword_1C907C0B0, MEMORY[0x1E699FF48]);
    sub_1C906292C();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1C8E064C4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1C90627EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = v13;
  v22[4] = MEMORY[0x1E699FE60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v15 = *(v10 + 16);
  v15(boxed_opaque_existential_1, a2, v9);
  sub_1C902CF6C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8D3F0C4(v8, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = v19;
    (*(v19 + 32))(v5, v20, v3);
    v21[3] = v9;
    v21[4] = MEMORY[0x1E699FE60];
    v17 = __swift_allocate_boxed_opaque_existential_1(v21);
    v15(v17, v12, v9);
    sub_1C8D28184(&qword_1EC3162B8, &qword_1EC315238, &qword_1C907C0B0, MEMORY[0x1E699FF48]);
    sub_1C906292C();
    (*(v16 + 8))(v5, v3);
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1C8E067C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C8D3ED20(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1C8E067D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316300;
  if (!qword_1EC316300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316300);
  }

  return result;
}

unint64_t sub_1C8E0682C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316318;
  if (!qword_1EC316318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316318);
  }

  return result;
}

unint64_t sub_1C8E06880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316330;
  if (!qword_1EC316330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316330);
  }

  return result;
}

unint64_t sub_1C8E068D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316340;
  if (!qword_1EC316340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316340);
  }

  return result;
}

unint64_t sub_1C8E06928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC316350;
  if (!qword_1EC316350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_12()
{
}

void OUTLINED_FUNCTION_35_12()
{

  JUMPOUT(0x1CCA81A90);
}

void OUTLINED_FUNCTION_61_6()
{

  JUMPOUT(0x1CCA81C60);
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_1C9062B0C();
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_80_2(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8D28184(a1, v4, v5, a4);
}

void sub_1C8E06AB0()
{
  OUTLINED_FUNCTION_67_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35();
  type metadata accessor for IndexingLog.IndexingEvent(v2);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v4, v5, v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_136();
    v10 = sub_1C8D16D78(v8, v9, &qword_1C90729E8);
    OUTLINED_FUNCTION_112_2(v10, v11, &qword_1EC313FA8, &unk_1C9085260, type metadata accessor for IndexingLog.IndexingEvent, type metadata accessor for IndexingLog.IndexingEvent);

    v12 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v12, v13, &qword_1C90729E8);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v14, v15, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = OUTLINED_FUNCTION_27_11();
    sub_1C8D64304(v17, v18, v19);

    OUTLINED_FUNCTION_217_0();
  }
}

void sub_1C8E06C14()
{
  OUTLINED_FUNCTION_67_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316540, &qword_1C9072A00);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35();
  type metadata accessor for IndexingLog.WALEvent(v2);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v4, v5, v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_136();
    v10 = sub_1C8D16D78(v8, v9, &qword_1C9072A00);
    OUTLINED_FUNCTION_112_2(v10, v11, &qword_1EC313FB8, &qword_1C9085270, type metadata accessor for IndexingLog.WALEvent, type metadata accessor for IndexingLog.WALEvent);

    v12 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v12, v13, &qword_1C9072A00);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v14, v15, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = OUTLINED_FUNCTION_27_11();
    sub_1C8D6442C(v17, v18, v19);

    OUTLINED_FUNCTION_217_0();
  }
}

void sub_1C8E06D78()
{
  OUTLINED_FUNCTION_67_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316550, &qword_1C9072A08);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35();
  type metadata accessor for IndexingLog.VacuumEvent(v2);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v4, v5, v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_136();
    v10 = sub_1C8D16D78(v8, v9, &qword_1C9072A08);
    OUTLINED_FUNCTION_112_2(v10, v11, &qword_1EC313FC0, &qword_1C9072450, type metadata accessor for IndexingLog.VacuumEvent, type metadata accessor for IndexingLog.VacuumEvent);

    v12 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v12, v13, &qword_1C9072A08);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v14, v15, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = OUTLINED_FUNCTION_27_11();
    sub_1C8D64540(v17, v18, v19);

    OUTLINED_FUNCTION_217_0();
  }
}

uint64_t sub_1C8E06EDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C8D1D824(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1C8D6478C(v8, a2);
    *v2 = v7;
    v4 = sub_1C90648DC();
    return (*(*(v4 - 8) + 8))(a2, v4);
  }

  else
  {
    sub_1C8D16D78(a1, &qword_1EC316428, &unk_1C9085050);
    sub_1C8E1ADDC(a2, v8);
    v6 = sub_1C90648DC();
    (*(*(v6 - 8) + 8))(a2, v6);
    return sub_1C8D16D78(v8, &qword_1EC316428, &unk_1C9085050);
  }
}

uint64_t sub_1C8E07004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E30, &unk_1C907A7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for ConcreteResolvable(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1C8D16D78(a1, &qword_1EC314E30, &unk_1C907A7A0);
    sub_1C8E1AC90(a2, a3, &qword_1EC3164A0, &qword_1C9085180, type metadata accessor for ConcreteResolvable, v10, type metadata accessor for ConcreteResolvable);

    return sub_1C8D16D78(v10, &qword_1EC314E30, &unk_1C907A7A0);
  }

  else
  {
    sub_1C8E1BAB4(a1, v13, type metadata accessor for ConcreteResolvable);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1C8D64930(v13, a2, a3);

    *v4 = v17;
  }

  return result;
}

void sub_1C8E071DC()
{
  OUTLINED_FUNCTION_67_6();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC31A4B0, &unk_1C9085240);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoIndexingLogEntry(v2);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v4, v5, v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_136();
    v10 = sub_1C8D16D78(v8, v9, &unk_1C9085240);
    OUTLINED_FUNCTION_112_2(v10, v11, &unk_1EC316520, &unk_1C9072420, type metadata accessor for ToolKitProtoIndexingLogEntry, type metadata accessor for ToolKitProtoIndexingLogEntry);

    v12 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v12, v13, &unk_1C9085240);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v14, v15, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = OUTLINED_FUNCTION_27_11();
    sub_1C8D64A44(v17, v18, v19);

    OUTLINED_FUNCTION_217_0();
  }
}

uint64_t sub_1C8E07340()
{
  sub_1C9061C4C();
  swift_allocObject();
  result = sub_1C9061C3C();
  qword_1EDA63300 = result;
  return result;
}

uint64_t sub_1C8E07380()
{
  result = sub_1C8E073A0();
  qword_1EDA632E8 = result;
  return result;
}

uint64_t sub_1C8E073A0()
{
  v0 = sub_1C90648DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C9061C8C();
  swift_allocObject();
  v4 = sub_1C9061C7C();
  v5 = qword_1EC3112B0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC314E18);
  (*(v1 + 16))(v3, v6, v0);
  v11 = MEMORY[0x1E69E6370];
  v10[0] = 1;
  v7 = sub_1C9061C6C();
  sub_1C8E06EDC(v10, v3);
  v7(v9, 0);

  return v4;
}

uint64_t sub_1C8E07524()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_82();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v3 + 16))(&v9 - v6, v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v1, v5);
  sub_1C906349C();
  return (*(v3 + 8))(v7, v1);
}

void sub_1C8E07618(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  v8 = *(v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping);
  if (v8 != v2)
  {
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v3, v5);
    if (v8)
    {
      memset(v9, 0, sizeof(v9));
    }

    else
    {
      *v9 = 1;
      memset(&v9[8], 0, 32);
    }

    v10 = 3;
    sub_1C90634AC();
    (*(v4 + 8))(v7, v3);
  }
}

void sub_1C8E07764(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping);
  *(v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping) = a1;
  sub_1C8E07618(v2);
}

uint64_t sub_1C8E0777C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_identifier;
  sub_1C906204C();
  OUTLINED_FUNCTION_13_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

char *sub_1C8E077EC(void *a1)
{
  v2 = v1;
  sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v36 = v5;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v39 = v7 - v6;
  v8 = &v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentDialogHandler];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentInvocation;
  v10 = type metadata accessor for ToolInvocation(0);
  __swift_storeEnumTagSinglePayload(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream;
  sub_1C90634CC();
  v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping] = 0;
  v38 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_identifier;
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  v12 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation;
  *&v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation] = 0;
  v13 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client;
  *&v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client] = a1;
  v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated] = 0;
  v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed] = 0;
  type metadata accessor for ToolDatabase(0);
  v14 = a1;
  v15 = ToolDatabase.__allocating_init(readonly:)(2);
  if (v40)
  {

    sub_1C8D16D78(v8, &unk_1EC316490, &qword_1C9085158);
    sub_1C8D16D78(&v2[v9], &qword_1EC316440, &dword_1C908BFE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
    OUTLINED_FUNCTION_13_1();
    (*(v16 + 8))(&v2[v11]);
    sub_1C906204C();
    OUTLINED_FUNCTION_13_1();
    (*(v17 + 8))(&v2[v38]);

    type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v14;
    *&v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_database] = v15;
    v41.receiver = v2;
    v41.super_class = type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(0);
    v19 = objc_msgSendSuper2(&v41, sel_init);
    v20 = *&v19[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client];
    v2 = v19;
    [v20 setDelegate_];
    sub_1C906371C();
    v21 = sub_1C9063D1C();
    v22 = sub_1C906446C();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_17_0();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_55_5();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315138;
      v25 = [v2 debugDescription];
      sub_1C9063EEC();

      v26 = OUTLINED_FUNCTION_206_0();
      v32 = sub_1C8CACE04(v26, v27, v28, v29, v30, v31);

      *(v23 + 4) = v32;
      _os_log_impl(&dword_1C8C9B000, v21, v22, "Session %s created", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v33 = OUTLINED_FUNCTION_36_10();
      MEMORY[0x1CCA833A0](v33);
      v34 = OUTLINED_FUNCTION_19_16();
      MEMORY[0x1CCA833A0](v34);
    }

    else
    {
    }

    (*(v36 + 8))(v39, v37);
  }

  return v2;
}

uint64_t sub_1C8E07BF4()
{
  OUTLINED_FUNCTION_7();
  v1[34] = v2;
  v1[35] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_9(v3);
  v1[36] = OUTLINED_FUNCTION_39();
  v4 = type metadata accessor for ToolInvocation(0);
  v1[37] = v4;
  OUTLINED_FUNCTION_9(v4);
  v1[38] = OUTLINED_FUNCTION_39();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  v1[39] = v5;
  OUTLINED_FUNCTION_46(v5);
  v1[40] = v6;
  v1[41] = OUTLINED_FUNCTION_39();
  v7 = sub_1C9063D3C();
  v1[42] = v7;
  OUTLINED_FUNCTION_46(v7);
  v1[43] = v8;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E085AC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = v3;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E08A64(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1C8E08B34;

  return sub_1C8E07BF4();
}

uint64_t sub_1C8E08B34()
{
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  OUTLINED_FUNCTION_377();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  v10 = OUTLINED_FUNCTION_94();
  v11(v10);
  _Block_release(v4);

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t sub_1C8E08CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C90642AC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1C9085210;
  v9[5] = v8;
  sub_1C8E1A5BC(0, 0, v6, &unk_1C9085220, v9);
}

uint64_t sub_1C8E08DB0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35();
  v9 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1C906371C();
  v16 = v2;
  v17 = sub_1C9063D1C();
  v18 = sub_1C906446C();

  if (os_log_type_enabled(v17, v18))
  {
    v37 = v9;
    v19 = OUTLINED_FUNCTION_164_2();
    OUTLINED_FUNCTION_55_5();
    v39 = swift_slowAlloc();
    *v19 = 136315394;
    v36 = v18;
    v20 = [v16 debugDescription];
    sub_1C9063EEC();
    v38 = a2;

    v21 = OUTLINED_FUNCTION_145();
    v27 = sub_1C8CACE04(v21, v22, v23, v24, v25, v26);

    *(v19 + 4) = v27;
    a2 = v38;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v38;
    _os_log_impl(&dword_1C8C9B000, v17, v36, "Session %s received event: %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    result = (*(v11 + 8))(v15, v37);
  }

  else
  {

    result = (*(v11 + 8))(v15, v9);
  }

  if (a2 == 1)
  {
    *(v16 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated) = 1;
    v29 = (*(v7 + 16))(v3, v16 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v5);
    sub_1C8E1AF00(v29, v30, v31);
    v32 = swift_allocError();
    *v33 = 0;
    sub_1C90634BC();

    v34 = OUTLINED_FUNCTION_212();
    return v35(v34);
  }

  return result;
}

void sub_1C8E0912C(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v32[-v6];
  v8 = [a1 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1C8CBE304(&qword_1EDA60498, type metadata accessor for ProgressUserInfoKey, &unk_1C906681C);
  v9 = sub_1C9063E0C();

  sub_1C8E9E540(*MEMORY[0x1E69E1328], v9, &v33);

  if (!v35)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164F8, &qword_1C90851E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = v37;
  v11 = sub_1C9063EEC();
  sub_1C8E9E59C(v11, v12, v10, &v33);

  if (!v35)
  {
    goto LABEL_14;
  }

  sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return;
  }

  v13 = v37;
  v14 = sub_1C9063EEC();
  sub_1C8E9E59C(v14, v15, v10, &v33);

  if (!v35)
  {

LABEL_14:

LABEL_15:
    sub_1C8D16D78(&v33, &qword_1EC3164F0, &qword_1C907A7D0);
    return;
  }

  sub_1C8CB78AC(0, &qword_1EDA60458, 0x1E696AEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v16 = v37;
  v17 = sub_1C9063EEC();
  sub_1C8E9E59C(v17, v18, v10, &v33);

  if (!v35)
  {

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v19 = v37;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      (*(v4 + 16))(v7, Strong + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v3);

      [v13 floatValue];
      v23 = v22;
      v24 = sub_1C9063EEC();
      v26 = v25;
      v27 = sub_1C9063EEC();
      v33 = v23;
      *&v34 = v24;
      *(&v34 + 1) = v26;
      *&v35 = v27;
      *(&v35 + 1) = v28;
      v36 = 1;
      sub_1C90634AC();
      sub_1C8E1B758(v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36);
      (*(v4 + 8))(v7, v3);
    }

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      (*(v4 + 16))(v7, v29 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v3);

      [v13 floatValue];
      v33 = v31;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      sub_1C90634AC();

      (*(v4 + 8))(v7, v3);
      return;
    }
  }
}

uint64_t sub_1C8E09618(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v4 = 0;
  }

  else
  {
    if ((*(v3 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed) & 1) == 0)
    {
      return result;
    }

    v4 = 1;
  }

  sub_1C8E1AF00(result, a2, a3);
  swift_allocError();
  *v5 = v4;
  return swift_willThrow();
}

uint64_t sub_1C8E09694()
{
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1C8E096D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E096EC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 40);
  v12 = *(v0 + 24);
  sub_1C8E07764(1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = sub_1C8E097D4;
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0B7A8(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C8E097D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E098F0()
{
  OUTLINED_FUNCTION_4_2();

  sub_1C8E07764(0);
  swift_willThrow();
  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E09964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = type metadata accessor for ToolExecutionResult(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E30, &unk_1C907A7A0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for ToolInvocation(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = sub_1C9063D3C();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E09B4C, 0, 0);
}

uint64_t sub_1C8E09B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74_2();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_91_3();
  a24 = v26;
  v30 = v26[21];
  v31 = v26[19];
  v26[38] = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  v32 = OUTLINED_FUNCTION_148();
  sub_1C8E1B5B4(v32, v33, v34);
  sub_1C8D4F62C(v30, (v26 + 2), &unk_1EC316490, &qword_1C9085158);
  v35 = v31;
  v36 = sub_1C9063D1C();
  LOBYTE(v31) = sub_1C906446C();

  v37 = os_log_type_enabled(v36, v31);
  v38 = v26[37];
  v39 = v26[34];
  v116 = v26[33];
  v40 = v26[32];
  if (v37)
  {
    v41 = v26[19];
    swift_slowAlloc();
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_208_2();
    *v27 = 136315650;
    v42 = [v41 debugDescription];
    sub_1C9063EEC();
    v114 = v38;

    v43 = OUTLINED_FUNCTION_206_0();
    v49 = sub_1C8CACE04(v43, v44, v45, v46, v47, v48);

    *(v27 + 4) = v49;
    OUTLINED_FUNCTION_71_5();
    v50 = ToolInvocation.debugDescription.getter();
    v52 = v51;
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v40, v53);
    sub_1C8CACE04(v50, v52, &a14, v54, v55, v56);
    OUTLINED_FUNCTION_123_3();

    *(v27 + 14) = v40;
    *(v27 + 22) = 1024;
    v57 = v26[5] != 0;
    sub_1C8D16D78((v26 + 2), &unk_1EC316490, &qword_1C9085158);
    *(v27 + 24) = v57;
    OUTLINED_FUNCTION_157_1();
    _os_log_impl(v58, v59, v60, v61, v62, 0x1Cu);
    OUTLINED_FUNCTION_122_4();
    v63 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v63);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v64 = *(v39 + 8);
    v65 = v64(v114, v116);
  }

  else
  {
    sub_1C8D16D78((v26 + 2), &unk_1EC316490, &qword_1C9085158);

    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v40, v68);
    v64 = *(v39 + 8);
    v65 = v64(v38, v116);
  }

  v26[39] = v64;
  sub_1C8E09618(v65, v66, v67);
  v69 = v26[20];
  v70 = v26[21];
  v71 = swift_allocBox();
  v73 = v72;
  v26[40] = v71;
  OUTLINED_FUNCTION_1_47();
  sub_1C8E1B5B4(v69, v74, v75);
  if (*(v70 + 24))
  {
    v76 = v26[27];
    sub_1C8E9E284(0x6E656857776F6853, 0xEB000000006E7552, *(v73 + *(v26[28] + 24)), v76);
    v77 = type metadata accessor for ConcreteResolvable(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v77);
    sub_1C8D16D78(v76, &qword_1EC314E30, &unk_1C907A7A0);
    if (EnumTagSinglePayload == 1)
    {
      v79 = v26[26];
      type metadata accessor for TypedValue.PrimitiveValue(0);
      v80 = swift_allocBox();
      *v81 = 1;
      swift_storeEnumTagMultiPayload();
      *v79 = v80;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v77);
      v85 = OUTLINED_FUNCTION_203();
      sub_1C8E07004(v85, v86, 0xEB000000006E7552);
    }
  }

  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20(&qword_1EDA632E0);
  }

  v87 = v26[31];
  v88 = qword_1EDA632E8;
  OUTLINED_FUNCTION_1_47();
  v89 = OUTLINED_FUNCTION_211();
  sub_1C8E1B5B4(v89, v90, v91);
  OUTLINED_FUNCTION_15_17();
  sub_1C8CBE304(v92, v93, &protocol conformance descriptor for ToolInvocation);
  v26[41] = sub_1C9061C5C();
  v26[42] = v94;
  OUTLINED_FUNCTION_222_2();
  v95 = v26[25];
  v96 = v26[21];
  v115 = v26[28];
  v117 = v26[20];
  v97 = v26[19];
  OUTLINED_FUNCTION_0_52();
  sub_1C8E1B4B8(v98, v99);
  sub_1C8D4F62C(v96, (v26 + 7), &unk_1EC316490, &qword_1C9085158);
  v100 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentDialogHandler;
  swift_beginAccess();
  sub_1C8D4F5E4((v26 + 7), v97 + v100, &unk_1EC316490, &qword_1C9085158);
  swift_endAccess();
  OUTLINED_FUNCTION_1_47();
  v101 = OUTLINED_FUNCTION_212();
  sub_1C8E1B5B4(v101, v102, v103);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v115);
  v107 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentInvocation;
  swift_beginAccess();
  sub_1C8D4F5E4(v95, v97 + v107, &qword_1EC316440, &dword_1C908BFE0);
  swift_endAccess();
  v108 = swift_task_alloc();
  v26[43] = v108;
  v108[2] = v97;
  v108[3] = v88;
  v108[4] = v87;
  v108[5] = v117;
  v108[6] = v71;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v26[44] = v109;
  *v109 = v110;
  v109[1] = sub_1C8E0A180;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_70_2();

  return MEMORY[0x1EEE6DE38](v111);
}

uint64_t sub_1C8E0A180()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E0A280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_91_3();
  v19 = v18[19];
  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  OUTLINED_FUNCTION_243_1(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_181_0();
  sub_1C8E1B5B4(v23, v24, v25);
  v26 = v19;
  v27 = sub_1C9063D1C();
  v28 = sub_1C906446C();

  v29 = OUTLINED_FUNCTION_187_4();
  v30 = v18[39];
  v31 = v18[36];
  v32 = v18[33];
  v33 = v18[30];
  v34 = v18[23];
  if (v29)
  {
    v77 = v18[39];
    v35 = v18[19];
    v72 = v18[41];
    v74 = v18[42];
    v36 = swift_slowAlloc();
    a15 = OUTLINED_FUNCTION_183_4();
    *v36 = 136315650;
    v37 = [v35 debugDescription];
    sub_1C9063EEC();
    a9 = v32;

    v38 = OUTLINED_FUNCTION_127();
    v44 = sub_1C8CACE04(v38, v39, v40, v41, v42, v43);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    ToolInvocation.debugDescription.getter();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v33, v45);
    v46 = OUTLINED_FUNCTION_211();
    sub_1C8CACE04(v46, v47, v48, v49, v50, v51);
    OUTLINED_FUNCTION_137_2();
    *(v36 + 14) = v33;
    *(v36 + 22) = 2080;
    ToolExecutionResult.debugDescription.getter();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_30_15();
    sub_1C8E1B4B8(v34, v52);
    v53 = OUTLINED_FUNCTION_276();
    sub_1C8CACE04(v53, v54, v55, v56, v57, v58);
    OUTLINED_FUNCTION_105_2();

    *(v36 + 24) = v34;
    _os_log_impl(&dword_1C8C9B000, v27, v28, "Session %s did execute tool invocation %s with result: %s", v36, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    sub_1C8CE7B78(v72, v74);

    v77(v31, v32);
  }

  else
  {
    sub_1C8CE7B78(v18[41], v18[42]);

    OUTLINED_FUNCTION_30_15();
    sub_1C8E1B4B8(v34, v59);
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v33, v60);
    v61 = OUTLINED_FUNCTION_127();
    v30(v61);
  }

  v71 = v18[29];
  v73 = v18[27];
  v75 = v18[26];
  v76 = v18[25];
  v78 = v18[23];
  sub_1C8E1BAB4(v18[24], v18[18], type metadata accessor for ToolExecutionResult);

  sub_1C8E07764(0);

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_70_2();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, v71, v73, v75, v76, v78, a15, a16, a17, a18);
}

uint64_t sub_1C8E0A5AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74_2();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_91_3();
  a24 = v26;
  v29 = v26[45];
  v30 = v26[19];

  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  v31 = OUTLINED_FUNCTION_125();
  sub_1C8E1B5B4(v31, v32, v33);
  v34 = v30;
  v35 = v29;
  v36 = sub_1C9063D1C();
  v37 = sub_1C906444C();

  if (os_log_type_enabled(v36, v37))
  {
    v80 = v26[35];
    v82 = v26[39];
    v75 = v26[45];
    v78 = v26[33];
    v38 = v26[29];
    v39 = v26[19];
    OUTLINED_FUNCTION_55_5();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_130_3();
    OUTLINED_FUNCTION_208_2();
    *v40 = 136315650;
    v42 = [v39 debugDescription];
    v43 = sub_1C9063EEC();
    v45 = v44;

    v49 = sub_1C8CACE04(v43, v45, &a14, v46, v47, v48);

    *(v40 + 4) = v49;
    *(v40 + 12) = 2080;
    ToolInvocation.debugDescription.getter();
    OUTLINED_FUNCTION_153_4();
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v38, v50);
    v51 = OUTLINED_FUNCTION_181_0();
    sub_1C8CACE04(v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_105_2();

    *(v40 + 14) = v38;
    *(v40 + 22) = 2112;
    v57 = v75;
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 24) = v58;
    *v41 = v58;
    _os_log_impl(&dword_1C8C9B000, v36, v37, "Session %s failed to execute tool invocation %s due to %@", v40, 0x20u);
    sub_1C8D16D78(v41, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_122_4();
    v59 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v59);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v82(v80, v78);
  }

  else
  {
    v60 = v26[39];
    v61 = v26[29];

    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v61, v62);
    v63 = OUTLINED_FUNCTION_209();
    v60(v63);
  }

  swift_willThrow();
  v64 = OUTLINED_FUNCTION_94();
  sub_1C8CE7B78(v64, v65);

  v76 = v26[26];
  v77 = v26[25];
  v79 = v26[24];
  v81 = v26[23];
  v83 = v26[45];
  sub_1C8E07764(0);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70_2();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, v76, v77, v79, v81, v83, a14, a15, a16, a17, a18);
}

void sub_1C8E0A8E8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v22 = a5;
  v23 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ToolInvocation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client];
  v16 = sub_1C9061EFC();
  sub_1C8E1B5B4(v22, v15, type metadata accessor for ToolInvocation);
  (*(v8 + 16))(v11, v23, v7);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1C8E1BAB4(v15, v19 + v17, type metadata accessor for ToolInvocation);
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_1C8E1B60C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C8E0B6D0;
  aBlock[3] = &block_descriptor_176;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  [v24 stepWithEncodedToolInvocation:v16 completionHandler:v20];
  _Block_release(v20);
}

void sub_1C8E0ABC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v82 = a5;
  v83 = a8;
  v79 = a4;
  v80 = a7;
  v81 = a3;
  v78 = type metadata accessor for TypedValue.ID(0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B8, &unk_1C9085198);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v74 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v70 - v18;
  v19 = type metadata accessor for ToolInvocation(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  v25 = type metadata accessor for ToolExecutionResult(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v70 - v32;
  v34 = swift_projectBox();
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v35 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentDialogHandler;
  swift_beginAccess();
  sub_1C8D4F5E4(v84, a6 + v35, &unk_1EC316490, &qword_1C9085158);
  swift_endAccess();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v19);
  v36 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentInvocation;
  swift_beginAccess();
  v37 = a6 + v36;
  v38 = v82;
  sub_1C8D4F5E4(v33, v37, &qword_1EC316440, &dword_1C908BFE0);
  swift_endAccess();
  if (v38)
  {
    type metadata accessor for SageWorkflowRunnerClientToolExecutionSession(0);
    v39 = v38;
    *&v84[0] = sub_1C8E0B408(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
    sub_1C906425C();
  }

  else
  {
    v40 = v75;
    v72 = v21;
    v41 = v78;
    v71 = v27;
    v43 = v76;
    v42 = v77;
    v82 = v25;
    v44 = v79;
    v45 = v80 + *(v19 + 20);
    v80 = *(v45 + 224);
    if (v81)
    {
      *&v84[0] = *(v45 + 56);

      v46 = swift_unknownObjectRetain_n();
      TypedValue.ID.init(propertyListObject:typeInstance:)(v46, v84, v42);
      swift_beginAccess();
      sub_1C8E1B5B4(v34, v72, type metadata accessor for ToolInvocation);
      v53 = v74;
      sub_1C8E1B5B4(v42, v74, type metadata accessor for TypedValue.ID);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v41);
      v54 = v44;
      if (v44)
      {
        v55 = [v44 undoContext];
        v56 = v82;
        v57 = v73;
        if (v55)
        {

          sub_1C8E40058();
          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        v65 = v74;
        v66 = v71;
        v67 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        __swift_storeEnumTagSinglePayload(v57, v58, 1, v67);
        v64 = [v54 didRunOpensIntent];
      }

      else
      {
        v63 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        v57 = v73;
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v63);
        v64 = 0;
        v56 = v82;
        v65 = v74;
        v66 = v71;
      }

      v68 = v72;
      v69 = [v54 attribution];
      sub_1C8E1BAB4(v68, v66, type metadata accessor for ToolInvocation);
      sub_1C8D4F550(v65, v66 + v56[5], &unk_1EC3164C0, &qword_1C9072100);
      sub_1C8D4F550(v57, v66 + v56[6], &qword_1EC3164B8, &unk_1C9085198);
      *(v66 + v56[7]) = v64;
      *(v66 + v56[8]) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
      sub_1C906426C();
      swift_unknownObjectRelease();
      sub_1C8E1B4B8(v42, type metadata accessor for TypedValue.ID);
    }

    else
    {
      swift_beginAccess();
      v47 = v34;
      v48 = v24;
      sub_1C8E1B5B4(v47, v24, type metadata accessor for ToolInvocation);
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
      if (v44)
      {
        v49 = [v44 undoContext];
        v50 = v82;
        v51 = v30;
        if (v49)
        {

          sub_1C8E40058();
          v52 = 0;
        }

        else
        {
          v52 = 1;
        }

        v61 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        __swift_storeEnumTagSinglePayload(v43, v52, 1, v61);
        v60 = [v44 didRunOpensIntent];
      }

      else
      {
        v59 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        __swift_storeEnumTagSinglePayload(v43, 1, 1, v59);
        v60 = 0;
        v50 = v82;
        v51 = v30;
      }

      v62 = [v44 attribution];
      sub_1C8E1BAB4(v48, v51, type metadata accessor for ToolInvocation);
      sub_1C8D4F550(v40, v51 + v50[5], &unk_1EC3164C0, &qword_1C9072100);
      sub_1C8D4F550(v43, v51 + v50[6], &qword_1EC3164B8, &unk_1C9085198);
      *(v51 + v50[7]) = v60;
      *(v51 + v50[8]) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
      sub_1C906426C();
    }
  }
}

void *sub_1C8E0B408(void *a1)
{
  v2 = sub_1C9061D6C();
  v3 = [v2 domain];
  v4 = sub_1C9063EEC();
  v6 = v5;

  if (v4 == sub_1C9063EEC() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1C9064C2C();

    if ((v9 & 1) == 0)
    {
LABEL_10:
      if ([v2 wf_isCancelledStepError])
      {
        type metadata accessor for ToolExecutorError(0);
        sub_1C8CBE304(&qword_1EC316478, type metadata accessor for ToolExecutorError, &protocol conformance descriptor for ToolExecutorError);
        a1 = swift_allocError();
LABEL_12:
        swift_storeEnumTagMultiPayload();
        goto LABEL_13;
      }

      v13 = [v2 domain];
      v14 = sub_1C9063EEC();
      v16 = v15;

      if (v14 == sub_1C9063EEC() && v16 == v17)
      {
      }

      else
      {
        v19 = sub_1C9064C2C();

        if ((v19 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v20 = [v2 code] - 4001;
      if (v20 <= 0x18 && ((0x1F7FFFFu >> v20) & 1) != 0)
      {
        v21 = byte_1C908528A[v20];
        type metadata accessor for ToolExecutorError(0);
        sub_1C8CBE304(&qword_1EC316478, type metadata accessor for ToolExecutorError, &protocol conformance descriptor for ToolExecutorError);
        a1 = swift_allocError();
        *v22 = v21;
        goto LABEL_12;
      }

LABEL_24:

      v23 = a1;
      return a1;
    }
  }

  if ([v2 code] != 4)
  {
    goto LABEL_10;
  }

  sub_1C8E1AF00(4, v10, v11);
  a1 = swift_allocError();
  *v12 = 0;
LABEL_13:

  return a1;
}

uint64_t sub_1C8E0B6D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = sub_1C9063EEC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  swift_unknownObjectRetain();
  v12 = a4;
  v13 = a5;
  v8(v9, v11, a3, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_1C8E0B7A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_1C9063CBC();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_1C906345C();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0B944, 0, 0);
}

uint64_t sub_1C8E0BBD8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E0BCD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_1C9063CBC();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_1C906345C();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0BE6C, 0, 0);
}

uint64_t sub_1C8E0C100(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 280) = a4;
  *(v8 + 120) = a3;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v9 = sub_1C9063C8C();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_1C9063CBC();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = sub_1C906345C();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0C2A8, 0, 0);
}

uint64_t sub_1C8E0C54C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C8E0C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v16 = *(v14 + 272);
  sub_1C8E1A054();
  if (v16)
  {
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_17_15();
    v18(v17);

    v19 = OUTLINED_FUNCTION_32_3();
    sub_1C8CE7B78(v19, v20);
    v21 = OUTLINED_FUNCTION_107();
    sub_1C8CE7B78(v21, v22);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_101();

    v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C8E0C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  sub_1C8E1A054();
  v15 = OUTLINED_FUNCTION_17_15();
  v16(v15);

  v17 = OUTLINED_FUNCTION_32_3();
  sub_1C8CE7B78(v17, v18);
  v19 = OUTLINED_FUNCTION_107();
  sub_1C8CE7B78(v19, v20);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_101();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C8E0C7E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 256) = a4;
  *(v7 + 112) = a2;
  *(v7 + 120) = a3;
  *(v7 + 104) = a1;
  v8 = sub_1C9063C8C();
  *(v7 + 144) = v8;
  *(v7 + 152) = *(v8 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v9 = sub_1C9063CBC();
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v10 = sub_1C906345C();
  *(v7 + 208) = v10;
  *(v7 + 216) = *(v10 - 8);
  *(v7 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0C984, 0, 0);
}

uint64_t sub_1C8E0CC28()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C8E0CD20()
{
  v1 = *(v0 + 248);
  sub_1C8E1A054();
  if (!v1)
  {
    OUTLINED_FUNCTION_33_10();
    v2 = *(v0 + 128);
    v3 = OUTLINED_FUNCTION_110_3();
    v4(v3);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_170();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_170();
}

void sub_1C8E0CE00()
{
  sub_1C8E1A054();
  OUTLINED_FUNCTION_33_10();
  v1 = *(v0 + 128);
  v2 = OUTLINED_FUNCTION_110_3();
  v3(v2);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_170();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C8E0CEE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  *(v5 + 256) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = sub_1C9063C8C();
  *(v5 + 144) = v6;
  *(v5 + 152) = *(v6 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v7 = sub_1C9063CBC();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v8 = sub_1C906345C();
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0D07C, 0, 0);
}

uint64_t sub_1C8E0D320()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C8E0D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = *(v10 + 248);
  sub_1C8E1A054();
  if (v11)
  {
    OUTLINED_FUNCTION_151_4();
  }

  else
  {
    OUTLINED_FUNCTION_33_10();
    v12 = OUTLINED_FUNCTION_110_3();
    v13(v12);

    OUTLINED_FUNCTION_151_4();

    v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }
}

uint64_t sub_1C8E0D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  sub_1C8E1A054();
  OUTLINED_FUNCTION_33_10();
  v10 = OUTLINED_FUNCTION_110_3();
  v11(v10);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_151_4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C8E0D5AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_1C9063CBC();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_1C906345C();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0D748, 0, 0);
}

uint64_t sub_1C8E0D9DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C8E0DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = *(v10 + 248);
  sub_1C8E1A054();
  if (v11)
  {
    OUTLINED_FUNCTION_151_4();
  }

  else
  {
    OUTLINED_FUNCTION_33_10();
    v12 = OUTLINED_FUNCTION_110_3();
    v13(v12);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_151_4();

    v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }
}

uint64_t sub_1C8E0DB94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 280) = a4;
  *(v8 + 120) = a3;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v9 = sub_1C9063C8C();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_1C9063CBC();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = sub_1C906345C();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0DD3C, 0, 0);
}

uint64_t sub_1C8E0DFE0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C8E0E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v16 = *(v14 + 272);
  sub_1C8E1A054();
  if (v16)
  {
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_17_15();
    v18(v17);

    v19 = OUTLINED_FUNCTION_32_3();
    sub_1C8E1B1D8(v19, v20);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_101();

    v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C8E0E1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  sub_1C8E1A054();
  v15 = OUTLINED_FUNCTION_17_15();
  v16(v15);

  v17 = OUTLINED_FUNCTION_32_3();
  sub_1C8E1B1D8(v17, v18);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_101();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C8E0E27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_1C9063CBC();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v9 = sub_1C906345C();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0E418, 0, 0);
}

uint64_t sub_1C8E0E6AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E0E6C4()
{
  OUTLINED_FUNCTION_7();
  if (qword_1EC311438 != -1)
  {
    OUTLINED_FUNCTION_117_1(&qword_1EC311438);
  }

  v1 = type metadata accessor for TypedValueResolutionOptions(0);
  v2 = __swift_project_value_buffer(v1, qword_1EC390C30);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_1C8E1BB40;
  v5 = v0[3];
  v6 = v0[2];

  return sub_1C8E0E790(v6, v5, v2);
}

uint64_t sub_1C8E0E790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E0E7A8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v4;
  *v4 = v5;
  v4[1] = sub_1C8E0E878;
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0BCD0(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8E0E878()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E0E994()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E0E9F0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v6);
  v1[5] = OUTLINED_FUNCTION_39();
  v7 = type metadata accessor for TypedValueResolutionOptions(0);
  v1[6] = v7;
  OUTLINED_FUNCTION_9(v7);
  v8 = OUTLINED_FUNCTION_39();
  v9 = *v3;
  v1[7] = v8;
  v1[8] = v9;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C8E0EAA8()
{
  OUTLINED_FUNCTION_133();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  sub_1C9061EBC();
  OUTLINED_FUNCTION_100_4(v3);
  *v2 = 0xF000000000000007;
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_100_4(v2 + v5);
  v6 = *(v4 + 28);
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_100_4(v2 + v6);
  v7 = *v2;
  sub_1C8CD1784(v1);
  sub_1C8D076D8(v7);
  *v2 = v1;
  *(v2 + 8) = 1;
  sub_1C8D4F5E4(v3, v2 + v5, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v2 + v6, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_100_4(v2 + v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[9] = v8;
  *v8 = v9;
  v8[1] = sub_1C8E0EBF8;
  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[2];

  return sub_1C8E0E790(v12, v11, v10);
}

uint64_t sub_1C8E0EBF8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E0ECF0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v2);

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_1C8E0ED64()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v2);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E0EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1C9061EBC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for TypedValueResolutionRequest(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for TypedValueResolutionOptions(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for TypedValue.ID(0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = sub_1C9063D3C();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0F074, 0, 0);
}

uint64_t sub_1C8E0F074()
{
  OUTLINED_FUNCTION_148_2();
  v124 = v0;
  v1 = *(v0 + 64);
  *(v0 + 280) = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_243_1(v2, v3, v4);
  OUTLINED_FUNCTION_16_17();
  v5 = OUTLINED_FUNCTION_212();
  sub_1C8E1B5B4(v5, v6, v7);
  v8 = v1;
  v9 = sub_1C9063D1C();
  sub_1C906446C();

  if (OUTLINED_FUNCTION_195_2())
  {
    v117 = *(v0 + 248);
    v118 = *(v0 + 240);
    v120 = *(v0 + 272);
    v10 = *(v0 + 232);
    v11 = *(v0 + 200);
    v12 = *(v0 + 64);
    OUTLINED_FUNCTION_55_5();
    v13 = swift_slowAlloc();
    v122.n128_u64[0] = OUTLINED_FUNCTION_183_4();
    *v13 = 136315650;
    v14 = [v12 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_153_4();

    v15 = OUTLINED_FUNCTION_181_0();
    v21 = sub_1C8CACE04(v15, v16, v17, v18, v19, v20);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    TypedValue.ID.debugDescription.getter();
    OUTLINED_FUNCTION_153_4();
    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(v10, v22);
    v23 = OUTLINED_FUNCTION_181_0();
    sub_1C8CACE04(v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_105_2();

    *(v13 + 14) = v10;
    *(v13 + 22) = 2080;
    *(v0 + 48) = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
    v29 = sub_1C906462C();
    OUTLINED_FUNCTION_3_31();
    sub_1C8E1B4B8(v11, v30);
    v31 = OUTLINED_FUNCTION_209();
    sub_1C8CACE04(v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_244_2();
    *(v13 + 24) = v29;
    OUTLINED_FUNCTION_79_5();
    _os_log_impl(v37, v38, v39, v40, v41, 0x20u);
    swift_arrayDestroy();
    v42 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v42);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v43 = *(v117 + 8);
    v44 = v43(v120, v118);
  }

  else
  {
    v47 = *(v0 + 248);
    v48 = *(v0 + 232);
    v49 = *(v0 + 200);

    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(v48, v50);
    v43 = *(v47 + 8);
    v51 = OUTLINED_FUNCTION_209();
    (v43)(v51);
    OUTLINED_FUNCTION_3_31();
    v44 = sub_1C8E1B4B8(v49, v52);
  }

  *(v0 + 288) = v43;
  sub_1C8E09618(v44, v45, v46);
  v53 = [*(*(v0 + 64) + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client) runRequest];
  v54 = [v53 runSource];

  if (!v54)
  {
    goto LABEL_10;
  }

  v55 = sub_1C9063EEC();
  v57 = v56;
  v59 = v55 == sub_1C9063EEC() && v57 == v58;
  if (v59)
  {
  }

  else
  {
    OUTLINED_FUNCTION_148();
    v60 = sub_1C9064C2C();

    if ((v60 & 1) == 0)
    {
LABEL_10:
      v61 = 1;
      goto LABEL_13;
    }
  }

  sub_1C9061DCC();
  v61 = 0;
LABEL_13:
  v62 = *(v0 + 184);
  v63 = *(v0 + 160);
  v65 = *(v0 + 80);
  v64 = *(v0 + 88);
  __swift_storeEnumTagSinglePayload(*(v0 + 176), v61, 1, v64);
  sub_1C8D4F62C(v65 + *(v62 + 24), v63, &qword_1EC312700, &qword_1C9066AC0);
  v66 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v66, v67, v64);
  if (v59)
  {
    v68 = *(v0 + 88);
    sub_1C8D4F62C(*(v0 + 176), *(v0 + 168), &qword_1EC312700, &qword_1C9066AC0);
    v69 = OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_108_2(v69, v70, v68);
    if (!v59)
    {
      sub_1C8D16D78(*(v0 + 160), &qword_1EC312700, &qword_1C9066AC0);
    }
  }

  else
  {
    v71 = *(v0 + 88);
    (*(*(v0 + 96) + 32))(*(v0 + 168), *(v0 + 160), v71);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
  }

  v75 = *(v0 + 80);
  v121 = *v75;
  v76 = *v75;
  if ((~*v75 & 0xF000000000000007) == 0)
  {
    v76 = *(*(v0 + 72) + *(*(v0 + 208) + 24));
  }

  v77 = *(v0 + 184);
  v78 = *(v0 + 144);
  v80 = *(v0 + 120);
  v79 = *(v0 + 128);
  v81 = *(v0 + 112);
  v119 = *(v0 + 88);
  v82 = *(v75 + 8);
  sub_1C8D4F62C(*(v0 + 168), *(v0 + 152), &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D4F62C(v75 + *(v77 + 28), v81, &qword_1EC316440, &dword_1C908BFE0);
  *v79 = v76;
  *(v79 + 8) = v82;
  sub_1C8D4F62C(v81, v79 + *(v80 + 24), &qword_1EC316440, &dword_1C908BFE0);
  v83 = OUTLINED_FUNCTION_145();
  sub_1C8D4F62C(v83, v84, &qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_108_2(v78, 1, v119);
  if (v59)
  {
    sub_1C8CD1784(v121);
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 144), *(v0 + 88));
    v85 = objc_allocWithZone(MEMORY[0x1E696AE98]);
    sub_1C8CD1784(v121);
    v86 = sub_1C9061DDC();
    v87 = [v85 initWithURL:v86 readonly:0];

    v88 = OUTLINED_FUNCTION_145();
    v89(v88);
    if (v87)
    {
      v90 = *(v0 + 152);
      v91 = *(v0 + 112);
      v123[0] = v87;
      sub_1C8E42C40(v123, &v122);

      sub_1C8D16D78(v91, &qword_1EC316440, &dword_1C908BFE0);
      sub_1C8D16D78(v90, &qword_1EC312700, &qword_1C9066AC0);
      v92 = v122;
      goto LABEL_25;
    }
  }

  v93 = *(v0 + 152);
  sub_1C8D16D78(*(v0 + 112), &qword_1EC316440, &dword_1C908BFE0);
  sub_1C8D16D78(v93, &qword_1EC312700, &qword_1C9066AC0);
  v92 = xmmword_1C9065DB0;
LABEL_25:
  OUTLINED_FUNCTION_106_3(*(v0 + 128), *(v0 + 120), v92, *(v0 + 136));
  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20(&qword_1EDA632E0);
  }

  v94 = qword_1EDA632E8;
  sub_1C8CBE304(&qword_1EDA60E00, type metadata accessor for TypedValue.ID, &protocol conformance descriptor for TypedValue.ID);
  OUTLINED_FUNCTION_148();
  *(v0 + 296) = sub_1C9061C5C();
  *(v0 + 304) = v95;
  v96 = *(v0 + 120);
  OUTLINED_FUNCTION_102_3();
  sub_1C8CBE304(v97, v98, &protocol conformance descriptor for TypedValueResolutionRequest);
  *(v0 + 312) = sub_1C9061C5C();
  *(v0 + 320) = v99;
  OUTLINED_FUNCTION_64();
  v100 = *(v0 + 64);
  v101 = OUTLINED_FUNCTION_125();
  sub_1C8CE9144(v101, v102);
  v103 = OUTLINED_FUNCTION_208_0();
  sub_1C8CE9144(v103, v104);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 328) = v105;
  *v105 = v106;
  v105[1] = sub_1C8E0FB18;
  v125 = v94;
  v126 = v96;
  OUTLINED_FUNCTION_115_1();

  return sub_1C8E0C100(v107, v108, v109, v110, v111, v112, v113, v114);
}

uint64_t sub_1C8E0FB18()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E0FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_224_1();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v41 = *(v36 + 16);
  if (qword_1EDA632F8 != -1)
  {
    v38 = OUTLINED_FUNCTION_13_16(&qword_1EDA632F8);
  }

  v42 = *(v36 + 336);
  sub_1C8D39E40(v38, v39, v40);
  sub_1C9061C2C();
  if (v42)
  {
    v43 = v42;
    v45 = *(v36 + 168);
    v44 = *(v36 + 176);
    v46 = *(v36 + 136);
    sub_1C8CE7B78(*(v36 + 296), *(v36 + 304));
    v47 = OUTLINED_FUNCTION_94();
    sub_1C8CE7B78(v47, v48);
    v49 = OUTLINED_FUNCTION_125();
    sub_1C8CE7B78(v49, v50);
    OUTLINED_FUNCTION_4_25();
    sub_1C8E1B4B8(v46, v51);
    OUTLINED_FUNCTION_191_5(v45);
    OUTLINED_FUNCTION_191_5(v44);
    v52 = *(v36 + 256);
    v53 = *(v36 + 64);
    sub_1C906371C();
    OUTLINED_FUNCTION_7_23();
    v54 = OUTLINED_FUNCTION_134();
    sub_1C8E1B5B4(v54, v55, v56);
    v57 = v53;
    v58 = v43;
    v59 = sub_1C9063D1C();
    v60 = sub_1C906444C();

    os_log_type_enabled(v59, v60);
    OUTLINED_FUNCTION_200_3();
    if (v61)
    {
      v164 = v53;
      v62 = *(v36 + 64);
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      v154 = OUTLINED_FUNCTION_81_2();
      a24 = OUTLINED_FUNCTION_130_3();
      *v45 = 136315650;
      v63 = [v62 debugDescription];
      sub_1C9063EEC();

      v64 = OUTLINED_FUNCTION_300();
      sub_1C8CACE04(v64, v65, v66, v67, v68, v69);
      OUTLINED_FUNCTION_193_3();
      OUTLINED_FUNCTION_60_7();
      TypedValue.ID.debugDescription.getter();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v52, v70);
      v71 = OUTLINED_FUNCTION_211();
      sub_1C8CACE04(v71, v72, v73, v74, v75, v76);
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_63_8();
      v77 = v43;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 24) = v78;
      *v154 = v78;
      OUTLINED_FUNCTION_98_3(&dword_1C8C9B000, v79, v60, "Session %s failed to resolve reference %s due to %@");
      sub_1C8D16D78(v154, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      v80 = MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_185_3(v80, v81, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      (v57)(v164, v41);
    }

    else
    {

      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v52, v133);
      v134 = OUTLINED_FUNCTION_211();
      (v57)(v134);
    }

    OUTLINED_FUNCTION_59_9();
    a13 = v135;
    a14 = v136;
    a15 = v137;
    v153 = *(v36 + 160);
    v156 = *(v36 + 152);
    v158 = *(v36 + 144);
    v159 = *(v36 + 136);
    v161 = *(v36 + 128);
    v163 = *(v36 + 112);
    v166 = *(v36 + 104);
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v82 = *(v36 + 224);
    v83 = *(v36 + 192);
    v85 = *(v36 + 72);
    v84 = *(v36 + 80);
    v86 = *(v36 + 64);
    v87 = *(v36 + 32);
    sub_1C906371C();
    OUTLINED_FUNCTION_7_23();
    sub_1C8E1B5B4(v85, v82, v88);
    OUTLINED_FUNCTION_16_17();
    sub_1C8E1B5B4(v84, v83, v89);

    v90 = v86;
    v91 = sub_1C9063D1C();
    v92 = sub_1C906446C();

    v152 = v92;
    v93 = os_log_type_enabled(v91, v92);
    v155 = *(v36 + 312);
    v157 = *(v36 + 320);
    v94 = *(v36 + 288);
    v160 = *(v36 + 240);
    v162 = *(v36 + 264);
    v95 = *(v36 + 224);
    v96 = *(v36 + 192);
    v98 = *(v36 + 168);
    v97 = *(v36 + 176);
    v165 = *(v36 + 136);
    if (v93)
    {
      a15 = *(v36 + 168);
      v99 = *(v36 + 64);
      a11 = *(v36 + 296);
      a12 = *(v36 + 304);
      a14 = *(v36 + 288);
      v100 = swift_slowAlloc();
      a10 = OUTLINED_FUNCTION_186_4();
      a23 = a10;
      *v100 = 136315906;
      v101 = [v99 debugDescription];
      a13 = v97;
      v102 = sub_1C9063EEC();
      a9 = v87;
      v104 = v103;

      v108 = sub_1C8CACE04(v102, v104, &a23, v105, v106, v107);

      *(v100 + 4) = v108;
      *(v100 + 12) = 2080;
      TypedValue.ID.debugDescription.getter();
      OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v95, v109);
      v110 = OUTLINED_FUNCTION_245();
      sub_1C8CACE04(v110, v111, v112, v113, v114, v115);
      OUTLINED_FUNCTION_123_3();

      *(v100 + 14) = v95;
      *(v100 + 22) = 2080;
      *(v36 + 40) = *v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
      v116 = sub_1C906462C();
      v118 = v117;
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v96, v119);
      v123 = sub_1C8CACE04(v116, v118, &a23, v120, v121, v122);

      *(v100 + 24) = v123;
      *(v100 + 32) = 2080;
      a24 = a9;
      TypedValue.debugDescription.getter();
      sub_1C8CACE04(v124, v125, &a23, v126, v127, v128);
      OUTLINED_FUNCTION_241_2();
      *(v100 + 34) = v96;
      _os_log_impl(&dword_1C8C9B000, v91, v152, "Session %s successfully resolved reference %s (coercing to: %s) into: %s", v100, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(a11, a12);
      sub_1C8CE7B78(v155, v157);
      v129 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v129, v130);

      a14(v162, v160);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v165, v131);
      OUTLINED_FUNCTION_191_5(a15);
      OUTLINED_FUNCTION_191_5(a13);
      v132 = a9;
    }

    else
    {
      sub_1C8CE7B78(*(v36 + 296), *(v36 + 304));
      sub_1C8CE7B78(v155, v157);
      v138 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v138, v139);

      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v95, v140);
      v94(v162, v160);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v165, v141);
      sub_1C8D16D78(v98, &qword_1EC312700, &qword_1C9066AC0);
      sub_1C8D16D78(v97, &qword_1EC312700, &qword_1C9066AC0);
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v96, v142);
      v132 = v87;
    }

    v153 = *(v36 + 160);
    v156 = *(v36 + 152);
    v158 = *(v36 + 144);
    v159 = *(v36 + 136);
    v161 = *(v36 + 128);
    v163 = *(v36 + 112);
    v166 = *(v36 + 104);
    **(v36 + 56) = v132;

    OUTLINED_FUNCTION_7_10();
  }

  OUTLINED_FUNCTION_144_2();

  return v144(v143, v144, v145, v146, v147, v148, v149, v150, a9, a10, a11, a12, a13, a14, a15, v153, v156, v158, v159, v161, v163, v166, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1C8E103C8()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[17];
  sub_1C8CE7B78(v0[37], v0[38]);
  v5 = OUTLINED_FUNCTION_94();
  sub_1C8CE7B78(v5, v6);
  OUTLINED_FUNCTION_4_25();
  sub_1C8E1B4B8(v4, v7);
  OUTLINED_FUNCTION_191_5(v3);
  OUTLINED_FUNCTION_191_5(v2);
  v8 = v0[42];
  OUTLINED_FUNCTION_78_6();
  v9 = v0[8];
  sub_1C906371C();
  OUTLINED_FUNCTION_7_23();
  v10 = OUTLINED_FUNCTION_212();
  sub_1C8E1B5B4(v10, v11, v12);
  v13 = v9;
  v14 = v8;
  v15 = sub_1C9063D1C();
  v16 = sub_1C906444C();

  os_log_type_enabled(v15, v16);
  v17 = v0[36];
  v18 = v0[32];
  OUTLINED_FUNCTION_213_2();
  if (v19)
  {
    v43 = v18;
    v20 = v0[8];
    OUTLINED_FUNCTION_55_5();
    swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_130_3();
    *v1 = 136315650;
    v21 = [v20 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_196_4();
    v22 = OUTLINED_FUNCTION_300();
    sub_1C8CACE04(v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_193_3();
    OUTLINED_FUNCTION_60_7();
    TypedValue.ID.debugDescription.getter();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(&qword_1EC312700, v28);
    v29 = OUTLINED_FUNCTION_211();
    sub_1C8CACE04(v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_63_8();
    v35 = v8;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 24) = v36;
    *v42 = v36;
    OUTLINED_FUNCTION_98_3(&dword_1C8C9B000, v37, v16, "Session %s failed to resolve reference %s due to %@");
    sub_1C8D16D78(v42, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v17(v43, v1);
  }

  else
  {

    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(&qword_1EC312700, v38);
    v39 = OUTLINED_FUNCTION_163_3();
    (v17)(v39);
  }

  OUTLINED_FUNCTION_59_9();
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v40();
}

uint64_t sub_1C8E1071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C8E10744, 0, 0);
}

uint64_t sub_1C8E10744()
{
  OUTLINED_FUNCTION_133();
  v0[26] = sub_1C9061EFC();
  OUTLINED_FUNCTION_203();
  v0[27] = sub_1C9061EFC();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C8E10888;
  v1 = swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316408, &qword_1C9085048);
  OUTLINED_FUNCTION_96_2(v2);
  v0[11] = 1107296256;
  v0[12] = sub_1C8E1BB50;
  v0[13] = &block_descriptor_91;
  v0[14] = v1;
  v3 = OUTLINED_FUNCTION_178_1();
  [v3 v4];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C8E10888()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E10984()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  **(v0 + 160) = *(v0 + 144);

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_1C8E109EC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E10A5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1C8E10AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t sub_1C8E10B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 88) = *a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 104) = v4;
  *(v3 + 120) = *(a2 + 32);
  *(v3 + 65) = *(a2 + 48);
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E10B38()
{
  OUTLINED_FUNCTION_4_2();
  *(v0 + 16) = *(v0 + 88);
  v1 = *(v0 + 65);
  v2 = *(v0 + 120);
  *(v0 + 32) = *(v0 + 104);
  *(v0 + 48) = v2;
  *(v0 + 64) = v1;
  if (qword_1EC311438 != -1)
  {
    OUTLINED_FUNCTION_117_1(&qword_1EC311438);
  }

  v3 = type metadata accessor for TypedValueResolutionOptions(0);
  v4 = __swift_project_value_buffer(v3, qword_1EC390C30);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 136) = v5;
  *v5 = v6;
  v5[1] = sub_1C8E10C2C;
  v7 = *(v0 + 72);

  return sub_1C8E10D64(v7, v0 + 16, v4);
}

uint64_t sub_1C8E10C2C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E10D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E10D94()
{
  OUTLINED_FUNCTION_4_2();
  v2 = v0[10];
  v1 = v0[11];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = sub_1C8E10E6C;
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0BCD0(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8E10E6C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E10F88()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E10FE4()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  v5 = v4;
  *(v1 + 72) = v6;
  *(v1 + 80) = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v7);
  *(v1 + 88) = OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for TypedValueResolutionOptions(0);
  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_9(v8);
  *(v1 + 104) = OUTLINED_FUNCTION_39();
  v9 = *(v5 + 16);
  *(v1 + 112) = *v5;
  *(v1 + 128) = v9;
  *(v1 + 144) = *(v5 + 32);
  *(v1 + 65) = *(v5 + 48);
  *(v1 + 160) = *v3;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C8E110C0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v19 = *(v0 + 65);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_1C9061EBC();
  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  OUTLINED_FUNCTION_100_4(v6);
  *v5 = 0xF000000000000007;
  v7 = *(v4 + 24);
  OUTLINED_FUNCTION_100_4(v5 + v7);
  v8 = *(v4 + 28);
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_100_4(v5 + v8);
  v9 = *v5;
  sub_1C8CD1784(v1);
  sub_1C8D076D8(v9);
  *v5 = v1;
  *(v5 + 8) = 1;
  sub_1C8D4F5E4(v6, v5 + v7, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v5 + v8, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_100_4(v5 + v8);
  *(v0 + 16) = v18;
  *(v0 + 32) = v17;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 168) = v10;
  *v10 = v11;
  v10[1] = sub_1C8E11234;
  OUTLINED_FUNCTION_128();

  return sub_1C8E10D64(v12, v13, v14);
}

uint64_t sub_1C8E11234()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E1132C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v2);

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_1C8E113A0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v2);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E11418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a3;
  v4[62] = a4;
  v4[59] = a1;
  v4[60] = a2;
  v5 = sub_1C9061EBC();
  v4[63] = v5;
  v4[64] = *(v5 - 8);
  v4[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v4[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = type metadata accessor for TypedValueResolutionRequest(0);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = type metadata accessor for TypedValueResolutionOptions(0);
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v6 = sub_1C9063D3C();
  v4[75] = v6;
  v4[76] = *(v6 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E11644, 0, 0);
}

uint64_t sub_1C8E11F1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 712) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E12018()
{
  v129 = v0;
  v2 = *(v0 + 696);

  if (qword_1EDA632F8 != -1)
  {
    v3 = OUTLINED_FUNCTION_13_16(&qword_1EDA632F8);
  }

  v6 = *(v0 + 672);
  sub_1C8D39E40(v3, v4, v5);
  sub_1C9061C2C();
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    OUTLINED_FUNCTION_4_25();
    sub_1C8E1B4B8(v10, v11);
    v12 = OUTLINED_FUNCTION_203();
    sub_1C8CE7B78(v12, v13);
    sub_1C8CE7B78(v9, v8);
    v14 = OUTLINED_FUNCTION_148();
    sub_1C8CE7B78(v14, v15);
    v16 = *(v0 + 480);
    v17 = *(v0 + 488);
    sub_1C906371C();
    v18 = v16;
    sub_1C8E1AFE8(v17, v0 + 200);
    v19 = v7;
    v20 = sub_1C9063D1C();
    v21 = sub_1C906444C();

    sub_1C8E1B044(v17);
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 648);
    v24 = *(v0 + 616);
    v25 = *(v0 + 608);
    if (v22)
    {
      v120 = *(v0 + 600);
      v122 = *(v0 + 648);
      v26 = *(v0 + 480);
      v27 = *(v0 + 488);
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_2();
      v124 = OUTLINED_FUNCTION_68_3();
      *v25 = 136315650;
      v28 = [v26 debugDescription];
      v29 = sub_1C9063EEC();

      v30 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v30, v31, v32, v33, v34, v35);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_50_10();
      v36 = v27[1];
      v125 = *v27;
      v126 = v36;
      v127 = v27[2];
      v128 = *(v27 + 48);
      v37 = TypedValue.DeferredValue.debugDescription.getter();
      sub_1C8CACE04(v37, v38, &v124, v39, v40, v41);
      OUTLINED_FUNCTION_152_3();

      *(v25 + 14) = v29;
      OUTLINED_FUNCTION_113_2();
      v42 = v7;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_131_1(v43);
      OUTLINED_FUNCTION_240_2(&dword_1C8C9B000, v44, v45, "Session %s failed to resolve deferred value %s due to %@");
      sub_1C8D16D78(v1, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      v122(v24, v120);
    }

    else
    {

      v104 = OUTLINED_FUNCTION_211();
      v23(v104);
    }

    OUTLINED_FUNCTION_61_7();
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v46 = *(v0 + 584);
    v48 = *(v0 + 488);
    v47 = *(v0 + 496);
    v49 = *(v0 + 480);
    v50 = *(v0 + 448);
    sub_1C906371C();
    OUTLINED_FUNCTION_16_17();
    sub_1C8E1B5B4(v47, v46, v51);
    v52 = v49;
    sub_1C8E1AFE8(v48, v0 + 256);

    v53 = sub_1C9063D1C();
    v54 = sub_1C906446C();

    sub_1C8E1B044(v48);

    v55 = os_log_type_enabled(v53, v54);
    v121 = *(v0 + 680);
    v123 = *(v0 + 688);
    v56 = *(v0 + 648);
    v57 = *(v0 + 584);
    v58 = *(v0 + 568);
    if (v55)
    {
      v118 = *(v0 + 624);
      v119 = *(v0 + 568);
      v59 = *(v0 + 480);
      v60 = *(v0 + 488);
      v115 = *(v0 + 656);
      v116 = *(v0 + 664);
      v117 = *(v0 + 600);
      v61 = swift_slowAlloc();
      v113 = OUTLINED_FUNCTION_186_4();
      v124 = v113;
      *v61 = 136315906;
      v62 = [v59 debugDescription];
      v114 = v56;
      v63 = sub_1C9063EEC();

      v64 = OUTLINED_FUNCTION_32_3();
      sub_1C8CACE04(v64, v65, v66, v67, v68, v69);
      OUTLINED_FUNCTION_173_3();
      *(v61 + 4) = v62;
      *(v61 + 12) = 2080;
      v70 = v60[1];
      v125 = *v60;
      v126 = v70;
      v127 = v60[2];
      v128 = *(v60 + 48);
      v71 = TypedValue.DeferredValue.debugDescription.getter();
      sub_1C8CACE04(v71, v72, &v124, v73, v74, v75);
      OUTLINED_FUNCTION_205_2();

      *(v61 + 14) = v63;
      *(v61 + 22) = 2080;
      *(v0 + 456) = *v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
      sub_1C906462C();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v57, v76);
      v77 = OUTLINED_FUNCTION_208_0();
      sub_1C8CACE04(v77, v78, v79, v80, v81, v82);
      OUTLINED_FUNCTION_197_3();
      *(v61 + 24) = v0 + 456;
      *(v61 + 32) = 2080;
      *&v125 = v50;
      TypedValue.debugDescription.getter();
      v88 = sub_1C8CACE04(v83, v84, &v124, v85, v86, v87);

      *(v61 + 34) = v88;
      OUTLINED_FUNCTION_215_1();
      _os_log_impl(v89, v90, v91, v92, v61, 0x2Au);
      OUTLINED_FUNCTION_121_2(v93, v94, v95, v96, v97, v98, v99, v100, v112, v50, v113);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(v115, v116);
      sub_1C8CE7B78(v121, v123);
      v101 = OUTLINED_FUNCTION_148();
      sub_1C8CE7B78(v101, v102);

      v114(v118, v117);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v119, v103);
    }

    else
    {
      sub_1C8CE7B78(*(v0 + 656), *(v0 + 664));
      sub_1C8CE7B78(v121, v123);
      v106 = OUTLINED_FUNCTION_148();
      sub_1C8CE7B78(v106, v107);

      v108 = OUTLINED_FUNCTION_245();
      (v56)(v108);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v58, v109);
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v57, v110);
    }

    **(v0 + 472) = v50;

    OUTLINED_FUNCTION_7_10();
  }

  return v105();
}

uint64_t sub_1C8E129B0(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E129CC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_1C8E12A84;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return sub_1C8E0C7E8(v6, "injectValue", 11, 2, v4, v4, v5);
}

uint64_t sub_1C8E12A84()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E12B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  type metadata accessor for TypedValue.ID(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v4 = sub_1C9063D3C();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E12C78, 0, 0);
}

uint64_t sub_1C8E12C78()
{
  v51 = v0;
  v2 = v0[29];
  v3 = v0[21];
  v0[30] = *MEMORY[0x1E69E10F8];
  sub_1C906371C();

  v4 = v3;
  v5 = sub_1C9063D1C();
  sub_1C906446C();

  v6 = OUTLINED_FUNCTION_195_2();
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  if (v6)
  {
    v10 = v0[21];
    v49 = v0[22];
    OUTLINED_FUNCTION_164_2();
    v50[0] = OUTLINED_FUNCTION_95_2();
    *v7 = 136315394;
    v11 = [v10 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_97_4();

    v12 = OUTLINED_FUNCTION_325();
    sub_1C8CACE04(v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_50_10();
    v50[1] = v49;
    TypedValue.debugDescription.getter();
    sub_1C8CACE04(v18, v19, v50, v20, v21, v22);
    OUTLINED_FUNCTION_194_3();
    *(v7 + 14) = v1;
    OUTLINED_FUNCTION_79_5();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    OUTLINED_FUNCTION_189_3();
    v28 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v28);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v2 = *(v8 + 8);
    v29 = v2(v7, v9);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_203_3();
    v29 = v2(v32, v9);
  }

  v0[31] = v2;
  v33 = sub_1C8E09618(v29, v30, v31);
  if (qword_1EDA632E0 != -1)
  {
    v33 = OUTLINED_FUNCTION_10_20(&qword_1EDA632E0);
  }

  v0[18] = v0[22];
  sub_1C8D381AC(v33, v34, v35);
  v36 = sub_1C9061C5C();
  v0[32] = 0;
  v0[33] = v36;
  v0[34] = v37;
  OUTLINED_FUNCTION_11_6();
  v38 = v0[21];
  sub_1C8CB78AC(0, &qword_1EC3164D0, 0x1E69E0DB8);
  v39 = OUTLINED_FUNCTION_276();
  sub_1C8CE9144(v39, v40);
  v41 = OUTLINED_FUNCTION_276();
  v43 = sub_1C8E29064(v41, v42);
  v0[35] = v43;
  v44 = *(v38 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1C8E13190;
  v45 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164D8, &qword_1C90851D0);
  v0[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_174_3(COERCE_DOUBLE(1107296256));
  v0[12] = sub_1C8E13A94;
  v0[13] = &block_descriptor_199;
  v0[14] = v45;
  [v44 injectContentAsVariable:v43 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_225_2();

  return MEMORY[0x1EEE6DEC8](v46);
}

uint64_t sub_1C8E13190()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E1328C()
{
  v95 = v0;
  v2 = v0[22];
  v3 = v0[19];
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  v94 = v2;
  TypedValue.typeIdentifier.getter();
  v5 = v0[32];
  v6 = v0[24];
  if (v2 >> 60 == 3)
  {
    OUTLINED_FUNCTION_50();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v94 = v7 | 0x2000000000000000;
  }

  else
  {
    v94 = v4;
  }

  swift_unknownObjectRetain();

  TypedValue.ID.init(propertyListObject:typeInstance:)(v3, &v94, v6);
  if (v5)
  {
    v8 = v5;
    v9 = v0[35];
    sub_1C8CE7B78(v0[33], v0[34]);

    swift_unknownObjectRelease();

    v10 = v0[21];
    sub_1C906371C();
    v11 = v10;

    v12 = v8;
    v13 = sub_1C9063D1C();
    v14 = sub_1C906444C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[31];
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[25];
    if (v15)
    {
      v86 = v0[22];
      v91 = v0[31];
      v20 = v0[21];
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_2();
      v93 = OUTLINED_FUNCTION_68_3();
      *v18 = 136315650;
      v21 = [v20 debugDescription];
      sub_1C9063EEC();
      OUTLINED_FUNCTION_153_4();

      v22 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_50_10();
      v94 = v86;
      TypedValue.debugDescription.getter();
      sub_1C8CACE04(v28, v29, &v93, v30, v31, v32);
      OUTLINED_FUNCTION_152_3();

      *(v18 + 14) = v17;
      OUTLINED_FUNCTION_113_2();
      v33 = v8;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_131_1(v34);
      OUTLINED_FUNCTION_240_2(&dword_1C8C9B000, v35, v36, "Session %s failed to inject value %s due to %@");
      sub_1C8D16D78(v1, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      v91(v17, v19);
    }

    else
    {

      v78 = OUTLINED_FUNCTION_181_0();
      v16(v78);
    }

    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v37 = v0[21];
    sub_1C8E1BAB4(v0[24], v0[20], type metadata accessor for TypedValue.ID);
    sub_1C906371C();
    OUTLINED_FUNCTION_7_23();
    v38 = OUTLINED_FUNCTION_203();
    sub_1C8E1B5B4(v38, v39, v40);
    v41 = v37;

    v42 = sub_1C9063D1C();
    v43 = sub_1C906446C();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[34];
    v89 = v0[35];
    v90 = v0[33];
    v46 = v0[31];
    v92 = v0[28];
    v47 = v0[25];
    v48 = v0[23];
    if (v44)
    {
      v83 = v0[22];
      v88 = v0[31];
      v49 = v0[21];
      OUTLINED_FUNCTION_55_5();
      v87 = v47;
      v50 = swift_slowAlloc();
      v84 = OUTLINED_FUNCTION_183_4();
      v93 = v84;
      *v50 = 136315650;
      v51 = [v49 debugDescription];
      v85 = v45;
      v52 = sub_1C9063EEC();
      v54 = v53;

      sub_1C8CACE04(v52, v54, &v93, v55, v56, v57);
      OUTLINED_FUNCTION_197_3();
      *(v50 + 4) = v51;
      *(v50 + 12) = 2080;
      v94 = v83;
      TypedValue.debugDescription.getter();
      sub_1C8CACE04(v58, v59, &v93, v60, v61, v62);
      OUTLINED_FUNCTION_205_2();

      *(v50 + 14) = v54;
      *(v50 + 22) = 2080;
      TypedValue.ID.debugDescription.getter();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v48, v63);
      v64 = OUTLINED_FUNCTION_208_0();
      sub_1C8CACE04(v64, v65, v66, v67, v68, v69);
      OUTLINED_FUNCTION_197_3();
      *(v50 + 24) = v48;
      _os_log_impl(&dword_1C8C9B000, v42, v43, "Session %s successfully injected value %s as %s", v50, 0x20u);
      OUTLINED_FUNCTION_121_2(v70, v71, v72, v73, v74, v75, v76, v77, v82, v83, v84);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      swift_unknownObjectRelease();

      sub_1C8CE7B78(v90, v85);
      v88(v92, v87);
    }

    else
    {

      swift_unknownObjectRelease();

      sub_1C8CE7B78(v90, v45);
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v48, v80);
      v46(v92, v47);
    }

    OUTLINED_FUNCTION_7_10();
  }

  return v79();
}

void sub_1C8E13850(uint64_t a1)
{
  v4 = v1[35];
  v3 = v1[36];
  swift_willThrow();
  v5 = OUTLINED_FUNCTION_94();
  sub_1C8CE7B78(v5, v6);

  v7 = v1[36];
  OUTLINED_FUNCTION_236_1();
  v8 = v3;

  v9 = v7;
  v10 = sub_1C9063D1C();
  sub_1C906444C();

  v11 = OUTLINED_FUNCTION_187_4();
  v12 = v1[31];
  v14 = v1[26];
  v13 = v1[27];
  v15 = v1[25];
  if (v11)
  {
    v47 = v1[22];
    v16 = v1[21];
    OUTLINED_FUNCTION_55_5();
    swift_slowAlloc();
    OUTLINED_FUNCTION_81_2();
    v48[0] = OUTLINED_FUNCTION_68_3();
    *v14 = 136315650;
    v17 = [v16 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_88();

    v18 = OUTLINED_FUNCTION_211();
    sub_1C8CACE04(v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_50_10();
    v48[1] = v47;
    TypedValue.debugDescription.getter();
    sub_1C8CACE04(v24, v25, v48, v26, v27, v28);
    OUTLINED_FUNCTION_168_4();
    *(v14 + 14) = v13;
    OUTLINED_FUNCTION_113_2();
    v29 = v7;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_131_1(v30);
    OUTLINED_FUNCTION_86_3(&dword_1C8C9B000, v31, v32, "Session %s failed to inject value %s due to %@");
    sub_1C8D16D78(v2, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_85_2();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v41 = OUTLINED_FUNCTION_216_1(v33, v34, v35, v36, v37, v38, v39, v40, v46, v47, v15, v13);
    v42(v41);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_211();
    v12(v43);
  }

  OUTLINED_FUNCTION_227_1();

  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_225_2();

  __asm { BRAA            X1, X16 }
}

uint64_t *sub_1C8E13A94(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1C8E10A5C(v6, a3);
  }

  if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1C8E10AE8(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8E13B1C()
{
  OUTLINED_FUNCTION_4_2();
  memcpy((v0 + 16), v1, 0x50uLL);
  *(v0 + 112) = 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1C8E13BE0;

  return sub_1C8E13D1C();
}

uint64_t sub_1C8E13BE0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_160_4();

    return v11(v10);
  }
}

uint64_t sub_1C8E13D1C()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 96) = v5;
  memcpy((v1 + 16), v6, 0x50uLL);
  *(v1 + 144) = *v3;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E13D9C()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 96);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1C8E13E88;

  return sub_1C8E0CEE4("enumerateValueSet", 17, 2, &unk_1C9085018, v3);
}

uint64_t sub_1C8E13E88()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1C8E13FC4()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E14020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 721) = a6;
  *(v6 + 520) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  *(v6 + 528) = type metadata accessor for Query(0);
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3163F0, &unk_1C9085038);
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = type metadata accessor for ToolInvocation(0);
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  v7 = sub_1C9063D3C();
  *(v6 + 616) = v7;
  *(v6 + 624) = *(v7 - 8);
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E141DC, 0, 0);
}

uint64_t sub_1C8E14AE4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 712) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E1560C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = a2[1];
  *(v5 + 48) = *a2;
  *(v5 + 64) = v6;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E1562C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v4 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  *(v2 + 40) = v4;
  *(v2 + 56) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_1C8E15708;
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0E27C(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C8E15708()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E15824()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E15880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[24] = a1;
  v8[25] = a2;
  v8[32] = *(a7 - 8);
  v8[33] = swift_task_alloc();
  v9 = sub_1C9063D3C();
  v8[34] = v9;
  v8[35] = *(v9 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E159B4, 0, 0);
}

uint64_t sub_1C8E15E58()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E15F54()
{
  v104 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16(&qword_1EDA632F8);
  }

  v3 = *(v0 + 328);
  sub_1C9061C2C();
  if (v3)
  {
    sub_1C8CE7B78(*(v0 + 336), *(v0 + 344));
    v4 = OUTLINED_FUNCTION_148();
    sub_1C8CE7B78(v4, v5);
    OUTLINED_FUNCTION_228_2();
    v6 = v1;
    OUTLINED_FUNCTION_12_17();
    v7 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B348(v7, v8, v9, v10, v11);
    v12 = v3;
    v13 = sub_1C9063D1C();
    v14 = sub_1C906444C();

    OUTLINED_FUNCTION_11_19();
    v15 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B348(v15, v16, v17, v18, v19);

    v20 = os_log_type_enabled(v13, v14);
    v21 = *(v0 + 320);
    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = *(v0 + 272);
    if (v20)
    {
      v99 = *(v0 + 320);
      v92 = OUTLINED_FUNCTION_126_1();
      v94 = v25;
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_75_2();
      v101 = OUTLINED_FUNCTION_68_3();
      *v23 = 136315650;
      v26 = [v21 debugDescription];
      sub_1C9063EEC();
      OUTLINED_FUNCTION_153_4();

      v27 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v27, v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_38_12();
      v103 = v92;
      v102 = v94;
      v33 = DisplayRepresentation.ResolvingRequest.debugDescription.getter();
      sub_1C8CACE04(v33, v34, &v101, v35, v36, v37);
      OUTLINED_FUNCTION_152_3();

      OUTLINED_FUNCTION_239_1();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124_2(v38);
      OUTLINED_FUNCTION_237_2(&dword_1C8C9B000, v39, v40, "Session %s failed to fetch display value using request: %s due to error: %@");
      sub_1C8D16D78(v6, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v41 = OUTLINED_FUNCTION_19_16();
      MEMORY[0x1CCA833A0](v41);

      v99(v22, v24);
    }

    else
    {

      v85 = OUTLINED_FUNCTION_181_0();
      (v21)(v85);
    }

    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v98 = v2;
    v100 = v1;
    v97 = *(v0 + 232);
    v43 = *(v0 + 216);
    v42 = *(v0 + 224);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);
    sub_1C906371C();
    v46 = OUTLINED_FUNCTION_134();
    v47(v46);
    v48 = v44;
    OUTLINED_FUNCTION_12_17();
    sub_1C8E1B348(v45, v43, v42, v97, v49);
    v50 = sub_1C9063D1C();
    v51 = sub_1C906446C();

    OUTLINED_FUNCTION_11_19();
    sub_1C8E1B348(v45, v43, v42, v97, v52);
    v53 = os_log_type_enabled(v50, v51);
    v54 = *(v0 + 320);
    v55 = *(v0 + 296);
    v56 = *(v0 + 272);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);
    if (v53)
    {
      v96 = *(v0 + 272);
      v59 = *(v0 + 240);
      v60 = *(v0 + 200);
      v89 = *(v0 + 224);
      v90 = *(v0 + 208);
      v91 = *(v0 + 336);
      v93 = *(v0 + 344);
      v95 = *(v0 + 296);
      v61 = swift_slowAlloc();
      v101 = OUTLINED_FUNCTION_183_4();
      *v61 = 136315650;
      v62 = [v60 debugDescription];
      v63 = sub_1C9063EEC();
      v65 = v64;

      v69 = sub_1C8CACE04(v63, v65, &v101, v66, v67, v68);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2080;
      v70 = sub_1C9064C3C();
      v72 = v71;
      (*(v58 + 8))(v57, v59);
      sub_1C8CACE04(v70, v72, &v101, v73, v74, v75);
      OUTLINED_FUNCTION_123_3();

      *(v61 + 14) = v57;
      *(v61 + 22) = 2080;
      v103 = v89;
      v102 = v90;
      v76 = DisplayRepresentation.ResolvingRequest.debugDescription.getter();
      sub_1C8CACE04(v76, v77, &v101, v78, v79, v80);
      OUTLINED_FUNCTION_241_2();
      *(v61 + 24) = v70;
      OUTLINED_FUNCTION_215_1();
      _os_log_impl(v81, v82, v83, v84, v61, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(v91, v93);
      sub_1C8CE7B78(v98, v100);

      v54(v95, v96);
    }

    else
    {
      v87 = *(v0 + 240);
      sub_1C8CE7B78(*(v0 + 336), *(v0 + 344));
      sub_1C8CE7B78(v98, v100);

      (*(v58 + 8))(v57, v87);
      v54(v55, v56);
    }

    OUTLINED_FUNCTION_7_10();
  }

  return v86();
}

uint64_t sub_1C8E1672C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1C8E10A5C(v5, a3);
  }

  v7 = a2;
  OUTLINED_FUNCTION_152_3();
  sub_1C9061F3C();
  v9 = v8;

  v10 = OUTLINED_FUNCTION_94();

  return sub_1C8E10AC8(v10, v11, v9);
}

uint64_t sub_1C8E167BC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_4(v4);
  *v5 = v6;
  v5[1] = sub_1C8E1685C;

  return sub_1C8E1693C(v3, v1, 1);
}

uint64_t sub_1C8E1685C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E1693C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E16958()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i8[0] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 48) = v3;
  *v3 = v4;
  v3[1] = sub_1C8E16A2C;
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0D5AC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C8E16A2C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v10();
  }
}

uint64_t sub_1C8E16B48()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8E16BA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 336) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  *(v4 + 208) = type metadata accessor for ToolInvocation(0);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v5 = sub_1C9063D3C();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E16CCC, 0, 0);
}

uint64_t sub_1C8E16CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74_2();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_91_3();
  a24 = v26;
  v29 = *(v26 + 192);
  *(v26 + 280) = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  v30 = OUTLINED_FUNCTION_134();
  sub_1C8E1B5B4(v30, v31, v32);
  v33 = v29;
  v34 = sub_1C9063D1C();
  v35 = sub_1C906446C();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v26 + 272);
  v39 = *(v26 + 240);
  v38 = *(v26 + 248);
  v40 = *(v26 + 232);
  if (v36)
  {
    v41 = *(v26 + 192);
    OUTLINED_FUNCTION_164_2();
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_208_2();
    *v37 = 136315394;
    v42 = [v41 debugDescription];
    sub_1C9063EEC();

    v43 = OUTLINED_FUNCTION_206_0();
    v49 = sub_1C8CACE04(v43, v44, v45, v46, v47, v48);

    *(v37 + 4) = v49;
    OUTLINED_FUNCTION_71_5();
    v50 = ToolInvocation.debugDescription.getter();
    v52 = v51;
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v40, v53);
    sub_1C8CACE04(v50, v52, &a14, v54, v55, v56);
    OUTLINED_FUNCTION_123_3();

    *(v37 + 14) = v40;
    OUTLINED_FUNCTION_157_1();
    _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
    OUTLINED_FUNCTION_189_3();
    v62 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v62);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v40 = *(v38 + 8);
    v40(v37, v39);
  }

  else
  {

    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v40, v63);
    v64 = OUTLINED_FUNCTION_203_3();
    v40(v64, v39);
  }

  *(v26 + 288) = v40;
  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20(&qword_1EDA632E0);
  }

  OUTLINED_FUNCTION_15_17();
  sub_1C8CBE304(v65, v66, &protocol conformance descriptor for ToolInvocation);
  OUTLINED_FUNCTION_145();
  v67 = sub_1C9061C5C();
  *(v26 + 296) = 0;
  *(v26 + 304) = v67;
  *(v26 + 312) = v68;
  v69 = *(v26 + 336);
  v70 = *(*(v26 + 192) + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v71 = sub_1C9061EFC();
  *(v26 + 320) = v71;
  *(v26 + 16) = v26;
  *(v26 + 56) = v26 + 168;
  v72 = OUTLINED_FUNCTION_129_2();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316408, &qword_1C9085048);
  OUTLINED_FUNCTION_14_22(v73);
  OUTLINED_FUNCTION_174_3(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_31_10();
  *(v26 + 104) = v74;
  *(v26 + 112) = v72;
  [v70 fetchToolInvocationSummaryForInvocation:v71 fetchingDefaultValues:v69 completionHandler:v26 + 80];
  OUTLINED_FUNCTION_70_2();

  return MEMORY[0x1EEE6DEC8](v75);
}

uint64_t sub_1C8E171D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E172D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, void (*a12)(uint64_t, uint64_t (*)(void, void)), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17, uint64_t (*a18)(uint64_t, _DWORD *), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_141_4();
  a33 = v37;
  a34 = v38;
  OUTLINED_FUNCTION_148_2();
  a32 = v34;

  if (qword_1EDA632F8 != -1)
  {
    v39 = OUTLINED_FUNCTION_13_16(&qword_1EDA632F8);
  }

  v42 = *(v34 + 296);
  v43 = qword_1EDA63300;
  sub_1C8E1B464(v39, v40, v41);
  sub_1C9061C2C();
  if (v42)
  {
    v44 = v42;
    sub_1C8CE7B78(*(v34 + 304), *(v34 + 312));
    v45 = OUTLINED_FUNCTION_125();
    sub_1C8CE7B78(v45, v46);
    OUTLINED_FUNCTION_78_6();
    v47 = *(v34 + 192);
    sub_1C906371C();
    OUTLINED_FUNCTION_1_47();
    v48 = OUTLINED_FUNCTION_212();
    sub_1C8E1B5B4(v48, v49, v50);
    v51 = v47;
    v52 = v42;
    v53 = sub_1C9063D1C();
    sub_1C906444C();

    OUTLINED_FUNCTION_187_4();
    v54 = *(v34 + 288);
    v56 = *(v34 + 248);
    v55 = *(v34 + 256);
    OUTLINED_FUNCTION_213_2();
    if (v57)
    {
      a18 = v54;
      v58 = *(v34 + 192);
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      a17 = v35;
      OUTLINED_FUNCTION_81_2();
      a16 = OUTLINED_FUNCTION_68_3();
      a20 = a16;
      *v35 = 136315650;
      [v58 debugDescription];
      sub_1C9063EEC();
      a14 = v56;
      a15 = v55;
      OUTLINED_FUNCTION_196_4();
      v59 = OUTLINED_FUNCTION_300();
      sub_1C8CACE04(v59, v60, v61, v62, v63, v64);
      OUTLINED_FUNCTION_193_3();
      OUTLINED_FUNCTION_60_7();
      ToolInvocation.debugDescription.getter();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v43, v65);
      v66 = OUTLINED_FUNCTION_211();
      sub_1C8CACE04(v66, v67, v68, v69, v70, v71);
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_63_8();
      v72 = v44;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_131_1(v73);
      OUTLINED_FUNCTION_86_3(&dword_1C8C9B000, v74, v75, "Session %s failed to fetch invocation summary for invocation: %s due to error: %@");
      sub_1C8D16D78(v36, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      v76 = MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_185_3(v76, v77, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      v78 = a18(v55, v35);
    }

    else
    {

      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v43, v115);
      v116 = OUTLINED_FUNCTION_127();
      v78 = (v54)(v116);
    }

    OUTLINED_FUNCTION_119_5(v78);

    OUTLINED_FUNCTION_28_11();
  }

  else
  {
    v79 = *(v34 + 224);
    v81 = *(v34 + 192);
    v80 = *(v34 + 200);
    v83 = *(v34 + 144);
    v82 = *(v34 + 152);
    v84 = *(v34 + 160);
    sub_1C906371C();
    OUTLINED_FUNCTION_1_47();
    sub_1C8E1B5B4(v80, v79, v85);
    v86 = v81;

    v87 = sub_1C9063D1C();
    LODWORD(v79) = sub_1C906446C();

    LODWORD(a15) = v79;
    v88 = os_log_type_enabled(v87, v79);
    v89 = *(v34 + 288);
    v90 = *(v34 + 264);
    a17 = *(v34 + 248);
    a18 = *(v34 + 240);
    v91 = *(v34 + 224);
    if (v88)
    {
      log = v87;
      v92 = *(v34 + 192);
      a13 = *(v34 + 304);
      a14 = *(v34 + 312);
      a16 = v83;
      v93 = swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_183_4();
      a19 = a9;
      *v93 = 136315650;
      v94 = [v92 debugDescription];
      a11 = v90;
      a12 = v89;
      v95 = sub_1C9063EEC();
      v97 = v96;

      sub_1C8CACE04(v95, v97, &a19, v98, v99, v100);
      OUTLINED_FUNCTION_197_3();
      *(v93 + 4) = v94;
      *(v93 + 12) = 2080;
      a20 = a16;
      a21 = v82;
      a22 = v84;
      v101 = ToolInvocationSummary.debugDescription.getter();
      sub_1C8CACE04(v101, v102, &a19, v103, v104, v105);
      OUTLINED_FUNCTION_205_2();

      *(v93 + 14) = v97;
      *(v93 + 22) = 2080;
      ToolInvocation.debugDescription.getter();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v91, v106);
      v107 = OUTLINED_FUNCTION_208_0();
      sub_1C8CACE04(v107, v108, v109, v110, v111, v112);
      OUTLINED_FUNCTION_197_3();
      *(v93 + 24) = v91;
      _os_log_impl(&dword_1C8C9B000, log, a15, "Session %s did fetch invocation summary: %s for invocation: %s", v93, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v83 = a16;
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(a13, a14);
      v113 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v113, v114);

      a12(a11, a18);
    }

    else
    {
      sub_1C8CE7B78(*(v34 + 304), *(v34 + 312));
      v117 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v117, v118);

      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v91, v119);
      v89(v90, a18);
    }

    v120 = *(v34 + 184);
    *v120 = v83;
    v120[1] = v82;
    v120[2] = v84;

    OUTLINED_FUNCTION_7_10();
  }

  OUTLINED_FUNCTION_115_1();

  return v122(v121, v122, v123, v124, v125, v126, v127, v128, a9, log, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C8E17A68(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = a2[1];
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E17A84()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = OUTLINED_FUNCTION_212();
  sub_1C8E1B188(v4, v5, v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v6;
  *v6 = v7;
  v6[1] = sub_1C8E17B5C;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_1C8E0DB94(v10, "transformAction", 15, 2, v11, v11, v8, v9);
}

uint64_t sub_1C8E17B5C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8E17C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v6[30] = type metadata accessor for ToolInvocation(0);
  v6[31] = swift_task_alloc();
  v7 = sub_1C9063D3C();
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E17D4C, 0, 0);
}

uint64_t sub_1C8E181C0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E182BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a13, __n128 a22, __int128 a10, __int128 a11, __int128 a14, __n128 a15, __int128 a17, uint64_t (*a19)(uint64_t, uint64_t), uint64_t a20, __int128 a21, void (*a23)(uint64_t, uint64_t), uint64_t a24, __int128 a25, __int128 a27, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t _D0, uint64_t _D8, uint64_t _E0, uint64_t argE8, uint64_t argF0, uint64_t a35)
{
  OUTLINED_FUNCTION_165_4();
  argF0 = v36;
  a35 = v37;
  OUTLINED_FUNCTION_210_2();
  argE8 = v35;
  v39 = *(v35 + 176);
  v38 = *(v35 + 184);

  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16(&qword_1EDA632F8);
  }

  v40 = *(v35 + 312);
  OUTLINED_FUNCTION_15_17();
  sub_1C8CBE304(v41, v42, &protocol conformance descriptor for ToolInvocation);
  sub_1C9061C2C();
  if (v40)
  {
    sub_1C8CE7B78(*(v35 + 320), *(v35 + 328));
    v43 = OUTLINED_FUNCTION_148();
    sub_1C8CE7B78(v43, v44);
    OUTLINED_FUNCTION_228_2();
    v45 = v38;
    v46 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B188(v46, v47, v48, v49);
    v50 = v40;
    v51 = sub_1C9063D1C();
    v52 = sub_1C906444C();

    v53 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B1D8(v53, v54);

    v55 = os_log_type_enabled(v51, v52);
    v56 = *(v35 + 304);
    v58 = *(v35 + 264);
    v57 = *(v35 + 272);
    v59 = *(v35 + 256);
    if (v55)
    {
      a23 = *(v35 + 304);
      a15 = OUTLINED_FUNCTION_126_1();
      a17 = v60;
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      *(&a21 + 1) = v58;
      OUTLINED_FUNCTION_75_2();
      a24 = OUTLINED_FUNCTION_68_3();
      *v58 = 136315650;
      v61 = [v56 debugDescription];
      sub_1C9063EEC();
      a20 = v59;
      *&a21 = v57;
      OUTLINED_FUNCTION_153_4();

      v62 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_38_12();
      a25 = a17;
      a27 = a15;
      v68 = TransformableAction.debugDescription.getter();
      sub_1C8CACE04(v68, v69, &a24, v70, v71, v72);
      OUTLINED_FUNCTION_152_3();

      OUTLINED_FUNCTION_239_1();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124_2(v73);
      OUTLINED_FUNCTION_237_2(&dword_1C8C9B000, v74, v75, "Session %s failed to convert action: %s due to error: %@");
      sub_1C8D16D78(v45, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v76 = OUTLINED_FUNCTION_19_16();
      MEMORY[0x1CCA833A0](v76);

      a23(v57, v59);
    }

    else
    {

      v122 = OUTLINED_FUNCTION_181_0();
      (v56)(v122);
    }

    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    a23 = v38;
    v78 = *(v35 + 224);
    v77 = *(v35 + 232);
    v79 = *(v35 + 200);
    sub_1C906371C();
    OUTLINED_FUNCTION_1_47();
    v80 = OUTLINED_FUNCTION_207_2();
    sub_1C8E1B5B4(v80, v81, v82);
    v83 = v79;
    v84 = OUTLINED_FUNCTION_107();
    sub_1C8E1B188(v84, v85, v78, v77);
    v86 = sub_1C9063D1C();
    v87 = sub_1C906446C();

    v88 = OUTLINED_FUNCTION_107();
    sub_1C8E1B1D8(v88, v89);
    DWORD2(a21) = v87;
    v90 = os_log_type_enabled(v86, v87);
    v91 = *(v35 + 304);
    v92 = *(v35 + 256);
    v93 = *(v35 + 264);
    v94 = *(v35 + 248);
    if (v90)
    {
      v95 = *(v35 + 200);
      a10 = *(v35 + 224);
      a11 = *(v35 + 208);
      *&a17 = *(v35 + 328);
      a15.n128_u64[0] = *(v35 + 320);
      *&a21 = *(v35 + 280);
      v96 = swift_slowAlloc();
      a20 = v92;
      a24 = OUTLINED_FUNCTION_183_4();
      *v96 = 136315650;
      v97 = [v95 debugDescription];
      sub_1C9063EEC();
      *(&a14 + 1) = v93;
      OUTLINED_FUNCTION_209_0();

      v98 = OUTLINED_FUNCTION_245();
      v104 = sub_1C8CACE04(v98, v99, v100, v101, v102, v103);

      *(v96 + 4) = v104;
      *(v96 + 12) = 2080;
      ToolInvocation.debugDescription.getter();
      OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v94, v105);
      v106 = OUTLINED_FUNCTION_245();
      sub_1C8CACE04(v106, v107, v108, v109, v110, v111);
      OUTLINED_FUNCTION_123_3();

      *(v96 + 14) = v94;
      *(v96 + 22) = 2080;
      a25 = a11;
      a27 = a10;
      v112 = TransformableAction.debugDescription.getter();
      v117 = sub_1C8CACE04(v112, v113, &a24, v114, v115, v116);

      *(v96 + 24) = v117;
      OUTLINED_FUNCTION_215_1();
      _os_log_impl(v118, v119, v120, v121, v96, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(a15.n128_i64[0], a17);
      sub_1C8CE7B78(v39, a23);

      (v91)(a21, v92);
    }

    else
    {
      sub_1C8CE7B78(*(v35 + 320), *(v35 + 328));
      sub_1C8CE7B78(v39, a23);

      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v94, v123);
      v124 = OUTLINED_FUNCTION_127();
      v91(v124);
    }

    OUTLINED_FUNCTION_7_10();
  }

  OUTLINED_FUNCTION_142_3();

  return v126(v125, v126, v127, v128, v129, v130, v131, v132, a10, *(&a10 + 1), a11, *(&a11 + 1), a14, *(&a14 + 1), a15.n128_u64[0], a15.n128_u64[1], a17, *(&a17 + 1), a19, a20, a21, *(&a21 + 1), a23, a24, a25, *(&a25 + 1), a27, *(&a27 + 1), a29, a30, a31, a32);
}

uint64_t sub_1C8E18A2C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_87_4(v2);
  *v3 = v4;
  v3[1] = sub_1C8E1BB44;

  return sub_1C8E18ABC(v1, 1);
}

uint64_t sub_1C8E18ABC(uint64_t a1, char a2)
{
  *(v3 + 248) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  type metadata accessor for ToolExecutionResult(0);
  *(v3 + 216) = swift_task_alloc();
  type metadata accessor for ToolInvocation(0);
  *(v3 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E18B7C, 0, 0);
}

uint64_t sub_1C8E18B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  v17 = *(v16 + 200);
  v18 = v17 + *(type metadata accessor for ToolExecutionResult.UndoContext(0) + 24);
  v19 = *(v18 + 8);
  if (v19)
  {
    v20 = *(v16 + 248);
    v21 = *v18;

    sub_1C906478C();

    MEMORY[0x1CCA81A90](0xD000000000000013, 0x80000001C90CB1A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316480, &unk_1C9085140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C906BAE0;
    *(inited + 32) = 0x6F6974617265706FLL;
    *(inited + 40) = 0xE90000000000006ELL;
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v19;
    *(v23 + 32) = 0xD00000000000001CLL;
    *(v23 + 40) = 0x80000001C90CB1C0;
    if (v20)
    {
      v24 = 1868852853;
    }

    else
    {
      v24 = 1868850546;
    }

    v25 = type metadata accessor for TypedValue.EnumerationValue(0);
    swift_allocBox();
    OUTLINED_FUNCTION_97_4();
    v26 = *(v25 + 24);
    v27 = type metadata accessor for DisplayRepresentation(0);
    __swift_storeEnumTagSinglePayload(v21 + v26, 1, 1, v27);
    *v21 = v23 | 0x4000000000000000;
    v21[1] = v24;
    v21[2] = 0xE400000000000000;
    *(inited + 72) = &type metadata for TypedValue;
    *(inited + 80) = &protocol witness table for TypedValue;
    *(inited + 48) = v20 | 0x1000000000000000;
    *(inited + 88) = 0x6E656B6F74;
    *(inited + 96) = 0xE500000000000000;
    type metadata accessor for TypedValue.PrimitiveValue(0);
    swift_allocBox();
    OUTLINED_FUNCTION_97_4();
    *v21 = sub_1C906200C();
    v21[1] = v28;
    swift_storeEnumTagMultiPayload();
    *(inited + 128) = &type metadata for TypedValue;
    *(inited + 136) = &protocol witness table for TypedValue;
    *(inited + 104) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E78, &qword_1C907AA80);
    sub_1C9063E2C();
    ToolInvocation.init(localToolId:parameterValuesByKey:)();
    *(v16 + 192) = 0;
    *(v16 + 176) = 0u;
    *(v16 + 160) = 0u;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v16 + 232) = v29;
    *v29 = v30;
    v29[1] = sub_1C8E18EF4;
    OUTLINED_FUNCTION_128();

    return sub_1C8E096D4(v31, v32, v33);
  }

  else
  {
    type metadata accessor for ToolExecutorError(0);
    sub_1C8CBE304(&qword_1EC316478, type metadata accessor for ToolExecutorError, &protocol conformance descriptor for ToolExecutorError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_128();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}