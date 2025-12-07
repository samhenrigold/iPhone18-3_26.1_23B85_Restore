CoreSpeechUtils::SecureKeywordAnalyzerType_optional __swiftcall SecureKeywordAnalyzerType.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureKeywordAnalyzerType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2479750F0()
{
  sub_2479951C4();
  sub_2479951E4();
  return sub_2479951F4();
}

uint64_t sub_247975178(uint64_t a1)
{
  sub_2479951C4();
  sub_2479951E4();
  return sub_2479951F4();
}

_DWORD *sub_2479751C4@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2479751E4(int *a1@<X8>)
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

uint64_t sub_24797523C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_247975284(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_2479752FC(int a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t SecureKeywordAnalyzerNDAPI.__allocating_init(configPath:resourcePath:memoryIndexes:configDataString:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{

  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 40) = 0;
  v10 = MEMORY[0x24C1AFE90]();
  v11 = [a5 memoryIndexes];
  sub_247994E54();

  sub_247994D84();
  swift_allocObject();
  v12 = sub_247994D74();
  objc_autoreleasePoolPop(v10);

  if (v12)
  {
    *(v9 + 16) = v12;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

uint64_t SecureKeywordAnalyzerNDAPI.init(configPath:resourcePath:memoryIndexes:configDataString:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v9 = v8;

  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = 0;
  v12 = MEMORY[0x24C1AFE90](v11);
  v13 = [a5 memoryIndexes];
  sub_247994E54();

  sub_247994D84();
  swift_allocObject();
  v14 = sub_247994D74();
  objc_autoreleasePoolPop(v12);

  if (v14)
  {
    *(v9 + 16) = v14;
  }

  else
  {
    type metadata accessor for SecureKeywordAnalyzerNDAPI();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

uint64_t sub_24797567C()
{
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;

  sub_247994D44();

  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_2479756C4()
{

  sub_247994D14();
}

char *sub_24797570C(uint64_t a1)
{
  swift_beginAccess();
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(a1 + 40);
    *(v1 + 32) = 1;
    *(v1 + 40) = v3;
  }

  swift_beginAccess();

  v5 = sub_247975828(v4);

  return v5;
}

uint64_t sub_247975794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if ((*(v2 + 32) & 1) == 0)
  {
    v5 = *(a1 + 40);
    *(v2 + 32) = 1;
    *(v2 + 40) = v5;
  }

  swift_beginAccess();

  sub_247975C68(v6);

  return sub_247975E58(a2);
}

char *sub_247975828(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE590F0, &qword_247995AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_247994E04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v44 - v12;
  sub_247975C68(a1);

  v13 = sub_247994D04();

  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = 0;
  v15 = (v8 + 48);
  v49 = (v8 + 16);
  v50 = (v8 + 32);
  v55 = (v8 + 8);
  v57 = MEMORY[0x277D84F90];
  v47 = v6;
  v48 = v1;
  v46 = v7;
  v45 = v13;
  v44 = (v8 + 48);
  while (1)
  {

    sub_247994D34();

    if ((*v15)(v6, 1, v7) == 1)
    {
      sub_2479761D4(v6);
      goto LABEL_4;
    }

    v16 = v56;
    (*v50)(v56, v6, v7);
    (*v49)(v11, v16, v7);
    v18 = *(v2 + 40);
    v17 = *(v2 + 48);
    v19 = sub_247994DF4();
    v20 = sub_247994D94();
    result = sub_247994DE4();
    v22 = &result[v18];
    if (__CFADD__(result, v18))
    {
      break;
    }

    v23 = &v22[v17];
    if (__CFADD__(v22, v17))
    {
      goto LABEL_21;
    }

    result = sub_247994DC4();
    v24 = &result[v18];
    if (__CFADD__(result, v18))
    {
      goto LABEL_22;
    }

    v25 = &v24[v17];
    if (__CFADD__(v24, v17))
    {
      goto LABEL_23;
    }

    result = sub_247994DF4();
    v26 = &result[v18];
    if (__CFADD__(result, v18))
    {
      goto LABEL_24;
    }

    v27 = __CFADD__(v26, v17);
    v28 = &v26[v17];
    if (v27)
    {
      goto LABEL_25;
    }

    v54 = v28;
    sub_247994DD4();
    v30 = v29;
    v52 = sub_247994DB4();
    v31 = sub_247994DA4();
    v32 = *v55;
    (*v55)(v11, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v32;
    v34 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_24797623C(0, *(v57 + 2) + 1, 1, v57);
    }

    v36 = *(v57 + 2);
    v35 = *(v57 + 3);
    v51 = v23;
    if (v36 >= v35 >> 1)
    {
      v38 = v20;
      v39 = v19;
      v37 = v36 + 1;
      v57 = sub_24797623C((v35 > 1), v36 + 1, 1, v57);
    }

    else
    {
      v37 = v36 + 1;
      v38 = v20;
      v39 = v19;
    }

    v40 = v52 & 1;
    v41 = v34 & 1;
    v7 = v46;
    v53(v56, v46);
    v42 = v57;
    *(v57 + 2) = v37;
    v43 = &v42[48 * v36];
    *(v43 + 4) = v39;
    *(v43 + 10) = v38;
    *(v43 + 6) = v51;
    *(v43 + 7) = v25;
    *(v43 + 8) = v54;
    *(v43 + 18) = v30;
    v43[76] = v40;
    v43[77] = v41;
    v6 = v47;
    v2 = v48;
    v13 = v45;
    v15 = v44;
LABEL_4:
    if (v13 == ++v14)
    {
      return v57;
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
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_247975C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_247975C68(a1);

  return sub_247975E58(a2);
}

unint64_t sub_247975C68(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE590F0, &qword_247995AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_247994E04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_247994CF4();

  sub_247994D34();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_2479761D4(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  result = sub_247994DF4();
  if (result < *(v1 + 24))
  {
    v11 = *(v1 + 48);
    v12 = __CFADD__(v11, 0xFFFFFFFFLL);
    v13 = v11 + 0xFFFFFFFFLL;
    if (v12)
    {
      __break(1u);
      return result;
    }

    *(v1 + 48) = v13;
  }

  v14 = sub_247994DF4();
  result = (*(v7 + 8))(v9, v6);
  *(v2 + 24) = v14;
  return result;
}

uint64_t sub_247975E58@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE590F0, &qword_247995AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_247994E04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;

  sub_247994D24();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_2479761D4(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 2;
    return result;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_247994D94();
  v15 = *(v1 + 40);
  v14 = *(v1 + 48);
  v16 = sub_247994DF4();
  v17 = sub_247994D94();
  result = sub_247994DE4();
  v18 = result + v15;
  if (__CFADD__(result, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = __CFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v34 = v20;
  result = sub_247994DC4();
  v21 = result + v15;
  if (__CFADD__(result, v15))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = __CFADD__(v21, v14);
  v22 = v21 + v14;
  if (v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33 = v22;
  result = sub_247994DF4();
  v23 = result + v15;
  if (__CFADD__(result, v15))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = __CFADD__(v23, v14);
  v24 = v23 + v14;
  if (!v19)
  {
    v32 = v24;
    sub_247994DD4();
    v26 = v25;
    v27 = sub_247994DB4() & 1;
    v28 = sub_247994DA4();
    v29 = *(v7 + 8);
    v29(v10, v6);
    result = (v29)(v12, v6);
    *a1 = v16;
    *(a1 + 8) = v17;
    v30 = v33;
    *(a1 + 16) = v34;
    *(a1 + 24) = v30;
    *(a1 + 32) = v32;
    *(a1 + 40) = v26;
    *(a1 + 44) = v27;
    *(a1 + 45) = v28 & 1;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t SecureKeywordAnalyzerNDAPI.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
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

uint64_t sub_2479761D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE590F0, &qword_247995AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_24797623C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59140, &qword_247995CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_247976350()
{
  result = qword_27EE590F8;
  if (!qword_27EE590F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE590F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureKeywordAnalyzerType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureKeywordAnalyzerType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247976530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 46))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_247976584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureKeywordAnalyzerQuasarResult(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SecureKeywordAnalyzerQuasarResult(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27EE59100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE59100);
    }
  }
}

char *sub_247976920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59138, &qword_247995D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247976A3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59128, &qword_247995CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_247976B40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59130, &unk_247995CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_247976C44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59120, &qword_247995CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 72 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_247976D5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59118, &qword_247995CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247976E80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59110, &qword_247995CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_247976F84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59108, &unk_247996AC0);
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

unint64_t SecureFirstPassSource.description.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x61726F6D6552;
    v7 = 0x6863746157;
    if (v1 != 8)
    {
      v7 = 0x656D6C6C6F726E45;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    if (v1 != 5)
    {
      v8 = 0xD000000000000015;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x747372616548;
    v3 = 0x5041747372616548;
    if (v1 != 3)
    {
      v3 = 0x73697672614ALL;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000018;
    if (!*v0)
    {
      v4 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t SecureFirstPassSource.hashValue.getter()
{
  v1 = *v0;
  sub_2479951C4();
  MEMORY[0x24C1AFE00](v1);
  return sub_2479951F4();
}

uint64_t sub_247977268()
{
  v1 = *v0;
  sub_2479951C4();
  MEMORY[0x24C1AFE00](v1);
  return sub_2479951F4();
}

uint64_t sub_2479772DC(uint64_t a1)
{
  v2 = *v1;
  sub_2479951C4();
  MEMORY[0x24C1AFE00](v2);
  return sub_2479951F4();
}

uint64_t static SecureVTSecondPassConfigDecoder.decode(asset:firstPassSource:)(void *a1, _BYTE *a2)
{
  v4 = sub_247994EC4();
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v96) = *a2;
  v6 = _s15CoreSpeechUtils31SecureVTSecondPassConfigDecoderO019categoryKeyForFirstF005firstF6SourceSSAA0dlfN0O_tFZ_0(&v96);
  v8 = v7;

  v9 = sub_247994E74();

  v10 = [a1 containsCategoryWithCategory_];

  if ((v10 & 1) == 0)
  {
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v11 = sub_247994E34();
    __swift_project_value_buffer(v11, qword_27EE59180);
    v12 = sub_247995064();
    v13 = sub_247994E14();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v96 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_2479784A8(0xD000000000000035, 0x8000000247997200, &v96);
      *(v14 + 12) = 2048;
      *(v14 + 14) = 143;
      *(v14 + 22) = 2080;

      v16 = sub_2479784A8(v6, v8, &v96);

      *(v14 + 24) = v16;
      _os_log_impl(&dword_247974000, v13, v12, "[%s] [%ld] CategoryKey %s not found, falling back to default", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1B02C0](v15, -1, -1);
      MEMORY[0x24C1B02C0](v14, -1, -1);
    }

    v8 = 0x8000000247996DF0;
    v6 = 0xD000000000000016;
  }

  sub_247978264(a1, &v96);

  v17 = v96;
  v91 = v97;

  v18 = sub_247994E74();
  v19 = sub_247994E74();
  v20 = [a1 containsKeyWithKey:v18 category:v19];

  if (v20)
  {
    v90 = sub_247988E84(a1, v6, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59138, &qword_247995D10);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_247995D00;
    v90 = v21;
    sub_247988980(a1, (v21 + 32));
  }

  sub_247989368(a1, &v96);

  v93 = v97;
  v94 = v96;
  v92 = v98;

  v22 = sub_247994E74();
  v23 = sub_247994E74();

  LODWORD(v24) = 0.5;
  [a1 getFloatWithKey:v22 category:v23 defaultValue:v24];
  v26 = v25;

  v27 = sub_247994E74();
  v28 = sub_247994E74();

  LODWORD(v29) = 0.5;
  [a1 getFloatWithKey:v27 category:v28 defaultValue:v29];
  v31 = v30;

  v32 = sub_247994E74();
  v33 = sub_247994E74();

  LODWORD(v34) = 1050253722;
  [a1 getFloatWithKey:v32 category:v33 defaultValue:v34];
  v36 = v35;

  v37 = [a1 resourcePath];
  v89 = sub_247994E84();
  v88 = v38;

  v39 = [a1 assetPath];
  v87 = sub_247994E84();
  v86 = v40;

  v41 = sub_247994E74();
  v42 = sub_247994E74();

  v85 = [a1 containsKeyWithKey:v41 category:v42];

  v43 = sub_247994E74();
  v44 = sub_247994E74();

  v84 = [a1 getBoolWithKey:v43 category:v44 defaultValue:0];

  sub_247978B14(a1, v6, v8);
  v83 = v45;

  v46 = sub_247994E74();
  v47 = sub_247994E74();

  HIDWORD(v82) = [a1 getBoolWithKey:v46 category:v47 defaultValue:0];

  v48 = sub_247994E74();
  v49 = sub_247994E74();

  v50 = [a1 getMemoryIndexWithKey:v48 category:v49];

  v51 = v50;
  v52 = sub_247994E74();
  v53 = sub_247994E74();

  v54 = sub_247994E74();
  v55 = [a1 getStringWithKey:v52 category:v53 defaultValue:v54];

  if (!v55)
  {
    sub_247994E84();
    v55 = sub_247994E74();
  }

  v56 = sub_247994E74();
  v57 = [a1 getConfigDataWithFileName:v55 prefix:v56];

  if (v57)
  {
    v58 = sub_247994C54();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0xF000000000000000;
  }

  v61 = sub_247994E74();
  v62 = sub_247994E74();

  v63 = sub_247994E74();
  v64 = [a1 getStringWithKey:v61 category:v62 defaultValue:v63];

  if (!v64)
  {
    sub_247994E84();
    v64 = sub_247994E74();
  }

  v65 = sub_247994E74();
  v66 = [a1 getConfigDataWithFileName:v64 prefix:v65];

  if (v66)
  {
    v67 = sub_247994C54();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0xF000000000000000;
  }

  type metadata accessor for SecureVTSecondPassConfig();
  v70 = swift_allocObject();
  *(v70 + 200) = 0u;
  *(v70 + 216) = 0u;
  *(v70 + 16) = v26;
  *(v70 + 20) = v31;
  *(v70 + 24) = v36;
  v71 = v88;
  *(v70 + 32) = v89;
  *(v70 + 40) = v71;
  v72 = v86;
  *(v70 + 48) = v87;
  *(v70 + 56) = v72;
  *(v70 + 64) = v85;
  *(v70 + 72) = 0x65676162726147;
  *(v70 + 80) = 0xE700000000000000;
  *(v70 + 88) = v84;
  *(v70 + 96) = v90;
  *(v70 + 104) = v17;
  v73 = v83;
  *(v70 + 120) = v91;
  *(v70 + 128) = v73;
  *(v70 + 136) = BYTE4(v82);
  *(v70 + 144) = v50;
  *(v70 + 152) = v50;
  if (v60 >> 60 != 15)
  {
    *&v96 = v58;
    *(&v96 + 1) = v60;
    sub_247978CAC(v58, v60);
    sub_247994EB4();
    sub_247978C58();
    v74 = sub_247994EA4();
    v76 = v75;
    sub_247978BF0(v58, v60);
    swift_beginAccess();
    *(v70 + 200) = v74;
    *(v70 + 208) = v76;
  }

  if (v69 >> 60 == 15)
  {
    sub_247978BF0(v58, v60);
  }

  else
  {
    *&v96 = v67;
    *(&v96 + 1) = v69;
    sub_247994EB4();
    sub_247978C58();
    v77 = sub_247994EA4();
    v79 = v78;
    sub_247978BF0(v58, v60);
    sub_247978BF0(v67, v69);
    swift_beginAccess();
    *(v70 + 216) = v77;
    *(v70 + 224) = v79;
  }

  v80 = v93;
  *(v70 + 160) = v94;
  *(v70 + 176) = v80;
  *(v70 + 192) = v92;
  return v70;
}

void sub_247978264(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_247994E74();
  v7 = sub_247994E74();
  LODWORD(v8) = 1046562734;
  [a1 getFloatWithKey:v6 category:v7 defaultValue:v8];
  v10 = v9;

  v11 = sub_247994E74();
  v12 = sub_247994E74();
  LODWORD(v13) = 1067030938;
  [a1 getFloatWithKey:v11 category:v12 defaultValue:v13];
  v15 = v14;

  v16 = sub_247994E74();
  v17 = sub_247994E74();
  LODWORD(v18) = -1.0;
  [a1 getFloatWithKey:v16 category:v17 defaultValue:v18];
  v20 = v19;

  v21 = sub_247994E74();
  v22 = sub_247994E74();
  LODWORD(v23) = 1046562734;
  [a1 getFloatWithKey:v21 category:v22 defaultValue:v23];
  v25 = v24;

  v26 = sub_247994E74();
  v27 = sub_247994E74();
  v28 = [a1 getStringArrayWithKey:v26 category:v27];

  if (v28)
  {
    v29 = sub_247994FB4();
  }

  else
  {
    v29 = 0;
  }

  *a4 = v10;
  *(a4 + 4) = v15;
  *(a4 + 8) = v20;
  *(a4 + 12) = v25;
  *(a4 + 16) = v29;
}

unint64_t sub_2479784A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247978574(v11, 0, 0, 1, a1, a2);
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
    sub_247978FE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_247978574(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247978680(a5, a6);
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
    result = sub_2479950F4();
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

void *sub_247978680(uint64_t a1, unint64_t a2)
{
  v3 = sub_2479786CC(a1, a2);
  sub_2479787FC(&unk_28598F678);
  return v3;
}

void *sub_2479786CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_24797BB58(v5, 0);
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

  result = sub_2479950F4();
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
        v10 = sub_247994F14();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24797BB58(v10, 0);
        result = sub_2479950D4();
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

uint64_t sub_2479787FC(uint64_t result)
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

  result = sub_2479788E8(result, v11, 1, v3);
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

char *sub_2479788E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59158, qword_247995E10);
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

unint64_t _s15CoreSpeechUtils31SecureVTSecondPassConfigDecoderO019categoryKeyForFirstF005firstF6SourceSSAA0dlfN0O_tFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    v4 = 0xD00000000000001ALL;
    if (v1 != 8)
    {
      v4 = 0xD000000000000020;
    }

    if (v1 == 7)
    {
      v4 = 0xD00000000000001CLL;
    }

    v5 = 0xD000000000000029;
    if (v1 == 5)
    {
      v5 = 0xD000000000000024;
    }

    if (*a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (*a1)
    {
      v2 = 0xD000000000000019;
    }

    if (*a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_247978B14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_247994E74();
  v5 = sub_247994E74();
  LODWORD(v6) = 4.0;
  [a1 getFloatWithKey:v4 category:v5 defaultValue:v6];
  v8 = v7;

  v9 = v8 * 16000.0;
  if (COERCE_INT(fabs(v8 * 16000.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 >= 1.8447e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_247978BF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247978C04(a1, a2);
  }

  return a1;
}

uint64_t sub_247978C04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_247978C58()
{
  result = qword_27EE59148;
  if (!qword_27EE59148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59148);
  }

  return result;
}

uint64_t sub_247978CAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_247978D04()
{
  result = qword_27EE59150;
  if (!qword_27EE59150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureFirstPassSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureFirstPassSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureVTSecondPassConfigDecoder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SecureVTSecondPassConfigDecoder(_WORD *result, int a2, int a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_247978FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2479790CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_247979164(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_247979230(int a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2479792F4(int a1)
{
  result = swift_beginAccess();
  *(v1 + 28) = a1;
  return result;
}

uint64_t sub_2479793B8(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_24797947C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_247979540(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t SecureAudioChunk.__allocating_init(samples:numSamples:numChannel:sampleDepthInBytes:sampleCount:bufferArrivalTime:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 28) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

uint64_t SecureAudioChunk.init(samples:numSamples:numChannel:sampleDepthInBytes:sampleCount:bufferArrivalTime:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 28) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  return v6;
}

uint64_t sub_247979654(uint64_t a1)
{
  swift_beginAccess();
  result = 0;
  if (*(v1 + 28) > a1)
  {
    swift_beginAccess();
    v5 = *(v1 + 24);
    v6 = a1 * v5;
    if ((a1 * *(v1 + 24)) >> 64 == (a1 * v5) >> 63)
    {
      v2 = v6 + v5;
      if (!__OFADD__(v6, v5))
      {
        if (v2 >= v6)
        {
          swift_beginAccess();
          if ((v6 & 0x8000000000000000) == 0)
          {
            a1 = *(v1 + 16);
            v7 = *(a1 + 16);
            if (v7 >= v6 && v7 >= v2)
            {
              if (v7 == v5)
              {

LABEL_12:
                swift_beginAccess();
                v9 = *(v1 + 32);
                swift_beginAccess();
                v10 = *(v1 + 40);
                swift_beginAccess();
                v11 = *(v1 + 48);
                type metadata accessor for SecureAudioChunk();
                result = swift_allocObject();
                *(result + 16) = a1;
                *(result + 24) = v5;
                *(result + 28) = 1;
                *(result + 32) = v9;
                *(result + 40) = v10;
                *(result + 48) = v11;
                return result;
              }

LABEL_19:
              sub_2479799AC(a1, a1 + 32, v6, (2 * v2) | 1);
              a1 = v12;
              goto LABEL_12;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2479797CC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  v3 = *(v0 + 28);
  v4 = v1 * v3;
  if ((v4 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v5 = sub_247994FE4();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 2 * v4);
      v3 = *(v0 + 28);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v6 = *(v0 + 24);
    swift_beginAccess();
    v7 = *(v0 + 32);
    swift_beginAccess();
    v8 = *(v0 + 40);
    swift_beginAccess();
    v9 = *(v0 + 48);
    type metadata accessor for SecureAudioChunk();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    *(result + 28) = v3;
    *(result + 32) = v7;
    *(result + 40) = v8;
    *(result + 48) = v9;
  }

  return result;
}

double sub_2479798E8()
{
  v0 = sub_247994FE4();
  *(v0 + 16) = 1024;
  bzero((v0 + 32), 0x800uLL);
  type metadata accessor for SecureAudioChunk();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *&result = 0x100000400;
  *(v1 + 24) = 0x100000400;
  *(v1 + 32) = 1024;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t SecureAudioChunk.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_2479799AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59160, &qword_247995EA8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = (v9 - 32 + ((v9 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 2 * a3), 2 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_247979A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_247979AE8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_247979B30(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_247979B74@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 28);
  return result;
}

uint64_t sub_247979BBC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 28) = v2;
  return result;
}

uint64_t sub_247979C00@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_247979C48(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_247979C8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_247979CD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_247979D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_247979D60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t static SecureAudioConfig.maxCircularBufferCapacity.getter()
{
  if (qword_27EE590C0 != -1)
  {
    swift_once();
  }

  return qword_27EE59168;
}

uint64_t static SecureMobileGestaltUtils.sharedUtils.getter()
{
  v0 = type metadata accessor for SecureMobileGestaltUtils();

  return MEMORY[0x2821FEAF0](v0, &unk_27EE590D8);
}

uint64_t static SecureLocaleUtils.secureLocale(for:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59170, &qword_247995F40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_247994CD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59178, &qword_247995F48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  sub_247994CE4();
  sub_247994CC4();
  (*(v6 + 8))(v8, v5);
  v12 = sub_247994C84();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v14 = &qword_27EE59178;
    v15 = &qword_247995F48;
    v16 = v11;
LABEL_5:
    result = sub_24797A5F4(v16, v14, v15);
    *a1 = 44;
    return result;
  }

  v17 = sub_247994C74();
  v19 = v18;
  (*(v13 + 8))(v11, v12);
  sub_247994CB4();
  v20 = sub_247994CA4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {

    v14 = &qword_27EE59170;
    v15 = &qword_247995F40;
    v16 = v4;
    goto LABEL_5;
  }

  v23 = sub_247994C74();
  v25 = v24;
  (*(v21 + 8))(v4, v20);
  v26 = v17;
  v27 = v19;

  MEMORY[0x24C1AFB30](45, 0xE100000000000000);

  MEMORY[0x24C1AFB30](v23, v25);

  static SecureLocaleUtils.secureLocale(for:)(v26, v27, a1);
}

uint64_t sub_24797A5F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static SecureLocaleUtils.secureLocale(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  v6 = 0;
  while (v6 != 44)
  {
    v8 = byte_28598F6A0[v6 + 32];
    if (SecureLocale.description.getter() == v4 && v9 == a2)
    {

      goto LABEL_8;
    }

    ++v6;
    v7 = sub_247995164();

    if (v7)
    {
      goto LABEL_8;
    }
  }

  v8 = 44;
LABEL_8:
  *a3 = v8;
  return result;
}

uint64_t sub_24797A728()
{
  v0 = sub_247994E34();
  __swift_allocate_value_buffer(v0, qword_27EE59180);
  __swift_project_value_buffer(v0, qword_27EE59180);
  return sub_247994E24();
}

uint64_t logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v2 = sub_247994E34();
  v3 = __swift_project_value_buffer(v2, qword_27EE59180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

void static SecureVTAOPConfigDecoder.decodeAsset(asset:)(void *a1)
{
  v2 = sub_247994E74();
  v3 = sub_247994E74();
  v4 = [a1 getStringWithKey:v2 category:v3];

  v5 = [a1 getDataWithFileName_];
  if (v5)
  {
    v94 = sub_247994C54();
    v7 = v6;
  }

  else
  {
    v94 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = sub_247994E74();
  v9 = sub_247994E74();
  v10 = [a1 getStringWithKey:v8 category:v9];

  v11 = [a1 getDataWithFileName_];
  v98 = v7;
  if (v11)
  {
    v95 = sub_247994C54();
    v13 = v12;
  }

  else
  {
    v95 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = sub_247994E74();
  v15 = sub_247994E74();
  v16 = [a1 getStringWithKey:v14 category:v15];

  v17 = [a1 getDataWithFileName_];
  if (v17)
  {
    v96 = sub_247994C54();
    v19 = v18;
  }

  else
  {
    v96 = 0;
    v19 = 0xF000000000000000;
  }

  v97 = v13;
  v20 = sub_247994E74();
  v21 = sub_247994E74();
  v22 = [a1 getStringWithKey:v20 category:v21];

  v23 = v19;
  if (v22)
  {
    v24 = sub_247994E84();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = sub_247994E74();
  v28 = sub_247994E74();
  v29 = [a1 off_278EB6928];

  if (v29)
  {
    v30 = sub_247994E84();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = sub_247994E74();
  v34 = sub_247994E74();
  v35 = [a1 off_278EB6928];

  if (v35)
  {
    v36 = sub_247994E84();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = v23;
  if (v7 >> 60 != 15)
  {
    if (v97 >> 60 == 15)
    {

      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v45 = sub_247994E34();
      __swift_project_value_buffer(v45, qword_27EE59180);
      v46 = sub_247995054();
      v47 = sub_247994E14();
      if (os_log_type_enabled(v47, v46))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v99[0] = v49;
        *v48 = 136315394;
        *(v48 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
        *(v48 + 12) = 2048;
        *(v48 + 14) = 34;
        _os_log_impl(&dword_247974000, v47, v46, "[%s] [%ld] AOP certificate is nil. Skipping creation of SecureVTAOPConfig", v48, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x24C1B02C0](v49, -1, -1);
        MEMORY[0x24C1B02C0](v48, -1, -1);
      }

      sub_247978BF0(v96, v39);
      v50 = v94;
      v51 = v7;
      goto LABEL_130;
    }

    if (v23 >> 60 == 15)
    {

      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v52 = sub_247994E34();
      __swift_project_value_buffer(v52, qword_27EE59180);
      v53 = sub_247995054();
      v47 = sub_247994E14();
      if (os_log_type_enabled(v47, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v99[0] = v55;
        *v54 = 136315394;
        *(v54 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
        *(v54 + 12) = 2048;
        *(v54 + 14) = 39;
        _os_log_impl(&dword_247974000, v47, v53, "[%s] [%ld] AOP signature is nil. Skipping creation of SecureVTAOPConfig", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C1B02C0](v55, -1, -1);
        MEMORY[0x24C1B02C0](v54, -1, -1);
      }

      sub_247978BF0(v94, v7);
      v50 = v95;
      v51 = v97;
      goto LABEL_130;
    }

    if (v26)
    {
      if (v32)
      {
        if (v38)
        {
          v56 = HIBYTE(v26) & 0xF;
          v57 = v24 & 0xFFFFFFFFFFFFLL;
          if ((v26 & 0x2000000000000000) != 0)
          {
            v58 = HIBYTE(v26) & 0xF;
          }

          else
          {
            v58 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (!v58)
          {

LABEL_115:

            if (qword_27EE590C8 != -1)
            {
              swift_once();
            }

            v87 = sub_247994E34();
            __swift_project_value_buffer(v87, qword_27EE59180);
            v66 = sub_247995054();
            v47 = sub_247994E14();
            if (os_log_type_enabled(v47, v66))
            {
              v67 = swift_slowAlloc();
              v7 = v98;
              v68 = swift_slowAlloc();
              v99[0] = v68;
              *v67 = 136315394;
              *(v67 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
              *(v67 + 12) = 2048;
              *(v67 + 14) = 59;
              v69 = "[%s] [%ld] Cannot conver AOP major version from string to int";
              goto LABEL_127;
            }

LABEL_128:
            v92 = v94;
            v93 = v98;
            goto LABEL_129;
          }

          if ((v26 & 0x1000000000000000) != 0)
          {
            v61 = sub_24797BBCC(v24, v26, 10);

            if ((v61 & 0x100000000) != 0)
            {
              goto LABEL_114;
            }

            goto LABEL_121;
          }

          if ((v26 & 0x2000000000000000) != 0)
          {
            v99[0] = v24;
            v99[1] = v26 & 0xFFFFFFFFFFFFFFLL;
            if (v24 == 43)
            {
              if (v56)
              {
                if (--v56)
                {
                  LODWORD(v61) = 0;
                  v78 = v99 + 1;
                  while (1)
                  {
                    v79 = *v78 - 48;
                    if (v79 > 9)
                    {
                      break;
                    }

                    v80 = 10 * v61;
                    if ((v80 & 0xFFFFFFFF00000000) != 0)
                    {
                      break;
                    }

                    LODWORD(v61) = v80 + v79;
                    if (__CFADD__(v80, v79))
                    {
                      break;
                    }

                    ++v78;
                    if (!--v56)
                    {
                      goto LABEL_113;
                    }
                  }
                }

                goto LABEL_112;
              }

LABEL_135:
              __break(1u);
              return;
            }

            if (v24 != 45)
            {
              if (v56)
              {
                LODWORD(v61) = 0;
                v83 = v99;
                while (1)
                {
                  v84 = *v83 - 48;
                  if (v84 > 9)
                  {
                    break;
                  }

                  v85 = 10 * v61;
                  if ((v85 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  LODWORD(v61) = v85 + v84;
                  if (__CFADD__(v85, v84))
                  {
                    break;
                  }

                  v83 = (v83 + 1);
                  if (!--v56)
                  {
                    goto LABEL_113;
                  }
                }
              }

              goto LABEL_112;
            }

            if (v56)
            {
              if (--v56)
              {
                LODWORD(v61) = 0;
                v72 = v99 + 1;
                while (1)
                {
                  v73 = *v72 - 48;
                  if (v73 > 9)
                  {
                    break;
                  }

                  v74 = 10 * v61;
                  if ((v74 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  LODWORD(v61) = v74 - v73;
                  if (v74 < v73)
                  {
                    break;
                  }

                  ++v72;
                  if (!--v56)
                  {
                    goto LABEL_113;
                  }
                }
              }

              goto LABEL_112;
            }
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              v59 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v59 = sub_2479950F4();
            }

            v60 = *v59;
            if (v60 == 43)
            {
              if (v57 >= 1)
              {
                v56 = v57 - 1;
                if (v57 != 1)
                {
                  LODWORD(v61) = 0;
                  if (v59)
                  {
                    v75 = v59 + 1;
                    while (1)
                    {
                      v76 = *v75 - 48;
                      if (v76 > 9)
                      {
                        goto LABEL_112;
                      }

                      v77 = 10 * v61;
                      if ((v77 & 0xFFFFFFFF00000000) != 0)
                      {
                        goto LABEL_112;
                      }

                      LODWORD(v61) = v77 + v76;
                      if (__CFADD__(v77, v76))
                      {
                        goto LABEL_112;
                      }

                      ++v75;
                      if (!--v56)
                      {
                        goto LABEL_113;
                      }
                    }
                  }

                  goto LABEL_104;
                }

                goto LABEL_112;
              }

              goto LABEL_134;
            }

            if (v60 != 45)
            {
              if (v57)
              {
                LODWORD(v61) = 0;
                if (v59)
                {
                  while (1)
                  {
                    v81 = *v59 - 48;
                    if (v81 > 9)
                    {
                      goto LABEL_112;
                    }

                    v82 = 10 * v61;
                    if ((v82 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_112;
                    }

                    LODWORD(v61) = v82 + v81;
                    if (__CFADD__(v82, v81))
                    {
                      goto LABEL_112;
                    }

                    ++v59;
                    if (!--v57)
                    {
                      goto LABEL_104;
                    }
                  }
                }

                goto LABEL_104;
              }

LABEL_112:
              LODWORD(v61) = 0;
              LOBYTE(v56) = 1;
LABEL_113:
              v100 = v56;
              v86 = v56;

              if (v86)
              {
LABEL_114:

                goto LABEL_115;
              }

LABEL_121:
              v88 = sub_24797B87C(v30, v32);
              if ((v88 & 0x100000000) == 0)
              {
                v89 = v88;
                type metadata accessor for SecureVTAOPConfig();
                v90 = swift_allocObject();
                *(v90 + 16) = v94;
                *(v90 + 24) = v98;
                *(v90 + 32) = v95;
                *(v90 + 40) = v97;
                *(v90 + 48) = v96;
                *(v90 + 56) = v23;
                *(v90 + 64) = v61;
                *(v90 + 68) = v89;
                *(v90 + 72) = v36;
                *(v90 + 80) = v38;
                return;
              }

              if (qword_27EE590C8 != -1)
              {
                swift_once();
              }

              v91 = sub_247994E34();
              __swift_project_value_buffer(v91, qword_27EE59180);
              v66 = sub_247995054();
              v47 = sub_247994E14();
              if (os_log_type_enabled(v47, v66))
              {
                v67 = swift_slowAlloc();
                v7 = v98;
                v68 = swift_slowAlloc();
                v99[0] = v68;
                *v67 = 136315394;
                *(v67 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
                *(v67 + 12) = 2048;
                *(v67 + 14) = 64;
                v69 = "[%s] [%ld] Cannot conver AOP minor version from string to int";
                goto LABEL_127;
              }

              goto LABEL_128;
            }

            if (v57 >= 1)
            {
              v56 = v57 - 1;
              if (v57 != 1)
              {
                LODWORD(v61) = 0;
                if (v59)
                {
                  v62 = v59 + 1;
                  while (1)
                  {
                    v63 = *v62 - 48;
                    if (v63 > 9)
                    {
                      goto LABEL_112;
                    }

                    v64 = 10 * v61;
                    if ((v64 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_112;
                    }

                    LODWORD(v61) = v64 - v63;
                    if (v64 < v63)
                    {
                      goto LABEL_112;
                    }

                    ++v62;
                    if (!--v56)
                    {
                      goto LABEL_113;
                    }
                  }
                }

LABEL_104:
                LOBYTE(v56) = 0;
                goto LABEL_113;
              }

              goto LABEL_112;
            }

            __break(1u);
          }

          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (qword_27EE590C8 != -1)
        {
          swift_once();
        }

        v71 = sub_247994E34();
        __swift_project_value_buffer(v71, qword_27EE59180);
        v66 = sub_247995054();
        v47 = sub_247994E14();
        if (!os_log_type_enabled(v47, v66))
        {
          goto LABEL_128;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v99[0] = v68;
        *v67 = 136315394;
        *(v67 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
        *(v67 + 12) = 2048;
        *(v67 + 14) = 54;
        v69 = "[%s] [%ld] AOP phrase type is nil. Skipping creation of SecureVTAOPConfig";
      }

      else
      {

        if (qword_27EE590C8 != -1)
        {
          swift_once();
        }

        v70 = sub_247994E34();
        __swift_project_value_buffer(v70, qword_27EE59180);
        v66 = sub_247995054();
        v47 = sub_247994E14();
        if (!os_log_type_enabled(v47, v66))
        {
          goto LABEL_128;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v99[0] = v68;
        *v67 = 136315394;
        *(v67 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
        *(v67 + 12) = 2048;
        *(v67 + 14) = 49;
        v69 = "[%s] [%ld] AOP minor version is nil. Skipping creation of SecureVTAOPConfig";
      }
    }

    else
    {

      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v65 = sub_247994E34();
      __swift_project_value_buffer(v65, qword_27EE59180);
      v66 = sub_247995054();
      v47 = sub_247994E14();
      if (!os_log_type_enabled(v47, v66))
      {
        goto LABEL_128;
      }

      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v99[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
      *(v67 + 12) = 2048;
      *(v67 + 14) = 44;
      v69 = "[%s] [%ld] AOP major version is nil. Skipping creation of SecureVTAOPConfig";
    }

LABEL_127:
    _os_log_impl(&dword_247974000, v47, v66, v69, v67, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x24C1B02C0](v68, -1, -1);
    MEMORY[0x24C1B02C0](v67, -1, -1);
    v92 = v94;
    v93 = v7;
LABEL_129:
    sub_247978BF0(v92, v93);
    sub_247978BF0(v95, v97);
    v50 = v96;
    v51 = v23;
LABEL_130:
    sub_247978BF0(v50, v51);

    return;
  }

  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v40 = sub_247994E34();
  __swift_project_value_buffer(v40, qword_27EE59180);
  v41 = sub_247995054();
  v42 = sub_247994E14();
  if (os_log_type_enabled(v42, v41))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v99[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_2479784A8(0xD00000000000002ELL, 0x8000000247997360, v99);
    *(v43 + 12) = 2048;
    *(v43 + 14) = 29;
    _os_log_impl(&dword_247974000, v42, v41, "[%s] [%ld] AOP blob is nil. Skipping creation of SecureVTAOPConfig", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C1B02C0](v44, -1, -1);
    MEMORY[0x24C1B02C0](v43, -1, -1);
  }

  sub_247978BF0(v95, v97);
  sub_247978BF0(v96, v23);
}

unint64_t sub_24797B87C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_24797BBCC(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2479950F4();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void *sub_24797BB58(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59158, qword_247995E10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_24797BBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_247994F74();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24797C6DC(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2479950F4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_24797C158(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_247994F74();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24797C6DC(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2479950F4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_24797C6DC(uint64_t a1, unint64_t a2)
{
  v2 = sub_247994F84();
  v6 = sub_24797C75C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24797C75C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_247995074();
    if (!v9 || (v10 = v9, v11 = sub_24797BB58(v9, 0), v12 = sub_24797C8B4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_247994EE4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247994EE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2479950F4();
LABEL_4:

  return sub_247994EE4();
}

unint64_t sub_24797C8B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24797CAD4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247994F44();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2479950F4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24797CAD4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_247994F24();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_24797CAD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247994F54();
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
    v5 = MEMORY[0x24C1AFB60](15, a1 >> 16);
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

uint64_t static SecureVTFirstPassConfigDecoder.decodeConfig(secureAsset:)(void *a1)
{
  v2 = sub_247994EC4();
  MEMORY[0x28223BE20](v2 - 8);
  v68[1] = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247994E74();
  v5 = sub_247994E74();
  v6 = sub_247994E74();
  v7 = [a1 getStringWithKey:v4 category:v5 defaultValue:v6];

  v8 = sub_247994E84();
  v70 = v9;
  v71 = v8;

  v10 = sub_247994E74();
  v11 = sub_247994E74();
  LODWORD(v12) = 1232348160;
  [a1 getFloatWithKey:v10 category:v11 defaultValue:v12];
  v14 = v13;

  v15 = sub_247994E74();
  v16 = sub_247994E74();
  LODWORD(v17) = 1042536202;
  [a1 getFloatWithKey:v15 category:v16 defaultValue:v17];
  v19 = v18;

  v20 = sub_247994E74();
  v21 = sub_247994E74();
  [a1 getFloatWithKey:v20 category:v21 defaultValue:0.0];
  v23 = v22;

  v24 = sub_247994E74();
  v25 = sub_247994E74();
  [a1 getFloatWithKey:v24 category:v25 defaultValue:0.0];
  v27 = v26;

  v28 = sub_247994E74();
  v29 = sub_247994E74();
  LODWORD(v30) = 1025758986;
  [a1 getFloatWithKey:v28 category:v29 defaultValue:v30];
  v32 = v31;

  v33 = sub_247994E74();
  v34 = sub_247994E74();
  v69 = [a1 getUnsignedLongLongValueWithKey:v33 category:v34 defaultValue:1];

  v35 = sub_247994E74();
  v36 = sub_247994E74();
  v37 = [a1 getMemoryIndexWithKey:v35 category:v36];

  v38 = sub_247994E74();
  v39 = sub_247994E74();
  v40 = sub_247994E74();
  v41 = [a1 getStringWithKey:v38 category:v39 defaultValue:v40];

  if (!v41)
  {
    sub_247994E84();
    v41 = sub_247994E74();
  }

  v42 = sub_247994E74();
  v43 = [a1 getConfigDataWithFileName:v41 prefix:v42];

  if (v43)
  {
    v44 = sub_247994C54();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0xF000000000000000;
  }

  v47 = sub_247994E74();
  v48 = sub_247994E74();
  LODWORD(v49) = 1042536202;
  [a1 getFloatWithKey:v47 category:v48 defaultValue:v49];
  v51 = v50;

  v52 = v51 * 16000.0;
  if ((LODWORD(v52) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v52 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v52 < 1.8447e19)
  {
    if (qword_27EE590C8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v53 = sub_247994E34();
  __swift_project_value_buffer(v53, qword_27EE59180);
  v54 = sub_247995064();
  v55 = v37;
  v56 = sub_247994E14();
  if (os_log_type_enabled(v56, v54))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v72[0] = v58;
    *v57 = 136315906;
    *(v57 + 4) = sub_2479784A8(0xD000000000000034, 0x80000002479974B0, v72);
    *(v57 + 12) = 2048;
    *(v57 + 14) = 56;
    *(v57 + 22) = 2048;
    if (v55)
    {
      v59 = [v55 indexCount];
    }

    else
    {
      v59 = 0;
    }

    v60 = v71;
    *(v57 + 24) = v59;
    *(v57 + 32) = 1024;
    *(v57 + 34) = v55 != 0;

    _os_log_impl(&dword_247974000, v56, v54, "[%s] [%ld] mindex count: %ld, (%{BOOL}d)", v57, 0x26u);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C1B02C0](v58, -1, -1);
    MEMORY[0x24C1B02C0](v57, -1, -1);
  }

  else
  {

    v60 = v71;
  }

  type metadata accessor for SecureVTFirstPassConfig();
  result = swift_allocObject();
  *(result + 104) = 0;
  *(result + 112) = 0;
  v62 = v69;
  v63 = v70;
  *(result + 16) = v60;
  *(result + 24) = v63;
  *(result + 32) = v14;
  *(result + 36) = v19;
  *(result + 40) = v23;
  *(result + 44) = v27;
  *(result + 48) = v32;
  *(result + 56) = v62;
  *(result + 64) = v37;
  *(result + 72) = 0;
  *(result + 80) = v52;
  *(result + 88) = -1;
  *(result + 96) = -1;
  if (v46 >> 60 != 15)
  {
    v72[0] = v44;
    v72[1] = v46;
    v64 = result;
    sub_247994EB4();
    sub_247978C58();
    v65 = sub_247994EA4();
    v67 = v66;
    sub_247978BF0(v44, v46);
    swift_beginAccess();
    result = v64;
    *(v64 + 104) = v65;
    *(v64 + 112) = v67;
  }

  return result;
}

uint64_t SecurePhraseDetectorInfo.phraseConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10[0] = v2;
  *(v10 + 12) = *(v1 + 60);
  v3 = *(v10 + 12);
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 60) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_24797D4D8(v8, &v7);
}

__n128 SecurePhraseDetectorInfo.phraseConfig.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8[0] = v3;
  *(v8 + 12) = *(v1 + 60);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_24797D594(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  *(v1 + 60) = *(a1 + 60);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

void __swiftcall SecurePhraseDetectorInfo.init(phraseConfig:)(CoreSpeechUtils::SecurePhraseDetectorInfo *__return_ptr retstr, CoreSpeechUtils::SecureVTPhraseConfig *phraseConfig)
{
  threshold = phraseConfig->threshold;
  retstr->phraseConfig.name = phraseConfig->name;
  retstr->phraseConfig.threshold = threshold;
  *&retstr->phraseConfig.secondChanceThreshold = *&phraseConfig->secondChanceThreshold;
  *&retstr->phraseConfig.recognizerScoreScaleFactor = *&phraseConfig->recognizerScoreScaleFactor;
  *(&retstr->phraseConfig.recognizerToken._object + 4) = *(&phraseConfig->recognizerToken._object + 4);
  *&retstr->phraseConfig.speakerRejectLoggingThreshold = *&phraseConfig->speakerRejectLoggingThreshold;
  *(&retstr->phraseConfig.preTriggerSilenceOffset + 1) = threshold;
  LOBYTE(retstr->effectiveKeywordThreshold) = 0;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24797D6C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_24797D710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SecureVTAOPConfig.__allocating_init(rtblob:rtblobCertificate:rtblobSignature:rtblobMajorVersion:rtblobMinorVersion:rtblobPhraseType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 68) = a8;
  *(result + 72) = a9;
  *(result + 80) = a10;
  return result;
}

uint64_t SecureVTAOPConfig.rtblob.getter()
{
  v1 = *(v0 + 16);
  sub_247978CAC(v1, *(v0 + 24));
  return v1;
}

uint64_t SecureVTAOPConfig.rtblobCertificate.getter()
{
  v1 = *(v0 + 32);
  sub_247978CAC(v1, *(v0 + 40));
  return v1;
}

uint64_t SecureVTAOPConfig.rtblobSignature.getter()
{
  v1 = *(v0 + 48);
  sub_247978CAC(v1, *(v0 + 56));
  return v1;
}

uint64_t SecureVTAOPConfig.rtblobPhraseType.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SecureVTAOPConfig.init(rtblob:rtblobCertificate:rtblobSignature:rtblobMajorVersion:rtblobMinorVersion:rtblobPhraseType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 68) = a8;
  *(v10 + 72) = a9;
  *(v10 + 80) = a10;
  return v10;
}

void *SecureVTAOPConfig.deinit()
{
  sub_247978C04(*(v0 + 16), *(v0 + 24));
  sub_247978C04(*(v0 + 32), *(v0 + 40));
  sub_247978C04(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t SecureVTAOPConfig.__deallocating_deinit()
{
  sub_247978C04(*(v0 + 16), *(v0 + 24));
  sub_247978C04(*(v0 + 32), *(v0 + 40));
  sub_247978C04(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t SecureVTPhraseConfig.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SecureVTPhraseConfig.recognizerToken.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall SecureVTPhraseConfig.copyWithParametersOverride(threshold:secondChanceThreshold:loggingThreshold:ndapiScaleFactor:recognizerScoreOffset:recognizerScoreScaleFactor:keywordRejectLoggingThreshold:)(CoreSpeechUtils::SecureVTPhraseConfig *__return_ptr retstr, Swift::Float threshold, Swift::Float secondChanceThreshold, Swift::Float loggingThreshold, Swift::Float ndapiScaleFactor, Swift::Float recognizerScoreOffset, Swift::Float recognizerScoreScaleFactor, Swift::Float keywordRejectLoggingThreshold)
{
  v9 = v8[1];
  v10 = v8[5];
  v11 = v8[6];
  retstr->name._countAndFlagsBits = *v8;
  retstr->name._object = v9;
  retstr->threshold = threshold;
  retstr->secondChanceThreshold = secondChanceThreshold;
  retstr->loggingThreshold = loggingThreshold;
  retstr->ndapiScaleFactor = ndapiScaleFactor;
  retstr->recognizerScoreOffset = recognizerScoreOffset;
  retstr->recognizerScoreScaleFactor = recognizerScoreScaleFactor;
  retstr->recognizerToken._countAndFlagsBits = v10;
  retstr->recognizerToken._object = v11;
  *&retstr->twoShotFeedbackDelay = v8[7];
  retstr->keywordRejectLoggingThreshold = keywordRejectLoggingThreshold;
  *&retstr->speakerRejectLoggingThreshold = *(v8 + 68);
}

uint64_t SecureVTDiscriminativePhraseTokenConfig.copyWithParametersOverride(tokens:discriminativeFactors:phoneticFactors:phoneticScoreIndexes:descriminativeScoreIndexes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

uint64_t SecureVTSecondPassConfig.resourcePath.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SecureVTSecondPassConfig.configPathNDAPI.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SecureVTSecondPassConfig.configPathRecognizer.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SecureVTSecondPassConfig.wearerDetectionConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
}

void *SecureVTSecondPassConfig.secureMemoryIndexNdapi.getter()
{
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

void *SecureVTSecondPassConfig.secureMemoryIndexChecker.getter()
{
  v1 = *(v0 + 152);
  v2 = v1;
  return v1;
}

uint64_t SecureVTSecondPassConfig.secureVTSecondPassDiscriminativeTokenConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[23];
  v6 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_24797DD30(v2, v3, v4, v5, v6);
}

uint64_t sub_24797DD30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24797DD9C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 200) = v3;
  *(v4 + 208) = v2;
}

uint64_t sub_24797DDFC()
{
  swift_beginAccess();
  v1 = *(v0 + 200);

  return v1;
}

uint64_t sub_24797DE48(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 216) = v3;
  *(v4 + 224) = v2;
}

uint64_t sub_24797DEA8()
{
  swift_beginAccess();
  v1 = *(v0 + 216);

  return v1;
}

uint64_t SecureVTSecondPassConfig.deinit()
{

  sub_24797DF64(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  return v0;
}

uint64_t sub_24797DF64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t SecureVTSecondPassConfig.__deallocating_deinit()
{
  SecureVTSecondPassConfig.deinit();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_24797E004@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 208);
  *a2 = *(v3 + 200);
  a2[1] = v4;
}

uint64_t sub_24797E054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 224);
  *a2 = *(v3 + 216);
  a2[1] = v4;
}

__n128 __swift_memcpy76_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24797E0C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_24797E110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24797E188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24797E1D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24797E23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24797E298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

char *UInt64.indexsOfSetBits()(unint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    if ((a1 >> v2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_247976B40(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_247976B40((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[4 * v5 + 32] = v2;
    }

    ++v2;
  }

  while (v2 != 64);
  return v3;
}

uint64_t SecureSinglePhraseResult.KeywordDetectionDecision.hashValue.getter()
{
  v1 = *v0;
  sub_2479951C4();
  MEMORY[0x24C1AFE00](v1);
  return sub_2479951F4();
}

__n128 SecureSinglePhraseResult.ndapiResult.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 60);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 44) = v4;
  *(a1 + 40) = v3;
  return result;
}

double SecureSinglePhraseResult.init(phId:isRunningQuasar:)@<D0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = vdup_n_s32(0xC61C4000);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 2;
  *(a3 + 64) = -971227136;
  *(a3 + 68) = 0;
  *(a3 + 70) = a2;
  return result;
}

__n128 SecureSinglePhraseResult.init(phId:decision:combinedScore:ndapiScore:ndapiResult:recognizerScore:isSecondChance:isSecondChanceCandidate:isRunningQuasar:)@<Q0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>, float a10@<S2>)
{
  v10 = *a2;
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v13 = *(a3 + 44);
  *a7 = a1;
  *(a7 + 4) = v10;
  *(a7 + 8) = a8;
  *(a7 + 12) = a9;
  result = *a3;
  v15 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v15;
  *(a7 + 48) = v11;
  *(a7 + 60) = v13;
  *(a7 + 56) = v12;
  *(a7 + 64) = a10;
  *(a7 + 68) = a4;
  *(a7 + 69) = a5;
  *(a7 + 70) = a6;
  return result;
}

__n128 SecureSinglePhraseResult.copy(with:)@<Q0>(uint64_t *a1@<X8>)
{
  v3 = v1->n128_u32[0];
  v4 = v1->n128_i8[4];
  v5 = v1[3].n128_i64[0];
  v6 = v1[3].n128_i32[2];
  v7 = v1[3].n128_i16[6];
  v8 = v1[4].n128_i32[0];
  v9 = v1[4].n128_i8[4];
  v10 = v1[4].n128_i8[5];
  v11 = v1[4].n128_i8[6];
  a1[3] = &type metadata for SecureSinglePhraseResult;
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 16) = v3;
  *(v12 + 20) = v4;
  *(v12 + 24) = v1->n128_u64[1];
  result = v1[1];
  v14 = v1[2];
  *(v12 + 32) = result;
  *(v12 + 48) = v14;
  *(v12 + 64) = v5;
  *(v12 + 76) = v7;
  *(v12 + 72) = v6;
  *(v12 + 80) = v8;
  *(v12 + 84) = v9;
  *(v12 + 85) = v10;
  *(v12 + 86) = v11;
  return result;
}

unint64_t sub_24797E68C()
{
  result = qword_27EE59198;
  if (!qword_27EE59198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE59198);
  }

  return result;
}

__n128 __swift_memcpy71_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24797E704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 71))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 68);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24797E758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 70) = 0;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 71) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 71) = 0;
    }

    if (a2)
    {
      *(result + 68) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureSinglePhraseResult.KeywordDetectionDecision(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureSinglePhraseResult.KeywordDetectionDecision(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id SecureSpeakerRecognitionConfigDecoder.decode(_:)(void *a1)
{
  sub_24797F080(a1);
  v3 = sub_247994E74();
  v4 = sub_247994E74();
  v91 = [a1 getIntWithKey:v3 category:v4 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPruningNumRetentionUtterance)];

  v5 = sub_247994E74();
  v6 = sub_247994E74();
  LODWORD(v7) = -915135488;
  [a1 getFloatWithKey:v5 category:v6 defaultValue:v7];
  v9 = v8;

  v10 = sub_247994E74();
  v11 = sub_247994E74();
  LODWORD(v12) = -915135488;
  [a1 getFloatWithKey:v10 category:v11 defaultValue:v12];
  v14 = v13;

  v15 = sub_247994E74();
  v16 = sub_247994E74();
  LODWORD(v17) = -915135488;
  [a1 getFloatWithKey:v15 category:v16 defaultValue:v17];
  v19 = v18;

  v20 = sub_247994E74();
  v21 = sub_247994E74();
  LODWORD(v22) = -915135488;
  [a1 getFloatWithKey:v20 category:v21 defaultValue:v22];
  v24 = v23;

  v25 = sub_247994E74();
  v26 = sub_247994E74();
  LODWORD(v27) = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPsrCombinationWeight);
  [a1 getFloatWithKey:v25 category:v26 defaultValue:v27];
  v29 = v28;

  v30 = sub_247994E74();
  v31 = sub_247994E74();
  LODWORD(v32) = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThresholdDefault);
  [a1 getFloatWithKey:v30 category:v31 defaultValue:v32];
  v34 = v33;

  v35 = sub_247994E74();
  v36 = sub_247994E74();
  LODWORD(v37) = v34;
  [a1 getFloatWithKey:v35 category:v36 defaultValue:v37];
  v39 = v38;

  v40 = sub_247994E74();
  v41 = sub_247994E74();
  LODWORD(v42) = 1041865114;
  [a1 getFloatWithKey:v40 category:v41 defaultValue:v42];
  v44 = v43;

  v45 = sub_247994E74();
  v46 = sub_247994E74();
  LODWORD(v47) = -915135488;
  [a1 getFloatWithKey:v45 category:v46 defaultValue:v47];
  v49 = v48;

  v50 = sub_247994E74();
  v51 = sub_247994E74();
  v90 = [a1 getIntWithKey:v50 category:v51 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSSRMaxEnrollmentUtterancesDefault)];

  v52 = sub_247994E74();
  v53 = sub_247994E74();
  v89 = [a1 getBoolWithKey:v52 category:v53 defaultValue:1];

  v54 = sub_247994E74();
  v55 = sub_247994E74();
  v88 = [a1 getMemoryIndexWithKey:v54 category:v55];

  v56 = sub_247994E74();
  v57 = sub_247994E74();
  v87 = [a1 getMemoryIndexWithKey:v56 category:v57];

  v84 = sub_24797F8F4(a1, *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSATConfig), *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSATConfig + 8), 0, 0);
  v59 = v58;
  v85 = sub_24797F8F4(a1, *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPSRConfig), *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPSRConfig + 8), 0, 0);
  v61 = v60;
  v62 = sub_247994E74();
  v63 = sub_247994E74();
  v86 = [a1 getIntWithKey:v62 category:v63 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultAudioDurationProcessIntervalInMillis)];

  v64 = sub_247994E74();
  v65 = sub_247994E74();
  v66 = [a1 getIntWithKey:v64 category:v65 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultMinAudioDurationInMillis)];

  v67 = sub_247994E74();
  v68 = sub_247994E74();
  v69 = [a1 getIntWithKey:v67 category:v68 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultMaxAudioDurationInMillis)];

  type metadata accessor for SecureSpeakerRecognitionPhraseConfig(0);
  v70 = sub_247994FA4();

  v71 = 0;
  if (v59 >> 60 != 15)
  {
    v71 = sub_247994C44();
    sub_247978BF0(v84, v59);
  }

  if (v61 >> 60 == 15)
  {
    v72 = 0;
  }

  else
  {
    v72 = sub_247994C44();
    sub_247978BF0(v85, v61);
  }

  v73 = objc_allocWithZone(SecureSpeakerRecognitionConfig);
  LODWORD(v74) = v9;
  LODWORD(v75) = v14;
  LODWORD(v76) = v19;
  LODWORD(v77) = v24;
  LODWORD(v78) = v29;
  LODWORD(v79) = v39;
  LODWORD(v80) = v44;
  LODWORD(v81) = v49;
  v82 = [v73 initWithNumPruningRetentionUtt:v91 pruningExplicitSATThreshold:v90 pruningExplicitPSRThreshold:v89 pruningSATThreshold:1 pruningPSRThreshold:v70 combinationWeight:v88 implicitProfileThreshold:v74 implicitProfileDeltaThreshold:v75 implicitVTThreshold:v76 maxEnrollmentUtterances:v77 implicitTrainingEnabled:v78 useTDTIEnrollment:v79 phraseConfig:v80 satMemoryIndex:v81 psrMemoryIndex:v87 satConfig:v71 psrConfig:v72 audioDurationProcessIntervalInMillis:v86 minAudioDurationInMillis:v66 maxAudioDurationInMillis:v69];

  return v82;
}

uint64_t sub_24797F080(void *a1)
{
  v3 = sub_247994E74();
  v4 = sub_247994E74();
  v5 = [a1 getDictionaryArrayWithKey:v3 category:v4];

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    v6 = sub_247994FB4();

    v106 = MEMORY[0x277D84F90];
    v7 = *(v6 + 16);
    if (v7)
    {
      v80 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSRPhraseNameKey + 8);
      v81 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSRPhraseNameKey);
      v8 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThresholdDefault);
      v98 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThreshold + 8);
      v99 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThreshold);
      v96 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatStrongAcceptThreshold + 8);
      v97 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatStrongAcceptThreshold);
      v94 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatStrongRejectThreshold + 8);
      v95 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatStrongRejectThreshold);
      v92 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserLowScoreThresholdKey + 8);
      v93 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserLowScoreThresholdKey);
      v90 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserHighScoreThresholdDefault);
      v91 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserLowScoreThresholdDefault);
      v88 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserHighScoreThresholdKey + 8);
      v89 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserHighScoreThresholdKey);
      v86 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserConfidentScoreThresholdKey + 8);
      v87 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserConfidentScoreThresholdKey);
      v9 = 32;
      v84 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserDeltaScoreThresholdKey);
      v85 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserConfidentScoreThresholdDefault);
      v82 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserDeltaScoreThresholdDefault);
      v83 = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserDeltaScoreThresholdKey + 8);
      v100 = v6;
      do
      {
        v103 = v9;
        v104 = v7;
        v10 = *(v6 + v9);
        v11 = *(v10 + 16);

        if (!v11 || (v12 = sub_247980FE0(v81, v80), (v13 & 1) == 0) || (sub_247978FE4(*(v10 + 56) + 32 * v12, v105), !swift_dynamicCast()))
        {
        }

        v14 = sub_247994E74();
        v15 = sub_247994E74();
        LODWORD(v16) = v8;
        [a1 getFloatWithKey:v14 category:v15 defaultValue:v16];
        v18 = v17;

        v19 = sub_24797FB00(v99, v98, v10, v18);
        v20 = sub_24797FB00(v97, v96, v10, v19);
        v21 = sub_24797FB00(v95, v94, v10, v19);
        v22 = sub_247994E74();
        v23 = sub_247994E74();
        v24 = [a1 getIntWithKey:v22 category:v23 defaultValue:v91];

        v102 = sub_24797FC48(v93, v92, v24, v10);
        v25 = sub_247994E74();
        v26 = sub_247994E74();
        v27 = [a1 getIntWithKey:v25 category:v26 defaultValue:v90];

        v101 = sub_24797FC48(v89, v88, v27, v10);
        v28 = sub_247994E74();
        v29 = sub_247994E74();
        v30 = [a1 getIntWithKey:v28 category:v29 defaultValue:v85];

        v31 = sub_24797FC48(v87, v86, v30, v10);
        v32 = sub_247994E74();
        v33 = sub_247994E74();
        v34 = a1;
        v35 = [a1 getIntWithKey:v32 category:v33 defaultValue:v82];

        v36 = sub_24797FC48(v84, v83, v35, v10);

        v37 = objc_allocWithZone(SecureSpeakerRecognitionPhraseConfig);
        v38 = sub_247994E74();

        *&v39 = v19;
        *&v40 = v20;
        *&v41 = v21;
        v42 = [v37 initWithName:v38 satThreshold:v102 satStrongAcceptThreshold:v101 satStrongRejectThreshold:v31 multiUserLowScoreThreshold:v36 multiUserHighScoreThreshold:v39 multiUserConfidentScoreThreshold:v40 multiUserDeltaScoreThreshold:v41];

        v43 = v42;
        MEMORY[0x24C1AFBC0]();
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_247994FD4();
        }

        sub_247994FF4();

        v9 = v103 + 8;
        v7 = v104 - 1;
        a1 = v34;
        v6 = v100;
      }

      while (v104 != 1);
      v44 = v106;

      return v44;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v46 = sub_247994E74();
    v47 = a1;
    v48 = sub_247994E74();
    LODWORD(v49) = *(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThresholdDefault);
    [v47 getFloatWithKey:v46 category:v48 defaultValue:v49];
    v51 = v50;

    v52 = sub_247994E74();
    v53 = sub_247994E74();
    LODWORD(v54) = v51;
    [v47 getFloatWithKey:v52 category:v53 defaultValue:v54];
    v56 = v55;

    v57 = sub_247994E74();
    v58 = sub_247994E74();
    LODWORD(v59) = v51;
    [v47 getFloatWithKey:v57 category:v58 defaultValue:v59];
    v61 = v60;

    v62 = sub_247994E74();
    v63 = sub_247994E74();
    v64 = [v47 getIntWithKey:v62 category:v63 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserLowScoreThresholdDefault)];

    v65 = sub_247994E74();
    v66 = sub_247994E74();
    v67 = [v47 getIntWithKey:v65 category:v66 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserHighScoreThresholdDefault)];

    v68 = sub_247994E74();
    v69 = sub_247994E74();
    v70 = [v47 getIntWithKey:v68 category:v69 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserConfidentScoreThresholdDefault)];

    v71 = sub_247994E74();
    v72 = sub_247994E74();
    v73 = [v47 getIntWithKey:v71 category:v72 defaultValue:*(v1 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserDeltaScoreThresholdDefault)];

    v74 = objc_allocWithZone(SecureSpeakerRecognitionPhraseConfig);
    v75 = sub_247994E74();
    LODWORD(v76) = v51;
    LODWORD(v77) = v56;
    LODWORD(v78) = v61;
    v79 = [v74 initWithName:v75 satThreshold:v64 satStrongAcceptThreshold:v67 satStrongRejectThreshold:v70 multiUserLowScoreThreshold:v73 multiUserHighScoreThreshold:v76 multiUserConfidentScoreThreshold:v77 multiUserDeltaScoreThreshold:v78];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59340, &qword_247996440);
    result = swift_allocObject();
    *(result + 16) = xmmword_247996430;
    *(result + 32) = v79;
  }

  return result;
}

uint64_t sub_24797F8F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = sub_247994E74();
    v7 = sub_247994E74();
    v8 = sub_247994E74();
    v9 = [a1 getStringWithKey:v6 category:v7 defaultValue:v8];
  }

  else
  {
    v10 = sub_247994E74();
    v11 = sub_247994E74();
    v9 = [a1 getStringWithKey:v10 category:v11];

    if (!v9)
    {
      return 0;
    }
  }

  sub_247994E84();

  v12 = sub_247994E74();

  v13 = sub_247994E74();
  v14 = [a1 getConfigDataWithFileName:v12 prefix:v13];

  if (v14)
  {
    v15 = sub_247994C54();

    return v15;
  }

  return 0;
}

float sub_24797FB00(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = sub_247983F3C(a3);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_247980FE0(a1, a2), (v10 & 1) != 0) && (sub_247978FE4(*(v8 + 56) + 32 * v9, v16), sub_24798076C(0, &qword_27EE59350, 0x277CCABB0), swift_dynamicCast()))
    {

      [v15 floatValue];
      a4 = v11;
    }

    else if (*(v8 + 16) && (v12 = sub_247980FE0(a1, a2), (v13 & 1) != 0))
    {
      sub_247978FE4(*(v8 + 56) + 32 * v12, v16);

      if (swift_dynamicCast())
      {
        return *&v15;
      }
    }

    else
    {
    }
  }

  return a4;
}

id sub_24797FC48(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  v7 = sub_247983F3C(a4);
  if (v7)
  {
    v8 = v7;
    if (*(v7 + 16) && (v9 = sub_247980FE0(a1, a2), (v10 & 1) != 0) && (sub_247978FE4(*(v8 + 56) + 32 * v9, v15), sub_24798076C(0, &qword_27EE59350, 0x277CCABB0), swift_dynamicCast()))
    {

      a3 = [v14 integerValue];
    }

    else if (*(v8 + 16) && (v11 = sub_247980FE0(a1, a2), (v12 & 1) != 0))
    {
      sub_247978FE4(*(v8 + 56) + 32 * v11, v15);

      if (swift_dynamicCast())
      {
        return v14;
      }
    }

    else
    {
    }
  }

  return a3;
}

void __swiftcall SecureSpeakerRecognitionConfigDecoder.init()(SecureSpeakerRecognitionConfigDecoder *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id SecureSpeakerRecognitionConfigDecoder.init()()
{
  v1 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSRCategoryKey);
  *v1 = 0xD000000000000012;
  v1[1] = 0x80000002479977A0;
  v2 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSRPhraseKey);
  *v2 = 0x657361726870;
  v2[1] = 0xE600000000000000;
  v3 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSRPhraseNameKey);
  *v3 = 1701667182;
  v3[1] = 0xE400000000000000;
  v4 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPhraseName);
  *v4 = 21320;
  v4[1] = 0xE200000000000000;
  v5 = v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThreshold;
  strcpy((v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThreshold), "satThreshold");
  *(v5 + 13) = 0;
  *(v5 + 14) = -5120;
  v6 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatStrongAcceptThreshold);
  *v6 = 0xD000000000000018;
  v6[1] = 0x80000002479977C0;
  v7 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatStrongRejectThreshold);
  *v7 = 0xD000000000000018;
  v7[1] = 0x80000002479977E0;
  v8 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPsrCombinationWeight);
  *v8 = 0xD000000000000011;
  v8[1] = 0x8000000247997800;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPsrCombinationWeight) = 1058642330;
  v9 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatImplicitProfileThreshold);
  *v9 = 0xD000000000000018;
  v9[1] = 0x8000000247997820;
  v10 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatImplicitProfileDeltaThreshold);
  *v10 = 0xD00000000000001DLL;
  v10[1] = 0x8000000247997840;
  v11 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatVTImplicitThreshold);
  *v11 = 0xD000000000000013;
  v11[1] = 0x8000000247997860;
  v12 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPruningExplicitUttThresholdSAT);
  *v12 = 0xD00000000000001BLL;
  v12[1] = 0x8000000247997880;
  v13 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPruningExplicitUttThresholdPSR);
  *v13 = 0xD00000000000001BLL;
  v13[1] = 0x80000002479978A0;
  v14 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPruningThresholdSAT);
  *v14 = 0xD000000000000013;
  v14[1] = 0x80000002479978C0;
  v15 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPruningThresholdPSR);
  *v15 = 0xD000000000000013;
  v15[1] = 0x80000002479978E0;
  v16 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPruningNumRetentionUtterance);
  *v16 = 0xD000000000000016;
  v16[1] = 0x8000000247997900;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPruningNumRetentionUtterance) = 7;
  v17 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMaxAllowedEnrollmentUtterances);
  *v17 = 0xD000000000000017;
  v17[1] = 0x8000000247997920;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSSRMaxEnrollmentUtterancesDefault) = 40;
  v18 = v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kVoiceProfilePruningCookie;
  strcpy((v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kVoiceProfilePruningCookie), "pruningCookie");
  *(v18 + 14) = -4864;
  v19 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kKeywordDetectorQuasarConfigFile);
  *v19 = 0xD000000000000014;
  v19[1] = 0x8000000247997100;
  v20 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kKeywordDetectorNDAPIConfigFile);
  *v20 = 0x69466769666E6F63;
  v20[1] = 0xEF495041444E656CLL;
  v21 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kAssetDefaultCategoryKey);
  *v21 = 0xD000000000000019;
  v21[1] = 0x8000000247996E50;
  v22 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kAssetDefaultVoiceTriggerSecondPassCategoryKey);
  *v22 = 0xD000000000000016;
  v22[1] = 0x8000000247996DF0;
  v23 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatImplicitTrainingEnabledKey);
  *v23 = 0xD000000000000019;
  v23[1] = 0x8000000247997940;
  v24 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserHighScoreThresholdKey);
  *v24 = 0xD00000000000001BLL;
  v24[1] = 0x8000000247997960;
  v25 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserLowScoreThresholdKey);
  *v25 = 0xD00000000000001ALL;
  v25[1] = 0x8000000247997980;
  v26 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserConfidentScoreThresholdKey);
  *v26 = 0xD000000000000020;
  v26[1] = 0x80000002479979A0;
  v27 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserDeltaScoreThresholdKey);
  *v27 = 0xD00000000000001CLL;
  v27[1] = 0x80000002479979D0;
  v28 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kUseSpeakerRecognitionAssetKey);
  *v28 = 0xD00000000000001ALL;
  v28[1] = 0x80000002479979F0;
  v29 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kUseTDTIEnrollment);
  *v29 = 0xD000000000000011;
  v29[1] = 0x8000000247997A10;
  v30 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kAudioDurationProcessIntervalInMillis);
  *v30 = 0xD000000000000024;
  v30[1] = 0x8000000247997A30;
  v31 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMinAudioDurationInMillis);
  *v31 = 0xD000000000000018;
  v31[1] = 0x8000000247997A60;
  v32 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMaxAudioDurationInMillis);
  *v32 = 0xD000000000000018;
  v32[1] = 0x8000000247997A80;
  v33 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSATMemoryIndex);
  *v33 = 0x735F7865646E696DLL;
  v33[1] = 0xEA00000000007461;
  v34 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPSRMemoryIndex);
  *v34 = 0x7865646E696DLL;
  v34[1] = 0xE600000000000000;
  v35 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSATConfig);
  *v35 = 0xD000000000000013;
  v35[1] = 0x8000000247997AA0;
  v36 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kPSRConfig);
  *v36 = 0xD000000000000012;
  v36[1] = 0x8000000247997AC0;
  v37 = v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultSATConfig;
  strcpy((v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultSATConfig), "config_sat.txt");
  *(v37 + 15) = -18;
  v38 = v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPSRConfig;
  strcpy((v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultPSRConfig), "config_sr.txt");
  *(v38 + 14) = -4864;
  v39 = (v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kNumPruningRetentionUtt);
  *v39 = 0xD000000000000016;
  v39[1] = 0x8000000247997900;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultNumPruningRetentionUtt) = 1056964608;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kSatScoreThresholdDefault) = 0;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserHighScoreThresholdDefault) = 56;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserLowScoreThresholdDefault) = 58;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserConfidentScoreThresholdDefault) = 62;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_kMultiUserDeltaScoreThresholdDefault) = 3;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultAudioDurationProcessIntervalInMillis) = 1000;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultMinAudioDurationInMillis) = 500;
  *(v0 + OBJC_IVAR___SecureSpeakerRecognitionConfigDecoder_defaultMaxAudioDurationInMillis) = 4000;
  v41.super_class = SecureSpeakerRecognitionConfigDecoder;
  return objc_msgSendSuper2(&v41, sel_init);
}

