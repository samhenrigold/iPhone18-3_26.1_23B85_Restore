uint64_t createEmbedder(embedderName:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a1;
  *(v4 + 72) = *a2;
  return MEMORY[0x2822009F8](sub_275218C44, 0, 0);
}

uint64_t sub_275218C44()
{
  if (*(v0 + 72))
  {
    if (*(v0 + 72) == 1)
    {
      v1 = swift_task_alloc();
      *(v0 + 64) = v1;
      *v1 = v0;
      v1[1] = sub_275218DE0;

      return NLContextualEmbedder.init(useRecognizer:xpcCall:)(v0 + 16, 0);
    }

    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = [objc_opt_self() service];
    v7[3] = &type metadata for MADTextEmbedder;
    v7[4] = &protocol witness table for MADTextEmbedder;
    *v7 = v8;
    v7[1] = v5;
    v7[2] = v6;
  }

  else
  {
    v3 = *(v0 + 40);
    *(v3 + 24) = &type metadata for NLEmbedder;
    *(v3 + 32) = &protocol witness table for NLEmbedder;
    v4 = *MEMORY[0x277CD8708];
    *v3 = *MEMORY[0x277CD8708];
    *(v3 + 16) = [objc_opt_self() sentenceEmbeddingForLanguage_];
    *(v3 + 8) = 0;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_275218DE0()
{

  return MEMORY[0x2822009F8](sub_275218EDC, 0, 0);
}

uint64_t sub_275218EDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 24);
    *(v2 + 24) = &type metadata for NLContextualEmbedder;
    *(v2 + 32) = &protocol witness table for NLContextualEmbedder;
    *v2 = v1;
    *(v2 + 8) = v4 & 1;
    *(v2 + 16) = v3;
  }

  else
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  return (*(v0 + 8))();
}

uint64_t sub_275218F98(uint64_t a1, id *a2)
{
  result = sub_27522F99C();
  *a2 = 0;
  return result;
}

uint64_t sub_275219010(uint64_t a1, id *a2)
{
  v3 = sub_27522F9AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_275219090@<X0>(uint64_t *a1@<X8>)
{
  sub_27522F9BC();
  v2 = sub_27522F98C();

  *a1 = v2;
  return result;
}

BOOL sub_275219110(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_275219140@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_27521916C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_275219268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27522F9BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2752192A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_275219A14(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2752192E8(uint64_t a1)
{
  v2 = sub_275219434(&qword_2809B39C0, type metadata accessor for NLLanguage, &unk_27523086C);
  v3 = sub_275219434(&qword_2809B39C8, type metadata accessor for NLLanguage, &unk_27523080C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275219434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2752194C4(uint64_t a1)
{
  v2 = sub_275219434(&qword_2809B3A50, type metadata accessor for DocumentReadingOptionKey, &unk_275230EF4);
  v3 = sub_275219434(&qword_2809B3A58, type metadata accessor for DocumentReadingOptionKey, &unk_275230BBC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275219580(uint64_t a1)
{
  v2 = sub_275219434(&qword_2809B3A40, type metadata accessor for DocumentType, &unk_275230D14);
  v3 = sub_275219434(&qword_2809B3A48, type metadata accessor for DocumentType, &unk_275230CBC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27521963C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_27522F98C();

  *a2 = v3;
  return result;
}

uint64_t sub_275219684(uint64_t a1)
{
  v2 = sub_275219434(&qword_2809B3A30, type metadata accessor for ECMessageHeaderKey, &unk_275230E64);
  v3 = sub_275219434(&qword_2809B3A38, type metadata accessor for ECMessageHeaderKey, &unk_275230E04);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_275219740@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_275219888()
{
  v0 = sub_27522F9BC();
  v1 = MEMORY[0x277C6E4F0](v0);

  return v1;
}

uint64_t sub_2752198C4(uint64_t a1)
{
  sub_27522F9BC();
  sub_27522F92C();
}

uint64_t sub_275219918(uint64_t a1)
{
  sub_27522F9BC();
  sub_27522FEFC();
  sub_27522F92C();
  v1 = sub_27522FF1C();

  return v1;
}

uint64_t sub_27521998C(void *a1, uint64_t *a2)
{
  v2 = sub_27522F9BC();
  v4 = v3;
  if (v2 == sub_27522F9BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27522FEBC();
  }

  return v7 & 1;
}

uint64_t sub_275219A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_275219A88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t VocabularyScores.scores.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_275219DF0()
{
  sub_27522FEFC();
  MEMORY[0x277C6E900](0);
  return sub_27522FF1C();
}

uint64_t sub_275219E5C(uint64_t a1)
{
  sub_27522FEFC();
  MEMORY[0x277C6E900](0);
  return sub_27522FF1C();
}

uint64_t sub_275219EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365726F6373 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27522FEBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_275219F4C(uint64_t a1)
{
  v2 = sub_27521A1F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275219F88(uint64_t a1)
{
  v2 = sub_27521A1F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VocabularyScores.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B20, &qword_275230F40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27521A1F0();

  sub_27522FF3C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B30, &qword_275230F48);
  sub_27521A438(&qword_2809B3B38, MEMORY[0x277D837D8], MEMORY[0x277D83AA0], MEMORY[0x277D83508]);
  sub_27522FE7C();

  return (*(v4 + 8))(v6, v3);
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

unint64_t sub_27521A1F0()
{
  result = qword_2809B3B28;
  if (!qword_2809B3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3B28);
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

uint64_t VocabularyScores.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B40, &qword_275230F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27521A1F0();
  sub_27522FF2C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B30, &qword_275230F48);
    sub_27521A438(&qword_2809B3B48, MEMORY[0x277D83808], MEMORY[0x277D83AC8], MEMORY[0x277D83528]);
    sub_27522FE6C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_27521A438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809B3B30, &qword_275230F48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SentencePienceTokenizer.modelPath.getter()
{
  v1 = *v0;

  return v1;
}

double SentencePienceTokenizer.init(modelPath:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x277D4D3A0]);

  v7 = sub_27522F98C();
  v8 = [v6 initWithModelPath_];

  if (v8)
  {

    v9 = [v8 pieceSize];
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v9;
    a3[3] = v8;
  }

  else
  {
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v11 = sub_27522F87C();
    __swift_project_value_buffer(v11, qword_2809B5470);

    v12 = sub_27522F85C();
    v13 = sub_27522FC8C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_27521AF64(a1, a2, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_275217000, v12, v13, "Failed to load SentencePiece model from %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x277C6EE90](v15, -1, -1);
      MEMORY[0x277C6EE90](v14, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

Swift::Int __swiftcall SentencePienceTokenizer.id(for:)(Swift::String a1)
{
  v2 = *(v1 + 24);
  v3 = sub_27522F98C();
  v4 = [v2 idFrom_];

  return v4;
}

Swift::String __swiftcall SentencePienceTokenizer.piece(for:)(Swift::Int a1)
{
  v2 = [*(v1 + 24) pieceFrom_];
  v3 = sub_27522F9BC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void *SentencePienceTokenizer.vocabulary()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_27521C508(MEMORY[0x277D84F90]);
  if (v2 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_27522FEDC();
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = [v1 pieces];
    v6 = sub_27522FB7C();

    if (v2)
    {
      v7 = 0;
      v8 = *(v6 + 16);
      v9 = (v6 + 40);
      while (1)
      {
        if (v8 == v7)
        {
          goto LABEL_18;
        }

        if (v7 >= *(v6 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = *(v9 - 1);
        v11 = *v9;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_27521B558(v7);
        v16 = v4[2];
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_20;
        }

        v20 = v15;
        if (v4[3] < v19)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v25 = v14;
        sub_27521C05C();
        v14 = v25;
        if (v20)
        {
LABEL_4:
          v10 = (v4[7] + 16 * v14);
          *v10 = v12;
          v10[1] = v11;

          goto LABEL_5;
        }

LABEL_14:
        v4[(v14 >> 6) + 8] |= 1 << v14;
        *(v4[6] + 8 * v14) = v7;
        v22 = (v4[7] + 16 * v14);
        *v22 = v12;
        v22[1] = v11;
        v23 = v4[2];
        v18 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v18)
        {
          goto LABEL_21;
        }

        v4[2] = v24;
LABEL_5:
        ++v7;
        v9 += 2;
        if (v2 == v7)
        {
          goto LABEL_18;
        }
      }

      sub_27521B6A0(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_27521B558(v7);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_18:

    return v4;
  }

  return result;
}

void *SentencePienceTokenizer.invertedVocabulary()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_27521C61C(MEMORY[0x277D84F90]);
  if (v2 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_27522FEDC();
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = [v1 pieces];
    v6 = sub_27522FB7C();

    if (v2)
    {
      v7 = 0;
      v8 = *(v6 + 16);
      v9 = (v6 + 40);
      while (1)
      {
        if (v8 == v7)
        {
          goto LABEL_18;
        }

        if (v7 >= *(v6 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = *(v9 - 1);
        v11 = *v9;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_27521B594(v12, v11);
        v16 = v4[2];
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_20;
        }

        v20 = v15;
        if (v4[3] < v19)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v25 = v14;
        sub_27521C1C4();
        v14 = v25;
        if (v20)
        {
LABEL_4:
          v10 = v14;

          *(v4[7] + 8 * v10) = v7;
          goto LABEL_5;
        }

LABEL_14:
        v4[(v14 >> 6) + 8] |= 1 << v14;
        v22 = (v4[6] + 16 * v14);
        *v22 = v12;
        v22[1] = v11;
        *(v4[7] + 8 * v14) = v7;
        v23 = v4[2];
        v18 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v18)
        {
          goto LABEL_21;
        }

        v4[2] = v24;
LABEL_5:
        ++v7;
        v9 += 2;
        if (v2 == v7)
        {
          goto LABEL_18;
        }
      }

      sub_27521B924(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_27521B594(v12, v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_18:

    return v4;
  }

  return result;
}

uint64_t SentencePienceTokenizer.encodeAsTokens(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_27522F98C();
  v5 = [v3 encodeAsTokensFrom_];

  v6 = sub_27522FB7C();
  return v6;
}

char *SentencePienceTokenizer.encodeAsIDs(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_27522F98C();
  v5 = [v3 encodeAsIDsFrom_];

  sub_27521C718();
  v6 = sub_27522FB7C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v7 = sub_27522FE0C();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_27521C488(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C6E790](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 integerValue];

      v15 = *(v16 + 16);
      v14 = *(v16 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_27521C488((v14 > 1), v15 + 1, 1);
      }

      ++v9;
      *(v16 + 16) = v15 + 1;
      *(v16 + 8 * v15 + 32) = v13;
    }

    while (v7 != v9);

    return v10;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall SentencePienceTokenizer.decodeAsText(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 24);
  sub_27521AE0C(a1._rawValue);
  sub_27521C718();
  v3 = sub_27522FB6C();

  v4 = [v2 decodeFromIDs_];

  v5 = sub_27522F9BC();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

{
  v2 = *(v1 + 24);
  v3 = sub_27522FB6C();
  v4 = [v2 decodeFromTokens_];

  v5 = sub_27522F9BC();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_27521AE0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_27522FDDC();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_27522FC1C();
      sub_27522FDBC();
      sub_27522FDEC();
      sub_27522FDFC();
      sub_27522FDCC();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_27521AF64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_27521B07C(v11, 0, 0, 1, a1, a2);
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
    sub_27521CC24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

unint64_t sub_27521B07C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_27521B188(a5, a6);
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
    result = sub_27522FDAC();
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

void *sub_27521B188(uint64_t a1, unint64_t a2)
{
  v3 = sub_27521B1D4(a1, a2);
  sub_27521B304(&unk_2883FBDB0);
  return v3;
}

void *sub_27521B1D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_27521B3F0(v5, 0);
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

  result = sub_27522FDAC();
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
        v10 = sub_27522FACC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_27521B3F0(v10, 0);
        result = sub_27522FD6C();
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

uint64_t sub_27521B304(uint64_t result)
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

  result = sub_27521B464(result, v11, 1, v3);
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

void *sub_27521B3F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B98, &qword_275231650);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_27521B464(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B98, &qword_275231650);
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

unint64_t sub_27521B594(uint64_t a1, uint64_t a2)
{
  sub_27522FEFC();
  sub_27522F92C();
  v4 = sub_27522FF1C();

  return sub_27521BE34(a1, a2, v4);
}

unint64_t sub_27521B60C(uint64_t a1)
{
  sub_27522F9BC();
  sub_27522FEFC();
  sub_27522F92C();
  v2 = sub_27522FF1C();

  return sub_27521BEEC(a1, v2);
}

uint64_t sub_27521B6A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B90, &unk_275231180);
  v34 = v4;
  result = sub_27522FE2C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_27522FEEC();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_27521B924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B88, &qword_275231178);
  v34 = v4;
  result = sub_27522FE2C();
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

      sub_27522FEFC();
      sub_27522F92C();
      result = sub_27522FF1C();
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

uint64_t sub_27521BBC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B70, &qword_275231160);
  result = sub_27522FE2C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_27522FEEC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_27521BE34(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_27522FEBC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_27521BEEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_27522F9BC();
      v8 = v7;
      if (v6 == sub_27522F9BC() && v8 == v9)
      {
        break;
      }

      v11 = sub_27522FEBC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_27521BFF0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_27521C05C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B90, &unk_275231180);
  v2 = *v0;
  v3 = sub_27522FE1C();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_27521C1C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B88, &qword_275231178);
  v2 = *v0;
  v3 = sub_27522FE1C();
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

void *sub_27521C32C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B70, &qword_275231160);
  v2 = *v0;
  v3 = sub_27522FE1C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_27521C488(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27522CD2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27521C4A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27522CE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27521C4C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27522CF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27521C4E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27522D040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27521C508(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B90, &unk_275231180);
  v3 = sub_27522FE3C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_27521B558(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_27521B558(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_27521C61C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B88, &qword_275231178);
    v3 = sub_27522FE3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27521B594(v5, v6);
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

unint64_t sub_27521C718()
{
  result = qword_2809B3B50;
  if (!qword_2809B3B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809B3B50);
  }

  return result;
}

uint64_t sub_27521C770(uint64_t *a1, int a2)
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

uint64_t sub_27521C7B8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27521C810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_27521C858(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VocabularyScores.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VocabularyScores.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_27521C998()
{
  result = qword_2809B3B58;
  if (!qword_2809B3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3B58);
  }

  return result;
}

unint64_t sub_27521C9F0()
{
  result = qword_2809B3B60;
  if (!qword_2809B3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3B60);
  }

  return result;
}

unint64_t sub_27521CA48()
{
  result = qword_2809B3B68;
  if (!qword_2809B3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3B68);
  }

  return result;
}

unint64_t sub_27521CA9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B78, &qword_275231168);
    v3 = sub_27522FE3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_27521CBA4(v4, &v11);
      v5 = v11;
      result = sub_27521B60C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_27521CC14(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_27521CBA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B80, &qword_275231170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_27521CC14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27521CC24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27521CC88()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_27521CCE8(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_27521CCE8(uint64_t a1)
{
  v1 = sub_27522F66C();
  MEMORY[0x28223BE20](v1 - 8);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BC8, &qword_275231230);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v21 = sub_27522F70C();
  v6 = *(v21 - 8);
  v7 = MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BD0, &qword_275231238);
  v12 = sub_27522F68C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2752311A0;

  sub_27522F67C();
  result = (*(v13 + 48))(v5, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v15 + v14, v5, v12);
    sub_27522F65C();
    v17 = [objc_opt_self() processInfo];
    [v17 processIdentifier];

    sub_27522F6FC();
    v18 = v21;
    (*(v6 + 16))(v9, v11, v21);
    sub_27522F64C();
    swift_allocObject();
    v19 = sub_27522F62C();
    (*(v6 + 8))(v11, v18);
    return v19;
  }

  return result;
}

void *TokenGeneratorBase.__allocating_init(modelIdentifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *TokenGeneratorBase.init(modelIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t sub_27521D0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BA0, &qword_2752311C8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = sub_27522F6EC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BA8, &qword_2752311D0);
  v5[14] = swift_task_alloc();
  v7 = sub_27522F76C();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BB0, &qword_2752311D8);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27521D2B4, 0, 0);
}

uint64_t sub_27521D2B4()
{
  v17 = v0[17];
  v24 = v0[16];
  v25 = v0[15];
  v18 = v0[14];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v15 = v0[6];
  v16 = v0[7];
  v1 = v0[4];
  v14 = v0[5];
  sub_27521CC88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BB8, &qword_2752311E0);
  sub_27522F75C();
  *(swift_allocObject() + 16) = xmmword_2752311B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BC0, &qword_2752311E8);
  v2 = *(sub_27522F74C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2752311A0;
  v5 = (v4 + v3);
  *v5 = v1;
  v5[1] = v14;
  v6 = *(v2 + 104);
  v6();

  sub_27522F72C();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2752311A0;
  v8 = (v7 + v3);
  *v8 = v15;
  v8[1] = v16;
  v6();

  sub_27522F73C();

  sub_27522F71C();

  v9 = sub_27522F84C();
  (*(*(v9 - 8) + 56))(v18, 1, 1, v9);
  v10 = sub_27522F69C();
  (*(*(v10 - 8) + 56))(v19, 1, 1, v10);
  sub_27521DA10(v19, v20);
  sub_27522F6DC();
  sub_27522F6CC();
  sub_27522F6AC();
  sub_27522F6BC();
  sub_27521DA80(v19, &qword_2809B3BA0, &qword_2752311C8);
  sub_27522F63C();

  (*(v22 + 8))(v21, v23);
  sub_27521DA80(v18, &qword_2809B3BA8, &qword_2752311D0);
  (*(v24 + 8))(v17, v25);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_27521D73C;
  v12 = v0[18];

  return MEMORY[0x2821D9800](v0 + 2, v12);
}

uint64_t sub_27521D73C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_27521D968;
  }

  else
  {
    v5 = sub_27521D8AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27521D8AC()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_27521D968()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27521DA10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BA0, &qword_2752311C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27521DA80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TokenGeneratorBase.deinit()
{

  return v0;
}

uint64_t TokenGeneratorBase.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t dispatch thunk of TokenGeneratorBase.process(system:user:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 128) + **(*v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_27521DCD8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_27521DCD8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_27521DDE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_27522F9FC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_27522F51C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  v12 = sub_27522F98C();
  v13 = [objc_opt_self() bundleWithIdentifier_];

  if (!v13)
  {
    goto LABEL_5;
  }

  v36[0] = v6;
  v14 = sub_27522F98C();
  v15 = sub_27522F98C();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {

LABEL_5:

    return a1;
  }

  sub_27522F50C();

  (*(v36[0] + 32))(v11, v9, v5);
  v17 = sub_27522F52C();
  v19 = v18;
  v20 = sub_27521F188(v17, v18);
  v23 = v22;
  v24 = v20;
  sub_27521E5C4(v17, v19);
  sub_27522F9EC();
  v25 = sub_27522F9DC();
  v27 = v23;
  v28 = v24;
  if (v26)
  {
    v29 = sub_27521E1E4(v25, v26);
    v37 = 0;
    v38 = 0xE000000000000000;
    v30 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v30 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v36[1] = a1;
    v36[2] = a2;
    v36[3] = 0;
    v36[4] = v30;

    v31 = sub_27522FABC();
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      do
      {
        if (sub_27521EEDC(v33, v34) & 1) == 0 || (sub_27521E2A4(v33, v34, v29))
        {
          MEMORY[0x277C6E490](v33, v34);
        }

        v33 = sub_27522FABC();
        v34 = v35;
      }

      while (v35);
    }

    sub_27521E5C4(v28, v27);

    (*(v36[0] + 8))(v11, v5);
    return v37;
  }

  else
  {
    (*(v36[0] + 8))(v11, v5);

    sub_27521E5C4(v24, v27);
  }

  return a1;
}

uint64_t sub_27521E1E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_27522FA7C();
  v5 = MEMORY[0x277C6E600](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v18 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a1;
  v15 = a2;
  v16 = 0;
  v17 = v6;
  v7 = sub_27522FABC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_27521E618(v13, v9, v10);

      v9 = sub_27522FABC();
      v10 = v11;
    }

    while (v11);
    v5 = v18;
  }

  return v5;
}

uint64_t sub_27521E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_27522FEFC();
  sub_27522F92C();
  v6 = sub_27522FF1C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_27522FEBC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_27521E39C(uint64_t a1, unint64_t a2)
{

  sub_27522FB0C();
  v4 = HIBYTE(a2) & 0xF;
  v23 = a1;
  v24 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = 0;
  v26 = v4;

  v5 = sub_27522FABC();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = &off_27A646000;
    while (1)
    {
      while ((sub_27521EEDC(v7, v8) & 1) == 0)
      {
        MEMORY[0x277C6E490](v7, v8);

        v7 = sub_27522FABC();
        v8 = v11;
        if (!v11)
        {
          v22 = v9;
          goto LABEL_16;
        }
      }

      if (!v9)
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D072F8]) init];
      }

      v22 = v9;

      v12 = sub_27522F98C();

      v13 = v10;
      v14 = [objc_opt_self() v10[52]];

      v15 = [v14 copyWithoutModifiers];
      if (!v15)
      {
        v15 = [objc_allocWithZone(MEMORY[0x277D07318]) init];
      }

      result = [v15 string];
      if (!result)
      {
        break;
      }

      v17 = result;

      v18 = sub_27522F9BC();
      v20 = v19;

      MEMORY[0x277C6E4A0](v18, v20);

      v7 = sub_27522FABC();
      v8 = v21;
      v10 = v13;
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_16:

    return a1;
  }

  return result;
}

