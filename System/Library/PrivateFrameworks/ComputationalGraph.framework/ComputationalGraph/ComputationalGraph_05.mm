_WORD *storeEnumTagSinglePayload for TestRunner(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph10TestRunnerV0C6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1C6E4A094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E4A0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6E4A124(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C6E4A18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D28, &qword_1C6EE8970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E4A1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E4A29C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E4A304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E4A384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E4A3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E4A454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LabeledEmbeddingData.data.getter()
{
  v1 = *v0;
  sub_1C6E00D18(*v0, *(v0 + 8));
  return v1;
}

uint64_t LabeledEmbeddingData.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t LabeledEmbeddingData.init(data:label:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = a3;
  return result;
}

uint64_t LabeledEmbeddingData.init(data:label:id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1C6E4A570()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4A5E4(uint64_t a1)
{
  v2 = *v1;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v2);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4A628()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1C6E4A66C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6E4AF08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6E4A6AC(uint64_t a1)
{
  v2 = sub_1C6E4A8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E4A6E8(uint64_t a1)
{
  v2 = sub_1C6E4A8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LabeledEmbeddingData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F80, &qword_1C6EE9510);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v12[1] = v1[3];
  v12[2] = v9;
  v12[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E00D18(v8, v7);
  sub_1C6E4A8FC();
  sub_1C6EE55C0();
  v13 = v8;
  v14 = v7;
  v15 = 0;
  sub_1C6E160C0();
  v10 = v12[3];
  sub_1C6EE5440();
  sub_1C6DF1134(v13, v14);
  if (!v10)
  {
    LOBYTE(v13) = 1;
    sub_1C6EE5430();
    LOBYTE(v13) = 2;
    sub_1C6EE5400();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C6E4A8FC()
{
  result = qword_1EDEF5F30;
  if (!qword_1EDEF5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F30);
  }

  return result;
}

uint64_t LabeledEmbeddingData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F88, &qword_1C6EE9518);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6E4A8FC();
  sub_1C6EE55B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1C6E16544();
  sub_1C6EE53D0();
  v10 = v19;
  v9 = v20;
  LOBYTE(v19) = 1;
  v18 = sub_1C6EE53C0();
  LOBYTE(v19) = 2;
  v11 = sub_1C6EE5390();
  v13 = v12;
  v14 = *(v6 + 8);
  v17 = v11;
  v14(v8, v5);
  *a2 = v10;
  a2[1] = v9;
  v15 = v17;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v13;
  sub_1C6E00D18(v10, v9);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1C6DF1134(v10, v9);
}

uint64_t sub_1C6E4ABD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E4AC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LabeledEmbeddingData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LabeledEmbeddingData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6E4AE04()
{
  result = qword_1EC1F7F90;
  if (!qword_1EC1F7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7F90);
  }

  return result;
}

unint64_t sub_1C6E4AE5C()
{
  result = qword_1EDEF5F20;
  if (!qword_1EDEF5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F20);
  }

  return result;
}

unint64_t sub_1C6E4AEB4()
{
  result = qword_1EDEF5F28;
  if (!qword_1EDEF5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5F28);
  }

  return result;
}

uint64_t sub_1C6E4AF08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6EE54B0();

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

