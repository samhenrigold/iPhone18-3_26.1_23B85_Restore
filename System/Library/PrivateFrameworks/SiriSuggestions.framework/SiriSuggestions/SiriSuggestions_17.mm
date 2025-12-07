uint64_t sub_23134CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  sub_2313690F0();

  v27 = sub_2313698A0();
  v28 = sub_23136A3A0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v24[13];
    a11 = v24[12];
    a12 = v24[14];
    v31 = v24[10];
    v30 = v24[11];
    a10 = v24[9];
    v32 = OUTLINED_FUNCTION_60();
    v33 = OUTLINED_FUNCTION_29_0();
    a13 = v33;
    *v32 = 136315138;
    sub_2313676F0();
    v34 = sub_231368130();
    v36 = v35;
    (*(v31 + 8))(v30, a10);
    v37 = sub_2311CFD58(v34, v36, &a13);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_2311CB000, v27, v28, "[EngagementService] Using Suggestion: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v29 + 8))(a12, a11);
  }

  else
  {
    v39 = v24[13];
    v38 = v24[14];
    v40 = v24[12];

    (*(v39 + 8))(v38, v40);
  }

  v41 = swift_task_alloc();
  v24[16] = v41;
  *v41 = v24;
  v41[1] = sub_23134D128;
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C7438](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_23134D128()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t EngagementService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t EngagementService.__deallocating_deinit()
{
  EngagementService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23134D2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23134D324(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2311D44D4;

  return sub_23134CD90(a1, a2, v7, v6);
}

uint64_t sub_23134D444(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23134D4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23134D444(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23134D510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23134D6F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23134D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23134D6F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsOverridesConfig.SignalOverrides.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D58, &qword_231378D80);
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  v32 = OUTLINED_FUNCTION_9_17(v24);
  sub_23134D6F0(v32, v33, v34);
  sub_231369EE0();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D60, &qword_231378D88);
  v35 = sub_23134D8FC(&qword_27DD44D68, sub_23134D744);
  OUTLINED_FUNCTION_6_31(v35, v36);

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134D6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85030;
  if (!qword_280F85030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85030);
  }

  return result;
}

unint64_t sub_23134D744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44D70;
  if (!qword_27DD44D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44D70);
  }

  return result;
}

void SiriSuggestionsOverridesConfig.SignalOverrides.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_21_0();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D78, &qword_231378D90);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_9_17(v12);
  sub_23134D6F0(v16, v17, v18);
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D60, &qword_231378D88);
    v19 = sub_23134D8FC(&qword_280F7C860, sub_23134D970);
    OUTLINED_FUNCTION_4_32(v19, v20);
    v21 = OUTLINED_FUNCTION_9_31();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_23134D8FC(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44D60, &qword_231378D88);
    v5 = a2();
    result = OUTLINED_FUNCTION_10_33(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23134D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FD0;
  if (!qword_280F84FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FD0);
  }

  return result;
}

SiriSuggestions::SiriSuggestionsOverridesConfig::SuggestionSignalOverride __swiftcall SiriSuggestionsOverridesConfig.SuggestionSignalOverride.init(rank:status:)(Swift::UInt rank, SiriSuggestions::SiriSuggestionsOverridesConfig::SuggestionStatus status)
{
  v3 = *status;
  *v2 = rank;
  *(v2 + 8) = v3;
  result.rank = rank;
  result.status = status;
  return result;
}

uint64_t sub_23134DA04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_23134DAC8(char a1)
{
  if (a1)
  {
    return 0x737574617473;
  }

  else
  {
    return 1802396018;
  }
}

uint64_t sub_23134DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23134DA04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23134DB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23134DCF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23134DB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23134DCF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsOverridesConfig.SuggestionSignalOverride.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21_0();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D80, &qword_231378D98);
  OUTLINED_FUNCTION_0_0();
  v32 = v31;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  a10 = *(v24 + 8);
  v36 = OUTLINED_FUNCTION_9_17(v29);
  sub_23134DCF8(v36, v37, v38);
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  a14 = 0;
  v39 = sub_23136A880();
  if (!v25)
  {
    a13 = a10;
    a12 = 1;
    sub_23134DD4C(v39, v40, v41);
    sub_23136A890();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134DCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FE8;
  if (!qword_280F84FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FE8);
  }

  return result;
}

unint64_t sub_23134DD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44D88;
  if (!qword_27DD44D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44D88);
  }

  return result;
}

void SiriSuggestionsOverridesConfig.SuggestionSignalOverride.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21_0();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D90, &qword_231378DA0);
  OUTLINED_FUNCTION_0_0();
  v33 = v32;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = OUTLINED_FUNCTION_9_17(v28);
  sub_23134DCF8(v37, v38, v39);
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (!v24)
  {
    a14 = 0;
    v40 = sub_23136A810();
    a12 = 1;
    sub_23134DF30(v40, v41, v42);
    sub_23136A820();
    (*(v33 + 8))(v36, v31);
    v43 = a13;
    *v30 = v40;
    *(v30 + 8) = v43;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134DF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FF0;
  if (!qword_280F84FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FF0);
  }

  return result;
}

SiriSuggestions::SiriSuggestionsOverridesConfig::SuggestionStatus_optional __swiftcall SiriSuggestionsOverridesConfig.SuggestionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SiriSuggestionsOverridesConfig.SuggestionStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_23134E084@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsOverridesConfig.SuggestionStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23134E15C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x764F6C616E676973 && a2 == 0xEF73656469727265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23134E204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23134E15C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23134E230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23134E410(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23134E26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23134E410(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsOverridesConfig.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44D98, &qword_231378DA8);
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  v32 = OUTLINED_FUNCTION_9_17(v24);
  sub_23134E410(v32, v33, v34);
  sub_231369EE0();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DA0, &qword_231378DB0);
  v35 = sub_23134E464(&qword_27DD44DA8, sub_23134E4D8);
  OUTLINED_FUNCTION_6_31(v35, v36);

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134E410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85010;
  if (!qword_280F85010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85010);
  }

  return result;
}

uint64_t sub_23134E464(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44DA0, &qword_231378DB0);
    v5 = a2();
    result = OUTLINED_FUNCTION_10_33(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23134E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44DB0;
  if (!qword_27DD44DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DB0);
  }

  return result;
}

void SiriSuggestionsOverridesConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_21_0();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DB8, &qword_231378DB8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_9_17(v12);
  sub_23134E410(v16, v17, v18);
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DA0, &qword_231378DB0);
    v19 = sub_23134E464(&qword_280F7C868, sub_23134E690);
    OUTLINED_FUNCTION_4_32(v19, v20);
    v21 = OUTLINED_FUNCTION_9_31();
    v22(v21);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_23134E690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85018;
  if (!qword_280F85018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85018);
  }

  return result;
}

unint64_t sub_23134E6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44DC0;
  if (!qword_27DD44DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DC0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsOverridesConfig.SuggestionSignalOverride(uint64_t a1, unsigned int a2)
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
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t storeEnumTagSinglePayload for SiriSuggestionsOverridesConfig.SuggestionSignalOverride(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_23134E840(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23134E91C(_BYTE *result, int a2, int a3)
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

unint64_t sub_23134E9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44DC8;
  if (!qword_27DD44DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DC8);
  }

  return result;
}

unint64_t sub_23134EA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44DD0;
  if (!qword_27DD44DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DD0);
  }

  return result;
}

unint64_t sub_23134EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44DD8;
  if (!qword_27DD44DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DD8);
  }

  return result;
}

unint64_t sub_23134EAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85000;
  if (!qword_280F85000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85000);
  }

  return result;
}

unint64_t sub_23134EB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85008;
  if (!qword_280F85008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85008);
  }

  return result;
}

unint64_t sub_23134EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FD8;
  if (!qword_280F84FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FD8);
  }

  return result;
}

unint64_t sub_23134EBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FE0;
  if (!qword_280F84FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FE0);
  }

  return result;
}

unint64_t sub_23134EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85020;
  if (!qword_280F85020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85020);
  }

  return result;
}

unint64_t sub_23134EC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85028;
  if (!qword_280F85028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85028);
  }

  return result;
}

unint64_t sub_23134ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FF8;
  if (!qword_280F84FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FF8);
  }

  return result;
}

uint64_t static Normalizers.identity()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for IdentityNormalizer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for IdentityNormalizer;
  *a1 = result;
  return result;
}

uint64_t sub_23134EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v41 = sub_231369330();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010);
  OUTLINED_FUNCTION_0_0();
  v39 = v13;
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v33 = a4;
    v34 = v4;
    v46 = MEMORY[0x277D84F90];
    sub_2311F5DD0(0, v16, 0);
    v17 = v46;
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v20 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v36 = *(v18 + 56);
    v37 = v19;
    v38 = v18;
    v35 = (v18 - 8);
    v21 = v41;
    do
    {
      v22 = v37;
      v37(v11, v20, v21);
      v23 = &v15[*(v40 + 48)];
      v22(v15, v11, v21);
      v44 = v42;
      v45 = v43;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);
      v24 = sub_231369300();
      MEMORY[0x23192A730](v24);

      MEMORY[0x23192A730](0x666463652ELL, 0xE500000000000000);
      v25 = v44;
      v26 = v45;
      (*v35)(v11, v21);
      *v23 = v25;
      *(v23 + 1) = v26;
      v46 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = OUTLINED_FUNCTION_37(v27);
        sub_2311F5DD0(v29, v28 + 1, 1);
        v17 = v46;
      }

      *(v17 + 16) = v28 + 1;
      sub_231351B54(v15, v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v28);
      v20 += v36;
      --v16;
    }

    while (v16);
    a4 = v33;
  }

  v30 = sub_23127DFEC(v17);
  sub_23134F08C(v30, a4);
}

uint64_t sub_23134F08C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_231369330();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v73 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DE8, &qword_231379560);
  result = sub_23136A770();
  v12 = result;
  v13 = 0;
  v82 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v80 = v5 + 16;
  v83 = v5;
  v88 = v5 + 32;
  v76 = 0x8000000231382290;
  v75 = result + 64;
  v79 = result;
  v78 = v3;
  v77 = v8;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v84 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = v82;
      v26 = *(v82 + 48);
      v27 = v83;
      v28 = *(v83 + 16);
      v86 = *(v83 + 72) * v24;
      v29 = v81;
      v28(v81, v26 + v86, v3);
      v30 = *(v25 + 56);
      v87 = v24;
      v31 = (v30 + 16 * v24);
      v33 = *v31;
      v32 = v31[1];
      v85 = *(v27 + 32);
      v85(v8, v29, v3);
      type metadata accessor for IdentityNormalizer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v35 = objc_opt_self();
      sub_231369EE0();
      result = sub_231353224([v35 bundleForClass_]);
      if (!v36)
      {
        goto LABEL_22;
      }

      *&v90 = v33;
      *(&v90 + 1) = v32;
      v95 = v36;
      v96 = 0xD00000000000001FLL;
      v97 = v76;
      v94 = result;
      sub_231207C1C(result, v36, v37);
      v38 = sub_23136A500();
      v40 = v39;

      v41 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
      v42 = sub_231369FA0();
      v43 = [v41 contentsAtPath_];

      if (!v43)
      {
        break;
      }

      sub_2313666C0();

      v47 = OUTLINED_FUNCTION_9_32();
      sub_23122527C(v47, v48);

      OUTLINED_FUNCTION_9_32();
      v49 = v89;
      sub_2313697E0();
      if (v49)
      {
        v69 = OUTLINED_FUNCTION_9_32();
        sub_231225224(v69, v70);
        v71 = OUTLINED_FUNCTION_9_32();
        sub_231225224(v71, v72);
        goto LABEL_19;
      }

      v51 = v50;
      v89 = 0;
      v52 = OUTLINED_FUNCTION_9_32();
      sub_231225224(v52, v53);
      v54 = sub_231369770();
      sub_231369EE0();
      v55 = sub_231369760();

      v56 = OUTLINED_FUNCTION_9_32();
      sub_231225224(v56, v57);

      v58 = v87;
      *(v75 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v12 = v79;
      v8 = v77;
      v3 = v78;
      result = (v85)(*(v79 + 48) + v86, v77, v78);
      v59 = *(v12 + 56) + 48 * v58;
      *v59 = v55;
      *(v59 + 8) = v91;
      *(v59 + 24) = v54;
      *(v59 + 32) = MEMORY[0x277D60798];
      *(v59 + 40) = v51;
      v60 = *(v12 + 16);
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_21;
      }

      *(v12 + 16) = v62;
      v19 = v84;
      if (!v84)
      {
        goto LABEL_5;
      }
    }

    sub_231351BC4(v44, v45, v46);
    swift_allocError();
    *v68 = v38;
    v68[1] = v40;
    swift_willThrow();
LABEL_19:
    (*(v83 + 8))(v77, v78);
  }

LABEL_5:
  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      v63 = sub_2313697B0();
      v64 = sub_2313697A0();
      v92 = v63;
      v93 = MEMORY[0x277D607B8];
      *&v91 = v64;
      __swift_project_boxed_opaque_existential_1(&v91, v63);
      sub_231369720();
      v65 = type metadata accessor for ScaledECDFNormalizer();
      v66 = swift_allocObject();
      *(v66 + 16) = v12;
      sub_2311D38A8(&v90, v66 + 24);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v91);
      v67 = v74;
      v74[3] = v65;
      v67[4] = &off_2845F7788;
      *v67 = v66;
      return result;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v84 = (v23 - 1) & v23;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t IdentityNormalizer.normalize(candidatesWithScores:interaction:environment:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_14();
  v3 = v0;
  v1 = sub_231369EE0();

  return v3(v1);
}

uint64_t sub_23134F700()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return IdentityNormalizer.normalize(candidatesWithScores:interaction:environment:)();
}

uint64_t dispatch thunk of Normalizer.normalize(candidatesWithScores:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2311DDECC;

  return v13(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for Normalizers(_BYTE *result, int a2, int a3)
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

uint64_t sub_23134F994()
{
  OUTLINED_FUNCTION_8();
  v2 = *v0;
  v1[2] = v3;
  v1[3] = v2;
  v4 = sub_231368FE0();
  v1[4] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[5] = v5;
  v1[6] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23134FA5C()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_23134FAF0(v1, v0[2]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_23134FAF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2311F5B90(0, v4, 0);
    v5 = v17;
    v6 = a2 + 32;
    do
    {
      sub_2313518DC(v6, v15);
      v14[0] = v15[0];
      v14[1] = v15[1];
      v14[2] = v16;
      v7 = *(&v16 + 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v17 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_37(v8);
        sub_2311F5B90(v10, v9 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
      v6 += 48;
      --v4;
    }

    while (v4);
  }

  sub_231367FC0();

  MEMORY[0x28223BE20](v11);
  v13[2] = a1;
  return sub_23132B974(sub_23135194C, v13, a2);
}

double sub_23134FC3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2313518DC(a1, v11);
  sub_2311D38A8(v11, a2);
  v4 = *(a1 + 40);
  sub_231368FD0();
  v6 = v4 - v5;
  sub_231368FC0();
  v8 = v7;
  sub_231368FD0();
  result = v6 / (v8 - v9);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_23134FCE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return sub_23134F994();
}

uint64_t sub_23134FD78(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23134FDA0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = &unk_231379528;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23134FE84;
  v4 = v0[2];

  return (sub_2313125F8)(&unk_231379538, v2, v4);
}

void sub_23134FE84()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {

    v6 = *(v4 + 8);

    v6(v3);
  }
}

uint64_t sub_23134FFB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 136) = a3;
  *(v4 + 128) = a4;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  v5 = sub_2313698C0();
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_231369050();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  *(v4 + 224) = swift_task_alloc();
  v7 = sub_231367F40();
  *(v4 + 232) = v7;
  *(v4 + 240) = *(v7 - 8);
  *(v4 + 248) = swift_task_alloc();
  v8 = sub_231369330();
  *(v4 + 256) = v8;
  *(v4 + 264) = *(v8 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231350200, 0, 0);
}

uint64_t sub_231350200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 224);
  v20 = *(v18 + 120);
  v21 = OUTLINED_FUNCTION_28_0();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_2313682B0();
  v23 = sub_2313676B0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_231228E9C(*(v18 + 224), &qword_27DD432D8, &unk_23136BED0);
LABEL_8:
    v38 = *(v20 + 24);
    v37 = *(v20 + 32);
    __swift_project_boxed_opaque_existential_1(*(v18 + 120), v38);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v18 + 296) = v44;
    *v44 = v45;
    v44[1] = sub_231350AB4;
    v46 = *(v18 + 200);
LABEL_9:

    return MEMORY[0x2821C6E60](v46, v38, v37, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v24 = *(v18 + 224);
  sub_231367680();
  (*(*(v23 - 8) + 8))(v24, v23);
  v25 = OUTLINED_FUNCTION_54_0();
  if (v26(v25) != *MEMORY[0x277D60D38])
  {
    (*(*(v18 + 240) + 8))(*(v18 + 248), *(v18 + 232));
    goto LABEL_8;
  }

  v27 = *(v18 + 280);
  v28 = *(v18 + 256);
  v29 = *(v18 + 264);
  v30 = *(v18 + 248);
  (*(*(v18 + 240) + 96))(v30, *(v18 + 232));
  (*(v29 + 32))(v27, v30, v28);
  sub_2312111B8();
  if (!*(v18 + 88))
  {
    v47 = *(v18 + 120);
    sub_231228E9C(v18 + 64, &qword_27DD44DE0, &qword_231379548);
    v38 = *(v20 + 24);
    v37 = *(v20 + 32);
    __swift_project_boxed_opaque_existential_1(v47, v38);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v18 + 288) = v48;
    *v48 = v49;
    v48[1] = sub_231350618;
    v46 = *(v18 + 216);
    goto LABEL_9;
  }

  v31 = *(v18 + 96);
  *(v18 + 32) = *(v18 + 80);
  *(v18 + 48) = v31;
  *(v18 + 16) = *(v18 + 64);
  __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
  v32 = OUTLINED_FUNCTION_28_0();
  v33(v32);
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_28_0();
    v36(v35);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v18 + 136) + 24), *(*(v18 + 136) + 48));
    v50 = OUTLINED_FUNCTION_54_0();
    v52 = COERCE_DOUBLE(v51(v50));
    v54 = v53;
    v55 = OUTLINED_FUNCTION_28_0();
    v56(v55);
    if ((v54 & 1) == 0)
    {
      v58 = *(v18 + 112);
      sub_2311CF324(*(v18 + 120), v58);
      v59 = *(v18 + 56) * v52;
      sub_231351ADC(v18 + 16);
      *(v58 + 40) = v59;
      goto LABEL_16;
    }
  }

  v57 = *(v18 + 112);
  sub_231351ADC(v18 + 16);
  *v57 = 0u;
  v57[1] = 0u;
  v57[2] = 0u;
LABEL_16:
  OUTLINED_FUNCTION_2_32();

  OUTLINED_FUNCTION_56_0();

  return v60();
}

uint64_t sub_231350618()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2313506FC(uint64_t a1)
{
  v48 = v1;
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[32];
  v5 = v1[33];
  v7 = v1[26];
  v6 = v1[27];
  v8 = v1[22];
  v9 = v1[23];
  sub_2313690F0();
  (*(v5 + 16))(v2, v3, v4);
  (*(v9 + 16))(v7, v6, v8);
  v10 = sub_2313698A0();
  v11 = sub_23136A3B0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[34];
  v14 = v1[35];
  v15 = v1[32];
  v16 = v1[33];
  v17 = v1[26];
  v18 = v1[23];
  v45 = v1[22];
  v46 = v1[27];
  v19 = v1[19];
  v43 = v1[18];
  v44 = v1[21];
  if (v12)
  {
    v40 = v11;
    v20 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v20 = 136315394;
    sub_231351B0C(&qword_280F7C8E0, MEMORY[0x277D61310], MEMORY[0x277D61328]);
    v41 = v15;
    v42 = v14;
    v21 = sub_23136A8B0();
    v22 = v15;
    v24 = v23;
    log = v10;
    v25 = *(v16 + 8);
    v25(v13, v22);
    v26 = sub_2311CFD58(v21, v24, &v47);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    OUTLINED_FUNCTION_3_40();
    sub_231351B0C(v27, v28, MEMORY[0x277D61290]);
    v29 = sub_23136A8B0();
    v31 = v30;
    v32 = *(v18 + 8);
    v32(v17, v45);
    v33 = sub_2311CFD58(v29, v31, &v47);

    *(v20 + 14) = v33;
    _os_log_impl(&dword_2311CB000, log, v40, "No ECDF for channel: %s. Skipping candidate: %s.", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v19 + 8))(v44, v43);
    v32(v46, v45);
    v25(v42, v41);
  }

  else
  {

    v34 = *(v18 + 8);
    v34(v17, v45);
    v35 = *(v16 + 8);
    v35(v13, v15);
    (*(v19 + 8))(v44, v43);
    v34(v46, v45);
    v35(v14, v15);
  }

  v36 = v1[14];
  v36[1] = 0u;
  v36[2] = 0u;
  *v36 = 0u;
  OUTLINED_FUNCTION_2_32();

  OUTLINED_FUNCTION_56_0();

  return v37();
}

