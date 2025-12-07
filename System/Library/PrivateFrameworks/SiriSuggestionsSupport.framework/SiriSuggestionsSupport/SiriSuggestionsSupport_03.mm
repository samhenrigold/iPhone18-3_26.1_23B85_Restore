uint64_t sub_2315FB7E4()
{
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FB910()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  (*(v0 + 144))(0);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_54_0();

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_2315FB9D8()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[25];

  v3 = v2 + 8;
  v4 = OUTLINED_FUNCTION_36();
  v5(v4);
  v6 = v0[39];
  v7 = v6;
  v8 = sub_2316066C8();
  sub_231606978();

  if (os_log_type_enabled(v8, v3))
  {
    OUTLINED_FUNCTION_60();
    v9 = OUTLINED_FUNCTION_41_0();
    *v1 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_69_1(v11);
    OUTLINED_FUNCTION_43_0(&dword_2315AF000, v12, v3, "Error when logging: %@");
    sub_2315B2F7C(v9, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v13 = v0[18];

  sub_2315F53D4(v6);
  OUTLINED_FUNCTION_67_2();
  v13();

  OUTLINED_FUNCTION_54_0();

  OUTLINED_FUNCTION_14();

  return v14();
}

void *sub_2315FBD10()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  return v0;
}

uint64_t sub_2315FBD58()
{
  sub_2315FBD10();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_22SiriSuggestionsSupport9XPCErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2315FBDD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2315FBE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2315FBE84(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2315FBED0(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  sub_231605098();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2315B4740;
  OUTLINED_FUNCTION_31();

  return sub_2315FAE04(v3, v4, v5, v6, v7, v8, v9, v10);
}

id sub_2315FC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_231606788();

  if (a4)
  {
    v8 = sub_231606708();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_2315FC0E0()
{
  result = qword_27DD60818;
  if (!qword_27DD60818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60818);
  }

  return result;
}

uint64_t sub_2315FC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_7_6();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12(v10);
  *v11 = v12;
  v11[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(a10);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315FA19C(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_2315FC228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315FC298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2315B8CC8;

  return sub_2315F9824(a1, v4, v5, v6);
}

uint64_t sub_2315FC348(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_2315FC354()
{
  result = qword_280FE85D8;
  if (!qword_280FE85D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60840, &qword_231609AD0);
    sub_2315B3174(&qword_280FE95B0, MEMORY[0x277D60D68], MEMORY[0x277D60D70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85D8);
  }

  return result;
}

uint64_t sub_2315FC410()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v1[1] = sub_2315B4740;
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_94();

  return sub_2315F941C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2315FC4B4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v1[1] = sub_2315B4660;
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_58();

  return sub_2315F89B4(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_2315FC56C()
{
  result = qword_280FE85C8;
  if (!qword_280FE85C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60848, &qword_231609AF8);
    sub_2315B3174(&qword_280FE9600, MEMORY[0x277D60908], MEMORY[0x277D60910]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85C8);
  }

  return result;
}

uint64_t sub_2315FC620()
{
  OUTLINED_FUNCTION_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v1[1] = sub_2315B4740;
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_58();

  return sub_2315F8420(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2315FC6E8()
{
  v14 = *(v0 + 72);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12(v1);
  *v2 = v3;
  v2[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(v14);
  OUTLINED_FUNCTION_33_1();

  return sub_2315F68F8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2315FC7EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2315B2F24(result, a2);
  }

  return result;
}

unint64_t sub_2315FC800()
{
  result = qword_280FE85D0;
  if (!qword_280FE85D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60500, &qword_231608FB8);
    sub_2315B3174(&qword_280FE9608, MEMORY[0x277D608B8], MEMORY[0x277D608D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85D0);
  }

  return result;
}

uint64_t sub_2315FC8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_7_6();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12(v10);
  *v11 = v12;
  v11[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(a10);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315F5CE4(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_2315FC964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2315FC9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_7_6();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12(v10);
  *v11 = v12;
  v11[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(a10);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315F39B4(v13, v14, v15, v16, v17, v18, v19, v20);
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_1()
{
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_43_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_0()
{
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return sub_2316064D8();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{

  return sub_2316064D8();
}

void OUTLINED_FUNCTION_65_0()
{
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

BOOL OUTLINED_FUNCTION_71_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_72_1()
{
}

uint64_t OUTLINED_FUNCTION_83_0(uint64_t a1)
{

  return sub_2316064F8();
}

void OUTLINED_FUNCTION_84_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{

  return sub_2316067A8();
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_93_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2315FCDB8(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F69746361;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = "preComputedSuggestions";
  v6 = 0x6E6F69746361;
  v7 = "presentationContext";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000013;
      v3 = 0x800000023160A0B0;
      break;
    case 2:
      v3 = 0x800000023160A0D0;
      v6 = 0xD000000000000016;
      break;
    case 3:
      OUTLINED_FUNCTION_35_2();
      break;
    case 4:
      OUTLINED_FUNCTION_36_2();
      break;
    case 5:
      v6 = 0x6974736567677573;
      v3 = 0xEA00000000006E6FLL;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v8 = (v7 - 32) | 0x8000000000000000;
      break;
    case 2:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000016;
      break;
    case 3:
      v2 = 0x697461636F766E69;
      v8 = 0xEE00657079546E6FLL;
      break;
    case 4:
      v2 = 0x6F43676F6C616964;
      v8 = 0xEF6449747865746ELL;
      break;
    case 5:
      v2 = 0x6974736567677573;
      v8 = 0xEA00000000006E6FLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231606BD8();
  }

  return v10 & 1;
}

uint64_t sub_2315FCF88(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000706C6548;
  v3 = 0x69726953776F6873;
  v4 = a1;
  v5 = 0x69726953776F6873;
  v6 = 0xEC000000706C6548;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0x800000023160A050;
      v5 = 0xD000000000000013;
      break;
    case 3:
      v6 = 0x800000023160A070;
      v5 = 0xD00000000000001ALL;
      break;
    default:
      v6 = 0x800000023160A030;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x800000023160A050;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v2 = 0x800000023160A070;
      v3 = 0xD00000000000001ALL;
      break;
    default:
      v2 = 0x800000023160A030;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231606BD8();
  }

  return v8 & 1;
}

uint64_t sub_2315FD0D4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065707954;
  v3 = 0x7974697669746361;
  v4 = a1;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v7 = "intentProperties";
      goto LABEL_7;
    case 2:
      goto LABEL_10;
    case 3:
      v6 = 0x800000023160A160;
      v5 = 0xD000000000000013;
      goto LABEL_10;
    case 4:
      v5 = 0x45746E65696C6173;
      v6 = 0xEF7365697469746ELL;
      goto LABEL_10;
    case 5:
      v5 = 0x7453656369766564;
      v6 = 0xEB00000000657461;
      goto LABEL_10;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x72656E776FLL;
      goto LABEL_10;
    case 7:
      v5 = 0xD000000000000010;
      v7 = "ies";
      goto LABEL_7;
    default:
      v5 = 0xD000000000000010;
      v7 = "extId";
LABEL_7:
      v6 = v7 | 0x8000000000000000;
LABEL_10:
      switch(a2)
      {
        case 1:
          v3 = 0xD000000000000010;
          v8 = "intentProperties";
          goto LABEL_16;
        case 2:
          goto LABEL_19;
        case 3:
          v2 = 0x800000023160A160;
          v3 = 0xD000000000000013;
          goto LABEL_19;
        case 4:
          v3 = 0x45746E65696C6173;
          v2 = 0xEF7365697469746ELL;
          goto LABEL_19;
        case 5:
          v3 = 0x7453656369766564;
          v2 = 0xEB00000000657461;
          goto LABEL_19;
        case 6:
          v2 = 0xE500000000000000;
          v3 = 0x72656E776FLL;
          goto LABEL_19;
        case 7:
          v3 = 0xD000000000000010;
          v8 = "ies";
          goto LABEL_16;
        default:
          v3 = 0xD000000000000010;
          v8 = "extId";
LABEL_16:
          v2 = v8 | 0x8000000000000000;
LABEL_19:
          if (v5 == v3 && v6 == v2)
          {
            v10 = 1;
          }

          else
          {
            v10 = sub_231606BD8();
          }

          return v10 & 1;
      }
  }
}

uint64_t sub_2315FD300()
{
  sub_231606C68();
  OUTLINED_FUNCTION_9_4();
  sub_2316067E8();
  return sub_231606C88();
}

uint64_t sub_2315FD374(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_231606C68();
  a2(v5, a1);
  return sub_231606C88();
}

uint64_t sub_2315FD3C4(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_26_3();
      break;
    case 3:
      OUTLINED_FUNCTION_35_2();
      break;
    case 4:
      OUTLINED_FUNCTION_36_2();
      break;
    default:
      break;
  }

  sub_2316067E8();
}

uint64_t sub_2315FD4C4(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      break;
    default:
      OUTLINED_FUNCTION_26_3();
      break;
  }

  sub_2316067E8();
}

uint64_t sub_2315FD58C(uint64_t a1, char a2)
{
  sub_2316067E8();
}

uint64_t sub_2315FD6D8(uint64_t a1)
{
  sub_231606C68();
  OUTLINED_FUNCTION_9_4();
  sub_2316067E8();
  return sub_231606C88();
}

uint64_t sub_2315FD730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_231606C68();
  a3(v6, a2);
  return sub_231606C88();
}

uint64_t sub_2315FD77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_231601CA4(a3, v24 - v10, &qword_27DD60398, &qword_231609BD0);
  v12 = sub_2316068E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_231601D8C(v11, &qword_27DD60398, &qword_231609BD0);
  }

  else
  {
    sub_2316068D8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2316068A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2316067C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_231601D8C(a3, &qword_27DD60398, &qword_231609BD0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231601D8C(a3, &qword_27DD60398, &qword_231609BD0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

unint64_t StatefulSuggestionsClient.DefaultKeys.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x45746E65696C6173;
      break;
    case 5:
      result = 0x7453656369766564;
      break;
    case 6:
      result = 0x72656E776FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t StatefulSuggestionsClient.suggestNext(requestId:)()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  sub_231605098();
  v1[13] = swift_task_alloc();
  v5 = sub_231605E98();
  v1[14] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[15] = v6;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = sub_231605E28();
  v1[19] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[20] = v8;
  v1[21] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2315FDCA4()
{
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v1 = sub_2316066E8();
  v0[22] = __swift_project_value_buffer(v1, qword_280FE9630);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_17();
  }

  v9 = v0[12];

  v10 = v9[7];
  v11 = v9[8];
  __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
  v18 = (*(v11 + 8) + **(v11 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[23] = v12;
  *v12 = v13;
  v12[1] = sub_2315FDE70;
  v14 = v0[21];
  v15 = v0[10];
  v16 = v0[11];

  return v18(v14, v15, v16, v10, v11);
}

uint64_t sub_2315FDE70()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FDF6C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2();
  *(v1 + 64) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 200) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_8(v2);

  return MEMORY[0x2821C5CD8](v4);
}

uint64_t sub_2315FE014()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315FE0F8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[26] = v3;
  *v3 = v4;
  v3[1] = sub_2315FE1A0;
  v5 = v2[21];
  v6 = v2[18];

  return MEMORY[0x2821C5C98](v6, v5, v0, v1);
}

uint64_t sub_2315FE1A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315FE284()
{
  v29 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = sub_2316066C8();
  v7 = sub_231606968();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v10 = v0[21];
  v11 = v0[19];
  v12 = v0[17];
  if (v8)
  {
    v27 = v0[19];
    v13 = v0[15];
    v14 = v0[16];
    log = v6;
    v15 = v0[14];
    OUTLINED_FUNCTION_60();
    v25 = OUTLINED_FUNCTION_21_2();
    v28 = v25;
    *v10 = 136315138;
    v5(v14, v12, v15);
    v16 = sub_2316067A8();
    v17 = v7;
    v19 = v18;
    (*(v13 + 8))(v12, v15);
    v20 = sub_2315B1574(v16, v19, &v28);

    *(v10 + 4) = v20;
    _os_log_impl(&dword_2315AF000, log, v17, "Determined suggestions: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_7_1();

    (*(v9 + 8))(v10, v27);
  }

  else
  {
    v21 = v0[14];
    v22 = v0[15];

    (*(v22 + 8))(v12, v21);
    (*(v9 + 8))(v10, v11);
  }

  (*(v0[15] + 32))(v0[9], v0[18], v0[14]);
  OUTLINED_FUNCTION_40_2();

  OUTLINED_FUNCTION_14();

  return v23();
}

uint64_t sub_2315FE4B0()
{
  v22 = v0;
  v1 = *(v0 + 192);
  v2 = v1;
  v3 = sub_2316066C8();
  v4 = sub_231606978();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v6 = OUTLINED_FUNCTION_60();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136315138;
    *(v0 + 56) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v9 = sub_2316067A8();
    v11 = sub_2315B1574(v9, v10, v21);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  v17 = *(v0 + 192);
  v18 = sub_231606528();
  v21[3] = sub_231606058();
  v21[4] = sub_231601D00(&qword_280FE95F0, 255, MEMORY[0x277D60A60], MEMORY[0x277D60A58]);
  v21[0] = v18;
  sub_231605088();
  sub_231605E58();

  OUTLINED_FUNCTION_40_2();

  OUTLINED_FUNCTION_14();

  return v19();
}

uint64_t StatefulSuggestionsClient.logEngagement(for:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_231606128();
  v1[12] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[13] = v6;
  v1[14] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v1[15] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_11_3(v7);

  return sub_2315FF8E4(v9, v10, v11);
}

uint64_t sub_2315FE7A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315FE884()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_19_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 128) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_8(v1);

  return MEMORY[0x2821C5CD8](v3);
}

uint64_t sub_2315FE920()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FEA1C()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315FEA90()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315FEB18()
{
  OUTLINED_FUNCTION_15();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v1 = sub_2316066E8();
  __swift_project_value_buffer(v1, qword_280FE9630);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_17();
  }

  ObjectType = swift_getObjectType();
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_2315FEC60;

  return MEMORY[0x2821C6518](ObjectType);
}

uint64_t sub_2315FEC60()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t StatefulSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2315FED5C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_19_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 96) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_8(v1);

  return MEMORY[0x2821C5CD8](v3);
}

uint64_t sub_2315FEDF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315FEEDC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2315FEF7C;
  v2 = OUTLINED_FUNCTION_33_2();

  return MEMORY[0x2821C5CA8](v2);
}

uint64_t sub_2315FEF7C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FF078()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315FF0D4()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

SiriSuggestionsSupport::StatefulSuggestionsClient::DefaultKeys_optional __swiftcall StatefulSuggestionsClient.DefaultKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231606B48();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2315FF20C@<X0>(unint64_t *a1@<X8>)
{
  result = StatefulSuggestionsClient.DefaultKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *StatefulSuggestionsClient.__allocating_init(suggestionService:salientEntityService:runtimeConfigProvider:featureFlagProvider:generationIdProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  type metadata accessor for InMemoryHintsStateStore();
  swift_allocObject();
  v12 = sub_2315CA638();
  type metadata accessor for TurnProtectedHintsStateStore();
  v13 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_44_1(&qword_280FE8E70, v14, v15, &unk_2316088F0);
  v19 = OUTLINED_FUNCTION_44_1(&qword_280FE8E68, v17, v18, &unk_2316088C8);
  swift_defaultActor_initialize();
  v13[17] = 0;
  v13[18] = 0;
  v13[14] = v12;
  v13[15] = v16;
  v13[16] = v19;
  sub_2315B4568(a3, v35);
  v20 = a4;
  sub_2315B4568(a4, v34);
  sub_2315B4568(a5, v33);
  sub_2315B4568(a6, v32);
  v21 = type metadata accessor for StateStoreInteractionBuilder();
  v22 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_44_1(&qword_280FE88C8, v23, v24, &unk_231608390);
  v22[2] = v13;
  v22[3] = v25;
  sub_2315B4648(v35, (v22 + 4));
  sub_2315B4648(v34, (v22 + 9));
  sub_2315B4648(v33, (v22 + 14));
  v22[19] = a1;
  v22[20] = a2;
  sub_2315B4648(v32, (v22 + 21));
  v26 = swift_allocObject();
  v26[7] = v21;
  v26[8] = &off_284623858;
  v26[4] = v22;
  v29 = OUTLINED_FUNCTION_44_1(&qword_280FE88D0, v27, v28, &unk_231608350);
  v26[2] = a1;
  v26[3] = a2;
  v26[9] = v13;
  v26[10] = v29;

  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v26;
}

uint64_t StatefulSuggestionsClient.submit(for:propertyKey:propertyValue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v22 - v17;
  v19 = sub_2316068E8();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_2315B2D08(a5, v22);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v8;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  sub_2315CAB60(v22, (v20 + 72));
  *(v20 + 120) = a6;
  *(v20 + 128) = a7;

  sub_2315FD77C(0, 0, v18, &unk_231609BE0, v20);
}

uint64_t sub_2315FF5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v20;
  v8[4] = v21;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[5] = v13;
  v14 = type metadata accessor for StatefulSuggestionsClient();
  v16 = sub_231601D00(qword_280FE9350, v15, type metadata accessor for StatefulSuggestionsClient, &protocol conformance descriptor for StatefulSuggestionsClient);
  *v13 = v8;
  v13[1] = sub_2315FF700;

  return MEMORY[0x2821C5FC8](a5, a6, a7, a8, v19, v14, v16);
}

uint64_t sub_2315FF700()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315FF7FC()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 24))(0, 0);
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315FF860()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = OUTLINED_FUNCTION_24_4();
  v2(v4);

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315FF8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v6 = sub_231606248();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_231606278();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_2316054A8();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604B8, &qword_231608F60);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = sub_231606288();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C0, &qword_231608F68);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60478, &qword_231609E40);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[37] = v10;
  *v10 = v3;
  v10[1] = sub_2315FFC10;

  return sub_231600580((v3 + 7), a2, a3);
}