uint64_t sub_27521E5C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_27521E618(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_27522FEFC();
  sub_27522F92C();
  v8 = sub_27522FF1C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_27522FEBC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_27521E9C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_27521E768(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BD8, &qword_275231240);
  result = sub_27522FD5C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_27522FEFC();
      sub_27522F92C();
      result = sub_27522FF1C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_27521E9C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_27521E768(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_27521EB48();
      goto LABEL_16;
    }

    sub_27521ECA4(v8 + 1);
  }

  v10 = *v4;
  sub_27522FEFC();
  sub_27522F92C();
  result = sub_27522FF1C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_27522FEBC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_27522FECC();
  __break(1u);
  return result;
}

void *sub_27521EB48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BD8, &qword_275231240);
  v2 = *v0;
  v3 = sub_27522FD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_27521ECA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3BD8, &qword_275231240);
  result = sub_27522FD5C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_27522FEFC();
      sub_27522F92C();
      result = sub_27522FF1C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_27521EEDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_27522FF7C();
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (v5 + 8);

  v10 = 0;
  v11 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_27522FD8C();
      v15 = v14;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24[0] = a1;
        v24[1] = v23;
        v13 = v24 + v11;
      }

      else
      {
        v12 = v22;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v12 = sub_27522FDAC();
        }

        v13 = (v12 + v11);
      }

      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v19 = (__clz(*v13 ^ 0xFF) - 24);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          v15 = 3;
        }

        else
        {
          v15 = 4;
        }

        goto LABEL_16;
      }

      if (v19 == 1)
      {
LABEL_15:
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

LABEL_16:
    if ((v10 & 1) == 0 || (sub_27522FF8C(), v16 = sub_27522FF5C(), (*v9)(v7, v4), (v16 & 1) == 0))
    {
      v11 += v15;
      sub_27522FF8C();
      v10 = sub_27522FF6C();
      v17 = *v9;
      (*v9)(v7, v4);
      if ((v10 & 1) == 0)
      {
        continue;
      }

      sub_27522FF8C();
      v18 = sub_27522FF4C();
      v17(v7, v4);
      if ((v18 & 1) == 0)
      {
        continue;
      }
    }

    v20 = 1;
    goto LABEL_28;
  }

  while (v11 < v8);
  v20 = 0;