uint64_t sub_24798076C(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Float __swiftcall Dictionary.getFloatForKey(key:defaultValue:)(Swift::String key, Swift::Float defaultValue)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = sub_247995174();
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 16) && (v7 = sub_247980FE0(countAndFlagsBits, object), (v8 & 1) != 0) && (sub_247978FE4(*(v6 + 56) + 32 * v7, v14), sub_247981058(), (swift_dynamicCast() & 1) != 0))
    {

      [v13 floatValue];
      defaultValue = v9;
    }

    else if (*(v6 + 16) && (v10 = sub_247980FE0(countAndFlagsBits, object), (v11 & 1) != 0))
    {
      sub_247978FE4(*(v6 + 56) + 32 * v10, v14);

      if (swift_dynamicCast())
      {
        return *&v13;
      }
    }

    else
    {
    }
  }

  return defaultValue;
}

Swift::Int __swiftcall Dictionary.getIntForKey(key:defaultValue:)(Swift::String key, Swift::Int defaultValue)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = sub_247995174();
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 16) && (v7 = sub_247980FE0(countAndFlagsBits, object), (v8 & 1) != 0) && (sub_247978FE4(*(v6 + 56) + 32 * v7, v13), sub_247981058(), (swift_dynamicCast() & 1) != 0))
    {

      defaultValue = [v12 integerValue];
    }

    else if (*(v6 + 16) && (v9 = sub_247980FE0(countAndFlagsBits, object), (v10 & 1) != 0))
    {
      sub_247978FE4(*(v6 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
    }
  }

  return defaultValue;
}