uint64_t sub_2315FFC10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315FFCF4()
{
  if (!*(v0 + 80))
  {
    v25 = *(v0 + 96);
    sub_231601D8C(v0 + 56, &qword_27DD60468, &qword_231609E50);
    v26 = *MEMORY[0x277D60AD8];
    sub_231606128();
    OUTLINED_FUNCTION_6_7();
    (*(v27 + 104))(v25, v26);
    goto LABEL_30;
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 104);
  sub_2315B4648((v0 + 56), v0 + 16);
  OUTLINED_FUNCTION_14_5();
  sub_231605D08();
  v3 = OUTLINED_FUNCTION_24_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, v4, v2);
  sub_231601D8C(v1, &qword_27DD60478, &qword_231609E40);
  if (EnumTagSinglePayload != 1 || (v6 = *(v0 + 272), v7 = *(v0 + 152), OUTLINED_FUNCTION_14_5(), sub_231605D18(), v8 = OUTLINED_FUNCTION_24_4(), v10 = __swift_getEnumTagSinglePayload(v8, v9, v7), sub_231601D8C(v6, &qword_27DD604C0, &qword_231608F68), v10 != 1))
  {
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 192);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_231605D18();
    v102 = *(v18 + 104);
    v102(v15, *MEMORY[0x277D61C78], v17);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
    sub_231601CA4(v14, v16, &qword_27DD604C0, &qword_231608F68);
    OUTLINED_FUNCTION_41_1();
    v19 = OUTLINED_FUNCTION_24_4();
    if (__swift_getEnumTagSinglePayload(v19, v20, v17) == 1)
    {
      v21 = *(v0 + 264);
      v22 = *(v0 + 152);
      OUTLINED_FUNCTION_42_1(*(v0 + 256));
      OUTLINED_FUNCTION_42_1(v21);
      v23 = OUTLINED_FUNCTION_38_0();
      if (__swift_getEnumTagSinglePayload(v23, v24, v22) == 1)
      {
        sub_231601D8C(*(v0 + 192), &qword_27DD604C0, &qword_231608F68);
LABEL_14:
        v36 = MEMORY[0x277D60E68];
LABEL_15:
        v47 = *(v0 + 232);
        v48 = *(v0 + 240);
        v49 = *(v0 + 184);
        v50 = *(v0 + 152);
        (*(*(v0 + 208) + 104))(*(v0 + 216), *v36, *(v0 + 200));
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_231605D18();
        v102(v47, *MEMORY[0x277D61C48], v50);
        __swift_storeEnumTagSinglePayload(v47, 0, 1, v50);
        sub_231601CA4(v48, v49, &qword_27DD604C0, &qword_231608F68);
        OUTLINED_FUNCTION_41_1();
        v51 = OUTLINED_FUNCTION_24_4();
        if (__swift_getEnumTagSinglePayload(v51, v52, v50) == 1)
        {
          v53 = *(v0 + 240);
          v54 = *(v0 + 152);
          OUTLINED_FUNCTION_42_1(*(v0 + 232));
          OUTLINED_FUNCTION_42_1(v53);
          v55 = OUTLINED_FUNCTION_38_0();
          if (__swift_getEnumTagSinglePayload(v55, v56, v54) == 1)
          {
            sub_231601D8C(*(v0 + 184), &qword_27DD604C0, &qword_231608F68);
LABEL_23:
            v65 = MEMORY[0x277D60E10];
            goto LABEL_24;
          }
        }

        else
        {
          v57 = *(v0 + 152);
          sub_231601CA4(*(v0 + 184), *(v0 + 224), &qword_27DD604C0, &qword_231608F68);
          v58 = OUTLINED_FUNCTION_38_0();
          v60 = __swift_getEnumTagSinglePayload(v58, v59, v57);
          v62 = *(v0 + 232);
          v61 = *(v0 + 240);
          if (v60 != 1)
          {
            v103 = *(v0 + 184);
            v67 = *(v0 + 160);
            v66 = *(v0 + 168);
            v68 = *(v0 + 152);
            v69 = OUTLINED_FUNCTION_37_2();
            v70(v69);
            OUTLINED_FUNCTION_16_3();
            v73 = sub_231601D00(v71, 255, v72, MEMORY[0x277D61CB0]);
            v74 = OUTLINED_FUNCTION_39_0(v73);
            v75 = *(v67 + 8);
            v75(v66, v68);
            OUTLINED_FUNCTION_29_2(v62);
            OUTLINED_FUNCTION_29_2(v61);
            v76 = OUTLINED_FUNCTION_27_3();
            (v75)(v76);
            OUTLINED_FUNCTION_29_2(v103);
            if (v74)
            {
              goto LABEL_23;
            }

LABEL_21:
            v65 = MEMORY[0x277D60E18];
LABEL_24:
            v77 = *(v0 + 104);
            (*(*(v0 + 136) + 104))(*(v0 + 144), *v65, *(v0 + 128));
            OUTLINED_FUNCTION_14_5();
            sub_231605D08();
            v78 = OUTLINED_FUNCTION_24_4();
            v80 = __swift_getEnumTagSinglePayload(v78, v79, v77);
            v81 = *(v0 + 280);
            v82 = *(v0 + 208);
            v84 = *(v0 + 112);
            v83 = *(v0 + 120);
            v85 = *(v0 + 104);
            if (v80 == 1)
            {
              (*(v82 + 32))(*(v0 + 120), *(v0 + 216), *(v0 + 200));
              (*(v84 + 104))(v83, *MEMORY[0x277D60DC0], v85);
              if (__swift_getEnumTagSinglePayload(v81, 1, v85) != 1)
              {
                sub_231601D8C(*(v0 + 280), &qword_27DD60478, &qword_231609E40);
              }
            }

            else
            {
              (*(v82 + 8))(*(v0 + 216), *(v0 + 200));
              v86 = OUTLINED_FUNCTION_27_3();
              v87(v86);
            }

            v89 = *(v0 + 136);
            v88 = *(v0 + 144);
            v91 = *(v0 + 120);
            v90 = *(v0 + 128);
            v92 = *(v0 + 104);
            v93 = *(v0 + 112);
            v94 = *(v0 + 96);
            v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C8, &qword_231608F70) + 48);
            (*(v93 + 32))(v94, v91, v92);
            (*(v89 + 32))(v94 + v95, v88, v90);
            v96 = *MEMORY[0x277D60AC0];
            sub_231606128();
            OUTLINED_FUNCTION_6_7();
            (*(v97 + 104))(v94, v96);
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_43_1(*(v0 + 232));
          OUTLINED_FUNCTION_43_1(v61);
          v63 = OUTLINED_FUNCTION_27_3();
          v64(v63);
        }

        sub_231601D8C(*(v0 + 184), &qword_27DD604B8, &qword_231608F60);
        goto LABEL_21;
      }
    }

    else
    {
      v28 = *(v0 + 152);
      sub_231601CA4(*(v0 + 192), *(v0 + 248), &qword_27DD604C0, &qword_231608F68);
      v29 = OUTLINED_FUNCTION_38_0();
      v31 = __swift_getEnumTagSinglePayload(v29, v30, v28);
      v33 = *(v0 + 256);
      v32 = *(v0 + 264);
      if (v31 != 1)
      {
        v101 = *(v0 + 192);
        v37 = *(v0 + 160);
        v38 = *(v0 + 168);
        v39 = *(v0 + 152);
        v40 = OUTLINED_FUNCTION_37_2();
        v41(v40);
        OUTLINED_FUNCTION_16_3();
        v44 = sub_231601D00(v42, 255, v43, MEMORY[0x277D61CB0]);
        v100 = OUTLINED_FUNCTION_39_0(v44);
        v45 = *(v37 + 8);
        v45(v38, v39);
        OUTLINED_FUNCTION_29_2(v33);
        OUTLINED_FUNCTION_29_2(v32);
        v46 = OUTLINED_FUNCTION_27_3();
        (v45)(v46);
        OUTLINED_FUNCTION_29_2(v101);
        if (v100)
        {
          goto LABEL_14;
        }

LABEL_12:
        v36 = MEMORY[0x277D60E60];
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_43_1(*(v0 + 256));
      OUTLINED_FUNCTION_43_1(v32);
      v34 = OUTLINED_FUNCTION_27_3();
      v35(v34);
    }

    sub_231601D8C(*(v0 + 192), &qword_27DD604B8, &qword_231608F60);
    goto LABEL_12;
  }

  v11 = *(v0 + 96);
  v12 = *MEMORY[0x277D60AD8];
  sub_231606128();
  OUTLINED_FUNCTION_6_7();
  (*(v13 + 104))(v11, v12);
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_30:

  OUTLINED_FUNCTION_14();

  return v98();
}