uint64_t sub_231350AB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231350B98(uint64_t a1)
{
  v34 = v1;
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[22];
  v5 = v1[23];
  sub_2313690F0();
  (*(v5 + 16))(v2, v3, v4);
  v6 = sub_2313698A0();
  v7 = sub_23136A3B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[24];
  v10 = v1[25];
  v11 = v1[22];
  v12 = v1[23];
  v13 = v1[19];
  v14 = v1[20];
  v15 = v1[18];
  if (v8)
  {
    v32 = v1[20];
    v16 = swift_slowAlloc();
    v31 = v15;
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    OUTLINED_FUNCTION_3_40();
    sub_231351B0C(v18, v19, MEMORY[0x277D61290]);
    v29 = v7;
    v20 = sub_23136A8B0();
    v30 = v10;
    v22 = v21;
    v23 = *(v12 + 8);
    v23(v9, v11);
    v24 = sub_2311CFD58(v20, v22, &v33);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_2311CB000, v6, v29, "ECDF normalizer is called for candidate without channel info: %s. Skipping candidate.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v13 + 8))(v32, v31);
    v23(v30, v11);
  }

  else
  {

    v25 = *(v12 + 8);
    v25(v9, v11);
    (*(v13 + 8))(v14, v15);
    v25(v10, v11);
  }

  v26 = v1[14];
  v26[1] = 0u;
  v26[2] = 0u;
  *v26 = 0u;
  OUTLINED_FUNCTION_2_32();

  OUTLINED_FUNCTION_56_0();

  return v27();
}

uint64_t sub_231350E30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 40);
  v10 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_231275DA4;
  v8.n128_u64[0] = v6;

  return v10(a1, a2, v8);
}

uint64_t sub_231350F68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_23134FD78(a1);
}

uint64_t sub_231351000(double a1)
{
  result = v1;
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_231351024()
{
  OUTLINED_FUNCTION_8();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = sub_2313667A0();
  v1[29] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[30] = v5;
  v1[31] = OUTLINED_FUNCTION_43();
  v6 = sub_231369500();
  v1[32] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[33] = v7;
  v1[34] = OUTLINED_FUNCTION_43();
  v8 = sub_2313698C0();
  v1[35] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[36] = v9;
  v1[37] = OUTLINED_FUNCTION_43();
  v10 = sub_231368FE0();
  v1[38] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[39] = v11;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2313511D0()
{
  v67 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  v65 = v2;
  if (v2)
  {
    v66 = MEMORY[0x277D84F90];
    sub_2311F5B90(0, v2, 0);
    v3 = v66;
    v4 = v1 + 32;
    v5 = v2;
    do
    {
      sub_2313518DC(v4, v0 + 16);
      v6 = *(v0 + 48);
      *(v0 + 80) = *(v0 + 32);
      *(v0 + 96) = v6;
      *(v0 + 64) = *(v0 + 16);
      v7 = *(v0 + 104);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
      v66 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_37(v8);
        sub_2311F5B90(v10, v9 + 1, 1);
        v3 = v66;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v7;
      v4 += 48;
      --v5;
    }

    while (v5);
  }

  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  sub_231367FC0();

  sub_2313690F0();
  v15 = *(v13 + 16);
  v15(v12, v11, v14);
  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 328);
  if (v18)
  {
    v20 = *(v0 + 312);
    v21 = *(v0 + 320);
    v60 = v17;
    v22 = *(v0 + 304);
    v61 = *(v0 + 288);
    v62 = *(v0 + 280);
    v63 = *(v0 + 296);
    v23 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66 = v59;
    *v23 = 136315138;
    v15(v21, v19, v22);
    v24 = sub_23136A010();
    v26 = v25;
    v64 = *(v20 + 8);
    v64(v19, v22);
    v27 = sub_2311CFD58(v24, v26, &v66);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2311CB000, v16, v60, "StochasticNormalizer: computed stats: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v61 + 8))(v63, v62);
  }

  else
  {
    v29 = *(v0 + 304);
    v28 = *(v0 + 312);

    v64 = *(v28 + 8);
    v64(v19, v29);
    v30 = OUTLINED_FUNCTION_54_0();
    v31(v30);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 216), *(*(v0 + 216) + 24));
  sub_2313677C0();
  sub_231367720();
  v32 = OUTLINED_FUNCTION_54_0();
  v33(v32);
  sub_2313694F0();
  v34 = MEMORY[0x277D84F90];
  if (v65)
  {
    v35 = *(v0 + 224);
    v36 = *(v0 + 208);
    v66 = MEMORY[0x277D84F90];
    sub_2311F5B70(0, v65, 0);
    v37 = 0;
    v38 = v36 + 32;
    v34 = v66;
    v39 = *(v35 + 16);
    while (1)
    {
      sub_2313518DC(v38 + 48 * v37, v0 + 160);
      v40 = *(v0 + 200);
      sub_231368FD0();
      v42 = v41;
      sub_231368FC0();
      if (v42 > v43)
      {
        break;
      }

      v44 = v43;
      v45 = v43 - v42;
      if (COERCE__INT64(fabs(v43 - v42)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }

      sub_231351B0C(&qword_280F7C8B8, MEMORY[0x277D613A0], MEMORY[0x277D613A8]);
      do
      {
        v46 = sub_231369F20();
      }

      while ((0x20000000000001 * v46) < 0x1FFFFFFFFFF801);
      v47 = (v46 * 0x20000000000001uLL) >> 64;
      v48 = v42 + v45 * vcvtd_n_f64_u64(v47, 0x35uLL);
      if (v47 == 0x20000000000000)
      {
        v48 = v44;
      }

      v49 = v39 * v40 + (1.0 - v39) * v48;
      sub_2311CF324(v0 + 160, v0 + 112);
      *(v0 + 152) = v49;
      sub_231228E9C(v0 + 160, &qword_27DD434E8, &unk_23136E480);
      v66 = v34;
      v51 = *(v34 + 16);
      v50 = *(v34 + 24);
      if (v51 >= v50 >> 1)
      {
        v55 = OUTLINED_FUNCTION_37(v50);
        sub_2311F5B70(v55, v51 + 1, 1);
        v34 = v66;
      }

      ++v37;
      *(v34 + 16) = v51 + 1;
      v52 = (v34 + 48 * v51);
      v53 = *(v0 + 112);
      v54 = *(v0 + 144);
      v52[3] = *(v0 + 128);
      v52[4] = v54;
      v52[2] = v53;
      if (v37 == v65)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_20:
    v56 = *(v0 + 336);
    v57 = *(v0 + 304);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    v64(v56, v57);

    OUTLINED_FUNCTION_14();

    v58(v34);
  }
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

uint64_t sub_23135179C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2313517DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_231351834()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return sub_231351024();
}

uint64_t sub_2313518DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135196C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_2311D05C8;

  return sub_23134FFB0(v7, v5, v0, v3);
}

uint64_t sub_231351A18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2311D05C8;

  return sub_231350E30(a1, a2, v6);
}

uint64_t sub_231351B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231351B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231351BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44DF0;
  if (!qword_27DD44DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44DF0);
  }

  return result;
}

uint64_t sub_231351C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_23125008C(*(a1 + 16), 0);
  v3 = sub_231253034();
  sub_231369EE0();
  sub_2311D3BBC(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  v5 = v2;
  sub_231255C38(&v5);
  return v5;
}

void DefaultEngagementEstimatorModelProvider.__allocating_init()()
{
  swift_allocObject();
  OUTLINED_FUNCTION_5_34();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  OUTLINED_FUNCTION_4_33();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
}

uint64_t DictModelRepository.__allocating_init(models:)(uint64_t a1)
{
  OUTLINED_FUNCTION_54();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_231351D8C(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 16) + 16) && (sub_231215F6C(a1, a2), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231351DD0()
{
  v0 = sub_231369EE0();
  v1 = sub_231351C30(v0);

  return v1;
}

uint64_t DictModelRepository.__deallocating_deinit()
{

  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

void loadModel(modelFolderPath:modelType:)()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  sub_231369EE0();
  v15 = sub_231369710();
  if (v15 == 2)
  {
    sub_231369100();
    sub_231369EE0();
    v18 = sub_2313698A0();
    v19 = sub_23136A3B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_60();
      v21 = OUTLINED_FUNCTION_29_0();
      v29 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2311CFD58(v3, v1, &v29);
      _os_log_impl(&dword_2311CB000, v18, v19, "Failed to map %s to enum, unable to load", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    v22 = (*(v10 + 8))(v14, v8);
    v25 = sub_231326378(v22, v23, v24);
    OUTLINED_FUNCTION_42_3(&type metadata for EngagementProviderErrors, v25);
    *v26 = 0;
  }

  else
  {
    if (v15)
    {
      [objc_allocWithZone(sub_231369780()) init];
      goto LABEL_8;
    }

    if (v5)
    {
      sub_2313697D0();
      sub_23136A650();
      sub_231369EE0();

      v29 = v7;
      MEMORY[0x23192A730](0xD00000000000001FLL, 0x80000002313822B0);
      sub_2313697C0();

      goto LABEL_8;
    }

    v27 = sub_231326378(v15, v16, v17);
    OUTLINED_FUNCTION_42_3(&type metadata for EngagementProviderErrors, v27);
    *v28 = 1;
  }

  swift_willThrow();
LABEL_8:
  OUTLINED_FUNCTION_22_0();
}

void DefaultEngagementEstimatorModelProvider.init()()
{
  OUTLINED_FUNCTION_5_34();
  v0[2] = v2;
  v0[3] = v1;
  OUTLINED_FUNCTION_4_33();
  v0[4] = v3;
  v0[5] = v4;
}

void DefaultEngagementEstimatorModelProvider.getEngagementEstimatorModels()()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  type metadata accessor for SuggestionsForHelpDefinitionFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_231353224(v13);
  if (v14)
  {
    v15 = v2[3];
    v32[0] = v2[2];
    v32[1] = v15;
    OUTLINED_FUNCTION_5_34();
    sub_231207C1C(v16, v17, v18);
    sub_23136A500();
  }

  else
  {
    sub_231369100();

    v19 = sub_2313698A0();
    v20 = sub_23136A3B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_60();
      v33 = v4;
      v22 = OUTLINED_FUNCTION_29_0();
      v32[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2311CFD58(v2[2], v2[3], v32);
      _os_log_impl(&dword_2311CB000, v19, v20, "Unable to find the SiriSuggestions.framework location. Unable to replace any substitutions in model framework path: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v4 = v33;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v7 + 8))(v11, v5);
    sub_231369EE0();
  }

  loadModel(modelFolderPath:modelType:)();
  if (v1)
  {
  }

  else
  {
    v24 = v23;

    loadModel(modelFolderPath:modelType:)();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44DF8, &qword_2313795E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23136C1C0;
    v28 = v2[5];
    *(inited + 32) = v2[4];
    *(inited + 40) = v28;
    *(inited + 48) = v24;
    strcpy((inited + 56), "identityModel");
    *(inited + 70) = -4864;
    *(inited + 72) = v26;
    sub_231369EE0();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E00, &qword_2313795F0);
    v29 = sub_231369EC0();
    v30 = type metadata accessor for DictModelRepository();
    OUTLINED_FUNCTION_54();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v4[3] = v30;
    v4[4] = &protocol witness table for DictModelRepository;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v4 = v31;
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t DefaultEngagementEstimatorModelProvider.deinit()
{

  return v0;
}

uint64_t DefaultEngagementEstimatorModelProvider.__deallocating_deinit()
{
  DefaultEngagementEstimatorModelProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_231352570()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v69 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v63 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E00, &qword_2313795F0);
  v17 = sub_231369EC0();
  v18 = 0;
  v19 = *(v2 + 16);
  v72 = v2;
  v73 = v19;
  v70 = v12 + 16;
  v71 = v12;
  v67 = v12 + 8;
  v68 = (v4 + 8);
  *&v20 = 136315138;
  v64 = v20;
  v65 = v10;
  v66 = v9;
  v74 = v16;
  while (1)
  {
    if (v73 == v18)
    {
      loadModel(modelFolderPath:modelType:)();
      if (v0)
      {
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v17;
        sub_23125A350();
      }

      goto LABEL_24;
    }

    (*(v71 + 16))(v16, v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v18, v10);
    v79[0] = sub_2313665E0();
    v79[1] = v21;
    v77 = 95;
    v78 = 0xE100000000000000;
    sub_231207C1C(v79[0], v21, v22);
    v23 = sub_23136A4E0();

    if (v23[2] != 2)
    {

      v44 = v63;
      sub_231369100();
      sub_231369EE0();
      v45 = sub_2313698A0();
      v46 = sub_23136A3B0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_60();
        v48 = OUTLINED_FUNCTION_29_0();
        v79[0] = v48;
        *v47 = v64;
        v49 = MEMORY[0x23192A860](v23, MEMORY[0x277D837D0]);
        v51 = v50;

        v52 = sub_2311CFD58(v49, v51, v79);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_2311CB000, v45, v46, "Error separating modelName and modelType, expecting <modelName>_<modelType>, got %s, falling back to using default model", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      else
      {
      }

      v55 = (*v68)(v44, v69);
      v58 = sub_231326378(v55, v56, v57);
      OUTLINED_FUNCTION_42_3(&type metadata for EngagementProviderErrors, v58);
      *v59 = 2;
      swift_willThrow();
      v60 = OUTLINED_FUNCTION_1_46();
      v61(v60);
      goto LABEL_24;
    }

    v75 = v18;
    v24 = v23[4];
    v25 = v23[5];
    v76 = v23[6];
    sub_231369EE0();
    sub_231369EE0();

    sub_231369100();
    sub_231369EE0();
    v26 = sub_2313698A0();
    v27 = sub_23136A3A0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_60();
      v29 = OUTLINED_FUNCTION_29_0();
      v79[0] = v29;
      *v28 = v64;
      *(v28 + 4) = sub_2311CFD58(v24, v25, v79);
      _os_log_impl(&dword_2311CB000, v26, v27, "loading %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v10 = v65;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*v68)(v9, v69);
    sub_231366670();
    loadModel(modelFolderPath:modelType:)();
    if (v0)
    {
      v53 = OUTLINED_FUNCTION_1_46();
      v54(v53);

LABEL_24:
      OUTLINED_FUNCTION_22_0();
      return;
    }

    v31 = v30;

    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v17;
    v32 = sub_231215F6C(v24, v25);
    if (__OFADD__(v17[2], (v33 & 1) == 0))
    {
      break;
    }

    v34 = v32;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E98, &unk_231370AE8);
    if (sub_23136A700())
    {
      v36 = sub_231215F6C(v24, v25);
      v16 = v74;
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    else
    {
      v16 = v74;
    }

    v17 = v79[0];
    if (v35)
    {
      *(*(v79[0] + 56) + 8 * v34) = v31;

      swift_unknownObjectRelease();
    }

    else
    {
      *(v79[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v38 = (v17[6] + 16 * v34);
      *v38 = v24;
      v38[1] = v25;
      *(v17[7] + 8 * v34) = v31;
      v39 = v17[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_27;
      }

      v17[2] = v41;
    }

    v42 = OUTLINED_FUNCTION_1_46();
    v43(v42);
    v18 = v75 + 1;
    v9 = v66;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_23136A970();
  __break(1u);
}

void TrialEngagementEstimatorModelProvider.getEngagementEstimatorModels()()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v66 = v3;
  v74 = *MEMORY[0x277D85DE8];
  sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v68 = v5;
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v67 = v7 - v6;
  v8 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v65 = v12;
  MEMORY[0x28223BE20](v13);
  v64 = &v61 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_231343BB8(v71);
  sub_231369100();
  v18 = sub_2313698A0();
  v19 = sub_23136A3A0();
  if (os_log_type_enabled(v18, v19))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_33(&dword_2311CB000, v20, v21, "fetching EngagementEstimator weights from trial");
    OUTLINED_FUNCTION_29();
  }

  v22 = *(v10 + 8);
  v22(v17, v8);
  v23 = v8;
  v24 = v72;
  v25 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v26 = (*(v25 + 48))(0xD000000000000017, 0x800000023137C220, 0xD000000000000019, 0x800000023137A580, v24, v25);
  static TrialUtils.getDirectoryPath(triLevel:)(v26);
  v28 = v27;

  if (!v1)
  {
    v62 = v23;
    v63 = v22;
    if (v28)
    {
      v29 = [objc_opt_self() defaultManager];
      v30 = v67;
      sub_2313665D0();

      v31 = sub_2313665F0();
      v70 = 0;
      v32 = [v29 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:0 options:0 error:&v70];

      v33 = v70;
      v34 = v63;
      if (v32)
      {
        sub_23136A1A0();
        v35 = v33;

        sub_231352570();
        v54 = v53;

        v55 = type metadata accessor for DictModelRepository();
        OUTLINED_FUNCTION_54();
        v56 = swift_allocObject();
        *(v56 + 16) = v54;
        v57 = v66;
        v66[3] = v55;
        v57[4] = &protocol witness table for DictModelRepository;

        *v57 = v56;
        v58 = OUTLINED_FUNCTION_8_30();
        v60(v58, v59);
      }

      else
      {
        v42 = v70;
        v43 = sub_231366570();

        swift_willThrow();
        v44 = v64;
        sub_231369100();
        v45 = sub_2313698A0();
        LOBYTE(v42) = sub_23136A3B0();
        if (os_log_type_enabled(v45, v42))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_33(&dword_2311CB000, v46, v47, "Estimator model subfolders are empty, falling back to using default model");
          v34 = v63;
          OUTLINED_FUNCTION_29();
        }

        v48 = v34(v44, v62);
        v51 = sub_231326378(v48, v49, v50);
        OUTLINED_FUNCTION_42_3(&type metadata for EngagementProviderErrors, v51);
        *v52 = 2;
        swift_willThrow();

        (*(v68 + 8))(v30, v69);
      }
    }

    else
    {
      v36 = v65;
      sub_231369100();
      v37 = sub_2313698A0();
      v38 = sub_23136A3A0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2311CB000, v37, v38, "User did not set estimator model in trial rollout/experiment, falling back to using default model", v39, 2u);
        OUTLINED_FUNCTION_29();
      }

      v63(v36, v62);
      v40 = v2[10];
      v41 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v40);
      (*(v41 + 8))(v40, v41);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  OUTLINED_FUNCTION_22_0();
}

uint64_t TrialEngagementEstimatorModelProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t TrialEngagementEstimatorModelProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_231353224(void *a1)
{
  v2 = [a1 resourcePath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for EngagementProviderErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2313534E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44E08;
  if (!qword_27DD44E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44E08);
  }

  return result;
}

uint64_t CurrentAppViewActionsGenerator.channel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_channel;
  sub_231369330();
  OUTLINED_FUNCTION_11();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CurrentAppViewActionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[16] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v1[17] = OUTLINED_FUNCTION_43();
  v5 = sub_2313694E0();
  v1[18] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  v1[21] = OUTLINED_FUNCTION_43();
  v7 = sub_231367550();
  v1[22] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_43();
  v9 = sub_2313698C0();
  v1[25] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[26] = v10;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = sub_231367C70();
  v1[34] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[35] = v12;
  v1[36] = OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231353830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  __swift_project_boxed_opaque_existential_1(*(v22 + 96), *(*(v22 + 96) + 24));
  sub_2313677D0();
  v25 = OUTLINED_FUNCTION_28_0();
  v27 = v26(v25);
  v28 = *(v22 + 280);
  v29 = *(v22 + 288);
  v30 = *(v22 + 272);
  if (v27 == *MEMORY[0x277D60AC0])
  {
    (*(v28 + 96))(*(v22 + 288), v30);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v32 = *(sub_2313681A0() - 8);
    v33 = OUTLINED_FUNCTION_27();
    v35 = v34(v33);
    v36 = *MEMORY[0x277D60DB8];
    sub_231368210();
    OUTLINED_FUNCTION_11();
    (*(v37 + 8))(v29 + v31);
    v38 = v32 + 8;
    v39 = OUTLINED_FUNCTION_27();
    v40(v39);
    if (v35 == v36)
    {
      sub_231355ABC(*(v22 + 120) + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_featureFlagProvider, v22 + 56);
      if (*(v22 + 80))
      {
        sub_2311D38A8((v22 + 56), v22 + 16);
        __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
        OUTLINED_FUNCTION_28_0();
        if ((sub_231368430() & 1) == 0)
        {
          sub_231369170();
          v64 = sub_2313698A0();
          v65 = sub_23136A390();
          if (OUTLINED_FUNCTION_43_1(v65))
          {
            OUTLINED_FUNCTION_60();
            v66 = OUTLINED_FUNCTION_14_31();
            a11 = v66;
            *v38 = 136315138;
            v67 = sub_23136AA70();
            v69 = sub_2311CFD58(v67, v68, &a11);

            *(v38 + 4) = v69;
            OUTLINED_FUNCTION_19_1(&dword_2311CB000, v70, v71, "%s will not generate any suggestions because currentAppViewActions flag is off");
            __swift_destroy_boxed_opaque_existential_1Tm(v66);
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_29();
          }

          v72 = OUTLINED_FUNCTION_28_0();
          v73(v72);
          __swift_destroy_boxed_opaque_existential_1Tm((v22 + 16));
          goto LABEL_7;
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v22 + 16));
      }

      else
      {
        sub_2311D1F18(v22 + 56, &qword_27DD44E10, &qword_231379830);
      }

      sub_231369170();
      v52 = sub_2313698A0();
      v53 = sub_23136A3A0();
      v54 = OUTLINED_FUNCTION_43_1(v53);
      v55 = *(v22 + 208);
      if (v54)
      {
        OUTLINED_FUNCTION_60();
        v56 = OUTLINED_FUNCTION_14_31();
        a11 = v56;
        *v38 = 136315138;
        *(v38 + 4) = sub_2311CFD58(0xD00000000000003ELL, 0x8000000231381F20, &a11);
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v57, v58, "Function: %s > Fetching Link Action from the annotated view.");
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_29();
      }

      v59 = *(v55 + 8);
      v60 = OUTLINED_FUNCTION_28_0();
      v59(v60);
      *(v22 + 296) = v59;
      v61 = *(v22 + 120);
      if (*(v61 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID + 8))
      {
        v62 = *(v61 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID);
        v63 = *(v61 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID + 8);
LABEL_20:
        *(v22 + 304) = v62;
        *(v22 + 312) = v63;
        __swift_project_boxed_opaque_existential_1((v61 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService), *(v61 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService + 24));
        swift_bridgeObjectRetain_n();
        v75 = swift_task_alloc();
        *(v22 + 320) = v75;
        *v75 = v22;
        v75[1] = sub_231353DF4;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_7();

        return sub_2313552F4();
      }

      __swift_project_boxed_opaque_existential_1(*(v22 + 104), *(*(v22 + 104) + 24));
      OUTLINED_FUNCTION_28_0();
      sub_2313683A0();
      v74 = sub_23136A1F0();

      if (v74[2])
      {
        v62 = v74[4];
        v63 = v74[5];
        swift_bridgeObjectRetain_n();

        v61 = *(v22 + 120);
        goto LABEL_20;
      }

      sub_231369170();
      v77 = sub_2313698A0();
      v78 = sub_23136A390();
      v79 = OUTLINED_FUNCTION_43_1(v78);
      v80 = *(v22 + 248);
      v81 = *(v22 + 200);
      if (v79)
      {
        OUTLINED_FUNCTION_60();
        v82 = OUTLINED_FUNCTION_14_31();
        a11 = v82;
        *v80 = 136315138;
        v83 = sub_23136AA70();
        v85 = sub_2311CFD58(v83, v84, &a11);

        *(v80 + 4) = v85;
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v86, v87, "%s will not generate any suggestions because salient entities don't contain app in view.");
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_29();
      }

      (v59)(v80, v81);
    }
  }

  else
  {
    (*(v28 + 8))(*(v22 + 288), v30);
  }