Swift::OpaquePointer_optional __swiftcall Dictionary.getFloatArrayForKey(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v3 = sub_247995174();
  v5 = v3;
  if (v3)
  {
    if (*(v3 + 16) && (v6 = sub_247980FE0(countAndFlagsBits, object), (v7 & 1) != 0))
    {
      sub_247978FE4(*(v5 + 7) + 32 * v6, v20);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59358, &qword_247996448);
      if (swift_dynamicCast())
      {
        v8 = *(v19[0] + 16);
        if (!v8)
        {

          v5 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }

        v9 = v19[0] + 32;
        v5 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_247978FE4(v9, v20);
          sub_247978FE4(v20, v19);
          sub_247981058();
          if (swift_dynamicCast())
          {
            [v18 floatValue];
            v12 = v11;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_247976A3C(0, *(v5 + 2) + 1, 1, v5);
            }

            v14 = *(v5 + 2);
            v13 = *(v5 + 3);
            if (v14 >= v13 >> 1)
            {
              v5 = sub_247976A3C((v13 > 1), v14 + 1, 1, v5);
            }

            __swift_destroy_boxed_opaque_existential_0(v20);
            *(v5 + 2) = v14 + 1;
            v10 = &v5[4 * v14];
          }

          else
          {
            sub_247978FE4(v20, v19);
            if ((swift_dynamicCast() & 1) == 0)
            {
              __swift_destroy_boxed_opaque_existential_0(v20);
              goto LABEL_9;
            }

            v12 = v18;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_247976A3C(0, *(v5 + 2) + 1, 1, v5);
            }

            v16 = *(v5 + 2);
            v15 = *(v5 + 3);
            if (v16 >= v15 >> 1)
            {
              v5 = sub_247976A3C((v15 > 1), v16 + 1, 1, v5);
            }

            __swift_destroy_boxed_opaque_existential_0(v20);
            *(v5 + 2) = v16 + 1;
            v10 = &v5[4 * v16];
          }

          *(v10 + 8) = v12;
LABEL_9:
          v9 += 32;
          if (!--v8)
          {

            goto LABEL_24;
          }
        }
      }
    }

    else
    {
    }

    v5 = 0;
  }