LABEL_28:

  return v20;
}

uint64_t sub_27521F188(uint64_t a1, unint64_t a2)
{
  v5 = sub_27522F90C();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_27522F8DC();
  MEMORY[0x28223BE20](v42);
  v8 = sub_27522F8FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2752206DC(&unk_2883FBDD8);
  v13 = a2 >> 62;
  v39 = v9;
  v40 = v8;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_16;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 < 7)
      {
        goto LABEL_16;
      }

LABEL_11:
      v44 = v11;
      v45 = v12;
      v18 = sub_27522F54C();
      v38 = v2;
      v20 = v19;
      v21 = sub_2752203BC(v44, v45, v18, v19);
      sub_27521E5C4(v18, v20);
      v11 = v44;
      v12 = v45;
      if (v21)
      {
        if (qword_2809B3900 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_16:
      sub_27521E5C4(v11, v12);
      sub_27522078C(a1, a2);
      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(a2) < 7uLL)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 7)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_13:
  v23 = qword_2809B3BE0;
  v22 = *algn_2809B3BE8;
  v37 = sub_2752207E0(&qword_2809B3BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_27522F8CC();
  sub_27522078C(v23, v22);
  v24 = v38;
  sub_275220044(v23, v22, v7);
  v38 = v24;
  sub_27521E5C4(v23, v22);
  sub_27522F8BC();
  (*(v41 + 8))(v7, v5);
  sub_2752207E0(&qword_2809B3BF8, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v25 = v43;
  result = sub_27522F8EC();
  if (v13)
  {
    if (v13 != 2)
    {
      v29 = v40;
      v28 = a1;
      v27 = a1 >> 32;
      if (a1 >> 32 < 7)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
  }

  else
  {
    v28 = 0;
    v27 = BYTE6(a2);
  }

  v29 = v40;
  if (v27 < 7)
  {
    goto LABEL_29;
  }

LABEL_22:
  if (v27 >= v28)
  {
    v30 = sub_27522F54C();
    v31 = v38;
    v33 = sub_27521F658(v30, v32);
    if (v31)
    {
      (*(v39 + 8))(v25, v29);
      sub_27521E5C4(v44, v45);
    }

    else
    {
      v35 = v33;
      v36 = v34;
      a1 = sub_27522F88C();
      (*(v39 + 8))(v25, v29);
      sub_27521E5C4(v44, v45);
      sub_27521E5C4(v35, v36);
    }

    return a1;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_27521F658(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v29[3] = MEMORY[0x277CC9318];
      v29[4] = MEMORY[0x277CC9300];
      v29[0] = a1;
      v29[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v27, 0, 14);
          v14 = v27;
          v13 = v27;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_27522F4BC();
        if (v17)
        {
          v18 = sub_27522F4DC();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v27[0] = *v9;
        LOWORD(v27[1]) = v11;
        BYTE2(v27[1]) = BYTE2(v11);
        BYTE3(v27[1]) = BYTE3(v11);
        BYTE4(v27[1]) = BYTE4(v11);
        BYTE5(v27[1]) = BYTE5(v11);
        v13 = v27 + BYTE6(v11);
        v14 = v27;
LABEL_33:
        sub_27521FFB0(v14, v13, &v28);
        v7 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        return v7;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_27522F4BC();
        if (!v17)
        {
LABEL_25:
          v23 = sub_27522F4CC();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_27522F4DC();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_27521E5C4(a1, a2);
  v7 = sub_27522F89C();
  sub_2752207E0(&qword_2809B3C00, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
  return v7;
}

uint64_t sub_27521F954(uint64_t a1)
{
  result = sub_27521F978(a1);
  qword_2809B3BE0 = result;
  *algn_2809B3BE8 = v2;
  return result;
}

uint64_t sub_27521F978(uint64_t a1)
{
  v1 = sub_27522FABC();
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_36:

    v17 = sub_2752206DC(v5);

    return v17;
  }

  v3 = v1;
  v4 = v2;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == 2573 && v4 == 0xE200000000000000 || (result = sub_27522FEBC(), (result & 1) != 0))
    {

      LOBYTE(v6) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    v11 = (v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v3 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v16 = sub_27522FA5C();
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v13 = v3;
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_27522FDAC();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_31;
    }

    result = sub_275221244(v3, v4);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_31:

      LOBYTE(v6) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = sub_275221244(v3, v4);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      v6 = result;

      if ((v6 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v5 = sub_27521B464(0, *(v5 + 2) + 1, 1, v5);
      }
    }

LABEL_6:
    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_27521B464((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = v6;
    v3 = sub_27522FABC();
    v4 = v9;
    if (!v9)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_27521FBF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_27522F4BC();
    if (v10)
    {
      v11 = sub_27522F4DC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_27522F4CC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_27522F4BC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_27522F4DC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_27522F4CC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_27521FE20(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_275220304(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_27521E5C4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_27521FBF0(v13, a3, a4, &v12);
  v10 = v4;
  sub_27521E5C4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

_BYTE *sub_27521FFB0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_275220524(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2752205DC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_275220658(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_275220044(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_27522F90C();
      sub_2752207E0(&qword_2809B3BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_27522F8AC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_275220224(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_275220224(v5, v6);
  }

  sub_27522F90C();
  sub_2752207E0(&qword_2809B3BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_27522F8AC();
}

uint64_t sub_275220224(uint64_t a1, uint64_t a2)
{
  result = sub_27522F4BC();
  if (!result || (result = sub_27522F4DC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_27522F4CC();
      sub_27522F90C();
      sub_2752207E0(&qword_2809B3BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_27522F8AC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_275220304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_27522F4BC();
  v11 = result;
  if (result)
  {
    result = sub_27522F4DC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_27522F4CC();
  sub_27521FBF0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2752203BC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_27522078C(a3, a4);
          return sub_27521FE20(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275220524(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2752205DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_27522F4EC();
  swift_allocObject();
  result = sub_27522F4AC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_27522F53C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_275220658(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_27522F4EC();
  swift_allocObject();
  result = sub_27522F4AC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2752206DC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C08, &qword_275231248);
  v10 = sub_275220828();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_27521FFB0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_27522078C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2752207E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275220828()
{
  result = qword_2809B3C10;
  if (!qword_2809B3C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809B3C08, &qword_275231248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3C10);
  }

  return result;
}

uint64_t sub_27522088C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CA0, &qword_2752312F0);
  sub_27522F80C();

  v2 = MEMORY[0x277C6E430]();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_275220930@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C90, &qword_2752312A8);
  sub_27522F81C();

  v2 = v9;
  while (1)
  {
    if ((v2 ^ v10) < 0x4000)
    {

      v8 = 32;
      goto LABEL_9;
    }

    v3 = sub_27522FCDC();
    v5 = v4;
    v2 = sub_27522FCBC();
    result = sub_275221244(v3, v5);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v7 = result;

    if ((v7 - 14) > 0xFFFFFFFB || (v7 - 8232) < 2 || v7 == 133)
    {

      v8 = 10;
LABEL_9:
      *a1 = v8;
      a1[1] = 0xE100000000000000;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_275220A74@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C90, &qword_2752312A8);
  sub_27522F82C();
  sub_275223894();
  sub_27522362C();
  v2 = sub_27522FCFC();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_275220B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;

    do
    {
      sub_275223824(v5, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_275223584();
      sub_2752235D8();
      sub_27522FC3C();
      __swift_destroy_boxed_opaque_existential_1Tm(v8);

      a2 = v7;
      v5 += 56;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_275220C5C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_275221394(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_27522FD8C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_27522FDAC();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

id sub_275220DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_27522F98C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_27522F4FC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_275220E84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_27522FB3C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_275227A68(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_275227A68((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_27522FB1C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_27522FA8C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_27522FA8C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_27522FB3C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_275227A68(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_27522FB3C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_275227A68(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_275227A68((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_27522FA8C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_275221244(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_275221394(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_27522FD8C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_27522FDAC() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_275221394(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_27522142C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2752214A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_27522142C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2752215C4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2752214A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_27522FDAC();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_2752215C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_27522FAEC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C6E4D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_275221640(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C80, &qword_275231298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275231250;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C20, &qword_275231278);
  *(inited + 56) = v5;
  v6 = sub_27522372C(&qword_2809B3C38, &qword_2809B3C20, &qword_275231278, MEMORY[0x277D85AC0]);
  *(inited + 64) = v6;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_27522F7FC();
  *(inited + 72) = 10;
  *(inited + 80) = 0xE100000000000000;
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  __swift_allocate_boxed_opaque_existential_1((inited + 88));
  sub_27522F7FC();
  *(inited + 128) = 0;
  *(inited + 136) = 0xE000000000000000;
  *(inited + 168) = v5;
  *(inited + 176) = v6;
  __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_27522F7FC();
  *(inited + 184) = 47;
  *(inited + 192) = 0xE100000000000000;
  v7 = sub_275220B50(inited, a1, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C88, &qword_2752312A0);
  swift_arrayDestroy();
  return v7;
}

id sub_275221814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_27522F56C();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_275223978();
  v7 = sub_27522F91C();

  v12[0] = 0;
  v8 = [v4 initWithData:v6 options:v7 documentAttributes:a4 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_27522F4FC();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_275221928(uint64_t a1, uint64_t a2)
{
  v3 = sub_27522F49C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27522F9FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27522F9EC();
  v11 = sub_27522F9CC();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 != 15)
  {
    v29 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CA8, &qword_2752312F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2752311A0;
    v15 = *MEMORY[0x277D74098];
    *(inited + 32) = *MEMORY[0x277D74098];
    v16 = *MEMORY[0x277D740C8];
    type metadata accessor for DocumentType(0);
    *(inited + 64) = v17;
    *(inited + 40) = v16;
    sub_2752238E8(v11, v13);
    v18 = v15;
    v19 = v16;
    v20 = sub_27521CA9C(inited);
    swift_setDeallocating();
    sub_2752238FC(inited + 32);
    v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v22 = sub_275221814(v11, v13, v20, 0);
    sub_275223964(v11, v13);
    if (v22)
    {
      v24 = [v22 string];
      v25 = sub_27522F9BC();
      v27 = v26;

      v30 = v25;
      v31 = v27;
      sub_27522F48C();
      sub_27522362C();
      a1 = sub_27522FCEC();

      sub_275223964(v11, v13);
      (*(v29 + 8))(v6, v3);

      return a1;
    }

    sub_275223964(v11, v13);
  }

  return a1;
}

uint64_t sub_275221C34(unint64_t a1, unint64_t a2)
{
  sub_27522362C();
  sub_27522FD1C();
  v2 = sub_27522FABC();
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    do
    {
      v7 = sub_275220C5C(v5, v4);
      if ((v7 & 0x100000000) == 0)
      {
        v8 = dword_2883FBE20 <= v7 && unk_2883FBE24 >= v7;
        if (v8 || (dword_2883FBE28 <= v7 ? (v9 = unk_2883FBE2C >= v7) : (v9 = 0), v9 || (dword_2883FBE30 <= v7 ? (v10 = unk_2883FBE34 >= v7) : (v10 = 0), v10 || dword_2883FBE38 <= v7 && dword_2883FBE3C >= v7 || dword_2883FBE40 <= v7 && dword_2883FBE44 >= v7 || dword_2883FBE48 <= v7 && dword_2883FBE4C >= v7)))
        {
          MEMORY[0x277C6E490](v5, v4);
        }
      }

      v5 = sub_27522FABC();
      v4 = v6;
    }

    while (v6);
  }

  return sub_27522FB2C();
}

uint64_t sub_275221DE4(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C18, &qword_275231270);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C20, &qword_275231278);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v26 = sub_27521DDE4(a1, a2);
  v27 = v12;
  sub_27522F7FC();
  v24 = 32;
  v25 = 0xE100000000000000;
  sub_275223584();
  sub_2752235D8();
  v13 = MEMORY[0x277D85AC0];
  v20[0] = sub_27522372C(&qword_2809B3C38, &qword_2809B3C20, &qword_275231278, MEMORY[0x277D85AC0]);
  sub_27522FC3C();
  v14 = *(v9 + 8);
  v20[1] = v9 + 8;
  v21 = v14;
  v14(v11, v8);

  v15 = sub_27521E39C(v28, v29);
  v17 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C48, &qword_275231280);
  sub_27522F7FC();
  v26 = v15;
  v27 = v17;
  sub_27522372C(&qword_2809B3C50, &qword_2809B3C18, &qword_275231270, v13);
  v18 = v22;
  sub_27522FC2C();

  v26 = v28;
  v27 = v29;
  sub_27522F7FC();
  sub_27522FC2C();
  v21(v11, v8);

  (*(v23 + 8))(v7, v18);
  return v28;
}

uint64_t sub_2752221C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C80, &qword_275231298);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275231260;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C20, &qword_275231278);
  *(inited + 56) = v3;
  v4 = MEMORY[0x277D85AC0];
  v5 = sub_27522372C(&qword_2809B3C38, &qword_2809B3C20, &qword_275231278, MEMORY[0x277D85AC0]);
  *(inited + 64) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_27522F7FC();
  *(inited + 72) = 42;
  *(inited + 80) = 0xE100000000000000;
  *(inited + 112) = v3;
  *(inited + 120) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 88));
  sub_27522F7FC();
  *(inited + 128) = 46;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 168) = v3;
  *(inited + 176) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_27522F7FC();
  *(inited + 184) = 43;
  *(inited + 192) = 0xE100000000000000;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C18, &qword_275231270);
  *(inited + 224) = v6;
  v7 = sub_27522372C(&qword_2809B3C50, &qword_2809B3C18, &qword_275231270, v4);
  *(inited + 232) = v7;
  __swift_allocate_boxed_opaque_existential_1((inited + 200));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C48, &qword_275231280);
  sub_27522F7FC();
  *(inited + 240) = 61;
  *(inited + 248) = 0xE100000000000000;
  *(inited + 280) = v6;
  *(inited + 288) = v7;
  __swift_allocate_boxed_opaque_existential_1((inited + 256));
  sub_27522F7FC();
  *(inited + 296) = 45;
  *(inited + 304) = 0xE100000000000000;
  *(inited + 336) = v6;
  *(inited + 344) = v7;
  __swift_allocate_boxed_opaque_existential_1((inited + 312));
  sub_27522F7FC();
  *(inited + 352) = 45;
  *(inited + 360) = 0xE100000000000000;
  *(inited + 392) = v3;
  *(inited + 400) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 368));
  sub_27522F7FC();
  *(inited + 408) = 61;
  *(inited + 416) = 0xE100000000000000;
  *(inited + 448) = v3;
  *(inited + 456) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 424));
  sub_27522F7FC();
  *(inited + 464) = 45;
  *(inited + 472) = 0xE100000000000000;
  *(inited + 504) = v3;
  *(inited + 512) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 480));
  sub_27522F7FC();
  *(inited + 520) = 95;
  *(inited + 528) = 0xE100000000000000;
  *(inited + 560) = v3;
  *(inited + 568) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 536));
  sub_27522F7FC();
  *(inited + 576) = 126;
  *(inited + 584) = 0xE100000000000000;
  *(inited + 616) = v3;
  *(inited + 624) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 592));
  sub_27522F7FC();
  *(inited + 632) = 60;
  *(inited + 640) = 0xE100000000000000;
  *(inited + 672) = v3;
  *(inited + 680) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 648));
  sub_27522F7FC();
  *(inited + 688) = 62;
  *(inited + 696) = 0xE100000000000000;
  *(inited + 728) = v3;
  *(inited + 736) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 704));
  sub_27522F7FC();
  *(inited + 744) = 33;
  *(inited + 752) = 0xE100000000000000;
  *(inited + 784) = v3;
  *(inited + 792) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 760));
  sub_27522F7FC();
  *(inited + 800) = 63;
  *(inited + 808) = 0xE100000000000000;
  *(inited + 840) = v3;
  *(inited + 848) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 816));
  sub_27522F7FC();
  *(inited + 856) = 36;
  *(inited + 864) = 0xE100000000000000;
  v8 = sub_275220B50(inited, a1, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C88, &qword_2752312A0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_27522263C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C20, &qword_275231278);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - v5;
  v53 = sub_27522F49C();
  v42 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v8 = sub_275220DA8(0xD00000000000001DLL, 0x8000000275231940, 0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1;
  }

  v10 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  v61 = 15;
  v62 = v10 | (v9 << 16);
  v59 = a1;
  v60 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C68, &qword_275231290);
  sub_27522372C(&qword_2809B3C70, &qword_2809B3C68, &qword_275231290, MEMORY[0x277D83D30]);
  v51 = sub_27522362C();
  v11 = sub_27522FC9C();
  v13 = v12;
  v61 = a1;
  v62 = a2;

  v14 = sub_27522F98C();
  v15 = [v8 matchesInString:v14 options:0 range:{v11, v13}];

  sub_275223774();
  v16 = sub_27522FB7C();

  v43 = v16;
  v41 = v4;
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_22:

    v57 = v61;
    v58 = v62;
    v34 = v39;
    sub_27522F7FC();
    v55 = 32;
    v56 = 0xE100000000000000;
    sub_275223584();
    sub_2752235D8();
    sub_27522372C(&qword_2809B3C38, &qword_2809B3C20, &qword_275231278, MEMORY[0x277D85AC0]);
    v35 = v41;
    sub_27522FC3C();
    (*(v40 + 8))(v34, v35);

    v36 = v52;
    sub_27522F48C();
    v37 = sub_27522FCEC();

    (*(v42 + 8))(v36, v53);

    return v37;
  }

LABEL_21:
  v17 = sub_27522FE0C();
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_7:
  v49 = v43 & 0xFFFFFFFFFFFFFF8;
  v50 = v43 & 0xC000000000000001;
  v44 = v43 + 32;
  v45 = (v42 + 8);
  v46 = a2;
  v47 = a1;
  v48 = v8;
  while (1)
  {
    if (__OFSUB__(v17--, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v50)
    {
      v19 = MEMORY[0x277C6E790](v17, v43);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v17 >= *(v49 + 16))
      {
        goto LABEL_20;
      }

      v19 = *(v44 + 8 * v17);
    }

    v20 = v19;
    [v19 rangeAtIndex_];
    sub_27522FC4C();
    if (v21)
    {
      break;
    }

    v54 = v20;
    v22 = sub_27522FB3C();
    v23 = MEMORY[0x277C6E430](v22);
    v25 = v24;

    v59 = v23;
    v60 = v25;
    v26 = v52;
    sub_27522F47C();
    v27 = sub_27522FCEC();
    v29 = v28;
    (*v45)(v26, v53);
    v59 = v23;
    v60 = v25;
    v57 = v27;
    v58 = v29;
    v55 = 0;
    v56 = 0xE000000000000000;
    v30 = sub_27522FCFC();
    v32 = v31;

    sub_27522FC4C();
    if ((v33 & 1) == 0)
    {
      v59 = v30;
      v60 = v32;
      sub_2752235D8();
      sub_27522FA4C();
    }

    a1 = v47;
    v8 = v48;
    a2 = v46;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_275222C88(uint64_t a1, unint64_t a2, int a3)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C20, &qword_275231278);
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - v7;
  v41 = 32;
  v42 = 0xE100000000000000;
  v40 = &v41;

  v9 = sub_275220E84(0x7FFFFFFFFFFFFFFFLL, 1, sub_275223680, v39, a1, a2, v8);
  v10 = *(v9 + 16);
  v33 = v9;
  if (v10)
  {
    v11 = a3;
    v34 = (v6 + 8);
    v12 = (v9 + 56);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v21 = *(v12 - 3);
      v22 = *(v12 - 2);
      v24 = *(v12 - 1);
      v23 = *v12;

      if (sub_27522FCCC() >= v11 && (v41 = v21, v42 = v22, v43 = v24, v44 = v23, v38 = v13, v14 = v35, sub_27522F7FC(), v37 = sub_2752236D8(), sub_27522372C(&qword_2809B3C38, &qword_2809B3C20, &qword_275231278, MEMORY[0x277D85AC0]), v15 = v11, v16 = v36, v17 = sub_27522F93C(), v18 = v14, v13 = v38, v19 = v16, v11 = v15, (*v34)(v18, v19), v20 = *(v17 + 16), , v20))
      {
      }

      else
      {
        v25 = MEMORY[0x277C6E430](v21, v22, v24, v23);
        v27 = v26;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_27522795C(0, *(v13 + 2) + 1, 1, v13);
        }

        v29 = *(v13 + 2);
        v28 = *(v13 + 3);
        if (v29 >= v28 >> 1)
        {
          v13 = sub_27522795C((v28 > 1), v29 + 1, 1, v13);
        }

        *(v13 + 2) = v29 + 1;
        v30 = &v13[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
      }

      v12 += 4;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B3DE0, &qword_275231288);
  sub_27522372C(&qword_2809B3C60, &unk_2809B3DE0, &qword_275231288, MEMORY[0x277D83958]);
  v31 = sub_27522F95C();

  return v31;
}

uint64_t sub_275223008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C18, &qword_275231270);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C20, &qword_275231278);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v49 - v10;
  v12 = sub_275221640(a1, a2);
  v14 = sub_275221928(v12, v13);
  v16 = v15;

  v17 = sub_275221C34(v14, v16);
  v19 = v18;

  v20 = sub_275221DE4(v17, v19);
  v22 = v21;

  v59 = v20;
  v60 = v22;
  sub_27522F7FC();
  v57 = 32;
  v58 = 0xE100000000000000;
  v23 = sub_275223584();
  v24 = sub_2752235D8();
  sub_27522372C(&qword_2809B3C38, &qword_2809B3C20, &qword_275231278, MEMORY[0x277D85AC0]);
  sub_27522FC3C();
  v25 = *(v7 + 8);
  v49[1] = v7 + 8;
  v50 = v25;
  v25(v11, v6);

  v59 = 2621;
  v60 = 0xE200000000000000;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_27522362C();
  v26 = sub_27522FCFC();
  v28 = v27;

  v29 = v51;
  sub_27522F7FC();
  v59 = v26;
  v60 = v28;
  v52 = v24;
  v53 = v23;
  v30 = v29;
  sub_27522FC2C();
  swift_bridgeObjectRelease_n();
  v31 = v61;
  v32 = v62;

  v33 = sub_27522FD0C();
  v35 = v34;
  v50(v30, v6);

  if (v35)
  {

    v31 = v33;
    v32 = v35;
  }

  v36 = sub_2752221C4(v31, v32);
  v38 = v37;

  v59 = v36;
  v60 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C48, &qword_275231280);
  v39 = v54;
  sub_27522F7FC();
  v57 = 10;
  v58 = 0xE100000000000000;
  sub_27522372C(&qword_2809B3C50, &qword_2809B3C18, &qword_275231270, MEMORY[0x277D85AC0]);
  v40 = v56;
  sub_27522FC3C();
  (*(v55 + 8))(v39, v40);

  v41 = sub_275221640(v61, v62);
  v43 = v42;

  v44 = sub_27522263C(v41, v43);
  v46 = v45;

  v47 = sub_275222C88(v44, v46, 5);

  return v47;
}

