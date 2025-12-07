void *sub_2680DF5E8@<X0>(void *a1@<X8>)
{
  v3 = sub_2680E167C();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &__src[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2680E162C();
  v9 = sub_2680E168C();
  if (v1)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v12 = v9;
  v13 = v10;
  sub_2680E15FC();
  swift_allocObject();
  sub_2680E15EC();
  sub_2680DFD80();
  sub_2680E15DC();
  (*(v5 + 8))(v8, v3);

  sub_2680DCAC4(v12, v13);
  return memcpy(a1, __src, 0x48uLL);
}

uint64_t sub_2680DF7BC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2680DF818(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2680DF944(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2680D4E84(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2680DF944(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2680DFA44(a5, a6);
    *a1 = v9;
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
    result = sub_2680E1E8C();
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

void *sub_2680DFA44(uint64_t a1, unint64_t a2)
{
  v3 = sub_2680DFA90(a1, a2);
  sub_2680DFBA8(&unk_2878F35E8);
  return v3;
}

void *sub_2680DFA90(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_2680E1C9C())
  {
    result = sub_2680C9824(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2680E1E6C();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_2680E1E8C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_2680DFBA8(uint64_t result)
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

    result = sub_2680DFC8C(result, v7, 1, v3);
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

char *sub_2680DFC8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B0, &qword_2680E4350);
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

unint64_t sub_2680DFD80()
{
  result = qword_28024A450;
  if (!qword_28024A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A450);
  }

  return result;
}

uint64_t sub_2680DFDD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2680DFE2C(void *a1)
{
  v2 = [a1 usages];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2680E1B5C();

  return v3;
}

uint64_t sub_2680DFEA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2680DFEE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2680DFF44()
{
  result = qword_28024A460;
  if (!qword_28024A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A460);
  }

  return result;
}

unint64_t sub_2680DFF98()
{
  result = qword_28024A468;
  if (!qword_28024A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogAssetDelivery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680E00B8);
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

unint64_t sub_2680E00F4()
{
  result = qword_28024A470;
  if (!qword_28024A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A470);
  }

  return result;
}

unint64_t sub_2680E014C()
{
  result = qword_28024A478;
  if (!qword_28024A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A478);
  }

  return result;
}

unint64_t sub_2680E01A4()
{
  result = qword_28024A480;
  if (!qword_28024A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A480);
  }

  return result;
}

void OUTLINED_FUNCTION_4_9()
{

  JUMPOUT(0x26D611870);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return MEMORY[0x2821FDA28](a1, v3 - 232, v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_2680C94A4();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_18_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_2680C94A4();
}

BOOL OUTLINED_FUNCTION_20_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2680E0374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2680D7A84(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v16 = *v4;
      v17 = v5;
      v6 = v4[3];
      v18 = v4[2];
      v19 = v6;
      sub_2680E1208(&v16, &v13);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2680D7A84((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      v14 = &type metadata for UserDefaultsDialogHistoryEntry;
      v15 = &off_2878F42C8;
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v17;
      v9[1] = v16;
      v9[2] = v10;
      v11 = v19;
      v9[3] = v18;
      v9[4] = v11;
      *(v2 + 16) = v8 + 1;
      sub_2680C2CD8(&v13, v2 + 40 * v8 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2680E04A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2680D7AE4(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_2680D5D2C(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2680D7AE4((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &unk_2878F46F8;
      v10 = &off_2878F4820;
      *&v8 = swift_allocObject();
      sub_2680D5D2C(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_2680C2CD8(&v8, v2 + 40 * v6 + 32);
      sub_2680D5D88(v11);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2680E05D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2680D7B84(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_2680E12EC(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024A490, &qword_2680E4608);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A360, &unk_2680E4610);
      swift_dynamicCast();
      v14 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2680D7B84((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v6 + 1;
      v7 = (v2 + 48 * v6);
      v8 = v12;
      v9 = v13[0];
      *(v7 + 60) = *(v13 + 12);
      v7[2] = v8;
      v7[3] = v9;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t NLGDialogScorerType.hashValue.getter()
{
  v1 = *v0;
  sub_2680E1FEC();
  MEMORY[0x26D611340](v1);
  return sub_2680E200C();
}

uint64_t static NLGDialogScorers.createTFIDFScorer(query:localeIdentifier:stopWords:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = sub_2680E17BC();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v15 - v14;

  sub_2680E170C();
  type metadata accessor for MorphunTokenizer(0);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration16MorphunTokenizer_locale, v16, v10);
  type metadata accessor for CosineSimilarity();
  v18 = swift_allocObject();

  v19 = sub_2680E0DA4(a1, a2, a5, v17, v18);
  v20 = type metadata accessor for TFIDFScorer();
  v30[3] = v20;
  v30[4] = &off_2878F3760;
  v30[0] = v19;
  v21 = type metadata accessor for DialogScorer();
  v22 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v30, v20);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_1();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v26;
  *(v22 + 40) = v20;
  *(v22 + 48) = &off_2878F3760;
  *(v22 + 16) = v28;
  *(v22 + 56) = sub_2680E0A1C;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  a6[3] = v21;
  a6[4] = &off_2878F4218;

  *a6 = v22;
  return result;
}

uint64_t sub_2680E0A1C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 16))(v7, v1, v2);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5;
}

uint64_t static NLGDialogScorers.createTFIDFScorer(query:localeIdentifier:stopWords:using:overwriteSimilarityScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>)
{
  v14 = sub_2680E17BC();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  v20 = v19 - v18;

  sub_2680E170C();
  type metadata accessor for MorphunTokenizer(0);
  v21 = swift_allocObject();
  (*(v16 + 32))(v21 + OBJC_IVAR____TtC29SiriNaturalLanguageGeneration16MorphunTokenizer_locale, v20, v14);
  type metadata accessor for CosineSimilarity();
  v22 = swift_allocObject();

  v23 = sub_2680E0DA4(a1, a2, a5, v21, v22);
  v24 = type metadata accessor for TFIDFScorer();
  v36[3] = v24;
  v36[4] = &off_2878F3760;
  v36[0] = v23;
  v25 = type metadata accessor for DialogScorer();
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v36, v24);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  v30 = (v29 - v28);
  (*(v31 + 16))(v29 - v28);
  v32 = *v30;
  *(v26 + 40) = v24;
  *(v26 + 48) = &off_2878F3760;
  *(v26 + 16) = v32;
  *(v26 + 56) = a6;
  *(v26 + 64) = a7;
  *(v26 + 72) = a8;

  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  a9[3] = v25;
  a9[4] = &off_2878F4218;

  *a9 = v26;
  return result;
}

uint64_t static NLGDialogScorers.createWeightedScorer(adding:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeightedDialogScorer();
  v5 = swift_allocObject();
  result = sub_2680E05D4(a1);
  *(v5 + 16) = result;
  a2[3] = v4;
  a2[4] = &off_2878F4208;
  *a2 = v5;
  return result;
}

void *sub_2680E0DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MorphunTokenizer(0);
  v27[3] = v10;
  v27[4] = &off_2878F43A0;
  v27[0] = a4;
  v11 = type metadata accessor for CosineSimilarity();
  v25 = v11;
  v26 = &off_2878F3750;
  v24[0] = a5;
  type metadata accessor for TFIDFScorer();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x28223BE20](v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[8] = v10;
  v12[9] = &off_2878F43A0;
  v12[10] = v22;
  v12[13] = v11;
  v12[14] = &off_2878F3750;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v21;
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v12;
}

unint64_t sub_2680E0FB4()
{
  result = qword_28024A488;
  if (!qword_28024A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A488);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLGDialogScorerType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680E10FCLL);
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

_BYTE *storeEnumTagSinglePayload for NLGDialogScorers(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2680E11D0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2680E1264()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2680E12B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 60, 7);
}

uint64_t sub_2680E12EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024A490, &qword_2680E4608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2680E1380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_2680E13C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29SiriNaturalLanguageGeneration15NLGDialogSourceOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2680E1438(uint64_t a1, int a2)
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

uint64_t sub_2680E1478(uint64_t result, int a2, int a3)
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

uint64_t sub_2680E14E8()
{
  v1 = *v0;

  return v1;
}

void sub_2680E1538(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_2680D4518(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2680E1554()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2680E1584()
{
  v1 = *(v0 + 32);

  return v1;
}