LABEL_24:
  v17 = v5;
  result.value._rawValue = v17;
  result.is_nil = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Dictionary.getUInt32ArrayForKey(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v3 = sub_247995174();
  v5 = v3;
  if (!v3)
  {
    goto LABEL_23;
  }

  if (!*(v3 + 16) || (v6 = sub_247980FE0(countAndFlagsBits, object), (v7 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_247978FE4(*(v5 + 7) + 32 * v6, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59358, &qword_247996448);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v8 = *(v17[0] + 16);
  if (v8)
  {
    v9 = v17[0] + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_247978FE4(v9, v18);
      sub_247978FE4(v18, v17);
      sub_247981058();
      if (swift_dynamicCast())
      {
        v10 = [v16 unsignedIntValue];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_247976B40(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_247976B40((v11 > 1), v12 + 1, 1, v5);
        }

        __swift_destroy_boxed_opaque_existential_0(v18);
        *(v5 + 2) = v12 + 1;
        *&v5[4 * v12 + 32] = v10;
      }

      else
      {
        sub_247978FE4(v18, v17);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_247976B40(0, *(v5 + 2) + 1, 1, v5);
          }

          v14 = *(v5 + 2);
          v13 = *(v5 + 3);
          if (v14 >= v13 >> 1)
          {
            v5 = sub_247976B40((v13 > 1), v14 + 1, 1, v5);
          }

          __swift_destroy_boxed_opaque_existential_0(v18);
          *(v5 + 2) = v14 + 1;
          *&v5[4 * v14 + 32] = v16;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v18);
        }
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

LABEL_23:
  v15 = v5;
  result.value._rawValue = v15;
  result.is_nil = v4;
  return result;
}

unint64_t sub_247980FE0(uint64_t a1, uint64_t a2)
{
  sub_2479951C4();
  sub_247994EF4();
  v4 = sub_2479951F4();

  return sub_2479810A4(a1, a2, v4);
}

unint64_t sub_247981058()
{
  result = qword_27EE59350;
  if (!qword_27EE59350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE59350);
  }

  return result;
}

unint64_t sub_2479810A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_247995164())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t SecurePhraseDetector.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1056964608;
  *(v0 + 112) = 0;
  *(v0 + 24) = xmmword_247996450;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;

  *(v0 + 96) = 1000000000;
  *(v0 + 104) = 0;
  return v0;
}