LABEL_7:
  OUTLINED_FUNCTION_1_47();
  v88 = v42;
  v89 = v41;

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, v88, v89, a11, a12, a13, a14);
}

uint64_t sub_231353DF4()
{
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9();
  *v5 = v4;
  *(v7 + 328) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231353F38()
{
  v59 = v0;
  result = sub_23125D7A0();
  *(v0 + 336) = result;
  if (!result)
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
      sub_231369170();
      v10 = sub_2313698A0();
      v11 = sub_23136A390();
      v12 = OUTLINED_FUNCTION_23_20(v11);
      v13 = *(v0 + 296);
      v14 = *(v0 + 216);
      v15 = *(v0 + 200);
      if (v12)
      {
        v56 = *(v0 + 296);
        v16 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v16 = 136315394;
        *(v16 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v47, v48, v49, v50, v14, v56);
        *(v16 + 12) = 2080;
        v17 = MEMORY[0x277D84F90];
        sub_231369EE0();
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
        v19 = MEMORY[0x23192A860](v17, v18);
        v21 = v20;

        v22 = sub_2311CFD58(v19, v21, &v58);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_2311CB000, v10, v1, "Function: %s > AppIntent donated from view create these suggestions %s", v16, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_29();

        v57(v52, v15);
      }

      else
      {

        v13(v14, v15);
      }
    }

    else
    {
      sub_231369170();
      v37 = sub_2313698A0();
      v38 = sub_23136A390();
      v39 = OUTLINED_FUNCTION_43_1(v38);
      v40 = *(v0 + 296);
      if (v39)
      {
        OUTLINED_FUNCTION_60();
        v41 = OUTLINED_FUNCTION_14_31();
        v58 = v41;
        *v1 = 136315138;
        *(v1 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v47, v48, v49, v50, v51, v54);
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v42, v43, "Function: %s > No donated AppIntent from the view donated Suggestion AppIntent, no suggestions generated");
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_29();
      }

      v44 = OUTLINED_FUNCTION_28_0();
      v40(v44);
    }

    OUTLINED_FUNCTION_1_47();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  if (result >= 1)
  {
    v3 = *(v0 + 328);
    v4 = *MEMORY[0x277D60948];
    *(v0 + 392) = v4;
    v5 = *MEMORY[0x277D60920];
    *(v0 + 396) = v5;
    v6 = *MEMORY[0x277D61380];
    *(v0 + 400) = v6;
    v7 = *MEMORY[0x277D60B78];
    *(v0 + 404) = *MEMORY[0x277D60B78];
    v8 = MEMORY[0x277D84F90];
    *(v0 + 352) = MEMORY[0x277D84F90];
    *(v0 + 360) = v8;
    *(v0 + 344) = 0;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23192AD10](0);
      v55 = *(v0 + 404);
      v6 = *(v0 + 400);
      v5 = *(v0 + 396);
      v4 = *(v0 + 392);
    }

    else
    {
      v55 = v7;
      v9 = *(v3 + 32);
    }

    *(v0 + 368) = v9;
    v53 = v9;
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    v27 = *(v0 + 152);
    v28 = *(v0 + 136);
    OUTLINED_FUNCTION_28_20(v9, *(v0 + 304));
    OUTLINED_FUNCTION_11();
    (*(v29 + 104))(v24, v4);
    (*(v23 + 104))(v24, v5, v26);
    v30 = sub_231369330();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v30);
    (*(v27 + 104))(v49, v6);
    v31 = sub_231367D80();
    OUTLINED_FUNCTION_11();
    (*(v32 + 104))(v28, v55, v31);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v31);
    sub_231369EE0();
    v33 = v53;
    v34 = swift_task_alloc();
    *(v0 + 376) = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_2_33(v34);
    OUTLINED_FUNCTION_31();

    __asm { BR              X4 }
  }

  __break(1u);
  return result;
}

uint64_t sub_231354434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  sub_231369170();
  sub_231369EE0();
  v25 = sub_2313698A0();
  v26 = sub_23136A3B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v22[39];
  if (v27)
  {
    v29 = v22[38];
    v50 = v22[37];
    v30 = OUTLINED_FUNCTION_60();
    v31 = OUTLINED_FUNCTION_29_0();
    a11 = v31;
    *v30 = 136315138;
    v32 = sub_2311CFD58(v29, v28, &a11);

    *(v30 + 4) = v32;
    OUTLINED_FUNCTION_13_25(&dword_2311CB000, v33, v34, "Could not call LNConnection function fetchSuggestedActionsFromView in app: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    v35 = OUTLINED_FUNCTION_28_0();
    v50(v35);
  }

  else
  {
    v36 = v22[37];

    v37 = OUTLINED_FUNCTION_28_0();
    v36(v37);
  }

  OUTLINED_FUNCTION_1_47();
  v49 = v39;
  v51 = v38;

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, v49, v51, a11, a12, a13, a14);
}

uint64_t sub_231354600()
{
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = v3[21];
  v5 = v3[20];
  v6 = v3[19];
  v7 = v3[18];
  v8 = v3[17];
  v9 = *v0;
  OUTLINED_FUNCTION_9();
  *v10 = v9;
  *(v12 + 384) = v11;

  sub_2311D1F18(v8, &qword_27DD42F18, &unk_23136B810);
  (*(v6 + 8))(v5, v7);
  sub_2311D1F18(v4, &qword_27DD43F00, &unk_231375F50);
  v13 = OUTLINED_FUNCTION_27();
  v14(v13);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_23135480C(uint64_t result)
{
  v97 = v1;
  v2 = *(v1 + 384);
  v3 = swift_dynamicCast;
  if (!v2)
  {
    v14 = *(v1 + 368);
    sub_231369170();
    v15 = v14;
    v16 = sub_2313698A0();
    v17 = sub_23136A3B0();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v1 + 368);
    v20 = *(v1 + 296);
    v21 = *(v1 + 232);
    v22 = *(v1 + 200);
    if (v18)
    {
      v92 = *(v1 + 296);
      v23 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_2311CFD58(0xD00000000000003ELL, 0x8000000231381F20, &v96);
      *(v23 + 12) = 2080;
      v89 = v22;
      v24 = [v19 description];
      v88 = v21;
      v25 = sub_231369FD0();
      v27 = v26;

      v28 = sub_2311CFD58(v25, v27, &v96);

      *(v23 + 14) = v28;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
      swift_arrayDestroy();
      v3 = swift_dynamicCast;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v92(v21, v89);
    }

    else
    {

      v20(v21, v22);
    }

    v8 = *(v1 + 352);
    v34 = *(v1 + 360);
LABEL_17:
    v35 = *(v1 + 344) + 1;
    if (v35 == *(v1 + 336))
    {

      if (*(v34 + 16))
      {
        sub_231369170();
        v36 = sub_2313698A0();
        v37 = sub_23136A390();
        v38 = OUTLINED_FUNCTION_23_20(v37);
        v39 = *(v1 + 296);
        v93 = *(v1 + 216);
        v40 = *(v1 + 200);
        if (v38)
        {
          v41 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v41 = *(v3 + 209);
          *(v41 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v86, v87, v88, v39, v93, v8);
          *(v41 + 12) = 2080;
          sub_231369EE0();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
          v43 = MEMORY[0x23192A860](v8, v42);
          v45 = v44;

          v46 = sub_2311CFD58(v43, v45, &v96);

          *(v41 + 14) = v46;
          OUTLINED_FUNCTION_25();
          _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_15();

          v90(v94, v40);
        }

        else
        {

          v39(v93, v40);
        }
      }

      else
      {
        sub_231369170();
        v54 = sub_2313698A0();
        v55 = sub_23136A390();
        v56 = OUTLINED_FUNCTION_23_20(v55);
        v57 = *(v1 + 296);
        v58 = *(v1 + 224);
        v59 = *(v1 + 200);
        if (v56)
        {
          v60 = OUTLINED_FUNCTION_60();
          v61 = OUTLINED_FUNCTION_29_0();
          v96 = v61;
          *v60 = 136315138;
          *(v60 + 4) = OUTLINED_FUNCTION_7_29("spaceUpdateProtocol>8", v86, v87, v88, v89, v92, v8);
          OUTLINED_FUNCTION_25();
          _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_15();
        }

        v57(v58, v59);
      }

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X2, X16 }
    }

    *(v1 + 352) = v8;
    *(v1 + 360) = v34;
    *(v1 + 344) = v35;
    v52 = *(v1 + 328);
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x23192AD10]();
    }

    else
    {
      v53 = *(v52 + 8 * v35 + 32);
    }

    v67 = v53;
    *(v1 + 368) = v53;
    v95 = *(v1 + 404);
    v91 = *(v1 + 400);
    v68 = *(v1 + 396);
    v69 = *(v1 + 392);
    v70 = *(v1 + 184);
    v71 = *(v1 + 192);
    v72 = *(v1 + 168);
    v73 = *(v1 + 176);
    v74 = *(v1 + 152);
    v75 = *(v1 + 136);
    OUTLINED_FUNCTION_28_20(v53, *(v1 + 304));
    OUTLINED_FUNCTION_11();
    (*(v76 + 104))(v71, v69);
    (*(v70 + 104))(v71, v68, v73);
    v77 = sub_231369330();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v77);
    (*(v74 + 104))(v88, v91);
    v78 = sub_231367D80();
    OUTLINED_FUNCTION_11();
    (*(v79 + 104))(v75, v95, v78);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v78);
    sub_231369EE0();
    v80 = v67;
    v81 = swift_task_alloc();
    *(v1 + 376) = v81;
    *v81 = v1;
    OUTLINED_FUNCTION_2_33(v81);
    OUTLINED_FUNCTION_31();

    __asm { BR              X4 }
  }

  v4 = *(v2 + 16);
  v5 = *(*(v1 + 360) + 16);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 360);
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v8 + 24) >> 1, v9 < v6))
  {
    sub_23126DF64(isUniquelyReferenced_nonNull_native);
    v8 = v10;
    v9 = *(v10 + 24) >> 1;
  }

  if (!*(v2 + 16))
  {

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (v9 - *(v8 + 16) < v4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:

    v34 = v8;
    goto LABEL_17;
  }

  v11 = *(v8 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v8 + 16) = v13;
    goto LABEL_14;
  }

LABEL_37:
  __break(1u);
}

uint64_t CurrentAppViewActionsGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_channel;
  sub_231369330();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  sub_2311D1F18(v0 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_featureFlagProvider, &qword_27DD44E10, &qword_231379830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService));

  return v0;
}

uint64_t CurrentAppViewActionsGenerator.__deallocating_deinit()
{
  CurrentAppViewActionsGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23135506C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23135511C;

  return CurrentAppViewActionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

uint64_t sub_23135511C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_9();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_23135520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_231355EF0(&qword_280F7E558, &protocol conformance descriptor for CurrentAppViewActionsGenerator);
  *v9 = v4;
  v9[1] = sub_231355F94;

  return MEMORY[0x2821C6C08](a1, a2, a3, a4, v10);
}

uint64_t sub_2313552F4()
{
  OUTLINED_FUNCTION_8();
  v0[20] = v1;
  v0[21] = v2;
  v3 = sub_2313698C0();
  v0[22] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[23] = v4;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2313553DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v42 = *MEMORY[0x277D85DE8];
  v15 = objc_opt_self();
  v16 = sub_231369FA0();
  v17 = [v15 policyWithBundleIdentifier_];

  v14[18] = 0;
  v18 = [v17 connectionWithError_];
  v14[26] = v18;

  v19 = v14[18];
  if (v18)
  {
    v14[2] = v14;
    v14[7] = v14 + 19;
    v14[3] = sub_2313556D8;
    v20 = swift_continuation_init();
    v14[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E18, &qword_2313799D8);
    v14[10] = MEMORY[0x277D85DD0];
    v14[11] = 1107296256;
    v14[12] = sub_231355A24;
    v14[13] = &block_descriptor_4;
    v14[14] = v20;
    v21 = v19;
    [v18 fetchSuggestedActionsFromViewWithCompletionHandler_];
    OUTLINED_FUNCTION_7();

    return MEMORY[0x282200938](v22);
  }

  else
  {
    v24 = v19;
    v25 = sub_231366570();

    swift_willThrow();
    sub_231369170();
    sub_231369EE0();
    v26 = sub_2313698A0();
    LOBYTE(v24) = sub_23136A3B0();

    if (os_log_type_enabled(v26, v24))
    {
      v27 = OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_29_0();
      *(v27 + 4) = OUTLINED_FUNCTION_27_16(4.8149e-34, a10, v28);
      OUTLINED_FUNCTION_13_25(&dword_2311CB000, v29, v30, "Could not open connection to app: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(a10);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
    }

    v31 = OUTLINED_FUNCTION_28_0();
    v32(v31);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, v42, a12, a13, a14);
  }
}

uint64_t sub_2313556D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231355808()
{
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_14();

  return v2(v1);
}

uint64_t sub_2313558B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v33 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 216);
  swift_willThrow();

  sub_231369170();
  sub_231369EE0();
  v16 = sub_2313698A0();
  v17 = sub_23136A3B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_60();
    a10 = OUTLINED_FUNCTION_29_0();
    *(v18 + 4) = OUTLINED_FUNCTION_27_16(4.8149e-34, a10, v19);
    OUTLINED_FUNCTION_13_25(&dword_2311CB000, v20, v21, "Could not call LNConnection function fetchSuggestedActionsFromView in app: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();
  }

  v22 = OUTLINED_FUNCTION_28_0();
  v23(v22);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v33, a12, a13, a14);
}

uint64_t sub_231355A24(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_2311FA174();
  }

  else
  {
    sub_231355F50();
    sub_23136A1A0();

    return sub_2311FA178();
  }
}

uint64_t sub_231355ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E10, &qword_231379830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CurrentAppViewActionsGenerator(uint64_t a1)
{
  result = qword_280F7E538;
  if (!qword_280F7E538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231355BE8(uint64_t a1)
{
  result = sub_231369330();
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

uint64_t sub_231355CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231355DDC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_231355DDC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_9();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_231355EF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrentAppViewActionsGenerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231355F50()
{
  result = qword_27DD44E20;
  if (!qword_27DD44E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD44E20);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_7_29@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_2311CFD58(0xD00000000000003ELL, a1 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_13_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_23_20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = v3;

  return sub_231367560();
}

uint64_t sub_231356014()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_231367490();
  v1[13] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[14] = v4;
  v1[15] = OUTLINED_FUNCTION_43();
  v5 = sub_2313698C0();
  v1[16] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[17] = v6;
  v1[18] = OUTLINED_FUNCTION_43();
  v7 = sub_231369D00();
  v1[19] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v9);
  v1[22] = OUTLINED_FUNCTION_67();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231356194(uint64_t a1)
{
  v2 = sub_231367440();
  *(v1 + 200) = v2;
  *(v1 + 264) = *(v2 + 32);
  OUTLINED_FUNCTION_20_24();
  v5 = MEMORY[0x277D84F98];
  *(v1 + 208) = MEMORY[0x277D84F98];
  *(v1 + 216) = v5;
  v8 = v7 & v6;
  if (v8)
  {
    v9 = 0;
LABEL_6:
    *(v1 + 224) = v8;
    *(v1 + 232) = v9;
    v12 = __clz(__rbit64(v8)) | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    *(v1 + 240) = *v13;
    v14 = v13[1];
    *(v1 + 248) = v14;
    sub_23123EA8C(*(v3 + 56) + 32 * v12, v1 + 16, &qword_27DD443C0, &unk_23136E000);
    v21 = *(v1 + 32);
    v22 = *(v1 + 16);
    sub_231369EE0();
    if (v14)
    {
      *(v1 + 64) = v21;
      *(v1 + 48) = v22;
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v1 + 256) = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_3_41(v15);

      return sub_23135842C();
    }
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v4) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v3 + 8 * v10++ + 72);
      if (v8)
      {
        goto LABEL_6;
      }
    }
  }

  sub_23134A858();
  v19 = v18;

  OUTLINED_FUNCTION_14();

  return v20(v19);
}

uint64_t sub_2313563AC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231356490()
{
  v82 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  sub_23123EA8C(*(v0 + 192), v1, &qword_27DD43358, &qword_23136FA90);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(*(v0 + 184), &qword_27DD43358, &qword_23136FA90);
    v6 = sub_231215F6C(v4, v5);
    if (v7)
    {
      v8 = v6;
      v9 = *(v0 + 208);
      v10 = *(v0 + 176);
      v11 = *(v0 + 152);
      v12 = *(v0 + 160);
      swift_isUniquelyReferenced_nonNull_native();
      v81 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B98, &qword_231378750);
      sub_23136A700();
      v13 = v9;

      (*(v12 + 32))(v10, *(v9 + 56) + *(v12 + 72) * v8, v11);
      sub_23136A720();
      v14 = 0;
      v15 = v9;
    }

    else
    {
      v13 = *(v0 + 208);
      v15 = *(v0 + 216);
      v14 = 1;
    }

    v25 = *(v0 + 176);
    __swift_storeEnumTagSinglePayload(v25, v14, 1, *(v0 + 152));
    sub_2311D1F18(v25, &qword_27DD43358, &qword_23136FA90);
  }

  else
  {
    v16 = *(v0 + 208);
    v17 = *(*(v0 + 160) + 32);
    v17(*(v0 + 168), *(v0 + 184), *(v0 + 152));
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v16;
    result = sub_231215F6C(v4, v5);
    if (__OFADD__(*(v16 + 16), (v19 & 1) == 0))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v20 = result;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44B98, &qword_231378750);
    if (sub_23136A700())
    {
      v22 = sub_231215F6C(*(v0 + 240), *(v0 + 248));
      if ((v21 & 1) != (v23 & 1))
      {
        OUTLINED_FUNCTION_47();

        return sub_23136A970();
      }

      v20 = v22;
    }

    v13 = *(v0 + 80);
    if (v21)
    {
      (*(*(v0 + 160) + 40))(v13[7] + *(*(v0 + 160) + 72) * v20, *(v0 + 168), *(v0 + 152));
    }

    else
    {
      v27 = *(v0 + 240);
      v26 = *(v0 + 248);
      v29 = *(v0 + 160);
      v28 = *(v0 + 168);
      v30 = *(v0 + 152);
      v13[(v20 >> 6) + 8] |= 1 << v20;
      v31 = (v13[6] + 16 * v20);
      *v31 = v27;
      v31[1] = v26;
      result = v17(v13[7] + *(v29 + 72) * v20, v28, v30);
      v32 = v13[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
LABEL_45:
        __break(1u);
        return result;
      }

      v13[2] = v34;
      sub_231369EE0();
    }

    v15 = v13;
  }

  if (*(v0 + 72) && __swift_getEnumTagSinglePayload(*(v0 + 192), 1, *(v0 + 152)) == 1)
  {
    v36 = *(v0 + 112);
    v35 = *(v0 + 120);
    v38 = *(v0 + 96);
    v37 = *(v0 + 104);
    sub_231369130();
    (*(v36 + 16))(v35, v38, v37);
    sub_231369EE0();
    v39 = sub_2313698A0();
    v40 = sub_23136A3B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 248);
    if (v41)
    {
      v79 = *(v0 + 144);
      v76 = *(v0 + 136);
      v77 = *(v0 + 128);
      v75 = v40;
      v44 = *(v0 + 112);
      v43 = *(v0 + 120);
      v73 = *(v0 + 104);
      v74 = *(v0 + 240);
      v45 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v45 = 136315650;
      v46 = sub_231367470();
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0x3E6C696E3CLL;
      }

      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0xE500000000000000;
      }

      (*(v44 + 8))(v43, v73);
      v50 = sub_2311CFD58(v48, v49, &v81);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      v51 = sub_2311CFD58(v74, v42, &v81);

      *(v45 + 14) = v51;
      *(v45 + 22) = 2080;
      *(v45 + 24) = sub_2311CFD58(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v81);
      _os_log_impl(&dword_2311CB000, v39, v75, "Unable to convert IntentQuery's parameter value to TypedValue instance on toolId: %s | paramKey: %s | paramValue type: %s", v45, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v76 + 8))(v79, v77);
    }

    else
    {
      v67 = *(v0 + 136);
      v66 = *(v0 + 144);
      v69 = *(v0 + 120);
      v68 = *(v0 + 128);
      v70 = v39;
      v72 = *(v0 + 104);
      v71 = *(v0 + 112);

      (*(v71 + 8))(v69, v72);
      (*(v67 + 8))(v66, v68);
    }
  }

  else
  {
  }

  v52 = *(v0 + 192);
  sub_2311D1F18(v0 + 48, &qword_27DD443C0, &unk_23136E000);
  result = sub_2311D1F18(v52, &qword_27DD43358, &qword_23136FA90);
  v54 = *(v0 + 224);
  v53 = *(v0 + 232);
  *(v0 + 208) = v13;
  *(v0 + 216) = v15;
  v55 = (v54 - 1) & v54;
  if (!v55)
  {
    while (1)
    {
      v57 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v57 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        goto LABEL_39;
      }

      v56 = *(v0 + 200);
      v55 = *(v56 + 8 * v57 + 64);
      ++v53;
      if (v55)
      {
        v53 = v57;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v56 = *(v0 + 200);
LABEL_35:
  *(v0 + 224) = v55;
  *(v0 + 232) = v53;
  v58 = __clz(__rbit64(v55)) | (v53 << 6);
  v59 = (*(v56 + 48) + 16 * v58);
  *(v0 + 240) = *v59;
  v60 = v59[1];
  *(v0 + 248) = v60;
  sub_23123EA8C(*(v56 + 56) + 32 * v58, v0 + 16, &qword_27DD443C0, &unk_23136E000);
  v78 = *(v0 + 16);
  v80 = *(v0 + 32);
  sub_231369EE0();
  if (!v60)
  {
LABEL_39:

    sub_23134A858();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 48) = v78;
  *(v0 + 64) = v80;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 256) = v61;
  *v61 = v62;
  OUTLINED_FUNCTION_3_41(v61);
  OUTLINED_FUNCTION_47();

  return sub_23135842C();
}