uint64_t sub_1C6E4B014(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C6E4B05C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6E4B0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A10(0, v4, 0);
    v9 = a4;
    v5 = v21;
    v10 = (a1 + 32);
    do
    {
      v11 = v9;
      v12 = a3;
      if (*(a2 + 16))
      {
        v13 = sub_1C6E023B8(*v10);
        v9 = a4;
        v11 = a4;
        v12 = a3;
        if (v14)
        {
          v15 = (*(a2 + 56) + 16 * v13);
          v12 = *v15;
          v11 = v15[1];
        }
      }

      v17 = *(v21 + 16);
      v16 = *(v21 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C6E15A10((v16 > 1), v17 + 1, 1);
        v9 = a4;
      }

      *(v21 + 16) = v17 + 1;
      v18 = v21 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v11;
      ++v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t Request.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Request.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *Request.init(inputs:id:name:outputKeys:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = *result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1C6E4B248(char *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6E21148(*a2);
  if (*(v9 + 16))
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
    v11 = sub_1C6EE5340();
    v9 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v22 = v11;
  sub_1C6E298C0(v9, 1, &v22);
  if (!v2)
  {
    v13 = v22;
    MEMORY[0x1EEE9AC00](v12);
    *(&v21 - 2) = v13;
    sub_1C6E4B834(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
    sub_1C6EE4600();

    v14 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0) + 28);
    sub_1C6E4B87C(&a1[v14]);
    sub_1C6E4B8E4(v8, &a1[v14]);
    (*(v6 + 56))(&a1[v14], 0, 1, v5);
    v15 = sub_1C6E4CD04(a2[5]);
    v16 = sub_1C6E0B8E0(v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = sub_1C6E03038(*(v16 + 16), 0);
      v19 = sub_1C6E0B274(&v22, v18 + 4, v17, v16);
      sub_1C6E0D458(v22);
      if (v19 == v17)
      {
LABEL_9:

        *a1 = v18;
        return result;
      }

      __break(1u);
    }

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Request.request.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t Request.diagnosticFormat.getter()
{
  v1 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  v9[2] = v0[2];
  v8 = v9;
  sub_1C6E4B834(&qword_1EDEF6330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest, &unk_1C6EF2E14);
  sub_1C6EE4600();
  v5 = sub_1C6EE45C0();
  sub_1C6E4B704(v3);
  return v5;
}

uint64_t sub_1C6E4B704(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1C6E4B774(uint64_t *a1, int a2)
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

uint64_t sub_1C6E4B7BC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6E4B834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E4B87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E4B8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E4B948(uint64_t a1, uint64_t a2)
{
  v41 = sub_1C6EE41A0();
  v5 = *(v41 - 8);
  v6 = MEMORY[0x1EEE9AC00](v41);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = sub_1C6EE4020();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v36 = a1;
  v37 = v2;
  v13(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6EE6590;
  v15 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v16 = v15;
  sub_1C6ED9D4C(inited);
  swift_setDeallocating();
  sub_1C6DFFC0C(inited + 32);
  v17 = v40;
  sub_1C6EE40C0();
  if (v17)
  {
    (*(v5 + 8))(v9, v41);
  }

  else
  {
    v40 = v13;
    v19 = a2;
    v20 = *(v5 + 8);
    v21 = v9;
    v22 = v41;
    v34 = v5 + 8;
    v20(v21, v41);

    v23 = sub_1C6EE3FF0();
    v24 = v12;
    if (v23 == 2)
    {
      sub_1C6E4CA64();
      swift_allocError();
      swift_willThrow();
      return (*(v38 + 8))(v12, v39);
    }

    else
    {
      v25 = v38;
      if (v23)
      {
        (*(v38 + 8))(v24, v39);
        return 0;
      }

      else
      {
        v33 = v24;
        v26 = v35;
        v40(v36, v19);
        v27 = sub_1C6EE40A0();
        v28 = v22;
        v30 = v29;
        v20(v26, v28);
        if (v27 == 7496033 && v30 == 0xE300000000000000)
        {

          (*(v25 + 8))(v33, v39);
          return 2;
        }

        else
        {
          v31 = sub_1C6EE54B0();

          (*(v25 + 8))(v33, v39);
          if (v31)
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }
      }
    }
  }
}

uint64_t sub_1C6E4BD04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696863724170697ALL;
  v4 = 0xEA00000000006576;
  if (v2 != 1)
  {
    v3 = 0x637241656C707061;
    v4 = 0xEC00000065766968;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x726F746365726964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x696863724170697ALL;
  v8 = 0xEA00000000006576;
  if (*a2 != 1)
  {
    v7 = 0x637241656C707061;
    v8 = 0xEC00000065766968;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x726F746365726964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6EE54B0();
  }

  return v11 & 1;
}

uint64_t sub_1C6E4BE20()
{
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4BED4(uint64_t a1)
{
  sub_1C6EE4B30();
}

uint64_t sub_1C6E4BF74(uint64_t a1)
{
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

unint64_t sub_1C6E4C024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6E4C3C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C6E4C054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEA00000000006576;
  v5 = 0x696863724170697ALL;
  if (v2 != 1)
  {
    v5 = 0x637241656C707061;
    v4 = 0xEC00000065766968;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F746365726964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PackageServiceTypeErrors.hashValue.getter()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4C188()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E4C1CC(uint64_t a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t Package.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Package.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Package(0) + 20);
  v4 = sub_1C6EE41A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Package.init(fileURL:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_1C6EE40E0();
  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for Package(0) + 20);
  v6 = sub_1C6EE41A0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a2[v5], a1, v6);
}

uint64_t sub_1C6E4C340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE41A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E4C3B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_1C6E4C3C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6EE5360();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6E4C40C()
{
  sub_1C6E4CAB8();
  swift_allocError();
  return swift_willThrow();
}

uint64_t type metadata accessor for Package(uint64_t a1)
{
  result = qword_1EC1F7FA8;
  if (!qword_1EC1F7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C6E4C4A4()
{
  result = qword_1EC1F7F98;
  if (!qword_1EC1F7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7F98);
  }

  return result;
}

unint64_t sub_1C6E4C4F8(uint64_t a1)
{
  result = sub_1C6E4C520();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C6E4C520()
{
  result = qword_1EC1F7FA0;
  if (!qword_1EC1F7FA0)
  {
    type metadata accessor for Package(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FA0);
  }

  return result;
}

uint64_t dispatch thunk of PackageServiceType.fetchPackages(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C6E4C708;

  return v9(a1, a2, a3);
}

uint64_t sub_1C6E4C708(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C6E4C82C(uint64_t a1)
{
  result = sub_1C6EE41A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PackageFileType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PackageFileType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6E4CA00()
{
  result = qword_1EC1F7FB8;
  if (!qword_1EC1F7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7FC0, qword_1C6EE9988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FB8);
  }

  return result;
}

unint64_t sub_1C6E4CA64()
{
  result = qword_1EC1F7FC8;
  if (!qword_1EC1F7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FC8);
  }

  return result;
}

unint64_t sub_1C6E4CAB8()
{
  result = qword_1EC1F7FD0;
  if (!qword_1EC1F7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FD0);
  }

  return result;
}

uint64_t sub_1C6E4CB0C(unsigned int *a1, int a2)
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

_WORD *sub_1C6E4CB5C(_WORD *result, int a2, int a3)
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

unint64_t sub_1C6E4CBFC()
{
  result = qword_1EC1F7FD8;
  if (!qword_1EC1F7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7FD8);
  }

  return result;
}

uint64_t sub_1C6E4CC98(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6ECE3B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C6E553C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C6E4CD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1C6E15A10(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1C6EE50D0();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1C6E15A10((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1C6E57A30(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1C6E57A30(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C6E4CF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1C6E15C10(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1C6EE50D0();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1C6E15C10((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1C6E57A30(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1C6E57A30(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C6E4D194@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C6E57894(v2, v3);
}

uint64_t sub_1C6E4D1A0(_OWORD *a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  *(v1 + 40) = *a1;
  return sub_1C6E56804(v3, v2);
}

uint64_t *ComputeService.__allocating_init(configurationManager:featureResolver:fileStore:packageService:retentionTokenVendor:settings:requestEventProcessorRegistry:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  swift_allocObject();
  v14 = sub_1C6E55D94(a1, a2, a3, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1Tm_0(a4);
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0(a2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_0(a1);
  return v14;
}

uint64_t *ComputeService.init(configurationManager:featureResolver:fileStore:packageService:retentionTokenVendor:settings:requestEventProcessorRegistry:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v10 = sub_1C6E55D94(a1, a2, a3, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1Tm_0(a4);
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0(a2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_0(a1);
  return v10;
}

uint64_t sub_1C6E4D2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v2 + 80);
    v11 = *(v4 - 8);
    (*(v11 + 16))(a1, v3 + *(*v3 + 104), v4);
    v6 = *(v11 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(v2 + 80);
    v6 = *(*(v9 - 8) + 56);
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1C6E4D428(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  v8 = v2[2];
  if (!v8)
  {
    goto LABEL_5;
  }

  (*(v5 + 16))(v7, v8 + *(*v8 + 104), v4);
  v9 = (*(*(v3 + 88) + 72))(v4);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (!v11)
  {
    v12 = v2[2];
    if (v12)
    {
      v9 = *(v12 + *(*v12 + 112));

      return v9;
    }

LABEL_5:

    return 0;
  }

  return v9;
}

uint64_t sub_1C6E4D5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1C6EE4FE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  sub_1C6E30258(&v12 - v5);
  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
LABEL_4:
    v8 = sub_1C6E303A4();

    return v8;
  }

  v8 = (*(*(v1 + 88) + 72))(v2);
  v10 = v9;
  (*(v7 + 8))(v6, v2);
  if (!v10)
  {
    goto LABEL_4;
  }

  return v8;
}

uint64_t ComputeService.Response.init(configuration:features:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ComputeService.Response(0, a3, a4, v9);
  *(a5 + *(result + 36)) = v8;
  return result;
}

double ComputeService.Response.subscript.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + *(a2 + 36));
  if (*(v5 + 16) && (v6 = sub_1C6E0231C(*a1, a1[1]), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 24 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    *a3 = *v8;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;

    sub_1C6E00CBC(v9, v10, v11);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1C6EE7FC0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_1C6E4D8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a1;
  v5[12] = a3;
  v6 = *v4;
  v5[15] = *v4;
  v7 = *(v6 + 80);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E4D9EC, 0, 0);
}

uint64_t sub_1C6E4D9EC()
{
  v2 = v0[15];
  v1 = v0[16];
  dispatch_group_enter(*(v0[14] + 72));
  v3 = swift_task_alloc();
  v0[19] = v3;
  v4 = *(v2 + 88);
  v0[20] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for FileStore.FileContainer(255, v1, AssociatedTypeWitness, v4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v3 = v0;
  v3[1] = sub_1C6E4DB30;
  v7 = v0[14];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001C6EF9940, sub_1C6E56608, v7, TupleTypeMetadata2);
}

uint64_t sub_1C6E4DB30()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1C6E4E0B8;
  }

  else
  {
    v2 = sub_1C6E4DC44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6E4DC44()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v0 + 80);
  v3 = v2;
  v4 = *(*v2 + 104);
  *(v0 + 200) = v4;
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_1C6E4DD70;

  return v7(v0 + 16, v3 + v4);
}

uint64_t sub_1C6E4DD70()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_1C6E4E134;
  }

  else
  {
    v2 = sub_1C6E4DE94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6E4DE94()
{
  v29 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v20 = *(v0 + 184);
  (*(*(v0 + 136) + 16))(*(v0 + 144), v2 + *(v0 + 200), *(v0 + 128));
  *&v23 = v3;
  *(&v23 + 1) = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v20;
  sub_1C6E50DD8(&v21, &v22, &v23, &v28, v2);
  if (v1)
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);

    (*(v9 + 8))(v10, v11);
  }

  else
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v19 = *(v0 + 160);
    v15 = *(v0 + 88);

    v16 = v22;
    (*(*(v14 - 8) + 32))(v15, v13, v14);
    *(v15 + *(type metadata accessor for ComputeService.Response(0, v14, v19, v17) + 36)) = v16;
  }

  sub_1C6E52548();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1C6E4E0B8(uint64_t a1)
{
  sub_1C6E52548();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C6E4E134()
{

  sub_1C6E52548();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6E4E1B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1C6E50AF0(&v7);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for FileStore.FileContainer(255, v3, AssociatedTypeWitness, v4);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7DA8, &unk_1C6EE89F8);
  sub_1C6EE4DA0();
  return sub_1C6EE4D90();
}

uint64_t sub_1C6E4E360(uint64_t a1, _OWORD *a2)
{
  v4 = v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v4;
  *(v3 + 80) = *v4;
  v6 = sub_1C6EE4890();
  *(v3 + 88) = v6;
  *(v3 + 96) = *(v6 - 8);
  *(v3 + 104) = swift_task_alloc();
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  *(v3 + 48) = a2[2];

  return MEMORY[0x1EEE6DFA0](sub_1C6E4E45C, 0, 0);
}

uint64_t sub_1C6E4E45C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = *(v2 + 80);
  v3[3] = *(v2 + 88);
  v3[4] = v0 + 2;
  v4 = *MEMORY[0x1E69E7F98];
  v5 = sub_1C6EE4890();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1C6E4E584;
  v8 = v0[8];

  return sub_1C6E4D8F0(v8, v6, &unk_1C6EE9B58, v3);
}

uint64_t sub_1C6E4E584()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6E4E738, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1C6E4E738()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6E4E7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C6E4E7C4, 0, 0);
}

uint64_t sub_1C6E4E7C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *v1;
  v4 = v1[2];
  v2[1] = v1[1];
  v2[2] = v4;
  *v2 = v3;
  sub_1C6E57944(v1, (v0 + 2));
  v5 = v0[1];

  return v5();
}

void sub_1C6E4E83C(void (*a1)(uint64_t *__return_ptr, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a1;
  v6 = *v3;
  isa = (*v3)[10].isa;
  v8 = *(isa - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - v9;
  dispatch_group_enter(v3[9]);
  v11 = sub_1C6E50AF0(&v34);
  if (!v4)
  {
    v12 = v11;
    v28 = v10;
    v29 = v8;
    v26 = v6;
    v27 = a3;
    v14 = *(&v34 + 1);
    v13 = v34;
    v15 = *(*v11 + 104);
    v31(&v34, &v11[v15]);
    v16 = v34;
    v25 = __PAIR128__(*(&v34 + 1), v13);
    v17 = v35;
    v31 = v14;
    v24 = v36;
    v19 = v37;
    v18 = v38;
    (*(v29 + 16))(v28, v12 + v15, isa);
    v30 = v16;
    *&v34 = v16;
    *(&v34 + 1) = *(&v25 + 1);
    *(&v25 + 1) = v17;
    v35 = v17;
    v36 = v24;
    v24 = v19;
    v37 = v19;
    v38 = v18;
    v32[0] = v25;
    v32[1] = v31;
    sub_1C6E50DD8(&v39, &v33, &v34, v32, v12);

    v20 = v33;
    v21 = v27;
    v22 = v26[11].isa;
    (*(v29 + 32))(v27, v28, isa);
    *(v21 + *(type metadata accessor for ComputeService.Response(0, isa, v22, v23) + 36)) = v20;
  }

  sub_1C6E52548();
}

void sub_1C6E4EB1C(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = a1[2];
  v5[1] = *(v3 + 80);
  v6 = v7;
  sub_1C6E4E83C(sub_1C6E566D4, v5, a2);
}

uint64_t sub_1C6E4EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = v3[17];
  v9 = *v3;

  os_unfair_lock_lock(v8 + 6);
  sub_1C6E5671C(&v8[4], &v19);
  os_unfair_lock_unlock(v8 + 6);
  v10 = v19;

  if (v10)
  {
    v19 = a1;
    v20 = a2;

    MEMORY[0x1CCA57F60](2108704, 0xE300000000000000);
    v11 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v11);

    a1 = v19;
    a2 = v20;
  }

  else
  {
  }

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6EE6590;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1C6DF10E0();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v14 = sub_1C6EE4EE0();
  sub_1C6EE4730("Adding interest in ComputeService, id=%{public}@", 48, 2, &dword_1C6DE9000, v12, v14, v13);

  dispatch_group_enter(v4[9]);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = *(v9 + 80);
  v16[3] = *(v9 + 88);
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v15;
  v17 = type metadata accessor for InterestToken();
  result = swift_allocObject();
  *(result + 16) = sub_1C6E56738;
  *(result + 24) = v16;
  a3[3] = v17;
  a3[4] = &protocol witness table for InterestToken;
  *a3 = result;
  return result;
}

unint64_t sub_1C6E4EE00@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = result;
  v8 = *result;
  v9 = *(*result + 16);
  if (v9)
  {
    result = sub_1C6DEC784(a2, a3);
    if (v10)
    {
      v9 = *(*(v8 + 56) + 8 * result);
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v6;
    result = sub_1C6E09154(v11, a2, a3, isUniquelyReferenced_nonNull_native);
    *v6 = v13;
    *a4 = v11;
  }

  return result;
}

void sub_1C6E4EEB8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

void sub_1C6E4EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6DF10E0();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_1C6EE4EE0();
  sub_1C6EE4730("Removing interest in ComputeService, id=%{public}@", 50, 2, &dword_1C6DE9000, v5, v7, v6);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 72);

    dispatch_group_leave(v9);
  }
}

uint64_t sub_1C6E4F0D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (*(result + 80))
    {
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDEF8F98;
      v4 = sub_1C6EE4EC0();
      sub_1C6EE4730("enteredBackground called when service is already in background", 62, 2, &dword_1C6DE9000, v3, v4, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      *(result + 80) = 1;
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      v5 = qword_1EDEF8F98;
      v6 = sub_1C6EE4EE0();
      sub_1C6EE4730("Entering unloadDispatchGroup cause app has gone to background", 61, 2, &dword_1C6DE9000, v5, v6, MEMORY[0x1E69E7CC0]);
      dispatch_group_enter(*(v2 + 72));
      sub_1C6E52A1C();
      sub_1C6E52548();
    }
  }

  return result;
}

uint64_t sub_1C6E4F220(char a1)
{
  if (a1)
  {
    v2 = swift_task_alloc();
    *(v1 + 16) = v2;
    *v2 = v1;
    v2[1] = sub_1C6E4F314;

    return sub_1C6E4F500();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 24) = v4;
    *v4 = v1;
    v4[1] = sub_1C6E4F408;

    return sub_1C6E50158();
  }
}

uint64_t sub_1C6E4F314()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6E4F408()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6E4F500()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = sub_1C6EE42C0();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v1[16] = *(v3 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E4F5FC, 0, 0);
}

uint64_t sub_1C6E4F5FC(uint64_t a1)
{
  if (*(v1[12] + 129) == 2)
  {
    sub_1C6EE42B0();
    if (qword_1EDEF66C8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDEF66D0;
    v1[19] = qword_1EDEF66D0;
    v3 = sub_1C6EE4EE0();
    sub_1C6EE4730("Will refresh packages", 21, 2, &dword_1C6DE9000, v2, v3, MEMORY[0x1E69E7CC0]);
    v4 = swift_task_alloc();
    v1[20] = v4;
    *v4 = v1;
    v4[1] = sub_1C6E4F7C0;

    return sub_1C6E2EFE0();
  }

  else
  {
    if (qword_1EDEF66C8 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDEF66D0;
    v7 = sub_1C6EE4EE0();
    sub_1C6EE4730("Will not refresh packages in read-only environment", 50, 2, &dword_1C6DE9000, v6, v7, MEMORY[0x1E69E7CC0]);

    v8 = v1[1];

    return v8();
  }
}

uint64_t sub_1C6E4F7C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1C6E4FB28;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_1C6E4F8E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C6E4F8E8()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  queue = *(v6 + 32);
  v14 = v0[18];
  (*(v3 + 16))(v2);
  v7 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = *(v5 + 80);
  *(v8 + 3) = *(v5 + 88);
  *(v8 + 4) = v6;
  *(v8 + 5) = v1;
  (*(v3 + 32))(&v8[v7], v2, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C6E56754;
  *(v9 + 24) = v8;
  v0[6] = sub_1C6E567B8;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C6E50130;
  v0[5] = &block_descriptor_33;
  v10 = _Block_copy(v0 + 2);

  dispatch_sync(queue, v10);
  _Block_release(v10);

  (*(v3 + 8))(v14, v4);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }

  return result;
}

uint64_t sub_1C6E4FB28(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[14];
  v5 = v1[15];
  v6 = sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6590;
  swift_getErrorValue();
  sub_1C6EE5480();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6DF10E0();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1C6EE4730("Failed to refresh packages, error=%{public}@", 44, 2, &dword_1C6DE9000, v3, v6, v7);

  swift_willThrow();
  (*(v5 + 8))(v2, v4);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1C6E4FC8C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = sub_1C6EE42C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  if (v11)
  {
    type metadata accessor for FileStore.FileContainer(0, *(v5 + 80), *(v6 + 88), *(v5 + 88));

    if (sub_1C6ED7274(a2, v11))
    {
      if (qword_1EDEF66C8 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDEF66D0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C6EE6B40;
      v14 = (a2 + *(*a2 + 112));
      v16 = *v14;
      v15 = v14[1];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1C6DF10E0();
      *(v13 + 32) = v16;
      *(v13 + 40) = v15;

      sub_1C6EE42B0();
      sub_1C6EE4260();
      v18 = v17;
      result = (*(v8 + 8))(v10, v7);
      v20 = v18 * 1000.0;
      if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v20 > -9.22337204e18)
      {
        if (v20 < 9.22337204e18)
        {
          v21 = MEMORY[0x1E69E73D8];
          *(v13 + 96) = MEMORY[0x1E69E7360];
          *(v13 + 104) = v21;
          *(v13 + 72) = v20;
          v22 = sub_1C6EE4EE0();
          sub_1C6EE4730("Did refresh packages and found no updates, identifier=%{public}@, time=%llums", 77, 2, &dword_1C6DE9000, v12, v22, v13);
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }

  a1[2] = a2;

  v23 = a1[5];
  v24 = a1[6];
  a1[5] = 0;
  a1[6] = 0;
  sub_1C6E56804(v23, v24);
  *(a1 + 64) = 0;
  sub_1C6E530D8();
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDEF66D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6EE65B0;
  if (v11)
  {
    v26 = (v11 + *(*v11 + 112));
    v28 = *v26;
    v27 = v26[1];
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v29 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v30 = sub_1C6DF10E0();
  *(v25 + 64) = v30;
  v31 = 7104878;
  if (v27)
  {
    v31 = v28;
  }

  v32 = 0xE300000000000000;
  if (v27)
  {
    v32 = v27;
  }

  *(v25 + 32) = v31;
  *(v25 + 40) = v32;
  v33 = (a2 + *(*a2 + 112));
  v35 = *v33;
  v34 = v33[1];
  *(v25 + 96) = v29;
  *(v25 + 104) = v30;
  *(v25 + 72) = v35;
  *(v25 + 80) = v34;

  sub_1C6EE42B0();
  sub_1C6EE4260();
  v37 = v36;
  (*(v8 + 8))(v10, v7);
  v38 = MEMORY[0x1E69E6438];
  *(v25 + 136) = MEMORY[0x1E69E63B0];
  *(v25 + 144) = v38;
  *(v25 + 112) = v37 * 1000.0;
  v39 = sub_1C6EE4EE0();
  sub_1C6EE4730("Did refresh packages and found updates, oldIdentifier=%{public}@, newIdentifier=%{public}@, time=%llums", 103, 2, &dword_1C6DE9000, v41, v39, v25);
}

uint64_t sub_1C6E50158()
{
  v1[12] = v0;
  v2 = sub_1C6EE48F0();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6E50218, 0, 0);
}

uint64_t sub_1C6E50218(uint64_t a1)
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v2 = v1[12];
  v3 = qword_1EDEF66D0;
  v1[16] = qword_1EDEF66D0;
  v4 = sub_1C6EE4EE0();
  sub_1C6EE4730("Running ComputeService startup", 30, 2, &dword_1C6DE9000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1C6EE48E0();
  v5 = *(v2 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C6E567E0;
  *(v6 + 24) = v2;
  v1[6] = sub_1C6E57D54;
  v1[7] = v6;
  v1[2] = MEMORY[0x1E69E9820];
  v1[3] = 1107296256;
  v1[4] = sub_1C6E50130;
  v1[5] = &block_descriptor_41;
  v7 = _Block_copy(v1 + 2);

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = v1[12];
    if (*(v9 + 129) == 2)
    {
      v1[17] = *(v9 + 24);
      v10 = swift_task_alloc();
      v1[18] = v10;
      *v10 = v1;
      v10[1] = sub_1C6DF00C8;

      return sub_1C6E2EFE0();
    }

    else
    {
      if ((*(v9 + 128) & 0xC0) != 0x40)
      {
        sub_1C6E52454();
      }

      v12 = v1[14];
      v11 = v1[15];
      v13 = v1[13];
      sub_1C6E50668();
      (*(v12 + 8))(v11, v13);

      v14 = v1[1];

      return v14();
    }
  }

  return result;
}

uint64_t sub_1C6E504C8(uint64_t a1)
{
  v2 = v1[19];
  sub_1C6E2FF84(a1);
  if (v2)
  {
    v3 = v1[16];
    v4 = v1[12];
    v5 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C6EE6590;
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C6DF10E0();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_1C6EE4730("Failed to run ComputeService.StartupTaskType.run(), not updating loaded configuration. Error=%{public}@", 103, 2, &dword_1C6DE9000, v3, v5, v6);

    if ((*(v4 + 128) & 0xC0) == 0x40)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v1[12] + 128) & 0xC0) == 0x40)
  {
    goto LABEL_6;
  }

  sub_1C6E52454();
LABEL_6:
  v8 = v1[14];
  v7 = v1[15];
  v9 = v1[13];
  sub_1C6E50668();
  (*(v8 + 8))(v7, v9);

  v10 = v1[1];

  return v10();
}

unint64_t sub_1C6E50668()
{
  v0 = sub_1C6EE48F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v5 = sub_1C6EE48D0();
  (*(v1 + 8))(v3, v0);
  result = sub_1C6EE48D0();
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E6438];
    *(v4 + 56) = MEMORY[0x1E69E63B0];
    *(v4 + 64) = v7;
    *(v4 + 32) = (v5 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730("Finished ComputeService.startup() in %.0f milliseconds", v8);
  }

  return result;
}

uint64_t *sub_1C6E50820(uint64_t a1)
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEF66D0;
  v2 = sub_1C6EE4EE0();
  sub_1C6EE4730("Startup task attempting to prepare global graph service", 55, 2, &dword_1C6DE9000, v1, v2, MEMORY[0x1E69E7CC0]);
  return sub_1C6E530D8();
}

uint64_t sub_1C6E508AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_1C6EE4FE0();
  v7 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v8));
  sub_1C6E567E8(v3 + v7, a1);
  os_unfair_lock_unlock((v3 + v8));
}

uint64_t sub_1C6E509F4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v17 = *(a1 + 64);
  v5 = v17;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v7 = v14[0];
  v14[1] = v6;
  *(a4 + 32) = v15;
  *(a4 + 48) = v4;
  *(a4 + 64) = v5;
  *a4 = v7;
  *(a4 + 16) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = sub_1C6EE4FE0();
  return (*(*(v11 - 8) + 16))(v13, v14, v11);
}