uint64_t sub_231600580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = *v3;
  v5 = sub_231605B38();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23160066C, 0, 0);
}

uint64_t sub_23160066C()
{
  v34 = v0;
  v1 = *(v0[18] + 72);
  v0[23] = v1;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for HintsStateStoreConsumer))
  {
    v4 = v3;
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = swift_getObjectType();
    (*(v6 + 104))(v5, *MEMORY[0x277D605B0], v7);
    swift_unknownObjectRetain();
    v9 = sub_231605B28();
    v11 = v10;
    v0[24] = v10;
    (*(v6 + 8))(v5, v7);
    v32 = (*(v4 + 16) + **(v4 + 16));
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v0[25] = v12;
    *v12 = v13;
    v12[1] = sub_231600998;
    v14 = v0[16];
    v15 = v0[17];

    return v32(v0 + 2, v14, v15, v9, v11, v8, v4);
  }

  else
  {
    if (qword_280FE9628 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280FE9628);
    }

    v17 = sub_2316066E8();
    __swift_project_value_buffer(v17, qword_280FE9630);

    v18 = sub_2316066C8();
    v19 = sub_231606968();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[18];
      v21 = OUTLINED_FUNCTION_60();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v0[13] = v20;

      v23 = sub_2316067A8();
      v25 = sub_2315B1574(v23, v24, &v33);

      *(v21 + 4) = v25;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x231933730](v22, -1, -1);
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_34_2();

    OUTLINED_FUNCTION_14();

    return v31();
  }
}