unint64_t sub_275223584()
{
  result = qword_2809B3C28;
  if (!qword_2809B3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3C28);
  }

  return result;
}

unint64_t sub_2752235D8()
{
  result = qword_2809B3C30;
  if (!qword_2809B3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3C30);
  }

  return result;
}

unint64_t sub_27522362C()
{
  result = qword_2809B3C40;
  if (!qword_2809B3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3C40);
  }

  return result;
}

uint64_t sub_275223680(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_27522FEBC() & 1;
  }
}

unint64_t sub_2752236D8()
{
  result = qword_2809B3C58;
  if (!qword_2809B3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3C58);
  }

  return result;
}

uint64_t sub_27522372C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_275223774()
{
  result = qword_2809B3C78;
  if (!qword_2809B3C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809B3C78);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_275223824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3C88, &qword_2752312A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275223894()
{
  result = qword_2809B3C98;
  if (!qword_2809B3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3C98);
  }

  return result;
}

uint64_t sub_2752238E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_27522078C(result, a2);
  }

  return result;
}

uint64_t sub_2752238FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3B80, &qword_275231170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275223964(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_27521E5C4(result, a2);
  }

  return result;
}

unint64_t sub_275223978()
{
  result = qword_2809B3A50;
  if (!qword_2809B3A50)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3A50);
  }

  return result;
}