uint64_t sub_231356BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_231369D00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43390, &qword_23136C330);
  MEMORY[0x28223BE20](v69);
  v59 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v71 = &v57 - v10;
  MEMORY[0x28223BE20](v11);
  v66 = &v57 - v12;
  v60 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v61 = (v6 + 8);
  v62 = (v6 + 32);
  v70 = a1;
  result = sub_231369EE0();
  v19 = 0;
  v64 = a1 + 64;
  v65 = v17;
  v67 = v5;
  if (v16)
  {
    while (1)
    {
      v20 = v4;
LABEL_10:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v69;
      v25 = (*(v70 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = v66;
      sub_23123EA8C(*(v70 + 56) + *(v68 + 72) * v23, &v66[*(v69 + 48)], &qword_27DD43358, &qword_23136FA90);
      *v28 = v27;
      v28[1] = v26;
      v29 = v71;
      sub_23123E9F8(v28, v71, &qword_27DD43390, &qword_23136C330);
      v30 = v29 + *(v24 + 48);
      v4 = v20;
      sub_23123EA8C(v30, v20, &qword_27DD43358, &qword_23136FA90);
      v31 = v20;
      v32 = v67;
      if (__swift_getEnumTagSinglePayload(v31, 1, v67) == 1)
      {
        break;
      }

      v33 = v63;
      (*v62)(v63, v4, v32);
      sub_231369EE0();
      sub_2312BC3E0();
      v35 = v34;
      v37 = v36;
      (*v61)(v33, v32);
      v17 = v65;
      if (!v37)
      {
        goto LABEL_13;
      }

      sub_23123E9F8(v71, v59, &qword_27DD43390, &qword_23136C330);
      if (v60[3] <= v60[2])
      {
        sub_2312B639C();
      }

      v41 = v72;
      v42 = *v59;
      v58 = v59[1];
      sub_23136A9D0();
      v57 = v42;
      sub_23136A060();
      result = sub_23136AA00();
      v43 = v41 + 64;
      v60 = v41;
      v44 = -1 << *(v41 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v41 + 64 + 8 * (v45 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v44) >> 6;
        while (++v46 != v49 || (v48 & 1) == 0)
        {
          v50 = v46 == v49;
          if (v46 == v49)
          {
            v46 = 0;
          }

          v48 |= v50;
          v51 = *(v43 + 8 * v46);
          if (v51 != -1)
          {
            v47 = __clz(__rbit64(~v51)) + (v46 << 6);
            goto LABEL_27;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v47 = __clz(__rbit64((-1 << v45) & ~*(v41 + 64 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      v52 = *(v69 + 48);
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v53 = v60;
      v54 = (v60[6] + 16 * v47);
      v55 = v58;
      *v54 = v57;
      v54[1] = v55;
      v56 = (v53[7] + 16 * v47);
      *v56 = v35;
      v56[1] = v37;
      ++v53[2];
      v38 = v59 + v52;
      v39 = &qword_27DD43358;
      v40 = &qword_23136FA90;
LABEL_14:
      result = sub_2311D1F18(v38, v39, v40);
      v13 = v64;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    sub_231369EE0();
    sub_2311D1F18(v4, &qword_27DD43358, &qword_23136FA90);
    v17 = v65;
LABEL_13:
    v38 = v71;
    v39 = &qword_27DD43390;
    v40 = &qword_23136C330;
    goto LABEL_14;
  }

  while (1)
  {
LABEL_6:
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v21 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v20 = v4;
      v19 = v21;
      goto LABEL_10;
    }
  }

  return v60;
}

uint64_t sub_231357148(uint64_t a1)
{
  v78 = sub_2313698C0();
  v2 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_231369D00();
  v4 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231369D60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v89 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44630, qword_231374C28);
  MEMORY[0x28223BE20](v87);
  v68[0] = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = v68 - v11;
  MEMORY[0x28223BE20](v12);
  v85 = v68 - v13;
  v70 = MEMORY[0x277D84F98];
  v94 = MEMORY[0x277D84F98];
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v83 = v7 + 88;
  v84 = v7 + 16;
  v82 = *MEMORY[0x277D72E38];
  v74 = (v2 + 8);
  v79 = (v7 + 8);
  v86 = v7;
  v73 = (v7 + 96);
  v72 = (v4 + 32);
  v71 = (v4 + 8);
  v88 = a1;
  result = sub_231369EE0();
  v20 = 0;
  *&v21 = 136315138;
  v69 = v21;
  v92 = v6;
  v81 = a1 + 64;
  v80 = v18;
  if (v17)
  {
LABEL_9:
    while (1)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v87;
      v26 = *(v88 + 56);
      v27 = (*(v88 + 48) + 16 * v24);
      v28 = v27[1];
      v90 = *v27;
      v30 = v85;
      v29 = v86;
      v31 = *(v86 + 16);
      v32 = v92;
      v31(&v85[*(v87 + 48)], v26 + *(v86 + 72) * v24, v92);
      *v30 = v90;
      v30[1] = v28;
      v90 = v28;
      v33 = v91;
      sub_23123E9F8(v30, v91, &qword_27DD44630, qword_231374C28);
      v34 = v33 + *(v25 + 48);
      v35 = v89;
      v31(v89, v34, v32);
      v36 = (*(v29 + 88))(v35, v32);
      if (v36 != v82)
      {
        break;
      }

      (*v73)(v35, v92);
      v37 = v75;
      v38 = v35;
      v39 = v76;
      (*v72)(v75, v38, v76);
      sub_231369EE0();
      sub_2312BC3E0();
      v41 = v40;
      v43 = v42;
      (*v71)(v37, v39);
      if (!v43)
      {
        goto LABEL_18;
      }

      sub_23123E9F8(v91, v68[0], &qword_27DD44630, qword_231374C28);
      if (v70[3] <= v70[2])
      {
        sub_2312B639C();
      }

      v44 = v94;
      v45 = *v68[0];
      v46 = *(v68[0] + 8);
      sub_23136A9D0();
      sub_23136A060();
      result = sub_23136AA00();
      v47 = v44 + 64;
      v70 = v44;
      v48 = -1 << *(v44 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v44 + 64 + 8 * (v49 >> 6))) == 0)
      {
        v60 = 0;
        v61 = (63 - v48) >> 6;
        while (++v50 != v61 || (v60 & 1) == 0)
        {
          v62 = v50 == v61;
          if (v50 == v61)
          {
            v50 = 0;
          }

          v60 |= v62;
          v63 = *(v47 + 8 * v50);
          if (v63 != -1)
          {
            v51 = __clz(__rbit64(~v63)) + (v50 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v51 = __clz(__rbit64((-1 << v49) & ~*(v44 + 64 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v64 = *(v87 + 48);
      *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v65 = v70;
      v66 = (v70[6] + 16 * v51);
      *v66 = v45;
      v66[1] = v46;
      v67 = (v65[7] + 16 * v51);
      *v67 = v41;
      v67[1] = v43;
      ++v65[2];
      result = (*v79)(v68[0] + v64, v92);
LABEL_19:
      v14 = v81;
      v18 = v80;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    sub_231369EE0();
    v52 = v77;
    sub_231369130();
    v53 = sub_2313698A0();
    v54 = sub_23136A3A0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v93[0] = v56;
      *v55 = v69;
      v93[9] = &type metadata for ToolKitUtils;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44620, &qword_231374C18);
      v57 = sub_23136A010();
      v59 = sub_2311CFD58(v57, v58, v93);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2311CB000, v53, v54, "displayStringForConcreteResolvable(): not handling for case: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x23192B930](v56, -1, -1);
      MEMORY[0x23192B930](v55, -1, -1);
    }

    (*v74)(v52, v78);
    (*v79)(v89, v92);
LABEL_18:
    result = sub_2311D1F18(v91, &qword_27DD44630, qword_231374C28);
    goto LABEL_19;
  }

LABEL_5:
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {

      return v70;
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231357934()
{
  OUTLINED_FUNCTION_8();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_231369D90();
  v1[12] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[13] = v4;
  v1[14] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v5);
  v1[15] = OUTLINED_FUNCTION_43();
  v6 = sub_231367960();
  v1[16] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_43();
  v8 = sub_2313673A0();
  v1[19] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_43();
  v10 = sub_231369990();
  v1[22] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[23] = v11;
  v1[24] = OUTLINED_FUNCTION_67();
  v1[25] = swift_task_alloc();
  v12 = sub_231369A00();
  v1[26] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[27] = v13;
  v1[28] = OUTLINED_FUNCTION_67();
  v1[29] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231357B4C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v52 = v0[19];
  sub_2313699B0();
  sub_231369980();
  v4 = *(v1 + 8);
  v0[30] = v4;
  v0[31] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_54_0();
  v4(v5);
  sub_2313699B0();
  v50 = sub_231369970();
  v51 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_54_0();
  v4(v8);
  sub_231367430();
  v9 = (*(v3 + 88))(v2, v52);
  if (v9 == *MEMORY[0x277D60878])
  {
    v10 = v0[21];
    (*(v0[20] + 96))(v10, v0[19]);
    if (!*(v10 + 8))
    {
      goto LABEL_21;
    }

    v11 = v0[28];
    v12 = v0[26];
    v13 = v0[27];

    v14 = MEMORY[0x277D723F0];
  }

  else
  {
    v15 = v0[21];
    if (v9 != *MEMORY[0x277D60868])
    {

      v27 = OUTLINED_FUNCTION_67_0();
      v28(v27);
      goto LABEL_17;
    }

    v16 = OUTLINED_FUNCTION_67_0();
    v17(v16);
    if (!*(v15 + 8))
    {
      goto LABEL_21;
    }

    v11 = v0[28];
    v12 = v0[26];
    v13 = v0[27];

    v14 = MEMORY[0x277D723E8];
  }

  (*(v13 + 104))(v11, *v14, v12);
  v18 = OUTLINED_FUNCTION_67_0();
  v20 = sub_2313122BC(v18, v19);
  v21 = OUTLINED_FUNCTION_54_0();
  v22(v21);
  if ((v20 & 1) == 0 || (v23 = sub_231367470(), !v24))
  {

    goto LABEL_17;
  }

  if (v50 != v23 || v24 != v7)
  {
    v26 = sub_23136A900();

    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:

LABEL_22:
  v32 = v0[15];
  v31 = v0[16];
  sub_231367450();
  if (__swift_getEnumTagSinglePayload(v32, 1, v31) == 1)
  {
    sub_2311D1F18(v0[15], &qword_27DD43F08, &qword_231370CD0);
LABEL_31:
    sub_2313699B0();
    v49 = swift_task_alloc();
    v0[32] = v49;
    *v49 = v0;
    v49[1] = sub_231358020;

    return sub_231356014();
  }

  v34 = v0[13];
  v33 = v0[14];
  v35 = v0[12];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  v36 = sub_231367930();
  v38 = v37;
  sub_2313699B0();
  sub_231369930();
  v39 = OUTLINED_FUNCTION_54_0();
  v51(v39);
  v40 = sub_231369D70();
  v42 = v41;
  (*(v34 + 8))(v33, v35);
  if (v36 == v40 && v38 == v42)
  {

    v47 = OUTLINED_FUNCTION_67_0();
    v48(v47);
    goto LABEL_31;
  }

  v44 = sub_23136A900();

  v45 = OUTLINED_FUNCTION_67_0();
  v46(v45);
  if (v44)
  {
    goto LABEL_31;
  }

LABEL_17:
  (*(v0[27] + 8))(v0[29], v0[26]);

  OUTLINED_FUNCTION_14();

  return v29(0);
}

uint64_t sub_231358020()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[30];
  v3 = v1[25];
  v4 = v1[22];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 264) = v7;

  v2(v3, v4);
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_231358174()
{
  v1 = sub_231356BBC(*(v0 + 264));

  v2 = sub_2313699D0();
  v3 = sub_231357148(v2);

  v4 = 0;
  v5 = v3 + 64;
  OUTLINED_FUNCTION_20_24();
  v8 = v7 & v6;
  v10 = (63 - v9) >> 6;
  v29 = v3;
  while (v8)
  {
LABEL_7:
    v12 = __clz(__rbit64(v8)) | (v4 << 6);
    v13 = (*(v3 + 56) + 16 * v12);
    v14 = v13[1];
    v30 = *v13;
    if (*(v1 + 16))
    {
      v15 = (*(v3 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];
      sub_231369EE0();
      sub_231369EE0();
      v18 = sub_231215F6C(v16, v17);
      v19 = v1;
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        v23 = 0;
        v24 = 0;
        v1 = v19;
        v3 = v29;
        goto LABEL_13;
      }

      v22 = (*(v19 + 56) + 16 * v18);
      v23 = *v22;
      v24 = v22[1];
      v1 = v19;
      v3 = v29;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    sub_231369EE0();
LABEL_13:
    v25 = MEMORY[0x277D837D0];
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v30;
    *(v0 + 24) = v14;
    if (v24)
    {
      *(v0 + 72) = v25;
      *(v0 + 48) = v23;
      *(v0 + 56) = v24;
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v8 &= v8 - 1;
    v26 = sub_231369470();
    sub_2311D1F18(v0 + 48, &qword_27DD443C0, &unk_23136E000);
    sub_2311D1F18(v0 + 16, &qword_27DD443C0, &unk_23136E000);
    if ((v26 & 1) == 0)
    {

      v27 = 0;
LABEL_19:

      (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));

      OUTLINED_FUNCTION_14();

      v28(v27);
      return;
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      v27 = 1;
      goto LABEL_19;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_23135842C()
{
  OUTLINED_FUNCTION_8();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = sub_231369D90();
  v1[25] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[26] = v6;
  v1[27] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v7);
  v1[28] = OUTLINED_FUNCTION_43();
  v8 = sub_231369D00();
  v1[29] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[30] = v9;
  v1[31] = OUTLINED_FUNCTION_67();
  v1[32] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E28, &qword_2313799F8);
  OUTLINED_FUNCTION_40_0(v10);
  v1[33] = OUTLINED_FUNCTION_43();
  v11 = sub_231369D60();
  v1[34] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[35] = v12;
  v1[36] = OUTLINED_FUNCTION_67();
  v1[37] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2313585DC()
{
  v1 = sub_23123EA8C(v0[22], (v0 + 2), &qword_27DD443C0, &unk_23136E000);
  v2 = v0[34];
  if (!v0[5])
  {
    sub_2311D1F18((v0 + 2), &qword_27DD443C0, &unk_23136E000);
    v23 = OUTLINED_FUNCTION_8_31();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v2);
    goto LABEL_6;
  }

  v3 = OUTLINED_FUNCTION_22_22(v1, (v0 + 2));
  OUTLINED_FUNCTION_9_34(v3);
  if (v4)
  {
LABEL_6:
    sub_2311D1F18(v0[33], &qword_27DD44E28, &qword_2313799F8);
    goto LABEL_7;
  }

  v5 = v0[36];
  v6 = v0[34];
  v7 = v0[35];
  v8 = *(v7 + 32);
  (v8)(v0[37], v0[33], v6);
  v9 = OUTLINED_FUNCTION_64();
  v8(v9);
  v10 = (*(v7 + 88))(v5, v6);
  v11 = v0[35];
  v12 = v0[34];
  if (v10 == *MEMORY[0x277D72E38])
  {
    v13 = v0[32];
    v14 = v0[29];
    v15 = v0[30];
    v16 = v0[21];
    (*(v11 + 96))(v0[36], v12);
    v17 = *(v15 + 32);
    v18 = OUTLINED_FUNCTION_64();
    v17(v18);
    (v17)(v16, v13, v14);
    OUTLINED_FUNCTION_62_2();
    goto LABEL_23;
  }

  (*(v11 + 8))(v0[36], v12);
LABEL_7:
  v26 = sub_23123EA8C(v0[22], (v0 + 6), &qword_27DD443C0, &unk_23136E000);
  v27 = v0[29];
  if (v0[9])
  {
    v28 = OUTLINED_FUNCTION_22_22(v26, (v0 + 6));
    OUTLINED_FUNCTION_9_34(v28);
    if (!v4)
    {
      v29 = v0[31];
      v30 = v0[29];
      v31 = v0[21];
      v32 = *(v0[30] + 32);
      v32(v29, v0[28], v30);
      v32(v31, v29, v30);
      v19 = v31;
      v20 = 0;
      v21 = 1;
      v22 = v30;
      goto LABEL_23;
    }
  }

  else
  {
    sub_2311D1F18((v0 + 6), &qword_27DD443C0, &unk_23136E000);
    v33 = OUTLINED_FUNCTION_8_31();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v27);
  }

  v36 = v0[22];
  sub_2311D1F18(v0[28], &qword_27DD43358, &qword_23136FA90);
  sub_23123EA8C(v36, (v0 + 10), &qword_27DD443C0, &unk_23136E000);
  if (!v0[13])
  {
    sub_2311D1F18((v0 + 10), &qword_27DD443C0, &unk_23136E000);
    goto LABEL_17;
  }

  sub_231207BDC(0, &qword_27DD44E30, 0x277D23958);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_23123EA8C(v0[22], (v0 + 14), &qword_27DD443C0, &unk_23136E000);
    if (v0[17])
    {
      if (swift_dynamicCast())
      {
        sub_23135936C(v0[18], v0[19], v0[21]);

LABEL_24:
        OUTLINED_FUNCTION_23_21();

        OUTLINED_FUNCTION_56_0();

        return v40();
      }
    }

    else
    {
      sub_2311D1F18((v0 + 14), &qword_27DD443C0, &unk_23136E000);
    }

    v22 = v0[29];
    v19 = v0[21];
    v20 = 1;
    v21 = 1;
LABEL_23:
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_24;
  }

  v0[38] = v0[20];
  sub_231369930();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[39] = v37;
  *v37 = v38;
  v37[1] = sub_231358A30;

  return sub_231358C14();
}

uint64_t sub_231358A30()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[27];
  v3 = v1[26];
  v4 = v1[25];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231358B74()
{
  OUTLINED_FUNCTION_23_21();

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231358C14()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2313698C0();
  v1[10] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_43();
  v6 = sub_231369D90();
  v1[13] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_43();
  v8 = sub_23136A440();
  v1[16] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_43();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231358D54()
{
  v1 = [*(v0 + 72) value];
  sub_23136A540();
  swift_unknownObjectRelease();
  sub_231207BDC(0, &qword_27DD44E38, 0x277D23918);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = sub_231369CA0();
    v5 = swift_allocBox();
    v7 = v6;
    v8 = [v2 term];
    v9 = sub_231369FD0();
    v11 = v10;

    *v7 = v9;
    v7[1] = v11;
    (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D729B8], v4);
    *v3 = v5;
    v12 = *MEMORY[0x277D72A58];
    v13 = sub_231369D00();
    OUTLINED_FUNCTION_11();
    (*(v14 + 104))(v3, v12, v13);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_12_26();

    OUTLINED_FUNCTION_56_0();

    return v19();
  }

  else
  {
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 64), *(v0 + 104));
    sub_23136A430();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 152) = v21;
    *v21 = v22;
    v21[1] = sub_231358FCC;
    v23 = *(v0 + 144);
    v24 = *(v0 + 56);

    return MEMORY[0x2821E49D8](v24, v23);
  }
}

uint64_t sub_231358FCC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_23135916C;
  }

  else
  {
    v5 = sub_2313590D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2313590D0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v2 = sub_231369D00();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  OUTLINED_FUNCTION_12_26();

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_23135916C(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[9];
  sub_231369130();
  v4 = v3;
  v5 = v2;
  v6 = sub_2313698A0();
  v7 = sub_23136A3A0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[20];
    v9 = v1[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_2311CB000, v6, v7, "Cannot convert LNValue %@ to TypedValue from error: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B0, &unk_23136EDC0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v15 = v1[20];
  v17 = v1[17];
  v16 = v1[18];
  v18 = v1[16];
  v20 = v1[11];
  v19 = v1[12];
  v21 = v1[10];
  v22 = v1[7];

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  v23 = sub_231369D00();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  OUTLINED_FUNCTION_12_26();

  OUTLINED_FUNCTION_56_0();

  return v24();
}

uint64_t sub_23135936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v4 || (sub_23136A900() & 1) != 0)
  {
    v7 = 1;
LABEL_7:
    v8 = sub_231369CA0();
    v9 = swift_allocBox();
    *v10 = v7;
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D72988], v8);
    *a3 = v9;
    v11 = *MEMORY[0x277D72A58];
    v12 = sub_231369D00();
    OUTLINED_FUNCTION_11();
    (*(v13 + 104))(a3, v11, v12);
    OUTLINED_FUNCTION_62_2();
    goto LABEL_8;
  }

  v19 = a1 == 0x65736C6166 && a2 == 0xE500000000000000;
  if (v19 || (sub_23136A900() & 1) != 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  sub_231369D00();
  v14 = OUTLINED_FUNCTION_8_31();
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t OUTLINED_FUNCTION_23_21()
{
}

uint64_t sub_231359524(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t AppUsageDataService.createDataProvider(candidates:generationId:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = sub_2313698C0();
  v1[16] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[17] = v5;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = sub_231368FB0();
  v1[20] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[21] = v7;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  v1[24] = swift_task_alloc();
  v8 = sub_231367960();
  v1[25] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[26] = v9;
  v1[27] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2313597C0()
{
  v3 = *(v0 + 112);
  v4 = MEMORY[0x277D837E0];
  *(v0 + 224) = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
  v5 = sub_231369EC0();
  *(v0 + 88) = v5;
  v6 = *(v3 + 16);
  *(v0 + 232) = v6;
  if (v6)
  {
    v7 = *(v0 + 112);
    *(v0 + 296) = *MEMORY[0x277D61258];
    *(v0 + 240) = 0;
    sub_2311CF324(v7 + 32, v0 + 16);
    *(v0 + 248) = OUTLINED_FUNCTION_1_5();
    *(v0 + 256) = v8;
    *(v0 + 264) = swift_getObjectType();
    sub_23136A260();
    v9 = OUTLINED_FUNCTION_1_48();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    *(v0 + 272) = v5;
    if (*(v5 + 16))
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 120) + 16), *(*(v0 + 120) + 40));
      v12 = swift_task_alloc();
      *(v0 + 280) = v12;
      *v12 = v0;
      v13 = OUTLINED_FUNCTION_0_42(v12);

      return MEMORY[0x2821C7270](v13);
    }

    else
    {

      sub_2313690B0();
      v14 = sub_2313698A0();
      v15 = sub_23136A3A0();
      if (os_log_type_enabled(v14, v15))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        OUTLINED_FUNCTION_57(&dword_2311CB000, v16, v17, "No third party app ids found, skipping Biome query");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_10_34();
      (*(v1 + 8))(v4, v3);
      v18 = sub_231369EC0();
      v19 = type metadata accessor for AppUsageDataProvider();
      OUTLINED_FUNCTION_54();
      *(swift_allocObject() + 16) = v18;
      *(v2 + 24) = v19;
      *(v2 + 32) = &off_2845F7948;

      OUTLINED_FUNCTION_4_34();

      OUTLINED_FUNCTION_56_0();

      return v20();
    }
  }
}

uint64_t sub_231359A80()
{
  OUTLINED_FUNCTION_8();
  sub_231369420();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_231359AEC()
{
  v6 = *(v1 + 192);
  v5 = *(v1 + 200);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) != 1)
  {
    v0 = *(v1 + 296);
    v2 = *(v1 + 216);
    isUniquelyReferenced_nonNull_native = *(v1 + 176);
    v3 = *(v1 + 184);
    v7 = *(v1 + 160);
    v8 = *(v1 + 168);
    (*(*(v1 + 208) + 32))(v2, v6, v5);
    sub_231367940();
    (*(v8 + 104))(isUniquelyReferenced_nonNull_native, v0, v7);
    v9 = sub_231368FA0();
    v10 = *(v8 + 8);
    v10(isUniquelyReferenced_nonNull_native, v7);
    v10(v3, v7);
    if ((v9 & 1) == 0)
    {
LABEL_25:
      (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));
      goto LABEL_26;
    }

    v0 = sub_231367930();
    v12 = v11;
    v13 = *(v1 + 88);
    if (*(v13 + 16))
    {
      sub_231369EE0();
      sub_231215F6C(v0, v12);
      v2 = v14;

      if (v2)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 88);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 96) = v13;
    v15 = sub_231215F6C(v0, v12);
    if (__OFADD__(*(v13 + 16), (v16 & 1) == 0))
    {
      __break(1u);
      goto LABEL_40;
    }

    v17 = v15;
    v3 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E48, &qword_231379A20);
    v18 = sub_23136A700();
    if (v18)
    {
      v18 = sub_231215F6C(v0, v12);
      if ((v3 & 1) != (v19 & 1))
      {
        OUTLINED_FUNCTION_5_35();

        return sub_23136A970();
      }

      v17 = v18;
    }

    v22 = *(v1 + 96);
    if (v3)
    {
      *(v22[7] + 8 * v17) = MEMORY[0x277D84F90];
    }

    else
    {
      v22[(v17 >> 6) + 8] |= 1 << v17;
      v23 = (v22[6] + 16 * v17);
      *v23 = v0;
      v23[1] = v12;
      *(v22[7] + 8 * v17) = MEMORY[0x277D84F90];
      v24 = v22[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return MEMORY[0x2821C7270](v18);
      }

      v22[2] = v26;
      sub_231369EE0();
    }

    *(v1 + 88) = v22;
LABEL_19:
    v2 = v1 + 56;
    v0 = sub_23135A744((v1 + 56), v0, v12);
    if (!*v27)
    {
LABEL_24:
      (v0)(v2, 0);

      goto LABEL_25;
    }

    v3 = v27;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v13 = sub_231368320();
    isUniquelyReferenced_nonNull_native = v28;
    v29 = *v3;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v29;
    if (v30)
    {
LABEL_21:
      v31 = *(v29 + 16);
      v32 = v31 + 1;
      if (v31 >= *(v29 + 24) >> 1)
      {
        v56 = v31 + 1;
        v54 = *(v29 + 16);
        sub_23126DC90();
        v31 = v54;
        v32 = v56;
        v29 = v55;
        *v3 = v55;
      }

      *(v29 + 16) = v32;
      v33 = v29 + 16 * v31;
      *(v33 + 32) = v13;
      *(v33 + 40) = isUniquelyReferenced_nonNull_native;
      goto LABEL_24;
    }

LABEL_40:
    sub_23126DC90();
    v29 = v53;
    *v3 = v53;
    goto LABEL_21;
  }

  sub_23135AE78(v6);
