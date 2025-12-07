uint64_t sub_266A2A8B4()
{
  v1 = *v0;
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](v1);
  return sub_266A468D0();
}

uint64_t sub_266A2A928(uint64_t a1)
{
  v2 = *v1;
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](v2);
  return sub_266A468D0();
}

uint64_t sub_266A2A96C()
{
  v1 = *v0;
  v2 = 0x6F69736E656D6964;
  v3 = 0x6552726573557369;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x54746E6572727563;
  if (v1 != 1)
  {
    v5 = 0x6E7275547478656ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266A2AA50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266A2BCE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266A2AA90(uint64_t a1)
{
  v2 = sub_266A2AEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A2AACC(uint64_t a1)
{
  v2 = sub_266A2AEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProcessedSiriTurn.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9A0, &qword_266A46E30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A2AEE4();
  sub_266A46900();
  v8 = v2[2];
  v9 = *v2;
  v30 = v2[1];
  v31 = v8;
  v10 = v2[2];
  v11 = v2[4];
  v32 = v2[3];
  v33 = v11;
  v12 = *v2;
  v26 = v10;
  v27 = v32;
  v28 = v2[4];
  v29 = v12;
  v24 = v9;
  v25 = v30;
  v23 = 0;
  sub_266A2AF38(&v29, &v18);
  sub_266A2AF94();
  v13 = v34;
  sub_266A46810();
  if (v13)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v18 = v24;
    v19 = v25;
    sub_266A2AFE8(&v18);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v34 = v5;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v18 = v24;
    v19 = v25;
    sub_266A2AFE8(&v18);
    type metadata accessor for ProcessedSiriTurn(0);
    v17 = 1;
    sub_266A46040();
    sub_266A2C934(&qword_2800AE9B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_266A467F0();
    v17 = 2;
    sub_266A467F0();
    v17 = 3;
    sub_266A467D0();
    v15 = v34;
    v17 = 4;
    sub_266A467E0();
    v17 = 5;
    sub_266A467E0();
    return (*(v15 + 8))(v7, 0);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266A2AEE4()
{
  result = qword_2800AE9A8;
  if (!qword_2800AE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9A8);
  }

  return result;
}

unint64_t sub_266A2AF94()
{
  result = qword_2800AE9B0;
  if (!qword_2800AE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9B0);
  }

  return result;
}

uint64_t type metadata accessor for ProcessedSiriTurn(uint64_t a1)
{
  result = qword_2800AEA08;
  if (!qword_2800AEA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProcessedSiriTurn.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C8, &qword_266A46E40);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ProcessedSiriTurn(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_266A2AEE4();
  v34 = v12;
  sub_266A468F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v30 = v7;
  v17 = v32;
  v42 = 0;
  sub_266A2B610();
  sub_266A467B0();
  v18 = v39;
  v15[2] = v38;
  v15[3] = v18;
  v15[4] = v40;
  v19 = v37;
  *v15 = v36;
  v15[1] = v19;
  sub_266A46040();
  v41 = 1;
  sub_266A2C934(&qword_2800AE9D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_266A46790();
  v20 = v13;
  sub_266A2B664(v9, v15 + *(v13 + 20));
  v41 = 2;
  v21 = v30;
  sub_266A46790();
  sub_266A2B664(v21, v15 + v20[6]);
  v41 = 3;
  *(v15 + v20[7]) = sub_266A46770();
  v41 = 4;
  v22 = sub_266A46780();
  v23 = v15 + v20[8];
  *v23 = v22;
  v23[8] = v24 & 1;
  v41 = 5;
  v25 = sub_266A46780();
  v27 = v26;
  (*(v17 + 8))(v34, v33);
  v28 = v15 + v20[9];
  *v28 = v25;
  v28[8] = v27 & 1;
  sub_266A2B6D4(v15, v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_266A2B738(v15);
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

uint64_t sub_266A2B5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266A2B610()
{
  result = qword_2800AE9D0;
  if (!qword_2800AE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9D0);
  }

  return result;
}

uint64_t sub_266A2B664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A2B6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessedSiriTurn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A2B738(uint64_t a1)
{
  v2 = type metadata accessor for ProcessedSiriTurn(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266A2B7CC()
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](0);
  return sub_266A468D0();
}

uint64_t sub_266A2B838(uint64_t a1)
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](0);
  return sub_266A468D0();
}

uint64_t sub_266A2B89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65737365636F7270 && a2 == 0xEE00736E72755464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_266A46840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_266A2B938(uint64_t a1)
{
  v2 = sub_266A2BB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A2B974(uint64_t a1)
{
  v2 = sub_266A2BB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProcessedSiriConversation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9E0, &qword_266A46E48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A2BB44();
  sub_266A46900();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9F0, &qword_266A46E50);
  sub_266A2C898(&qword_2800AE9F8, &qword_2800AEA00, &protocol conformance descriptor for ProcessedSiriTurn, MEMORY[0x277D83948]);
  sub_266A46810();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_266A2BB44()
{
  result = qword_2800AE9E8;
  if (!qword_2800AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9E8);
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

void *sub_266A2BBF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_266A2BF08(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_266A2BCE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL || (sub_266A46840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E6572727563 && a2 == 0xED000064496E7275 || (sub_266A46840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7275547478656ELL && a2 == 0xEA00000000006449 || (sub_266A46840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552726573557369 && a2 == 0xED00007473657571 || (sub_266A46840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000266A48AE0 == a2 || (sub_266A46840() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000266A48B00 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_266A46840();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_266A2BF08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEA68, &qword_266A471B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A2BB44();
  sub_266A468F0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9F0, &qword_266A46E50);
    sub_266A2C898(&qword_2800AEA70, &qword_2800AEA78, &protocol conformance descriptor for ProcessedSiriTurn, MEMORY[0x277D83978]);
    sub_266A467B0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_266A2C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_266A2C1A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_266A2C258(uint64_t a1)
{
  sub_266A2C34C(319);
  if (v1 <= 0x3F)
  {
    sub_266A2C3DC(319, &qword_2800AEA20, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_266A2C3DC(319, &qword_2800AEA28, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266A2C34C(uint64_t a1)
{
  if (!qword_2800AEA18)
  {
    sub_266A46040();
    v1 = sub_266A466A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2800AEA18);
    }
  }
}

void sub_266A2C3DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ProcessedSiriConversation.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ProcessedSiriConversation.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ProcessedSiriTurn.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessedSiriTurn.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266A2C68C()
{
  result = qword_2800AEA38;
  if (!qword_2800AEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA38);
  }

  return result;
}

unint64_t sub_266A2C6E4()
{
  result = qword_2800AEA40;
  if (!qword_2800AEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA40);
  }

  return result;
}

unint64_t sub_266A2C73C()
{
  result = qword_2800AEA48;
  if (!qword_2800AEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA48);
  }

  return result;
}

unint64_t sub_266A2C794()
{
  result = qword_2800AEA50;
  if (!qword_2800AEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA50);
  }

  return result;
}

unint64_t sub_266A2C7EC()
{
  result = qword_2800AEA58;
  if (!qword_2800AEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA58);
  }

  return result;
}

unint64_t sub_266A2C844()
{
  result = qword_2800AEA60;
  if (!qword_2800AEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA60);
  }

  return result;
}

uint64_t sub_266A2C898(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AE9F0, &qword_266A46E50);
    sub_266A2C934(a2, type metadata accessor for ProcessedSiriTurn, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A2C934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriCoreMetricsResultsV2.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriCoreMetricsResultsV2.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriCoreMetricsCalculatorV2.__allocating_init(logger:bookmarkService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService) = a2;
  return v4;
}

uint64_t SiriCoreMetricsCalculatorV2.init(logger:bookmarkService:)(uint64_t a1, uint64_t a2)
{
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService) = a2;
  return v2;
}

uint64_t SiriCoreMetricsCalculatorV2.doWork(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_266A45FF0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v2[8] = swift_task_alloc();
  v4 = sub_266A46040();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEA98, &qword_266A471D0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A2CD54, 0, 0);
}

void sub_266A2CD54()
{
  v75 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAA0, &qword_266A471D8);
  v1 = sub_266A46110();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {

    v51 = MEMORY[0x277D84FA0];
LABEL_32:

    v52 = sub_266A464F0();
    v53 = sub_266A46680();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = *(v51 + 16);

      _os_log_impl(&dword_266A29000, v52, v53, "marker: read %ld Siri turns in this run", v54, 0xCu);
      MEMORY[0x26D5E7060](v54, -1, -1);
    }

    else
    {
    }

    sub_266A46230();
    if (v55)
    {
      v56 = v0[5];
      v57 = v0[6];
      v58 = v0[4];
      sub_266A46170();
      sub_266A45FA0();
      (*(v56 + 8))(v57, v58);
    }

    v59 = v0[7];
    v60 = v0[5];
    v61 = v0[4];
    sub_266A45F90();
    v62 = sub_266A46130();
    (*(v60 + 8))(v59, v61);

    v63 = v0[1];
    v64 = MEMORY[0x277D84F90];

    v63(v62, v64, v51);
    return;
  }

  v4 = 0;
  v5 = v0[15];
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = v0[10];
  v69 = (v7 + 48);
  v70 = *(v1 + 16);
  v66 = (v7 + 16);
  v67 = (v7 + 32);
  v65 = (v7 + 8);
  v8 = &off_279BD9000;
  v74 = v6;
  v71 = v1;
  while (v4 < *(v2 + 16))
  {
    v9 = v0[16];
    v10 = v0[14];
    (*(v5 + 16))(v9, v6 + *(v5 + 72) * v4, v10);
    v11 = sub_266A460F0();
    (*(v5 + 8))(v9, v10);
    v12 = [v11 eventData];

    if (v12)
    {
      v13 = sub_266A45F80();
      v15 = v14;

      v12 = sub_266A45F70();
      sub_266A2D8B8(v13, v15);
    }

    v16 = [objc_allocWithZone(MEMORY[0x277D5A790]) v8[109]];

    if (!v16)
    {
      goto LABEL_41;
    }

    if ([v16 anyEventType] == 6)
    {
      v17 = [v16 payload];
      if (v17)
      {
        v18 = v17;
        v19 = sub_266A45F80();
        v21 = v20;

        v22 = sub_266A45F70();
        v23 = v19;
        v8 = &off_279BD9000;
        v24 = v21;
        v6 = v74;
        sub_266A2D8B8(v23, v24);
      }

      else
      {
        v22 = 0;
      }

      v25 = [objc_allocWithZone(MEMORY[0x277D5A978]) v8[109]];

      if (v25)
      {
        v26 = [v25 event];
        if (v26)
        {
          v27 = v26;

          v16 = v27;
        }
      }
    }

    if ([v16 anyEventType] == 1)
    {
      v28 = [v16 payload];
      if (v28)
      {
        v29 = v28;
        v30 = sub_266A45F80();
        v32 = v31;

        v33 = sub_266A45F70();
        v34 = v32;
        v8 = &off_279BD9000;
        sub_266A2D8B8(v30, v34);
      }

      else
      {
        v33 = 0;
      }

      v35 = [objc_allocWithZone(MEMORY[0x277D5A800]) v8[109]];

      if (v35)
      {
        v36 = [v35 eventMetadata];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 turnID];

          if (v38)
          {
            v39 = v0[8];
            v72 = v0[9];
            v40 = sub_266A45F80();
            v42 = v41;

            v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            sub_266A2D864(v40, v42);
            v44 = sub_266A45F70();
            v45 = [v43 initWithBytesAsData_];

            sub_266A2D8B8(v40, v42);
            sub_266A46660();

            if ((*v69)(v39, 1, v72) == 1)
            {
              v46 = v0[8];

              sub_266A2D8B8(v40, v42);
              sub_266A2B5A8(v46);
            }

            else
            {
              v47 = v0[13];
              v73 = v47;
              v48 = v0[11];
              v68 = v0[12];
              v49 = v0[9];
              (*v67)(v47, v0[8], v49);
              (*v66)(v48, v47, v49);
              sub_266A2D90C(v68, v48);

              sub_266A2D8B8(v40, v42);
              v50 = *v65;
              (*v65)(v68, v49);
              v50(v73, v49);
            }

            v3 = v70;
            v2 = v71;
            v6 = v74;
            v8 = &off_279BD9000;
          }

          else
          {

            v8 = &off_279BD9000;
          }

          goto LABEL_5;
        }
      }
    }

LABEL_5:
    if (v3 == ++v4)
    {

      v51 = v75;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t SiriCoreMetricsCalculatorV2.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SiriCoreMetricsCalculatorV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_266A2D5F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_266A2D694;

  return SiriCoreMetricsCalculatorV2.doWork(_:)(a2);
}

uint64_t sub_266A2D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_266A2D7B8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_266A2D804@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_266A2D834(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_266A2D854(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_266A2D864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_266A2D8B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_266A2D90C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_266A46040();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_266A2DE5C(&qword_2800AEAC8, MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_266A46540();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_266A2DE5C(&qword_2800AEAD0, MEMORY[0x277CC9610]);
      v21 = sub_266A46560();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_266A2E1E8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

unint64_t sub_266A2DBC4()
{
  result = qword_2800AEAA8;
  if (!qword_2800AEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEAA8);
  }

  return result;
}

unint64_t sub_266A2DC1C()
{
  result = qword_2800AEAB0;
  if (!qword_2800AEAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AEAA0, &qword_266A471D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEAB0);
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

uint64_t sub_266A2DC98(uint64_t *a1, int a2)
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

uint64_t sub_266A2DCE0(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for SiriCoreMetricsCalculatorV2(uint64_t a1)
{
  result = qword_2800AEAB8;
  if (!qword_2800AEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A2DD84(uint64_t a1)
{
  result = sub_266A46510();
  if (v2 <= 0x3F)
  {
    result = sub_266A460E0();
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

uint64_t sub_266A2DE5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_266A46040();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A2DEA0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_266A46040();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAD8, &qword_266A47310);
  result = sub_266A466D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_266A2DE5C(&qword_2800AEAC8, MEMORY[0x277CC9600]);
      result = sub_266A46540();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_266A2E1E8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_266A46040();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_266A2DEA0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_266A2E464();
      goto LABEL_12;
    }

    sub_266A2E69C(v10 + 1);
  }

  v12 = *v3;
  sub_266A2DE5C(&qword_2800AEAC8, MEMORY[0x277CC9600]);
  v13 = sub_266A46540();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_266A2DE5C(&qword_2800AEAD0, MEMORY[0x277CC9610]);
      v21 = sub_266A46560();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_266A46850();
  __break(1u);
  return result;
}

void *sub_266A2E464()
{
  v1 = v0;
  v2 = sub_266A46040();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAD8, &qword_266A47310);
  v6 = *v0;
  v7 = sub_266A466C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_266A2E69C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_266A46040();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAD8, &qword_266A47310);
  v7 = sub_266A466D0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_266A2DE5C(&qword_2800AEAC8, MEMORY[0x277CC9600]);
      result = sub_266A46540();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t SiriCoreMetricsCalculator.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v4 = sub_266A460E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriCoreMetricsCalculator.__allocating_init(logger:conversationTurnType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t SiriCoreMetricsCalculator.init(logger:conversationTurnType:)(uint64_t a1, uint64_t a2)
{
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t SiriCoreMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_266A461E0();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v5 = type metadata accessor for SiriCountsAll(0);
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v6 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAE8, &qword_266A47338);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAF0, &qword_266A47340);
  v3[47] = swift_task_alloc();
  v7 = type metadata accessor for ProcessedSiriTurn(0);
  v3[48] = v7;
  v3[49] = *(v7 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v8 = sub_266A45FF0();
  v3[52] = v8;
  v3[53] = *(v8 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A2EE44, 0, 0);
}

void (*sub_266A2EE44())(void)
{
  v248 = v0;
  v1 = objc_allocWithZone(sub_266A464D0());
  v202 = sub_266A464C0();
  v2 = sub_266A46290();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_266A37478(MEMORY[0x277D84F90]);
  v225 = sub_266A37478(v3);
  v244 = sub_266A37574(v3);
  v5 = sub_266A37758(v3);
  v6 = v2;
  v206 = v5;
  v245 = v3;
  v203 = v2;
  if (v2 >> 62)
  {
    goto LABEL_176;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v219 = v0;
  v204 = result;
  if (!result)
  {
LABEL_55:
    sub_266A46450();

    if (v204)
    {
      v60 = 0;
      v61 = *(v0 + 256);
      v223 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
      v238 = (*(v0 + 424) + 8);
      v210 = *(v0 + 392);
      v213 = MEMORY[0x277D84F90];
      v226 = v61;
      do
      {
        if ((v203 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5E6A00](v60, v203);
          v32 = __OFADD__(v60, 1);
          v62 = (v60 + 1);
          if (v32)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (v60 >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_174;
          }

          v32 = __OFADD__(v60, 1);
          v62 = (v60 + 1);
          if (v32)
          {
            goto LABEL_169;
          }
        }

        v205 = v62;
        v63 = sub_266A46420();
        v64 = v63;
        if (v63 >> 62)
        {
          v65 = sub_266A46730();
          if (v65)
          {
LABEL_65:
            v66 = 0;
            v242 = v64 & 0xC000000000000001;
            v217 = v64 & 0xFFFFFFFFFFFFFF8;
            v221 = MEMORY[0x277D84F90];
            v228 = v64;
            v232 = v65;
            while (1)
            {
              if (v242)
              {
                MEMORY[0x26D5E6A00](v66, v64);
                v74 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_159;
                }
              }

              else
              {
                if (v66 >= *(v217 + 16))
                {
                  goto LABEL_160;
                }

                v74 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
LABEL_165:
                  __break(1u);
LABEL_166:
                  __break(1u);
LABEL_167:
                  __break(1u);
LABEL_168:
                  __break(1u);
LABEL_169:
                  __break(1u);
LABEL_170:
                  __break(1u);
LABEL_171:
                  __break(1u);
LABEL_172:
                  __break(1u);
LABEL_173:
                  __break(1u);
LABEL_174:
                  __break(1u);
LABEL_175:
                  __break(1u);
LABEL_176:
                  result = sub_266A46730();
                  v6 = v203;
                  goto LABEL_3;
                }
              }

              if (sub_266A46480())
              {
                v76 = *(v0 + 440);
                v75 = *(v0 + 448);
                v77 = *(v0 + 416);
                sub_266A464A0();
                sub_266A45F90();
                sub_266A45FB0();
                v235 = *v238;
                (*v238)(v76, v77);
                if (MEMORY[0x26D5E6400](v75, v61 + v223))
                {
                  v78 = sub_266A464F0();
                  v79 = sub_266A46670();
                  v80 = os_log_type_enabled(v78, v79);
                  v4 = *(v0 + 448);
                  v81 = *(v0 + 416);
                  v65 = v232;
                  if (v80)
                  {
                    v82 = swift_slowAlloc();
                    *v82 = 0;
                    _os_log_impl(&dword_266A29000, v78, v79, "Skipping turns that happen today or in the future.", v82, 2u);
                    MEMORY[0x26D5E7060](v82, -1, -1);
                  }

                  else
                  {
                  }

                  v235(v4, v81);
                  v61 = v226;
                  v64 = v228;
                }

                else
                {
                  v85 = *(v0 + 376);
                  v84 = *(v0 + 384);
                  SiriCoreMetricsCalculator.processTurn(turn:turnIdToConvIdx:counts:)(v225, &v244, v85);
                  v65 = v232;
                  if ((*(v210 + 48))(v85, 1, v84) == 1)
                  {
                    sub_266A38274(*(v0 + 376), &qword_2800AEAF0, &qword_266A47340);

                    v4 = sub_266A464F0();
                    v86 = sub_266A46690();

                    v87 = os_log_type_enabled(v4, v86);
                    v88 = *(v0 + 448);
                    v89 = *(v0 + 416);
                    if (v87)
                    {
                      v207 = *(v0 + 416);
                      v90 = swift_slowAlloc();
                      v91 = swift_slowAlloc();
                      v247[0] = v91;
                      *v90 = 136315138;
                      v92 = sub_266A46490();
                      v94 = sub_266A333F0(v92, v93, v247);

                      *(v90 + 4) = v94;
                      v61 = v226;
                      _os_log_impl(&dword_266A29000, v4, v86, "    Could not create processed turn struct from featurizd turn:\n    %s", v90, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v91);
                      v95 = v91;
                      v0 = v219;
                      MEMORY[0x26D5E7060](v95, -1, -1);
                      MEMORY[0x26D5E7060](v90, -1, -1);

                      v96 = v88;
                      v97 = v207;
                    }

                    else
                    {

                      v96 = v88;
                      v97 = v89;
                    }

                    v235(v96, v97);
                    v64 = v228;
                  }

                  else
                  {
                    v99 = *(v0 + 400);
                    v98 = *(v0 + 408);
                    sub_266A37B38(*(v0 + 376), v98, type metadata accessor for ProcessedSiriTurn);
                    sub_266A37BA0(v98, v99, type metadata accessor for ProcessedSiriTurn);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v221 = sub_266A33190(0, v221[2] + 1, 1, v221, &qword_2800AEB98, &qword_266A47460, type metadata accessor for ProcessedSiriTurn);
                    }

                    v101 = v221[2];
                    v100 = v221[3];
                    if (v101 >= v100 >> 1)
                    {
                      v221 = sub_266A33190((v100 > 1), v101 + 1, 1, v221, &qword_2800AEB98, &qword_266A47460, type metadata accessor for ProcessedSiriTurn);
                    }

                    v0 = v219;
                    v4 = v219[56];
                    v103 = v219[51];
                    v102 = v219[52];
                    v104 = v219[50];

                    sub_266A37C08(v103, type metadata accessor for ProcessedSiriTurn);
                    v235(v4, v102);
                    v221[2] = v101 + 1;
                    sub_266A37B38(v104, v221 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v101, type metadata accessor for ProcessedSiriTurn);
                    v61 = v226;
                    v64 = v228;
                    v65 = v232;
                  }
                }
              }

              else
              {

                v4 = sub_266A464F0();
                v83 = sub_266A46690();

                if (os_log_type_enabled(v4, v83))
                {
                  v67 = swift_slowAlloc();
                  v68 = swift_slowAlloc();
                  v247[0] = v68;
                  *v67 = 136315138;
                  v69 = sub_266A46490();
                  v71 = sub_266A333F0(v69, v70, v247);

                  *(v67 + 4) = v71;
                  v64 = v228;
                  _os_log_impl(&dword_266A29000, v4, v83, "Turn: %s has an invalid timestamp", v67, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v68);
                  v72 = v68;
                  v65 = v232;
                  MEMORY[0x26D5E7060](v72, -1, -1);
                  v73 = v67;
                  v61 = v226;
                  MEMORY[0x26D5E7060](v73, -1, -1);
                }

                else
                {
                }
              }

              ++v66;
              if (v74 == v65)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else
        {
          v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v65)
          {
            goto LABEL_65;
          }
        }

        v221 = MEMORY[0x277D84F90];
LABEL_94:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v213 = sub_266A33084(0, *(v213 + 2) + 1, 1, v213);
        }

        v106 = *(v213 + 2);
        v105 = *(v213 + 3);
        if (v106 >= v105 >> 1)
        {
          v213 = sub_266A33084((v105 > 1), v106 + 1, 1, v213);
        }

        *(v213 + 2) = v106 + 1;
        *&v213[8 * v106 + 32] = v221;
        v60 = v205;
      }

      while (v205 != v204);
    }

    else
    {
      v213 = MEMORY[0x277D84F90];
    }

    v227 = (v0 + 176);
    v215 = (v0 + 208);
    v218 = *(v0 + 336);
    v230 = *(v0 + 328);
    v224 = *(v0 + 312);
    v229 = *(v0 + 304);
    v107 = *(v0 + 272);

    sub_266A46170();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAF8, &qword_266A47348);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_266A47320;
    *(v108 + 32) = sub_266A46270();
    v208 = sub_266A46120();

    v109 = sub_266A37940(MEMORY[0x277D84F90]);
    v4 = 0;
    v111 = v244 + 64;
    v110 = *(v244 + 64);
    v112 = -1;
    v222 = v244;
    v113 = -1 << *(v244 + 32);
    v246 = v109;
    if (-v113 < 64)
    {
      v112 = ~(-1 << -v113);
    }

    v114 = v112 & v110;
    v115 = (63 - v113) >> 6;
    v239 = (v107 + 16);
    v216 = v107;
    v233 = (v107 + 8);
    v225 = v244 + 64;
    v211 = v115;
    v236 = 0;
    if ((v112 & v110) == 0)
    {
LABEL_105:
      if (v115 <= &v4->isa + 1)
      {
        v117 = &v4->isa + 1;
      }

      else
      {
        v117 = v115;
      }

      v118 = (v117 - 1);
      while (1)
      {
        v116 = (&v4->isa + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_161;
        }

        if (v116 >= v115)
        {
          v187 = *(v0 + 360);
          v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB00, &unk_266A47350);
          (*(*(v188 - 8) + 56))(v187, 1, 1, v188);
          v114 = 0;
          v4 = v118;
          goto LABEL_114;
        }

        v114 = *(v111 + 8 * v116);
        v4 = (v4 + 1);
        if (v114)
        {
          v4 = v116;
          goto LABEL_113;
        }
      }
    }

    while (1)
    {
      v116 = v4;
LABEL_113:
      v121 = v0 + 352;
      v120 = *(v0 + 352);
      v119 = *(v121 + 8);
      v122 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
      v123 = v122 | (v116 << 6);
      sub_266A37BA0(*(v222 + 48) + *(v218 + 72) * v123, v120, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v124 = *(v222 + 56);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB00, &unk_266A47350);
      v126 = *(v125 + 48);
      v127 = *(v124 + 8 * v123);
      sub_266A37B38(v120, v119, type metadata accessor for SiriCoreMetricsAggregationKeys);
      *(v119 + v126) = v127;
      v0 = v219;
      (*(*(v125 - 8) + 56))(v119, 0, 1, v125);
LABEL_114:
      v128 = *(v0 + 368);
      sub_266A382D4(*(v0 + 360), v128, &qword_2800AEAE8, &qword_266A47338);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB00, &unk_266A47350);
      if ((*(*(v129 - 8) + 48))(v128, 1, v129) == 1)
      {
        v194 = *(v0 + 424);
        v193 = *(v0 + 432);
        v195 = *(v0 + 416);
        v196 = *(v0 + 248);
        v197 = *(v0 + 240);

        v198 = *(v196 + *(type metadata accessor for SiriCoreMetricsDataRecord(0) + 20));
        v199 = v246;
        v200 = SiriCoreMetricsCalculator.calculateTwoByThree(previousRequestCounts:totalCounts:)(v198, v246);

        (*(v194 + 8))(v193, v195);

        sub_266A37B28(v236, 0);

        *v197 = v213;
        v197[1] = v206;
        v197[2] = MEMORY[0x277D84F90];
        v197[3] = v208;
        v197[4] = v199;
        v197[5] = v200;
        v201 = *(v0 + 8);

        return v201();
      }

      v130 = *(v0 + 368);
      v131 = *(v0 + 344);
      v132 = *(v0 + 320);
      v133 = *(v0 + 264);
      v243 = *(v130 + *(v129 + 48));
      sub_266A37B38(v130, v131, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v134 = *v239;
      (*v239)(v132, v131, v133);
      v135 = (v131 + *(v230 + 20));
      v137 = v135[3];
      v136 = v135[4];
      v138 = v135[2];
      *(v0 + 32) = v135[1];
      *(v0 + 48) = v138;
      *(v0 + 64) = v137;
      *(v0 + 80) = v136;
      *(v0 + 16) = *v135;
      memmove((v132 + *(v229 + 20)), v135, 0x50uLL);
      *(v132 + *(v229 + 24)) = v243;
      sub_266A2AF38(v0 + 16, v0 + 96);
      sub_266A37B28(v236, 0);
      v139 = v206;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v247[0] = v206;
      v142 = sub_266A33B48(v131);
      v143 = *(v206 + 16);
      v144 = (v141 & 1) == 0;
      v145 = v143 + v144;
      if (__OFADD__(v143, v144))
      {
        goto LABEL_170;
      }

      v146 = v141;
      if (*(v206 + 24) >= v145)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v141)
          {
            goto LABEL_124;
          }
        }

        else
        {
          sub_266A36C64();
          v139 = v247[0];
          if (v146)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        v0 = v219[43];
        sub_266A347BC(v145, isUniquelyReferenced_nonNull_native);
        v139 = v247[0];
        v147 = sub_266A33B48(v0);
        if ((v146 & 1) != (v148 & 1))
        {
          goto LABEL_156;
        }

        v142 = v147;
        if (v146)
        {
          goto LABEL_124;
        }
      }

      v149 = v219[43];
      v150 = v219[33];
      v139[(v142 >> 6) + 8] |= 1 << v142;
      v134(v139[6] + *(v216 + 72) * v142, v149, v150);
      *(v139[7] + 8 * v142) = MEMORY[0x277D84F90];
      v151 = v139[2];
      v32 = __OFADD__(v151, 1);
      v152 = v151 + 1;
      if (v32)
      {
        goto LABEL_172;
      }

      v139[2] = v152;
LABEL_124:
      v206 = v139;
      v153 = v139[7];
      v154 = *(v153 + 8 * v142);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      *(v153 + 8 * v142) = v154;
      if ((v155 & 1) == 0)
      {
        v154 = sub_266A33190(0, v154[2] + 1, 1, v154, &qword_2800AEBB8, &qword_266A47480, type metadata accessor for SiriCountsAll);
        *(v153 + 8 * v142) = v154;
      }

      v157 = v154[2];
      v156 = v154[3];
      if (v157 >= v156 >> 1)
      {
        v154 = sub_266A33190((v156 > 1), v157 + 1, 1, v154, &qword_2800AEBB8, &qword_266A47480, type metadata accessor for SiriCountsAll);
        *(v153 + 8 * v142) = v154;
      }

      v158 = v219[40];
      v154[2] = v157 + 1;
      sub_266A37B38(v158, v154 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v157, type metadata accessor for SiriCountsAll);
      v159 = v246;
      if (v246[2] && (sub_266A33B48(v219[43]), (v160 & 1) != 0))
      {
        v134(v219[37], v219[43], v219[33]);
        result = sub_266A308D0(v227);
        if ((*(v161 + 8) & 1) == 0)
        {
          v162 = *(v161 + 4);
          v163 = __CFADD__(v162, HIDWORD(v243));
          v164 = v162 + HIDWORD(v243);
          if (v163)
          {
            goto LABEL_178;
          }

          *(v161 + 4) = v164;
        }

        (result)(v227, 0);
        v165 = v219[43];
        v166 = v219[36];
        v167 = v219[33];
        v168 = *v233;
        (*v233)(v219[37], v167);
        v134(v166, v165, v167);
        result = sub_266A308D0(v215);
        if (*(v169 + 8))
        {
          v170 = v219[43];
          v171 = v219[36];
          v172 = v219[33];
          result();
          v168(v171, v172);
          sub_266A37C08(v170, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v0 = v219;
          v111 = v225;
          v115 = v211;
        }

        else
        {
          if (__CFADD__(*v169, v243))
          {
            goto LABEL_179;
          }

          v189 = v219[43];
          v190 = v219[36];
          v191 = v219[33];
          *v169 += v243;
          result();
          v168(v190, v191);
          v0 = v219;
          sub_266A37C08(v189, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v111 = v225;
          v115 = v211;
        }
      }

      else
      {
        v0 = v219[35];
        v134(v0, v219[43], v219[33]);
        v173 = swift_isUniquelyReferenced_nonNull_native();
        v247[0] = v159;
        v174 = sub_266A33B48(v0);
        v176 = v159[2];
        v177 = (v175 & 1) == 0;
        v32 = __OFADD__(v176, v177);
        v178 = v176 + v177;
        if (v32)
        {
          goto LABEL_171;
        }

        v179 = v175;
        if (v159[3] >= v178)
        {
          if ((v173 & 1) == 0)
          {
            v192 = v174;
            sub_266A369F0();
            v174 = v192;
            v159 = v247[0];
          }
        }

        else
        {
          v180 = v219[35];
          sub_266A343F8(v178, v173);
          v159 = v247[0];
          v174 = sub_266A33B48(v180);
          if ((v179 & 1) != (v181 & 1))
          {
            goto LABEL_156;
          }
        }

        v182 = v219[43];
        v183 = v219[35];
        v184 = v219[33];
        if (v179)
        {
          *(v159[7] + 8 * v174) = v243;
          (*v233)(v183, v184);
          sub_266A37C08(v182, type metadata accessor for SiriCoreMetricsAggregationKeys);
        }

        else
        {
          v159[(v174 >> 6) + 8] |= 1 << v174;
          v0 = v174;
          v134(v159[6] + *(v216 + 72) * v174, v183, v184);
          *(v159[7] + 8 * v0) = v243;
          (*(v216 + 8))(v183, v184);
          sub_266A37C08(v182, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v185 = v159[2];
          v32 = __OFADD__(v185, 1);
          v186 = v185 + 1;
          if (v32)
          {
            goto LABEL_175;
          }

          v159[2] = v186;
        }

        v246 = v159;
        v0 = v219;
        v111 = v225;
      }

      v236 = sub_266A30774;
      if (!v114)
      {
        goto LABEL_105;
      }
    }
  }

  v8 = 0;
  v9 = 0;
  v209 = v6 & 0xFFFFFFFFFFFFFF8;
  v212 = v6 & 0xC000000000000001;
  while (v212)
  {
    MEMORY[0x26D5E6A00](v8);
    v10 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      goto LABEL_173;
    }

LABEL_12:
    v214 = v10;
    v11 = sub_266A46420();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_266A46730();
      if (!v13)
      {
        goto LABEL_5;
      }

LABEL_14:
      v14 = 0;
      v237 = v12 & 0xC000000000000001;
      v220 = v12 & 0xFFFFFFFFFFFFFF8;
      v231 = v12;
      v234 = v13;
      while (2)
      {
        if (v237)
        {
          MEMORY[0x26D5E6A00](v14, v12);
          v0 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v14 >= *(v220 + 16))
          {
            goto LABEL_166;
          }

          v0 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_162;
          }
        }

        v15 = sub_266A46480();

        if (v15)
        {
          v240 = v9;
          MEMORY[0x26D5E68F0](v16);
          if (*((v245 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v245 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_266A46610();
          }

          sub_266A46630();
          v17 = sub_266A46490();
          v19 = v18;
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v247[0] = v225;
          v22 = sub_266A33AD0(v17, v19);
          v23 = *(v225 + 16);
          v24 = (v21 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_163;
          }

          v26 = v21;
          if (*(v225 + 24) >= v25)
          {
            if (v20)
            {
              v13 = v234;
              if ((v21 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
              sub_266A36EE4();
              v13 = v234;
              if ((v26 & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            sub_266A34B98(v25, v20);
            v27 = sub_266A33AD0(v17, v19);
            if ((v26 & 1) != (v28 & 1))
            {
              goto LABEL_156;
            }

            v22 = v27;
            v13 = v234;
            if ((v26 & 1) == 0)
            {
LABEL_30:
              v29 = v247[0];
              *(v247[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
              v30 = (v29[6] + 16 * v22);
              *v30 = v17;
              v30[1] = v19;
              *(v29[7] + 8 * v22) = v8;
              v31 = v29[2];
              v32 = __OFADD__(v31, 1);
              v33 = v31 + 1;
              if (v32)
              {
                goto LABEL_167;
              }

              v225 = v29;
              v29[2] = v33;
LABEL_37:
              v43 = sub_266A46490();
              v45 = v44;
              v46 = swift_isUniquelyReferenced_nonNull_native();
              v247[0] = v4;
              v47 = sub_266A33AD0(v43, v45);
              isa = v4[2].isa;
              v50 = (v48 & 1) == 0;
              v32 = __OFADD__(isa, v50);
              v51 = isa + v50;
              if (v32)
              {
                goto LABEL_164;
              }

              v52 = v48;
              if (v4[3].isa >= v51)
              {
                if (v46)
                {
                  goto LABEL_42;
                }

                v56 = v47;
                sub_266A36EE4();
                v47 = v56;
                v54 = v240;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_47;
                }

LABEL_43:
                v55 = v47;

                v4 = v247[0];
                *(*(v247[0] + 56) + 8 * v55) = v54;
              }

              else
              {
                sub_266A34B98(v51, v46);
                v47 = sub_266A33AD0(v43, v45);
                if ((v52 & 1) != (v53 & 1))
                {
LABEL_156:

                  return sub_266A46860();
                }

LABEL_42:
                v54 = v240;
                if (v52)
                {
                  goto LABEL_43;
                }

LABEL_47:
                v4 = v247[0];
                *(v247[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
                v57 = (v4[6].isa + 16 * v47);
                *v57 = v43;
                v57[1] = v45;
                *(v4[7].isa + v47) = v54;

                v58 = v4[2].isa;
                v32 = __OFADD__(v58, 1);
                v59 = (v58 + 1);
                if (v32)
                {
                  goto LABEL_168;
                }

                v4[2].isa = v59;
              }

              v32 = __OFADD__(v54, 1);
              v9 = v54 + 1;
              v12 = v231;
              if (v32)
              {
                goto LABEL_165;
              }

LABEL_16:
              ++v14;
              if (v0 == v13)
              {
                goto LABEL_5;
              }

              continue;
            }
          }

          v225 = v247[0];
          *(*(v247[0] + 56) + 8 * v22) = v8;
          goto LABEL_37;
        }

        break;
      }

      v34 = sub_266A464F0();
      v35 = sub_266A46690();

      if (os_log_type_enabled(v34, v35))
      {
        v241 = v9;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v247[0] = v37;
        *v36 = 136315138;
        v38 = sub_266A46490();
        v40 = sub_266A333F0(v38, v39, v247);

        *(v36 + 4) = v40;
        v13 = v234;
        _os_log_impl(&dword_266A29000, v34, v35, "Turn: %s has an invalid timestamp", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v41 = v37;
        v12 = v231;
        MEMORY[0x26D5E7060](v41, -1, -1);
        v42 = v36;
        v9 = v241;
        MEMORY[0x26D5E7060](v42, -1, -1);
      }

      else
      {
      }

      goto LABEL_16;
    }

    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_5:

    v8 = v214;
    v0 = v219;
    if (v214 == v204)
    {
      goto LABEL_55;
    }
  }

  if (v8 < *(v209 + 16))
  {

    v10 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      goto LABEL_173;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
  return result;
}

uint64_t (*sub_266A30784(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for SiriCoreMetricsAggregationKeys(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_266A37BA0(a2, v8, type metadata accessor for SiriCoreMetricsAggregationKeys);
  v6[5] = sub_266A3505C(v6, v9);
  return sub_266A30860;
}

void sub_266A30860(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_266A37C08(v2, type metadata accessor for SiriCoreMetricsAggregationKeys);
  free(v2);

  free(v1);
}

uint64_t (*sub_266A308D0(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_266A461E0();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_266A351E8(v4, v9);
  return sub_266A309E8;
}

void sub_266A309E8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*SiriCoreMetricsCalculator.processTurn(turn:turnIdToConvIdx:counts:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>))()
{
  v140 = a3;
  v143 = a2;
  v151 = a4;
  v139 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v5 = MEMORY[0x28223BE20](v139);
  v135 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v134 = &v120 - v8;
  MEMORY[0x28223BE20](v7);
  v141 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v144 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v145 = &v120 - v14;
  MEMORY[0x28223BE20](v13);
  v146 = &v120 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB08, &qword_266A47360);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v120 - v17;
  v150 = sub_266A46090();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_266A460B0();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_266A45FF0();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v120 - v28;
  if (sub_266A46480())
  {
    sub_266A464A0();
    sub_266A45F90();
    v136 = v4;
    v128 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
    v132 = v29;
    sub_266A45FB0();
    v30 = *(v24 + 8);
    v129 = v27;
    v137 = v23;
    v138 = v24 + 8;
    v133 = v30;
    v30(v27, v23);
    sub_266A46330();
    sub_266A46310();
    sub_266A46470();

    v130 = v153;
    sub_266A46370();
    sub_266A46340();
    sub_266A46470();

    v31 = v153;
    v125 = BYTE8(v153);
    sub_266A46350();
    sub_266A46470();

    v32 = v153;
    v124 = BYTE8(v153);
    sub_266A46360();
    sub_266A46470();

    v142 = *(&v153 + 1);
    v121 = v153;
    v33 = [objc_opt_self() autoupdatingCurrentLocale];
    sub_266A46070();
    sub_266A460A0();
    (*(v147 + 8))(v22, v148);
    sub_266A46080();
    (*(v149 + 8))(v20, v150);
    v34 = sub_266A46060();
    v35 = *(v34 - 8);
    result = (*(v35 + 48))(v18, 1, v34);
    if (result == 1)
    {
LABEL_60:
      __break(1u);
      return result;
    }

    v123 = v32;

    v37 = sub_266A46050();
    v39 = v38;
    (*(v35 + 8))(v18, v34);
    v40 = @"ODMSIRIUIVIEWMODE_UNKNOWN";
    v127 = sub_266A46580();
    v147 = v41;

    v42 = @"AUDIOINPUTROUTE_UNKNOWN";
    v122 = sub_266A46580();
    v150 = v43;

    v44 = @"UNKNOWN";
    v45 = sub_266A46580();
    v47 = v46;

    v48 = @"PRODUCT_UNKNOWN";
    v131 = sub_266A46580();
    v149 = v49;

    sub_266A463C0();
    sub_266A463B0();
    sub_266A46470();

    v50 = *(&v153 + 1);
    if (*(&v153 + 1))
    {
      v37 = v153;

      v148 = v50;
    }

    else
    {
      v148 = v39;
    }

    v61 = v137;
    sub_266A463A0();
    type metadata accessor for SISchemaDataSharingOptInState(0);
    sub_266A46470();

    if (BYTE4(v153) != 1)
    {
      v62 = v153;

      if (v62 > 3)
      {
        v63 = @"UNKNOWN";
        v64 = @"UNKNOWN";
      }

      else
      {
        v63 = off_279BD9298[v62];
        v64 = off_279BD92B8[v62];
      }

      v65 = v63;
      v66 = v64;
      v45 = sub_266A46580();
      v47 = v67;
    }

    sub_266A46320();
    sub_266A46470();

    v68 = v153;
    if (v153 != 2)
    {

      if (v68)
      {
        v69 = @"PRODUCT_DICTATION";
      }

      else
      {
        v69 = @"PRODUCT_ASSISTANT";
      }

      v70 = v69;
      v131 = sub_266A46580();
      v149 = v71;
    }

    v126 = v45;
    sub_266A46390();
    sub_266A46380();
    sub_266A46470();

    v72 = *(&v153 + 1);
    if (*(&v153 + 1))
    {
      v73 = v37;
      v74 = v153;

      v150 = v72;
    }

    else
    {
      v74 = v122;
      v73 = v37;
    }

    sub_266A46490();
    v75 = v146;
    sub_266A46000();

    v76 = sub_266A46040();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v75, 1, v76) == 1)
    {

      sub_266A38274(v75, &qword_2800AE9C0, &qword_266A46E38);
      v78 = sub_266A464F0();
      v79 = sub_266A46690();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_266A29000, v78, v79, "Turn Id is not available", v80, 2u);
        MEMORY[0x26D5E7060](v80, -1, -1);
      }

      v133(v132, v61);
      v81 = type metadata accessor for ProcessedSiriTurn(0);
      return (*(*(v81 - 8) + 56))(v151, 1, 1, v81);
    }

    sub_266A38274(v75, &qword_2800AE9C0, &qword_266A46E38);
    sub_266A46490();
    sub_266A46000();

    v120 = v31;
    if (!v142)
    {
      goto LABEL_38;
    }

    v82 = v143;
    if (*(v143 + 16) && (v83 = sub_266A33AD0(v121, v142), (v84 & 1) != 0))
    {
      v85 = 0;
      v146 = *(*(v82 + 56) + 8 * v83);
    }

    else
    {
      v146 = 0;
      v85 = 1;
    }

    v86 = sub_266A46490();
    if (*(v143 + 16))
    {
      v88 = sub_266A33AD0(v86, v87);
      v90 = v89;

      v91 = v144;
      if (v90)
      {
        if ((v85 & 1) != 0 || v146 != *(*(v143 + 56) + 8 * v88))
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }
    }

    else
    {

      v91 = v144;
    }

    if ((v85 & 1) == 0)
    {
LABEL_37:

      v61 = v137;
LABEL_38:
      v91 = v144;
      (*(v77 + 56))(v144, 1, 1, v76);
      goto LABEL_42;
    }

LABEL_41:
    sub_266A46000();

    v61 = v137;
LABEL_42:
    *&v153 = v73;
    *(&v153 + 1) = v148;
    *&v154 = v127;
    *(&v154 + 1) = v147;
    *&v155 = v74;
    *(&v155 + 1) = v150;
    *&v156 = v131;
    *(&v156 + 1) = v149;
    *&v157 = v126;
    *(&v157 + 1) = v47;
    sub_266A2AF38(&v153, &v152);
    v92 = v129;
    v93 = v132;
    sub_266A45FB0();
    sub_266A45FA0();
    v94 = v92;
    v95 = v133;
    v133(v94, v61);
    v96 = v141;
    sub_266A461B0();
    v97 = (v96 + *(v139 + 20));
    v98 = v157;
    v99 = v155;
    v97[3] = v156;
    v97[4] = v98;
    v100 = v154;
    *v97 = v153;
    v97[1] = v100;
    v97[2] = v99;
    v101 = v140;
    v102 = *v140;
    v103 = v151;
    if (*(*v140 + 16))
    {
      v104 = sub_266A33998(v96);
      v105 = v130;
      if (v106)
      {
        v107 = (*(v102 + 56) + 8 * v104);
        v108 = *v107;
        v109 = v135;
        if (v130)
        {
          v110 = v107[1];
          v111 = v134;
          sub_266A37BA0(v96, v134, type metadata accessor for SiriCoreMetricsAggregationKeys);
          result = sub_266A30784(&v152, v111);
          if (*(v112 + 8))
          {
            (result)(&v152, 0);
          }

          else
          {
            if (v110 == -1)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            *(v112 + 4) = v110 + 1;
            (result)(&v152, 0);
          }

          v61 = v137;
          sub_266A37C08(v134, type metadata accessor for SiriCoreMetricsAggregationKeys);
        }

        sub_266A37BA0(v96, v109, type metadata accessor for SiriCoreMetricsAggregationKeys);
        result = sub_266A30784(&v152, v109);
        if (*(v114 + 8))
        {
          (result)(&v152, 0);
LABEL_56:
          sub_266A37C08(v109, type metadata accessor for SiriCoreMetricsAggregationKeys);
          sub_266A37C08(v96, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v133(v93, v61);
          v105 = v130;
          goto LABEL_57;
        }

        if (v108 != -1)
        {
          *v114 = v108 + 1;
          (result)(&v152, 0);
          goto LABEL_56;
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      v105 = v130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = *v101;
    sub_266A3704C(((v105 & 1) << 32) | 1, v96, isUniquelyReferenced_nonNull_native);
    sub_266A37C08(v96, type metadata accessor for SiriCoreMetricsAggregationKeys);
    v95(v93, v61);
    *v101 = v152;
LABEL_57:
    v115 = v156;
    v103[2] = v155;
    v103[3] = v115;
    v103[4] = v157;
    v116 = v154;
    *v103 = v153;
    v103[1] = v116;
    v117 = type metadata accessor for ProcessedSiriTurn(0);
    sub_266A382D4(v145, v103 + v117[5], &qword_2800AE9C0, &qword_266A46E38);
    sub_266A382D4(v91, v103 + v117[6], &qword_2800AE9C0, &qword_266A46E38);
    *(v103 + v117[7]) = v105 & 1;
    v118 = v103 + v117[8];
    *v118 = v120;
    v118[8] = v125;
    v119 = v103 + v117[9];
    *v119 = v123;
    v119[8] = v124;
    return (*(*(v117 - 1) + 56))(v103, 0, 1, v117);
  }

  v51 = v151;

  v52 = sub_266A464F0();
  v53 = sub_266A46690();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v153 = v55;
    *v54 = 136315138;
    v56 = sub_266A46490();
    v58 = sub_266A333F0(v56, v57, &v153);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_266A29000, v52, v53, "Turn %s has an invalid timestamp", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x26D5E7060](v55, -1, -1);
    MEMORY[0x26D5E7060](v54, -1, -1);
  }

  v59 = type metadata accessor for ProcessedSiriTurn(0);
  v60 = *(*(v59 - 8) + 56);

  return v60(v51, 1, 1, v59);
}

unint64_t SiriCoreMetricsCalculator.calculateTwoByThree(previousRequestCounts:totalCounts:)(unint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = sub_266A461E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  v13 = sub_266A37C68(MEMORY[0x277D84F90]);
  v14 = *(a2 + 64);
  v39[0] = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v39[1] = v4 + 16;
  v46 = (v4 + 32);
  v47 = a2;
  v42 = v4;
  v43 = (v4 + 8);

  v20 = 0;
  v40 = v12;
  v41 = v10;
  if (v17)
  {
    while (1)
    {
      v45 = v13;
      v21 = v20;
LABEL_13:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v47;
      v27 = v42;
      (*(v42 + 16))(v6, *(v47 + 48) + *(v42 + 72) * v25, v3);
      v28 = v6;
      v29 = v3;
      v30 = *(v26 + 56);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
      v32 = *(v31 + 48);
      v33 = *(v30 + 8 * v25);
      v3 = v29;
      v6 = v28;
      v10 = v41;
      (*(v27 + 32))(v41, v6, v3);
      *&v10[v32] = v33;
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
      v23 = v21;
      v12 = v40;
      v13 = v45;
LABEL_14:
      sub_266A382D4(v10, v12, &qword_2800AEB10, &qword_266A47368);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      (*v46)(v6, v12, v3);
      sub_266A461A0();
      v36 = sub_266A3209C(v44, v47, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v13;
      sub_266A371C8(v36, v6, isUniquelyReferenced_nonNull_native);
      result = (*v43)(v6, v3);
      v13 = v48;
      v20 = v23;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return v13;
  }

  else
  {
LABEL_5:
    if (v18 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
        (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
        v17 = 0;
        goto LABEL_14;
      }

      v17 = *(v39[0] + 8 * v21);
      ++v20;
      if (v17)
      {
        v45 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266A3209C(unint64_t a1, uint64_t a2, double a3)
{
  v103 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB68, &qword_266A47430);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = &v101 - v7;
  v115 = sub_266A45FF0();
  v8 = *(v115 - 8);
  v9 = MEMORY[0x28223BE20](v115);
  v104 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v101 - v12;
  MEMORY[0x28223BE20](v11);
  v113 = &v101 - v13;
  v127 = sub_266A461E0();
  v14 = *(v127 - 1);
  v15 = MEMORY[0x28223BE20](v127);
  v17 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v118 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB70, &qword_266A47438);
  v25 = sub_266A46620();
  *(v25 + 16) = 7;
  *(v25 + 32) = 33686018;
  v101 = (v25 + 32);
  *(v25 + 35) = 33686018;
  v26 = *(a2 + 64);
  v110 = a2 + 64;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v112 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v123 = v24 + 4;
  v124 = v24;
  v109 = (v27 + 63) >> 6;
  v116 = v14 + 16;
  v126 = (v14 + 32);
  v119 = v14;
  v122 = (v14 + 8);
  v102 = v8;
  v114 = (v8 + 8);
  v108 = v25;
  v106 = v25 + 31;
  v120 = a2;

  v30 = 0;
  v31 = &unk_266A47370;
  v125 = v17;
  v117 = v22;
  while (1)
  {
    if (!v29)
    {
      if (v109 <= v30 + 1)
      {
        v33 = v30 + 1;
      }

      else
      {
        v33 = v109;
      }

      v34 = v33 - 1;
      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v109)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
          (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
          v29 = 0;
          goto LABEL_15;
        }

        v29 = *(v110 + 8 * v32);
        ++v30;
        if (v29)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v32 = v30;
LABEL_14:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v35 | (v32 << 6);
    v38 = v119;
    v37 = v120;
    (*(v119 + 16))(v118, *(v120 + 48) + *(v119 + 72) * v36, v127);
    v39 = *(v37 + 56);
    v31 = &unk_266A47370;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
    v41 = *(v40 + 48);
    v42 = *(v39 + 8 * v36);
    v22 = v117;
    (*(v38 + 32))();
    *&v22[v41] = v42;
    (*(*(v40 - 8) + 56))(v22, 0, 1, v40);
    v34 = v32;
    v17 = v125;
LABEL_15:
    v43 = v124;
    sub_266A382D4(v22, v124, &qword_2800AEB10, &qword_266A47368);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      break;
    }

    v45 = *&v123[*(v44 + 48)];
    (*v126)(v17, v43, v127);
    if (sub_266A461C0() == 1)
    {
      v121 = v34;
      v46 = v127;
      sub_266A461A0();
      v47 = v17;
      v48 = v113;
      sub_266A45F90();
      v49 = v111;
      sub_266A45F90();
      v50 = sub_266A460D0();
      v51 = *v114;
      v52 = v49;
      v53 = v115;
      (*v114)(v52, v115);
      v51(v48, v53);
      if (v50 < 1)
      {
        (*v122)(v47, v46);
        v30 = v121;
        v17 = v47;
LABEL_22:
        v31 = &unk_266A47370;
      }

      else
      {
        if (v50 > 7)
        {
          v17 = v125;
          (*v122)(v125, v127);
          v30 = v121;
          goto LABEL_22;
        }

        v17 = v125;
        (*v122)(v125, v127);
        v55 = *(v108 + 16);
        v31 = &unk_266A47370;
        v56 = v121;
        if (v45 >= 2)
        {
          if (v50 > v55)
          {
            goto LABEL_63;
          }

          *(v106 + v50) = 1;
        }

        else
        {
          if (v50 > v55)
          {
            goto LABEL_64;
          }

          *(v106 + v50) = 0;
        }

        v30 = v56;
      }
    }

    else
    {
      (*v122)(v17, v127);
      v30 = v34;
    }
  }

  v31 = v103;
  if (v103 >> 62)
  {
LABEL_65:
    v57 = sub_266A46730();
    if (!v57)
    {
      goto LABEL_66;
    }

LABEL_31:
    v58 = 0;
    v59 = v31 & 0xC000000000000001;
    v60 = v31 & 0xFFFFFFFFFFFFFF8;
    v126 = (v102 + 48);
    v127 = (v102 + 56);
    v124 = (v31 & 0xFFFFFFFFFFFFFF8);
    v125 = (v102 + 32);
    v61 = &off_279BD9000;
    while (1)
    {
      if (v59)
      {
        v62 = MEMORY[0x26D5E6A00](v58, v31);
      }

      else
      {
        if (v58 >= *(v60 + 16))
        {
          goto LABEL_62;
        }

        v62 = *(v31 + 8 * v58 + 32);
      }

      v63 = v62;
      v64 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_61;
      }

      v65 = [v62 v61[116]];
      if (v65 && (v66 = v65, v67 = [v65 schedule], v66, v67 == 1))
      {
        v68 = [v63 v61[116]];
        if (!v68)
        {

          v73 = v107;
          (*v127)(v107, 1, 1, v115);
LABEL_48:
          sub_266A38274(v73, &qword_2800AEB68, &qword_266A47430);
          goto LABEL_33;
        }

        v69 = v68;
        v70 = [v68 aggregationWindowStartTimestamp];

        if (v70)
        {
          v71 = v105;
          sub_266A45FE0();

          v72 = 0;
        }

        else
        {
          v72 = 1;
          v71 = v105;
        }

        v74 = v115;
        (*v127)(v71, v72, 1, v115);
        v73 = v107;
        sub_266A382D4(v71, v107, &qword_2800AEB68, &qword_266A47430);
        if ((*v126)(v73, 1, v74) == 1)
        {

          v61 = &off_279BD9000;
          goto LABEL_48;
        }

        v75 = v104;
        (*v125)(v104, v73, v74);
        v76 = v113;
        sub_266A45F90();
        v77 = sub_266A460D0();
        v78 = *v114;
        (*v114)(v76, v74);
        if (v77 < 1)
        {
          v79 = v75;
          v80 = v74;
          goto LABEL_53;
        }

        if (v77 > 7)
        {
          v79 = v104;
          v80 = v115;
LABEL_53:
          v78(v79, v80);

          v31 = v103;
          v60 = v124;
          v61 = &off_279BD9000;
          goto LABEL_33;
        }

        result = [v63 statistics];
        v61 = &off_279BD9000;
        if (!result)
        {
          goto LABEL_90;
        }

        v82 = result;
        LODWORD(v123) = [result userRequestCount];

        result = (v78)(v104, v115);
        v83 = *(v108 + 16);
        if (v123 >= 2)
        {
          v31 = v103;
          v60 = v124;
          if (v77 > v83)
          {
            goto LABEL_89;
          }

          *(v106 + v77) = 1;
        }

        else
        {
          v31 = v103;
          v60 = v124;
          if (v77 > v83)
          {
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            return result;
          }

          *(v106 + v77) = 0;
        }
      }

      else
      {
      }

LABEL_33:
      ++v58;
      if (v64 == v57)
      {
        goto LABEL_66;
      }
    }
  }

  v57 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    goto LABEL_31;
  }

LABEL_66:
  v84 = *(v108 + 16);
  if (v84)
  {
    v85 = MEMORY[0x277D84F90];
    v86 = v101;
    v87 = v101;
    v88 = *(v108 + 16);
    do
    {
      v92 = *v87++;
      v91 = v92;
      if (v92 != 2 && (v91 & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266A37364(0, *(v85 + 16) + 1, 1);
          v85 = v128;
        }

        v90 = *(v85 + 16);
        v89 = *(v85 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_266A37364((v89 > 1), v90 + 1, 1);
          v85 = v128;
        }

        *(v85 + 16) = v90 + 1;
        *(v85 + v90 + 32) = v91;
      }

      --v88;
    }

    while (v88);
    v94 = *(v85 + 16);

    v95 = MEMORY[0x277D84F90];
    do
    {
      v98 = *v86++;
      if (v98 == 2)
      {
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v95;
        if ((v99 & 1) == 0)
        {
          sub_266A37364(0, *(v95 + 16) + 1, 1);
          v95 = v128;
        }

        v97 = *(v95 + 16);
        v96 = *(v95 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_266A37364((v96 > 1), v97 + 1, 1);
          v95 = v128;
        }

        *(v95 + 16) = v97 + 1;
        *(v95 + v97 + 32) = 2;
      }

      --v84;
    }

    while (v84);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
    v94 = *(MEMORY[0x277D84F90] + 16);
  }

  v100 = *(v95 + 16) >= 3 - v94;

  if (v94 >= 3)
  {
    return 1;
  }

  else
  {
    return (2 * v100);
  }
}

uint64_t SiriCoreMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriCoreMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_266A32EC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_266A32F68;

  return SiriCoreMetricsCalculator.doWork(_:)(v2 + 16, a2);
}

uint64_t sub_266A32F68()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[1];
  v4 = v1[3];
  v2[1] = v1[2];
  v2[2] = v4;
  *v2 = v3;
  v5 = *(v7 + 8);

  return v5();
}

char *sub_266A33084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBD0, &qword_266A47490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266A33190(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_266A33394(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_266A333F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_266A333F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266A334BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_266A38340(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_266A334BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266A335C8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_266A46710();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_266A335C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_266A33614(a1, a2);
  sub_266A33744(&unk_287838DE0);
  return v3;
}

void *sub_266A33614(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_266A33830(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_266A46710();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_266A465E0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266A33830(v10, 0);
        result = sub_266A466E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_266A33744(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_266A338A4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266A33830(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA0, &qword_266A47468);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_266A338A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA0, &qword_266A47468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_266A33998(uint64_t a1)
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  sub_266A46550();
  type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  v2 = sub_266A468D0();

  return sub_266A36000(a1, v2);
}

unint64_t sub_266A33AD0(uint64_t a1, uint64_t a2)
{
  sub_266A468B0();
  sub_266A465C0();
  v4 = sub_266A468D0();

  return sub_266A362CC(a1, a2, v4);
}

unint64_t sub_266A33B48(uint64_t a1)
{
  sub_266A461E0();
  sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  v2 = sub_266A46540();

  return sub_266A36384(a1, v2);
}

uint64_t sub_266A33BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB88, &qword_266A47450);
  v45 = v4;
  v9 = sub_266A46750();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v3;
    v11 = 0;
    v12 = *(v8 + 64);
    v38 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v41 = v9;
    v42 = v8;
    v39 = v16;
    v40 = v7;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v20 = (v15 - 1) & v15;
LABEL_15:
      v24 = v19 | (v11 << 6);
      v25 = *(v8 + 48);
      v46 = *(v43 + 72);
      v47 = v20;
      v26 = v25 + v46 * v24;
      if (v45)
      {
        sub_266A37B38(v26, v7, type metadata accessor for SiriCoreMetricsAggregationKeys);
      }

      else
      {
        sub_266A37BA0(v26, v7, type metadata accessor for SiriCoreMetricsAggregationKeys);
      }

      v27 = *(*(v8 + 56) + 8 * v24);
      sub_266A468B0();
      sub_266A461E0();
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
      sub_266A46550();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      result = sub_266A468D0();
      v10 = v41;
      v28 = -1 << *(v41 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v8 = v42;
        v7 = v40;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v8 = v42;
      v7 = v40;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_266A37B38(v7, v10[6] + v46 * v18, type metadata accessor for SiriCoreMetricsAggregationKeys);
      *(v10[7] + 8 * v18) = v27;
      ++v10[2];
      v16 = v39;
      v15 = v47;
    }

    v21 = v11;
    result = v38;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v38[v11];
      ++v21;
      if (v23)
      {
        v19 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v38, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_266A34038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_266A461E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB58, &qword_266A47428);
  v40 = v4;
  result = sub_266A46750();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
      result = sub_266A46540();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_266A343F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_266A461E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBB0, &qword_266A47478);
  v39 = v4;
  result = sub_266A46750();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
      result = sub_266A46540();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_266A347BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_266A461E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA8, &qword_266A47470);
  v39 = v4;
  result = sub_266A46750();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
      result = sub_266A46540();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_266A34B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB90, &qword_266A47458);
  v34 = v4;
  result = sub_266A46750();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_266A468B0();
      sub_266A465C0();
      result = sub_266A468D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_266A34E38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  result = sub_266A37B38(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for SiriCoreMetricsAggregationKeys);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_266A34EEC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_266A461E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_266A34FA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_266A461E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void (*sub_266A3505C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for SiriCoreMetricsAggregationKeys(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_266A37BA0(a2, v9, type metadata accessor for SiriCoreMetricsAggregationKeys);
  v6[9] = sub_266A35918(v6);
  v6[10] = sub_266A353BC(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_266A35158;
}

void sub_266A35158(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_266A37C08(v3, type metadata accessor for SiriCoreMetricsAggregationKeys);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_266A351E8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_266A461E0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_266A35940(v6);
  v6[12] = sub_266A3566C(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_266A35324;
}

void sub_266A35324(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_266A353BC(void *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v4;
  v11 = *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) - 8);
  v10[2] = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v10[3] = v12;
  v13 = *v4;
  v14 = sub_266A33998(a2);
  *(v10 + 49) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = v15 ^ 1;
  v18 = __OFADD__(v16, (v15 ^ 1) & 1);
  v19 = v16 + ((v15 ^ 1) & 1);
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_266A36544();
      v14 = v22;
      goto LABEL_14;
    }

    sub_266A33BE0(v19, a3 & 1);
    v14 = sub_266A33998(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

LABEL_14:
  v10[4] = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  v10[5] = v24;
  *(v10 + 48) = v17 & 1;
  return sub_266A35578;
}

void sub_266A35578(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 48))
  {
    if (*(*a1 + 49))
    {
      v2 = *(v1 + 32);
      v3 = **(v1 + 8);
      sub_266A37C08(*(v3 + 48) + *(*(v1 + 16) + 72) * v2, type metadata accessor for SiriCoreMetricsAggregationKeys);
      sub_266A35974(v2, v3);
    }
  }

  else
  {
    v5 = *(v1 + 32);
    v4 = *(v1 + 40);
    if (*(*a1 + 49))
    {
      *(*(**(v1 + 8) + 56) + 8 * v5) = v4;
    }

    else
    {
      v6 = *(v1 + 24);
      v7 = **(v1 + 8);
      sub_266A37BA0(*v1, v6, type metadata accessor for SiriCoreMetricsAggregationKeys);
      sub_266A34E38(v5, v6, v4, v7);
    }
  }

  free(*(v1 + 24));

  free(v1);
}

void (*sub_266A3566C(void *a1, uint64_t a2, char a3))(uint64_t a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v4;
  v11 = sub_266A461E0();
  v10[2] = v11;
  v12 = *(v11 - 8);
  v10[3] = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v10[4] = v13;
  v14 = *v4;
  v15 = sub_266A33B48(a2);
  *(v10 + 57) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = v16 ^ 1;
  v19 = __OFADD__(v17, (v16 ^ 1) & 1);
  v20 = v17 + ((v16 ^ 1) & 1);
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_266A369F0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_266A343F8(v20, a3 & 1);
    v15 = sub_266A33B48(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

LABEL_14:
  v10[5] = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  v10[6] = v25;
  *(v10 + 56) = v18 & 1;
  return sub_266A3582C;
}

void sub_266A3582C(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 56))
  {
    if (*(*a1 + 57))
    {
      v2 = v1[5];
      v3 = *v1[1];
      (*(v1[3] + 8))(*(v3 + 48) + *(v1[3] + 72) * v2, v1[2]);
      sub_266A35CE0(v2, v3);
    }
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    if (*(*a1 + 57))
    {
      *(*(*v1[1] + 56) + 8 * v5) = v4;
    }

    else
    {
      v6 = v1[4];
      v7 = *v1[1];
      (*(v1[3] + 16))(v6, *v1, v1[2]);
      sub_266A34FA4(v5, v6, v4, v7);
    }
  }

  free(v1[4]);

  free(v1);
}

uint64_t (*sub_266A35918(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266A3844C;
}

uint64_t (*sub_266A35940(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266A35968;
}

unint64_t sub_266A35974(int64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v4 = *(v32 - 8);
  result = MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_266A466B0() + 1) & ~v8;
    v12 = *(v4 + 72);
    v29 = a2 + 64;
    v30 = a2;
    v27 = v12;
    v28 = v10;
    do
    {
      v35 = a1;
      v36 = v9;
      v13 = *(a2 + 48);
      v33 = v12 * v9;
      v34 = type metadata accessor for SiriCoreMetricsAggregationKeys;
      v14 = v31;
      sub_266A37BA0(v13 + v12 * v9, v31, type metadata accessor for SiriCoreMetricsAggregationKeys);
      sub_266A468B0();
      sub_266A461E0();
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
      sub_266A46550();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      a1 = v35;
      sub_266A465C0();
      v15 = sub_266A468D0();
      v16 = v14;
      v17 = v28;
      result = sub_266A37C08(v16, v34);
      v18 = v15 & v17;
      if (a1 >= v11)
      {
        if (v18 < v11)
        {
          v7 = v29;
          a2 = v30;
          v19 = v36;
          v12 = v27;
        }

        else
        {
          v7 = v29;
          a2 = v30;
          v19 = v36;
          v12 = v27;
          if (a1 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v7 = v29;
        a2 = v30;
        v19 = v36;
        v12 = v27;
        if (v18 >= v11 || a1 >= v18)
        {
LABEL_11:
          v20 = *(a2 + 48);
          result = v20 + v12 * a1;
          if (v12 * a1 < v33 || result >= v20 + v33 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 * a1 != v33)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v21 = *(a2 + 56);
          v22 = (v21 + 8 * a1);
          v23 = (v21 + 8 * v19);
          if (a1 != v19 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            a1 = v19;
          }
        }
      }

      v9 = (v19 + 1) & v17;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_266A35CE0(int64_t a1, uint64_t a2)
{
  v40 = sub_266A461E0();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_266A466B0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
      v23 = sub_266A46540();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_266A36000(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v28 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  MEMORY[0x28223BE20](v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2 + 64;
  v40 = v2;
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = *(v4 + 72);
    v37 = ~v7;
    v38 = v9;
    while (1)
    {
      sub_266A37BA0(*(v40 + 48) + v38 * v8, v6, type metadata accessor for SiriCoreMetricsAggregationKeys);
      if (sub_266A461D0())
      {
        if (v10 = *(v28 + 20), v11 = *&v6[v10], v12 = *&v6[v10 + 8], v13 = *&v6[v10 + 16], v14 = *&v6[v10 + 24], v16 = *&v6[v10 + 32], v15 = *&v6[v10 + 40], v17 = *&v6[v10 + 48], v32 = *&v6[v10 + 56], v18 = *&v6[v10 + 64], v30 = *&v6[v10 + 72], v19 = (v41 + v10), v20 = *v19, v21 = v19[1], v22 = v19[2], v23 = v19[3], v25 = v19[4], v24 = v19[5], v35 = v19[6], v36 = v17, v26 = v19[8], v31 = v19[7], v33 = v26, v34 = v18, v29 = v19[9], v11 == v20) && v12 == v21 || (sub_266A46840())
        {
          if (v13 == v22 && v14 == v23 || (sub_266A46840()) && (v16 == v25 && v15 == v24 || (sub_266A46840()) && (v36 == v35 && v32 == v31 || (sub_266A46840()) && (v34 == v33 && v30 == v29 || (sub_266A46840()))
          {
            break;
          }
        }
      }

      sub_266A37C08(v6, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v8 = (v8 + 1) & v37;
      if (((*(v39 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return v8;
      }
    }

    sub_266A37C08(v6, type metadata accessor for SiriCoreMetricsAggregationKeys);
  }

  return v8;
}

unint64_t sub_266A362CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_266A46840())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_266A36384(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_266A461E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_266A3839C(&qword_2800AEBC0, MEMORY[0x277D04450], MEMORY[0x277D04468]);
      v15 = sub_266A46560();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_266A36544()
{
  v1 = v0;
  v2 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB88, &qword_266A47450);
  v6 = *v0;
  v7 = sub_266A46740();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_266A37BA0(*(v6 + 48) + v22, v5, type metadata accessor for SiriCoreMetricsAggregationKeys);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_266A37B38(v5, *(v8 + 48) + v22, type metadata accessor for SiriCoreMetricsAggregationKeys);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_266A36780()
{
  v1 = v0;
  v31 = sub_266A461E0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB58, &qword_266A47428);
  v3 = *v0;
  v4 = sub_266A46740();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_266A369F0()
{
  v1 = v0;
  v29 = sub_266A461E0();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBB0, &qword_266A47478);
  v3 = *v0;
  v4 = sub_266A46740();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v22 + 56) + 8 * v17) = v23)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = v30;
      v23 = *(*(v3 + 56) + 8 * v17);
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_266A36C64()
{
  v1 = v0;
  v33 = sub_266A461E0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA8, &qword_266A47470);
  v3 = *v0;
  v4 = sub_266A46740();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_266A36EE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB90, &qword_266A47458);
  v2 = *v0;
  v3 = sub_266A46740();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266A3704C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_266A33998(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_266A36544();
    goto LABEL_7;
  }

  sub_266A33BE0(result, a3 & 1);
  result = sub_266A33998(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_266A37BA0(a2, v10, type metadata accessor for SiriCoreMetricsAggregationKeys);
  return sub_266A34E38(v13, v10, a1, v19);
}

uint64_t sub_266A371C8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_266A461E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_266A33B48(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_266A36780();
    goto LABEL_7;
  }

  sub_266A34038(result, a3 & 1);
  result = sub_266A33B48(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_266A34EEC(v14, v11, a1, v20);
}

char *sub_266A37364(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A37384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A37384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB78, &qword_266A47440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_266A37478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB90, &qword_266A47458);
    v3 = sub_266A46760();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_266A33AD0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266A37574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBE0, &unk_266A474A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB88, &qword_266A47450);
    v7 = sub_266A46760();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v9, v5, &qword_2800AEBE0, &unk_266A474A0);
      result = sub_266A33998(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
      result = sub_266A37B38(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SiriCoreMetricsAggregationKeys);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266A37758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBD8, &qword_266A47498);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA8, &qword_266A47470);
    v7 = sub_266A46760();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v9, v5, &qword_2800AEBD8, &qword_266A47498);
      result = sub_266A33B48(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_266A461E0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266A37940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBC8, &qword_266A47488);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBB0, &qword_266A47478);
    v7 = sub_266A46760();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v9, v5, &qword_2800AEBC8, &qword_266A47488);
      result = sub_266A33B48(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_266A461E0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_266A37B28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266A37B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_266A37BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266A37C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_266A37C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB80, &qword_266A47448);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB58, &qword_266A47428);
    v7 = sub_266A46760();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v9, v5, &qword_2800AEB80, &qword_266A47448);
      result = sub_266A33B48(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_266A461E0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266A37E9C()
{
  result = qword_2800AEB28;
  if (!qword_2800AEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEB28);
  }

  return result;
}

uint64_t type metadata accessor for SiriCoreMetricsCalculator(uint64_t a1)
{
  result = qword_2800AEB30;
  if (!qword_2800AEB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A37F44(uint64_t a1)
{
  result = sub_266A46510();
  if (v2 <= 0x3F)
  {
    result = sub_266A460E0();
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

unint64_t sub_266A38020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB48, &qword_266A47418);
    v3 = sub_266A46760();
    v4 = a1 + 32;

    while (1)
    {
      sub_266A383E4(v4, &v13, &qword_2800AEB50, &qword_266A47420);
      v5 = v13;
      v6 = v14;
      result = sub_266A33AD0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_266A38264(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266A38150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB40, &qword_266A47410);
    v3 = sub_266A46760();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_266A33AD0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_266A38264(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_266A38274(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266A382D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_266A38340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266A3839C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266A383E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SiriCoreMetricsResults.init(processedConversations:countsReportedAll:totalCounts:conversationStreamMetadata:eventStreamMetadata:twoByThreeResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a4;
  a7[4] = a3;
  a7[5] = a6;
  return result;
}

__n128 SiriCoreMetricsAggregationKeys.init(aggregationStartTimeSince2001:aggregationIntervalInDays:siriInputLocale:viewMode:audioInputRoute:product:siriDataSharingOptInStatus:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a11, uint64_t a12)
{
  sub_266A461B0();
  v20 = a9 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20);
  *v20 = a2;
  *(v20 + 8) = a3;
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  *(v20 + 48) = a8;
  result = a11;
  *(v20 + 56) = a11;
  *(v20 + 72) = a12;
  return result;
}

uint64_t TwoByThreeSegment.hashValue.getter(unsigned __int8 a1)
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](a1);
  return sub_266A468D0();
}

uint64_t sub_266A38590()
{
  v1 = *v0;
  v2 = 0x75706E4969726973;
  v3 = 0x746E496F69647561;
  v4 = 0x746375646F7270;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65646F4D77656976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266A38648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266A3A738(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266A3867C(uint64_t a1)
{
  v2 = sub_266A3A414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A386B8(uint64_t a1)
{
  v2 = sub_266A3A414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicDimensionsSiriCoreMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBE8, &qword_266A474B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3A414();
  sub_266A46900();
  v8[15] = 0;
  sub_266A46800();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_266A46800();
  v8[13] = 2;
  sub_266A46800();
  v8[12] = 3;
  sub_266A46800();
  v8[11] = 4;
  sub_266A46800();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DynamicDimensionsSiriCoreMetrics.hash(into:)(uint64_t a1)
{
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t DynamicDimensionsSiriCoreMetrics.hashValue.getter()
{
  sub_266A468B0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

__n128 DynamicDimensionsSiriCoreMetrics.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_266A3A900(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_266A389FC()
{
  sub_266A468B0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A38AB8(uint64_t a1)
{
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t sub_266A38B5C(uint64_t a1)
{
  sub_266A468B0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

__n128 sub_266A38C14@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_266A3A900(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_266A38C78(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s15SiriCoreMetrics017DynamicDimensionsabC0V23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

__n128 SiriCoreMetricsAggregationKeys.init(aggregationInterval:dimension:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_266A461E0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = result;
  return result;
}

uint64_t SiriCoreMetricsAggregationKeys.description.getter()
{
  sub_266A466F0();
  MEMORY[0x26D5E68D0](0xD000000000000039, 0x8000000266A48C70);
  v4 = sub_266A461C0();
  v1 = sub_266A46830();
  MEMORY[0x26D5E68D0](v1);

  MEMORY[0x26D5E68D0](0xD000000000000038, 0x8000000266A48CB0);
  sub_266A461A0();
  sub_266A46650();
  MEMORY[0x26D5E68D0](0xD000000000000014, 0x8000000266A48CF0);
  v2 = (v0 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20));
  MEMORY[0x26D5E68D0](*v2, v2[1]);
  MEMORY[0x26D5E68D0](0x4D77656976090A2CLL, 0xED0000203A65646FLL);
  MEMORY[0x26D5E68D0](v2[2], v2[3]);
  MEMORY[0x26D5E68D0](0xD000000000000013, 0x8000000266A48D10);
  MEMORY[0x26D5E68D0](v2[4], v2[5]);
  MEMORY[0x26D5E68D0](0x75646F7270090A2CLL, 0xEC000000203A7463);
  MEMORY[0x26D5E68D0](v2[6], v2[7]);
  MEMORY[0x26D5E68D0](0xD00000000000001BLL, 0x8000000266A48D30);
  MEMORY[0x26D5E68D0](v2[8], v2[9]);
  return HIDWORD(v4);
}

uint64_t SiriCoreMetricsAggregationKeys.hash(into:)(uint64_t a1)
{
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  sub_266A46550();
  type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t SiriCoreMetricsAggregationKeys.hashValue.getter()
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  sub_266A46550();
  type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A39178(uint64_t a1)
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  sub_266A46550();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A39280(uint64_t a1, uint64_t a2)
{
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  sub_266A46550();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t sub_266A39384(uint64_t a1, uint64_t a2)
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450], MEMORY[0x277D04460]);
  sub_266A46550();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A394A4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65757165526C6C61;
  }
}

uint64_t sub_266A394F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65757165526C6C61 && a2 == 0xEF746E756F437473;
  if (v6 || (sub_266A46840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266A48D70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_266A46840();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_266A395E8(uint64_t a1)
{
  v2 = sub_266A3ACD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A39624(uint64_t a1)
{
  v2 = sub_266A3ACD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriRequestCounts.encode(to:)(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBF8, &qword_266A474B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3ACD8();
  sub_266A46900();
  v9[15] = 0;
  sub_266A46820();
  if (!v2)
  {
    v9[14] = 1;
    sub_266A46820();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_266A39804@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_266A3AD2C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SiriCountsAll.aggregationInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266A461E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriCountsAll.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriCountsAll(0) + 20);

  return sub_266A2AF38(v3, a1);
}

uint64_t SiriCountsAll.dimensions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SiriCountsAll(0) + 20);

  return sub_266A3AF2C(a1, v3);
}

uint64_t SiriCountsAll.requestCounts.setter(uint64_t a1)
{
  result = type metadata accessor for SiriCountsAll(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_266A39A4C()
{
  v1 = 0x6F69736E656D6964;
  if (*v0 != 1)
  {
    v1 = 0x4374736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_266A39ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266A3BE3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266A39AF0(uint64_t a1)
{
  v2 = sub_266A3AF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A39B2C(uint64_t a1)
{
  v2 = sub_266A3AF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriCountsAll.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEC08, &qword_266A474C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3AF64();
  sub_266A46900();
  v31[0] = 0;
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEC18, MEMORY[0x277D04450], MEMORY[0x277D04458]);
  sub_266A46810();
  if (!v2)
  {
    v9 = type metadata accessor for SiriCountsAll(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[2];
    v12 = *v10;
    v27 = v10[1];
    v28 = v11;
    v13 = v10[2];
    v14 = v10[4];
    v29 = v10[3];
    v30 = v14;
    v15 = *v10;
    v23 = v13;
    v24 = v29;
    v25 = v10[4];
    v26 = v15;
    v21 = v12;
    v22 = v27;
    v20 = 1;
    sub_266A2AF38(&v26, v19);
    sub_266A2AF94();
    sub_266A46810();
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_266A2AFE8(v19);
    v18 = *(v3 + *(v9 + 24));
    v17[7] = 2;
    sub_266A3B000();
    sub_266A46810();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SiriCountsAll.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_266A461E0();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEC28, &qword_266A474C8);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v21 - v6;
  v8 = type metadata accessor for SiriCountsAll(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3AF64();
  sub_266A468F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v10;
  v22 = a1;
  LOBYTE(v29) = 0;
  sub_266A3AFB8(&qword_2800AEC30, MEMORY[0x277D04450], MEMORY[0x277D04470]);
  v14 = v26;
  v13 = v27;
  sub_266A467B0();
  (*(v11 + 32))(v21, v14, v4);
  v35 = 1;
  sub_266A2B610();
  sub_266A467B0();
  v15 = &v21[*(v8 + 20)];
  v16 = v32;
  *(v15 + 2) = v31;
  *(v15 + 3) = v16;
  *(v15 + 4) = v33;
  v17 = v30;
  *v15 = v29;
  *(v15 + 1) = v17;
  v34 = 2;
  sub_266A3B054();
  sub_266A467B0();
  (*(v12 + 8))(v7, v13);
  v18 = *(v8 + 24);
  v19 = v21;
  *&v21[v18] = v28;
  sub_266A3B0A8(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_266A3B10C(v19);
}

uint64_t SiriCoreMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SiriCoreMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t _s15SiriCoreMetrics017DynamicDimensionsabC0V23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266A46840() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_266A46840();
}

unint64_t sub_266A3A414()
{
  result = qword_2800AEBF0;
  if (!qword_2800AEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEBF0);
  }

  return result;
}

BOOL _s15SiriCoreMetrics0A9CountsAllV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_266A461D0() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for SiriCountsAll(0);
  v4 = *(v29 + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v7 = *(a1 + v4 + 24);
  v9 = *(a1 + v4 + 32);
  v10 = *(a1 + v4 + 40);
  v36 = *(a1 + v4 + 56);
  v37 = *(a1 + v4 + 48);
  v32 = *(a1 + v4 + 72);
  v33 = *(a1 + v4 + 64);
  v11 = (a2 + v4);
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];
  v15 = v11[5];
  v34 = v11[7];
  v35 = v11[6];
  v30 = v11[9];
  v31 = v11[8];
  v16 = v5 == *v11 && v6 == v11[1];
  if (!v16 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v17 = v8 == v12 && v7 == v13;
  if (!v17 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v18 = v9 == v14 && v10 == v15;
  if (!v18 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v19 = v37 == v35 && v36 == v34;
  if (!v19 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v20 = v33 == v31 && v32 == v30;
  if (!v20 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v29 + 24);
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  return v23 == v26 && v22 == v25;
}

BOOL _s15SiriCoreMetrics0abC15AggregationKeysV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_266A461D0())
  {
    v4 = *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = *(a1 + v4 + 16);
    v8 = *(a1 + v4 + 24);
    v9 = *(a1 + v4 + 32);
    v10 = *(a1 + v4 + 40);
    v28 = *(a1 + v4 + 56);
    v29 = *(a1 + v4 + 48);
    v26 = *(a1 + v4 + 72);
    v27 = *(a1 + v4 + 64);
    v11 = (a2 + v4);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    v16 = v11[6];
    v17 = v11[7];
    v24 = v11[9];
    v25 = v11[8];
    v18 = v5 == *v11 && v6 == v11[1];
    if (v18 || (sub_266A46840() & 1) != 0)
    {
      v19 = v7 == v12 && v8 == v13;
      if (v19 || (sub_266A46840() & 1) != 0)
      {
        v20 = v9 == v14 && v10 == v15;
        if (v20 || (sub_266A46840() & 1) != 0)
        {
          v21 = v29 == v16 && v28 == v17;
          if (v21 || (sub_266A46840() & 1) != 0)
          {
            v22 = v27 == v25 && v26 == v24;
            if (v22 || (sub_266A46840() & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_266A3A738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75706E4969726973 && a2 == 0xEF656C61636F4C74;
  if (v4 || (sub_266A46840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE800000000000000 || (sub_266A46840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E496F69647561 && a2 == 0xEE00656361667265 || (sub_266A46840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746375646F7270 && a2 == 0xE700000000000000 || (sub_266A46840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000266A48D50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_266A46840();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_266A3A900@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECC8, &qword_266A47C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3A414();
  sub_266A468F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_266A467A0();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_266A467A0();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_266A467A0();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_266A467A0();
  v27 = v14;
  v37 = 4;
  v15 = sub_266A467A0();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  sub_266A2AF38(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  result = sub_266A2AFE8(v36);
  v22 = v34;
  a2[2] = v33;
  a2[3] = v22;
  a2[4] = v35;
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  return result;
}

unint64_t sub_266A3ACD8()
{
  result = qword_2800AEC00;
  if (!qword_2800AEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC00);
  }

  return result;
}

unint64_t sub_266A3AD2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECC0, &qword_266A47C30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3ACD8();
  sub_266A468F0();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10[15] = 0;
  v7 = sub_266A467C0();
  v10[14] = 1;
  v8 = sub_266A467C0();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7 | (v8 << 32);
}

uint64_t sub_266A3AEF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266A3AF64()
{
  result = qword_2800AEC10;
  if (!qword_2800AEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC10);
  }

  return result;
}

uint64_t sub_266A3AFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266A3B000()
{
  result = qword_2800AEC20;
  if (!qword_2800AEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC20);
  }

  return result;
}

unint64_t sub_266A3B054()
{
  result = qword_2800AEC38;
  if (!qword_2800AEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC38);
  }

  return result;
}

uint64_t sub_266A3B0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriCountsAll(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A3B10C(uint64_t a1)
{
  v2 = type metadata accessor for SiriCountsAll(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266A3B16C()
{
  result = qword_2800AEC40;
  if (!qword_2800AEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC40);
  }

  return result;
}

unint64_t sub_266A3B1C4()
{
  result = qword_2800AEC48;
  if (!qword_2800AEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC48);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_266A3B28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266A3B2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266A3B368(uint64_t a1)
{
  result = sub_266A461E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriRequestCounts(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriRequestCounts(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266A461E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266A461E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266A3B5E4(uint64_t a1)
{
  result = sub_266A461E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_266A3B67C(uint64_t *a1, int a2)
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

uint64_t sub_266A3B6C4(uint64_t result, int a2, int a3)
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

uint64_t sub_266A3B724(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_266A3B7B8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriRequestCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriRequestCounts.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DynamicDimensionsSiriCoreMetrics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicDimensionsSiriCoreMetrics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A3BB28()
{
  result = qword_2800AEC78;
  if (!qword_2800AEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC78);
  }

  return result;
}

unint64_t sub_266A3BB80()
{
  result = qword_2800AEC80;
  if (!qword_2800AEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC80);
  }

  return result;
}

unint64_t sub_266A3BBD8()
{
  result = qword_2800AEC88;
  if (!qword_2800AEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC88);
  }

  return result;
}

unint64_t sub_266A3BC30()
{
  result = qword_2800AEC90;
  if (!qword_2800AEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC90);
  }

  return result;
}

unint64_t sub_266A3BC88()
{
  result = qword_2800AEC98;
  if (!qword_2800AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC98);
  }

  return result;
}

unint64_t sub_266A3BCE0()
{
  result = qword_2800AECA0;
  if (!qword_2800AECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECA0);
  }

  return result;
}

unint64_t sub_266A3BD38()
{
  result = qword_2800AECA8;
  if (!qword_2800AECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECA8);
  }

  return result;
}

unint64_t sub_266A3BD90()
{
  result = qword_2800AECB0;
  if (!qword_2800AECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECB0);
  }

  return result;
}

unint64_t sub_266A3BDE8()
{
  result = qword_2800AECB8;
  if (!qword_2800AECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECB8);
  }

  return result;
}

uint64_t sub_266A3BE3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000266A48D90 == a2 || (sub_266A46840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL || (sub_266A46840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374736575716572 && a2 == 0xED000073746E756FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_266A46840();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SiriCoreMetricsSELFReporter.odmId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v4 = sub_266A46040();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_266A3C0E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t SiriCoreMetricsSELFReporter.__allocating_init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores) = v5;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v4 + v6, a1, v7);
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v9 = sub_266A46040();
  (*(*(v9 - 8) + 32))(v4 + v8, a2, v9);
  return v4;
}

uint64_t SiriCoreMetricsSELFReporter.init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores) = v5;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v9 = sub_266A46040();
  (*(*(v9 - 8) + 32))(v2 + v8, a2, v9);
  return v2;
}

uint64_t SiriCoreMetricsSELFReporter.report(_:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_266A46040();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A3C420, 0, 0);
}

uint64_t sub_266A3C420()
{
  v1 = v0[9];
  v2 = _s15SiriCoreMetrics0abC20SELFMessageConverterO28convertToODMSiriClientEvents17countsReportedAll17twoByThreeResults5odmId6loggerSaySo0h6SchemahI5EventCGSDy11DeepThought19AggregationIntervalVSayAA0a6CountsM0VGG_SDyAnA03TwooP7SegmentOG10Foundation4UUIDV2os6LoggerVtFZ_0(*(v0[8] + 8), *(v0[8] + 40), v1 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId, v1 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    v40 = *(v1 + v3);
    result = sub_266A46730();
    v5 = v40;
    v6 = result;
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      return result;
    }

    v41 = v0;
    v44 = v5 & 0xC000000000000001;
    v7 = v5;

    v8 = objc_opt_self();
    v9 = v7;
    v10 = v8;
    v11 = 0;
    v12 = v7;
    v13 = v6;
    do
    {
      if (v44)
      {
        v14 = MEMORY[0x26D5E6A00](v11, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = [v10 sharedAnalytics];
      v17 = [v16 defaultMessageStream];

      v18 = v15;
      v19 = sub_266A464F0();
      v20 = sub_266A46680();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_266A29000, v19, v20, "SELF reporter: reported task with message = %@", v21, 0xCu);
        sub_266A38274(v22, &qword_2800AECD8, &qword_266A47D50);
        MEMORY[0x26D5E7060](v22, -1, -1);
        MEMORY[0x26D5E7060](v21, -1, -1);
      }

      ++v11;

      [v17 emitMessage_];
      v9 = v12;
    }

    while (v13 != v11);

    v0 = v41;
  }

  v24 = *v0[8];
  v25 = *(v24 + 16);
  if (v25)
  {
    v42 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores;
    v26 = (v24 + 32);
    v45 = (v0[11] + 8);
    v43 = v0[9];
    do
    {
      v28 = v0[12];
      v29 = *v26;

      _s15SiriCoreMetricsAAC5odmId10Foundation4UUIDVvpfi_0();
      v30 = _s15SiriCoreMetrics0abC20SELFMessageConverterO27convertToODMSiriClientEvent21processedConversation5odmId6loggerSo0h6SchemahiJ0CSgAA09ProcessedaL0V_10Foundation4UUIDV2os6LoggerVtFZ_0(v29, v28);

      if (v30)
      {
        v31 = [objc_opt_self() sharedAnalytics];
        v32 = [v31 defaultMessageStream];

        v33 = v30;
        v34 = sub_266A464F0();
        v35 = sub_266A46680();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          *(v36 + 4) = v33;
          *v37 = v30;
          v38 = v33;
          _os_log_impl(&dword_266A29000, v34, v35, "SELF reporter: reported task with message = %@", v36, 0xCu);
          sub_266A38274(v37, &qword_2800AECD8, &qword_266A47D50);
          MEMORY[0x26D5E7060](v37, -1, -1);
          MEMORY[0x26D5E7060](v36, -1, -1);
        }

        [v32 emitMessage_];
        swift_beginAccess();
        v27 = v33;
        MEMORY[0x26D5E68F0]();
        if (*((*(v43 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v43 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_266A46610();
        }

        sub_266A46630();
        swift_endAccess();
      }

      (*v45)(v0[12], v0[10]);
      ++v26;
      --v25;
    }

    while (v25);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_266A3C944()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v2 = sub_266A46040();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

uint64_t SiriCoreMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v2 = sub_266A46040();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SiriCoreMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v2 = sub_266A46040();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v5 = sub_266A46510();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

void sub_266A3CBF0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_266A3CC64(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D594D8]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D594B0]) init];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277D594F8]) init];
      if (v6)
      {
        v7 = v6;
        v8 = type metadata accessor for SiriCountsAll(0);
        v9 = MEMORY[0x26D5E64F0](*(a1 + *(v8 + 20)), *(a1 + *(v8 + 20) + 8));
        [v5 setSiriInputLocale_];

        v10 = sub_266A46570();
        if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_UNKNOWN"])
        {
          v11 = 0;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_COMPACT"])
        {
          v11 = 1;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_TV"])
        {
          v11 = 2;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_BLUETOOTH_CAR"])
        {
          v11 = 3;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_EYES_FREE"])
        {
          v11 = 4;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_CARPLAY"])
        {
          v11 = 5;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_VOX"])
        {
          v11 = 6;
        }

        else if ([v10 isEqualToString:@"ODMSIRIUIVIEWMODE_NOT_APPLICABLE"])
        {
          v11 = 7;
        }

        else
        {
          v11 = 0;
        }

        [v5 setViewMode_];
        v14 = sub_266A46570();
        if ([v14 isEqualToString:@"AUDIOINPUTROUTE_UNKNOWN"])
        {
          v15 = 0;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_DEVICE"])
        {
          v15 = 1;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH"])
        {
          v15 = 3;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH"])
        {
          v15 = 4;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_APPLE_WIRED"])
        {
          v15 = 5;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_WIRED"])
        {
          v15 = 6;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_CARPLAY"])
        {
          v15 = 7;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_DO_AP_DEVICE"])
        {
          v15 = 8;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_DO_AP_DEVICE"])
        {
          v15 = 9;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v15 = 10;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v15 = 11;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_USB_AUDIO"])
        {
          v15 = 12;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_SIRI_ACCESSORY"])
        {
          v15 = 13;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_AUDIO_INJECTION"])
        {
          v15 = 14;
        }

        else if ([v14 isEqualToString:@"AUDIOINPUTROUTE_DARWIN"])
        {
          v15 = 15;
        }

        else
        {
          v15 = 0;
        }

        [v5 setAudioInterface_];
        v16 = sub_266A46570();
        if ([v16 isEqualToString:@"PRODUCT_UNKNOWN"])
        {
          v17 = 0;
        }

        else if ([v16 isEqualToString:@"PRODUCT_ASSISTANT"])
        {
          v17 = 1;
        }

        else if ([v16 isEqualToString:@"PRODUCT_DICTATION"])
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        [v5 setProduct_];
        v18 = sub_266A46570();
        if ([v18 isEqualToString:@"UNKNOWN"])
        {
          v19 = 0;
        }

        else if ([v18 isEqualToString:@"OPTED_IN"])
        {
          v19 = 1;
        }

        else if ([v18 isEqualToString:@"OPTED_OUT"])
        {
          v19 = 2;
        }

        else if ([v18 isEqualToString:@"DISMISSED"])
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        [v5 setSiriDataSharingOptInStatus_];
        v20 = (a1 + *(v8 + 24));
        [v7 setAllRequestCount:*v20];
        [v7 setUserRequestCount:v20[1]];
        [v3 setDimensions_];
        [v3 setRequestCounts_];

        goto LABEL_75;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  v7 = sub_266A464F0();
  v12 = sub_266A46690();
  if (os_log_type_enabled(v7, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_266A29000, v7, v12, "Unable to create ODMSiriSchemaODMSiriCountsAll SELF message", v13, 2u);
    MEMORY[0x26D5E7060](v13, -1, -1);
  }

  v3 = 0;
LABEL_75:

  return v3;
}