void __swiftcall NLEmbedder.init(useRecognizer:)(ZeoliteLanguage::NLEmbedder *__return_ptr retstr, Swift::Bool useRecognizer)
{
  v4 = *MEMORY[0x277CD8708];
  retstr->language._rawValue = *MEMORY[0x277CD8708];
  *(&retstr->embedding.value.super.isa + 7) = [objc_opt_self() sentenceEmbeddingForLanguage_];
  retstr->useRecognizer = useRecognizer;
}

uint64_t NLContextualEmbedder.init(useRecognizer:xpcCall:)(uint64_t a1, char a2)
{
  *(v2 + 216) = a2;
  *(v2 + 152) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB0, &qword_275231338);
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v3 - 8);
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275223B14, 0, 0);
}

uint64_t sub_275223B14()
{
  v1 = *MEMORY[0x277CD8708];
  *(v0 + 184) = *MEMORY[0x277CD8708];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 contextualEmbeddingWithLanguage_];
  *(v0 + 192) = v4;
  if (!v4)
  {
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v8 = sub_27522F87C();
    __swift_project_value_buffer(v8, qword_2809B5470);
    v9 = sub_27522F85C();
    v10 = sub_27522FC8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275217000, v9, v10, "Failed at creating NLContextualEmbedding.", v11, 2u);
      MEMORY[0x277C6EE90](v11, -1, -1);
    }

    goto LABEL_21;
  }

  v28 = v4;
  if ([v4 hasAvailableAssets])
  {
    if ([*(v0 + 192) hasAvailableAssets])
    {
      v5 = *(v0 + 192);
      v6 = *(v0 + 216);
      v7 = *(v0 + 152);
      *v7 = *(v0 + 184);
      v7[1] = v6;
      v7[2] = v5;
LABEL_22:

      v26 = *(v0 + 8);

      return v26();
    }

    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v20 = sub_27522F87C();
    __swift_project_value_buffer(v20, qword_2809B5470);
    v9 = sub_27522F85C();
    v21 = sub_27522FC8C();
    v22 = os_log_type_enabled(v9, v21);
    v3 = *(v0 + 184);
    v23 = *(v0 + 192);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_275217000, v9, v21, "NLContextualEmbedding doesn't have available assets.", v24, 2u);
      MEMORY[0x277C6EE90](v24, -1, -1);
    }

LABEL_21:
    v25 = *(v0 + 152);
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    goto LABEL_22;
  }

  if (qword_2809B3908 != -1)
  {
    swift_once();
  }

  v12 = sub_27522F87C();
  *(v0 + 200) = __swift_project_value_buffer(v12, qword_2809B5470);
  v13 = sub_27522F85C();
  v14 = sub_27522FC6C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_275217000, v13, v14, "NLContextualEmbedding has no available assets. Requesting assets.", v15, 2u);
    MEMORY[0x277C6EE90](v15, -1, -1);
  }

  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_275223FD0;
  swift_continuation_init();
  *(v0 + 136) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  type metadata accessor for AssetsResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB8, &qword_275231340);
  sub_27522FBCC();
  (*(v17 + 32))(boxed_opaque_existential_1, v16, v18);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2752269FC;
  *(v0 + 104) = &block_descriptor;
  [v28 requestEmbeddingAssetsWithCompletionHandler_];
  (*(v17 + 8))(boxed_opaque_existential_1, v18);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_275223FD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_2752240E0;
  }

  else
  {
    v2 = sub_2752241E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2752240E0(uint64_t a1)
{
  v2 = v1[26];
  swift_willThrow();

  v3 = sub_27522F85C();
  v4 = sub_27522FC8C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[23];
  v7 = v1[24];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_275217000, v3, v4, "NLContextualEmbedder failed at requesting assets.", v8, 2u);
    MEMORY[0x277C6EE90](v8, -1, -1);
  }

  v9 = v1[19];
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;

  v10 = v1[1];

  return v10();
}

uint64_t sub_2752241E8(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = sub_27522F85C();
  v4 = sub_27522FC7C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_275217000, v3, v4, "NLContextualEmbedding.AssetsResult: %ld", v5, 0xCu);
    MEMORY[0x277C6EE90](v5, -1, -1);
  }

  if ([*(v1 + 192) hasAvailableAssets])
  {
    v6 = *(v1 + 192);
    v7 = *(v1 + 216);
    v8 = *(v1 + 152);
    *v8 = *(v1 + 184);
    v8[1] = v7;
    v8[2] = v6;
  }

  else
  {
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v9 = sub_27522F87C();
    __swift_project_value_buffer(v9, qword_2809B5470);
    v10 = sub_27522F85C();
    v11 = sub_27522FC8C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v1 + 184);
    v14 = *(v1 + 192);
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275217000, v10, v11, "NLContextualEmbedding doesn't have available assets.", v15, 2u);
      MEMORY[0x277C6EE90](v15, -1, -1);
    }

    v16 = *(v1 + 152);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t MADTextEmbedder.init(version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2752243F4, 0, 0);
}

uint64_t sub_2752243F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = [objc_opt_self() service];
  v3[1] = v1;
  v3[2] = v2;
  v4 = v0[1];

  return v4();
}

unint64_t EmbedderName.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x457478655444414DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646465626D454C4ELL;
  }
}

uint64_t Embedder.embeddingModel.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_27522FA0C();
}

ZeoliteLanguage::EmbedderName_optional __swiftcall EmbedderName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27522FE5C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2752245B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x8000000275231330;
  if (v2 == 1)
  {
    v5 = 0x8000000275231330;
  }

  else
  {
    v3 = 0x457478655444414DLL;
    v5 = 0xEF7265646465626DLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x646465626D454C4ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x457478655444414DLL;
    v4 = 0xEF7265646465626DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646465626D454C4ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_27522FEBC();
  }

  return v11 & 1;
}

uint64_t sub_2752246C4()
{
  sub_27522FEFC();
  sub_27522F92C();

  return sub_27522FF1C();
}

uint64_t sub_27522477C(uint64_t a1)
{
  sub_27522F92C();
}

uint64_t sub_275224820(uint64_t a1)
{
  sub_27522FEFC();
  sub_27522F92C();

  return sub_27522FF1C();
}

void sub_2752248E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x8000000275231330;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x457478655444414DLL;
    v4 = 0xEF7265646465626DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646465626D454C4ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_275224A34()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() service];
  v1[1] = 0;
  v1[2] = 0;
  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MADTextEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = *v2;
  *(v3 + 64) = *(v2 + 8);
  return MEMORY[0x2822009F8](sub_275224AE8, 0, 0);
}

uint64_t sub_275224AE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CC0, &qword_275231390);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = xmmword_2752311A0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_275224BDC;

  return MADTextEmbedder.embed(texts:)(v3);
}

uint64_t sub_275224BDC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_275224CFC, 0, 0);
}

void sub_275224CFC()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  v3(v2);
}

uint64_t MADTextEmbedder.embed(texts:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v1 + 1);
  return MEMORY[0x2822009F8](sub_275224DB4, 0, 0);
}

uint64_t sub_275224DB4()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CC8, &qword_2752313A0);
  *v4 = v0;
  v4[1] = sub_275224ED8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x6574286465626D65, 0xED0000293A737478, sub_275227F84, v3, v5);
}

uint64_t sub_275224ED8()
{

  return MEMORY[0x2822009F8](sub_275224FF0, 0, 0);
}

uint64_t sub_275224FF0()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v2 = sub_27522F87C();
    __swift_project_value_buffer(v2, qword_2809B5470);
    v3 = sub_27522F85C();
    v4 = sub_27522FC8C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_275217000, v3, v4, "Failed at generating embeddings.", v5, 2u);
      MEMORY[0x277C6EE90](v5, -1, -1);
    }
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

void sub_275225110(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D38, &qword_275231668);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  [v12 setExtendedContextLength_];
  if (a4)
  {
    v14 = sub_27522FA2C();
    v15 = v13;
    if (v14 == 3425357 && v13 == 0xE300000000000000 || (sub_27522FEBC() & 1) != 0)
    {

      v16 = 4;
    }

    else
    {
      if (v14 == 3490893 && v15 == 0xE300000000000000)
      {
      }

      else
      {
        v25 = sub_27522FEBC();

        if ((v25 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v16 = 5;
    }

    [v12 setVersion_];
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D40, &qword_275231670);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_275231320;
  *(v17 + 32) = v12;
  sub_2752286C8(0, &qword_2809B3D48, 0x277D268A8);
  v18 = v12;
  v19 = sub_27522FB6C();

  v20 = sub_27522FB6C();
  (*(v8 + 16))(v11, a1, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v11, v7);
  *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_2752285F8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275225EC0;
  aBlock[3] = &block_descriptor_36;
  v23 = _Block_copy(aBlock);
  v24 = v18;

  [v27 performRequests:v19 text:v20 identifier:0 completionHandler:v23];
  _Block_release(v23);
}

void sub_275225478(int a1, id a2, int a3, id a4)
{
  if (!a2)
  {
    if (a1 == -1 || (v14 = [a4 embeddingResults]) == 0)
    {
      if (qword_2809B3908 != -1)
      {
        swift_once();
      }

      v26 = sub_27522F87C();
      __swift_project_value_buffer(v26, qword_2809B5470);
      v27 = sub_27522F85C();
      v28 = sub_27522FC8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_275217000, v27, v28, "No results returned by MAD service.", v29, 2u);
        MEMORY[0x277C6EE90](v29, -1, -1);
      }

      v40 = 0;
      goto LABEL_37;
    }

    v15 = v14;
    v39 = sub_2752286C8(0, &qword_2809B3D50, 0x277D26898);
    v16 = sub_27522FB7C();

    if (v16 >> 62)
    {
      v17 = sub_27522FE0C();
      if (v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_11:
        if (v17 < 1)
        {
          __break(1u);
          return;
        }

        v18 = 0;
        v19 = MEMORY[0x277D84F90];
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x277C6E790](v18, v16);
          }

          else
          {
            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;
          sub_275225990();
          if (v22)
          {
            v23 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_275227B74(0, v19[2] + 1, 1, v19);
            }

            v25 = v19[2];
            v24 = v19[3];
            if (v25 >= v24 >> 1)
            {
              v19 = sub_275227B74((v24 > 1), v25 + 1, 1, v19);
            }

            v19[2] = v25 + 1;
            v19[v25 + 4] = v23;
          }

          else
          {
          }

          ++v18;
        }

        while (v17 != v18);
        goto LABEL_31;
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_31:
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v30 = sub_27522F87C();
    __swift_project_value_buffer(v30, qword_2809B5470);

    v31 = sub_27522F85C();
    v32 = sub_27522FC7C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v33 = 136315138;
      v35 = MEMORY[0x277C6E580](v16, v39);
      v37 = v36;

      v38 = sub_27521AF64(v35, v37, &v40);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_275217000, v31, v32, "Found result: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x277C6EE90](v34, -1, -1);
      MEMORY[0x277C6EE90](v33, -1, -1);
    }

    else
    {
    }

    v40 = v19;