uint64_t SecurePhraseDetector.init()()
{
  *(v0 + 16) = 1056964608;
  *(v0 + 112) = 0;
  *(v0 + 24) = xmmword_247996450;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;

  *(v0 + 96) = 1000000000;
  *(v0 + 104) = 0;
  return v0;
}

void sub_247981238()
{
  v1 = v0;
  v2 = v0[9];
  if (v2)
  {
    *(v2 + 24) = 0;
    *(v2 + 48) = 0;

    sub_247994D44();

    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
  }

  if (v0[10])
  {

    sub_24798AB64();
  }

  swift_beginAccess();
  v0[6] = MEMORY[0x277D84F90];

  swift_beginAccess();
  v3 = *(v0[7] + 16);
  if (v3)
  {
    swift_beginAccess();
    v4 = 0;
    v5 = v0[6];
    v6 = vdup_n_s32(0xC61C4000);
    while (1)
    {
      v7 = v1[10] != 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[6] = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_247976C44(0, *(v5 + 2) + 1, 1, v5);
        v1[6] = v5;
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_247976C44((v9 > 1), v10 + 1, 1, v5);
      }

      *(v5 + 2) = v10 + 1;
      v11 = &v5[72 * v10];
      *(v11 + 8) = v4;
      v11[36] = 0;
      *(v11 + 37) = v12;
      v11[39] = v13;
      *(v11 + 5) = v6;
      *(v11 + 3) = 0u;
      *(v11 + 4) = 0u;
      *(v11 + 10) = 0;
      *(v11 + 46) = 2;
      *(v11 + 22) = 0;
      *(v11 + 24) = -971227136;
      *(v11 + 50) = 0;
      v11[102] = v7;
      v1[6] = v5;
      if (v3 - 1 == v4)
      {
        break;
      }

      if (++v4 == 0x100000000)
      {
        __break(1u);
        return;
      }
    }

    swift_endAccess();
  }

  v1[11] = 0;

  v1[8] = 0;
}

