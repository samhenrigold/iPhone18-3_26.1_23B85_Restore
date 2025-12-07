void *sub_25AADB160(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10B70, &qword_25AAE18B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_25AAE0818(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_25AADB258(void *a1, int64_t a2, char a3)
{
  result = sub_25AADB160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t DefaultAnalyzerFactory.init(configOptions:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v19 = v1;
    err = MEMORY[0x277D84F90];
    sub_25AADB258(0, v4, 0);
    v5 = err;
    v6 = *(err + 2);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      if (v8 >= 0x40)
      {
        v9 = 0;
      }

      else
      {
        v9 = 1 << v8;
      }

      v10 = *(err + 3);
      if (v6 >= v10 >> 1)
      {
        sub_25AADB258((v10 > 1), v6 + 1, 1);
      }

      *(err + 2) = v6 + 1;
      *(err + v6 + 4) = v9;
      ++v7;
      ++v6;
      --v4;
    }

    while (v4);

    v2 = v19;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v11 = *(v5 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 32);
    do
    {
      v14 = *v13++;
      v12 |= v14;
      --v11;
    }

    while (v11);
  }

  v15 = mdaf_create();
  if (v15)
  {
    *(v2 + 16) = v15;
  }

  else
  {
    sub_25AADD680();
    v16 = OUTLINED_FUNCTION_2_0(&type metadata for MorphunError);
    *v17 = 0xD00000000000002BLL;
    v17[1] = 0x800000025AAE1A90;
    OUTLINED_FUNCTION_1_0(v16, v17);
    type metadata accessor for DefaultAnalyzerFactory();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t sub_25AADB578()
{
  sub_25AADB4E0(sub_25AADB5F0);
  if (!v1)
  {
    v3 = v2;
    type metadata accessor for ConfigurableAnalyzer();
    v1 = swift_allocObject();
    *(v1 + 16) = v3;
    *(v1 + 24) = v0;
  }

  return v1;
}

void sub_25AADB630(void (*a1)(uint64_t *__return_ptr, CFErrorRef *))
{
  err[1] = *MEMORY[0x277D85DE8];
  err[0] = 0;
  a1(&v12, err);
  v1 = err[0];
  if (err[0])
  {
    v2 = CFErrorGetDomain(err[0]);
    if (v2)
    {
      v3 = v2;
      v4 = sub_25AAE0B6C();
      v6 = v5;
      sub_25AADD680();
      OUTLINED_FUNCTION_1();
      v7 = swift_allocError();
      *v8 = v4;
      v8[1] = v6;
      OUTLINED_FUNCTION_2(v7, v8);
      swift_willThrow();

      return;
    }
  }

  if (!v12)
  {
    sub_25AADD680();
    OUTLINED_FUNCTION_1();
    swift_allocError();
    OUTLINED_FUNCTION_7();
    *v9 = v10;
    v9[1] = 0x800000025AAE1A90;
    OUTLINED_FUNCTION_2(v11, v9);
    swift_willThrow();
  }
}

void sub_25AADB75C(uint64_t *a3@<X8>)
{
  v4 = sub_25AAE0ACC();
  Analyzer = mdaf_getAnalyzer();

  *a3 = Analyzer;
}

uint64_t ConfigurableAnalyzer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t DefaultAnalyzerFactory.__deallocating_deinit()
{
  mdaf_destroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_25AADB880()
{
  v0 = sub_25AAE0B5C();
  TokenChainString = mca_createTokenChainString();

  if (TokenChainString)
  {
    type metadata accessor for TokenChain();
    swift_allocObject();
    sub_25AADB9E0(TokenChainString);
  }

  else
  {
    sub_25AADD680();
    v2 = OUTLINED_FUNCTION_2_0(&type metadata for MorphunError);
    OUTLINED_FUNCTION_0_0(v2, v3);
  }
}

uint64_t sub_25AADB9E0(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = a1;
  *(v1 + 80) = mtokc_getSize();
  return v1;
}

uint64_t sub_25AADBAF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AADBB20();
  *a1 = result;
  return result;
}

uint64_t sub_25AADBB28@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (*(v2 + 24))
  {
    OUTLINED_FUNCTION_8(a2);
    Next = mtok_getNext();
  }

  else
  {
    OUTLINED_FUNCTION_8(a2);
    Next = mtokc_getHead();
  }

  v5 = Next;
  swift_endAccess();
  *(v2 + 24) = v5;
  result = swift_beginAccess();
  if (*(v2 + 32) || !v5)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *a1 = v5;
    a1[1] = v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25AADBC1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t OUTLINED_FUNCTION_5_0()
{

  return MEMORY[0x2821FF290](v0, v1);
}

void sub_25AADBD04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, CFErrorRef err, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9();
  v20();

  OUTLINED_FUNCTION_10();
}

void sub_25AADBED0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFErrorRef err, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9();
  if (!v20())
  {
    sub_25AADD680();
    OUTLINED_FUNCTION_1();
    swift_allocError();
    OUTLINED_FUNCTION_7();
    *v21 = v22;
    v21[1] = 0x800000025AAE1A90;
    OUTLINED_FUNCTION_2(v23, v21);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_10();
}

uint64_t TokenChain.__deallocating_deinit()
{
  TokenChain.deinit();

  return MEMORY[0x2821FE8D8](v0, 84, 7);
}

void *TokenChain.deinit()
{
  mtokc_destroy();

  return v0;
}

uint64_t getEnumTagSinglePayload for ConfigurationFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfigurationFeature(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x25AADC1B8);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25AADC208@<X0>(uint64_t *a1@<X8>)
{
  result = TokenizationType.rawValue.getter();
  *a1 = result;
  return result;
}

MorphunSwift::TokenType_optional __swiftcall TokenType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MorphunSwift::TokenizationType_optional __swiftcall TokenizationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25AADC35C(uint64_t a1, uint64_t a2)
{
  v2 = mtokc_compare();

  return v2;
}

void sub_25AADC488(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFErrorRef err, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9();
  a19 = v22;
  a20 = v23;
  v25 = OUTLINED_FUNCTION_4(v24);
  v26(v25, &err);
  v27 = err;
  if (err)
  {
    v28 = CFErrorGetDomain(err);
    if (v28)
    {
      v29 = v28;
      sub_25AAE0B6C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_1();
      v30 = swift_allocError();
      *v31 = v20;
      v31[1] = v21;
      OUTLINED_FUNCTION_2(v30, v31);
      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_10();
}

void sub_25AADC57C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFErrorRef err, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9();
  a19 = v22;
  a20 = v23;
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26(v25, &err);
  v28 = err;
  if (err)
  {
    v29 = CFErrorGetDomain(err);
    if (v29)
    {
      v30 = v29;
      sub_25AAE0B6C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_1();
      v31 = swift_allocError();
      *v32 = v20;
      v32[1] = v21;
      OUTLINED_FUNCTION_2(v31, v32);
      swift_willThrow();

      goto LABEL_8;
    }
  }

  if (!v27)
  {
    sub_25AADD680();
    OUTLINED_FUNCTION_1();
    swift_allocError();
    OUTLINED_FUNCTION_7();
    *v33 = v34;
    v33[1] = 0x800000025AAE1A90;
    OUTLINED_FUNCTION_2(v35, v33);
    swift_willThrow();
  }

LABEL_8:
  OUTLINED_FUNCTION_10();
}

uint64_t sub_25AADC6A4(uint64_t a1, uint64_t a2)
{
  Type = mtok_getType();

  return Type;
}

uint64_t sub_25AADC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25AAE0B5C();
  TokenChain = mtok_createTokenChain();

  if (TokenChain)
  {
  }

  else
  {
    sub_25AADD680();
    swift_allocError();
    *v5 = 0xD00000000000002BLL;
    *(v5 + 8) = 0x800000025AAE1A90;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  return TokenChain;
}

void sub_25AADCA54(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4(a1);
  v2(v1);
  if (err)
  {
    v3 = CFErrorGetDomain(err);
    if (v3)
    {
      v4 = v3;
      v5 = sub_25AAE0B6C();
      v7 = v6;
      sub_25AADD680();
      OUTLINED_FUNCTION_1();
      v8 = swift_allocError();
      *v9 = v5;
      v9[1] = v7;
      OUTLINED_FUNCTION_2(v8, v9);
      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_25AADCB50(void *(*a1)(char *__return_ptr, CFErrorRef *))
{
  err[1] = *MEMORY[0x277D85DE8];
  err[0] = 0;
  a1(&v12, err);
  v1 = err[0];
  if (err[0])
  {
    v2 = CFErrorGetDomain(err[0]);
    if (v2)
    {
      v3 = v2;
      v4 = sub_25AAE0B6C();
      v6 = v5;
      sub_25AADD680();
      OUTLINED_FUNCTION_1();
      v7 = swift_allocError();
      *v8 = v4;
      v8[1] = v6;
      OUTLINED_FUNCTION_2(v7, v8);
      swift_willThrow();

      return;
    }
  }

  if (v12)
  {
    sub_25AADD680();
    OUTLINED_FUNCTION_1();
    swift_allocError();
    OUTLINED_FUNCTION_7();
    *v9 = v10;
    v9[1] = 0x800000025AAE1A90;
    OUTLINED_FUNCTION_2(v11, v9);
    swift_willThrow();
  }
}

char Token.type.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *v1;

  v4 = OUTLINED_FUNCTION_5();
  v6 = sub_25AADC6A4(v4, v5);
  if (v3)
  {
    goto LABEL_5;
  }

  LOBYTE(v6) = TokenType.init(rawValue:)(v6);
  if (v8 == 7)
  {
    __break(1u);
LABEL_5:
    LOBYTE(v6) = OUTLINED_FUNCTION_0(v6, "MorphunSwift/Tokenizer.swift");
    __break(1u);
    return v6;
  }

  *a1 = v8;
  return v6;
}

uint64_t Token.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_25AADBED0(v1, v2, MEMORY[0x277D82AF8], v3, v4, v5, v6, v7, v16, v18, 0, 0xE000000000000000, v20, v21, v22, v23, v24, v25, vars0, vars8);
  v9 = v8;
  v10 = sub_25AAE0B6C();
  v12 = v11;

  MEMORY[0x25F853DF0](v10, v12);

  MEMORY[0x25F853DF0](2112032, 0xE300000000000000);

  v13 = sub_25AADC6A4(v1, v2);
  LOBYTE(v14) = TokenType.init(rawValue:)(v13);
  if (v17 == 7)
  {
    __break(1u);
    result = OUTLINED_FUNCTION_0(v14, "MorphunSwift/Tokenizer.swift");
    __break(1u);
  }

  else
  {
    sub_25AAE0C9C();
    return v19;
  }

  return result;
}

uint64_t Token.range.getter()
{
  mtok_getStartChar();
  mtok_getEndChar();
  sub_25AADCFD4();
  v0 = sub_25AAE0BDC();
  v2 = v1;

  if ((v2 & 1) == 0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AADCEBC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25AADCF10();
  *a1 = result;
  return result;
}

uint64_t sub_25AADCF84(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = 0;
  return result;
}

uint64_t sub_25AADCF90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AADCFD4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25AADD084(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_3();
}

uint64_t sub_25AADD090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AADD11C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25AADD0D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_25AADD1CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return OUTLINED_FUNCTION_3();
}

BOOL static TokenChain.== infix(_:_:)(uint64_t a1, uint64_t a2)
{

  return sub_25AADC35C(a1, a2) == 0;
}

void *sub_25AADD27C()
{
  v1 = sub_25AADE324(v0);

  return v1;
}

uint64_t Tokenizer.__allocating_init(locale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Tokenizer.init(locale:)(a1);
  return v2;
}

uint64_t Tokenizer.init(locale:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  sub_25AADB630(sub_25AADD4FC);
  if (v2)
  {
    type metadata accessor for Tokenizer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v4;
  }

  v5 = sub_25AAE0AEC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v1;
}

void sub_25AADD4B0(uint64_t *a2@<X8>)
{
  v3 = sub_25AAE0ACC();
  Tokenizer = mtok_createTokenizer();

  *a2 = Tokenizer;
}

uint64_t sub_25AADD528(uint64_t a1, uint64_t a2)
{
  v2 = sub_25AAE0B5C();
  TokenChain = mtok_createTokenChain();

  if (TokenChain)
  {
    type metadata accessor for TokenChain();
    v4 = swift_allocObject();
    sub_25AADB9E0(TokenChain);
  }

  else
  {
    v4 = 0x800000025AAE1A90;
    sub_25AADD680();
    OUTLINED_FUNCTION_1();
    swift_allocError();
    OUTLINED_FUNCTION_7();
    *v5 = v6;
    v5[1] = 0x800000025AAE1A90;
    OUTLINED_FUNCTION_2(v7, v5);
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_25AADD680()
{
  result = qword_27FA10B28;
  if (!qword_27FA10B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10B28);
  }

  return result;
}

uint64_t sub_25AADD6D4(uint64_t a1, uint64_t a2)
{

  v5 = sub_25AADC7B4(v2, a1, a2);
  type metadata accessor for TokenChain();
  v6 = swift_allocObject();
  sub_25AADB9E0(v5);
  return v6;
}

void sub_25AADD764(unsigned __int8 *a1)
{
  v1 = *a1;

  sub_25AADC94C(v2, v1);
}

uint64_t sub_25AADD7BC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25AADD810();
  *a1 = result;
  return result;
}

uint64_t sub_25AADD8E4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25AADD938();
  *a1 = result;
  return result;
}

void sub_25AADDAC4(void *a1)
{
  v1 = a1[1];

  sub_25AADCA54(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_0(v3, "MorphunSwift/Tokenizer.swift");
    __break(1u);
  }
}

uint64_t Tokenizer.__deallocating_deinit()
{
  mtok_destroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_25AADDB8C()
{
  result = qword_27FA10B30;
  if (!qword_27FA10B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10B30);
  }

  return result;
}

unint64_t sub_25AADDBE4()
{
  result = qword_27FA10B38;
  if (!qword_27FA10B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10B38);
  }

  return result;
}

unint64_t sub_25AADDC3C()
{
  result = qword_27FA10B40;
  if (!qword_27FA10B40)
  {
    type metadata accessor for TokenChain();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10B40);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25AADDCB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_25AADDCF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for TokenType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TokenType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TokenizationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TokenizationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25AADE01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25AADE2D8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_25AADE324(void *result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  for (i = (MEMORY[0x277D84F90] + 32); ; i += 2)
  {
    result = sub_25AADBB28(&v19, result);
    v4 = v20;
    if (!v20)
    {
      v16 = v2[3];
      if (v16 >= 2)
      {
        v17 = v16 >> 1;
        v15 = __OFSUB__(v17, v1);
        v18 = v17 - v1;
        if (v15)
        {
          goto LABEL_25;
        }

        v2[2] = v18;
      }

      return v2;
    }

    v5 = v19;
    if (!v1)
    {
      v6 = v2[3];
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10B58, &qword_25AAE1710);
      v9 = swift_allocObject();
      v10 = (_swift_stdlib_malloc_size(v9) - 32) / 16;
      v9[2] = v8;
      v9[3] = 2 * v10;
      v11 = (v9 + 4);
      v12 = v2[3];
      v13 = v12 >> 1;
      if (v2[2])
      {
        if (v9 != v2 || v11 >= &v2[2 * v13 + 4])
        {
          memmove(v9 + 4, v2 + 4, 16 * v13);
        }

        v2[2] = 0;
      }

      i = (v11 + 16 * v13);
      v1 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - (v12 >> 1);

      v2 = v9;
    }

    v15 = __OFSUB__(v1--, 1);
    if (v15)
    {
      break;
    }

    *i = v5;
    i[1] = v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_25AADE478(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = a2;
      v5 = 0;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        result = sub_25AADBB28(&v10, result);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_9;
        }

        *v7 = v10;
        v7[1] = v9;
        v7 += 2;
        ++v5;
        if (v8 == a3)
        {
          v5 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

unint64_t OUTLINED_FUNCTION_11()
{

  return sub_25AADD680();
}

char *sub_25AADE5E8()
{
  v13[0] = sub_25AAE0AEC();
  v0 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = mloc_getSupportedLocalesList();
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  result = [result count];
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = [v4 objectAtIndex_];
    sub_25AAE0C5C();
    swift_unknownObjectRelease();
    type metadata accessor for CFLocale(0);
    swift_dynamicCast();
    v9 = v13[1];
    sub_25AAE0ADC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25AADE81C(0, v7[2] + 1, 1, v7);
    }

    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      v7 = sub_25AADE81C((v10 > 1), v11 + 1, 1, v7);
    }

    v7[2] = v11 + 1;
    result = (*(v0 + 32))(v7 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v13[0]);
    if (v5 == v6)
    {
      break;
    }

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  return v7;
}

void *sub_25AADE81C(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_25AADE958(v8, v7);
  v10 = *(sub_25AAE0AEC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_25AAE075C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_25AADE958(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10B60, &unk_25AAE1740);
  v4 = *(sub_25AAE0AEC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

MorphunSwift::ConfigurationFeature_optional __swiftcall ConfigurationFeature.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25AADEA78@<X0>(uint64_t *a1@<X8>)
{
  result = ConfigurationFeature.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_25AADEAA0(uint64_t a1)
{
  TokenChain = mca_createTokenChain();
  if (TokenChain)
  {
    type metadata accessor for TokenChain();
    swift_allocObject();
    sub_25AADB9E0(TokenChain);
  }

  else
  {
    sub_25AADD680();
    v2 = OUTLINED_FUNCTION_2_0(&type metadata for MorphunError);
    OUTLINED_FUNCTION_0_0(v2, v3);
  }
}

uint64_t DefaultAnalyzerFactory.__allocating_init(configOptions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DefaultAnalyzerFactory.init(configOptions:)(a1);
  return v2;
}

uint64_t DefaultAnalyzerFactory.__allocating_init()()
{
  type metadata accessor for DefaultAnalyzerFactory();
  v0 = swift_allocObject();
  DefaultAnalyzerFactory.init(configOptions:)(&unk_286C1CEC8);
  return v0;
}

unint64_t sub_25AADECB8()
{
  result = qword_27FA10B68;
  if (!qword_27FA10B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000002BLL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_allocError();
}

void sub_25AADEEB4(_BYTE *a4@<X8>)
{
  v5 = sub_25AAE0ACC();
  v6 = sub_25AAE0B5C();
  mdr_registerDataPathForLocale();

  *a4 = 0;
}

uint64_t getDataPathForLocale(locale:)()
{
  sub_25AADB4E0(sub_25AADEFF4);
  v1 = v0;
  v2 = sub_25AAE0B6C();

  return v2;
}

void sub_25AADEFA8(uint64_t *a2@<X8>)
{
  v3 = sub_25AAE0ACC();
  DataPathForLocaleCopy = mdr_getDataPathForLocaleCopy();

  *a2 = DataPathForLocaleCopy;
}

uint64_t sub_25AADEFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25AAE0AEC();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_25AAE0ABC();
  v14 = v11;
  v15 = a3;
  v16 = a4;
  sub_25AADCB50(sub_25AADF288);
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_25AADF120(uint64_t a1, uint64_t a2)
{
  v2 = sub_25AAE0AEC();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25AAE0ABC();
  v8 = getDataPathForLocale(locale:)();
  (*(v4 + 8))(v7, v2);
  return v8;
}

uint64_t sub_25AADF2A0(unsigned __int8 a1)
{
  sub_25AAE0CFC();
  MEMORY[0x25F853F80](a1);
  return sub_25AAE0D1C();
}

uint64_t sub_25AADF2E8(uint64_t a1, unsigned __int8 a2)
{
  sub_25AAE0CFC();
  MEMORY[0x25F853F80](a2);
  return sub_25AAE0D1C();
}

MorphunSwift::LogLevel_optional __swiftcall LogLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25AADF3A8@<X0>(uint64_t *a1@<X8>)
{
  result = LogLevel.rawValue.getter();
  *a1 = result;
  return result;
}

void *sub_25AADF3E0()
{
  sub_25AAE0C4C();
  sub_25AAE0C3C();
  return v0;
}

uint64_t sub_25AADF430()
{
  sub_25AADF3E0();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25AADF464()
{
  v0 = sub_25AAE0B1C();
  __swift_allocate_value_buffer(v0, qword_27FA11540);
  __swift_project_value_buffer(v0, qword_27FA11540);
  return sub_25AAE0B0C();
}

void sub_25AADF4E0(uint64_t *a1, Swift::Int rawValue, const UChar *a3, const UChar *a4)
{
  if (a1)
  {
    v6 = a1[1];
    LogLevel.init(rawValue:)(rawValue);
    if (v25 == 6)
    {
      v7 = qword_27FA10B10;
      swift_unknownObjectRetain();
      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_25AAE0B1C();
      __swift_project_value_buffer(v8, qword_27FA11540);
      v9 = sub_25AAE0AFC();
      v10 = sub_25AAE0BEC();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_25;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Error in morphun logging: Invalid log level passed by morphun";
LABEL_24:
      _os_log_impl(&dword_25AADA000, v9, v10, v12, v11, 2u);
      MEMORY[0x25F854410](v11, -1, -1);
LABEL_25:

      swift_unknownObjectRelease();
      return;
    }

    if (a3)
    {
      swift_unknownObjectRetain();
      u_strlen(a3);
      v16 = sub_25AAE0B4C();
      a3 = v17;
      if (a4)
      {
LABEL_16:
        u_strlen(a4);
        v18 = sub_25AAE0B4C();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v24 = v25;
        (*(v6 + 8))(&v24, v16, a3, v18, v20, ObjectType, v6);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v16 = 0;
      if (a4)
      {
        goto LABEL_16;
      }
    }

    if (qword_27FA10B10 != -1)
    {
      swift_once();
    }

    v22 = sub_25AAE0B1C();
    __swift_project_value_buffer(v22, qword_27FA11540);
    v9 = sub_25AAE0AFC();
    v10 = sub_25AAE0BEC();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_25;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Error in morphun logging: Morphun log message is found to be null";
    goto LABEL_24;
  }

  if (qword_27FA10B10 != -1)
  {
    swift_once();
  }

  v13 = sub_25AAE0B1C();
  __swift_project_value_buffer(v13, qword_27FA11540);
  oslog = sub_25AAE0AFC();
  v14 = sub_25AAE0BEC();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25AADA000, oslog, v14, "Error in morphun logging: loggerDelegateCPtr is null", v15, 2u);
    MEMORY[0x25F854410](v15, -1, -1);
  }
}

uint64_t sub_25AADF864()
{
  v7 = sub_25AAE0C0C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25AAE0BFC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_25AAE0B3C();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_25AAE0944();
  sub_25AAE0B2C();
  v8 = MEMORY[0x277D84F90];
  sub_25AAE0988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10C30, &qword_25AAE1A88);
  sub_25AAE09E0(&qword_27FA10C38, &qword_27FA10C30, &qword_25AAE1A88, MEMORY[0x277D83970]);
  sub_25AAE0C6C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_25AAE0C2C();
  qword_27FA11558 = result;
  return result;
}

uint64_t sub_25AADFAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27FA10B20 != -1)
  {
LABEL_15:
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27FA11560;
  v6 = sub_25AAE0738(qword_27FA11560);

  v7 = 0;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F853EF0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = **(v8 + 16);

    ++v7;
    if (v9 == a1)
    {

      v13 = 0;
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10C18, &qword_25AAE1A80);
  v13 = swift_allocObject();
  swift_unknownObjectRetain();
  v10 = swift_slowAlloc();
  *(v13 + 16) = v10;
  *v10 = a1;
  v10[1] = a2;
  swift_beginAccess();

  MEMORY[0x25F853E20](v11);
  sub_25AAE070C(*((qword_27FA11560 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_25AAE0BCC();
  result = swift_endAccess();
LABEL_12:
  *a3 = v13;
  return result;
}

uint64_t sub_25AADFC74@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (qword_27FA10B20 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    result = swift_beginAccess();
    v5 = qword_27FA11560;
    if (qword_27FA11560 >> 62)
    {
      break;
    }

    v6 = *((qword_27FA11560 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_4:

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F853EF0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      v9 = **(v8 + 16);

      if (v9 == a1)
      {

        swift_beginAccess();
        v11 = sub_25AADFE04(v7);
        result = swift_endAccess();
        goto LABEL_15;
      }

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      ++v7;
      if (v10 == v6)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  result = sub_25AAE0CAC();
  v6 = result;
  if (result)
  {
    goto LABEL_4;
  }

LABEL_13:
  v11 = 0;
LABEL_15:
  *a2 = v11;
  return result;
}

unint64_t sub_25AADFE04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_25AAE0844(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

MorphunSwift::LogLevel_optional static LoggerConfig.getLogLevel()()
{
  LogLevel = mlogc_getLogLevel();

  return LogLevel.init(rawValue:)(LogLevel);
}

uint64_t static LoggerConfig.registerLogger(loggerDelegate:)(uint64_t a1)
{
  if (qword_27FA10B18 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_1(&qword_27FA10B18);
  }

  MEMORY[0x28223BE20](a1);
  v1 = OUTLINED_FUNCTION_4_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10B78, &qword_25AAE18E0);
  OUTLINED_FUNCTION_5_0();

  if (v4)
  {
    v2 = mlogc_registerLogger();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t static LoggerConfig.unregisterLogger(loggerDelegate:)(uint64_t a1)
{
  if (qword_27FA10B18 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_1(&qword_27FA10B18);
  }

  MEMORY[0x28223BE20](a1);
  v1 = OUTLINED_FUNCTION_4_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA10B78, &qword_25AAE18E0);
  OUTLINED_FUNCTION_5_0();

  if (v4)
  {
    v2 = mlogc_unregisterLogger();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_25AAE0414()
{
  result = qword_27FA10B80;
  if (!qword_27FA10B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10B80);
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

uint64_t getEnumTagSinglePayload for LogLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LogLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25AAE070C(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_25AAE0738(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_25AAE0CAC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_25AAE075C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_25AAE0AEC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_25AAE0AEC();
    v8 = OUTLINED_FUNCTION_3_0();

    return MEMORY[0x2821FE828](v8);
  }

  else if (a3 != a1)
  {
    v7 = OUTLINED_FUNCTION_3_0();

    return MEMORY[0x2821FE820](v7);
  }

  return result;
}

char *sub_25AAE0818(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

uint64_t sub_25AAE0844(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25AAE0CAC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_25AAE0944()
{
  result = qword_27FA10C20;
  if (!qword_27FA10C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA10C20);
  }

  return result;
}

unint64_t sub_25AAE0988()
{
  result = qword_27FA10C28;
  if (!qword_27FA10C28)
  {
    sub_25AAE0BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA10C28);
  }

  return result;
}

uint64_t sub_25AAE09E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return MEMORY[0x2821F9930]();
}