LABEL_37:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D38, &qword_275231668);
    sub_27522FBEC();
    return;
  }

  v5 = a2;
  if (qword_2809B3908 != -1)
  {
    swift_once();
  }

  v6 = sub_27522F87C();
  __swift_project_value_buffer(v6, qword_2809B5470);
  v7 = a2;
  v8 = sub_27522F85C();
  v9 = sub_27522FC8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_275217000, v8, v9, "Failed at calling MAD service: %@", v10, 0xCu);
    sub_275228710(v11);
    MEMORY[0x277C6EE90](v11, -1, -1);
    MEMORY[0x277C6EE90](v10, -1, -1);
  }

  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D38, &qword_275231668);
  sub_27522FBEC();
}

void sub_275225990()
{
  v1 = [v0 embedding];
  v2 = [v1 data];

  v3 = sub_27522F57C();
  v5 = v4;

  v6 = [v0 embedding];
  v7 = [v6 type];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = [v0 embedding];
    v6 = [v8 count];

    if (qword_2809B3908 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = sub_27522F87C();
  __swift_project_value_buffer(v9, qword_2809B5470);
  v10 = sub_27522F85C();
  v11 = sub_27522FC7C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v7;
    _os_log_impl(&dword_275217000, v10, v11, "Embedding type: %lu", v12, 0xCu);
    MEMORY[0x277C6EE90](v12, -1, -1);
  }

  if (v7 == 2)
  {
    v14 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (v14)
      {
        LODWORD(v15) = HIDWORD(v3) - v3;
        if (__OFSUB__(HIDWORD(v3), v3))
        {
LABEL_51:
          __break(1u);
          return;
        }

        v15 = v15;
      }

      else
      {
        v15 = BYTE6(v5);
      }

      goto LABEL_37;
    }

LABEL_20:
    if (v14 == 2)
    {
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      _VF = __OFSUB__(v22, v23);
      v15 = v22 - v23;
      if (_VF)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_37:
    v36 = v15 / 4;
    sub_27522078C(v3, v5);
    v27 = sub_275228A10(v36, v3, v5, MEMORY[0x277D83A90], sub_2752288BC);
    sub_27521E5C4(v3, v5);
    goto LABEL_38;
  }

  if (v7 == 1)
  {
    v13 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v13)
      {
        v14 = BYTE6(v5);
        goto LABEL_27;
      }

LABEL_24:
      LODWORD(v14) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v14 = v14;
      goto LABEL_27;
    }

    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
    v19 = *(v3 + 24);
    _VF = __OFSUB__(v19, v20);
    v14 = v19 - v20;
    if (!_VF)
    {
LABEL_27:
      v24 = v14;
      sub_27522078C(v3, v5);
      v25 = sub_275228A10(v24 / 2, v3, v5, MEMORY[0x277D84DC8], sub_275228778);
      sub_27521E5C4(v3, v5);
      v26 = *(v25 + 16);
      if (v26)
      {
        v44 = MEMORY[0x277D84F90];
        sub_27521C4A8(0, v26, 0);
        v27 = v44;
        v28 = *(v44 + 16);
        v29 = 32;
        do
        {
          _H8 = *(v25 + v29);
          v31 = *(v44 + 24);
          if (v28 >= v31 >> 1)
          {
            sub_27521C4A8((v31 > 1), v28 + 1, 1);
          }

          __asm { FCVT            S0, H8 }

          *(v44 + 16) = v28 + 1;
          *(v44 + 4 * v28 + 32) = _S0;
          v29 += 2;
          ++v28;
          --v26;
        }

        while (v26);
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }

LABEL_38:
      v37 = *(v27 + 16);
      v38 = 32;
      do
      {
        if (!v37)
        {
          goto LABEL_46;
        }

        v39 = ~*(v27 + v38) & 0x7F800000;
        v38 += 4;
        --v37;
      }

      while (v39);

      v40 = sub_27522F85C();
      v41 = sub_27522FC8C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_275217000, v40, v41, "Found embedding with nan values. Return zeros embedding.", v42, 2u);
        MEMORY[0x277C6EE90](v42, -1, -1);
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        if (v6)
        {
          v43 = sub_27522FB9C();
          *(v43 + 16) = v6;
          bzero((v43 + 32), 4 * v6);
        }

LABEL_46:
        sub_27521E5C4(v3, v5);
        return;
      }

      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = sub_27522F85C();
  v17 = sub_27522FC8C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_275217000, v16, v17, "Embedding type not supported.", v18, 2u);
    MEMORY[0x277C6EE90](v18, -1, -1);
  }

  sub_27521E5C4(v3, v5);
}

void sub_275225EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_275225F4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275228AF4;

  return MADTextEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_275225FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275228AF4;

  return MADTextEmbedder.embed(texts:)(a1);
}

uint64_t NLEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *v2;
  *(v3 + 48) = *(v2 + 8);
  v5 = v2[2];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return MEMORY[0x2822009F8](sub_2752260B8, 0, 0);
}

uint64_t sub_2752260B8()
{
  v1 = sub_27522FA7C();
  if (!v1)
  {
    goto LABEL_22;
  }

  if (*(v0 + 48) == 1)
  {
    v2 = objc_opt_self();
    v3 = sub_27522F98C();
    v4 = [v2 dominantLanguageForString_];

    if (!v4)
    {
LABEL_20:
      v1 = 0;
      goto LABEL_22;
    }

    v5 = sub_27522F9BC();
    v7 = v6;
    if (v5 != sub_27522F9BC() || v7 != v8)
    {
      v10 = *(v0 + 40);
      v11 = sub_27522FEBC();

      v1 = 0;
      if ((v11 & 1) == 0 || !v10)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  if (!*(v0 + 40))
  {
    goto LABEL_20;
  }

LABEL_13:
  v1 = sub_27522FC5C();
  if (v1)
  {
    v12 = *(v1 + 16);
    if (v12)
    {
      v24 = MEMORY[0x277D84F90];
      v13 = v1;
      sub_27521C4A8(0, v12, 0);
      v14 = v13;
      v15 = v24;
      v16 = *(v24 + 16);
      v17 = 32;
      do
      {
        v18 = *(v14 + v17);
        v25 = v15;
        v19 = *(v15 + 24);
        if (v16 >= v19 >> 1)
        {
          sub_27521C4A8((v19 > 1), v16 + 1, 1);
          v14 = v13;
          v15 = v25;
        }

        v20 = v18;
        *(v15 + 16) = v16 + 1;
        *(v15 + 4 * v16 + 32) = v20;
        v17 += 8;
        ++v16;
        --v12;
      }

      while (v12);
      v21 = v15;

      v1 = v21;
    }

    else
    {

      v1 = MEMORY[0x277D84F90];
    }
  }

LABEL_22:
  v22 = *(v0 + 8);

  return v22(v1);
}

uint64_t NLEmbedder.embed(texts:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  *(v2 + 112) = *(v1 + 8);
  *(v2 + 56) = v1[2];
  return MEMORY[0x2822009F8](sub_27522631C, 0, 0);
}

uint64_t sub_27522631C()
{
  v1 = *(v0 + 40);
  v2 = v1[2];
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 112);
    *(v0 + 72) = MEMORY[0x277D84F90];
    *(v0 + 80) = 0;
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = v1[5];
    *(v0 + 88) = v6;
    v7 = v1[4];
    *(v0 + 16) = v5;
    *(v0 + 24) = v3;
    *(v0 + 32) = v4;

    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_275226440;

    return NLEmbedder.embed(text:)(v7, v6);
  }

  else
  {
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_275226440(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_275226560, 0, 0);
}

uint64_t sub_275226560()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 72);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_275227B74(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_275227B74((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 80) + 1;
    v3[2] = v5 + 1;
    v3[v5 + 4] = v1;
    if (v7 != v6)
    {
      v8 = *(v0 + 80) + 1;
      *(v0 + 72) = v3;
      *(v0 + 80) = v8;
      v10 = *(v0 + 48);
      v9 = *(v0 + 56);
      v11 = *(v0 + 112);
      v12 = *(v0 + 40) + 16 * v8;
      v13 = *(v12 + 40);
      *(v0 + 88) = v13;
      v14 = *(v12 + 32);
      *(v0 + 16) = v10;
      *(v0 + 24) = v11;
      *(v0 + 32) = v9;

      v15 = swift_task_alloc();
      *(v0 + 96) = v15;
      *v15 = v0;
      v15[1] = sub_275226440;

      return NLEmbedder.embed(text:)(v14, v13);
    }
  }

  else
  {

    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v17 = sub_27522F87C();
    __swift_project_value_buffer(v17, qword_2809B5470);
    v18 = sub_27522F85C();
    v19 = sub_27522FC8C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275217000, v18, v19, "Failed to generate embedding.", v20, 2u);
      MEMORY[0x277C6EE90](v20, -1, -1);
    }

    v3 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v3);
}

uint64_t sub_2752267C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27522686C;

  return NLEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_27522686C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_275226968(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275228AF4;

  return NLEmbedder.embed(texts:)(a1);
}

void sub_2752269FC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB0, &qword_275231338);
    sub_27522FBDC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB0, &qword_275231338);
    sub_27522FBEC();
  }
}

uint64_t NLContextualEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CD0, &qword_2752313C0);
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 184) = v5;
  *(v3 + 192) = v6;
  *(v3 + 224) = *(v2 + 8);
  *(v3 + 200) = v2[2];

  return MEMORY[0x2822009F8](sub_275226B80, 0, 0);
}

uint64_t sub_275226B80()
{
  if (!sub_27522FA7C())
  {
    goto LABEL_9;
  }

  if (*(v0 + 224) != 1)
  {
    goto LABEL_13;
  }

  v1 = objc_opt_self();
  v2 = sub_27522F98C();
  v3 = [v1 dominantLanguageForString_];

  if (!v3)
  {
LABEL_9:

    v10 = *(v0 + 8);

    return v10(0);
  }

  v4 = sub_27522F9BC();
  v6 = v5;
  if (v4 == sub_27522F9BC() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_27522FEBC();

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  v17 = *(v0 + 200);
  v18 = *(v0 + 192);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);
  v15 = sub_27522F98C();
  *(v0 + 208) = v15;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_275226E84;
  swift_continuation_init();
  *(v0 + 136) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CD8, &qword_2752313C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB8, &qword_275231340);
  sub_27522FBCC();
  (*(v12 + 32))(boxed_opaque_existential_1, v13, v14);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_275227220;
  *(v0 + 104) = &block_descriptor_7;
  [v17 requestSentenceEmbeddingVectorForString:v15 language:v18 completionHandler:?];
  (*(v12 + 8))(boxed_opaque_existential_1, v14);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_275226E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_27522719C;
  }

  else
  {
    v2 = sub_275226F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_275226F94()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (v1 >> 62)
    {
      v2 = sub_27522FE0C();
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_4:
        v16 = MEMORY[0x277D84F90];
        result = sub_27521C4A8(0, v2 & ~(v2 >> 63), 0);
        if (v2 < 0)
        {
          __break(1u);
          return result;
        }

        v4 = v16;
        if ((v1 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v2; ++i)
          {
            [MEMORY[0x277C6E790](i v1)];
            v7 = v6;
            swift_unknownObjectRelease();
            v9 = *(v16 + 16);
            v8 = *(v16 + 24);
            if (v9 >= v8 >> 1)
            {
              sub_27521C4A8((v8 > 1), v9 + 1, 1);
            }

            *(v16 + 16) = v9 + 1;
            *(v16 + 4 * v9 + 32) = v7;
          }
        }

        else
        {
          v10 = (v1 + 32);
          do
          {
            [*v10 floatValue];
            v13 = *(v16 + 16);
            v12 = *(v16 + 24);
            if (v13 >= v12 >> 1)
            {
              v14 = v11;
              sub_27521C4A8((v12 > 1), v13 + 1, 1);
              v11 = v14;
            }

            *(v16 + 16) = v13 + 1;
            *(v16 + 4 * v13 + 32) = v11;
            ++v10;
            --v2;
          }

          while (v2);
        }

        goto LABEL_19;
      }
    }

    v4 = MEMORY[0x277D84F90];