uint64_t sub_231600998()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_231600A98()
{
  v14 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60530, &unk_231608FF0);
    if (swift_dynamicCast())
    {
      if (*(v0 + 88))
      {
        v2 = *(v0 + 120);
        swift_unknownObjectRelease();
        sub_2315B4648((v0 + 64), v2);
        goto LABEL_12;
      }
    }

    else
    {
      *(v0 + 96) = 0;
      *(v0 + 64) = 0u;
      *(v0 + 80) = 0u;
    }
  }

  else
  {
    sub_231601D8C(v0 + 16, &qword_27DD60390, &qword_231608910);
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0;
  }

  sub_231601D8C(v0 + 64, &qword_27DD60468, &qword_231609E50);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v3 = sub_2316066E8();
  __swift_project_value_buffer(v3, qword_280FE9630);

  v4 = sub_2316066C8();
  v5 = sub_231606968();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    OUTLINED_FUNCTION_60();
    v7 = OUTLINED_FUNCTION_21_2();
    v13 = v7;
    *v1 = 136315138;
    *(v0 + 112) = v6;

    v8 = sub_2316067A8();
    v10 = sub_2315B1574(v8, v9, &v13);

    *(v1 + 4) = v10;
    _os_log_impl(&dword_2315AF000, v4, v5, "%s: No SiriRequestState in the stateStore", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x231933730](v7, -1, -1);
    OUTLINED_FUNCTION_7_1();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_34_2();