LABEL_26:
  v34 = *(v1 + 232);
  v35 = *(v1 + 240) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  if (v35 == v34)
  {
    v36 = *(v1 + 88);
    *(v1 + 272) = v36;
    if (!*(v36 + 16))
    {

      sub_2313690B0();
      v45 = sub_2313698A0();
      v46 = sub_23136A3A0();
      if (os_log_type_enabled(v45, v46))
      {
        v0 = swift_slowAlloc();
        *v0 = 0;
        OUTLINED_FUNCTION_57(&dword_2311CB000, v47, v48, "No third party app ids found, skipping Biome query");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_10_34();
      (v3[1])(v0, v2);
      v49 = sub_231369EC0();
      v50 = type metadata accessor for AppUsageDataProvider();
      OUTLINED_FUNCTION_54();
      *(swift_allocObject() + 16) = v49;
      *(isUniquelyReferenced_nonNull_native + 24) = v50;
      *(isUniquelyReferenced_nonNull_native + 32) = &off_2845F7948;

      OUTLINED_FUNCTION_4_34();

      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_5_35();

      __asm { BRAA            X1, X16 }
    }

    __swift_project_boxed_opaque_existential_1((*(v1 + 120) + 16), *(*(v1 + 120) + 40));
    v37 = swift_task_alloc();
    *(v1 + 280) = v37;
    *v37 = v1;
    OUTLINED_FUNCTION_0_42(v37);
    OUTLINED_FUNCTION_5_35();

    return MEMORY[0x2821C7270](v18);
  }

  v39 = *(v1 + 240);
  *(v1 + 240) = v39 + 1;
  sub_2311CF324(*(v1 + 112) + 40 * v39 + 72, v1 + 16);
  *(v1 + 248) = OUTLINED_FUNCTION_1_5();
  *(v1 + 256) = v40;
  *(v1 + 264) = swift_getObjectType();
  sub_23136A260();
  OUTLINED_FUNCTION_1_48();
  OUTLINED_FUNCTION_5_35();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_23135A098()
{
  OUTLINED_FUNCTION_8();
  *(*v0 + 288) = v1;

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_23135A18C()
{
  v65 = v0;
  v1 = 0;
  v2 = v0[34];
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  v6 = v0[36];
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v7 = v4 & *(v2 + 64);
  v8 = (63 - v5) >> 6;
  v9 = v0[28];
  v61 = v0[34];
LABEL_4:
  v10 = v1;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v1 = v10;
LABEL_9:
    v11 = __clz(__rbit64(v7)) | (v1 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    if (*(v6 + 16))
    {
      v13 = v9;
      v14 = v6;
      v15 = (*(v2 + 48) + 16 * v11);
      v17 = *v15;
      v16 = v15[1];
      v18 = v12;
      sub_231369EE0();
      v19 = v18;
      sub_231369EE0();
      v20 = sub_231215F6C(v17, v16);
      if (v21)
      {
        v6 = v14;
        v22 = *(*(v14 + 56) + 8 * v20);

        v23 = v19;
      }

      else
      {

        v22 = 0;
        v23 = v18;
        v6 = v14;
      }

      v9 = v13;
      v2 = v61;
    }

    else
    {
      v23 = sub_231369EE0();
      v22 = 0;
    }

    v7 &= v7 - 1;
    if (*(v23 + 16))
    {
      v24 = 0;
      v25 = (v23 + 40);
      v57 = v6;
      v58 = v3;
      v59 = *(v23 + 16);
      v60 = v23;
      while (1)
      {
        if (v24 >= *(v23 + 16))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        v27 = *(v25 - 1);
        v26 = *v25;
        sub_231369EE0();
        sub_23136A650();

        v64[0] = 0x70417473616C5F5FLL;
        v64[1] = 0xEF5F656761735570;
        MEMORY[0x23192A730](v27, v26);

        if (v9[2] && (sub_231369EE0(), sub_231215F6C(0x70417473616C5F5FLL, 0xEF5F656761735570), v29 = v28, , (v29 & 1) != 0))
        {
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          v64[0] = v9;
          v30 = sub_231215F6C(0x70417473616C5F5FLL, 0xEF5F656761735570);
          if (__OFADD__(v9[2], (v31 & 1) == 0))
          {
            goto LABEL_45;
          }

          v32 = v30;
          v33 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E40, &qword_231379A18);
          if (sub_23136A700())
          {
            v34 = sub_231215F6C(0x70417473616C5F5FLL, 0xEF5F656761735570);
            if ((v33 & 1) != (v35 & 1))
            {

              sub_23136A970();
              return;
            }

            v32 = v34;
          }

          if (v33)
          {

            v9 = v64[0];
            *(*(v64[0] + 56) + 8 * v32) = v22;
          }

          else
          {
            v9 = v64[0];
            *(v64[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
            v36 = (v9[6] + 16 * v32);
            *v36 = 0x70417473616C5F5FLL;
            v36[1] = 0xEF5F656761735570;
            *(v9[7] + 8 * v32) = v22;
            v37 = v9[2];
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_46;
            }

            v9[2] = v39;
          }

          v6 = v57;
          v3 = v58;
        }

        ++v24;
        v25 += 2;
        v23 = v60;
        if (v59 == v24)
        {

          v2 = v61;
          v8 = v62;
          goto LABEL_4;
        }
      }
    }

    v10 = v1;
    v8 = v62;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v1 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v1 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v1);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  sub_2313690B0();
  v40 = sub_2313698A0();
  v41 = sub_23136A3A0();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v63[17];
  v44 = v63[18];
  v45 = v63[16];
  if (v42)
  {
    v46 = v63[18];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v64[0] = v48;
    *v47 = 136315138;
    sub_231369EE0();
    v49 = sub_231369E90();
    v51 = v50;

    v52 = sub_2311CFD58(v49, v51, v64);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_2311CB000, v40, v41, "AppUsageDataService data %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v43 + 8))(v46, v45);
  }

  else
  {

    (*(v43 + 8))(v44, v45);
  }

  v53 = v63[13];
  v54 = type metadata accessor for AppUsageDataProvider();
  OUTLINED_FUNCTION_54();
  v55 = swift_allocObject();
  *(v55 + 16) = v9;
  *(v53 + 24) = v54;
  *(v53 + 32) = &off_2845F7948;
  *v63[13] = v55;

  OUTLINED_FUNCTION_56_0();

  v56();
}

uint64_t (*sub_23135A744(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23135A9B0(v6, a2, a3);
  return sub_23135A7B8;
}

void sub_23135A7B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t AppUsageDataService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_23135A85C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23122A888;

  return AppUsageDataService.createDataProvider(candidates:generationId:environment:)();
}

double sub_23135A908@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_231215F6C(a1, a2), (v7 & 1) != 0))
  {
    result = *(*(v5 + 56) + 8 * v6);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = result;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void (*sub_23135A9B0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_23135ACC4(v6);
  v6[9] = sub_23135AAA8(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_23135AA48;
}

void sub_23135AA48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23135AAA8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_231215F6C(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E48, &qword_231379A20);
  if (sub_23136A700())
  {
    v15 = sub_231215F6C(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_23136A970();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_23135ABE8;
}

void sub_23135ABE8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_23125A900(v4, v1[1], v1[2], v2, v5);
      sub_231369EE0();
    }
  }

  else if ((*a1)[5])
  {
    sub_23135AF88(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    sub_23136A720();
  }

  sub_231369EE0();

  free(v1);
}

uint64_t (*sub_23135ACC4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23135ACEC;
}

void *sub_23135ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_23135AE08(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

void *sub_23135AE08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t sub_23135AE78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NoOpSystemEnvironmentService.getDeviceLocation()()
{
  v3 = sub_23135B5F0(v0, v1, v2);
  result._internal = v4;
  result.super.isa = v3;
  return result;
}

unint64_t sub_23135B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7CB90;
  if (!qword_280F7CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CB90);
  }

  return result;
}

uint64_t sub_23135B078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23135B010(a1, a2, a3);
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  v5 = *(v3 + 8);

  return v5();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NoOpSystemEnvironmentService.getUserInterface()()
{
  v3 = sub_23135B5F0(v0, v1, v2);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t NoOpSystemEnvironmentService.getDeviceState()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_231367D90();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  sub_2313690C0();

  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();

  if (os_log_type_enabled(v16, v17))
  {
    v28 = v11;
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v18 = 136315138;

    v19 = sub_23136A010();
    v29 = v9;
    v21 = v4;
    v22 = v2;
    v23 = v8;
    v24 = a1;
    v25 = sub_2311CFD58(v19, v20, &v30);

    *(v18 + 4) = v25;
    a1 = v24;
    v8 = v23;
    v2 = v22;
    v4 = v21;
    _os_log_impl(&dword_2311CB000, v16, v17, "%s getting deviceState", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v28 + 8))(v15, v29);
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

  (*(v4 + 104))(v8, *MEMORY[0x277D60BE0], v2);
  a1[3] = sub_231367090();
  a1[4] = sub_23135CE74(&qword_280F7CB08, MEMORY[0x277D60858], MEMORY[0x277D60850]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_231367060();
}

uint64_t sub_23135B434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23135B4C0;

  return NoOpSystemEnvironmentService.getMotionActivity()();
}

uint64_t sub_23135B4C0()
{
  OUTLINED_FUNCTION_7_30();
  v8 = *v3;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v4 = v2;
    v5 = v0;
  }

  return v6(v4, v5);
}

uint64_t sub_23135B5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23135B010(a1, a2, a3);
  swift_allocError();
  *v3 = 0;
  return swift_willThrow();
}

Swift::Double __swiftcall DefaultSystemEnvironmentService.getCurrentTime()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  sub_231368F20();
  return result;
}

uint64_t DefaultSystemEnvironmentService.getDeviceState()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_231366860();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = sub_2313684A0();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1_4();
  v61 = v10 - v9;
  sub_231367D90();
  OUTLINED_FUNCTION_0_0();
  v58 = v12;
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v60 = v14 - v13;
  sub_231367650();
  OUTLINED_FUNCTION_0_0();
  v56 = v16;
  v57 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v55 = (v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  v54 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v51 - v23;
  v53 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v30 = v29 - v28;
  sub_2313690C0();

  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v51[1] = v7;
    v34 = v33;
    v35 = swift_slowAlloc();
    v52 = a1;
    v36 = v35;
    v62 = v2;
    v63 = v35;
    *v34 = 136315138;

    v37 = sub_23136A010();
    v39 = sub_2311CFD58(v37, v38, &v63);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_2311CB000, v31, v32, "%s getting deviceState", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    a1 = v52;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v26 + 8))(v30, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E50, &qword_231379AD8);
  v40 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_23136B670;
  static DefaultSystemEnvironmentService.getDeviceType()(v41 + v40);
  sub_23135CB14(v41 + v40, v24);
  sub_23135CB84(v24, v21);
  v42 = v57;
  if (__swift_getEnumTagSinglePayload(v21, 1, v57) == 1)
  {
    sub_23135CBF4(v21);
  }

  else
  {
    v43 = *(v56 + 32);
    v43(v55, v21, v42);
    v44 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126F5F0(0, *(v44 + 16) + 1, 1, v44);
      v44 = v49;
    }

    v46 = *(v44 + 16);
    v45 = *(v44 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_23126F5F0(v45 > 1, v46 + 1, 1, v44);
      v44 = v50;
    }

    *(v44 + 16) = v46 + 1;
    v43(v44 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46, v55, v42);
  }

  swift_setDeallocating();
  sub_231322C34();
  v47 = [objc_opt_self() sharedPreferences];
  sub_23135CC5C(v47);
  (*(v58 + 104))(v60, *MEMORY[0x277D60BE8], v59);
  sub_231368490();
  sub_2313667B0();
  a1[3] = sub_2313674E0();
  a1[4] = sub_23135CE74(&qword_280F7CAD0, MEMORY[0x277D608E8], MEMORY[0x277D608E0]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2313674D0();
}

id static DefaultSystemEnvironmentService.getDeviceType()@<X0>(uint64_t a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    switch(deviceClassNumber)
    {
      case 1:
        v5 = MEMORY[0x277D609A8];
        goto LABEL_12;
      case 2:
        v5 = MEMORY[0x277D60990];
        goto LABEL_12;
      case 3:
        v5 = MEMORY[0x277D60998];
        goto LABEL_12;
      case 4:
        v5 = MEMORY[0x277D609B0];
        goto LABEL_12;
      case 6:
        v5 = MEMORY[0x277D609A0];
        goto LABEL_12;
      case 7:
        v5 = MEMORY[0x277D609C0];
        goto LABEL_12;
      case 9:
        v5 = MEMORY[0x277D60988];
        goto LABEL_12;
      case 11:
        v5 = MEMORY[0x277D609C8];
LABEL_12:
        v9 = *v5;
        v10 = sub_231367650();
        OUTLINED_FUNCTION_11();
        (*(v11 + 104))(a1, v9, v10);
        v7 = a1;
        v8 = 0;
        v6 = v10;
        break;
      default:
        v6 = sub_231367650();
        v7 = a1;
        v8 = 1;
        break;
    }

    return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DefaultSystemEnvironmentService.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

uint64_t DefaultSystemEnvironmentService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_23135BE48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23135D59C;

  return DefaultSystemEnvironmentService.getMotionActivity()();
}

uint64_t DeviceTypeLocalePair.deviceType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_231367650();
  OUTLINED_FUNCTION_11();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DeviceTypeLocalePair.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceTypeLocalePair(0) + 20);
  sub_231366860();
  OUTLINED_FUNCTION_11();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DeviceTypeLocalePair.description.getter(uint64_t a1)
{
  v3 = sub_231367640();
  MEMORY[0x23192A730](95, 0xE100000000000000);
  type metadata accessor for DeviceTypeLocalePair(0);
  v1 = sub_2313667C0();
  MEMORY[0x23192A730](v1);

  return v3;
}

uint64_t DeviceTypeLocalePair.init(deviceType:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231367650();
  OUTLINED_FUNCTION_11();
  (*(v6 + 32))(a3, a1);
  v7 = *(type metadata accessor for DeviceTypeLocalePair(0) + 20);
  sub_231366860();
  OUTLINED_FUNCTION_11();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

uint64_t static DeviceTypeLocalePair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2313119B0(a1, a2))
  {
    type metadata accessor for DeviceTypeLocalePair(0);

    JUMPOUT(0x231926EC0);
  }

  return 0;
}

uint64_t sub_23135C16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656369766564 && a2 == 0xEA00000000006570;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_23135C238(char a1)
{
  if (a1)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x7954656369766564;
  }
}