LABEL_19:

    goto LABEL_20;
  }

  v4 = 0;
LABEL_20:

  v15 = *(v0 + 8);

  return v15(v4);
}

uint64_t sub_27522719C(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  v4 = v1[1];

  return v4(0);
}

void sub_275227220(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CD0, &qword_2752313C0);
    sub_27522FBDC();
  }

  else
  {
    if (a2)
    {
      sub_2752286C8(0, &qword_2809B3B50, 0x277CCABB0);
      sub_27522FB7C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CD0, &qword_2752313C0);
    sub_27522FBEC();
  }
}

uint64_t NLContextualEmbedder.embed(texts:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  *(v2 + 112) = *(v1 + 8);
  *(v2 + 56) = v1[2];
  return MEMORY[0x2822009F8](sub_275227328, 0, 0);
}

uint64_t sub_275227328()
{
  v1 = *(v0 + 40);
  v2 = v1[2];
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 112);
    *(v0 + 72) = MEMORY[0x277D84F90];
    *(v0 + 80) = 0;
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = v1[5];
    *(v0 + 88) = v6;
    v7 = v1[4];
    *(v0 + 16) = v5;
    *(v0 + 24) = v3;
    *(v0 + 32) = v4;

    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_27522744C;

    return NLContextualEmbedder.embed(text:)(v7, v6);
  }

  else
  {
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_27522744C(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_27522756C, 0, 0);
}

uint64_t sub_27522756C()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 72);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_275227B74(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_275227B74((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 80) + 1;
    v3[2] = v5 + 1;
    v3[v5 + 4] = v1;
    if (v7 != v6)
    {
      v8 = *(v0 + 80) + 1;
      *(v0 + 72) = v3;
      *(v0 + 80) = v8;
      v10 = *(v0 + 48);
      v9 = *(v0 + 56);
      v11 = *(v0 + 112);
      v12 = *(v0 + 40) + 16 * v8;
      v13 = *(v12 + 40);
      *(v0 + 88) = v13;
      v14 = *(v12 + 32);
      *(v0 + 16) = v10;
      *(v0 + 24) = v11;
      *(v0 + 32) = v9;

      v15 = swift_task_alloc();
      *(v0 + 96) = v15;
      *v15 = v0;
      v15[1] = sub_27522744C;

      return NLContextualEmbedder.embed(text:)(v14, v13);
    }
  }

  else
  {

    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v17 = sub_27522F87C();
    __swift_project_value_buffer(v17, qword_2809B5470);
    v18 = sub_27522F85C();
    v19 = sub_27522FC8C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275217000, v18, v19, "Failed to generate embedding.", v20, 2u);
      MEMORY[0x277C6EE90](v20, -1, -1);
    }

    v3 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v3);
}

uint64_t sub_27522780C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275228AF4;

  return NLContextualEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_2752278B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275228AF4;

  return NLContextualEmbedder.embed(texts:)(a1);
}

char *sub_27522795C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CC0, &qword_275231390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275227A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D20, &qword_275231648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275227B74(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D28, &qword_275231658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D30, &qword_275231660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275227CA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D18, &qword_275231640);
  v10 = *(sub_27522F7CC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_27522F7CC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_275227E80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B3DF0, &unk_2752317E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_275227F94()
{
  result = qword_2809B3CE0;
  if (!qword_2809B3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3CE0);
  }

  return result;
}

unint64_t sub_275227FEC()
{
  result = qword_2809B3CE8;
  if (!qword_2809B3CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809B3CF0, &qword_275231478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3CE8);
  }

  return result;
}

uint64_t dispatch thunk of Embedder.embed(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27522686C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Embedder.embed(texts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_275228AF4;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for EmbedderName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EmbedderName(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_275228464(uint64_t *a1, int a2)
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

uint64_t sub_2752284AC(uint64_t result, int a2, int a3)
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

unint64_t sub_2752284FC()
{
  result = qword_2809B3D10;
  if (!qword_2809B3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3D10);
  }

  return result;
}

uint64_t sub_275228550()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D38, &qword_275231668);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2752285F8(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D38, &qword_275231668) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_275225478(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2752286C8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_275228710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D58, &qword_275231678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275228778(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v17 = v15;
      v18 = *a2 + v15 / 2;
      if (!__OFADD__(*a2, v17 / 2))
      {
        *a2 = v18;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 2 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_27522F55C();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2752288BC(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v11 = __OFADD__(*a2, v15 / 4);
      v17 = *a2 + v15 / 4;
      if (!v11)
      {
        *a2 = v17;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_27522F55C();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_275228A10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_27522FB9C();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = 0;
  v11[0] = v10 + 32;
  v11[1] = v9;
  result = a5(v11, &v12, a2, a3);
  if (v5)
  {
    if (v12 <= v9)
    {
      *(v10 + 16) = v12;

      return v10;
    }

    goto LABEL_12;
  }

  if (v12 <= v9)
  {
    *(v10 + 16) = v12;
    return v10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_275228AFC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_27522F7EC();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v32 = v6;
  v39 = MEMORY[0x277D84F90];
  sub_27521C4E8(0, v7, 0);
  v8 = v39;
  v9 = a1 + 64;
  v10 = sub_27522FD3C();
  v11 = 0;
  v37 = *(a1 + 36);
  v33 = v4;
  v30 = a1 + 64;
  v31 = v4 + 32;
  v28 = a1 + 72;
  v29 = v7;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v35 = v11;
    v15 = a1;
    v38 = *(*(a1 + 56) + 8 * v10);
    swift_bridgeObjectRetain_n();
    sub_27522D244(&v38);
    v36 = v2;
    if (v2)
    {
      goto LABEL_28;
    }

    sub_27522C530(v38);
    v16 = v32;
    sub_27522F7DC();

    v39 = v8;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_27521C4E8((v17 > 1), v18 + 1, 1);
      v8 = v39;
    }

    *(v8 + 16) = v18 + 1;
    (*(v33 + 32))(v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v18, v16, v34);
    v12 = 1 << *(v15 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    a1 = v15;
    v9 = v30;
    v19 = *(v30 + 8 * v14);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v2 = v36;
      v13 = v29;
    }

    else
    {
      v21 = v14 << 6;
      v22 = v14 + 1;
      v13 = v29;
      v23 = (v28 + 8 * v14);
      v2 = v36;
      while (v22 < (v12 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_27522F198(v10, v37, 0);
          v12 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_27522F198(v10, v37, 0);
    }

LABEL_4:
    v11 = v35 + 1;
    v10 = v12;
    if (v35 + 1 == v13)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
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
  return result;
}

uint64_t MessageExtractor.init(lastDays:maxMessages:maxLength:cleanupText:lastMessageDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for MessageExtractor(0);
  *(a6 + v12[12]) = 0;
  *(a6 + v12[13]) = MEMORY[0x277D84F90];
  *a6 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
  v13 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v17[4] = sub_27522CBD0;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_27522CBD4;
  v17[3] = &block_descriptor_0;
  v14 = _Block_copy(v17);
  v15 = [v13 initWithBuilder_];
  _Block_release(v14);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 8) = v15;
    *(a6 + 16) = 49;
    *(a6 + 24) = a1;
    *(a6 + 32) = a2;
    *(a6 + 40) = a3;
    *(a6 + 48) = a4 & 1;
    return sub_27522CC40(a5, a6 + v12[11]);
  }

  return result;
}

uint64_t type metadata accessor for MessageExtractor(uint64_t a1)
{
  result = qword_2809B3DA8;
  if (!qword_2809B3DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275229038(void *a1)
{
  [a1 setRequestedRepresentation_];
  [a1 setNetworkUsage_];
  [a1 setRequestAllHeaders_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E48, &qword_275231820);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_275231250;
  v3 = *MEMORY[0x277D06F40];
  v4 = *MEMORY[0x277D06FB8];
  *(v2 + 32) = *MEMORY[0x277D06F40];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277D06FE0];
  *(v2 + 48) = *MEMORY[0x277D06FE0];
  type metadata accessor for ECMessageHeaderKey(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = sub_27522FB6C();

  [a1 setRequestedHeaderKeys_];
}

uint64_t MessageExtractor.isDataAccessible()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D68, &qword_275231690);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27522923C, 0, 0);
}

uint64_t sub_27522923C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 23;
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = [*v1[18] messageRepository];
  v1[22] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_2752293F8;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_27522FBCC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_275229548;
  v1[13] = &block_descriptor_3;
  [v8 isDataAccessible_];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2752293F8()
{

  return MEMORY[0x2822009F8](sub_2752294D8, 0, 0);
}

uint64_t sub_2752294D8()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_275229548(uint64_t a1, char a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D68, &qword_275231690);
  return sub_27522FBEC();
}

uint64_t sub_2752295A4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E08, &unk_2752317F8);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_27522F5FC();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_27522F60C();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = sub_27522F5CC();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2752297F8, 0, 0);
}

uint64_t sub_2752297F8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[19];
  v5 = [objc_opt_self() currentCalendar];
  sub_27522F5DC();

  v6 = (*(v2 + 104))(v1, *MEMORY[0x277CC9968], v3);
  if (__OFSUB__(0, *(v4 + 24)))
  {
    __break(1u);
    return MEMORY[0x282200938](v6);
  }

  v7 = v0[36];
  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[25];
  v14 = v0[24];
  v51 = v0[23];
  v54 = v0[26];
  sub_27522F5BC();
  sub_27522F5EC();
  v15 = *(v9 + 8);
  v0[38] = v15;
  v0[39] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49 = v15;
  v15(v7, v8);
  (*(v14 + 8))(v13, v51);
  (*(v12 + 8))(v11, v54);
  v16 = *(v9 + 48);
  if (v16(v10, 1, v8) != 1)
  {
    v19 = v0[37];
    v20 = v0[35];
    v21 = v0[31];
    v22 = v0[32];
    v23 = v0[29];
    v24 = v0[19];
    v52 = *(v22 + 32);
    v52(v19, v0[30], v21);
    v48 = *(v22 + 16);
    v48(v20, v19, v21);
    v25 = type metadata accessor for MessageExtractor(0);
    sub_27522F1A4(v24 + *(v25 + 44), v23);
    if (v16(v23, 1, v21) == 1)
    {
      sub_27521DA80(v0[29], &qword_2809B3D60, &qword_275231680);
    }

    else
    {
      v26 = v0[35];
      v27 = v0[31];
      v52(v0[34], v0[29], v27);
      sub_27522F21C(&unk_2809B3E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v28 = sub_27522F96C();
      v49(v26, v27);
      if (v28)
      {
        v52(v0[33], v0[34], v0[31]);
      }

      else
      {
        v29 = v0[37];
        v30 = v0[33];
        v31 = v0[31];
        v49(v0[34], v31);
        v48(v30, v29, v31);
      }

      v52(v0[35], v0[33], v0[31]);
    }

    v32 = v0[21];
    v53 = v0[22];
    v33 = v0[19];
    v50 = v0[20];
    v34 = objc_opt_self();
    v35 = sub_27522F58C();
    v36 = [v34 predicateForMessagesNewerThanDate_];
    v0[40] = v36;

    v37 = [v34 sortDescriptorForDateAscending_];
    v0[41] = v37;
    sub_2752286C8(0, &unk_2809B3E10, 0x277D06ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D40, &qword_275231670);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_275231320;
    *(v38 + 32) = v37;
    v39 = objc_allocWithZone(MEMORY[0x277D06E80]);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_2752286C8(0, &qword_2809B3E20, 0x277CCAC98);
    v41 = v36;
    v42 = v37;
    v43 = sub_27522FB6C();

    v44 = [v39 initWithTargetClass:ObjCClassFromMetadata predicate:v41 sortDescriptors:v43];
    v0[42] = v44;

    v45 = [*v33 messageRepository];
    v0[43] = v45;
    v47 = *(v33 + 32);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_275229EE4;
    swift_continuation_init();
    v0[17] = v50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E28, &unk_275231808);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB8, &qword_275231340);
    sub_27522FBCC();
    (*(v32 + 32))(boxed_opaque_existential_1, v53, v50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_27522A25C;
    v0[13] = &block_descriptor_20;
    [v45 performQuery:v44 limit:v47 completionHandler:?];
    (*(v32 + 8))(boxed_opaque_existential_1, v50);
    v6 = (v0 + 2);

    return MEMORY[0x282200938](v6);
  }

  sub_27521DA80(v0[30], &qword_2809B3D60, &qword_275231680);

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_275229EE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_27522A120;
  }

  else
  {
    v2 = sub_275229FF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_275229FF4()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 304);
  v5 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 248);

  v4(v6, v7);
  v4(v5, v7);
  v10 = *(v0 + 144);

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_27522A120(uint64_t a1)
{
  v2 = v1[44];
  v4 = v1[41];
  v3 = v1[42];
  v5 = v1[40];
  v6 = v1[38];
  v11 = v1[37];
  v12 = v1[43];
  v7 = v1[35];
  v8 = v1[31];
  swift_willThrow();

  v6(v7, v8);
  v6(v11, v8);

  v9 = v1[1];

  return v9(0);
}