LABEL_12:

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t StatefulSuggestionsClient.suggestNext(interaction:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_231600CF8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_19_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 88) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_8(v1);

  return MEMORY[0x2821C5CD8](v3);
}

uint64_t sub_231600D94()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_231600E78()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[12] = v3;
  *v3 = v4;
  v3[1] = sub_231600F1C;
  v5 = v2[8];
  v6 = v2[9];

  return MEMORY[0x2821C5C98](v5, v6, v0, v1);
}

uint64_t sub_231600F1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t StatefulSuggestionsClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_3(v1);

  return StatefulSuggestionsClient.suggestNext(requestId:)();
}

uint64_t StatefulSuggestionsClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_3(v1);

  return StatefulSuggestionsClient.suggestNext(requestId:)();
}

uint64_t sub_23160114C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23160124C()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();

  return v0();
}

void *StatefulSuggestionsClient.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t StatefulSuggestionsClient.__deallocating_deinit()
{
  StatefulSuggestionsClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_231601314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2315B4740;

  return MEMORY[0x2821C5FC8](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2316013F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B4740;

  return MEMORY[0x2821C5FC0](a1, a2, a3, a4, a5);
}

uint64_t sub_2316014BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return MEMORY[0x2821C5FE8](a1, a2, a3, a4);
}