uint64_t sub_23135C278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23135C16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23135C2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23135CD18(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23135C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23135CD18(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DeviceTypeLocalePair.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E58, &qword_231379AE0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23135CD18(v11, v12, v13);
  sub_23136AA40();
  v28 = 0;
  sub_231367650();
  OUTLINED_FUNCTION_1_49();
  v16 = sub_23135CE74(v14, v15, MEMORY[0x277D609D8]);
  OUTLINED_FUNCTION_8_32(v3, &v28, v17, v18, v16);
  if (!v2)
  {
    v19 = *(type metadata accessor for DeviceTypeLocalePair(0) + 20);
    v27 = 1;
    sub_231366860();
    OUTLINED_FUNCTION_0_43();
    v22 = sub_23135CE74(v20, v21, MEMORY[0x277CC9790]);
    OUTLINED_FUNCTION_8_32(v3 + v19, &v27, v23, v24, v22);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t DeviceTypeLocalePair.hash(into:)(uint64_t a1)
{
  sub_231367650();
  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v1, v2, MEMORY[0x277D609E0]);
  sub_231369F40();
  type metadata accessor for DeviceTypeLocalePair(0);
  sub_231366860();
  OUTLINED_FUNCTION_0_43();
  sub_23135CE74(v3, v4, MEMORY[0x277CC9798]);
  return sub_231369F40();
}

uint64_t DeviceTypeLocalePair.hashValue.getter()
{
  sub_23136A9D0();
  sub_231367650();
  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v0, v1, MEMORY[0x277D609E0]);
  sub_231369F40();
  type metadata accessor for DeviceTypeLocalePair(0);
  sub_231366860();
  OUTLINED_FUNCTION_0_43();
  sub_23135CE74(v2, v3, MEMORY[0x277CC9798]);
  sub_231369F40();
  return sub_23136AA00();
}

uint64_t DeviceTypeLocalePair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_231366860();
  OUTLINED_FUNCTION_0_0();
  v29 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v34 = sub_231367650();
  OUTLINED_FUNCTION_0_0();
  v31 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v33 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44E88, &qword_231379AE8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for DeviceTypeLocalePair(0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23135CD18(v19, v20, v21);
  sub_23136AA20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_1_49();
  sub_23135CE74(v22, v23, MEMORY[0x277D609F8]);
  sub_23136A820();
  (*(v31 + 32))(v18, v33, v34);
  OUTLINED_FUNCTION_0_43();
  sub_23135CE74(v24, v25, MEMORY[0x277CC97A8]);
  sub_23136A820();
  v26 = OUTLINED_FUNCTION_6_32();
  v27(v26);
  (*(v29 + 32))(v18 + *(v14 + 20), v8, v32);
  sub_23135CD6C(v18, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_23135CDD0(v18);
}

uint64_t sub_23135C9F4(uint64_t a1)
{
  sub_23136A9D0();
  sub_231367650();
  sub_23135CE74(&qword_27DD44E78, MEMORY[0x277D609D0], MEMORY[0x277D609E0]);
  sub_231369F40();
  sub_231366860();
  sub_23135CE74(&qword_27DD44E80, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_231369F40();
  return sub_23136AA00();
}

uint64_t sub_23135CB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135CB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135CBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A28, &qword_231377830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23135CC5C(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

uint64_t type metadata accessor for DeviceTypeLocalePair(uint64_t a1)
{
  result = qword_27DD44EA8;
  if (!qword_27DD44EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23135CD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44E60;
  if (!qword_27DD44E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44E60);
  }

  return result;
}

uint64_t sub_23135CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceTypeLocalePair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23135CDD0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceTypeLocalePair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23135CE74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of SystemEnvironmentService.getMotionActivity()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23135CFFC;

  return v7(a1, a2);
}

uint64_t sub_23135CFFC()
{
  OUTLINED_FUNCTION_7_30();
  v5 = *v2;

  v3 = *(v5 + 8);

  return v3(v1, v0);
}

uint64_t sub_23135D200(uint64_t a1)
{
  result = sub_231367650();
  if (v2 <= 0x3F)
  {
    result = sub_231366860();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceTypeLocalePair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23135D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44EB8;
  if (!qword_27DD44EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44EB8);
  }

  return result;
}

unint64_t sub_23135D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44EC0;
  if (!qword_27DD44EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44EC0);
  }

  return result;
}

unint64_t sub_23135D4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44EC8;
  if (!qword_27DD44EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44EC8);
  }

  return result;
}

unint64_t sub_23135D548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44ED0;
  if (!qword_27DD44ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44ED0);
  }

  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultSystemEnvironmentService.getDeviceLocation()()
{
  v2 = NoOpSystemEnvironmentService.getDeviceLocation()();
  internal = v2._internal;
  isa = v2.super.isa;
  result._internal = internal;
  result.super.isa = isa;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultSystemEnvironmentService.getUserInterface()()
{
  v2 = NoOpSystemEnvironmentService.getUserInterface()();
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t type metadata accessor for Environment(uint64_t a1)
{
  result = qword_280F84DE0;
  if (!qword_280F84DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23135D68C(uint64_t a1)
{
  sub_23135D928(319, &qword_280F7C7F0, sub_23135D880, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2312AFEC4();
    if (v2 <= 0x3F)
    {
      sub_23135D928(319, &qword_280F7C840, MEMORY[0x277D60AA0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23135D8C4();
        if (v4 <= 0x3F)
        {
          sub_231367D90();
          if (v5 <= 0x3F)
          {
            sub_23135D928(319, &qword_280F7C848, MEMORY[0x277D609D0], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_2313684A0();
              if (v7 <= 0x3F)
              {
                sub_231366860();
                if (v8 <= 0x3F)
                {
                  sub_231367070();
                  if (v9 <= 0x3F)
                  {
                    sub_231367CF0();
                    if (v10 <= 0x3F)
                    {
                      sub_23135D98C(319);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_23135D880()
{
  result = qword_280F7C7F8;
  if (!qword_280F7C7F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7F8);
  }

  return result;
}

void sub_23135D8C4()
{
  if (!qword_280F7C858)
  {
    v0 = sub_231369EF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C858);
    }
  }
}

void sub_23135D928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23135D98C(uint64_t a1)
{
  if (!qword_280F7C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44ED8, qword_231379EF8);
    v1 = sub_23136A4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280F7C870);
    }
  }
}

void sub_23135D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = sub_231367890();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_8_33(v6);
  v7 = MEMORY[0x231928390]() + 64;
  OUTLINED_FUNCTION_3_42();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v29 = v13;
  sub_231369EE0();
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v10)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= v12)
          {
            goto LABEL_18;
          }

          v10 = *(v7 + 8 * v16);
          ++v14;
          if (v10)
          {
            v14 = v16;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

LABEL_7:
      v17 = (*(v4 + 16))(v27, *(v29 + 56) + *(v4 + 72) * (__clz(__rbit64(v10)) | (v14 << 6)), v28);
      v18 = MEMORY[0x231927F00](v17);
      (*(v4 + 8))(v27, v28);
      v19 = *(v18 + 16);
      v20 = *(v15 + 16);
      if (__OFADD__(v20, v19))
      {
        goto LABEL_28;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v15 + 24) >> 1)
      {
        sub_23126E1B8();
        v15 = v21;
      }

      v10 &= v10 - 1;
      if (!*(v18 + 16))
      {
        break;
      }

      if ((*(v15 + 24) >> 1) - *(v15 + 16) < v19)
      {
        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE0, &qword_231370E88);
      swift_arrayInitWithCopy();

      if (v19)
      {
        v22 = *(v15 + 16);
        v23 = __OFADD__(v22, v19);
        v24 = v22 + v19;
        if (v23)
        {
          goto LABEL_30;
        }

        *(v15 + 16) = v24;
      }
    }
  }

  while (!v19);
  __break(1u);
LABEL_18:

  v25 = 0;
  v26 = *(v15 + 16);
  while (1)
  {
    if (v26 == v25)
    {

      sub_231367A90();
      return;
    }

    if (v25 >= *(v15 + 16))
    {
      goto LABEL_27;
    }

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE0, &qword_231370E88);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v25;
  }
}

void sub_23135DCE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_2313689A0();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v49 = v9 - v8;
  v46 = sub_231367890();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_8_33(v13);
  v14 = MEMORY[0x231928390]() + 64;
  OUTLINED_FUNCTION_3_42();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v45 = v11;
  v47 = v20;
  sub_231369EE0();
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v42 = a2;
  v43 = v4;
  do
  {
    while (1)
    {
      if (!v17)
      {
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v19)
          {
            goto LABEL_21;
          }

          v17 = *(v14 + 8 * v23);
          ++v21;
          if (v17)
          {
            v21 = v23;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

LABEL_7:
      (*(v45 + 16))(v44, *(v47 + 56) + *(v45 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v46);
      v24 = sub_231367860();
      (*(v45 + 8))(v44, v46);
      v25 = *(v24 + 16);
      v26 = *(v22 + 16);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v27 > *(v22 + 24) >> 1)
      {
        if (v26 <= v27)
        {
          v29 = v26 + v25;
        }

        else
        {
          v29 = v26;
        }

        sub_23126DA08(isUniquelyReferenced_nonNull_native, v29, 1, v22);
        v22 = v30;
      }

      a2 = v42;
      v4 = v43;
      v17 &= v17 - 1;
      if (!*(v24 + 16))
      {
        break;
      }

      if ((*(v22 + 24) >> 1) - *(v22 + 16) < v25)
      {
        goto LABEL_37;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v31 = *(v22 + 16);
        v32 = __OFADD__(v31, v25);
        v33 = v31 + v25;
        if (v32)
        {
          goto LABEL_38;
        }

        *(v22 + 16) = v33;
      }
    }
  }

  while (!v25);
  __break(1u);
LABEL_21:

  v34 = 0;
  v35 = *(v22 + 16);
  while (1)
  {
    if (v35 == v34)
    {

      v39 = 1;
      v40 = a3;
      goto LABEL_33;
    }

    if (v34 >= *(v22 + 16))
    {
      goto LABEL_35;
    }

    (*(v6 + 16))(v49, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v4);
    if (sub_231368980() == a1 && v36 == a2)
    {
      break;
    }

    v38 = sub_23136A900();

    if (v38)
    {
      goto LABEL_32;
    }

    (*(v6 + 8))(v49, v4);
    ++v34;
  }

LABEL_32:

  v40 = a3;
  (*(v6 + 32))(a3, v49, v4);
  v39 = 0;
LABEL_33:
  __swift_storeEnumTagSinglePayload(v40, v39, 1, v4);
}

uint64_t sub_23135E0C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43730, &qword_23136D550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v75 - v3;
  v5 = sub_231366750();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v76 = v13;
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_2313690F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44040, &qword_231370EF8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_231377310;
  *(v18 + 32) = 0x6E6F697461636F6CLL;
  *(v18 + 40) = 0xE800000000000000;
  v78 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EE0, &qword_231379FF8);
  v19 = sub_23136A4C0();
  v20 = MEMORY[0x277D837D0];
  *(v18 + 48) = v19;
  *(v18 + 56) = v21;
  *(v18 + 72) = v20;
  strcpy((v18 + 80), "motionActivity");
  *(v18 + 95) = -18;
  if (v0[2])
  {
    v22 = v0[1];
    v23 = v0[2];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v20 = 0;
    *(v18 + 112) = 0;
  }

  *(v18 + 96) = v22;
  *(v18 + 104) = v23;
  *(v18 + 120) = v20;
  strcpy((v18 + 128), "userInterface");
  *(v18 + 142) = -4864;
  v24 = v0[4];
  if (v24)
  {
    v25 = v1[3];
    v26 = MEMORY[0x277D837D0];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    *(v18 + 160) = 0;
  }

  *(v18 + 144) = v25;
  *(v18 + 152) = v24;
  *(v18 + 168) = v26;
  strcpy((v18 + 176), "generationTs");
  *(v18 + 189) = 0;
  *(v18 + 190) = -5120;
  sub_231369EE0();
  sub_231369EE0();
  sub_2313666D0();
  sub_231366820();
  v27 = sub_231366860();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v27);
  v28 = sub_2313666F0();
  v30 = v29;
  sub_2311EB450(v4, &qword_27DD43730, &qword_23136D550);
  (*(v7 + 8))(v11, v5);
  *(v18 + 192) = v28;
  *(v18 + 200) = v30;
  *(v18 + 216) = MEMORY[0x277D837D0];
  *(v18 + 224) = 0xD000000000000013;
  *(v18 + 232) = 0x80000002313825E0;
  v31 = type metadata accessor for Environment(0);
  *(v18 + 264) = sub_2313684A0();
  __swift_allocate_boxed_opaque_existential_1((v18 + 240));
  OUTLINED_FUNCTION_26_0();
  (*(v32 + 16))();
  *(v18 + 272) = 0xD000000000000011;
  *(v18 + 280) = 0x8000000231382600;
  *(v18 + 312) = sub_231367D90();
  __swift_allocate_boxed_opaque_existential_1((v18 + 288));
  OUTLINED_FUNCTION_26_0();
  (*(v33 + 16))();
  *(v18 + 320) = 0x7954656369766564;
  *(v18 + 328) = 0xEB00000000736570;
  v34 = *(v1 + *(v31 + 44));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EE8, &unk_23137A000);
  *(v18 + 336) = v34;
  *(v18 + 360) = v35;
  *(v18 + 368) = 0x61636F4C69726973;
  *(v18 + 376) = 0xEA0000000000656CLL;
  *(v18 + 408) = v27;
  __swift_allocate_boxed_opaque_existential_1((v18 + 384));
  OUTLINED_FUNCTION_26_0();
  (*(v36 + 16))();
  strcpy((v18 + 416), "responseMode");
  *(v18 + 429) = 0;
  *(v18 + 430) = -5120;
  *(v18 + 456) = sub_231367070();
  __swift_allocate_boxed_opaque_existential_1((v18 + 432));
  OUTLINED_FUNCTION_26_0();
  (*(v37 + 16))();
  *(v18 + 464) = 0xD000000000000010;
  *(v18 + 472) = 0x8000000231382620;
  v38 = *(v1 + *(v31 + 64));
  if (v38)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44ED8, qword_231379EF8);
  }

  else
  {
    v39 = 0;
    *(v18 + 488) = 0;
    *(v18 + 496) = 0;
  }

  *(v18 + 480) = v38;
  *(v18 + 504) = v39;
  sub_231369EE0();
  sub_231369EE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44048, &unk_231370F00);
  OUTLINED_FUNCTION_2_34();
  v40 = sub_231369870();
  v42 = v41;

  v43 = v77;
  v44 = *(v76 + 8);
  v44(v17, v77);
  MEMORY[0x23192A730](v40, v42);

  OUTLINED_FUNCTION_7_31();
  v45 = v75;
  sub_2313690F0();
  v46 = v1[5];
  sub_231367B30();
  v47 = OUTLINED_FUNCTION_2_34();
  v52 = OUTLINED_FUNCTION_6_33(v47, v48, v49, v46, v50, v51);
  v54 = v53;
  v44(v45, v43);
  MEMORY[0x23192A730](v52, v54);

  MEMORY[0x23192A730](0xD000000000000015, 0x8000000231382660);
  sub_2313690F0();
  v55 = sub_231369EE0();
  v56 = sub_23122AB7C(v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
  v57 = OUTLINED_FUNCTION_2_34();
  v61 = OUTLINED_FUNCTION_6_33(v57, v58, MEMORY[0x277D84F90], v56, v59, v60);
  v63 = v62;

  v44(v45, v43);
  MEMORY[0x23192A730](v61, v63);

  OUTLINED_FUNCTION_7_31();
  v64 = sub_2313690F0();
  v65 = MEMORY[0x231928390](v64);
  v66 = sub_23122ABA8(v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v67 = OUTLINED_FUNCTION_2_34();
  v71 = OUTLINED_FUNCTION_6_33(v67, v68, MEMORY[0x277D84F90], v66, v69, v70);
  v73 = v72;

  v44(v45, v43);
  MEMORY[0x23192A730](v71, v73);

  return v79;
}

uint64_t sub_23135E8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_2311EB398(a3, v6 + 64, &qword_27DD443C0, &unk_23136E000);
  sub_231369EE0();
  return v6;
}

uint64_t sub_23135E974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_23136D290;
  *(v0 + 56) = v1;
  *(v0 + 32) = 8224;
  *(v0 + 40) = 0xE200000000000000;
  *(v0 + 88) = sub_231368100();
  __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  sub_231367B00();
  sub_231367AE0();
  v2 = v8;
  if (v8)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 120) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_2311EB450(v7, &qword_27DD432F8, &qword_23136DEE0);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_231367B10();
  *(v0 + 152) = MEMORY[0x277D839F8];
  *(v0 + 128) = v5;
  return v0;
}

uint64_t sub_23135EAA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_23136D280;
  *(v2 + 56) = v3;
  *(v2 + 32) = 8224;
  *(v2 + 40) = 0xE200000000000000;
  sub_2311EB398(a1, v9, &qword_27DD43558, &qword_231374890);
  v4 = v9[0];
  v5 = v9[1];
  *(v2 + 88) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  sub_2311EB398(a1, &v7, &qword_27DD43558, &qword_231374890);

  sub_2312250F8(&v8, (v2 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v2;
}

uint64_t sub_23135EB94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D837D0];
  *(v9 + 16) = xmmword_23136D280;
  *(v9 + 56) = v10;
  *(v9 + 32) = 8224;
  *(v9 + 40) = 0xE200000000000000;
  sub_2311EB398(a1, v8, &qword_27DD43908, &unk_23136EBA0);
  v11 = *v8;
  v12 = *(v8 + 1);
  v13 = *(v3 + 56);
  *(v9 + 88) = v10;
  *(v9 + 64) = v11;
  *(v9 + 72) = v12;
  sub_2311EB398(a1, v5, &qword_27DD43908, &unk_23136EBA0);

  v14 = *(v3 + 56);
  v15 = sub_231367890();
  *(v9 + 120) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 96));
  v17 = *(v15 - 8);
  (*(v17 + 32))(boxed_opaque_existential_1, &v5[v14], v15);
  (*(v17 + 8))(&v8[v13], v15);
  return v9;
}

id sub_23135ED58()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_23135ED80()
{
  v1 = *(v0 + 8);
  sub_231369EE0();
  return v1;
}

uint64_t sub_23135EDB0()
{
  v1 = *(v0 + 24);
  sub_231369EE0();
  return v1;
}

uint64_t sub_23135EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_2313684A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23135EE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_231367D90();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23135EEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_231366860();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23135EF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_231367070();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_23135EFE0(uint64_t a1)
{
  result = sub_23135F008();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23135F008()
{
  result = qword_280F84DF0[0];
  if (!qword_280F84DF0[0])
  {
    type metadata accessor for Environment(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F84DF0);
  }

  return result;
}

void OUTLINED_FUNCTION_7_31()
{

  JUMPOUT(0x23192A730);
}

uint64_t sub_23135F080(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_23135F0EC(a1, a2, a3, a4);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v4 + 16) = v7;
  return v4;
}

uint64_t sub_23135F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v48 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v45 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  v50 = a4;
  v49 = a3;
  if (v14)
  {
    v46 = v11;
    v51 = v8;
    *&v55[0] = MEMORY[0x277D84F90];
    sub_2311F581C(0, v14, 0);
    type metadata accessor for Generators();
    v15 = *&v55[0];
    v16 = a1 + 32;
    v53 = xmmword_23136B670;
    do
    {
      sub_231361B84(v16, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EF0, &qword_23137A218);
      inited = swift_initStackObject();
      *(inited + 16) = v53;
      *(inited + 32) = sub_23135FF6C(v56);
      *(inited + 40) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F0, &unk_23136BC80);
      OUTLINED_FUNCTION_11_28();
      v19 = swift_allocObject();
      *(v19 + 16) = v53;
      sub_2311CF324(&v57, v19 + 32);
      *(inited + 48) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FB0, &unk_231370E40);
      v20 = sub_231369EC0();
      sub_231361BBC(v56);
      *&v55[0] = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2311F581C(v21 > 1, v22 + 1, 1);
        v15 = *&v55[0];
      }

      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v20;
      v16 += 80;
      --v14;
    }

    while (v14);
    v8 = v51;
    v11 = v46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FB0, &unk_231370E40);
  v23 = sub_231369EC0();
  v24 = 0;
  v25 = *(v15 + 16);
  while (v25 != v24)
  {
    if (v24 >= *(v15 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v26 = *(v15 + 8 * v24 + 32);
    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56[0] = v23;
    sub_231361BEC(v26, sub_231362010, 0, isUniquelyReferenced_nonNull_native, v56);
    ++v24;
    v23 = *&v56[0];
  }

  v28 = v47;
  sub_231369170();
  sub_231369880();
  v31 = *(v8 + 8);
  v30 = v8 + 8;
  v29 = v31;
  v32 = v48;
  v31(v28, v48);
  sub_231369170();
  v33 = v52;
  sub_2311CF324(v52, v56);
  v34 = sub_2313698A0();
  v35 = sub_23136A390();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136315138;
    sub_2311CF324(v56, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44EF8, &unk_23137A220);
    v38 = sub_23136A010();
    v51 = v30;
    v39 = v32;
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    v42 = sub_2311CFD58(v38, v41, &v54);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2311CB000, v34, v35, "OwnerDispatcherGenerator:: using owner extractors: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v33 = v52;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v29(v11, v39);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    v29(v11, v32);
  }

  sub_2311CF324(v33, v56);
  sub_2311CF324(v49, v55);
  type metadata accessor for Generators();
  v43 = swift_allocObject();
  sub_2313602F0(v23, v56, v55, v50);

  return v43;
}