void sub_27522A25C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E08, &unk_2752317F8);
    sub_27522FBDC();
  }

  else
  {
    sub_2752286C8(0, &qword_2809B3DD8, 0x277D06DB8);
    sub_27522FB7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E08, &unk_2752317F8);
    sub_27522FBEC();
  }
}

uint64_t MessageExtractor.next()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_27522F5CC();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27522A3B4, 0, 0);
}

uint64_t sub_27522A3B4()
{
  sub_27522FBFC();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_27522A498;

  return MessageExtractor.isDataAccessible()();
}

uint64_t sub_27522A498(char a1)
{
  *(*v1 + 236) = a1;

  return MEMORY[0x2822009F8](sub_27522A598, 0, 0);
}

uint64_t sub_27522A598()
{
  if (*(v0 + 236) != 1)
  {
LABEL_16:
    v21 = *(v0 + 144);
    v22 = sub_27522F7CC();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

    v23 = *(v0 + 8);

    return v23();
  }

  v1 = *(v0 + 152);
  v9 = type metadata accessor for MessageExtractor(0);
  *(v0 + 176) = v9;
  v10 = *(v9 + 48);
  *(v0 + 232) = v10;
  v11 = *(v1 + v10);
  *(v0 + 184) = v11;
  if (v11)
  {
    v12 = *(v1 + *(v9 + 52));
    if (v12 >> 62)
    {
      v20 = sub_27522FE0C();
      v11 = *(v0 + 184);
      if (v11 < v20)
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (v11 < 0)
          {
            __break(1u);
          }

          else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v12 + 8 * v11 + 32);
            goto LABEL_9;
          }

          __break(1u);
          return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
        }

        v13 = MEMORY[0x277C6E790]();
LABEL_9:
        v14 = v13;
        *(v0 + 208) = v13;
        v15 = *(v0 + 152);
        v16 = swift_task_alloc();
        *(v0 + 216) = v16;
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        v17 = swift_task_alloc();
        *(v0 + 224) = v17;
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D70, &unk_2752316A0);
        *v17 = v0;
        v17[1] = sub_27522AC98;
        v6 = sub_27522CD24;
        v4 = 0x29287478656ELL;
        v11 = v0 + 80;
        v2 = 0;
        v3 = 0;
        v5 = 0xE600000000000000;
        v7 = v16;

        return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
      }
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v18 = swift_task_alloc();
  *(v0 + 192) = v18;
  *v18 = v0;
  v18[1] = sub_27522A840;

  return sub_2752295A4();
}

uint64_t sub_27522A840(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_27522A940, 0, 0);
}

uint64_t sub_27522A940()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[19];
    v3 = *(v0[22] + 52);

    *(v2 + v3) = v1;
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v4 = sub_27522F87C();
    __swift_project_value_buffer(v4, qword_2809B5470);

    v5 = sub_27522F85C();
    v6 = sub_27522FC6C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[25];
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = v7 >> 62 ? sub_27522FE0C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v8 + 4) = v9;

      _os_log_impl(&dword_275217000, v5, v6, "Queried %ld messages.", v8, 0xCu);
      MEMORY[0x277C6EE90](v8, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v17 = *(v0[19] + *(v0[22] + 52));
    v18 = v17 >> 62 ? sub_27522FE0C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v0[23];
    if (v19 < v18)
    {
      if ((v17 & 0xC000000000000001) == 0)
      {
        if (v19 < 0)
        {
          __break(1u);
        }

        else if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v20 = *(v17 + 8 * v19 + 32);
          goto LABEL_16;
        }

        __break(1u);
        return MEMORY[0x2822007B8](v19, v10, v11, v12, v13, v14, v15, v16);
      }

      v20 = MEMORY[0x277C6E790]();
LABEL_16:
      v21 = v20;
      v0[26] = v20;
      v22 = v0[19];
      v23 = swift_task_alloc();
      v0[27] = v23;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      v24 = swift_task_alloc();
      v0[28] = v24;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D70, &unk_2752316A0);
      *v24 = v0;
      v24[1] = sub_27522AC98;
      v14 = sub_27522CD24;
      v12 = 0x29287478656ELL;
      v19 = (v0 + 10);
      v10 = 0;
      v11 = 0;
      v13 = 0xE600000000000000;
      v15 = v23;

      return MEMORY[0x2822007B8](v19, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v25 = v0[18];
  v26 = sub_27522F7CC();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_27522AC98()
{

  return MEMORY[0x2822009F8](sub_27522ADB0, 0, 0);
}

uint64_t sub_27522ADB0()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (*(v0 + 24))
  {
    v3 = [*(v0 + 208) senderAddress];
    v4 = &off_27A646000;
    v81 = v0;
    if (v3)
    {
      v5 = [v3 stringValue];
      swift_unknownObjectRelease();
      sub_27522F9BC();
    }

    v12 = [*(v0 + 208) subject];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 subjectString];

      sub_27522F9BC();
    }

    v15 = *(v0 + 208);
    v16 = *(v0 + 152);
    v17 = objc_opt_self();
    v18 = sub_27522F98C();
    v19 = [v17 snippetFromHTMLBody:v18 options:*(v16 + 16) maxLength:*(v16 + 40) preservingQuotedForwardedContent:0];

    v20 = sub_27522F9BC();
    v22 = v21;

    v23 = [v15 toList];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D78, &qword_2752316B0);
    v24 = sub_27522FB7C();

    v79 = v22;
    v80 = v20;
    if (v24 >> 62)
    {
      v25 = sub_27522FE0C();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = MEMORY[0x277D84F90];
    v26 = v81;
    if (v25)
    {
      v84 = MEMORY[0x277D84F90];
      sub_27521C4C8(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v27 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C6E790](v27, v24);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v28 = [swift_unknownObjectRetain() v4[82]];
        v29 = sub_27522F9BC();
        v31 = v30;

        swift_unknownObjectRelease_n();
        v33 = *(v84 + 16);
        v32 = *(v84 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_27521C4C8((v32 > 1), v33 + 1, 1);
        }

        ++v27;
        *(v84 + 16) = v33 + 1;
        v34 = v84 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
        v4 = &off_27A646000;
      }

      while (v25 != v27);

      v26 = v81;
      v0 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v35 = [*(v26 + 208) ccList];
    v36 = sub_27522FB7C();

    if (v36 >> 62)
    {
      v37 = sub_27522FE0C();
      if (v37)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
LABEL_25:
        sub_27521C4C8(0, v37 & ~(v37 >> 63), 0);
        if (v37 < 0)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v38 = 0;
        v39 = v36;
        v82 = v36 & 0xC000000000000001;
        v40 = v36;
        do
        {
          if (v82)
          {
            MEMORY[0x277C6E790](v38, v39);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v41 = [swift_unknownObjectRetain() v4[82]];
          v42 = sub_27522F9BC();
          v44 = v43;

          swift_unknownObjectRelease_n();
          v46 = *(v0 + 16);
          v45 = *(v0 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_27521C4C8((v45 > 1), v46 + 1, 1);
          }

          ++v38;
          *(v0 + 16) = v46 + 1;
          v47 = v0 + 16 * v46;
          *(v47 + 32) = v42;
          *(v47 + 40) = v44;
          v4 = &off_27A646000;
          v39 = v40;
        }

        while (v37 != v38);

        v26 = v81;
LABEL_37:
        v48 = [*(v26 + 208) bccList];
        v49 = sub_27522FB7C();

        if (v49 >> 62)
        {
          v50 = sub_27522FE0C();
          if (v50)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v50)
          {
LABEL_39:
            v85 = MEMORY[0x277D84F90];
            sub_27521C4C8(0, v50 & ~(v50 >> 63), 0);
            if (v50 < 0)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v51 = 0;
            v52 = v49;
            v83 = v49 & 0xC000000000000001;
            v53 = v49;
            v54 = v50;
            do
            {
              if (v83)
              {
                MEMORY[0x277C6E790](v51, v52);
              }

              else
              {
                swift_unknownObjectRetain();
              }

              v55 = [swift_unknownObjectRetain() v4[82]];
              v56 = sub_27522F9BC();
              v58 = v57;

              swift_unknownObjectRelease_n();
              v60 = *(v85 + 16);
              v59 = *(v85 + 24);
              if (v60 >= v59 >> 1)
              {
                sub_27521C4C8((v59 > 1), v60 + 1, 1);
              }

              ++v51;
              *(v85 + 16) = v60 + 1;
              v61 = v85 + 16 * v60;
              *(v61 + 32) = v56;
              *(v61 + 40) = v58;
              v4 = &off_27A646000;
              v52 = v53;
            }

            while (v54 != v51);

            v26 = v81;
            goto LABEL_50;
          }
        }

LABEL_50:
        v62 = *(v26 + 232);
        v63 = *(v26 + 152);
        v64 = *(v63 + v62);
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (!v65)
        {
          v67 = *(v26 + 208);
          *(v63 + v62) = v66;
          v68 = [v67 date];
          sub_27522F5AC();

          if (*(v63 + 48))
          {
            sub_275223008(v80, v79);
          }

          v69 = *(v26 + 208);
          v78 = *(v26 + 144);
          [v69 isToMe];
          v70 = [v69 flags];
          [v70 read];

          v71 = [v69 flags];
          [v71 deleted];

          v72 = [v69 flags];
          [v72 replied];

          v73 = [v69 flags];
          [v73 forwarded];

          v74 = [v69 flags];
          [v74 isJunk];

          [v69 conversationID];

          v0 = v81;
          sub_27522F7AC();

          sub_27521DA80(v81 + 16, &qword_2809B3D70, &unk_2752316A0);
          v75 = sub_27522F7CC();
          (*(*(v75 - 8) + 56))(v78, 0, 1, v75);
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    goto LABEL_37;
  }

  if (qword_2809B3908 != -1)
  {
LABEL_61:
    swift_once();
  }

  v6 = sub_27522F87C();
  __swift_project_value_buffer(v6, qword_2809B5470);
  v7 = sub_27522F85C();
  v8 = sub_27522FC8C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275217000, v7, v8, "Failed to extract message content. Terminated extraction loop.", v9, 2u);
    MEMORY[0x277C6EE90](v9, -1, -1);
  }

  v10 = *(v0 + 144);

  v11 = sub_27522F7CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
LABEL_54:

  v76 = *(v0 + 8);

  return v76();
}