uint64_t sub_23160157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315B4740;

  return StatefulSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_23160162C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return StatefulSuggestionsClient.warmup()();
}

uint64_t sub_2316016B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return StatefulSuggestionsClient.getNextSuggestions(requestId:)();
}

uint64_t sub_23160176C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return StatefulSuggestionsClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_231601820()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4660;

  return StatefulSuggestionsClient.refreshService()();
}

uint64_t sub_2316018B0(uint64_t a1)
{
  v14 = v1[2];
  v12 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12(v8);
  *v9 = v10;
  v9[1] = sub_2315B4660;

  return sub_2315FF5D4(a1, v14, v12, v3, v4, v5, v6, v7);
}

unint64_t sub_2316019AC()
{
  result = qword_27DD60888;
  if (!qword_27DD60888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60888);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StatefulSuggestionsClient.DefaultKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for StatefulSuggestionsClient.DefaultKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231601B7C()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_5(v1);

  return v4(v3);
}

uint64_t sub_231601C10()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_5(v1);

  return v4(v3);
}

uint64_t sub_231601CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_7();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_231601D00(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231601D8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return sub_231601D8C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1)
{

  return sub_231606778();
}

uint64_t OUTLINED_FUNCTION_40_2()
{
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return sub_231601CA4(v2, v0 + v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return sub_231601D8C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return sub_231601D8C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_1(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_231601D00(a1, 255, v4, a4);
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return swift_getObjectType();
}

uint64_t sub_231601F54()
{
  v0 = sub_231605098();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605088();
  v6 = sub_231605068();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t StaticRequestIdProvider.randomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  sub_231605098();
  OUTLINED_FUNCTION_5_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StaticRequestIdProvider.__allocating_init(uuidString:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_231605098();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605058();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_231605088();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2315BE86C(v6);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  type metadata accessor for StaticRequestIdProvider(0);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId, v12, v7);
  v14 = (v13 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  *v14 = a1;
  v14[1] = a2;
  return v13;
}

uint64_t StaticRequestIdProvider.__allocating_init(requestId:uuidString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  sub_231605098();
  OUTLINED_FUNCTION_5_1();
  (*(v8 + 32))(v6 + v7, a1);
  v9 = (v6 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  *v9 = a2;
  v9[1] = a3;
  return v6;
}

uint64_t type metadata accessor for StaticRequestIdProvider(uint64_t a1)
{
  result = qword_27DD60890;
  if (!qword_27DD60890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticRequestIdProvider.init(requestId:uuidString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  sub_231605098();
  OUTLINED_FUNCTION_5_1();
  (*(v8 + 32))(v3 + v7, a1);
  v9 = (v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

uint64_t sub_23160240C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_uuidString);
  }

  else
  {
    v2 = sub_231605068();
  }

  return v2;
}

uint64_t StaticRequestIdProvider.deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  sub_231605098();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t StaticRequestIdProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport23StaticRequestIdProvider_randomId;
  sub_231605098();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23160269C(uint64_t a1)
{
  result = sub_231605098();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t String.fromBase64String<A>()@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = sub_231605008();
  if (v8 >> 60 == 15)
  {
    v9 = 1;
  }

  else
  {
    v10 = v7;
    v11 = v8;
    sub_231604F38();
    swift_allocObject();
    sub_231604F28();
    v9 = 0;
    sub_231604F18();

    sub_2315C95D0(v10, v11);
  }

  return __swift_storeEnumTagSinglePayload(a5, v9, 1, a3);
}

Swift::String_optional __swiftcall Encodable.toBase64String()()
{
  sub_231604F78();
  swift_allocObject();
  sub_231604F68();
  v0 = sub_231604F58();
  v2 = v1;
  sub_2315B2F24(v0, v1);
  v3 = sub_231605028();
  v5 = v4;
  sub_2315B300C(v0, v2);

  sub_2315B300C(v0, v2);
  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_23160294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2315CAB60(a1, &v17);
    v6 = v18;
    v7 = v19;
    v8 = v20;
    v9 = __swift_mutable_project_boxed_opaque_existential_2(&v17, v18);
    MEMORY[0x28223BE20](v9);
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_231604A58(v11, a2, a3, v3, v6, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  }

  else
  {
    sub_2315CA9BC(a1);
    v14 = OUTLINED_FUNCTION_41();
    sub_2315F0990(v14, v15, v16);

    return sub_2315CA9BC(&v17);
  }
}

uint64_t static OfflineGenerationSuggestionsClient.getInteractionBuilder@Sendable (intentQueries:executionParameters:deviceState:)@<X0>(uint64_t a3@<X2>, __n128 **a4@<X8>)
{
  sub_2315B4568(a3, v11);
  v5 = type metadata accessor for OfflineGenerationInteractionBuilder();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_41();
  v9 = OfflineGenerationInteractionBuilder.init(intentQueries:executionParameters:deviceState:)(v6, v7, v8);
  a4[3] = v5;
  a4[4] = &protocol witness table for OfflineGenerationInteractionBuilder;
  *a4 = v9;
}

void *OfflineGenerationSuggestionsClient.__allocating_init(suggestionService:interactionBuilder:requestId:)()
{
  OUTLINED_FUNCTION_7_7();
  v5 = v4;
  v6 = swift_allocObject();
  sub_2315BCA58(v5, (v6 + 2));
  v6[7] = v3;
  v6[8] = v2;
  v6[9] = v1;
  v6[10] = v0;
  return v6;
}

void *OfflineGenerationSuggestionsClient.init(suggestionService:interactionBuilder:requestId:)()
{
  OUTLINED_FUNCTION_7_7();
  sub_2315BCA58(v5, (v1 + 2));
  v1[7] = v4;
  v1[8] = v3;
  v1[9] = v2;
  v1[10] = v0;
  return v1;
}

uint64_t OfflineGenerationSuggestionsClient.getSuggestionsForIntents(for:)()
{
  OUTLINED_FUNCTION_8();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v4 = sub_231605E28();
  v1[49] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[50] = v5;
  v1[51] = swift_task_alloc();
  v6 = sub_231605098();
  v1[52] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[53] = v7;
  v1[54] = swift_task_alloc();
  v8 = sub_231605FA8();
  v1[55] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[56] = v9;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v10 = sub_231605F68();
  v1[59] = v10;
  OUTLINED_FUNCTION_4(v10);
  v1[60] = v11;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_231602D94()
{
  if (qword_280FE9628 != -1)
  {
LABEL_30:
    swift_once();
  }

  v1 = sub_2316066E8();
  __swift_project_value_buffer(v1, qword_280FE9630);

  v2 = sub_2316066C8();
  v3 = sub_231606968();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 376);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_2315AF000, v2, v3, "Building Interaction in OfflineGenerationSuggestionsClient with intentQuery: %ld", v6, 0xCu);
    MEMORY[0x231933730](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 376);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = *(v0 + 480);
    v11 = *(v0 + 448);
    v72 = MEMORY[0x277D84F90];
    sub_231604170(0, v8, 0);
    v9 = v72;
    v70 = *(v11 + 16);
    OUTLINED_FUNCTION_8_3();
    v13 = v7 + v12;
    v67 = *(v11 + 72);
    v68 = v8;
    v14 = (v11 + 8);
    do
    {
      v15 = *(v0 + 464);
      v16 = *(v0 + 440);
      v17 = OUTLINED_FUNCTION_41();
      v70(v17);
      sub_231605F88();
      (*v14)(v15, v16);
      v19 = *(v72 + 16);
      v18 = *(v72 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_231604170((v18 > 1), v19 + 1, 1);
      }

      *(v72 + 16) = v19 + 1;
      OUTLINED_FUNCTION_8_3();
      (*(v10 + 32))(v72 + v20 + *(v10 + 72) * v19);
      v13 += v67;
      --v8;
    }

    while (v8);
    v8 = v68;
  }

  *(v0 + 504) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  v71 = sub_231606728();
  if (!v8)
  {
LABEL_22:
    *(v0 + 512) = v71;
    OUTLINED_FUNCTION_10_3((*(v0 + 384) + 16));
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 520) = v57;
    *v57 = v58;
    v57[1] = sub_231603508;

    return MEMORY[0x2821C5CD8](v0 + 208);
  }

  v21 = *(v0 + 480);
  v22 = *(v0 + 448);
  v23 = *(v0 + 424);
  v24 = *(v0 + 376);
  sub_231605538();
  v65 = *(v22 + 16);
  OUTLINED_FUNCTION_8_3();
  v26 = v24 + v25;
  v63 = (v23 + 8);
  v64 = (v21 + 8);
  v61 = (v22 + 8);
  v62 = *(v22 + 72);
  while (1)
  {
    v69 = v8;
    v27 = *(v0 + 488);
    v28 = *(v0 + 472);
    v29 = *(v0 + 432);
    v30 = *(v0 + 416);
    v66 = v26;
    v65(*(v0 + 456));
    sub_231605F88();
    sub_231605F58();
    (*v64)(v27, v28);
    v31 = sub_231605068();
    v33 = v32;
    (*v63)(v29, v30);
    v73 = sub_231605518();
    v74 = v34;
    MEMORY[0x231932CB0](v31, v33);

    v35 = sub_2316063D8();
    *(v0 + 40) = v35;
    v36 = MEMORY[0x277D610F8];
    v37 = sub_231604218(&qword_280FE9590, MEMORY[0x277D610F8], MEMORY[0x277D61108]);
    *(v0 + 48) = v37;
    v38 = sub_231604218(&qword_280FE9598, v36, MEMORY[0x277D61100]);
    *(v0 + 56) = v38;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_231605F98();
    sub_2315CAB60((v0 + 16), (v0 + 64));
    v39 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 64, *(v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 136) = v35;
    *(v0 + 144) = v37;
    *(v0 + 152) = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    v41 = *(v35 - 8);
    (*(v41 + 16))(boxed_opaque_existential_1, v39, v35);
    v42 = sub_2315CD0A0(v73, v74);
    if (__OFADD__(v71[2], (v43 & 1) == 0))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v44 = v42;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
    if (sub_231606AC8())
    {
      break;
    }

LABEL_17:
    if (v45)
    {
      v48 = (v71[7] + 48 * v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      sub_2315CAB60((v0 + 112), v48);
    }

    else
    {
      v49 = *(v0 + 136);
      v60 = __swift_mutable_project_boxed_opaque_existential_2(v0 + 112, v49);
      v50 = *(v49 - 8);
      v51 = swift_task_alloc();
      (*(v50 + 16))(v51, v60, v49);
      *(v0 + 184) = v35;
      *(v0 + 192) = v37;
      *(v0 + 200) = v38;
      v52 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
      (*(v41 + 32))(v52, v51, v35);
      v71[(v44 >> 6) + 8] |= 1 << v44;
      v53 = (v71[6] + 16 * v44);
      *v53 = v73;
      v53[1] = v74;
      sub_2315CAB60((v0 + 160), (v71[7] + 48 * v44));
      v54 = v71[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_29;
      }

      v71[2] = v56;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
    }

    (*v61)(*(v0 + 456), *(v0 + 440));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v26 = v66 + v62;
    v8 = v69 - 1;
    if (v69 == 1)
    {
      goto LABEL_22;
    }
  }

  v46 = sub_2315CD0A0(v73, v74);
  if ((v45 & 1) == (v47 & 1))
  {
    v44 = v46;
    goto LABEL_17;
  }

  return sub_231606C08();
}

uint64_t sub_231603508()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2316035EC()
{
  OUTLINED_FUNCTION_10_3((*(v0 + 384) + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 528) = v1;
  *v1 = v2;
  v1[1] = sub_2316036A4;

  return MEMORY[0x2821C5CE0](v0 + 288);
}

uint64_t sub_2316036A4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_231603788()
{
  v1 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v0[39]);
  sub_2316055E8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v2 = OUTLINED_FUNCTION_41();
  v3(v2);

  v4 = v0[44];
  v5 = v0[45];
  OUTLINED_FUNCTION_10_3(v0 + 41);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v12 = (*(v5 + 8) + **(v5 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[67] = v8;
  *v8 = v9;
  v8[1] = sub_231603920;
  v10 = v0[51];

  return v12(v10, v6, v7, v4, v5);
}

uint64_t sub_231603920()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 544) = v0;

  if (v0)
  {
    v5 = sub_231603C70;
  }

  else
  {
    v5 = sub_231603A24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_231603A24()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);
  v1 = v0[29];
  v2 = v0[30];
  OUTLINED_FUNCTION_10_3(v0 + 26);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[69] = v3;
  *v3 = v4;
  v3[1] = sub_231603AE0;
  v5 = v0[51];
  v6 = v0[46];

  return MEMORY[0x2821C5C98](v6, v5, v1, v2);
}

uint64_t sub_231603AE0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_231603BC4()
{
  (*(v0[50] + 8))(v0[51], v0[49]);
  OUTLINED_FUNCTION_4_5();

  v1 = v0[1];

  return v1();
}

uint64_t sub_231603C70()
{
  v1 = v0[68];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);
  sub_231606528();
  sub_231606058();
  sub_231604218(&qword_280FE95F0, MEMORY[0x277D60A60], MEMORY[0x277D60A58]);
  sub_231605088();
  sub_231605E58();

  OUTLINED_FUNCTION_4_5();

  v2 = v0[1];

  return v2();
}

void *OfflineGenerationSuggestionsClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t OfflineGenerationSuggestionsClient.__deallocating_deinit()
{
  OfflineGenerationSuggestionsClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_231603E00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231603EAC;

  return OfflineGenerationSuggestionsClient.getSuggestionsForIntents(for:)();
}

uint64_t sub_231603EAC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void *sub_231603F90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD608C0, &qword_23160A028, MEMORY[0x277D60C18], sub_2315DA6B4);
  *v3 = result;
  return result;
}