uint64_t sub_23135F690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23135F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_23135F934(v14[12], v14[13], v14 + 7);
  if (v14[10])
  {
    sub_2311D38A8((v14 + 7), (v14 + 2));
    __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
    v15 = swift_task_alloc();
    v14[16] = v15;
    *v15 = v14;
    v15[1] = sub_23135F7EC;
    v16 = OUTLINED_FUNCTION_13_26(v14[12]);

    return MEMORY[0x2821C6CE8](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_231228E9C((v14 + 7), &qword_27DD44F08, &qword_23137A240);
    OUTLINED_FUNCTION_14();
    v25 = MEMORY[0x277D84F90];

    return v24(v25);
  }
}

uint64_t sub_23135F7EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23135F8D8()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_23135F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v16 = v4[6];
  v17 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v16);
  v18 = (*(v17 + 8))(a1, a2, v16, v17);
  sub_231369170();
  sub_231369EE0();
  v19 = sub_2313698A0();
  v20 = sub_23136A390();

  v21 = os_log_type_enabled(v19, v20);
  v70 = v8;
  v71 = v4;
  v68 = v10;
  v69 = a3;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v73[0] = v23;
    *v22 = 136315138;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v25 = MEMORY[0x23192A860](v18, v24);
    v27 = v10;
    v28 = sub_2311CFD58(v25, v26, v73);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v19, v20, "OwnerDispatcherGenerator:: calculated owners of interaction: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v66 = *(v27 + 8);
    v66(v15, v70);
  }

  else
  {

    v66 = *(v10 + 8);
    v66(v15, v8);
  }

  v29 = 0;
  v30 = *(v18 + 16);
  v31 = MEMORY[0x277D84F90];
LABEL_5:
  v32 = v18 + 32 + 40 * v29;
  while (v30 != v29)
  {
    if (v29 >= *(v18 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1Tm(v73);

      __break(1u);
      return result;
    }

    sub_2311CF324(v32, v73);
    sub_231360334(v73, &v72);
    ++v29;
    v32 += 40;
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    v33 = v72;
    if (v72)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126E324(0);
        v31 = v36;
      }

      v35 = *(v31 + 16);
      v34 = *(v31 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_23126E324(v34 > 1);
        v31 = v37;
      }

      *(v31 + 16) = v35 + 1;
      *(v31 + 8 * v35 + 32) = v33;
      goto LABEL_5;
    }
  }

  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v40 = *(v31 + 16);
  while (v40 != v38)
  {
    if (v38 >= *(v31 + 16))
    {
      goto LABEL_32;
    }

    v41 = *(v31 + 8 * v38 + 32);
    v42 = *(v41 + 16);
    v43 = *(v39 + 16);
    if (__OFADD__(v43, v42))
    {
      goto LABEL_33;
    }

    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v43 + v42 > *(v39 + 24) >> 1)
    {
      sub_23126DF2C(isUniquelyReferenced_nonNull_native);
      v39 = v45;
    }

    if (*(v41 + 16))
    {
      if ((*(v39 + 24) >> 1) - *(v39 + 16) < v42)
      {
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
      swift_arrayInitWithCopy();

      if (v42)
      {
        v46 = *(v39 + 16);
        v47 = __OFADD__(v46, v42);
        v48 = v46 + v42;
        if (v47)
        {
          goto LABEL_36;
        }

        *(v39 + 16) = v48;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_34;
      }
    }

    ++v38;
  }

  v49 = v67;
  sub_231369170();
  sub_231369EE0();
  v50 = sub_2313698A0();
  v51 = sub_23136A390();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v73[0] = v53;
    *v52 = 136315138;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
    v55 = MEMORY[0x23192A860](v39, v54);
    v57 = sub_2311CFD58(v55, v56, v73);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_2311CB000, v50, v51, "OwnerDispatcherGenerator:: Using generators: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v66(v49, v70);
  v58 = v69;
  v59 = v71;
  sub_2311CF324((v71 + 8), v73);
  v60 = v59[13];
  v61 = type metadata accessor for GeneratorDelegation();
  OUTLINED_FUNCTION_11_28();
  v62 = swift_allocObject();
  *(v62 + 16) = v39;
  sub_2311D38A8(v73, v62 + 24);
  *(v62 + 64) = v60;
  v58[3] = v61;
  v58[4] = sub_231362554(&qword_280F82C50, v63, type metadata accessor for GeneratorDelegation, &unk_23137A118);
  *v58 = v62;
}

uint64_t sub_23135FF6C(void *a1)
{
  sub_231366B70();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_231366B50();
  v3 = sub_231366B60();
  v4 = OUTLINED_FUNCTION_28();
  v5(v4);
  v10 = v3;
  MEMORY[0x23192A730](95, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = MEMORY[0x231929610](v6, v7);
  MEMORY[0x23192A730](v8);

  return v10;
}

unint64_t sub_2313600A0()
{
  sub_23136A650();

  v0 = sub_231360228();
  MEMORY[0x23192A730](v0);

  MEMORY[0x23192A730](41, 0xE100000000000000);
  return 0xD000000000000025;
}

uint64_t sub_231360178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2313625B0;

  return sub_23135F690(a1, a2, a3);
}

unint64_t sub_231360228()
{
  v0 = sub_231369EE0();
  sub_23122AB50(v0);
  v1 = sub_231367BB0();
  v3 = v2;

  MEMORY[0x23192A730](v1, v3);

  sub_231369EE0();
  MEMORY[0x23192A730](41, 0xE100000000000000);

  return 0xD000000000000018;
}

uint64_t sub_2313602F0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_32(a1, a2);
  sub_2311D38A8(a3, v4 + 64);
  *(v4 + 104) = a4;
  return v4;
}

uint64_t sub_231360334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23135FF6C(a1);
  v3 = sub_2312177D8();

  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_231360398()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return v0;
}

uint64_t sub_2313603D0()
{
  sub_231360398();

  return swift_deallocClassInstance();
}

uint64_t sub_23136044C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_32(a1, a2);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_231360478()
{
  OUTLINED_FUNCTION_8();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_2313698C0();
  v1[36] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[37] = v6;
  v1[38] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF0, &unk_23137A250);
  v1[39] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF8, &qword_231370C00);
  v1[40] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[41] = v8;
  v1[42] = OUTLINED_FUNCTION_43();
  v9 = sub_231367C70();
  v1[43] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[44] = v10;
  v1[45] = OUTLINED_FUNCTION_43();
  v11 = sub_231368210();
  v1[46] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[47] = v12;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v13 = sub_2313681A0();
  v1[50] = v13;
  OUTLINED_FUNCTION_0(v13);
  v1[51] = v14;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2313606B4()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(*(v0 + 280) + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 256), *(*(v0 + 256) + 24));
  sub_231369EE0();
  sub_2313677D0();
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D60AC0])
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 424);
    v7 = *(v0 + 400);
    v8 = *(v0 + 408);
    v67 = *(v0 + 392);
    v9 = *(v0 + 368);
    v10 = *(v0 + 376);
    v11 = *(v0 + 360);
    (*(*(v0 + 352) + 96))(v11, *(v0 + 344));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    (*(v8 + 32))(v6, v11, v7);
    (*(v10 + 32))(v67, v11 + v12, v9);
    (*(v8 + 104))(v5, *MEMORY[0x277D60DB8], v7);
    LOBYTE(v6) = sub_231368190();
    v13 = *(v8 + 8);
    v14 = OUTLINED_FUNCTION_28();
    v13(v14);
    if (v6)
    {
      v15 = sub_2313686F0();
      v16 = sub_2313686E0();
      v17 = type metadata accessor for HabitualActionsGenerator(0);
      v18 = swift_allocObject();
      v19 = (v18 + OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_featureFlagProvider);
      v20 = MEMORY[0x277D60FF0];
      v19[3] = v15;
      v19[4] = v20;
      *v19 = v16;
      v21 = OBJC_IVAR____TtC15SiriSuggestions24HabitualActionsGenerator_channel;
      v22 = *MEMORY[0x277D60F70];
      sub_231368450();
      OUTLINED_FUNCTION_7_0();
      (*(v23 + 104))(v18 + v21, v22);
      v24 = *MEMORY[0x277D61308];
      sub_231369330();
      OUTLINED_FUNCTION_7_0();
      (*(v25 + 104))(v18 + v21, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_43();
        v4 = v60;
      }

      v27 = *(v4 + 16);
      v26 = *(v4 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_23126DF2C(v26 > 1);
        v4 = v61;
      }

      *(v0 + 240) = v17;
      *(v0 + 248) = sub_231362554(&qword_27DD44C38, 255, type metadata accessor for HabitualActionsGenerator, &protocol conformance descriptor for HabitualActionsGenerator);
      *(v0 + 216) = v18;
      *(v4 + 16) = v27 + 1;
      sub_2311D38A8((v0 + 216), v4 + 40 * v27 + 32);
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 368);
    v30 = *(v0 + 376);
    (*(v30 + 104))(v28, *MEMORY[0x277D60E10], v29);
    v31 = OUTLINED_FUNCTION_28();
    v33 = sub_23131222C(v31, v32);
    v34 = *(v30 + 8);
    v34(v28, v29);
    if (v33)
    {
      type metadata accessor for DefaultToolRetriever();
      v35 = swift_allocObject();
      v68 = sub_231362438(v35, 2u);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_43();
        v4 = v62;
      }

      v37 = *(v4 + 16);
      v36 = *(v4 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23126DF2C(v36 > 1);
        v4 = v63;
      }

      v38 = *(v0 + 424);
      v39 = *(v0 + 400);
      v34(*(v0 + 392), *(v0 + 368));
      (v13)(v38, v39);
      *(v0 + 200) = type metadata accessor for ContextualActionsGenerator(0);
      *(v0 + 208) = sub_231362554(&qword_27DD44B70, 255, type metadata accessor for ContextualActionsGenerator, &unk_231378698);
      *(v0 + 176) = v68;
      *(v4 + 16) = v37 + 1;
      sub_2311D38A8((v0 + 176), v4 + 40 * v37 + 32);
    }

    else
    {
      v34(*(v0 + 392), *(v0 + 368));
      v40 = OUTLINED_FUNCTION_28();
      v13(v40);
    }
  }

  else
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  }

  v41 = *(*(v0 + 280) + 64);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_43();
    v4 = v58;
  }

  v43 = *(v4 + 16);
  v42 = *(v4 + 24);
  if (v43 >= v42 >> 1)
  {
    sub_23126DF2C(v42 > 1);
    v4 = v59;
  }

  *(v0 + 432) = v4;
  v44 = *(v0 + 328);
  v45 = *(v0 + 336);
  v47 = *(v0 + 312);
  v46 = *(v0 + 320);
  v48 = v4;
  v49 = *(v0 + 280);
  v66 = *(v0 + 264);
  v69 = *(v0 + 272);
  v65 = *(v0 + 256);
  *(v0 + 40) = type metadata accessor for SignalGenerator();
  *(v0 + 48) = sub_231362554(qword_280F845E0, 255, type metadata accessor for SignalGenerator, &unk_2313743B8);
  *(v0 + 16) = v41;
  *(v48 + 16) = v43 + 1;
  sub_2311D38A8((v0 + 16), v48 + 40 * v43 + 32);
  v51 = v49[6];
  v50 = v49[7];
  __swift_project_boxed_opaque_existential_1(v49 + 3, v51);
  (*(v50 + 16))(v51, v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  sub_231367FE0();
  (*(v44 + 16))(v47, v45, v46);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v46);
  sub_2311CF324(v65, v0 + 56);
  sub_2311CF324(v66, v0 + 96);
  sub_2311CF324(v69, v0 + 136);
  v53 = swift_allocObject();
  *(v0 + 440) = v53;
  sub_2311D38A8((v0 + 56), v53 + 16);
  sub_2311D38A8((v0 + 96), v53 + 56);
  sub_2311D38A8((v0 + 136), v53 + 96);
  v54 = swift_task_alloc();
  *(v0 + 448) = v54;
  *v54 = v0;
  v54[1] = sub_231360DD8;
  v57 = *(v0 + 312);

  return MEMORY[0x2821C6B08](v48, v57, &unk_23137A268, v53, v52, &type metadata for GeneratorOutput, v55, v56);
}

void sub_231360DD8()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v5;

  if (v0)
  {
  }

  else
  {
    sub_231228E9C(*(v3 + 312), &qword_27DD43EF0, &unk_23137A250);

    MEMORY[0x2822009F8](sub_231360F2C, 0, 0);
  }
}

void sub_231360F2C(uint64_t a1)
{
  v2 = v1[57];
  sub_231369170();
  sub_231369890();
  v3 = OUTLINED_FUNCTION_28();
  v4(v3);
  v5 = 0;
  v6 = *(v2 + 16);
  v7 = MEMORY[0x277D84F90];
  v8 = (v2 + 32);
  while (v6 != v5)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v9 = *v8;
    v10 = *(*v8 + 16);
    v11 = *(v7 + 16);
    if (__OFADD__(v11, v10))
    {
      goto LABEL_19;
    }

    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 + v10 > *(v7 + 24) >> 1)
    {
      sub_23126DF64(isUniquelyReferenced_nonNull_native);
      v7 = v13;
    }

    if (*(v9 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v10)
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v7 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_22;
        }

        *(v7 + 16) = v16;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_20;
      }
    }

    v8 += 5;
    ++v5;
  }

  v17 = v1[41];
  v18 = v1[42];
  v19 = v1[40];

  (*(v17 + 8))(v18, v19);

  OUTLINED_FUNCTION_14();

  v20(v7);
}

uint64_t sub_2313611B0(void *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369170();
  sub_2311CF324(a1, v21);
  v6 = sub_2313698A0();
  v7 = sub_23136A3B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    swift_getDynamicType();
    v10 = sub_23136AA70();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v13 = sub_2311CFD58(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v6, v7, "Unable to generate candidates for %s due to timeout", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23192B930](v9, -1, -1);
    MEMORY[0x23192B930](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v16 = a1[4];
  v21[0] = DynamicType;
  v21[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v17 = sub_23136A010();
  *(v14 + 32) = MEMORY[0x277D84F90];
  *(v14 + 40) = v17;
  *(v14 + 48) = v18;
  *(v14 + 56) = 0x756F2064656D6954;
  *(v14 + 64) = 0xE900000000000074;
  return v14;
}

uint64_t sub_231361444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_231361468, 0, 0);
}

uint64_t sub_231361468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_project_boxed_opaque_existential_1(*(v14 + 72), *(*(v14 + 72) + 24));
  v15 = swift_task_alloc();
  *(v14 + 104) = v15;
  *v15 = v14;
  v15[1] = sub_23136151C;
  v16 = OUTLINED_FUNCTION_13_26(*(v14 + 80));

  return MEMORY[0x2821C6CE8](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23136151C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231361608()
{
  v1 = v0[14];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  OUTLINED_FUNCTION_11_28();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  v4 = OUTLINED_FUNCTION_44_0();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  DynamicType = swift_getDynamicType();
  v7 = *(v2 + 32);
  v0[7] = DynamicType;
  v0[8] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v14 = sub_23136A010();
  v15 = v8;
  sub_231369EE0();
  MEMORY[0x23192A730](0x20203E3C2020, 0xE600000000000000);

  sub_2311CF324(v2, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  v9 = sub_23136A010();
  v11 = v10;
  sub_231369EE0();
  MEMORY[0x23192A730](v9, v11);

  *(v3 + 32) = v1;
  *(v3 + 40) = v14;
  *(v3 + 48) = v15;
  *(v3 + 56) = 6369134;
  *(v3 + 64) = 0xE300000000000000;
  OUTLINED_FUNCTION_14();

  return v12(v3);
}

uint64_t sub_2313617A8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t sub_2313617D8()
{
  sub_2313617A8();
  OUTLINED_FUNCTION_11_28();

  return swift_deallocClassInstance();
}

uint64_t sub_23136182C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E9060;

  return sub_231360478();
}

uint64_t sub_231361A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
  v7 = swift_allocObject();
  *(v6 + 64) = v7;
  sub_2311CF324(a3, v7 + 16);
  sub_231369EE0();
  return v6;
}

uint64_t sub_231361ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23136C1C0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(v10 + 64) = a3;
  sub_231369EE0();
  sub_231369EE0();
  return v10;
}

uint64_t sub_231361BEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_2312B7234();
  v9 = v60;
  v10 = v62;
  v11 = v63;
  v50 = v64;
  v51 = v59;
  v52 = v65;
  v43 = v61;
  v12 = (v61 + 64) >> 6;
  v45 = a1;
  sub_231369EE0();
  v44 = a3;

  v47 = v12;
  v48 = v60;
  v49 = a5;
  if (v63)
  {
    while (1)
    {
      v67 = a4;
      v13 = v10;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = (*(v51 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(v51 + 56) + 8 * v15);
      v56 = *v16;
      v57 = v17;
      v58 = v18;
      sub_231369EE0();
      sub_231369EE0();
      v50(&v53, &v56);

      v19 = v53;
      v20 = v54;
      v21 = v55;
      v22 = *a5;
      v30 = sub_231215F6C(v53, v54);
      v31 = *(v22 + 16);
      v32 = (v23 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v34 = v23;
      if (*(v22 + 24) >= v33)
      {
        if ((v67 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44F00, &qword_23137A230);
          sub_23136A710();
        }
      }

      else
      {
        sub_2312B4318(v33, v67 & 1, v24, v25, v26, v27, v28, v29, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
        v35 = sub_231215F6C(v19, v20);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_24;
        }

        v30 = v35;
      }

      v11 &= v11 - 1;
      v37 = *a5;
      if (v34)
      {
        v56 = *(v37[7] + 8 * v30);
        sub_231369EE0();
        sub_231267390(v21);

        *(v37[7] + 8 * v30) = v56;
      }

      else
      {
        v37[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v37[6] + 16 * v30);
        *v38 = v19;
        v38[1] = v20;
        *(v37[7] + 8 * v30) = v21;
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v37[2] = v41;
      }

      a4 = 1;
      v10 = v13;
      v9 = v48;
      a5 = v49;
      v12 = v47;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v10;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        sub_2311D3BBC(v51);
      }

      v11 = *(v9 + 8 * v13);
      ++v14;
      if (v11)
      {
        v67 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_231361EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_231367890();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a1, a4);
  sub_231369EE0();
  return OUTLINED_FUNCTION_44_0();
}

uint64_t sub_231361F28()
{
  sub_231367E50();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_44_0();
  v1(v0);

  return sub_231369EE0();
}

uint64_t sub_231361F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2311D1D6C(a4, a1);
  sub_231369EE0();
  return a2;
}

uint64_t sub_231362010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2311DDBBC(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_231362054()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231241E68;

  return sub_231361444(v3, v0 + 16, v0 + 56, v0 + 96);
}

uint64_t sub_2313620F0(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v30 = a2;
  v32[3] = type metadata accessor for DefaultToolRetriever();
  v32[4] = &off_2845F6F40;
  v32[0] = a1;
  v5 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_channel;
  v6 = *MEMORY[0x277D612F0];
  v7 = sub_231369330();
  (*(*(v7 - 8) + 104))(a3 + v5, v6, v7);
  v29 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_typesToIgnore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D88, &qword_2313706D0);
  v8 = sub_231369D50();
  v9 = *(v8 - 8);
  v27 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23136C1C0;
  v12 = (v11 + v10);
  v13 = sub_231369D40();
  v14 = swift_allocBox();
  v15 = *(*(v13 - 8) + 104);
  v15(v16, *MEMORY[0x277D72CB0], v13);
  *v12 = v14;
  v17 = *MEMORY[0x277D72D50];
  v18 = *(v9 + 104);
  v18(v12, v17, v8);
  v19 = swift_allocBox();
  v15(v20, *MEMORY[0x277D72CE0], v13);
  *(v12 + v27) = v19;
  v18((v12 + v27), v17, v8);
  *(a3 + v29) = v11;
  sub_2311CF324(v32, a3 + OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_toolRetriever);
  if (v30 == 2)
  {
    v21 = sub_231367570();
    v31[3] = v21;
    v31[4] = sub_231362554(&qword_280F7CAC0, 255, MEMORY[0x277D60980], MEMORY[0x277D60960]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60978], v21);
    LOBYTE(v21) = sub_231366960();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v23 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_enabled;
    v24 = v21 & 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v23 = OBJC_IVAR____TtC15SiriSuggestions26ContextualActionsGenerator_enabled;
    v24 = a2 & 1;
  }

  *(a3 + v23) = v24;
  return a3;
}

uint64_t sub_231362438(uint64_t a1, unsigned __int8 a2)
{
  v14 = type metadata accessor for DefaultToolRetriever();
  v15 = &off_2845F6F40;
  v13[0] = a1;
  type metadata accessor for ContextualActionsGenerator(0);
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_2313620F0(*v8, a2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

uint64_t sub_231362554(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_231362618(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_23136263C, 0, 0);
}

uint64_t sub_23136263C()
{
  if (qword_280F81F00 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_280F81F00);
  }

  v1 = sub_2313673A0();
  __swift_project_value_buffer(v1, qword_280F8E628);
  v0[5] = sub_231367760();
  OUTLINED_FUNCTION_1_50();
  v0[6] = sub_231364ECC(v2, 255, v3, MEMORY[0x277D60A00]);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_231367750();
  OUTLINED_FUNCTION_0_44();
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_5_36(v4);

  return v6(v5);
}

uint64_t sub_23136277C()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  *(v1 + 168) = v2;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_231362880, 0, 0);
}