void *sub_1C6E50AF0(_OWORD *a1)
{
  v4 = *v1;
  v5 = sub_1C6EE4900();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v1[4];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8018], v5);
  v9;
  v10 = sub_1C6EE4920();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v13 = *(v4 + 80);
    v12 = *(v4 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for FileStore.FileContainer(255, v13, AssociatedTypeWitness, v12);
    swift_getTupleTypeMetadata2();
    result = sub_1C6EE4F30();
    if (!v2)
    {
      result = v15[1];
      *a1 = v16;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E50CD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1C6E530D8();
  v6 = a1[2];
  if (v6)
  {
    v8 = a1[5];
    v7 = a1[6];
    sub_1C6E57894(v8, v7);
    if (v8)
    {
      *a2 = v6;
      a2[1] = v8;
      a2[2] = v7;
    }

    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for ComputeService.Errors(0, *(v4 + 80), *(v4 + 88), v5);
  swift_getWitnessTable();
  swift_allocError();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = v10;
  *(v11 + 24) = 2;
  return swift_willThrow();
}

uint64_t sub_1C6E50DD8(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v65 = a2;
  v64 = a1;
  v75 = v6;
  v63 = *v6;
  v72 = sub_1C6EE42C0();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C6EE48F0();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v13 = a3[1];
  v78 = *a3;
  v79 = v13;
  v80 = a3[2];
  v14 = a4[1];
  v67 = *a4;
  v66 = v14;
  v68 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE48E0();
  v73 = v11;
  sub_1C6EE42A0();
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6EE6B40;
  v17 = *(&v79 + 1);
  v18 = v80;
  v19 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1C6DF10E0();
  v21 = v20;
  *(v16 + 64) = v20;
  v22 = 0x64656D616E6E75;
  if (v18)
  {
    v22 = v17;
  }

  v23 = 0xE700000000000000;
  if (v18)
  {
    v23 = v18;
  }

  *(v16 + 32) = v22;
  *(v16 + 40) = v23;
  v81 = *(a3 + 8);
  v24 = v81;
  *(v16 + 96) = v19;
  *(v16 + 104) = v20;
  *(v16 + 72) = v24;

  sub_1C6E579D4(&v81, v76);
  v25 = sub_1C6EE4EE0();
  sub_1C6EE4730("Running %{public}@ request with ID %{public}@", 45, 2, &dword_1C6DE9000, v15, v25, v16);

  v26 = v74;
  sub_1C6ED21E8();
  if (v26)
  {
    v28 = v73;
LABEL_26:
    v51 = v68;
    v52 = v68;
    v53 = v75;
LABEL_27:
    sub_1C6E51570(&v78, v52, v53);
    (*(v71 + 8))(v28, v72);
    return (*(v69 + 8))(v51, v70);
  }

  v74 = v17;
  v29 = *(*a5 + 104);
  v30 = a3[1];
  v76[0] = *a3;
  v76[1] = v30;
  v76[2] = a3[2];
  v62[2] = v27;
  sub_1C6E517B4(&v82, &v77, v76, v27, v67, v66, v75, (a5 + v29));
  v67 = v82;
  v31 = v77;
  v32 = swift_allocObject();
  *(v32 + 56) = v19;
  *(v32 + 64) = v21;
  v33 = v81;
  *(v32 + 16) = xmmword_1C6EE6590;
  *(v32 + 32) = v33;

  v34 = sub_1C6EE4EE0();
  sub_1C6EE4730("Generated output with ID %{public}@", 35, 2, &dword_1C6DE9000, v15, v34, v32);

  v35 = *(&v80 + 1);

  v36 = *(v31 + 16);

  v66 = v35;
  if (v36)
  {
    v62[1] = 0;
    v37 = sub_1C6E0304C(v36, 0);
    v38 = sub_1C6E0AE6C(v76, v37 + 4, v36, v31);
    v39 = *&v76[0];

    result = sub_1C6DF3598(v39);
    if (v38 != v36)
    {
      __break(1u);
      goto LABEL_29;
    }

    v28 = v73;
    v41 = v74;
    v42 = v67;
    v35 = v66;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
    v28 = v73;
    v41 = v74;
    v42 = v67;
  }

  v43 = sub_1C6E0BEFC(v37);

  v44 = sub_1C6EDCDC0(v43, v35);

  if (v44)
  {

    if (v18)
    {
      v45 = sub_1C6EC0D80(v41, v18);
      if (v45)
      {
        v46 = v45;

        v47 = sub_1C6E4CD04(v35);
        v48 = v31;
        v49 = sub_1C6E0B8E0(v47);

        *&v76[0] = v42;
        *(&v76[0] + 1) = v49;
        v31 = v48;
        (*((*MEMORY[0x1E69E7D40] & *v46) + 0x50))(v76);
      }
    }

    v50 = v75;
    sub_1C6E54C04(v41, v18);

    *v64 = v42;
    *v65 = v31;
    v51 = v68;
    v52 = v68;
    v53 = v50;
    goto LABEL_27;
  }

  sub_1C6E54C04(v41, v18);

  v54 = *(v31 + 16);
  if (!v54)
  {

    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v55 = sub_1C6E0304C(*(v31 + 16), 0);
  v56 = sub_1C6E0AE6C(v76, v55 + 4, v54, v31);
  v57 = *&v76[0];

  result = sub_1C6DF3598(v57);
  if (v56 == v54)
  {

    v35 = v66;
LABEL_22:
    v58 = sub_1C6E0BEFC(v55);

    if (*(v58 + 16) <= *(v35 + 16) >> 3)
    {
      *&v76[0] = v35;
      sub_1C6E037A4(v58);

      v59 = *&v76[0];
    }

    else
    {
      v59 = sub_1C6E03C08(v58, v35);
    }

    type metadata accessor for ComputeService.RequestErrors(0, *(v63 + 80), *(v63 + 88), v60);
    swift_getWitnessTable();
    swift_allocError();
    *v61 = v59;
    swift_willThrow();

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1C6E51570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = sub_1C6EE48F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE65B0;
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C6DF10E0();
  *(v9 + 64) = v13;
  v14 = 0x64656D616E6E75;
  if (v10)
  {
    v14 = v11;
  }

  v15 = 0xE700000000000000;
  if (v10)
  {
    v15 = v10;
  }

  *(v9 + 32) = v14;
  *(v9 + 40) = v15;
  v24 = *(a1 + 8);
  v16 = v24;
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v16;
  sub_1C6E579D4(&v24, v23);

  sub_1C6EE48E0();
  v17 = sub_1C6EE48D0();
  (*(v5 + 8))(v7, v4);
  result = sub_1C6EE48D0();
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E6438];
    *(v9 + 136) = MEMORY[0x1E69E63B0];
    *(v9 + 144) = v19;
    *(v9 + 112) = (v17 - result) / 1000000.0;
    v20 = sub_1C6EE4EE0();
    sub_1C6EE4730("Finished %{public}@ work with ID %{public}@ in %.0f milliseconds", 64, 2, &dword_1C6DE9000, v8, v20, v9);

    if ((*(v22 + 128) & 0xC0) != 0x40)
    {
      return sub_1C6E52454();
    }
  }

  return result;
}

uint64_t sub_1C6E517B4(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v91 = a8;
  v86 = a6;
  v85 = a5;
  v92 = *a7;
  v13 = v92;
  v90 = sub_1C6EE4760();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v97 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1C6EE4790();
  v87 = *(v88 - 8);
  v15 = MEMORY[0x1EEE9AC00](v88);
  v93 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a7;
  v17 = v13[10];
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v81 - v19;
  v21 = *a3;
  v22 = a3[5];
  v105 = type metadata accessor for FeaturesStore(0);
  v106 = &off_1F468D8C0;
  v103[0] = a4;

  v23 = sub_1C6E21148(v21);
  if (*(v23 + 16))
  {
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
    v25 = sub_1C6EE5340();
    v23 = v24;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC8];
  }

  v101 = v25;
  sub_1C6E298C0(v23, 1, &v101);
  v95 = v101;
  v26 = sub_1C6E4CD04(v22);
  v27 = sub_1C6E0B8E0(v26);

  v28 = *(v27 + 16);
  v84 = 0;
  if (v28)
  {
    v94 = sub_1C6E03038(v28, 0);
    v29 = sub_1C6E0B274(&v101, v94 + 4, v28, v27);
    sub_1C6DF3598(v101);
    if (v29 == v28)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v94 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v30 = v96;
  v31 = *(v96 + 129);
  (*(v18 + 16))(v20, v91, v17);
  v32 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v33 = swift_allocObject();
  v33[2] = v17;
  v33[3] = v92[11];
  v33[4] = v30;
  v34 = *(v18 + 32);
  v83 = v33;
  v34(v33 + v32, v20, v17);
  v35 = qword_1EDEF8F80;

  if (v35 != -1)
  {
    swift_once();
  }

  v91 = a1;
  v92 = a2;
  v36 = qword_1EDEF8F88;
  v37 = v93;
  sub_1C6EE4770();
  v38 = v95;
  if (qword_1EDEF8FA0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDEF8FA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C6EE6B40;
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1CCA580B0](v94, MEMORY[0x1E69E6158]);
  v44 = v43;
  *(v40 + 56) = v41;
  v45 = sub_1C6DF10E0();
  *(v40 + 64) = v45;
  *(v40 + 32) = v42;
  *(v40 + 40) = v44;
  v46 = sub_1C6EE49B0();
  *(v40 + 96) = v41;
  *(v40 + 104) = v45;
  *(v40 + 72) = v46;
  *(v40 + 80) = v47;
  v48 = sub_1C6EE4EE0();
  sub_1C6EE4730("Calling into graph for outputs %{public}@ with bound inputs %{public}@", 70, 2, &dword_1C6DE9000, v39, v48, v40);

  sub_1C6EE4780();
  sub_1C6EE4740();
  v49 = swift_slowAlloc();
  v82 = swift_slowAlloc();
  v100 = v82;
  v101 = 0;
  *v49 = 136446210;
  v102 = 0xE000000000000000;
  sub_1C6EE51B0();

  v98 = 0x3D737475706E69;
  v99 = 0xE700000000000000;
  v50 = *(v38 + 16);
  if (v50)
  {
    sub_1C6E03038(*(v38 + 16), 0);
    v51 = sub_1C6E0D430();
    v52 = v101;

    sub_1C6DF3598(v52);
    if (v51 != v50)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v53 = v93;
  }

  else
  {
    v53 = v37;
  }

  v54 = objc_opt_self();
  v55 = MEMORY[0x1E69E6158];
  v56 = sub_1C6EE4C90();

  v57 = [v54 localizedStringByJoiningStrings_];

  v58 = sub_1C6EE4A90();
  v60 = v59;

  MEMORY[0x1CCA57F60](v58, v60);

  MEMORY[0x1CCA57F60](0x74757074756F202CLL, 0xEA00000000003D73);
  v61 = v94;
  v62 = MEMORY[0x1CCA580B0](v94, v55);
  MEMORY[0x1CCA57F60](v62);

  v63 = sub_1C6E41514(v98, v99, &v100);

  *(v49 + 4) = v63;
  v64 = sub_1C6EE4780();
  LOBYTE(v57) = sub_1C6EE4F80();
  v65 = v97;
  v66 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v64, v57, v66, "SubGraphComputation.buildAndCall", "%{public}s", v49, 0xCu);
  sub_1C6EDFEE4(v61, v85, v86, v95, v103, (v96 + 19), v31 != 2, sub_1C6E57A3C, &v101, v83);
  LOBYTE(v57) = sub_1C6EE4F70();
  v67 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v64, v57, v67, "SubGraphComputation.buildAndCall", "%{public}s", v49, 0xCu);

  v69 = v101;
  v68 = v102;
  v70 = v82;
  __swift_destroy_boxed_opaque_existential_1Tm_0(v82);
  MEMORY[0x1CCA59290](v70, -1, -1);
  MEMORY[0x1CCA59290](v49, -1, -1);

  (*(v89 + 8))(v65, v90);
  (*(v87 + 8))(v53, v88);
  sub_1C6DEDC90(v103, &qword_1EC1F7F40, &unk_1C6EE94D0);
  v72 = v91;
  v71 = v92;
  if (*(v69 + 16))
  {

    v73 = sub_1C6DEC784(0xD000000000000016, 0x80000001C6EFA2E0);
    if (v74)
    {
      v75 = *(v69 + 56) + 24 * v73;
      v76 = *v75;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      sub_1C6E00CBC(*v75, v77, v78);

      v103[0] = v76;
      v103[1] = v77;
      v104 = v78;
      if (Feature.count.getter())
      {
        sub_1C6ED2298();
      }

      sub_1C6E00C60(v76, v77, v78);
    }

    else
    {
    }
  }

  sub_1C6E26748(v79, v72);
  swift_bridgeObjectRelease_n();
  sub_1C6E26748(v68, v71);
}