void *sub_231603FE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2316042B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231604008(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD603F0, &qword_2316095B0, MEMORY[0x277D606E0], sub_2315DA6E0);
  *v3 = result;
  return result;
}

void *sub_231604060(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD608A0, &qword_231609FF8, MEMORY[0x277D604E8], sub_2315DA710);
  *v3 = result;
  return result;
}

void *sub_2316040B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2316044B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2316040D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &unk_27DD608D0, &unk_23160A040, MEMORY[0x277D5DD60], sub_2315DA748);
  *v3 = result;
  return result;
}

void *sub_231604130(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2316045B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231604150(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2316046D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231604170(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23160489C(a1, a2, a3, *v3, &qword_27DD608C8, &unk_23160A030, MEMORY[0x277D608B8], sub_2315DA864);
  *v3 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_231604218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2316042B0(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD608B8, &unk_23160A018);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2315DA6CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2316044B8(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60588, &qword_231609048);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2315DA728((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2316045B8(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60548, &qword_2316098E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2315DA760((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2316046D0(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD608B0, &unk_23160A008);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2315DA788(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_23160489C(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  a7(0);
  OUTLINED_FUNCTION_8_3();
  if (v11)
  {
    a8(a4 + v23, v14, v21 + v23);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

uint64_t sub_231604A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v13 + 32))(&v21 - v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a4;
  (*(v13 + 16))(v16, v18, a5);
  sub_231604BD8(v16, a2, a3, isUniquelyReferenced_nonNull_native, &v22, a5, a6, a7);
  result = (*(v13 + 8))(v18, a5);
  *a4 = v22;
  return result;
}

_OWORD *sub_231604BD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a6;
  v32 = a7;
  v33 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v16 = *a5;
  v17 = sub_2315CD0A0(a2, a3);
  if (__OFADD__(v16[2], (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
  if ((sub_231606AC8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_2315CD0A0(a2, a3);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_10:
    result = sub_231606C08();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  v23 = *a5;
  if (v20)
  {
    v24 = (v23[7] + 48 * v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    return sub_2315CAB60(&v30, v24);
  }

  else
  {
    v26 = __swift_mutable_project_boxed_opaque_existential_2(&v30, v31);
    MEMORY[0x28223BE20](v26);
    v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28);
    sub_231604E0C(v19, a2, a3, v28, v23, a6, a7, a8);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  }
}

_OWORD *sub_231604E0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_2315CAB60(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    return sub_231604EE8();
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}