uint64_t sub_231362880()
{
  OUTLINED_FUNCTION_8();
  sub_231362CC8(*(v0 + 168), v0 + 96);
  if (*(v0 + 120))
  {
    sub_2311D38A8((v0 + 96), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23136B670;
    sub_2311D38A8((v0 + 56), v1 + 32);
  }

  else
  {
    sub_231228E9C(v0 + 96, &qword_27DD44F10, &qword_23137A3E0);

    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_231362970(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_231362994, 0, 0);
}

uint64_t sub_231362994()
{
  if (qword_27DD42DF8 != -1)
  {
    OUTLINED_FUNCTION_3_44(&qword_27DD42DF8);
  }

  v1 = sub_2313673A0();
  __swift_project_value_buffer(v1, qword_27DD4BA48);
  v0[5] = sub_231367760();
  OUTLINED_FUNCTION_1_50();
  v0[6] = sub_231364ECC(v2, 255, v3, MEMORY[0x277D60A00]);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_231367750();
  OUTLINED_FUNCTION_0_44();
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_5_36(v4);

  return v6(v5);
}

uint64_t sub_231362AD4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  *(v1 + 168) = v2;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_231362BD8, 0, 0);
}

uint64_t sub_231362BD8()
{
  OUTLINED_FUNCTION_8();
  sub_2313633B8(*(v0 + 168), v0 + 96);
  if (*(v0 + 120))
  {
    sub_2311D38A8((v0 + 96), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23136B670;
    sub_2311D38A8((v0 + 56), v1 + 32);
  }

  else
  {
    sub_231228E9C(v0 + 96, &qword_27DD44F10, &qword_23137A3E0);

    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_231362CC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v45 = sub_231367AB0();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v3 = (&v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2313698C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  sub_231369110();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();
  v13 = &unk_280F81000;
  if (os_log_type_enabled(v11, v12))
  {
    v41 = v7;
    v42 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v50 = v15;
    *v14 = 136315138;
    strcpy(v52, "intentBridge_");
    HIWORD(v52[1]) = -4864;
    if (qword_280F81F00 != -1)
    {
      swift_once();
    }

    v16 = sub_2313673A0();
    __swift_project_value_buffer(v16, qword_280F8E628);
    v17 = sub_231367380();
    MEMORY[0x23192A730](v17);

    v18 = sub_2311CFD58(v52[0], v52[1], &v50);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2311CB000, v11, v12, "Configuring SuggestionBuilder for suggestion bridge. suggestionId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x23192B930](v15, -1, -1);
    MEMORY[0x23192B930](v14, -1, -1);

    v19 = *(v42 + 8);
    v19(v10, v4);
    v7 = v41;
    v13 = &unk_280F81000;
  }

  else
  {

    v19 = *(v5 + 8);
    v19(v10, v4);
  }

  sub_231364AC8(&v50);
  if (v51)
  {
    sub_2311D38A8(&v50, v52);
    strcpy(&v50, "intentBridge_");
    HIWORD(v50) = -4864;
    if (v13[480] != -1)
    {
      swift_once();
    }

    v20 = sub_2313673A0();
    __swift_project_value_buffer(v20, qword_280F8E628);
    v21 = sub_231367380();
    MEMORY[0x23192A730](v21);

    v22 = type metadata accessor for IntentDetailsDialogProvider();
    v23 = swift_allocObject();
    v3[3] = v22;
    v3[4] = sub_231364ECC(qword_280F7F570, 255, type metadata accessor for IntentDetailsDialogProvider, &unk_2313779B0);
    *v3 = v23;
    v24 = v43;
    v25 = v45;
    v26 = (*(v43 + 104))(v3, *MEMORY[0x277D60A88], v45);
    MEMORY[0x28223BE20](v26);
    v27 = v44;
    *(&v40 - 2) = v52;
    *(&v40 - 1) = v27;
    sub_231368EC0();

    (*(v24 + 8))(v3, v25);
    if (qword_280F81EF0 != -1)
    {
      swift_once();
    }

    sub_231364E54(&xmmword_280F8E600, &v48);
    if (v49)
    {
      sub_2311D38A8(&v48, &v50);
      sub_231368EA0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    }

    else
    {
      sub_231228E9C(&v48, &qword_27DD43258, &unk_23136BD00);
    }

    sub_231368ED0();
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  else
  {
    sub_231228E9C(&v50, &qword_27DD43878, &unk_23136E490);
    sub_2313690F0();
    v28 = sub_2313698A0();
    v29 = v7;
    v30 = sub_23136A3A0();
    if (os_log_type_enabled(v28, v30))
    {
      v46 = v4;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v50 = v32;
      *v31 = 136315138;
      strcpy(v52, "intentBridge_");
      HIWORD(v52[1]) = -4864;
      if (v13[480] != -1)
      {
        swift_once();
      }

      v33 = sub_2313673A0();
      __swift_project_value_buffer(v33, qword_280F8E628);
      v34 = sub_231367380();
      MEMORY[0x23192A730](v34);

      v35 = sub_2311CFD58(v52[0], v52[1], &v50);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2311CB000, v28, v30, "Configuring builder for suggestionId: %s. Unable to get intentDetailsResolver. Returning nil ownerDefinition", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x23192B930](v32, -1, -1);
      MEMORY[0x23192B930](v31, -1, -1);

      v36 = v29;
      v37 = v46;
    }

    else
    {

      v36 = v29;
      v37 = v4;
    }

    v19(v36, v37);
    v39 = v47;
    *(v47 + 32) = 0;
    result = 0.0;
    *v39 = 0u;
    v39[1] = 0u;
  }

  return result;
}

double sub_2313633B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v45 = sub_231367AB0();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v3 = (&v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2313698C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  sub_231369110();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();
  v13 = 0x27DD42000uLL;
  if (os_log_type_enabled(v11, v12))
  {
    v41 = v7;
    v42 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v50 = v15;
    *v14 = 136315138;
    strcpy(v52, "intentBridge_");
    HIWORD(v52[1]) = -4864;
    if (qword_27DD42DF8 != -1)
    {
      swift_once();
    }

    v16 = sub_2313673A0();
    __swift_project_value_buffer(v16, qword_27DD4BA48);
    v17 = sub_231367380();
    MEMORY[0x23192A730](v17);

    v18 = sub_2311CFD58(v52[0], v52[1], &v50);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2311CB000, v11, v12, "Configuring SuggestionBuilder for suggestion bridge. suggestionId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x23192B930](v15, -1, -1);
    MEMORY[0x23192B930](v14, -1, -1);

    v19 = *(v42 + 8);
    v19(v10, v4);
    v7 = v41;
    v13 = 0x27DD42000;
  }

  else
  {

    v19 = *(v5 + 8);
    v19(v10, v4);
  }

  sub_2313643E4(&v50);
  if (v51)
  {
    sub_2311D38A8(&v50, v52);
    strcpy(&v50, "intentBridge_");
    HIWORD(v50) = -4864;
    if (*(v13 + 3576) != -1)
    {
      swift_once();
    }

    v20 = sub_2313673A0();
    __swift_project_value_buffer(v20, qword_27DD4BA48);
    v21 = sub_231367380();
    MEMORY[0x23192A730](v21);

    v22 = type metadata accessor for IntentDetailsDialogProvider();
    v23 = swift_allocObject();
    v3[3] = v22;
    v3[4] = sub_231364ECC(qword_280F7F570, 255, type metadata accessor for IntentDetailsDialogProvider, &unk_2313779B0);
    *v3 = v23;
    v24 = v43;
    v25 = v45;
    v26 = (*(v43 + 104))(v3, *MEMORY[0x277D60A88], v45);
    MEMORY[0x28223BE20](v26);
    v27 = v44;
    *(&v40 - 2) = v52;
    *(&v40 - 1) = v27;
    sub_231368EC0();

    (*(v24 + 8))(v3, v25);
    if (qword_27DD42E08 != -1)
    {
      swift_once();
    }

    sub_231364E54(&qword_27DD4BA68, &v48);
    if (v49)
    {
      sub_2311D38A8(&v48, &v50);
      sub_231368EA0();

      __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    }

    else
    {
      sub_231228E9C(&v48, &qword_27DD43258, &unk_23136BD00);
    }

    sub_231368ED0();
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  else
  {
    sub_231228E9C(&v50, &qword_27DD43878, &unk_23136E490);
    sub_2313690F0();
    v28 = sub_2313698A0();
    v29 = v7;
    v30 = sub_23136A3A0();
    if (os_log_type_enabled(v28, v30))
    {
      v46 = v4;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v50 = v32;
      *v31 = 136315138;
      strcpy(v52, "intentBridge_");
      HIWORD(v52[1]) = -4864;
      if (*(v13 + 3576) != -1)
      {
        swift_once();
      }

      v33 = sub_2313673A0();
      __swift_project_value_buffer(v33, qword_27DD4BA48);
      v34 = sub_231367380();
      MEMORY[0x23192A730](v34);

      v35 = sub_2311CFD58(v52[0], v52[1], &v50);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2311CB000, v28, v30, "Configuring builder for suggestionId: %s. Unable to get intentDetailsResolver. Returning nil ownerDefinition", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x23192B930](v32, -1, -1);
      MEMORY[0x23192B930](v31, -1, -1);

      v36 = v29;
      v37 = v46;
    }

    else
    {

      v36 = v29;
      v37 = v4;
    }

    v19(v36, v37);
    v39 = v47;
    *(v47 + 32) = 0;
    result = 0.0;
    *v39 = 0u;
    v39[1] = 0u;
  }

  return result;
}

uint64_t sub_231363ABC(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311CF324(a2, v29);
  sub_231368540();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_231367F20();
  sub_231368510();
  sub_231368B60();

  sub_231228E9C(v29, &qword_27DD43878, &unk_23136E490);
  (*(v6 + 8))(v8, v4);
  v9 = a1[3];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IntentDetailsActionKeyMapper();
  inited = swift_initStaticObject();
  v29[3] = v14;
  v29[4] = sub_231364ECC(&unk_280F7EF30, 255, type metadata accessor for IntentDetailsActionKeyMapper, &unk_23136D4E0);
  v29[0] = inited;
  sub_231368B20();
  (*(v11 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v16 = a1[3];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F81F00 != -1)
  {
    swift_once();
  }

  v21 = sub_2313673A0();
  __swift_project_value_buffer(v21, qword_280F8E628);
  sub_231368AC0();
  (*(v18 + 8))(v20, v16);
  v22 = a1[3];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v29[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F81EE8 != -1)
  {
    swift_once();
  }

  sub_231369EE0();
  sub_231368B30();

  return (*(v24 + 8))(v26, v22);
}

uint64_t sub_231363F40(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311CF324(a2, v29);
  sub_231368540();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_231367F20();
  sub_231368510();
  sub_231368B60();

  sub_231228E9C(v29, &qword_27DD43878, &unk_23136E490);
  (*(v6 + 8))(v8, v4);
  v9 = a1[3];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IntentDetailsActionKeyMapper();
  inited = swift_initStaticObject();
  v29[3] = v14;
  v29[4] = sub_231364ECC(&unk_280F7EF30, 255, type metadata accessor for IntentDetailsActionKeyMapper, &unk_23136D4E0);
  v29[0] = inited;
  sub_231368B20();
  (*(v11 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  v16 = a1[3];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DD42DF8 != -1)
  {
    swift_once();
  }

  v21 = sub_2313673A0();
  __swift_project_value_buffer(v21, qword_27DD4BA48);
  sub_231368AC0();
  (*(v18 + 8))(v20, v16);
  v22 = a1[3];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v29[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DD42E00 != -1)
  {
    swift_once();
  }

  sub_231369EE0();
  sub_231368B30();

  return (*(v24 + 8))(v26, v22);
}

double sub_2313643E4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitIntentService();
  v7 = sub_231368EF0();
  if (v7)
  {
    v8 = v7;
    if (sub_23125D7A0())
    {
      sub_23120DE34(0, (v8 & 0xC000000000000001) == 0, v8);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23192AD10](0, v8);
      }

      else
      {
        v9 = *(v8 + 32);
      }

      if (qword_27DD42DF8 != -1)
      {
        OUTLINED_FUNCTION_3_44(&qword_27DD42DF8);
      }

      v10 = sub_2313673A0();
      __swift_project_value_buffer(v10, qword_27DD4BA48);
      v28 = sub_231367380();
      v29 = v11;
      MEMORY[0x23192A730](95, 0xE100000000000000);
      v12 = OUTLINED_FUNCTION_4_35();
      MEMORY[0x23192A730](v12);
      v13 = v28;
      v14 = v29;
      v30 = v6;
      v31 = &off_2845F63B0;
      v28 = v9;
      v15 = type metadata accessor for ToolKitIntentDetailsResolver();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v6);
      v18 = MEMORY[0x28223BE20](v17);
      v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20, v18);
      v22 = *v20;
      v16[7] = v6;
      v16[8] = &off_2845F63B0;
      v16[3] = v14;
      v16[4] = v22;
      v16[2] = v13;

      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      *(a1 + 24) = v15;
      *(a1 + 32) = sub_231364ECC(&qword_27DD44F20, 255, type metadata accessor for ToolKitIntentDetailsResolver, &unk_231376590);

      *a1 = v16;
      return result;
    }
  }

  sub_2313690F0();
  v24 = sub_2313698A0();
  v25 = sub_23136A3A0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2311CB000, v24, v25, "Fetching the ToolKitIntentDetailsResolver. Unable to get toolKitIntentService. Returning nil", v26, 2u);
    MEMORY[0x23192B930](v26, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_231364744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v0 = sub_231367D80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136C1C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D60B78], v0);
  result = (v6)(v5 + v2, *MEMORY[0x277D60B80], v0);
  qword_27DD4BA60 = v4;
  return result;
}

uint64_t sub_231364854()
{
  strcpy(v6, "intentBridge_");
  HIWORD(v6[1]) = -4864;
  if (qword_27DD42DF8 != -1)
  {
    swift_once();
  }

  v0 = sub_2313673A0();
  __swift_project_value_buffer(v0, qword_27DD4BA48);
  v1 = sub_231367380();
  MEMORY[0x23192A730](v1);

  v2 = v6[1];
  v3 = type metadata accessor for AppIntentsSignalConfigurator();
  v4 = swift_allocObject();
  *(v4 + 16) = v6[0];
  *(v4 + 24) = v2;
  qword_27DD4BA80 = v3;
  result = sub_231364ECC(&qword_27DD44F18, 255, type metadata accessor for AppIntentsSignalConfigurator, &unk_231373E40);
  qword_27DD4BA88 = result;
  qword_27DD4BA68 = v4;
  return result;
}

uint64_t sub_231364998(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311F93E8;

  return sub_231362970(a1, a2);
}

uint64_t sub_231364A70(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_2313673A0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_231364AC8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280F81F00 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_280F81F00);
  }

  v2 = sub_2313673A0();
  __swift_project_value_buffer(v2, qword_280F8E628);
  v8 = sub_231367380();
  v9 = v3;
  MEMORY[0x23192A730](95, 0xE100000000000000);
  v4 = OUTLINED_FUNCTION_4_35();
  MEMORY[0x23192A730](v4);
  v5 = type metadata accessor for ContextValuesIntentDetailsResolver();
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 24) = v9;
  a1[3] = v5;
  result = sub_231364ECC(&qword_280F7D730, 255, type metadata accessor for ContextValuesIntentDetailsResolver, &unk_231376500);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_231364BC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v0 = sub_231367D80();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277D60B80], v0);
  qword_280F8E5F8 = v3;
  return result;
}

double sub_231364CA8()
{
  qword_280F8E620 = 0;
  result = 0.0;
  xmmword_280F8E600 = 0u;
  *algn_280F8E610 = 0u;
  return result;
}

uint64_t sub_231364CE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311F4480;

  return sub_231362618(a1, a2);
}

uint64_t sub_231364D9C(uint64_t a1, uint64_t a2)
{
  result = sub_231364ECC(&qword_280F81EE0, a2, type metadata accessor for INIntentBridgeFactory, &unk_23137A330);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_231364DF4(uint64_t a1, uint64_t a2)
{
  result = sub_231364ECC(&qword_27DD43C00, a2, type metadata accessor for AppIntentBridgeFactory, &unk_23137A388);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_231364E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43258, &unk_23136BD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231364ECC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_231364F30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23136C1C0;
  sub_2311CF324(a2, v15);
  v6 = type metadata accessor for RecentUsagePolicy();
  swift_allocObject();
  v7 = sub_2312EC7E0(v15, v4);
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_2845F62D0;
  *(v5 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v8 = sub_231367D80();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23136B670;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D60B98], v8);
  sub_2311CF324(a2, v15);
  v12 = type metadata accessor for NotShownPreviousSuggestionTooSoonPolicy();
  swift_allocObject();
  v13 = sub_2312EA284(v15, v11, v3);
  *(v5 + 96) = v12;
  *(v5 + 104) = &off_2845F6310;
  *(v5 + 72) = v13;
  return v5;
}

uint64_t sub_231365104()
{
  v1 = *(v0 + 432);
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_8_0(v3);

  return v6(v4);
}

uint64_t sub_231365220()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231365308()
{
  v31 = v0;
  v1 = 0;
  v2 = *(v0 + 448);
  v28 = *(v2 + 16);
  v3 = MEMORY[0x277D84F90];
  v27 = v2;
  v4 = v2 + 32;
  while (v28 != v1)
  {
    if (v1 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    sub_2311CF324(v4, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_231367DD0();
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    sub_231368720();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    sub_2311CF324(v0 + 136, v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436B0, &qword_23137A4E0);
    sub_231368620();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    else
    {
      v5 = type metadata accessor for FilterToFinalizerAdaptor();
      sub_2311CF324(v0 + 136, v0 + 256);
      v6 = *(v0 + 280);
      v7 = *(v0 + 288);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v6);
      v9 = *(v6 - 8);
      v10 = swift_task_alloc();
      (*(v9 + 16))(v10, v8, v6);
      v11 = sub_231365F8C(v10, v5, v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

      *(v0 + 120) = v5;
      OUTLINED_FUNCTION_0_45();
      *(v0 + 128) = sub_231366024(qword_280F80988, v12);
      *(v0 + 96) = v11;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    if (*(v0 + 120))
    {
      sub_2311D38A8((v0 + 96), v0 + 56);
      sub_2311D38A8((v0 + 56), v0 + 296);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23126EF9C(0);
        v3 = v21;
        v30 = v21;
      }

      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23126EF9C(v14 > 1);
        v3 = v22;
        v30 = v22;
      }

      v16 = *(v0 + 320);
      v17 = *(v0 + 328);
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v16);
      v19 = *(v16 - 8);
      v20 = swift_task_alloc();
      (*(v19 + 16))(v20, v18, v16);
      sub_2311EA1F8(v15, v20, &v30, v16, v17);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    }

    else
    {
      sub_231366064(v0 + 96);
    }

    v4 += 40;
    ++v1;
  }

  v23 = *(v0 + 432);

  *(v0 + 416) = v3;
  v24 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v23[5]);
  v29 = (*(v24 + 8) + **(v24 + 8));
  v25 = swift_task_alloc();
  *(v0 + 456) = v25;
  *v25 = v0;
  v26 = OUTLINED_FUNCTION_8_0(v25);

  v29(v26);
}

uint64_t sub_231365778()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 464) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231365860()
{
  sub_23126775C(*(v0 + 464));
  v1 = sub_2313684F0();
  v2 = sub_2313684E0();
  v3 = MEMORY[0x277D60FA0];
  *(v0 + 360) = v1;
  *(v0 + 368) = v3;
  *(v0 + 336) = v2;
  v4 = type metadata accessor for FilterToFinalizerAdaptor();
  v5 = swift_allocObject();
  sub_2311D38A8((v0 + 336), v5 + 16);
  v6 = *(v0 + 416);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23126EF9C(0);
    v6 = v13;
  }

  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_23126EF9C(v7 > 1);
    v6 = v14;
  }

  *(v0 + 400) = v4;
  OUTLINED_FUNCTION_0_45();
  *(v0 + 408) = sub_231366024(v9, v10);
  *(v0 + 376) = v5;
  *(v6 + 16) = v8 + 1;
  sub_2311D38A8((v0 + 376), v6 + 40 * v8 + 32);
  v11 = *(v0 + 8);

  return v11(v6);
}

uint64_t sub_2313659D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231365A64;

  return sub_2313650F0();
}

uint64_t sub_231365A64()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_231365B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_231365B70()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_231365C30;
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x2821C6CA0](v6, v5, v2, v3);
}

uint64_t sub_231365C30()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231365D18()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 56) == 1)
  {
    sub_2311CF324(*(v0 + 24), *(v0 + 16));
  }

  else
  {
    v1 = *(v0 + 16);
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231365DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_231365E6C;

  return sub_231365B58(a1, a2, a3);
}

uint64_t sub_231365E6C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_231365F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  sub_2311D38A8(&v9, v7 + 16);
  return v7;
}

uint64_t sub_231366024(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FilterToFinalizerAdaptor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231366064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44F28, &qword_23137A4E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313660CC()
{
  v0 = sub_2313698C0();
  __swift_allocate_value_buffer(v0, qword_27DD44F30);
  __swift_project_value_buffer(v0, qword_27DD44F30);
  sub_2313691B0();
  return sub_2313698B0();
}

uint64_t static Logger.generalLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DD42E18 != -1)
  {
    swift_once();
  }

  v2 = sub_2313698C0();
  v3 = __swift_project_value_buffer(v2, qword_27DD44F30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2313661FC()
{
  sub_23128DC20(v0[7], (v0 + 2));
  if (v0[5])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v1 = sub_231368320();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = v4 | 0x2000000000000000;
  }

  else
  {
    sub_23128DC90((v0 + 2));
    v5 = 0xF000000000000007;
  }

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2313662EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_2313661DC(a1);
}