void sub_247981450(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 96);
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = a1;
  swift_beginAccess();
  v2[7] = MEMORY[0x277D84F90];

  v2[9] = 0;

  v2[12] = *(v5 + 128);
  v6 = (v3 + 32);
  for (i = v4 - 1; ; --i)
  {
    v9 = v6[2];
    v8 = v6[3];
    v10 = *(v6 + 60);
    v123 = v6[1];
    v11 = *v6;
    *(v125 + 12) = v10;
    v124 = v9;
    v125[0] = v8;
    v122 = v11;
    v12 = v123;
    v13 = v6[3];
    v128 = v6[2];
    v129[0] = v13;
    *(v129 + 12) = *(v6 + 60);
    v14 = v6[1];
    v126 = *v6;
    v127 = v14;
    swift_beginAccess();
    v15 = v2[7];
    sub_24797D4D8(&v122, &v116);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2[7] = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_247976D5C(0, *(v15 + 2) + 1, 1, v15);
      v2[7] = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_247976D5C((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[88 * v18];
    *(v19 + 2) = v126;
    v20 = v127;
    v21 = v128;
    v22 = v129[0];
    *(v19 + 92) = *(v129 + 12);
    *(v19 + 4) = v21;
    *(v19 + 5) = v22;
    *(v19 + 3) = v20;
    *(v19 + 27) = v12;
    v19[112] = 0;
    v2[7] = v15;
    swift_endAccess();
    if (!i)
    {
      break;
    }

    v6 += 5;
  }

  v23 = *(v5 + 144);
  if (v23 && (swift_beginAccess(), *(v5 + 208)))
  {
    v92 = v5;
    type metadata accessor for SecureKeywordAnalyzerNDAPI();
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 40) = 0;
    v25 = v23;

    v27 = MEMORY[0x24C1AFE90](v26);
    v28 = [v25 memoryIndexes];
    sub_247994E54();

    sub_247994D84();
    swift_allocObject();
    v29 = sub_247994D74();
    objc_autoreleasePoolPop(v27);

    if (v29)
    {
      *(v24 + 16) = v29;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v24 = 0;
    }

    v2[9] = v24;

    v5 = v92;
    if (!v2[9])
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v30 = sub_247994E34();
    __swift_project_value_buffer(v30, qword_27EE59180);
    v31 = sub_247995064();
    v32 = sub_247994E14();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v116 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v116);
      *(v33 + 12) = 2048;
      *(v33 + 14) = 84;
      _os_log_impl(&dword_247974000, v32, v31, "[%s] [%ld] Unable to create keyword analyzer ndapi since memoryindex or configData nil", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1B02C0](v34, -1, -1);
      MEMORY[0x24C1B02C0](v33, -1, -1);
    }

    if (!v2[9])
    {
      goto LABEL_38;
    }
  }

  if (*(v5 + 64) == 1)
  {
    v35 = v2[7];
    v36 = *(v35 + 16);
    v37 = MEMORY[0x277D84F90];
    v93 = v5;
    if (v36)
    {
      *&v116 = MEMORY[0x277D84F90];

      sub_247983CA0(0, v36, 0);
      v37 = v116;
      v38 = (v35 + 80);
      do
      {
        v40 = *(v38 - 1);
        v39 = *v38;
        *&v116 = v37;
        v41 = *(v37 + 16);
        v42 = *(v37 + 24);

        if (v41 >= v42 >> 1)
        {
          sub_247983CA0((v42 > 1), v41 + 1, 1);
          v37 = v116;
        }

        *(v37 + 16) = v41 + 1;
        v43 = v37 + 16 * v41;
        *(v43 + 32) = v40;
        *(v43 + 40) = v39;
        v38 += 11;
        --v36;
      }

      while (v36);

      v5 = v93;
    }

    v44 = *(v5 + 152);
    if (v44 && (swift_beginAccess(), *(v5 + 224)))
    {
      v45 = *(v5 + 160);
      v46 = *(v5 + 168);
      v47 = v5;
      v48 = *(v5 + 176);
      v50 = *(v47 + 184);
      v49 = *(v47 + 192);
      type metadata accessor for SecureKeywordAnalyzerQuasar();
      v51 = swift_allocObject();
      *(v51 + 40) = 0u;
      *(v51 + 56) = 0u;
      *(v51 + 72) = 0;
      *(v51 + 16) = v37;
      *(v51 + 24) = 0;
      *(v51 + 28) = 0;
      v52 = v44;

      v96 = v45;
      v53 = sub_24797DD30(v45, v46, v48, v50, v49);
      v54 = MEMORY[0x24C1AFE90](v53);
      v55 = [v52 memoryIndexes];
      sub_247994E54();

      sub_247994D84();
      swift_allocObject();
      v56 = sub_247994D74();
      objc_autoreleasePoolPop(v54);
      if (v56)
      {

        v57 = *(v51 + 40);
        v58 = *(v51 + 48);
        v59 = *(v51 + 56);
        v60 = *(v51 + 64);
        v61 = *(v51 + 72);
        *(v51 + 32) = v56;
        *(v51 + 40) = v96;
        *(v51 + 48) = v46;
        *(v51 + 56) = v48;
        *(v51 + 64) = v50;
        *(v51 + 72) = v49;
        sub_24797DF64(v57, v58, v59, v60, v61);
        v5 = v93;
        goto LABEL_39;
      }

      sub_24797DF64(v96, v46, v48, v50, v49);
      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v87 = sub_247994E34();
      __swift_project_value_buffer(v87, qword_27EE59180);
      v88 = sub_247995054();
      v89 = sub_247994E14();
      v5 = v93;
      if (os_log_type_enabled(v89, v88))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v116 = v91;
        *v90 = 136315394;
        *(v90 + 4) = sub_2479784A8(0xD000000000000031, 0x8000000247998200, &v116);
        *(v90 + 12) = 2048;
        *(v90 + 14) = 48;
        _os_log_impl(&dword_247974000, v89, v88, "[%s] [%ld] Failed to create NovDetector for Conformer", v90, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x24C1B02C0](v91, -1, -1);
        MEMORY[0x24C1B02C0](v90, -1, -1);
      }

      sub_24797DF64(*(v51 + 40), *(v51 + 48), *(v51 + 56), *(v51 + 64), *(v51 + 72));
      swift_deallocPartialClassInstance();
    }

    else
    {

      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v62 = sub_247994E34();
      __swift_project_value_buffer(v62, qword_27EE59180);
      v63 = sub_247995064();
      v64 = sub_247994E14();
      if (os_log_type_enabled(v64, v63))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v116 = v66;
        *v65 = 136315394;
        *(v65 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v116);
        *(v65 + 12) = 2048;
        *(v65 + 14) = 98;
        _os_log_impl(&dword_247974000, v64, v63, "[%s] [%ld] Unable to create keyword analyzer quasar since memoryindex or configData nil", v65, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x24C1B02C0](v66, -1, -1);
        MEMORY[0x24C1B02C0](v65, -1, -1);
      }
    }
  }

LABEL_38:
  v51 = 0;
LABEL_39:
  v2[10] = v51;

  v67 = v2[7];
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = v5;

    v70 = v68 - 1;
    for (j = 32; ; j += 88)
    {
      v72 = *(v67 + j + 16);
      v116 = *(v67 + j);
      v117 = v72;
      v73 = *(v67 + j + 80);
      v75 = *(v67 + j + 48);
      v74 = *(v67 + j + 64);
      v118 = *(v67 + j + 32);
      v119 = v75;
      v120 = v74;
      v121 = v73;
      v76 = 1000000.0;
      v77 = v2[9];
      v78 = v77 ? 1000000.0 : *(&v117 + 1);
      v79 = v77 ? 1000000.0 : *&v117;
      if (v2[10])
      {
        v79 = *&v118 + v79;
        v97 = *&v118 + v78;
        v76 = *&v74;
        v95 = DWORD1(v118);
        v94 = v118;
      }

      else
      {
        v97 = v78;
        v95 = 0;
        v94 = 0;
      }

      v80 = HIDWORD(v117);
      v81 = v116;
      v82 = *(&v118 + 1);
      v84 = *(&v119 + 1);
      v83 = v119;
      v85 = *(&v120 + 4);
      if (v77)
      {
        v86 = 1232348160;
        if (*(v69 + 64))
        {
          v76 = 1000000.0;
          v79 = 2.53;
        }
      }

      else
      {
        v86 = DWORD2(v117);
      }

      v99[0] = v116;
      v99[1] = v117;
      v99[2] = v118;
      v99[3] = v119;
      v100 = v74;
      v101 = *(&v120 + 4);
      sub_247983BF0(&v116, v98);

      sub_24797D594(v99);
      v102 = v81;
      v103 = v79;
      v104 = v97;
      v105 = v86;
      v106 = v80;
      v107 = v94;
      v108 = v95;
      v109 = v82;
      v110 = v83;
      v111 = v84;
      v112 = v76;
      v113 = v85;
      v114 = v79;
      v115 = v73;
      sub_247983C4C(&v102);
      if (!v70)
      {
        break;
      }

      --v70;
    }
  }
}

uint64_t sub_247981EE0(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 72);
  if (v3)
  {
    result = swift_beginAccess();
    *(v3 + 56) = v2;
  }

  v4 = *(v1 + 80);
  if (v4)
  {
    *(v4 + 28) = v2;
  }

  return result;
}

void sub_247981F3C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v4 - 1;
    for (i = 32; ; i += 88)
    {
      v7 = (v3 + i);
      v8 = *(v3 + i + 16);
      v25 = *(v3 + i);
      v26[0] = v8;
      v9 = *(v3 + i + 32);
      v10 = *(v3 + i + 48);
      v11 = *(v3 + i + 64);
      v27 = *(v3 + i + 80);
      v26[2] = v10;
      v26[3] = v11;
      v26[1] = v9;
      v12 = v26;
      if (a1)
      {
        v12 = v26 + 1;
      }

      v13 = *v12;
      *(v24 + 12) = *(v3 + i + 60);
      v14 = v7[3];
      v23 = v7[2];
      v24[0] = v14;
      v15 = v7[1];
      v21 = *v7;
      v22 = v15;
      v17[1] = v15;
      v17[2] = v23;
      *v18 = v24[0];
      *&v18[12] = *(v24 + 12);
      v17[0] = v21;
      v19 = v13;
      v20 = v27;
      sub_247983BF0(&v25, v16);
      sub_247983C4C(v17);
      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  *(v1 + 104) = a1 & 1;
}

void sub_24798205C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[9];
  if (v6)
  {
    swift_beginAccess();
    if ((*(v6 + 32) & 1) == 0)
    {
      v7 = *(a1 + 40);
      *(v6 + 32) = 1;
      *(v6 + 40) = v7;
    }

    swift_beginAccess();

    v9 = sub_247975828(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v3[11];
  if (!v10)
  {
    v11 = v3[10];
    if (v3[8] >= v3[12])
    {
      if (v11)
      {

        v10 = sub_24798ACE0();
      }

      else
      {
        v10 = 0;
      }

      v3[11] = v10;
    }

    else
    {
      if (!v11)
      {
        v10 = 0;
        goto LABEL_16;
      }

      swift_beginAccess();

      sub_247994CF4();

      v10 = 0;
    }
  }

LABEL_16:
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = v3[8];
  v14 = __CFADD__(v13, v12);
  v15 = v13 + v12;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v3[8] = v15;
    if (v9)
    {

      sub_247982888(v9, v10, 0, a2);
    }

    else
    {

      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 70) = 0;
      *(a2 + 68) = 2;
      *(a2 + 64) = 0;
    }
  }
}