void sub_1C6E52114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[18];
  swift_getExtendedExistentialTypeMetadata();
  sub_1C6EE4FE0();
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1C6E57AD8((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
  if (!v4)
  {
    v8 = sub_1C6E21148(v11);
    if (*(v8 + 16))
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
      v10 = sub_1C6EE5340();
      v8 = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC8];
    }

    v11 = v10;
    sub_1C6E298C0(v8, 1, &v11);
  }
}

uint64_t sub_1C6E522C4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 3))
  {
    sub_1C6E57B14(a1, &v20);
    if (*(&v21 + 1))
    {
LABEL_3:
      sub_1C6E57AFC(&v20, v23);
      v13 = sub_1C6E4CF2C(a2);
      v14 = sub_1C6E0BEFC(v13);

      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v16 + 24))(v14, a5, a3, a4, v15, v16);

      return __swift_destroy_boxed_opaque_existential_1Tm_0(v23);
    }
  }

  else
  {
    v18 = a1[1];
    v20 = *a1;
    v21 = v18;
    v22 = *(a1 + 4);
    if (*(&v18 + 1))
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ComputeService.Errors(0, a6, a7, a4);
  swift_getWitnessTable();
  swift_allocError();
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = a4;
  *(v19 + 24) = 0;
  swift_willThrow();
}

uint64_t sub_1C6E5247C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDEF8F90 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDEF8F98;
    v4 = sub_1C6EE4EE0();
    sub_1C6EE4730("Entering unloadDispatchGroup to reduce memory usage", 51, 2, &dword_1C6DE9000, v3, v4, MEMORY[0x1E69E7CC0]);
    dispatch_group_enter(*(v2 + 72));
    sub_1C6E52A1C();
    sub_1C6E52548();
  }

  return result;
}

void sub_1C6E52548()
{
  v1 = *(v0 + 128);
  if (v1 >> 6 > 1)
  {
    dispatch_group_leave(*(v0 + 72));
  }

  else
  {
    sub_1C6E52574(*(v0 + 120), v1 & 1, v0);
  }
}

uint64_t sub_1C6E52574(uint64_t a1, char a2, uint64_t a3)
{
  v28 = a3;
  v32 = sub_1C6EE4880();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6EE48C0();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6EE4890();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6EE48F0();
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  sub_1C6EE48E0();
  sub_1C6EE4910();
  v29 = *(v12 + 8);
  v29(v15, v11);
  sub_1C6DEC5E8();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7FA0], v7);
  v27 = sub_1C6EE4F60();
  (*(v8 + 8))(v10, v7);
  v18 = *(v28 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  aBlock[4] = sub_1C6E57880;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6DEDCF0;
  aBlock[3] = &block_descriptor_72;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = v6;
  sub_1C6EE48A0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  v24 = v31;
  v23 = v32;
  sub_1C6EE50C0();
  v25 = v27;
  MEMORY[0x1CCA58310](v17, v22, v24, v20);
  _Block_release(v20);

  (*(v35 + 8))(v24, v23);
  (*(v33 + 8))(v22, v34);
  v29(v17, v30);
}

uint64_t sub_1C6E52A1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C6EE4880();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6EE48C0();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6EE4900();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v1[4];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  v15 = sub_1C6EE4920();
  (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + 81))
  {
    if (qword_1EDEF8F90 == -1)
    {
LABEL_4:
      v16 = qword_1EDEF8F98;
      v17 = sub_1C6EE4EE0();
      return sub_1C6EE4730("Asked to schedule unload, but unload already scheduled, doing nothing.", 70, 2, &dword_1C6DE9000, v16, v17, MEMORY[0x1E69E7CC0]);
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v27[1] = v14;
  if (qword_1EDEF8F90 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEF8F98;
  v20 = sub_1C6EE4EE0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4730("Scheduling unload", 17, 2, &dword_1C6DE9000, v19, v20, MEMORY[0x1E69E7CC0]);
  *(v1 + 81) = 1;
  v22 = v1[9];
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = *(v2 + 80);
  v24[3] = *(v2 + 88);
  v24[4] = v23;
  aBlock[4] = sub_1C6E57874;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6E57D50;
  aBlock[3] = &block_descriptor_66;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  sub_1C6EE48A0();
  v31 = v21;
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6EE50C0();
  sub_1C6EE4EF0();
  _Block_release(v25);

  (*(v30 + 8))(v5, v3);
  (*(v28 + 8))(v8, v29);
}

uint64_t sub_1C6E52EFC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((*(Strong + 80) & 1) != 0 || (*(Strong + 128) & 0xC0) != 0x40)
    {
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      v5 = qword_1EDEF8F98;
      v6 = sub_1C6EE4EE0();
      sub_1C6EE4730("Unloading global graph", 22, 2, &dword_1C6DE9000, v5, v6, MEMORY[0x1E69E7CC0]);
      if (*(v2 + 16))
      {

        sub_1C6ED22A0();
      }

      v7 = *(v2 + 40);
      v8 = *(v2 + 48);
      *(v2 + 40) = 0;
      *(v2 + 48) = 0;
      sub_1C6E56804(v7, v8);
      *(v2 + 64) = 0;
    }

    else
    {
      if (qword_1EDEF8F90 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDEF8F98;
      v4 = sub_1C6EE4EE0();
      sub_1C6EE4730("Notified to unload, but see app not in background or memory optimized mode, doing nothing.", 90, 2, &dword_1C6DE9000, v3, v4, MEMORY[0x1E69E7CC0]);
    }

    *(v2 + 81) = 0;
  }

  else
  {
    if (qword_1EDEF8F90 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDEF8F98;
    v11 = sub_1C6EE4EC0();
    return sub_1C6EE4730("Attemped to unload, but self is nil.", 36, 2, &dword_1C6DE9000, v10, v11, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t *sub_1C6E530D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C6EE48F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6EE4900();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 32);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1C6EE4920();
  result = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(v1 + 64) == 1)
  {
    if (*(v1 + 16))
    {
      return result;
    }

    if (qword_1EDEF8F70 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDEF8F78;
    v15 = sub_1C6EE4EE0();
    sub_1C6EE4730("Checking again for a container since we didn't find one yet", 59, 2, &dword_1C6DE9000, v14, v15, MEMORY[0x1E69E7CC0]);
    result = sub_1C6E2E960();
    if (result)
    {
      v16 = result;
      v17 = sub_1C6EE4EE0();
      sub_1C6EE4730("Found a new container, will adopt it and re-prepare", 51, 2, &dword_1C6DE9000, v14, v17, MEMORY[0x1E69E7CC0]);
      *(v1 + 16) = v16;

      *(v1 + 64) = 0;
    }

    else if (*(v1 + 64))
    {
      return result;
    }
  }

  if (*(v1 + 80) == 1)
  {
    if (qword_1EDEF8F90 == -1)
    {
LABEL_11:
      v18 = qword_1EDEF8F98;
      v19 = sub_1C6EE4EE0();
      sub_1C6EE4730("Observed a prepare while in background, this suggests we've loaded the graph from an unloaded state while in the background. Scheduling again to unload.", 152, 2, &dword_1C6DE9000, v18, v19, MEMORY[0x1E69E7CC0]);
      sub_1C6E52A1C();
      goto LABEL_12;
    }

LABEL_39:
    swift_once();
    goto LABEL_11;
  }

LABEL_12:
  sub_1C6EE48E0();
  if (*(v1 + 64))
  {
    if (qword_1EDEF8F70 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDEF8F78;
    v21 = sub_1C6EE4EE0();
    sub_1C6EE4730("Graph already prepared, skipping preparation.", 45, 2, &dword_1C6DE9000, v20, v21, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v22 = *(v1 + 16);
    v78 = v3;
    if (v22)
    {

      v23 = sub_1C6ED2308();
      v77 = v22;
      v34 = v23;
      v35 = sub_1C6E392C8();
      v76 = v34;
      v36 = v35;
      v37 = sub_1C6E38BFC();
      v38 = sub_1C6E39950(v36);

      sub_1C6EC11F0(v38, v37, &v79);
      v75 = 0;
      v46 = v79;
      v47 = *(v76 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
      if (v47)
      {
        v48 = *(v76 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);
        v74 = v79;

        v47(v49);
        sub_1C6E41D54(v47, v48);
        v46 = v74;
      }

      v50 = *(v1 + 40);
      v51 = *(v1 + 48);
      *(v1 + 40) = v46;
      sub_1C6E56804(v50, v51);
      if (qword_1EDEF8F70 != -1)
      {
        swift_once();
      }

      v52 = qword_1EDEF8F78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1C6EE6B40;
      v54 = *(v2 + 88);
      *&v74 = *(v2 + 80);
      *&v79 = (*(v54 + 72))();
      *(&v79 + 1) = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
      v56 = sub_1C6EE4AF0();
      v58 = v57;
      v59 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v60 = sub_1C6DF10E0();
      *(v53 + 64) = v60;
      *(v53 + 32) = v56;
      *(v53 + 40) = v58;
      v61 = (v77 + *(*v77 + 112));
      v63 = *v61;
      v62 = v61[1];
      *(v53 + 96) = v59;
      *(v53 + 104) = v60;
      *(v53 + 72) = v63;
      *(v53 + 80) = v62;

      v64 = sub_1C6EE4EE0();
      sub_1C6EE4730("Global graph built with configuration %{public}@ (%{public}@)", 61, 2, &dword_1C6DE9000, v52, v64, v53);

      v73[1] = v73;
      v66 = *(v1 + 56);
      MEMORY[0x1EEE9AC00](v65);
      v67 = v76;
      v73[-4] = v77;
      v73[-3] = v67;
      v73[-2] = v1;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for ComputeServiceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v70);
      sub_1C6EE4FE0();

      v71 = v75;
      sub_1C6E4EEB8(sub_1C6E57838, &v73[-6], v66);

      v72 = *(v1 + 88);

      os_unfair_lock_lock((v72 + 24));
      sub_1C6E57858((v72 + 16));
      os_unfair_lock_unlock((v72 + 24));

      v3 = v78;
      v39 = *(v1 + 40);
      v40 = *(v1 + 48);
      sub_1C6E57894(v39, v40);
      if (v39)
      {
        sub_1C6E56804(v39, v40);
        if (qword_1EDEF8F70 != -1)
        {
          swift_once();
        }

        v41 = sub_1C6EE4EE0();
        sub_1C6EE4730("Finished initialization work on graph queue", 43, 2, &dword_1C6DE9000, v52, v41, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1C6ED02E4();
        if (v71)
        {
          if (qword_1EDEF8F70 != -1)
          {
            swift_once();
          }

          v43 = sub_1C6EE4EC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1C6EE6590;
          *&v79 = 0;
          *(&v79 + 1) = 0xE000000000000000;
          swift_getErrorValue();
          sub_1C6EE5480();
          v45 = v79;
          *(v44 + 56) = MEMORY[0x1E69E6158];
          *(v44 + 64) = sub_1C6DF10E0();
          *(v44 + 32) = v45;
          sub_1C6EE4730("An error occurred while deleting container after global graph load failure: %{public}@", 86, 2, &dword_1C6DE9000, v52, v43, v44);
        }

        else
        {
          sub_1C6E2FF84(v42);
        }

        *(v1 + 16) = 0;

        *(v1 + 64) = 0;
      }
    }

    else
    {
      if (qword_1EDEF8F70 != -1)
      {
        swift_once();
      }

      v24 = qword_1EDEF8F78;
      v25 = sub_1C6EE4EE0();
      v26 = sub_1C6EE4730("Asked to prepare, but there's no loaded configuration.", 54, 2, &dword_1C6DE9000, v24, v25, MEMORY[0x1E69E7CC0]);
      v27 = *(v1 + 56);
      MEMORY[0x1EEE9AC00](v26);
      v28 = *(v2 + 88);
      v73[-2] = *(v2 + 80);
      v73[-1] = v28;
      v29 = swift_getAssociatedTypeWitness();
      v30 = swift_getAssociatedConformanceWitness();
      type metadata accessor for ComputeServiceData(255, v29, v30, v31);
      sub_1C6EE4FE0();
      v32 = *(*v27 + *MEMORY[0x1E69E6B68] + 16);
      v33 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v27 + v33));
      sub_1C6E577E4(v27 + v32);
      os_unfair_lock_unlock((v27 + v33));

      v3 = v78;
    }
  }

  sub_1C6E53EEC(v1);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C6E53EEC(uint64_t a1)
{
  v2 = sub_1C6EE48F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 64) = 1;
  if (qword_1EDEF8F70 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v7 = sub_1C6EE48D0();
  (*(v3 + 8))(v5, v2);
  result = sub_1C6EE48D0();
  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E6438];
    *(v6 + 56) = MEMORY[0x1E69E63B0];
    *(v6 + 64) = v9;
    *(v6 + 32) = (v7 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730("Finished ComputeService.prepare() in %.0f milliseconds", v10);
  }

  return result;
}

__n128 sub_1C6E540B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v13 = *(a1 + 64);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = sub_1C6EE4FE0();
  (*(*(v9 - 8) + 8))(v12, v9);
  static ComputeServiceData.uninitalized.getter(v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

void *sub_1C6E541D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 48);
  v40[2] = *(a1 + 32);
  v40[3] = v8;
  v41 = *(a1 + 64);
  v9 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v9;
  v10 = v7[11];
  v11 = v7[12];
  v42 = v7[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, v10, AssociatedConformanceWitness, v12);
  v13 = sub_1C6EE4FE0();
  (*(*(v13 - 8) + 8))(v40, v13);
  v14 = (a2 + *(*a2 + 112));
  v34 = v14[1];
  v35 = *v14;

  v15 = sub_1C6ED28FC();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = sub_1C6E03038(*(v15 + 16), 0);
    v19 = sub_1C6E0B274(v38, v18 + 4, v17, v16);
    sub_1C6DF3598(*&v38[0]);
    if (v19 == v17)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *&v38[0] = v18;

  sub_1C6E4CC98(v38);
  if (v4)
  {

    __break(1u);
    return result;
  }

  v33 = *&v38[0];
  v20 = sub_1C6E36310();
  v21 = sub_1C6ED2988();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = sub_1C6E03038(*(v21 + 16), 0);
    v25 = sub_1C6E0B274(v38, v24 + 4, v23, v22);
    sub_1C6DF3598(*&v38[0]);
    if (v25 == v23)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *&v38[0] = v24;

  sub_1C6E4CC98(v38);

  v26 = *&v38[0];
  if (*(a4 + 112))
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1C6E0C6F0(MEMORY[0x1E69E7CC0]);
  }

  v28 = (*(v11 + 72))(v42, v11);
  result = ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)(v35, v34, v33, v20, v26, 1, v27, v28, v38, v29);
  v31 = v38[3];
  *(a1 + 32) = v38[2];
  *(a1 + 48) = v31;
  *(a1 + 64) = v39;
  v32 = v38[1];
  *a1 = v38[0];
  *(a1 + 16) = v32;
  return result;
}

uint64_t sub_1C6E54510(uint64_t *a1)
{

  v2 = sub_1C6ED28FC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1C6E03038(*(v2 + 16), 0);
  v6 = sub_1C6E0B274(&v8, v5 + 4, v4, v3);
  result = sub_1C6DF3598(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    v5 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v5;
  return result;
}

void *sub_1C6E545C4(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a1 + 48);
  v38[2] = *(a1 + 32);
  v38[3] = v6;
  v39 = *(a1 + 64);
  v7 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v7;
  v8 = v5[11];
  v9 = v5[12];
  v10 = v5[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, v8, AssociatedConformanceWitness, v11);
  v12 = sub_1C6EE4FE0();
  (*(*(v12 - 8) + 8))(v38, v12);
  v13 = (a2 + *(*a2 + 112));
  v32 = v13[1];
  v33 = *v13;

  v14 = sub_1C6ED28FC();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_1C6E03038(*(v14 + 16), 0);
    v18 = sub_1C6E0B274(v36, v17 + 4, v16, v15);
    sub_1C6DF3598(*&v36[0]);
    if (v18 == v16)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v19 = v10;
  *&v36[0] = v17;

  sub_1C6E4CC98(v36);
  if (!v2)
  {

    v31 = *&v36[0];
    v35 = sub_1C6E36310();
    v20 = sub_1C6ED2988();
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = sub_1C6E03038(*(v20 + 16), 0);
      v24 = sub_1C6E0B274(v36, v23 + 4, v22, v21);
      sub_1C6DF3598(*&v36[0]);
      if (v24 == v22)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v40 = v23;

    sub_1C6E4CC98(&v40);

    v25 = v40;
    v26 = (*(v9 + 72))(v19, v9);
    result = ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)(v33, v32, v31, v35, v25, 0, 0, v26, v36, v27);
    v29 = v36[3];
    *(a1 + 32) = v36[2];
    *(a1 + 48) = v29;
    *(a1 + 64) = v37;
    v30 = v36[1];
    *a1 = v36[0];
    *(a1 + 16) = v30;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_1C6E548E8(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v36[3] = v5;
  v37 = *(a1 + 64);
  v6 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v6;
  v7 = v4[11];
  v8 = v4[12];
  v9 = v4[10];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, v7, AssociatedConformanceWitness, v11);
  v12 = sub_1C6EE4FE0();
  (*(*(v12 - 8) + 8))(v36, v12);
  v13 = (a2 + *(*a2 + 112));
  v30 = v13[1];
  v31 = *v13;

  v14 = sub_1C6ED28FC();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_1C6E03038(v15, 0);
    v17 = sub_1C6E0B274(v34, v16 + 4, v15, v14);
    sub_1C6DF3598(*&v34[0]);
    if (v17 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v18 = v9;
  *&v34[0] = v16;

  sub_1C6E4CC98(v34);
  if (!v32)
  {

    v33 = *&v34[0];
    v19 = sub_1C6ED2988();
    v20 = v19;
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = sub_1C6E03038(*(v19 + 16), 0);
      v23 = sub_1C6E0B274(v34, v22 + 4, v21, v20);
      sub_1C6DF3598(*&v34[0]);
      if (v23 == v21)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v38 = v22;

    sub_1C6E4CC98(&v38);

    v24 = v38;
    v25 = (*(v8 + 72))(v18, v8);
    result = ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)(v31, v30, v33, MEMORY[0x1E69E7CC0], v24, 0, 0, v25, v34, v26);
    v28 = v34[3];
    *(a1 + 32) = v34[2];
    *(a1 + 48) = v28;
    *(a1 + 64) = v35;
    v29 = v34[1];
    *a1 = v34[0];
    *(a1 + 16) = v29;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C6E54C04(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if ((*(v2 + 112) & 1) == 0)
    {
      v3 = *(v2 + 56);
      MEMORY[0x1EEE9AC00](result);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for ComputeServiceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
      sub_1C6EE4FE0();
      v7 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
      v8 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v3 + v8));
      sub_1C6E57760((v3 + v7));
      os_unfair_lock_unlock((v3 + v8));
    }
  }

  return result;
}

double sub_1C6E54D88(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v36 = a4;
  v10 = type metadata accessor for RequestData(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6EE42C0();
  (*(*(v14 - 8) + 16))(v13, a2, v14);
  type metadata accessor for TimedData(0);
  sub_1C6EE42A0();
  v13[*(v11 + 28)] = a3;
  v15 = *a1;
  v16 = *(a1 + 3);
  v56 = *(a1 + 1);
  v57 = v16;
  v17 = *(a1 + 7);
  v58 = *(a1 + 5);
  v59 = v17;
  if (v15)
  {
    v18 = *(a1 + 1);
    v19 = *(a1 + 3);
    v43 = *(a1 + 2);
    v44 = v19;
    v20 = *(a1 + 1);
    v42[0] = *a1;
    v42[1] = v20;
    v21 = *(a1 + 3);
    v39 = v43;
    v40 = v21;
    v45 = a1[8];
    v41 = a1[8];
    v37 = v42[0];
    v38 = v18;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = type metadata accessor for ComputeServiceData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
    v26 = *(v25 - 8);
    (*(v26 + 16))(&v51, v42, v25);
    sub_1C6E57F34(v13, v36, v60, &v51);
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v46 = v37;
    v47 = v38;
    (*(v26 + 8))(&v46, v25);
    sub_1C6E57788(v13);
    v28 = v51;
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v40 = v55;
  }

  else
  {
    sub_1C6E57788(v13);
    v37 = v56;
    v38 = v57;
    v39 = v58;
    v40 = v59;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = 0;
  }

  v29 = *(a1 + 3);
  v48 = *(a1 + 2);
  v49 = v29;
  v50 = a1[8];
  v30 = *(a1 + 1);
  v46 = *a1;
  v47 = v30;
  type metadata accessor for ComputeServiceData(255, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
  v31 = sub_1C6EE4FE0();
  (*(*(v31 - 8) + 8))(&v46, v31);
  *a1 = v28;
  v32 = v38;
  *(a1 + 1) = v37;
  *(a1 + 3) = v32;
  result = *&v39;
  v34 = v40;
  *(a1 + 5) = v39;
  *(a1 + 7) = v34;
  return result;
}

uint64_t ComputeService.deinit()
{

  sub_1C6E56804(*(v0 + 40), *(v0 + 48));

  sub_1C6DEDC90(v0 + 152, &qword_1EC1F7F38, &unk_1C6EF7A00);
  return v0;
}

uint64_t ComputeService.__deallocating_deinit()
{
  ComputeService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6E5523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(*v7 + 120);
    v9 = sub_1C6EE41A0();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, v7 + v8, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    v11 = sub_1C6EE41A0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  return sub_1C6E578D4(v6, a2);
}

uint64_t sub_1C6E553C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C6EE5450();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C6EE4D00();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C6E55590(v7, v8, a1, v4);
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
    return sub_1C6E554C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6E554C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C6EE54B0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E55590(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C6ECCA74(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C6E55B6C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C6EE54B0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C6EE54B0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6ED92D4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C6ED92D4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C6E55B6C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C6ECCA74(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C6ECC9E8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C6EE54B0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C6E55B6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C6EE54B0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C6EE54B0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t *sub_1C6E55D94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v59 = a7;
  v60 = a5;
  v53 = a4;
  v43 = a3;
  v51 = a2;
  v52 = a1;
  v45 = *v8;
  v44 = *a3;
  v57 = sub_1C6EE4880();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6EE4F20();
  v11 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6EE4F00();
  MEMORY[0x1EEE9AC00](v14);
  v55 = sub_1C6EE48C0();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a6;
  v49 = *(a6 + 8);
  v48 = a6[2];
  v47 = *(a6 + 24);
  v46 = *(a6 + 25);
  v8[2] = 0;
  v41[1] = sub_1C6DEC5E8();
  v41[0] = ".0f milliseconds";
  sub_1C6EE48B0();
  *&v68[0] = MEMORY[0x1E69E7CC0];
  sub_1C6DEC634(&qword_1EDEF6770, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6DEC67C(&qword_1EDEF67A8, &qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6EE50C0();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v42);
  v17 = v16;
  v18 = sub_1C6EE4F50();
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = v18;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  aBlock = 0u;
  v64 = 0u;
  v19 = v43;
  v20 = *(v44 + 88);
  v21 = *(v45 + 88);
  v22 = *(v45 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ComputeServiceData(255, v20, AssociatedConformanceWitness, v24);
  v25 = sub_1C6EE4FE0();
  v26 = sub_1C6DED958(&aBlock, v25);
  v68[1] = v64;
  v68[2] = v65;
  v68[3] = v66;
  v69 = v67;
  v68[0] = aBlock;
  (*(*(v25 - 8) + 8))(v68, v25);
  v8[7] = v26;
  *(v8 + 64) = 0;
  v8[9] = dispatch_group_create();
  *(v8 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FF0, &qword_1C6EE9E18);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  v28 = MEMORY[0x1E69E7CC0];
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  v8[11] = v27;
  v29 = v28;
  v30 = sub_1C6DEDB3C(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FF8, &qword_1C6EE9E20);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = v30;
  v8[17] = v31;
  *&aBlock = v22;
  swift_getExtendedExistentialTypeMetadata();
  v32 = sub_1C6EE4FE0();
  v8[18] = sub_1C6DED958(v51, v32);
  type metadata accessor for FileContainerManager(0, v22, v21, v33);
  sub_1C6E57B14(v52, &aBlock);
  sub_1C6E57B14(v53, v62);
  LOBYTE(v22) = v46;
  v61 = v46;
  v34 = sub_1C6E2E898(&aBlock, v62, v19, &v61);
  v8[3] = v34;
  sub_1C6E57B78(v60, (v8 + 19), &qword_1EC1F7F38, &unk_1C6EF7A00);
  *(v8 + 112) = v49;
  v8[15] = v48;
  *(v8 + 128) = v47;
  *(v8 + 129) = v22;
  v35 = v50;
  v8[12] = v59;
  v8[13] = v35;
  v53 = v8[4];
  v36 = swift_allocObject();
  *(v36 + 16) = v8;
  *(v36 + 24) = v34;
  *&v65 = sub_1C6E57BE0;
  *(&v65 + 1) = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v64 = sub_1C6DEDCF0;
  *(&v64 + 1) = &block_descriptor_88;
  v37 = _Block_copy(&aBlock);
  swift_retain_n();

  sub_1C6EE48A0();
  v62[0] = v29;
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  v38 = v56;
  v39 = v57;
  sub_1C6EE50C0();
  MEMORY[0x1CCA58340](0, v17, v38, v37);
  _Block_release(v37);

  sub_1C6DEDC90(v60, &qword_1EC1F7F38, &unk_1C6EF7A00);
  (*(v58 + 8))(v38, v39);
  (*(v54 + 8))(v17, v55);

  return v8;
}

uint64_t sub_1C6E56610(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C6E57D58;

  return sub_1C6E4E7A4(a1, a2, v6);
}

uint64_t sub_1C6E566D4@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v2[2];
  return sub_1C6E57944(v2, &v5);
}

uint64_t sub_1C6E56754()
{
  v1 = *(sub_1C6EE42C0() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1C6E4FC8C(v2, v3, v4);
}

uint64_t sub_1C6E56804(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for DiagnosticInfo(uint64_t a1)
{
  result = qword_1EDEF86C8;
  if (!qword_1EDEF86C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ComputeService.performAsync(qos:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 472) + **(*v4 + 472));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C6E56AC4;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1C6E56AC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ComputeService.performAsync(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 480) + **(*v2 + 480));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C6E57D5C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ComputeService.perform(_:)()
{
  return (*(*v0 + 488))();
}

{
  return (*(*v0 + 496))();
}

uint64_t dispatch thunk of ComputeService.refresh(install:)(uint64_t a1)
{
  v6 = (*(*v1 + 528) + **(*v1 + 528));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C6E57D60;

  return v6(a1);
}

uint64_t dispatch thunk of ComputeService.refreshPackages()()
{
  v4 = (*(*v0 + 536) + **(*v0 + 536));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C6E57D64;

  return v4();
}

uint64_t dispatch thunk of ComputeService.startup()()
{
  v4 = (*(*v0 + 544) + **(*v0 + 544));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C6E57148;

  return v4();
}

uint64_t sub_1C6E57148()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6E57268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C6E572B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6E572F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E57364(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E573DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1C6E57518(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1C6E576F4(uint64_t a1)
{
  sub_1C6DEFDAC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C6E57788(uint64_t a1)
{
  v2 = type metadata accessor for RequestData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E57894(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6E578D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E57A30(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
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

uint64_t sub_1C6E57AFC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6E57B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6E57B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E57BE0()
{
  v1 = *(v0 + 16);
  *(v1 + 16) = sub_1C6E2E960();
}

uint64_t sub_1C6E57C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph14ComputeServiceC6ErrorsOyx_G(uint64_t a1)
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

uint64_t sub_1C6E57C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1C6E57CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6E57D18(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t ComputeServiceDataSettings.init(requestDataPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t static ComputeServiceData.uninitalized.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1C6E0C6F0(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  strcpy((a1 + 8), "uninitialized");
  *(a1 + 22) = -4864;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = result;
  return result;
}

uint64_t ComputeServiceData.init(configurationIdentifier:configurationPackageIDs:packageVersions:cachedPackageIDs:resolvedGlobalGraph:requestsByWorkName:humanReadableIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a5;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 48) = a4;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  return result;
}

uint64_t TimedData.init(startTimestamp:endTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C6EE42C0();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for TimedData(0) + 20);

  return v9(v7, a2, v6);
}

uint64_t RequestData.init(timedData:successful:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C6E58804(a1, a3, type metadata accessor for TimedData);
  result = type metadata accessor for RequestData(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1C6E57F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v8 = type metadata accessor for RequestData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v14 = v4[2];
  v13 = v4[3];
  v31 = v4[1];
  v32 = v13;
  v15 = v4[5];
  v30 = v4[4];
  v33 = v4[6];
  v34 = v12;
  HIDWORD(v29) = *(v4 + 56);
  if (v4[8])
  {
    v16 = v4[8];
  }

  else
  {
    v16 = sub_1C6E0C6F0(MEMORY[0x1E69E7CC0]);
  }

  v17 = *(v16 + 16);

  if (v17 && (v18 = sub_1C6DEC784(v35, a3), (v19 & 1) != 0))
  {
    v20 = *(*(v16 + 56) + 8 * v18);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6E5879C(a1, v11, type metadata accessor for RequestData);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1C6ED9880(0, v20[2] + 1, 1, v20);
  }

  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1C6ED9880((v21 > 1), v22 + 1, 1, v20);
  }

  v20[2] = v22 + 1;
  sub_1C6E58804(v11, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, type metadata accessor for RequestData);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v16;
  sub_1C6E092E0(v20, v35, a3, isUniquelyReferenced_nonNull_native);

  v24 = v36;
  v25 = v33;
  v26 = v31;
  v27 = v32;
  *a4 = v34;
  *(a4 + 8) = v26;
  *(a4 + 16) = v14;
  *(a4 + 24) = v27;
  *(a4 + 32) = v30;
  *(a4 + 40) = v15;
  *(a4 + 48) = v25;
  *(a4 + 56) = BYTE4(v29);
  *(a4 + 64) = v24;
}

uint64_t TimedData.startTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE42C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimedData.endTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimedData(0) + 20);
  v4 = sub_1C6EE42C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RequestData.successful.setter(char a1)
{
  result = type metadata accessor for RequestData(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t ComputeServiceData.configurationIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ComputeServiceData.humanReadableIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C6E58460(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E58498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ComputeServiceDataSettings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceDataSettings(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceDataSettings.RequestDataPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceDataSettings.RequestDataPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6E585A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E585C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6E58620(uint64_t a1)
{
  result = sub_1C6EE42C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E586B4(uint64_t a1)
{
  result = type metadata accessor for TimedData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C6E5874C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E5879C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E58804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::String_optional __swiftcall StaticRetentionTokenVendor.retentionToken(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1C6DEC784(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1C6E588E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6E58928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C6E589C0(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E58ADC(319, qword_1EDEF8B60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6E58ADC(319, qword_1EDEF8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E58ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6E58B88(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E58ADC(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6E58ADC(319, qword_1EDEF8EF8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6E58ADC(319, qword_1EDEF8CD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C6E58D34(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E58DFC(uint64_t a1)
{
  result = sub_1C6EE4430();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E58EDC(uint64_t a1)
{
  sub_1C6E59038();
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      sub_1C6E58ADC(319, qword_1EDEF8C10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6E58ADC(319, &qword_1EDEF71C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C6E58ADC(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6E59038()
{
  if (!qword_1EDEF6840)
  {
    v0 = sub_1C6EE49E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF6840);
    }
  }
}

uint64_t sub_1C6E59138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 17))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6E5918C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 16) = 0;
    *result = a2 - 1020;
    *(result + 8) = 0;
    if (a3 >= 0x3FC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1C6E591EC(uint64_t result, char a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = (a2 & 4) != 0;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C6E593B0(uint64_t a1)
{
  sub_1C6E6F2B0(319, &qword_1EDEF67A0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E59548(uint64_t a1)
{
  sub_1C6E58ADC(319, &qword_1EDEF6800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E59644(uint64_t a1)
{
  sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    sub_1C6E58ADC(319, qword_1EDEF75C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E59708(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E59764(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E597C0(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_1C6E00D18(v7, v6);
          sub_1C6E00D18(v9, v8);
          v22 = sub_1C6EE3F90();
          if (v22)
          {
            v23 = sub_1C6EE3FC0();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_1C6EE3FB0();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_1C6E00D18(v7, v6);
        sub_1C6E00D18(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_1C6E00D18(v7, v6);
          sub_1C6E00D18(v9, v8);
          v27 = sub_1C6EE3F90();
          if (v27)
          {
            v28 = sub_1C6EE3FC0();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_1C6EE3FB0();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1C6E6B0F4(v24, v25, v26, v33);
          sub_1C6DF1134(v9, v8);
          sub_1C6DF1134(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_1C6E00D18(v7, v6);
        sub_1C6E00D18(v9, v8);
      }

      sub_1C6E6B0F4(v33, v9, v8, &v32);
      sub_1C6DF1134(v9, v8);
      sub_1C6DF1134(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1C6E59BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C6E59C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v58 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8310, &unk_1C6EF53A0);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v58 - v10;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = (&v58 - v15);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  MEMORY[0x1EEE9AC00](v70);
  v17 = &v58 - v16;
  v74 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v18 = MEMORY[0x1EEE9AC00](v74);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v58 - v21;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_60:
    v53 = 0;
    return v53 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v53 = 1;
    return v53 & 1;
  }

  v66 = v17;
  v67 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v62 = v11;
  v63 = (v12 + 48);
  v25 = a2 + v23;
  v60 = *(v19 + 72);
  v61 = (v5 + 48);
  v26 = v20;
  v58 = v9;
  v73 = v20;
  while (1)
  {
    v27 = v75;
    result = sub_1C6E6EB04(v24, v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    if (!v22)
    {
      break;
    }

    v71 = v25;
    sub_1C6E6EB04(v25, v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    v29 = *(v74 + 20);
    v30 = *(v70 + 48);
    sub_1C6E6EBC0(v27 + v29, v17, &qword_1EC1F8318, &qword_1C6EEC740);
    sub_1C6E6EBC0(v26 + v29, &v17[v30], &qword_1EC1F8318, &qword_1C6EEC740);
    v31 = v62;
    v32 = *v63;
    v33 = (*v63)(v17, 1, v62);
    v72 = v24;
    if (v33 == 1)
    {
      v34 = v32(&v17[v30], 1, v31);
      v26 = v73;
      if (v34 != 1)
      {
        goto LABEL_54;
      }

      sub_1C6E6EC28(v17, &qword_1EC1F8318, &qword_1C6EEC740);
      v35 = v61;
      v36 = v75;
    }

    else
    {
      v59 = v22;
      v37 = v65;
      sub_1C6E6EBC0(v17, v65, &qword_1EC1F8318, &qword_1C6EEC740);
      if (v32(&v17[v30], 1, v31) == 1)
      {
        sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v26 = v73;
LABEL_54:
        v55 = &qword_1EC1F8320;
        v56 = &qword_1C6EEC748;
        v57 = v17;
LABEL_55:
        sub_1C6E6EC28(v57, v55, v56);
        goto LABEL_58;
      }

      v38 = v64;
      sub_1C6E6B02C(&v17[v30], v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
      v26 = v73;
      if ((*v37 != *v38 || v37[1] != v38[1]) && (sub_1C6EE54B0() & 1) == 0 || (v37[2] != v38[2] || v37[3] != v38[3]) && (sub_1C6EE54B0() & 1) == 0 || (v37[4] != v38[4] || v37[5] != v38[5]) && (sub_1C6EE54B0() & 1) == 0)
      {
        sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v55 = &qword_1EC1F8318;
        v56 = &qword_1C6EEC740;
        v57 = v66;
        goto LABEL_55;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v39 = sub_1C6EE4A50();
      sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
      sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
      sub_1C6E6EC28(v66, &qword_1EC1F8318, &qword_1C6EEC740);
      v9 = v58;
      v22 = v59;
      v35 = v61;
      v36 = v75;
      if ((v39 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v40 = v76;
    v41 = *(v74 + 24);
    v42 = v68;
    v43 = *(v69 + 48);
    sub_1C6E6EBC0(v36 + v41, v76, &qword_1EC1F8308, &unk_1C6EEC730);
    sub_1C6E6EBC0(v26 + v41, v40 + v43, &qword_1EC1F8308, &unk_1C6EEC730);
    v44 = *v35;
    v45 = v40;
    v46 = v67;
    if ((*v35)(v45, 1, v67) == 1)
    {
      if (v44(v76 + v43, 1, v46) != 1)
      {
        goto LABEL_57;
      }

      sub_1C6E6EC28(v76, &qword_1EC1F8308, &unk_1C6EEC730);
      v26 = v73;
      v36 = v75;
    }

    else
    {
      v47 = v76;
      sub_1C6E6EBC0(v76, v9, &qword_1EC1F8308, &unk_1C6EEC730);
      if (v44(v47 + v43, 1, v46) == 1)
      {
        sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
LABEL_57:
        sub_1C6E6EC28(v76, &qword_1EC1F8310, &unk_1C6EF53A0);
        v26 = v73;
LABEL_58:
        v36 = v75;
        goto LABEL_59;
      }

      sub_1C6E6B02C(v76 + v43, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      v48 = *v9;
      v49 = *v42;
      if (v9[8])
      {
        v48 = *v9 != 0;
      }

      if (*(v42 + 8) == 1)
      {
        v26 = v73;
        if (v49)
        {
          v36 = v75;
          if (v48 != 1)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v36 = v75;
          if (v48)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v26 = v73;
        v36 = v75;
        if (v48 != v49)
        {
          goto LABEL_50;
        }
      }

      v50 = *(v9 + 2);
      v51 = *(v42 + 16);
      if (*(v42 + 24) == 1)
      {
        if (v51 > 1)
        {
          if (v51 == 2)
          {
            if (v50 != 2)
            {
              goto LABEL_50;
            }
          }

          else if (v50 != 3)
          {
LABEL_50:
            sub_1C6E6B094(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
            sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
            sub_1C6E6EC28(v76, &qword_1EC1F8308, &unk_1C6EEC730);
LABEL_59:
            sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
            sub_1C6E6B094(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
            goto LABEL_60;
          }
        }

        else if (v51)
        {
          if (v50 != 1)
          {
            goto LABEL_50;
          }
        }

        else if (v50)
        {
          goto LABEL_50;
        }
      }

      else if (v50 != v51)
      {
        goto LABEL_50;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v52 = sub_1C6EE4A50();
      sub_1C6E6B094(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6E6B094(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6E6EC28(v76, &qword_1EC1F8308, &unk_1C6EEC730);
      if ((v52 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v53 = sub_1C6EE4A50();
    sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    sub_1C6E6B094(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
    if (v53)
    {
      v25 = v71 + v60;
      v24 = v72 + v60;
      v54 = v22-- == 1;
      v17 = v66;
      if (!v54)
      {
        continue;
      }
    }

    return v53 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5A718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v27 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_40:
    v26 = 0;
    return v26 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1C6E6EB04(v28 + v15 * v12, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    if (v12 == v11)
    {
      break;
    }

    sub_1C6E6EB04(v14 + v15 * v12, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    v17 = *v10 == *v7 && v10[1] == *(v7 + 1);
    if (!v17 && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_39;
    }

    v18 = v10[2];
    v19 = *(v7 + 2);
    if (v7[24] == 1)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (v18 != 1)
          {
            goto LABEL_39;
          }
        }

        else if (v18 != 2)
        {
          goto LABEL_39;
        }
      }

      else if (v18)
      {
        goto LABEL_39;
      }
    }

    else if (v18 != v19)
    {
      goto LABEL_39;
    }

    v20 = v10[4];
    v21 = *(v7 + 4);
    v22 = *(v20 + 16);
    if (v22 != *(v21 + 16))
    {
      goto LABEL_39;
    }

    if (v22 && v20 != v21)
    {
      v23 = (v20 + 40);
      v24 = (v21 + 40);
      while (1)
      {
        v25 = *(v23 - 1) == *(v24 - 1) && *v23 == *v24;
        if (!v25 && (sub_1C6EE54B0() & 1) == 0)
        {
          break;
        }

        v23 += 2;
        v24 += 2;
        if (!--v22)
        {
          goto LABEL_32;
        }
      }

LABEL_39:
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
      goto LABEL_40;
    }

LABEL_32:
    if ((v10[5] != *(v7 + 5) || v10[6] != *(v7 + 6)) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v26 = sub_1C6EE4A50();
    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
    if ((v26 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5AAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C6E6EB04(v13, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6E6EB04(v14, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1C6EE4A50();
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1C6E5AD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v37 - v9);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v37 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v15;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_36:
    v33 = 0;
    return v33 & 1;
  }

  if (v18 && a1 != a2)
  {
    v45 = v16;
    v40 = &v37 - v15;
    v41 = v4;
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v38 = v12;
    v39 = (v5 + 48);
    v37 = *(v14 + 72);
    while (1)
    {
      sub_1C6E6EB04(v20, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      v43 = v21;
      v44 = v20;
      v22 = v45;
      sub_1C6E6EB04(v21, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      v23 = *v17 == *v22 && *(v17 + 1) == *(v22 + 8);
      if (!v23 && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v24 = v17;
      v25 = v7;
      v26 = *(v12 + 28);
      v27 = *(v42 + 48);
      v28 = v46;
      sub_1C6E6EBC0(&v24[v26], v46, &qword_1EC1F8318, &qword_1C6EEC740);
      sub_1C6E6EBC0(v22 + v26, v28 + v27, &qword_1EC1F8318, &qword_1C6EEC740);
      v29 = *v39;
      v30 = v41;
      if ((*v39)(v28, 1, v41) == 1)
      {
        v23 = v29(v28 + v27, 1, v30) == 1;
        v7 = v25;
        v31 = v28;
        v22 = v45;
        v17 = v40;
        if (!v23)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1C6E6EBC0(v28, v10, &qword_1EC1F8318, &qword_1C6EEC740);
        if (v29(v28 + v27, 1, v30) == 1)
        {
          sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
          v31 = v28;
          v22 = v45;
          v17 = v40;
LABEL_33:
          v34 = &qword_1EC1F8320;
          v35 = &qword_1C6EEC748;
          goto LABEL_34;
        }

        v7 = v25;
        sub_1C6E6B02C(v28 + v27, v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        if ((*v10 != *v25 || v10[1] != *(v25 + 1)) && (sub_1C6EE54B0() & 1) == 0 || (v10[2] != *(v25 + 2) || v10[3] != *(v25 + 3)) && (sub_1C6EE54B0() & 1) == 0 || (v10[4] != *(v25 + 4) || v10[5] != *(v25 + 5)) && (sub_1C6EE54B0() & 1) == 0)
        {
          sub_1C6E6B094(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
          v22 = v45;
          v17 = v40;
LABEL_31:
          sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
          v34 = &qword_1EC1F8318;
          v35 = &qword_1C6EEC740;
          v31 = v46;
LABEL_34:
          sub_1C6E6EC28(v31, v34, v35);
          break;
        }

        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v32 = sub_1C6EE4A50();
        sub_1C6E6B094(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v22 = v45;
        v17 = v40;
        if ((v32 & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
        v31 = v46;
      }

      sub_1C6E6EC28(v31, &qword_1EC1F8318, &qword_1C6EEC740);
      v12 = v38;
      if (*(v17 + 4) != *(v22 + 16))
      {
        break;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v33 = sub_1C6EE4A50();
      sub_1C6E6B094(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      sub_1C6E6B094(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
      if (v33)
      {
        v21 = v43 + v37;
        v20 = v44 + v37;
        if (--v18)
        {
          continue;
        }
      }

      return v33 & 1;
    }

    sub_1C6E6B094(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
    sub_1C6E6B094(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
    goto LABEL_36;
  }

  v33 = 1;
  return v33 & 1;
}

uint64_t sub_1C6E5B3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C6E6EB04(v13, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      sub_1C6E6EB04(v14, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      if (*v10 != *v7 || *(v10 + 1) != *(v7 + 1) || *(v10 + 2) != *(v7 + 2))
      {
        break;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v16 = sub_1C6EE4A50();
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1C6E5B684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
      return v18 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C6E6EB04(v13, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      sub_1C6E6EB04(v14, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      v16 = *v10;
      v17 = *v7;
      if (*(v7 + 8) == 1)
      {
        if (v17 > 3)
        {
          if (v17 > 5)
          {
            if (v17 == 6)
            {
              if (v16 != 6)
              {
                break;
              }
            }

            else if (v16 != 7)
            {
              break;
            }
          }

          else if (v17 == 4)
          {
            if (v16 != 4)
            {
              break;
            }
          }

          else if (v16 != 5)
          {
            break;
          }
        }

        else if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (v16 != 2)
            {
              break;
            }
          }

          else if (v16 != 3)
          {
            break;
          }
        }

        else if (v17)
        {
          if (v16 != 1)
          {
            break;
          }
        }

        else if (v16)
        {
          break;
        }
      }

      else if (v16 != v17)
      {
        break;
      }

      if (v10[3] != v7[3] || v10[4] != v7[4])
      {
        break;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1C6EE4A50();
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C6E5B990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1C6E6EB04(v13, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6EB04(v14, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (!v16 && (sub_1C6EE54B0() & 1) == 0)
        {
          break;
        }

        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v17 = sub_1C6EE4A50();
        sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        if (v17)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v17 & 1;
      }

      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1C6E5BC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1C6E6EB04(v20, v17, a4);
        sub_1C6E6EB04(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1C6E6B094(v14, a6);
        sub_1C6E6B094(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1C6E5BDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v42 - v10;
  v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v42 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_28:
    v39 = 0;
    return v39 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v44 = v9;
  v48 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v43 = *(v15 + 72);
  v23 = v45;
  while (1)
  {
    result = sub_1C6E6EB04(v20, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    if (!v18)
    {
      break;
    }

    v50 = v18;
    v51 = v20;
    v49 = v21;
    sub_1C6E6EB04(v21, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    v25 = *(v23 + 28);
    v26 = *(v47 + 48);
    sub_1C6E6EBC0(v17 + v25, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    sub_1C6E6EBC0(v14 + v25, &v11[v26], &qword_1EC1F7EF0, &unk_1C6EE9280);
    v27 = *v22;
    v28 = v11;
    v29 = v11;
    v30 = v48;
    if ((*v22)(v28, 1, v48) == 1)
    {
      if (v27((v29 + v26), 1, v30) != 1)
      {
        goto LABEL_25;
      }

      sub_1C6E6EC28(v29, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v11 = v29;
    }

    else
    {
      v31 = v44;
      sub_1C6E6EBC0(v29, v44, &qword_1EC1F7EF0, &unk_1C6EE9280);
      if (v27((v29 + v26), 1, v30) == 1)
      {
        sub_1C6E6B094(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_25:
        v40 = &qword_1EC1F8220;
        v41 = &qword_1C6EEC6E0;
        goto LABEL_26;
      }

      v32 = v29 + v26;
      v33 = v46;
      sub_1C6E6B02C(v32, v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if ((*v31 != *v33 || v31[1] != v33[1]) && (sub_1C6EE54B0() & 1) == 0)
      {
        sub_1C6E6B094(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        v40 = &qword_1EC1F7EF0;
        v41 = &unk_1C6EE9280;
LABEL_26:
        sub_1C6E6EC28(v29, v40, v41);
LABEL_27:
        sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
        sub_1C6E6B094(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
        goto LABEL_28;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v34 = v44;
      v35 = v22;
      v36 = v46;
      v37 = sub_1C6EE4A50();
      v38 = v36;
      v22 = v35;
      v11 = v29;
      sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6B094(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6EC28(v29, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v23 = v45;
      if ((v37 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((*v17 != *v14 || v17[1] != v14[1]) && (sub_1C6EE54B0() & 1) == 0 || (v17[2] != v14[2] || v17[3] != v14[3]) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v39 = sub_1C6EE4A50();
    sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    sub_1C6E6B094(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
    if (v39)
    {
      v18 = v50 - 1;
      v21 = v49 + v43;
      v20 = v51 + v43;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8248, &qword_1C6EEC708);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v46 - v10;
  v55 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  v12 = MEMORY[0x1EEE9AC00](v55);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_25:
    v43 = 0;
    return v43 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v43 = 1;
    return v43 & 1;
  }

  v54 = (&v46 - v16);
  v48 = v9;
  v49 = v14;
  v52 = v4;
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v5 + 48);
  v47 = *(v15 + 72);
  v22 = &unk_1C6EEA4C0;
  while (1)
  {
    v23 = v22;
    v24 = v11;
    v25 = v54;
    result = sub_1C6E6EB04(v19, v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    if (!v17)
    {
      break;
    }

    v53 = v17;
    sub_1C6E6EB04(v20, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    v27 = *(v55 + 24);
    v28 = *(v51 + 48);
    v29 = v25 + v27;
    v11 = v24;
    v30 = v24;
    v22 = v23;
    sub_1C6E6EBC0(v29, v30, &qword_1EC1F8000, v23);
    sub_1C6E6EBC0(v14 + v27, &v11[v28], &qword_1EC1F8000, v23);
    v31 = *v21;
    v32 = v52;
    if ((*v21)(v11, 1, v52) == 1)
    {
      v33 = v31(&v11[v28], 1, v32);
      v34 = v54;
      if (v33 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6E6EC28(v11, &qword_1EC1F8000, v23);
      v14 = v49;
    }

    else
    {
      v35 = v48;
      sub_1C6E6EBC0(v11, v48, &qword_1EC1F8000, v23);
      if (v31(&v11[v28], 1, v32) == 1)
      {
        sub_1C6E6B094(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        v34 = v54;
LABEL_22:
        v44 = &qword_1EC1F8248;
        v45 = &qword_1C6EEC708;
        goto LABEL_23;
      }

      v36 = &v11[v28];
      v37 = v50;
      sub_1C6E6B02C(v36, v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v34 = v54;
      if ((*v35 != *v37 || v35[1] != v37[1]) && (sub_1C6EE54B0() & 1) == 0)
      {
        sub_1C6E6B094(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        sub_1C6E6B094(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        v44 = &qword_1EC1F8000;
        v45 = &unk_1C6EEA4C0;
LABEL_23:
        sub_1C6E6EC28(v11, v44, v45);
        v14 = v49;
LABEL_24:
        sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
        sub_1C6E6B094(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
        goto LABEL_25;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v38 = v48;
      v39 = v21;
      v40 = v50;
      v41 = sub_1C6EE4A50();
      v42 = v40;
      v21 = v39;
      sub_1C6E6B094(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      sub_1C6E6B094(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v22 = v23;
      sub_1C6E6EC28(v11, &qword_1EC1F8000, v23);
      v14 = v49;
      if ((v41 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if ((*v34 != *v14 || v34[1] != v14[1]) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v43 = sub_1C6EE4A50();
    sub_1C6E6B094(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    sub_1C6E6B094(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
    if (v43)
    {
      v17 = v53 - 1;
      v20 += v47;
      v19 += v47;
      if (v53 != 1)
      {
        continue;
      }
    }

    return v43 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5CB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1C6E6EB04(v20, v17, a4);
        sub_1C6E6EB04(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1C6E6B094(v14, a6);
        sub_1C6E6B094(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1C6E5CCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = (&v47 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_35:
    v41 = 0;
    return v41 & 1;
  }

  if (!v20 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v47 = v13;
  v48 = v7;
  v21 = 0;
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v52 = a2 + v22;
  v50 = v16;
  v51 = (v5 + 48);
  v53 = *(v17 + 72);
  v54 = a1 + v22;
  v56 = v20;
  v49 = &v47 - v18;
  while (1)
  {
    v23 = v53 * v21;
    result = sub_1C6E6EB04(v54 + v53 * v21, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    if (v21 == v56)
    {
      goto LABEL_38;
    }

    result = sub_1C6E6EB04(v52 + v23, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    v25 = *v19;
    v26 = *v16;
    v27 = *(*v19 + 16);
    if (v27 != *(*v16 + 16))
    {
      goto LABEL_34;
    }

    if (v27 && v25 != v26)
    {
      break;
    }

LABEL_12:
    v29 = *(v13 + 24);
    v30 = *(v10 + 48);
    sub_1C6E6EBC0(&v19[v29], v12, &qword_1EC1F7D68, &unk_1C6EE89B0);
    sub_1C6E6EBC0(&v16[v29], &v12[v30], &qword_1EC1F7D68, &unk_1C6EE89B0);
    v31 = *v51;
    if ((*v51)(v12, 1, v4) == 1)
    {
      v32 = v31(&v12[v30], 1, v4);
      v19 = v49;
      v16 = v50;
      if (v32 != 1)
      {
        goto LABEL_31;
      }

      sub_1C6E6EC28(v12, &qword_1EC1F7D68, &unk_1C6EE89B0);
    }

    else
    {
      v33 = v10;
      v34 = v4;
      v35 = v55;
      sub_1C6E6EBC0(v12, v55, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v36 = v34;
      if (v31(&v12[v30], 1, v34) == 1)
      {
        sub_1C6E6B094(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v19 = v49;
        v16 = v50;
LABEL_31:
        v45 = &qword_1EC1F7D70;
        v46 = &unk_1C6EF2EA0;
        goto LABEL_33;
      }

      v37 = v48;
      sub_1C6E6B02C(&v12[v30], v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v38 = sub_1C6E227C4(*v35, *v37);
      v19 = v49;
      v16 = v50;
      if ((v38 & 1) == 0)
      {
        sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E6B094(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v45 = &qword_1EC1F7D68;
        v46 = &unk_1C6EE89B0;
LABEL_33:
        sub_1C6E6EC28(v12, v45, v46);
LABEL_34:
        sub_1C6E6B094(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
        sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
        goto LABEL_35;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v39 = sub_1C6EE4A50();
      sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v40 = v35;
      v4 = v36;
      sub_1C6E6B094(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E6EC28(v12, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v10 = v33;
      v13 = v47;
      if ((v39 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v41 = sub_1C6EE4A50();
    sub_1C6E6B094(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    if ((v41 & 1) != 0 && ++v21 != v56)
    {
      continue;
    }

    return v41 & 1;
  }

  v42 = (v25 + 40);
  v43 = (v26 + 40);
  while (v27)
  {
    result = *(v42 - 1);
    if (result != *(v43 - 1) || *v42 != *v43)
    {
      result = sub_1C6EE54B0();
      if ((result & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v42 += 2;
    v43 += 2;
    if (!--v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C6E5D324(uint64_t a1, uint64_t a2)
{
  v161[3] = *MEMORY[0x1E69E9840];
  v153 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v4 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v145 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v146 = (&v128 - v7);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8330, &unk_1C6EF6170);
  MEMORY[0x1EEE9AC00](v149);
  v159 = &v128 - v8;
  v141 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v148 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v134 = &v128 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8340, &qword_1C6EEC768);
  MEMORY[0x1EEE9AC00](v136);
  v14 = &v128 - v13;
  v150 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v15 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v139 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v143 = &v128 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8350, &qword_1C6EEC778);
  MEMORY[0x1EEE9AC00](v140);
  v142 = &v128 - v19;
  v154 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v20 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v155 = (&v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v152 = (&v128 - v23);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8360, &qword_1C6EEC788);
  MEMORY[0x1EEE9AC00](v151);
  v25 = &v128 - v24;
  v157 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  v26 = MEMORY[0x1EEE9AC00](v157);
  v158 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v128 - v29;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
    goto LABEL_105;
  }

  if (!v31 || a1 == a2)
  {
    v120 = 1;
    return v120 & 1;
  }

  v129 = v10;
  v131 = 0;
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = a1 + v32;
  v132 = (v15 + 48);
  v34 = a2 + v32;
  v128 = (v148 + 48);
  v135 = (v4 + 48);
  v133 = *(v28 + 72);
  v130 = v14;
  v138 = v25;
  v156 = &v128 - v29;
  v137 = (v20 + 48);
  while (1)
  {
    v148 = v33;
    sub_1C6E6EB04(v33, v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v147 = v34;
    v35 = v158;
    sub_1C6E6EB04(v34, v158, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v36 = *(v157 + 20);
    v37 = *(v151 + 48);
    sub_1C6E6EBC0(&v30[v36], v25, &qword_1EC1F8358, &qword_1C6EEC780);
    v38 = v35 + v36;
    v39 = v137;
    sub_1C6E6EBC0(v38, &v25[v37], &qword_1EC1F8358, &qword_1C6EEC780);
    v40 = *v39;
    v41 = v154;
    if ((*v39)(v25, 1, v154) == 1)
    {
      v42 = v40(&v25[v37], 1, v41);
      v43 = v156;
      if (v42 != 1)
      {
        goto LABEL_90;
      }

      sub_1C6E6EC28(v25, &qword_1EC1F8358, &qword_1C6EEC780);
    }

    else
    {
      v44 = v152;
      sub_1C6E6EBC0(v25, v152, &qword_1EC1F8358, &qword_1C6EEC780);
      v45 = v40(&v25[v37], 1, v41);
      v46 = v143;
      if (v45 == 1)
      {
        sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
        v43 = v156;
LABEL_90:
        v122 = &qword_1EC1F8360;
        v123 = &qword_1C6EEC788;
        goto LABEL_102;
      }

      v47 = &v25[v37];
      v48 = v155;
      sub_1C6E6B02C(v47, v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      v43 = v156;
      if ((*v44 != *v48 || v44[1] != v48[1]) && (sub_1C6EE54B0() & 1) == 0)
      {
        goto LABEL_101;
      }

      v49 = *(v41 + 24);
      v50 = *(v140 + 48);
      v51 = v142;
      sub_1C6E6EBC0(v44 + v49, v142, &qword_1EC1F8348, &qword_1C6EEC770);
      sub_1C6E6EBC0(v155 + v49, v51 + v50, &qword_1EC1F8348, &qword_1C6EEC770);
      v52 = *v132;
      v53 = v150;
      if ((*v132)(v51, 1, v150) == 1)
      {
        v54 = v52(v51 + v50, 1, v53) == 1;
        v55 = v51;
        v44 = v152;
        v25 = v138;
        if (!v54)
        {
          goto LABEL_94;
        }

        sub_1C6E6EC28(v51, &qword_1EC1F8348, &qword_1C6EEC770);
      }

      else
      {
        sub_1C6E6EBC0(v51, v46, &qword_1EC1F8348, &qword_1C6EEC770);
        if (v52(v51 + v50, 1, v53) == 1)
        {
          sub_1C6E6B094(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
          v55 = v51;
          v44 = v152;
          v25 = v138;
LABEL_94:
          v125 = &qword_1EC1F8350;
          v126 = &qword_1C6EEC778;
          goto LABEL_100;
        }

        v56 = v51 + v50;
        v57 = v139;
        sub_1C6E6B02C(v56, v139, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
        v44 = v152;
        v25 = v138;
        if (*v46 != *v57)
        {
          goto LABEL_99;
        }

        v58 = *(v150 + 24);
        v59 = *(v136 + 48);
        v60 = &v46[v58];
        v61 = v130;
        sub_1C6E6EBC0(v60, v130, &qword_1EC1F8338, &qword_1C6EEC760);
        sub_1C6E6EBC0(&v57[v58], v61 + v59, &qword_1EC1F8338, &qword_1C6EEC760);
        v62 = *v128;
        if ((*v128)(v61, 1, v141) == 1)
        {
          v63 = v62(v61 + v59, 1, v141);
          v44 = v152;
          v57 = v139;
          if (v63 != 1)
          {
            goto LABEL_97;
          }

          sub_1C6E6EC28(v61, &qword_1EC1F8338, &qword_1C6EEC760);
          v43 = v156;
          v46 = v143;
        }

        else
        {
          v64 = v134;
          sub_1C6E6EBC0(v61, v134, &qword_1EC1F8338, &qword_1C6EEC760);
          if (v62(v61 + v59, 1, v141) == 1)
          {
            sub_1C6E6B094(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
            v57 = v139;
            v44 = v152;
LABEL_97:
            sub_1C6E6EC28(v61, &qword_1EC1F8340, &qword_1C6EEC768);
            goto LABEL_98;
          }

          v65 = v61 + v59;
          v66 = v129;
          sub_1C6E6B02C(v65, v129, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          v44 = v152;
          if (*v64 != *v66 || (*(v64 + 1) != *(v129 + 1) || *(v64 + 2) != *(v129 + 2)) && (sub_1C6EE54B0() & 1) == 0)
          {
            sub_1C6E6B094(v129, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
            sub_1C6E6B094(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
            sub_1C6E6EC28(v130, &qword_1EC1F8338, &qword_1C6EEC760);
            v57 = v139;
LABEL_98:
            v43 = v156;
            v46 = v143;
LABEL_99:
            sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
            sub_1C6E6B094(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
            v125 = &qword_1EC1F8348;
            v126 = &qword_1C6EEC770;
            v55 = v142;
LABEL_100:
            sub_1C6E6EC28(v55, v125, v126);
LABEL_101:
            sub_1C6E6B094(v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
            sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
            v122 = &qword_1EC1F8358;
            v123 = &qword_1C6EEC780;
LABEL_102:
            v124 = v25;
            goto LABEL_103;
          }

          v67 = v64;
          sub_1C6EE4430();
          sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v68 = v129;
          v69 = sub_1C6EE4A50();
          sub_1C6E6B094(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          v70 = v67;
          v25 = v138;
          sub_1C6E6B094(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          sub_1C6E6EC28(v130, &qword_1EC1F8338, &qword_1C6EEC760);
          v57 = v139;
          v43 = v156;
          v46 = v143;
          if ((v69 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v71 = sub_1C6EE4A50();
        sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
        sub_1C6E6B094(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
        sub_1C6E6EC28(v142, &qword_1EC1F8348, &qword_1C6EEC770);
        if ((v71 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v72 = v155;
      v73 = sub_1C6EE4A50();
      sub_1C6E6B094(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      sub_1C6E6EC28(v25, &qword_1EC1F8358, &qword_1C6EEC780);
      if ((v73 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    v144 = v31;
    v74 = *(v157 + 24);
    v75 = *(v149 + 48);
    v76 = v43;
    v77 = v43 + v74;
    v78 = v159;
    sub_1C6E6EBC0(v77, v159, &qword_1EC1F8328, &unk_1C6EEC750);
    sub_1C6E6EBC0(v158 + v74, v78 + v75, &qword_1EC1F8328, &unk_1C6EEC750);
    v79 = *v135;
    v80 = v78;
    v81 = v153;
    if ((*v135)(v80, 1, v153) != 1)
    {
      break;
    }

    v82 = v79(v159 + v75, 1, v81);
    v43 = v76;
    if (v82 != 1)
    {
      goto LABEL_92;
    }

    sub_1C6E6EC28(v159, &qword_1EC1F8328, &unk_1C6EEC750);
    v83 = v144;
LABEL_84:
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v119 = v158;
    v120 = sub_1C6EE4A50();
    v121 = v119;
    v30 = v156;
    sub_1C6E6B094(v121, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    sub_1C6E6B094(v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    if (v120)
    {
      v34 = v147 + v133;
      v33 = v148 + v133;
      v31 = v83 - 1;
      if (v31)
      {
        continue;
      }
    }

    return v120 & 1;
  }

  v84 = v159;
  v85 = v146;
  sub_1C6E6EBC0(v159, v146, &qword_1EC1F8328, &unk_1C6EEC750);
  if (v79(v84 + v75, 1, v81) != 1)
  {
    v86 = v159 + v75;
    v87 = v145;
    sub_1C6E6B02C(v86, v145, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v88 = *v85;
    v89 = v85[1];
    v90 = *v87;
    v91 = *(v87 + 8);
    v92 = v89 >> 62;
    v93 = v91 >> 62;
    v43 = v76;
    if (v89 >> 62 == 3)
    {
      v94 = 0;
      v83 = v144;
      if (!v88 && v89 == 0xC000000000000000 && v91 >> 62 == 3)
      {
        v94 = 0;
        if (!v90 && v91 == 0xC000000000000000)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v83 = v144;
      if (v92 <= 1)
      {
        if (v92)
        {
          LODWORD(v94) = HIDWORD(v88) - v88;
          if (__OFSUB__(HIDWORD(v88), v88))
          {
            goto LABEL_109;
          }

          v94 = v94;
          if (v93 <= 1)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v94 = BYTE6(v89);
          if (v93 <= 1)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_43;
      }

      if (v92 != 2)
      {
        v94 = 0;
        if (v93 <= 1)
        {
LABEL_50:
          if (v93)
          {
            LODWORD(v98) = HIDWORD(v90) - v90;
            if (__OFSUB__(HIDWORD(v90), v90))
            {
              goto LABEL_107;
            }

            v98 = v98;
          }

          else
          {
            v98 = BYTE6(v91);
          }

          goto LABEL_56;
        }

LABEL_43:
        if (v93 != 2)
        {
          if (v94)
          {
            goto LABEL_88;
          }

          goto LABEL_83;
        }

        v96 = *(v90 + 16);
        v95 = *(v90 + 24);
        v97 = __OFSUB__(v95, v96);
        v98 = v95 - v96;
        if (v97)
        {
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
        }

LABEL_56:
        if (v94 != v98)
        {
          goto LABEL_88;
        }

        if (v94 < 1)
        {
          goto LABEL_83;
        }

        if (v92 > 1)
        {
          if (v92 != 2)
          {
            memset(v161, 0, 14);
            sub_1C6E00D18(v90, v91);
LABEL_75:
            v111 = v131;
            sub_1C6E6B0F4(v161, v90, v91, &v160);
            v131 = v111;
            sub_1C6DF1134(v90, v91);
            if (!v160)
            {
              goto LABEL_88;
            }

LABEL_83:
            sub_1C6EE4430();
            sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v114 = v145;
            v115 = v146;
            v116 = sub_1C6EE4A50();
            v117 = v114;
            v43 = v156;
            v118 = v159;
            v25 = v138;
            sub_1C6E6B094(v117, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            sub_1C6E6B094(v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            sub_1C6E6EC28(v118, &qword_1EC1F8328, &unk_1C6EEC750);
            if ((v116 & 1) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_84;
          }

          v101 = *(v88 + 16);
          v144 = *(v88 + 24);
          sub_1C6E00D18(v90, v91);
          v102 = sub_1C6EE3F90();
          if (v102)
          {
            v103 = v102;
            v104 = sub_1C6EE3FC0();
            if (__OFSUB__(v101, v104))
            {
              goto LABEL_112;
            }

            v105 = v101 - v104 + v103;
          }

          else
          {
            v105 = 0;
          }

          if (__OFSUB__(v144, v101))
          {
            goto LABEL_111;
          }

          sub_1C6EE3FB0();
          v112 = v105;
        }

        else
        {
          if (!v92)
          {
            v161[0] = v88;
            LOWORD(v161[1]) = v89;
            BYTE2(v161[1]) = BYTE2(v89);
            BYTE3(v161[1]) = BYTE3(v89);
            BYTE4(v161[1]) = BYTE4(v89);
            BYTE5(v161[1]) = BYTE5(v89);
            sub_1C6E00D18(v90, v91);
            goto LABEL_75;
          }

          v106 = v88;
          if (v88 >> 32 < v88)
          {
            goto LABEL_110;
          }

          sub_1C6E00D18(*v87, *(v87 + 8));
          v107 = sub_1C6EE3F90();
          if (v107)
          {
            v108 = v107;
            v109 = sub_1C6EE3FC0();
            if (__OFSUB__(v106, v109))
            {
              goto LABEL_113;
            }

            v110 = v106 - v109 + v108;
          }

          else
          {
            v110 = 0;
          }

          sub_1C6EE3FB0();
          v112 = v110;
        }

        v113 = v131;
        sub_1C6E6B0F4(v112, v90, v91, v161);
        v131 = v113;
        sub_1C6DF1134(v90, v91);
        if ((v161[0] & 1) == 0)
        {
LABEL_88:
          sub_1C6E6B094(v145, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6E6B094(v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v122 = &qword_1EC1F8328;
          v123 = &unk_1C6EEC750;
          v124 = v159;
          goto LABEL_103;
        }

        goto LABEL_83;
      }

      v100 = *(v88 + 16);
      v99 = *(v88 + 24);
      v97 = __OFSUB__(v99, v100);
      v94 = v99 - v100;
      if (v97)
      {
        goto LABEL_108;
      }
    }

    if (v93 <= 1)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  sub_1C6E6B094(v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v43 = v76;
LABEL_92:
  v122 = &qword_1EC1F8330;
  v123 = &unk_1C6EF6170;
  v124 = v159;
LABEL_103:
  sub_1C6E6EC28(v124, v122, v123);
LABEL_104:
  sub_1C6E6B094(v158, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
  sub_1C6E6B094(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
LABEL_105:
  v120 = 0;
  return v120 & 1;
}

uint64_t sub_1C6E5E85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
      return v18 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C6E6EB04(v13, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      sub_1C6E6EB04(v14, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      v16 = *v10;
      v17 = *v7;
      if (v7[8] == 1)
      {
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (v16 != 2)
            {
              break;
            }
          }

          else if (v16 != 3)
          {
            break;
          }
        }

        else if (v17)
        {
          if (v16 != 1)
          {
            break;
          }
        }

        else if (v16)
        {
          break;
        }
      }

      else if (v16 != v17)
      {
        break;
      }

      if ((v10[2] != *(v7 + 2) || v10[3] != *(v7 + 3)) && (sub_1C6EE54B0() & 1) == 0 || (v10[4] != *(v7 + 4) || v10[5] != *(v7 + 5)) && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1C6EE4A50();
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C6E5EB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v26 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = sub_1C6E6EB04(v14 + v16 * v12, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    if (v12 == v11)
    {
      break;
    }

    sub_1C6E6EB04(v15 + v16 * v12, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    result = *v10;
    v18 = *v10 == *v7 && v10[1] == v7[1];
    if (!v18 && (result = sub_1C6EE54B0(), (result & 1) == 0) || (v19 = v10[2], v20 = v7[2], v21 = *(v19 + 16), v21 != *(v20 + 16)))
    {
LABEL_24:
      sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
      sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
      goto LABEL_25;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v19 + 32);
      v24 = (v20 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_24;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      break;
    }

LABEL_20:
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v25 = sub_1C6EE4A50();
    sub_1C6E6B094(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    sub_1C6E6B094(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    if ((v25 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5EE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a3(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v15 = (&v29 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_30:
    v28 = 0;
    return v28 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v17 = 0;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v30 = a2 + v18;
  v31 = *(v13 + 72);
  v32 = a1 + v18;
  while (1)
  {
    v19 = v31 * v17;
    result = sub_1C6E6EB04(v32 + v31 * v17, v15, a4);
    if (v17 == v16)
    {
      break;
    }

    sub_1C6E6EB04(v30 + v19, v12, a4);
    v21 = *v15 == *v12 && v15[1] == v12[1];
    if (!v21 && (sub_1C6EE54B0() & 1) == 0 || (v15[2] != v12[2] || v15[3] != v12[3]) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_29;
    }

    v22 = v15[4];
    v23 = v12[4];
    v24 = *(v22 + 16);
    if (v24 != *(v23 + 16))
    {
      goto LABEL_29;
    }

    if (v24 && v22 != v23)
    {
      v25 = (v22 + 40);
      v26 = (v23 + 40);
      while (1)
      {
        v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
        if (!v27 && (sub_1C6EE54B0() & 1) == 0)
        {
          break;
        }

        v25 += 2;
        v26 += 2;
        if (!--v24)
        {
          goto LABEL_25;
        }
      }

LABEL_29:
      sub_1C6E6B094(v12, a5);
      sub_1C6E6B094(v15, a5);
      goto LABEL_30;
    }

LABEL_25:
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v28 = sub_1C6EE4A50();
    sub_1C6E6B094(v12, a5);
    sub_1C6E6B094(v15, a5);
    if ((v28 & 1) != 0 && ++v17 != v16)
    {
      continue;
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}