void sub_247982274(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE590F0, &qword_247995AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_247994E04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v44 - v11;
  v45 = v1;
  v12 = *(v1 + 72);
  if (!v12)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v13 = sub_247994D04();

  if (!v13)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    if (*(v45 + 80))
    {

      v43 = sub_24798ACE0();

      if (v16)
      {
LABEL_24:
        sub_247982888(v16, v43, 1, a1);

        return;
      }
    }

    else
    {
      v43 = 0;
      if (v16)
      {
        goto LABEL_24;
      }
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 70) = 0;
    *(a1 + 64) = 0;
    *(a1 + 68) = 2;
    return;
  }

  v44 = a1;
  v14 = 0;
  v15 = (v7 + 48);
  v51 = (v7 + 16);
  v52 = (v7 + 32);
  v58 = (v7 + 8);
  v16 = MEMORY[0x277D84F90];
  v49 = v6;
  v50 = v5;
  v48 = v12;
  v47 = v13;
  v46 = (v7 + 48);
  while (1)
  {

    sub_247994D34();

    if ((*v15)(v5, 1, v6) == 1)
    {
      sub_2479761D4(v5);
      goto LABEL_5;
    }

    v17 = v59;
    (*v52)(v59, v5, v6);
    (*v51)(v10, v17, v6);
    v19 = *(v12 + 40);
    v18 = *(v12 + 48);
    v20 = sub_247994DF4();
    v21 = sub_247994D94();
    v22 = sub_247994DE4();
    v23 = v22 + v19;
    if (__CFADD__(v22, v19))
    {
      break;
    }

    v24 = __CFADD__(v23, v18);
    v25 = v23 + v18;
    if (v24)
    {
      goto LABEL_28;
    }

    v57 = v25;
    v26 = sub_247994DC4();
    v27 = v26 + v19;
    if (__CFADD__(v26, v19))
    {
      goto LABEL_29;
    }

    v24 = __CFADD__(v27, v18);
    v28 = v27 + v18;
    if (v24)
    {
      goto LABEL_30;
    }

    v56 = v28;
    v29 = sub_247994DF4();
    v30 = v29 + v19;
    if (__CFADD__(v29, v19))
    {
      goto LABEL_31;
    }

    v24 = __CFADD__(v30, v18);
    v31 = v30 + v18;
    if (v24)
    {
      goto LABEL_32;
    }

    sub_247994DD4();
    v33 = v32;
    v34 = sub_247994DB4();
    v53 = sub_247994DA4();
    v35 = *v58;
    (*v58)(v10, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_24797623C(0, *(v16 + 2) + 1, 1, v16);
    }

    v55 = v21;
    v38 = *(v16 + 2);
    v37 = *(v16 + 3);
    if (v38 >= v37 >> 1)
    {
      v39 = sub_24797623C((v37 > 1), v38 + 1, 1, v16);
    }

    else
    {
      v39 = v16;
    }

    v40 = v53 & 1;
    v6 = v49;
    v54(v59, v49);
    *(v39 + 2) = v38 + 1;
    v41 = &v39[48 * v38];
    *(v41 + 4) = v20;
    *(v41 + 10) = v55;
    v42 = v56;
    *(v41 + 6) = v57;
    *(v41 + 7) = v42;
    *(v41 + 8) = v31;
    *(v41 + 18) = v33;
    v41[76] = v34 & 1;
    v41[77] = v40;
    v16 = v39;
    v5 = v50;
    v12 = v48;
    v13 = v47;
    v15 = v46;
LABEL_5:
    if (v13 == ++v14)
    {

      a1 = v44;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_2479826F4(int a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4 - 1;
  v6 = (v3 + 36);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v6 - 1);
    v15 = v6[2];
    *v16 = v6[3];
    *&v16[15] = *(v6 + 63);
    v13 = *v6;
    v14 = v6[1];
    if (v8 != a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_247983CC0(0, *(v7 + 16) + 1, 1);
      }

      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_247983CC0((v9 > 1), v10 + 1, 1);
      }

      *(v7 + 16) = v10 + 1;
      v11 = v7 + 72 * v10;
      *(v11 + 32) = v8;
      *(v11 + 36) = v13;
      *(v11 + 99) = *&v16[15];
      *(v11 + 84) = *v16;
      *(v11 + 68) = v15;
      *(v11 + 52) = v14;
    }

    if (!v5)
    {
      break;
    }

    --v5;
    v6 = (v6 + 72);
  }

  return v7;
}

void sub_247982888(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a1 + 16);
  swift_beginAccess();
  v10 = *(v5 + 56);
  v11 = *(v10 + 16);
  v84 = v9;
  if (v9 < v11)
  {
    if (qword_27EE590C8 == -1)
    {
LABEL_3:
      v12 = sub_247994E34();
      __swift_project_value_buffer(v12, qword_27EE59180);
      v13 = sub_247995054();
      v14 = sub_247994E14();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v125 = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v125);
        *(v15 + 12) = 2048;
        *(v15 + 14) = 230;
        _os_log_impl(&dword_247974000, v14, v13, "[%s] [%ld] SecurePhraseDetector: phraseDetectorInfos count not valid!", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x24C1B02C0](v16, -1, -1);
        MEMORY[0x24C1B02C0](v15, -1, -1);
      }

      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 70) = 0;
      *(a4 + 64) = 0;
      LOWORD(v17) = 2;
      goto LABEL_54;
    }

LABEL_59:
    swift_once();
    goto LABEL_3;
  }

  if (v11)
  {
    v81 = a4;
    v18 = (a1 + 32);

    swift_beginAccess();
    v19 = 0;
    a4 = 0;
    v82 = v11 - 1;
    for (i = 32; ; i += 88)
    {
      v21 = *(v10 + i + 16);
      v125 = *(v10 + i);
      *v126 = v21;
      v22 = *(v10 + i + 32);
      v23 = *(v10 + i + 48);
      v24 = *(v10 + i + 64);
      v127 = *(v10 + i + 80);
      *&v126[32] = v23;
      *&v126[48] = v24;
      *&v126[16] = v22;
      v25 = *(v10 + i + 48);
      v122 = *(v10 + i + 32);
      v123 = v25;
      v124 = *(v10 + i + 64);
      v26 = *(v10 + i + 16);
      v120 = *(v10 + i);
      v121 = v26;
      if (a2)
      {
        v27 = *(a2 + 16);
        v28 = v27 > a4;
        v29 = v27 <= a4;
        v30 = v28 ? *(a2 + 32 + 4 * a4) : 0;
      }

      else
      {
        v30 = 0;
        v29 = 1;
      }

      if (a4 == 0x100000000)
      {
        break;
      }

      v102 = v122;
      v103 = v123;
      v104 = v124;
      v100 = v120;
      v101 = v121;
      v105 = v127;
      v92 = v122;
      v93 = v123;
      v94 = v124;
      v95 = v127;
      v90 = v120;
      v91 = v121;
      if (v84 == a4)
      {
        goto LABEL_56;
      }

      v31 = v18[1];
      v88 = *v18;
      v89[0] = v31;
      *(v89 + 14) = *(v18 + 30);
      v86 = v30;
      v87 = v29;
      sub_247983BF0(&v125, v85);
      sub_247983BF0(&v100, v85);
      v32 = sub_2479830D4(v96, a4, &v90, &v88, &v86, a3 & 1);
      *v108 = v92;
      *&v108[16] = v93;
      v109 = v94;
      v110 = v95;
      v106 = v90;
      v107 = v91;
      sub_247983C4C(&v106);
      v116 = v96[0];
      v117 = v96[1];
      v118 = v96[2];
      v119 = v96[3];
      v33 = v97 | ((v98 | (v99 << 16)) << 32);
      *&v113[16] = v123;
      v114 = v124;
      v112 = v121;
      *v113 = v122;
      v111 = v120;
      v115 = v32 & 1;
      sub_247983C4C(&v111);
      if ((v33 & 0xFF00000000) != 0x200000000)
      {
        v34 = *(v5 + 48);
        if (a4 < *(v34 + 2))
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + 48) = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v34 = sub_24798CE10(v34);
          }

          if (a4 >= *(v34 + 2))
          {
            goto LABEL_57;
          }

          v36 = &v34[v19];
          v37 = v117;
          *(v36 + 2) = v116;
          *(v36 + 3) = v37;
          v38 = v119;
          *(v36 + 4) = v118;
          *(v36 + 5) = v38;
          *(v36 + 24) = v33;
          v36[102] = BYTE6(v33);
          *(v36 + 50) = WORD2(v33);
          *(v5 + 48) = v34;
          swift_endAccess();
        }
      }

      if (v82 == a4)
      {

        a4 = v81;
        goto LABEL_24;
      }

      v19 += 72;
      v18 += 3;
      ++a4;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_24:
  swift_beginAccess();
  v39 = *(v5 + 48);
  *&v121 = 0;
  v120 = v39;
  sub_247983E90(&v125);
  if (v126[60] << 32 == 0x200000000)
  {

    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 70) = 0;
    *(a4 + 68) = 2;
    *(a4 + 64) = 0;
    return;
  }

  v40 = v125;
  v41 = *(v120 + 16);
  if (v41 == *(&v120 + 1))
  {
LABEL_27:

    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v40))
    {
      LOBYTE(v100) = 1;
      sub_24798398C(&v100, v40, *(v5 + 48), &v111);
      v106 = v111;
      v107 = v112;
      *v108 = *v113;
      *&v108[16] = *&v113[16];
      v42 = v114 | ((WORD2(v114) | (BYTE6(v114) << 16)) << 32);
      if ((v42 & 0xFF00000000) == 0x200000000)
      {
        v43 = 0;
        v44 = *(v5 + 48);
        v45 = *(v44 + 16) + 1;
        while (--v45)
        {
          v46 = v43 + 72;
          v47 = *(v44 + v43 + 36);
          v43 += 72;
          if (!v47)
          {
            v48 = v44 + v46;
            v49 = *(v44 + v46 - 40);
            v50 = *(v44 + v46 + 8);
            v51 = *(v48 + 16);
            v52 = *(v48 + 20);
            v53 = *(v48 + 24);
            v54 = *(v48 + 28);
            v55 = *(v48 + 29);
            v56 = *(v48 + 30);
            *a4 = v49;
            *(a4 + 4) = 0;
            *(a4 + 8) = *(v48 - 32);
            v57 = *(v48 - 8);
            *(a4 + 16) = *(v48 - 24);
            *(a4 + 32) = v57;
            *(a4 + 48) = v50;
            *(a4 + 60) = v52;
            *(a4 + 56) = v51;
            *(a4 + 64) = v53;
            *(a4 + 68) = v54;
            *(a4 + 69) = v55;
            *(a4 + 70) = v56;
            return;
          }
        }

        LOBYTE(v90) = 2;
        sub_24798398C(&v90, v40, v44, &v111);
        v100 = v111;
        v101 = v112;
        v102 = *v113;
        v103 = *&v113[16];
        v42 = v114 | ((WORD2(v114) | (BYTE6(v114) << 16)) << 32);
        if ((v42 & 0xFF00000000) == 0x200000000)
        {
          LOBYTE(v96[0]) = 3;
          sub_24798398C(v96, v40, *(v5 + 48), &v111);
          v90 = v111;
          v91 = v112;
          v92 = *v113;
          v93 = *&v113[16];
          v42 = v114 | ((WORD2(v114) | (BYTE6(v114) << 16)) << 32);
          if ((v42 & 0xFF00000000) == 0x200000000)
          {
            v68 = *(v5 + 48);
            if (v40 < *(v68 + 16))
            {
              v69 = v68 + 72 * v40;
              v70 = *(v69 + 36);
              v71 = *(v69 + 80);
              v72 = *(v69 + 88);
              v73 = *(v69 + 92);
              v74 = *(v69 + 96);
              v75 = *(v69 + 100);
              v76 = *(v69 + 101);
              v77 = *(v69 + 102);
              *a4 = *(v69 + 32);
              *(a4 + 4) = v70;
              *(a4 + 8) = *(v69 + 40);
              v78 = *(v69 + 64);
              *(a4 + 16) = *(v69 + 48);
              *(a4 + 32) = v78;
              *(a4 + 48) = v71;
              *(a4 + 60) = v73;
              *(a4 + 56) = v72;
              *(a4 + 64) = v74;
              *(a4 + 68) = v75;
              *(a4 + 69) = v76;
              *(a4 + 70) = v77;
              return;
            }

            goto LABEL_63;
          }

          v80 = v91;
          *a4 = v90;
          *(a4 + 16) = v80;
          v66 = v92;
          v67 = v93;
        }

        else
        {
          v79 = v101;
          *a4 = v100;
          *(a4 + 16) = v79;
          v66 = v102;
          v67 = v103;
        }

LABEL_53:
        *(a4 + 32) = v66;
        *(a4 + 48) = v67;
        *(a4 + 64) = v42;
        *(a4 + 70) = BYTE6(v42);
        v17 = HIDWORD(v42);
LABEL_54:
        *(a4 + 68) = v17;
        return;
      }

LABEL_46:
      v65 = v107;
      *a4 = v106;
      *(a4 + 16) = v65;
      v66 = *v108;
      v67 = *&v108[16];
      goto LABEL_53;
    }

    __break(1u);
  }

  else if (v41 > *(&v120 + 1))
  {
    v42 = &v111;
    v58 = *&v126[4];
    v59 = v121;
    *&v100 = *(&v125 + 1);
    DWORD2(v100) = *v126;
    v111 = *&v126[8];
    v112 = *&v126[24];
    *v113 = *&v126[40];
    *&v113[15] = *&v126[55];
    v28 = v41 > *(&v120 + 1);
    v60 = v41 - *(&v120 + 1);
    if (!v28)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v61 = v121 + 1;
    if (!__OFADD__(v121, 1))
    {
      v62 = v120 + 72 * *(&v120 + 1) + 48;
      do
      {
        v63 = *(v62 - 4);
        if (v58 >= v63)
        {
          *&v90 = v100;
          DWORD2(v90) = DWORD2(v100);
          v106 = v111;
          v107 = v112;
          *v108 = *v113;
          *&v108[15] = *&v113[15];
          if (!--v60)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *&v90 = *(v62 - 16);
          DWORD2(v90) = *(v62 - 8);
          v106 = *v62;
          v107 = *(v62 + 16);
          *v108 = *(v62 + 32);
          *&v108[15] = *(v62 + 47);
          v40 = v59;
          v58 = v63;
          if (!--v60)
          {
            goto LABEL_27;
          }
        }

        v59 = v61;
        v62 += 72;
        *&v100 = v90;
        DWORD2(v100) = DWORD2(v90);
        v111 = v106;
        v112 = v107;
        *v113 = *v108;
        *&v113[15] = *&v108[15];
      }

      while (!__OFADD__(v61++, 1));
    }

    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_2479830D4(uint64_t a1, unsigned int a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6)
{
  v12 = *(a3 + 20);
  v13 = *(a3 + 24);
  v14 = *(a3 + 28);
  v15 = *(a3 + 36);
  v16 = *(a3 + 76);
  v17 = *(a3 + 80);
  v61 = a4[1];
  v62 = *a4;
  v18 = *(a4 + 4);
  v19 = *(a4 + 10);
  v20 = *(a4 + 22);
  v21 = *a5;
  v22 = *(a5 + 4);
  swift_beginAccess();
  v23 = *(v6 + 48);
  if (*(v23 + 16) <= a2)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 70) = 0;
    *(a1 + 64) = 0;
    *(a1 + 68) = 2;
    return v17;
  }

  if (v22)
  {
    v21 = -10000.0;
  }

  if (*(v6 + 80))
  {
    v24 = (v14 * v19) + (v15 * v21);
  }

  else
  {
    v24 = v19;
  }

  if (v19 > *(v23 + 72 * a2 + 44) && (a6 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v16 <= v24)
  {
    v26 = v6;
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v32 = sub_247994E34();
    __swift_project_value_buffer(v32, qword_27EE59180);
    v33 = sub_247995064();
    v34 = sub_247994E14();
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63 = v36;
      *v35 = 136316674;
      *(v35 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v63);
      *(v35 + 12) = 2048;
      *(v35 + 14) = 355;
      *(v35 + 22) = 1024;
      *(v35 + 24) = a2;
      *(v35 + 28) = 2048;
      *(v35 + 30) = v62;
      *(v35 + 38) = 2048;
      *(v35 + 40) = v24;
      *(v35 + 48) = 2048;
      *(v35 + 50) = v16;
      *(v35 + 58) = 2048;
      *(v35 + 60) = v61;
      _os_log_impl(&dword_247974000, v34, v33, "[%s] [%ld] [phId = %u] : Trigger detected with %llu analyzed samples in NDAPI, %f, effectiveThreshold = %f, bestStart = %llu", v35, 0x44u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C1B02C0](v36, -1, -1);
      MEMORY[0x24C1B02C0](v35, -1, -1);
    }

    v25 = 1;
    goto LABEL_30;
  }

  if (v13 <= v24)
  {
    if (a6)
    {
LABEL_25:
      v26 = v6;
      if (qword_27EE590C8 != -1)
      {
        swift_once();
      }

      v37 = sub_247994E34();
      __swift_project_value_buffer(v37, qword_27EE59180);
      v38 = sub_247995064();
      v39 = sub_247994E14();
      if (os_log_type_enabled(v39, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63 = v41;
        *v40 = 136316162;
        *(v40 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v63);
        *(v40 + 12) = 2048;
        *(v40 + 14) = 365;
        *(v40 + 22) = 1024;
        *(v40 + 24) = a2;
        *(v40 + 28) = 2048;
        *(v40 + 30) = v62;
        *(v40 + 38) = 2048;
        *(v40 + 40) = v24;
        _os_log_impl(&dword_247974000, v39, v38, "    [%s] [%ld] [phId = %u] Detected near miss at %lluwith best score up to : %f", v40, 0x30u);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x24C1B02C0](v41, -1, -1);
        MEMORY[0x24C1B02C0](v40, -1, -1);
      }

      v25 = 2;
      goto LABEL_30;
    }

    if (v17)
    {
      v46 = *(v6 + 32);
      v47 = *(v6 + 40);
      if (!__CFADD__(v47, v46))
      {
        if (v47 + v46 < v62)
        {
          goto LABEL_25;
        }

        if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v6 + 112), 1) <= 0x1999999999999999uLL)
        {
          v48 = v62 >= v47;
          v49 = v62 - v47;
          if (v48)
          {
            v8 = v49 + v46;
            if (!__CFADD__(v49, v46))
            {
              v7 = v6;
              if (qword_27EE590C8 == -1)
              {
LABEL_46:
                v50 = sub_247994E34();
                __swift_project_value_buffer(v50, qword_27EE59180);
                v51 = sub_247995034();
                v52 = sub_247994E14();
                if (os_log_type_enabled(v52, v51))
                {
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  v63 = v54;
                  *v53 = 136315906;
                  *(v53 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v63);
                  *(v53 + 12) = 2048;
                  *(v53 + 14) = 374;
                  *(v53 + 22) = 1024;
                  *(v53 + 24) = a2;
                  *(v53 + 28) = 2048;
                  *(v53 + 30) = v8;
                  _os_log_impl(&dword_247974000, v52, v51, "               [%s] [%ld] [phId = %u] : Waiting for logging near miss until timeout %llu samples", v53, 0x26u);
                  __swift_destroy_boxed_opaque_existential_0(v54);
                  MEMORY[0x24C1B02C0](v54, -1, -1);
                  MEMORY[0x24C1B02C0](v53, -1, -1);
                }

                v25 = 0;
                v17 = 1;
                v6 = v7;
                goto LABEL_31;
              }

LABEL_57:
              swift_once();
              goto LABEL_46;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_57;
        }

LABEL_53:
        v25 = 0;
        v17 = 1;
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
      *(v6 + 40) = v62;
      if (qword_27EE590C8 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
LABEL_50:
    v55 = sub_247994E34();
    __swift_project_value_buffer(v55, qword_27EE59180);
    v56 = sub_247995064();

    v57 = sub_247994E14();
    if (os_log_type_enabled(v57, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = v59;
      *v58 = 136316162;
      *(v58 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v63);
      *(v58 + 14) = 382;
      *(v58 + 22) = 1024;
      v60 = *(v6 + 32);
      *(v58 + 30) = *(v6 + 40);
      *(v58 + 12) = 2048;
      *(v58 + 24) = a2;
      *(v58 + 28) = 2048;
      *(v58 + 38) = 2048;
      *(v58 + 40) = v60;

      _os_log_impl(&dword_247974000, v57, v56, "    [%s] [%ld] [phId = %u] : Detected near miss candidate at %llulet's wait %llu samples to log", v58, 0x30u);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C1B02C0](v59, -1, -1);
      MEMORY[0x24C1B02C0](v58, -1, -1);
    }

    else
    {
    }

    goto LABEL_53;
  }

  if (a6)
  {
    v26 = v6;
    if (qword_27EE590C8 != -1)
    {
      swift_once();
    }

    v27 = sub_247994E34();
    __swift_project_value_buffer(v27, qword_27EE59180);
    v28 = sub_247995064();
    v29 = sub_247994E14();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63 = v31;
      *v30 = 136316418;
      *(v30 + 4) = sub_2479784A8(0xD00000000000002ALL, 0x80000002479981D0, &v63);
      *(v30 + 12) = 2048;
      *(v30 + 14) = 388;
      *(v30 + 22) = 1024;
      *(v30 + 24) = a2;
      *(v30 + 28) = 2048;
      *(v30 + 30) = v62;
      *(v30 + 38) = 2048;
      *(v30 + 40) = v24;
      *(v30 + 48) = 2048;
      *(v30 + 50) = v16;
      _os_log_impl(&dword_247974000, v29, v28, "    [%s] [%ld] [phId = %u] : Notify second pass rejected at: %llu with best score up to: %f threshold:%f", v30, 0x3Au);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1B02C0](v31, -1, -1);
      MEMORY[0x24C1B02C0](v30, -1, -1);
    }

    v25 = 3;
LABEL_30:
    v6 = v26;
    goto LABEL_31;
  }

LABEL_9:
  v25 = 0;
LABEL_31:
  v42 = *(v6 + 104);
  if (v12 < v24)
  {
    v43 = *(v6 + 104);
  }

  else
  {
    v43 = 0;
  }

  v44 = *(v6 + 80);
  *a1 = a2;
  if (v24 >= v16)
  {
    v43 = 0;
  }

  *(a1 + 4) = v25;
  *(a1 + 8) = v24;
  *(a1 + 12) = v19;
  *(a1 + 16) = v62;
  *(a1 + 32) = v61;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 60) = v20;
  *(a1 + 64) = v21;
  *(a1 + 68) = v42;
  *(a1 + 69) = v43;
  *(a1 + 70) = v44 != 0;
  return v17;
}

unsigned __int8 *sub_24798398C@<X0>(unsigned __int8 *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  if (v4 <= a2)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    v6 = a3 + 72 * a2;
    if (*(v6 + 36) == v5)
    {
      v7 = v6 + 32;
LABEL_7:
      v11 = *(v7 + 48);
      v12 = *(v7 + 56);
      v13 = *(v7 + 60);
      v14 = *(v7 + 64);
      v15 = *(v7 + 68);
      v16 = *(v7 + 69);
      v17 = *(v7 + 70);
      *a4 = *v7;
      *(a4 + 4) = v5;
      *(a4 + 8) = *(v7 + 8);
      v18 = *(v7 + 32);
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = v18;
      *(a4 + 48) = v11;
      *(a4 + 60) = v13;
      *(a4 + 56) = v12;
      *(a4 + 64) = v14;
      *(a4 + 68) = v15;
      *(a4 + 69) = v16;
      *(a4 + 70) = v17;
    }

    else
    {
      v8 = a3 - 40;
      v9 = v4 + 1;
      while (--v9)
      {
        v7 = v8 + 72;
        v10 = *(v8 + 76);
        v8 += 72;
        if (v10 == v5)
        {
          goto LABEL_7;
        }
      }

      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 70) = 0;
      *(a4 + 64) = 0;
      *(a4 + 68) = 2;
    }
  }

  return result;
}

void *SecurePhraseDetector.deinit()
{

  return v0;
}

uint64_t SecurePhraseDetector.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

char *sub_247983CA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24798CAC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_247983CC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24798CCD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_247983E90(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 78) = 0;
    *(a1 + 72) = 0;
    *(a1 + 76) = 2;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 72 * v2;
    v8 = *(v4 + 64);
    *v9 = *(v4 + 80);
    *&v9[15] = *(v4 + 95);
    v6 = *(v4 + 32);
    v7 = *(v4 + 48);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 24) = v7;
      *(a1 + 40) = v8;
      *(a1 + 56) = *v9;
      *(a1 + 71) = *&v9[15];
      *(a1 + 8) = v6;
      return;
    }
  }

  __break(1u);
}

unint64_t sub_247983F3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593E0, &qword_247996548);
    v2 = sub_247995124();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_247978FE4(*(a1 + 56) + 32 * v13, v28);
        *&v27 = v15;
        *(&v27 + 1) = v16;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v17 = v27;
        sub_247987230(v26, v22);
        sub_247987230(v22, v24);
        sub_247987230(v24, v25);
        sub_247987230(v25, &v23);

        result = sub_247980FE0(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_247987230(&v23, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_247987230(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_24798419C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593D0, &qword_247996538);
    v2 = sub_247995124();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_247978FE4(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_247987230(v22, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_247980FE0(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

void sub_247984400(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE593D8, &qword_247996540);
    v2 = sub_247995124();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v12 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v13 = __clz(__rbit64(v6)) | (v12 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_247978FE4(*(v1 + 56) + 32 * v13, v29);
    *&v28 = v15;
    *(&v28 + 1) = v16;
    v26[2] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v17 = v28;
    sub_247987230(v27, v26);

    if (!swift_dynamicCast())
    {
      break;
    }

    v6 &= v6 - 1;
    v18 = sub_247980FE0(v17, *(&v17 + 1));
    if (v19)
    {
      v9 = v1;
      v10 = 16 * v18;
      *(v2[6] + 16 * v18) = v17;

      v11 = (v2[7] + v10);
      v1 = v9;
      *v11 = v24;
      v11[1] = v25;

      v8 = v12;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
      *(v2[6] + 16 * v18) = v17;
      v20 = (v2[7] + 16 * v18);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v8 = v12;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v8;
  }
}

void __swiftcall SecureAssetsPreinstalledBundle.init(_:)(SecureAssetsPreinstalledBundle_optional *__return_ptr retstr, NSBundle_optional a2)
{
  isa = a2.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata(retstr)) init_];
}

char *SecureAssetsPreinstalledBundle.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___SecureAssetsPreinstalledBundle_rootFolder];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v1[OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData] = MEMORY[0x277D84F98];
  v4 = v1;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v6 = result;
  v74 = a1;
  v7 = MobileGestalt_copy_productType_obj();

  if (v7)
  {
    v8 = sub_247994E84();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = &v4[OBJC_IVAR___SecureAssetsPreinstalledBundle_productType];
  *v11 = v8;
  v11[1] = v10;
  if (qword_27EE590C8 != -1)
  {
    swift_once();
  }

  v12 = sub_247994E34();
  __swift_project_value_buffer(v12, qword_27EE59180);
  v13 = sub_247995064();
  v14 = v4;
  v15 = sub_247994E14();

  if (os_log_type_enabled(v15, v13))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v76[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v76);
    *(v16 + 12) = 2048;
    *(v16 + 14) = 27;
    *(v16 + 22) = 2080;
    if (v11[1])
    {
      v18 = *v11;
      v19 = v11[1];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_2479784A8(v18, v19, v76);

    *(v16 + 24) = v20;
    _os_log_impl(&dword_247974000, v15, v13, "[%s] [%ld] Found productType: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v17, -1, -1);
    MEMORY[0x24C1B02C0](v16, -1, -1);
  }

  else
  {
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_41;
  }

  v21 = result;
  chipID = MobileGestalt_get_chipID();

  v76[0] = chipID;
  v23 = sub_247995154();
  v24 = &v14[OBJC_IVAR___SecureAssetsPreinstalledBundle_chipId];
  *v24 = v23;
  v24[1] = v25;
  v76[0] = chipID;
  sub_2479866B0();
  v26 = sub_247994F64();
  v27 = &v14[OBJC_IVAR___SecureAssetsPreinstalledBundle_hardwarePlatform];
  *v27 = v26;
  v27[1] = v28;
  v29 = sub_247995064();
  v30 = v14;
  v31 = sub_247994E14();

  if (os_log_type_enabled(v31, v29))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v76[0] = v33;
    *v32 = 136315906;
    *(v32 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v76);
    *(v32 + 12) = 2048;
    *(v32 + 14) = 34;
    *(v32 + 22) = 2080;
    v34 = v24;
    v35 = *v24;
    v36 = v24[1];

    v37 = sub_2479784A8(v35, v36, v76);

    *(v32 + 24) = v37;
    *(v32 + 32) = 2080;
    v38 = *v27;
    v39 = v27[1];

    v40 = sub_2479784A8(v38, v39, v76);
    v24 = v34;

    *(v32 + 34) = v40;
    _os_log_impl(&dword_247974000, v31, v29, "[%s] [%ld] Found chipId: %s, hardwarePlatform: %s", v32, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B02C0](v33, -1, -1);
    MEMORY[0x24C1B02C0](v32, -1, -1);
  }

  else
  {
  }

  if (*v24 == 12589 && v24[1] == 0xE200000000000000 || (sub_247995164() & 1) != 0)
  {
    v41 = sub_247995054();
    v42 = sub_247994E14();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v76[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v76);
      *(v43 + 12) = 2048;
      *(v43 + 14) = 38;
      _os_log_impl(&dword_247974000, v42, v41, "[%s] [%ld] Failed to fetch chipId to query assets from secure preinstalleed assets", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1B02C0](v44, -1, -1);
      MEMORY[0x24C1B02C0](v43, -1, -1);
    }

LABEL_23:

    type metadata accessor for SecureAssetsPreinstalledBundle();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!v74)
  {
    v65 = sub_247995054();
    v66 = sub_247994E14();
    if (os_log_type_enabled(v66, v65))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v76);
      *(v67 + 12) = 2048;
      *(v67 + 14) = 48;
      _os_log_impl(&dword_247974000, v66, v65, "[%s] [%ld] Nil bundle", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x24C1B02C0](v68, -1, -1);
      MEMORY[0x24C1B02C0](v67, -1, -1);
    }

    goto LABEL_23;
  }

  v45 = v74;
  v46 = [v45 bundlePath];
  v47 = v30;
  v48 = sub_247994E84();
  v50 = v49;

  v51 = &v47[OBJC_IVAR___SecureAssetsPreinstalledBundle_bundlePath];
  *v51 = v48;
  v51[1] = v50;
  v77.receiver = v47;
  v77.super_class = SecureAssetsPreinstalledBundle;
  v52 = objc_msgSendSuper2(&v77, sel_init);
  v53 = v52;
  v54 = sub_2479850BC(v45);
  if (!v55)
  {
    v69 = sub_247995054();
    v70 = sub_247994E14();
    if (os_log_type_enabled(v70, v69))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76[0] = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v76);
      *(v71 + 12) = 2048;
      *(v71 + 14) = 60;
      v73 = "[%s] [%ld] Failed to fetch secure preinstalled asset root directory bundle";
LABEL_38:
      _os_log_impl(&dword_247974000, v70, v69, v73, v71, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C1B02C0](v72, -1, -1);
      MEMORY[0x24C1B02C0](v71, -1, -1);
    }

LABEL_39:

    return 0;
  }

  v56 = &v52[OBJC_IVAR___SecureAssetsPreinstalledBundle_rootFolder];
  *v56 = v54;
  v56[1] = v55;

  v57 = *v56;
  v58 = v56[1];

  v59 = sub_247986FC4(v45, v57, v58);

  if (!v59)
  {
    v69 = sub_247995054();
    v70 = sub_247994E14();
    if (os_log_type_enabled(v70, v69))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76[0] = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, v76);
      *(v71 + 12) = 2048;
      *(v71 + 14) = 67;
      v73 = "[%s] [%ld] Failed to fetch preinstalled asset metadata";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v60 = OBJC_IVAR___SecureAssetsPreinstalledBundle_metaData;
  swift_beginAccess();
  *&v53[v60] = v59;

  v61 = sub_247995064();
  v62 = sub_247994E14();
  if (os_log_type_enabled(v62, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v75 = v64;
    *v63 = 136315394;
    *(v63 + 4) = sub_2479784A8(0xD000000000000034, 0x8000000247998400, &v75);
    *(v63 + 12) = 2048;
    *(v63 + 14) = 72;
    _os_log_impl(&dword_247974000, v62, v61, "[%s] [%ld] Initializied secure preinstalled asset bundle", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x24C1B02C0](v64, -1, -1);
    MEMORY[0x24C1B02C0](v63, -1, -1);
  }

  return v53;
}