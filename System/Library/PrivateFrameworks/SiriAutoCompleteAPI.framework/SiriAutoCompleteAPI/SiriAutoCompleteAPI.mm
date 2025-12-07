void *SiriAutoCompleteXPCService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  sub_1DA366DAC(v0[20], v0[21], v0[22]);
  return v0;
}

uint64_t SiriAutoCompleteXPCService.__deallocating_deinit()
{
  SiriAutoCompleteXPCService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 185, 7);
}

uint64_t SiriAutoCompleteXPCService.init(client:directAccessService:featureFlagsProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_1DA394214();
  *(v3 + 136) = sub_1DA394204();
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 169) = 0u;
  sub_1DA366D48(a1, v3 + 16);
  sub_1DA366D48(a2, v3 + 56);
  sub_1DA366D48(a3, v3 + 96);
  return v3;
}

uint64_t sub_1DA366D48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

void sub_1DA366DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1DA366FCC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD338, &qword_1DA3955F8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DA36702C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD360, &qword_1DA395748);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DA36705C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760);
  }

  else
  {
    return OUTLINED_FUNCTION_8_0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1DA367088()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD378, &qword_1DA395828);
  }

  else
  {
    return OUTLINED_FUNCTION_8_0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1DA3670B4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD380, &unk_1DA395830);
  }

  else
  {
    return OUTLINED_FUNCTION_8_0(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1DA3671E8()
{

  OUTLINED_FUNCTION_17_2();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA36722C()
{

  OUTLINED_FUNCTION_17_2();

  return MEMORY[0x1EEE6BDD0](v0);
}

SiriAutoCompleteAPI::AutoCompletePhraseSource_optional __swiftcall AutoCompletePhraseSource.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 8)
  {
    v2 = 8;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DA367304(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = "tooManyCandidates";
  v5 = a1;
  v6 = "duplicateActionId";
  v7 = 1701736302;
  v8 = "stopwordsOnlyMatch";
  switch(v5)
  {
    case 1:
      v7 = 0x6B636F6C42707061;
      v3 = 0xEA00000000006465;
      break;
    case 2:
      v3 = 0x80000001DA396AA0;
      v7 = 0xD000000000000012;
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_42();
      v9 = v6 - 32;
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_44();
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_42();
      v9 = v4 - 32;
LABEL_7:
      v3 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v10 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6B636F6C42707061;
      v10 = 0xEA00000000006465;
      break;
    case 2:
      v10 = (v8 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v11 = v6 - 32;
      goto LABEL_14;
    case 4:
      v2 = 0x694D656C61636F6CLL;
      v10 = 0xEF686374616D7373;
      break;
    case 5:
      v2 = 0xD000000000000011;
      v11 = v4 - 32;
LABEL_14:
      v10 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v7 == v2 && v3 == v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA394934();
  }

  return v13 & 1;
}

uint64_t sub_1DA3674B8(unsigned __int8 a1, char a2)
{
  v2 = 0x65646E496D6F7266;
  v3 = 0xE900000000000078;
  v4 = a1;
  v5 = 0x65646E496D6F7266;
  switch(v4)
  {
    case 1:
      v5 = 0x686361436D6F7266;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 3:
      v5 = 0xD000000000000013;
      v3 = 0x80000001DA396A70;
      break;
    default:
      break;
  }

  v6 = 0xE900000000000078;
  switch(a2)
  {
    case 1:
      v2 = 0x686361436D6F7266;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 3:
      v2 = 0xD000000000000013;
      v6 = 0x80000001DA396A70;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA394934();
  }

  return v8 & 1;
}

uint64_t sub_1DA36760C(unsigned __int8 a1, char a2)
{
  v2 = 0x657361726870;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x657361726870;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6449656C646E7562;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v3 = 0x80000001DA3969D0;
      break;
    case 3:
      v5 = 0x656372756F73;
      break;
    case 4:
      v5 = 0x6E65644964697575;
      v3 = 0xEE00726569666974;
      break;
    case 5:
      v5 = 0x72656E6547776B7ALL;
      v3 = 0xEF64496E6F697461;
      break;
    case 6:
      v5 = 0x7A696C616D726F6ELL;
      v3 = 0xEF65726F63536465;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x746E756F43706174;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6449656C646E7562;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v6 = 0x80000001DA3969D0;
      break;
    case 3:
      v2 = 0x656372756F73;
      break;
    case 4:
      v2 = 0x6E65644964697575;
      v6 = 0xEE00726569666974;
      break;
    case 5:
      v2 = 0x72656E6547776B7ALL;
      v6 = 0xEF64496E6F697461;
      break;
    case 6:
      v2 = 0x7A696C616D726F6ELL;
      v6 = 0xEF65726F63536465;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v2 = 0x746E756F43706174;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA394934();
  }

  return v8 & 1;
}

uint64_t sub_1DA36785C(void *a1, char a2, uint64_t a3)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 5:
      OUTLINED_FUNCTION_36();
      break;
    case 4:
      OUTLINED_FUNCTION_44();
      break;
    default:
      break;
  }

  sub_1DA394354();
}

uint64_t sub_1DA367940(void *a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_36();
      break;
    default:
      break;
  }

  sub_1DA394354();
}

uint64_t sub_1DA367A2C(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_36();
      break;
    default:
      break;
  }

  sub_1DA394354();
}

uint64_t sub_1DA367B6C@<X0>(uint64_t *a1@<X8>)
{
  result = AutoCompletePhraseSource.rawValue.getter();
  *a1 = result;
  return result;
}

SiriAutoCompleteAPI::AutoCompleteTableColumnNames_optional __swiftcall AutoCompleteTableColumnNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA394844();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoCompleteTableColumnNames.rawValue.getter()
{
  result = 0x657361726870;
  switch(*v0)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6E65644964697575;
      break;
    case 5:
      result = 0x72656E6547776B7ALL;
      break;
    case 6:
      result = 0x7A696C616D726F6ELL;
      break;
    case 7:
      result = 0x746E756F43706174;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA367DCC@<X0>(unint64_t *a1@<X8>)
{
  result = AutoCompleteTableColumnNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA367DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA367E38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA367E38()
{
  OUTLINED_FUNCTION_9();
  swift_beginAccess();

  return OUTLINED_FUNCTION_26();
}

uint64_t sub_1DA367E7C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t (*sub_1DA367EC8(uint64_t a1))()
{
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DA367F14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA367FA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA367F58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1DA367FA0()
{
  OUTLINED_FUNCTION_9();
  swift_beginAccess();

  return OUTLINED_FUNCTION_26();
}

uint64_t sub_1DA367FE4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t (*sub_1DA368030(uint64_t a1))()
{
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  return j__swift_endAccess;
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

uint64_t sub_1DA3681B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA368224();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA368224()
{
  v1 = (v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DA368278()
{
  OUTLINED_FUNCTION_34();
  v3 = (v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;
}

uint64_t sub_1DA36831C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DA368384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DA368384()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DA3683CC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  OUTLINED_FUNCTION_21();
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1DA368474@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA3684C8();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3684C8()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA368508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_21();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DA3685C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DA368C84(a1, &v6 - v3, &qword_1ECBAD2D0, &unk_1DA395FF0);
  return sub_1DA3686D4(v4);
}

uint64_t sub_1DA368670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  return sub_1DA368C84(v1 + v3, a1, &qword_1ECBAD2D0, &unk_1DA395FF0);
}

uint64_t sub_1DA3686D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  sub_1DA368730(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DA368730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA36885C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_10();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t AutoCompletePhrase.__allocating_init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, void *a18)
{
  v60 = a6;
  v61 = a7;
  v62 = a1;
  v63 = a2;
  v53 = a18;
  v54 = a16;
  v58 = a13;
  v59 = a5;
  v57 = a12;
  v55 = a15;
  v56 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D8, &qword_1DA394FE0);
  OUTLINED_FUNCTION_23(v20);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  OUTLINED_FUNCTION_23(v24);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v28);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_28();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2E0, &qword_1DA394FE8);
  OUTLINED_FUNCTION_23(v30);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v52 - v32;

  v34 = *a9;
  if (a8)
  {
    v52 = a8;
  }

  else
  {
    v64[0] = v62;
    v64[1] = v63;
    v65[0] = 32;
    v65[1] = 0xE100000000000000;
    v64[5] = 95;
    v64[6] = 0xE100000000000000;
    sub_1DA368C30();
    OUTLINED_FUNCTION_9();
    v61 = sub_1DA3945F4();
    v52 = v35;
  }

  LOBYTE(v65[0]) = v34;
  sub_1DA368C84(a10, v33, &qword_1ECBAD2E0, &qword_1DA394FE8);
  sub_1DA368C84(a14, v18, &qword_1ECBAD2D0, &unk_1DA395FF0);
  sub_1DA368C84(a17, v27, &qword_1ECBAD2C8, &unk_1DA394FD0);
  v36 = v53;
  sub_1DA368CE0(v53, v64);
  sub_1DA3941C4();
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  type metadata accessor for AutoCompletePhrase(0);
  v41 = swift_allocObject();
  v51 = v54 & 1;
  v50 = v55;
  v49 = v58;
  v48 = v57;
  v47 = v56;
  OUTLINED_FUNCTION_9();
  AutoCompletePhrase.init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(v42, v43, v44, v45, v59, v60, v61, v52, v65, v33, v47, v48, v49, v18, v50, v51, v27, v64, 0x53552D6E65, 0xE500000000000000, v23);
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_1DA36CB60(a17, &qword_1ECBAD2C8, &unk_1DA394FD0);
  sub_1DA36CB60(a14, &qword_1ECBAD2D0, &unk_1DA395FF0);
  sub_1DA36CB60(a10, &qword_1ECBAD2E0, &qword_1DA394FE8);
  return v41;
}

unint64_t sub_1DA368C30()
{
  result = qword_1EDCC5078[0];
  if (!qword_1EDCC5078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC5078);
  }

  return result;
}

uint64_t sub_1DA368C84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_26();
  v6(v5);
  return a2;
}

uint64_t sub_1DA368CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AutoCompletePhrase.__allocating_init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v27 = swift_allocObject();
  AutoCompletePhrase.init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16 & 1, a17, a18, a19, a20, a21);
  return v27;
}

uint64_t type metadata accessor for AutoCompletePhrase(uint64_t a1)
{
  result = qword_1EDCC5618;
  if (!qword_1EDCC5618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AutoCompletePhrase.init(phrase:invocationPhrase:bundleId:actionIdentifier:source:iconInfo:zkwGenerationId:tapCount:recentTapTimeStamp:normalizedScore:toolInvocation:tokenizer:locale:suggestionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = v21;
  v130 = a8;
  v129 = a7;
  v128 = a6;
  v137 = a5;
  v141 = a4;
  v135 = a3;
  v149 = a18;
  v145 = a17;
  v147 = a14;
  v132 = a12;
  v131 = a11;
  v148 = a10;
  sub_1DA3941C4();
  OUTLINED_FUNCTION_0();
  v142 = v27;
  v143 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_25(v29 - v28);
  v125 = sub_1DA3941E4();
  OUTLINED_FUNCTION_0();
  v124 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_25(v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2E0, &qword_1DA394FE8);
  OUTLINED_FUNCTION_23(v34);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_28();
  v140 = sub_1DA394264();
  OUTLINED_FUNCTION_0();
  v139 = v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v122 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25(&v121 - v40);
  v41 = sub_1DA393F34();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  v144 = *a9;
  v48 = (v23 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  *v48 = 0;
  v48[1] = 0;
  v49 = v23 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  *v49 = 0;
  *(v49 + 8) = 1;
  v50 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  sub_1DA393F04();
  v136 = v50;
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = type metadata accessor for AutoCompletePhrase(0);
  v56 = a1;
  v57 = v55;
  sub_1DA369990(v56, a2);
  OUTLINED_FUNCTION_43();

  v58 = v141;
  v146 = v23;
  v23[2] = v57;
  v138 = (v23 + 2);
  v23[3] = v50;
  if (v58)
  {
    v57 = v135;
  }

  else
  {

    v58 = v50;
  }

  v141 = a21;
  v134 = a16;
  v135 = a15;
  v59 = v146;
  v146[4] = v57;
  v59[5] = v58;
  v60 = v137;
  v61 = v128;
  v59[6] = v137;
  v59[7] = v61;
  v62 = (v59 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v63 = v130;
  *v62 = v129;
  v62[1] = v63;

  sub_1DA393F24();
  v64 = v47;
  v65 = v59;
  (*(v43 + 32))(v59 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier, v64, v41);
  *(v59 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) = v144;
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  v66 = v132;
  *v48 = v131;
  v48[1] = v66;

  sub_1DA368C84(v148, v22, &qword_1ECBAD2E0, &qword_1DA394FE8);
  v67 = v140;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v140);
  v133 = a13;
  if (EnumTagSinglePayload != 1)
  {

    v81 = *(v139 + 32);
    v82 = v126;
    v83 = OUTLINED_FUNCTION_40();
    v81(v83);
    (v81)(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v82, v67);
    v70 = v147;
    v71 = v145;
LABEL_16:
    v73 = v136;
    v74 = v134;
    v75 = v135;
    goto LABEL_18;
  }

  sub_1DA36CB60(v22, &qword_1ECBAD2E0, &qword_1DA394FE8);
  v69 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v69 = v60 & 0xFFFFFFFFFFFFLL;
  }

  v70 = v147;
  v71 = v145;
  if (!v69)
  {

    v84 = v124;
    v85 = v123;
    v86 = v125;
    (*(v124 + 104))(v123, *MEMORY[0x1E69D3158], v125);
    v87 = sub_1DA3941D4();
    v89 = v88;
    (*(v84 + 8))(v85, v86);
    v90 = v122;
    *v122 = v87;
    v90[1] = v89;
    v91 = v70;
    v92 = v139;
    (*(v139 + 104))(v90, *MEMORY[0x1E69D31A0], v67);
    (*(v92 + 32))(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v90, v67);
    v70 = v91;
    goto LABEL_16;
  }

  v72 = v60 == 0xD000000000000017 && 0x80000001DA396B10 == v61;
  v73 = v136;
  v74 = v134;
  v75 = v135;
  if (v72 || (sub_1DA394934() & 1) != 0)
  {

    v76 = (v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2E8, &unk_1DA394FF0);
    *v76 = 0x69662E656E6F6870;
    v76[1] = 0xEA00000000006C6CLL;
    sub_1DA394254();
    OUTLINED_FUNCTION_35();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    (*(v139 + 104))(v76, *MEMORY[0x1E69D3198], v67);
  }

  else
  {
    v93 = (v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo);
    *v93 = v60;
    v93[1] = v61;
    (*(v139 + 104))(v93, *MEMORY[0x1E69D31A0], v67);
  }

LABEL_18:
  v140 = a20;
  v139 = a19;
  *(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount) = v133;
  OUTLINED_FUNCTION_20();
  swift_beginAccess();
  sub_1DA369BC8(v70, v65 + v73);
  swift_endAccess();
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  *v49 = v75;
  *(v49 + 8) = v74 & 1;
  sub_1DA368C84(v71, v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, &qword_1ECBAD2C8, &unk_1DA394FD0);
  v94 = v149;
  v95 = v149[4];
  __swift_project_boxed_opaque_existential_1(v149, v149[3]);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v96 = *(v95 + 16);

  v97 = OUTLINED_FUNCTION_38();
  v98 = v96(v97);

  *(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens) = v98;
  v99 = v94[4];
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  v100 = *(v99 + 8);

  v101 = OUTLINED_FUNCTION_38();
  v102 = v100(v101);

  v103 = *(v102 + 16);
  if (v103)
  {
    v152 = MEMORY[0x1E69E7CC0];
    sub_1DA36CB08(0, v103, 0);
    v104 = v152;
    sub_1DA368C30();
    v138 = v102;
    v105 = (v102 + 40);
    do
    {
      v106 = *v105;
      v150 = *(v105 - 1);
      v151 = v106;
      v107 = sub_1DA3945D4();
      v109 = v108;
      v152 = v104;
      v111 = *(v104 + 16);
      v110 = *(v104 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_1DA36CB08(v110 > 1, v111 + 1, 1);
        v104 = v152;
      }

      *(v104 + 16) = v111 + 1;
      v112 = v104 + 16 * v111;
      *(v112 + 32) = v107;
      *(v112 + 40) = v109;
      v105 += 2;
      --v103;
    }

    while (v103);

    sub_1DA36CB60(v145, &qword_1ECBAD2C8, &unk_1DA394FD0);
    sub_1DA36CB60(v147, &qword_1ECBAD2D0, &unk_1DA395FF0);
    sub_1DA36CB60(v148, &qword_1ECBAD2E0, &qword_1DA394FE8);
    v65 = v146;
  }

  else
  {

    sub_1DA36CB60(v71, &qword_1ECBAD2C8, &unk_1DA394FD0);
    sub_1DA36CB60(v147, &qword_1ECBAD2D0, &unk_1DA395FF0);
    sub_1DA36CB60(v148, &qword_1ECBAD2E0, &qword_1DA394FE8);
    v104 = MEMORY[0x1E69E7CC0];
  }

  *(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens) = v104;
  v113 = (v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
  v114 = v140;
  *v113 = v139;
  v113[1] = v114;
  v115 = v141;
  v116 = v143;
  if (__swift_getEnumTagSinglePayload(v141, 1, v143) == 1)
  {
    sub_1DA36CB60(v115, &qword_1ECBAD2D8, &qword_1DA394FE0);
    if ((v144 | 4) == 6)
    {
      v117 = MEMORY[0x1E69D2DA0];
    }

    else
    {
      v117 = MEMORY[0x1E69D2D98];
    }

    (*(v142 + 104))(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType, *v117, v116);
  }

  else
  {
    v118 = *(v142 + 32);
    v119 = v127;
    v118(v127, v115, v116);
    v118(v65 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType, v119, v116);
  }

  __swift_destroy_boxed_opaque_existential_1(v149);
  return v65;
}

uint64_t sub_1DA369990(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA393DE4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  sub_1DA36DB2C(&qword_1EDCC51B8, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
  sub_1DA394624();
  v20 = 46;
  sub_1DA394614();
  v11 = sub_1DA394374();
  sub_1DA393DD4();
  v12 = sub_1DA393DC4();
  v13 = *(v4 + 8);
  v13(v8, v2);
  v14 = [v11 stringByTrimmingCharactersInSet_];

  sub_1DA394384();
  OUTLINED_FUNCTION_43();

  v19[1] = v12;
  v19[2] = v11;
  sub_1DA368C30();
  v15 = sub_1DA3945E4();
  v17 = v16;

  sub_1DA36A648(v15, v17);
  OUTLINED_FUNCTION_43();

  v13(v10, v2);
  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1DA369BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DA369C7C()
{
  v1 = sub_1DA394314();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  OUTLINED_FUNCTION_23(v8);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30[-v10];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1DA394784();
  v33 = v31;
  v34 = v32;
  MEMORY[0x1DA74BA70](0x203A657361726850, 0xE800000000000000);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v12 = v0[2];
  v13 = v0[3];

  MEMORY[0x1DA74BA70](v12, v13);

  MEMORY[0x1DA74BA70](0xD000000000000015, 0x80000001DA396B30);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v14 = v0[4];
  v15 = v0[5];

  MEMORY[0x1DA74BA70](v14, v15);

  v16 = OUTLINED_FUNCTION_42();
  MEMORY[0x1DA74BA70](v16);
  v17 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1DA74BB60](*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens), MEMORY[0x1E69E6158]);
  MEMORY[0x1DA74BA70](v18);

  MEMORY[0x1DA74BA70](0xD00000000000001ALL, 0x80000001DA396B70);
  v19 = MEMORY[0x1DA74BB60](*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens), v17);
  MEMORY[0x1DA74BA70](v19);

  MEMORY[0x1DA74BA70](0x656372756F530A2CLL, 0xEA0000000000203ALL);
  v20 = 0xEB00000000747563;
  v21 = 0x74726F6853707061;
  switch(*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source))
  {
    case 1:
      OUTLINED_FUNCTION_30();
      v21 = 0xD000000000000017;
      break;
    case 2:
      OUTLINED_FUNCTION_30();
      v21 = 0xD000000000000013;
      break;
    case 3:
      v20 = 0xE900000000000068;
      v21 = 0x636E75614C707061;
      break;
    case 4:
      break;
    case 5:
      v20 = 0xED00007475637472;
      v21 = 0x6F68536563696F76;
      break;
    case 6:
      OUTLINED_FUNCTION_30();
      v21 = 0xD00000000000001BLL;
      break;
    case 7:
      OUTLINED_FUNCTION_30();
      v21 = OUTLINED_FUNCTION_42();
      break;
    default:
      OUTLINED_FUNCTION_30();
      v21 = 0xD000000000000014;
      break;
  }

  MEMORY[0x1DA74BA70](v21, v20);

  MEMORY[0x1DA74BA70](0x656C646E75420A2CLL, 0xEC000000203A6449);
  MEMORY[0x1DA74BA70](v0[6], v0[7]);
  MEMORY[0x1DA74BA70](0xD000000000000015, 0x80000001DA396BB0);
  MEMORY[0x1DA74BA70](*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier), *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8));
  MEMORY[0x1DA74BA70](0x656C61636F4C0A2CLL, 0xEA0000000000203ALL);
  v22 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
  if (v22)
  {
    v23 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  MEMORY[0x1DA74BA70](v23, v24);

  MEMORY[0x1DA74BA70](0xD000000000000012, 0x80000001DA396BD0);
  sub_1DA368C84(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, v11, &qword_1ECBAD2C8, &unk_1DA394FD0);
  v25 = sub_1DA394334();
  if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
  {
    sub_1DA36CB60(v11, &qword_1ECBAD2C8, &unk_1DA394FD0);
    v26 = 0xE300000000000000;
    v27 = 7104878;
  }

  else
  {
    sub_1DA394324();
    (*(*(v25 - 8) + 8))(v11, v25);
    v27 = sub_1DA394304();
    v26 = v28;
    (*(v3 + 8))(v7, v1);
  }

  MEMORY[0x1DA74BA70](v27, v26);

  MEMORY[0x1DA74BA70](0xD000000000000012, 0x80000001DA396BF0);
  sub_1DA3941C4();
  sub_1DA394814();
  return v33;
}

uint64_t sub_1DA36A1B0()
{
  v4 = *(v0 + 48);

  MEMORY[0x1DA74BA70](95, 0xE100000000000000);
  v1 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);

  MEMORY[0x1DA74BA70](v1, v2);

  return v4;
}

double sub_1DA36A238()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1DA36A28C()
{
  sub_1DA393E54();
  swift_allocObject();
  sub_1DA393E44();
  sub_1DA393E24();
  type metadata accessor for AutoCompletePhrase(0);
  OUTLINED_FUNCTION_18();
  sub_1DA36DB2C(v0, v1, &protocol conformance descriptor for AutoCompletePhrase);
  sub_1DA393E34();
  OUTLINED_FUNCTION_43();

  return OUTLINED_FUNCTION_29();
}

uint64_t static AutoCompletePhrase.decodeFromPlist(_:)()
{
  sub_1DA393E14();
  swift_allocObject();
  sub_1DA393E04();
  type metadata accessor for AutoCompletePhrase(0);
  OUTLINED_FUNCTION_18();
  sub_1DA36DB2C(v0, v1, &protocol conformance descriptor for AutoCompletePhrase);
  OUTLINED_FUNCTION_29();
  sub_1DA393DF4();

  return v3;
}

uint64_t sub_1DA36A648(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DA375004(&unk_1F55E4AE8);

  while (1)
  {
    v3 = sub_1DA394404();
    if (!v4)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    if (*(v2 + 16))
    {
      sub_1DA3949D4();
      sub_1DA394354();
      v7 = sub_1DA394A14();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = v7 & v8;
        if (((*(v2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          break;
        }

        v10 = (*(v2 + 48) + 16 * v9);
        if (*v10 != v5 || v6 != v10[1])
        {
          v12 = sub_1DA394934();
          v7 = v9 + 1;
          if ((v12 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }
    }

    MEMORY[0x1DA74BA60](v5, v6);
LABEL_13:
  }

  return sub_1DA394444();
}

uint64_t static AutoCompletePhrase.== infix(_:_:)(void *a1, void *a2)
{
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  OUTLINED_FUNCTION_9();
  v6 = swift_beginAccess();
  v8 = a2[2];
  v9 = v4 == v8 && v5 == a2[3];
  if (!v9 && (OUTLINED_FUNCTION_31(v6, v7, v8) & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v10 = a1[4];
  v11 = a1[5];
  OUTLINED_FUNCTION_9();
  v12 = swift_beginAccess();
  v14 = a2[4];
  v15 = v10 == v14 && v11 == a2[5];
  if (!v15 && (OUTLINED_FUNCTION_31(v12, v13, v14) & 1) == 0)
  {
    goto LABEL_33;
  }

  v16 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v16 && (sub_1DA394934() & 1) == 0)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier) == *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier) && *(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8) == *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
  if (!v17 && (sub_1DA394934() & 1) == 0 || *(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) != *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source))
  {
    goto LABEL_33;
  }

  v18 = (a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  v21 = (a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  OUTLINED_FUNCTION_9();
  v22 = swift_beginAccess();
  v24 = v21[1];
  if (v20)
  {
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = v19 == *v21 && v20 == v24;
    if (!v25 && (OUTLINED_FUNCTION_31(v22, v23, *v21) & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_31:
    v26 = (a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = (a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v30 = *(v29 + 8);
    if (v28)
    {
      if (!*(v29 + 8))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v27 != *v29)
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_33;
      }
    }

    v31 = sub_1DA36A9BC(*(a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens), *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens));
    return v31 & 1;
  }

  if (!v24)
  {
    goto LABEL_31;
  }

LABEL_33:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1DA36A9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DA394934() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DA36AA48(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();

  sub_1DA394354();

  OUTLINED_FUNCTION_9();
  swift_beginAccess();

  sub_1DA394354();

  sub_1DA394354();
  sub_1DA394354();
  MEMORY[0x1DA74C080](*(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) + 1);
  v4 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  if (*(v4 + 8))
  {
    sub_1DA3949F4();

    OUTLINED_FUNCTION_29();
    sub_1DA394354();
  }

  else
  {
    sub_1DA3949F4();
  }

  v5 = (v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  if (*(v5 + 8) == 1)
  {
    sub_1DA3949F4();
  }

  else
  {
    v6 = *v5;
    sub_1DA3949F4();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1DA74C080](v7);
  }

  return sub_1DA36CC38(a1, *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens));
}

uint64_t sub_1DA36ABD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DA394934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA396CC0 == a2;
    if (v6 || (sub_1DA394934() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DA394934() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F666E496E6F6369 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DA394934() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001DA3969D0 == a2;
          if (v9 || (sub_1DA394934() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
            if (v10 || (sub_1DA394934() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E65644964697575 && a2 == 0xEE00726569666974;
              if (v11 || (sub_1DA394934() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163;
                if (v12 || (sub_1DA394934() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72656E6547776B7ALL && a2 == 0xEF64496E6F697461;
                  if (v13 || (sub_1DA394934() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65726F63536465;
                    if (v14 || (sub_1DA394934() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x746E756F43706174 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1DA394934() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DA396CF0 == a2;
                        if (v16 || (sub_1DA394934() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F54686372616573 && a2 == 0xEC000000736E656BLL;
                          if (v17 || (sub_1DA394934() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001DA396D10 == a2;
                            if (v18 || (sub_1DA394934() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
                              if (v19 || (sub_1DA394934() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6974736567677573 && a2 == 0xEE00657079546E6FLL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1DA394934();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
    }
  }
}

uint64_t sub_1DA36B0E4(unsigned __int8 a1)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](a1);
  return sub_1DA394A14();
}

unint64_t sub_1DA36B138(char a1)
{
  result = 0x657361726870;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x6F666E496E6F6369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x656372756F73;
      break;
    case 6:
      result = 0x6E65644964697575;
      break;
    case 7:
      result = 0x6F766E496C6F6F74;
      break;
    case 8:
      result = 0x72656E6547776B7ALL;
      break;
    case 9:
      result = 0x7A696C616D726F6ELL;
      break;
    case 10:
      result = 0x746E756F43706174;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6F54686372616573;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x656C61636F6CLL;
      break;
    case 15:
      result = 0x6974736567677573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA36B32C(uint64_t a1)
{
  v2 = *v1;
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](v2);
  return sub_1DA394A14();
}

uint64_t sub_1DA36B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA36ABD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA36B3C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA36B0B4();
  *a1 = result;
  return result;
}

uint64_t sub_1DA36B3E8(uint64_t a1)
{
  v2 = sub_1DA36CCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA36B424(uint64_t a1)
{
  v2 = sub_1DA36CCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *AutoCompletePhrase.deinit()
{

  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo;
  sub_1DA394264();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier;
  sub_1DA393F34();
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  sub_1DA36CB60(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, &qword_1ECBAD2C8, &unk_1DA394FD0);

  sub_1DA36CB60(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp, &qword_1ECBAD2D0, &unk_1DA395FF0);

  v5 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType;
  sub_1DA3941C4();
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t AutoCompletePhrase.__deallocating_deinit()
{
  AutoCompletePhrase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DA36B634(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2F8, &unk_1DA395000);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30[-v12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA36CCB0();
  sub_1DA394A34();
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v14 = *(v2 + 16);
  v36[0] = 0;

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_6();
  sub_1DA3948E4();
  if (v14 || (, OUTLINED_FUNCTION_9(), swift_beginAccess(), v15 = *(v2 + 32), v35 = 1, , OUTLINED_FUNCTION_40(), OUTLINED_FUNCTION_6(), sub_1DA3948E4(), v15) || (, v35 = 2, OUTLINED_FUNCTION_6(), sub_1DA3948E4(), v35 = 3, sub_1DA394264(), OUTLINED_FUNCTION_12(), sub_1DA36DB2C(v17, v18, MEMORY[0x1E69D31B0]), OUTLINED_FUNCTION_5(), sub_1DA394904(), v35 = 4, OUTLINED_FUNCTION_6(), sub_1DA3948E4(), v35 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source), v34 = 5, sub_1DA36CD04(), OUTLINED_FUNCTION_11(), sub_1DA394904(), v35 = 6, sub_1DA393F34(), OUTLINED_FUNCTION_17(), sub_1DA36DB2C(v19, v20, MEMORY[0x1E69695B0]), OUTLINED_FUNCTION_5(), sub_1DA394904(), v35 = 7, sub_1DA394334(), OUTLINED_FUNCTION_16(), sub_1DA36DB2C(v21, v22, MEMORY[0x1E69DAA30]), OUTLINED_FUNCTION_5(), sub_1DA3948D4(), v23 = (v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId), OUTLINED_FUNCTION_9(), swift_beginAccess(), v24 = *v23, v34 = 8, , OUTLINED_FUNCTION_40(), OUTLINED_FUNCTION_6(), sub_1DA3948B4(), v24))
  {
    (*(v10 + 8))(v13, v8);
  }

  else
  {

    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v33[0] = 9;
    OUTLINED_FUNCTION_6();
    sub_1DA3948C4();
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    v32 = 10;
    OUTLINED_FUNCTION_11();
    sub_1DA3948F4();
    v25 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
    OUTLINED_FUNCTION_9();
    swift_beginAccess();
    sub_1DA368C84(v2 + v25, v7, &qword_1ECBAD2D0, &unk_1DA395FF0);
    LOBYTE(v37) = 11;
    sub_1DA393F04();
    OUTLINED_FUNCTION_14();
    sub_1DA36DB2C(v26, v27, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_5();
    sub_1DA3948D4();
    sub_1DA36CB60(v7, &qword_1ECBAD2D0, &unk_1DA395FF0);
    v37 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens);
    v31 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD300, &unk_1DA395610);
    sub_1DA36CE64(&qword_1EDCC5048, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_11();
    sub_1DA394904();
    v37 = *(v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);
    v31 = 13;
    OUTLINED_FUNCTION_11();
    sub_1DA394904();
    LOBYTE(v37) = 14;
    OUTLINED_FUNCTION_6();
    sub_1DA3948B4();
    LOBYTE(v37) = 15;
    sub_1DA3941C4();
    OUTLINED_FUNCTION_13();
    sub_1DA36DB2C(v28, v29, MEMORY[0x1E69D2DB0]);
    OUTLINED_FUNCTION_5();
    sub_1DA394904();
    return (*(v10 + 8))(v13, v8);
  }
}

uint64_t sub_1DA36BC90()
{
  sub_1DA3949D4();
  sub_1DA36AA48(v1);
  return sub_1DA394A14();
}

uint64_t AutoCompletePhrase.__allocating_init(from:)(void **a1)
{
  v2 = swift_allocObject();
  AutoCompletePhrase.init(from:)(a1);
  return v2;
}

void *AutoCompletePhrase.init(from:)(void **a1)
{
  v88 = sub_1DA3941C4();
  OUTLINED_FUNCTION_0();
  v86 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_25(v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v8);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25(v84 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  OUTLINED_FUNCTION_23(v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25(v84 - v13);
  sub_1DA393F34();
  OUTLINED_FUNCTION_0();
  v91 = v15;
  v92 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7();
  v94 = v17 - v16;
  v18 = sub_1DA394264();
  OUTLINED_FUNCTION_0();
  v93 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD308, &qword_1DA395010);
  OUTLINED_FUNCTION_0();
  v95 = v25;
  v96 = v24;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_28();
  v27 = (v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
  *v27 = 0;
  v27[1] = 0;
  v101 = v27;
  v28 = v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
  v30 = sub_1DA393F04();
  v100 = v29;
  v102 = v1;
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = a1[3];
  v99 = a1;
  v35 = __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1DA36CCB0();
  v97 = v2;
  v36 = v98;
  sub_1DA394A24();
  if (v36)
  {
    OUTLINED_FUNCTION_4();
    v40 = v102;
    goto LABEL_4;
  }

  v37 = v23;
  v38 = v94;
  v85 = v28;
  v84[1] = v30;
  v98 = v18;
  v105 = 0;
  v39 = sub_1DA394884();
  v42 = v102;
  v102[2] = v39;
  v42[3] = v43;
  OUTLINED_FUNCTION_32(1);
  v42[4] = sub_1DA394884();
  v42[5] = v44;
  OUTLINED_FUNCTION_32(2);
  v84[0] = 0;
  v42[6] = sub_1DA394884();
  v42[7] = v45;
  v105 = 3;
  OUTLINED_FUNCTION_12();
  sub_1DA36DB2C(v46, v47, MEMORY[0x1E69D31B8]);
  v48 = v98;
  sub_1DA3948A4();
  (*(v93 + 32))(v42 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v37, v48);
  OUTLINED_FUNCTION_32(4);
  v49 = sub_1DA394884();
  v50 = (v42 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
  *v50 = v49;
  v50[1] = v51;
  v104 = 5;
  sub_1DA36CDA0();
  sub_1DA3948A4();
  v52 = v95;
  *(v42 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) = v105;
  v105 = 6;
  OUTLINED_FUNCTION_17();
  sub_1DA36DB2C(v53, v54, MEMORY[0x1E69695D0]);
  v55 = v92;
  sub_1DA3948A4();
  a1 = &OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList.vtable;
  (*(v91 + 32))(v42 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier, v38, v55);
  sub_1DA394334();
  v105 = 7;
  OUTLINED_FUNCTION_16();
  sub_1DA36DB2C(v57, v58, MEMORY[0x1E69DAA38]);
  v59 = v90;
  v35 = v97;
  sub_1DA394874();
  sub_1DA36CDF4(v59, v42 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation);
  OUTLINED_FUNCTION_32(8);
  v60 = sub_1DA394854();
  v94 = 0;
  v62 = v60;
  v30 = v61;
  v63 = v101;
  OUTLINED_FUNCTION_21();
  swift_beginAccess();
  *v63 = v62;
  v63[1] = v30;

  v104 = 9;
  v64 = v94;
  v65 = sub_1DA394864();
  v94 = v64;
  if (!v64)
  {
    v67 = v65;
    v68 = v66;
    v69 = v85;
    OUTLINED_FUNCTION_21();
    swift_beginAccess();
    *v69 = v67;
    *(v69 + 8) = v68 & 1;
    OUTLINED_FUNCTION_39(10);
    v70 = sub_1DA394894();
    v94 = 0;
    *(v102 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount) = v70;
    LOBYTE(v103) = 11;
    OUTLINED_FUNCTION_14();
    sub_1DA36DB2C(v71, v72, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_37();
    sub_1DA394874();
    v94 = 0;
    v73 = v100;
    v74 = v102;
    OUTLINED_FUNCTION_20();
    swift_beginAccess();
    sub_1DA368730(v89, v74 + v73);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD300, &unk_1DA395610);
    v106 = 12;
    sub_1DA36CE64(&qword_1EDCC5040, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_27();
    v94 = 0;
    *(v102 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens) = v103;
    v106 = 13;
    OUTLINED_FUNCTION_27();
    v94 = 0;
    *(v102 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens) = v103;
    OUTLINED_FUNCTION_39(14);
    v77 = sub_1DA394854();
    v94 = 0;
    v78 = (v102 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
    *v78 = v77;
    v78[1] = v79;
    LOBYTE(v103) = 15;
    OUTLINED_FUNCTION_13();
    sub_1DA36DB2C(v80, v81, MEMORY[0x1E69D2DB8]);
    OUTLINED_FUNCTION_37();
    sub_1DA3948A4();
    v94 = 0;
    v82 = OUTLINED_FUNCTION_8();
    v83(v82);
    v40 = v102;
    (*(v86 + 32))(v102 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_suggestionType, v87, v88);
    __swift_destroy_boxed_opaque_existential_1(v99);
    return v40;
  }

  v75 = OUTLINED_FUNCTION_8();
  v76(v75);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  v40 = v102;
  v56 = v84[0];

  if (!v56)
  {
  }

  if (v59)
  {
  }

  if (v62)
  {
    (*(v93 + 8))(v40 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_iconInfo, v98);
    if (!v52)
    {
LABEL_19:
      if (&OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList == -24)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (!v52)
  {
    goto LABEL_19;
  }

  if (&OBJC_METACLASS____TtC19SiriAutoCompleteAPI33StopWordAndNonSignificantWordList != -24)
  {
LABEL_20:
    (*(v91 + 8))(v40 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_uuidIdentifier, v92);
  }

LABEL_21:
  if (v97)
  {
    sub_1DA36CB60(v40 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_toolInvocation, &qword_1ECBAD2C8, &unk_1DA394FD0);
  }

LABEL_4:

  sub_1DA36CB60(v40 + v100, &qword_1ECBAD2D0, &unk_1DA395FF0);
  if (!a1)
  {
    if (!v30)
    {
      goto LABEL_6;
    }

LABEL_11:

    if (!v35)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v30)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v35)
  {
LABEL_7:
  }

LABEL_8:
  type metadata accessor for AutoCompletePhrase(0);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v99);
  return v40;
}

uint64_t sub_1DA36C8F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = AutoCompletePhrase.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA36C990(uint64_t a1)
{
  sub_1DA3949D4();
  sub_1DA36AA48(v2);
  return sub_1DA394A14();
}

uint64_t sub_1DA36C9DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA36CA28(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1DA36CA88(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1DA36CA98()
{
  OUTLINED_FUNCTION_34();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
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

uint64_t sub_1DA36CB60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DA36CC38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA74C060](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_1DA394354();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1DA36CCB0()
{
  result = qword_1EDCC5180;
  if (!qword_1EDCC5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5180);
  }

  return result;
}

unint64_t sub_1DA36CD04()
{
  result = qword_1EDCC5190;
  if (!qword_1EDCC5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5190);
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

unint64_t sub_1DA36CDA0()
{
  result = qword_1EDCC4F58;
  if (!qword_1EDCC4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC4F58);
  }

  return result;
}

uint64_t sub_1DA36CDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2C8, &unk_1DA394FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA36CE64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD300, &unk_1DA395610);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA36CED4()
{
  result = qword_1ECBAD310;
  if (!qword_1ECBAD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD310);
  }

  return result;
}

unint64_t sub_1DA36CF2C()
{
  result = qword_1ECBAD318;
  if (!qword_1ECBAD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD318);
  }

  return result;
}

uint64_t sub_1DA36CFEC(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1DA36D074(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DA36D158(uint64_t a1)
{
  sub_1DA394264();
  if (v1 <= 0x3F)
  {
    sub_1DA393F34();
    if (v2 <= 0x3F)
    {
      sub_1DA36D818(319, &qword_1EDCC5050, MEMORY[0x1E69DAA28]);
      if (v3 <= 0x3F)
      {
        sub_1DA36D818(319, &qword_1EDCC5490, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          sub_1DA3941C4();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1DA36D818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DA3945B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutoCompletePhrase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoCompletePhrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA36D9D4()
{
  result = qword_1ECBAD328;
  if (!qword_1ECBAD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD328);
  }

  return result;
}

unint64_t sub_1DA36DA2C()
{
  result = qword_1EDCC5170;
  if (!qword_1EDCC5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5170);
  }

  return result;
}

unint64_t sub_1DA36DA84()
{
  result = qword_1EDCC5178;
  if (!qword_1EDCC5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5178);
  }

  return result;
}

unint64_t sub_1DA36DAD8()
{
  result = qword_1EDCC5188;
  if (!qword_1EDCC5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5188);
  }

  return result;
}

uint64_t sub_1DA36DB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_1DA3948A4();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA394934();
}

void OUTLINED_FUNCTION_45(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_46()
{

  JUMPOUT(0x1DA74C560);
}

uint64_t sub_1DA36DEF8(uint64_t a1, uint64_t a2)
{
  v22 = MEMORY[0x1E69E7CD0];
  v19 = *(a1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = *(a2 + 16);
    v20 = a2 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      ++v2;
      v5 = v22;
      v6 = v22 + 56;

      for (i = 0; ; ++i)
      {
        if (i == v3)
        {

          goto LABEL_16;
        }

        v8 = (v20 + 16 * i);
        v10 = *v8;
        v9 = v8[1];

        if (sub_1DA394424())
        {
          break;
        }

LABEL_10:
      }

      if (*(v5 + 16))
      {
        v11 = sub_1DA3949C4();
        v12 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v13 = v11 & v12;
          if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
          {
            break;
          }

          v11 = v13 + 1;
          if (*(*(v5 + 48) + 8 * v13) == i)
          {
            goto LABEL_10;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA377BAC();
        v4 = v16;
      }

      v14 = *(v4 + 16);
      if (v14 >= *(v4 + 24) >> 1)
      {
        sub_1DA377BAC();
        v4 = v17;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v9;
      sub_1DA378404(&v21, i);
LABEL_16:
      ;
    }

    while (v2 != v19);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t dispatch thunk of AutoCompleteXPCClient.getAutoCompletePhrase(query:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DA36E240;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DA36E240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA36E340(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x64726F57706F7473;
  }
}

uint64_t sub_1DA36E380()
{
  type metadata accessor for StopWordAndNonSignificantWordList();
  swift_allocObject();
  result = sub_1DA36E418();
  qword_1EDCC5018 = result;
  return result;
}

uint64_t static StopWordAndNonSignificantWordList.shared.getter()
{
  if (qword_1EDCC5010 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA36E418()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD340, &qword_1DA395600);
  v2 = sub_1DA394344();
  *(v0 + 16) = 0;
  v3 = (v0 + 16);
  *(v0 + 24) = v2;
  if (qword_1EDCC5960 != -1)
  {
    swift_once();
  }

  DefaultLocaleProvider.updateLocale()();

  v4 = DefaultLocaleProvider.siriLocale.getter();
  v6 = sub_1DA36E530(v4, v5);

  os_unfair_lock_lock(v3);

  *(v1 + 24) = v6;
  os_unfair_lock_unlock(v3);
  return v1;
}

uint64_t sub_1DA36E530(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DA393EC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v65 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD340, &qword_1DA395600);
  v10 = sub_1DA394344();
  if (sub_1DA3943C4() < 3)
  {
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v22 = sub_1DA3942F4();
    __swift_project_value_buffer(v22, qword_1EDCC5A38);

    v23 = sub_1DA3942D4();
    v24 = sub_1DA394584();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_13;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DA372AD8(a1, a2, v77);
    _os_log_impl(&dword_1DA365000, v23, v24, "StopWordAndNonSignificantWordList: locale %s is malformed, returning empty wordList", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_46();
    goto LABEL_12;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];

  v13 = sub_1DA37ACD8(2, a1, a2);
  v14 = MEMORY[0x1DA74BA20](v13);
  v16 = v15;

  v17 = sub_1DA36F1B4(v14, v16, 0x7473696C70, 0xE500000000000000, v12);

  if (v17)
  {
    sub_1DA393EB4();

    (*(v5 + 32))(v76, v8, v4);
    sub_1DA393E14();
    swift_allocObject();
    v18 = sub_1DA393E04();
    v19 = sub_1DA393ED4();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD348, &qword_1DA395608);
    sub_1DA36F248();
    sub_1DA393DF4();
    v66 = v19;
    v67 = v21;
    v68 = v18;
    v69 = v5;
    v70 = v4;
    v31 = 0;
    v32 = 0;
    v33 = v77[0];
    v34 = 0x80000001DA396D90;
    *&v35 = 136315138;
    v73 = v35;
    v71 = 0x80000001DA396D90;
    v72 = v77[0];
    while (1)
    {
      LODWORD(v36) = v31;
      v37 = *(&unk_1F55E4B50 + v32 + 32) ? 0xD000000000000013 : 0x64726F57706F7473;
      v38 = *(&unk_1F55E4B50 + v32 + 32) ? v34 : 0xE900000000000073;
      if (!*(v33 + 16))
      {
        break;
      }

      v39 = sub_1DA3753E0(v37, v38);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        goto LABEL_30;
      }

      v75 = v10;
      v42 = *(*(v33 + 56) + 8 * v39);
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = v37;
        v74 = v36;
        v77[0] = MEMORY[0x1E69E7CC0];

        sub_1DA36CB08(0, v43, 0);
        v45 = v77[0];
        v46 = v42 + 40;
        do
        {
          v47 = sub_1DA394394();
          v49 = v48;
          v77[0] = v45;
          v51 = *(v45 + 16);
          v50 = *(v45 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_1DA36CB08(v50 > 1, v51 + 1, 1);
            v45 = v77[0];
          }

          *(v45 + 16) = v51 + 1;
          v52 = v45 + 16 * v51;
          *(v52 + 32) = v47;
          *(v52 + 40) = v49;
          v46 += 16;
          --v43;
        }

        while (v43);

        v34 = v71;
        v33 = v72;
        LOBYTE(v36) = v74;
        v37 = v44;
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      v62 = sub_1DA37E634(v45);
      v63 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v63;
      sub_1DA3755B0(v62, v37, v38, isUniquelyReferenced_nonNull_native);

      v10 = v77[0];
LABEL_37:
      v31 = 1;
      v32 = 1u;
      if (v36)
      {
        (*(v69 + 8))(v76, v70);
        sub_1DA36F350(v66, v67);

        return v10;
      }
    }

LABEL_30:
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v53 = sub_1DA3942F4();
    __swift_project_value_buffer(v53, qword_1EDCC5A38);
    v54 = sub_1DA3942D4();
    v55 = sub_1DA394594();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v33;
      v58 = v34;
      v59 = v10;
      v60 = v36;
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v56 = v73;
      v61 = sub_1DA372AD8(v37, v38, v77);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1DA365000, v54, v55, "StopWordAndNonSignificantWordList: Unable to find key in the plist: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      LOBYTE(v36) = v60;
      v10 = v59;
      v34 = v58;
      v33 = v57;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_46();
    }

    goto LABEL_37;
  }

  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v27 = sub_1DA3942F4();
  __swift_project_value_buffer(v27, qword_1EDCC5A38);
  v23 = sub_1DA3942D4();
  v28 = sub_1DA394584();
  if (os_log_type_enabled(v23, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DA365000, v23, v28, "StopWordAndNonSignificantWordList: unable to get path to the list of stop words and non significant words", v29, 2u);
LABEL_12:
    OUTLINED_FUNCTION_46();
  }

LABEL_13:

  return v10;
}

BOOL sub_1DA36EDB0(uint64_t a1, uint64_t a2, char a3)
{
  os_unfair_lock_lock((v3 + 16));
  sub_1DA36EE18((v3 + 24), a3 & 1, &v6);
  os_unfair_lock_unlock((v3 + 16));
  return v6;
}

void sub_1DA36EE18(uint64_t *a1@<X0>, char a2@<W1>, BOOL *a5@<X8>)
{
  if (a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x64726F57706F7473;
  }

  if (a2)
  {
    v7 = 0x80000001DA396D90;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  v8 = sub_1DA373C4C(v6, v7, *a1);

  if (v8)
  {
    v9 = sub_1DA394394();
    v11 = sub_1DA3769F0(v9, v10, v8);

    v12 = v11;
  }

  else
  {
    if (qword_1EDCC5A30 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA3942F4();
    __swift_project_value_buffer(v13, qword_1EDCC5A38);
    v14 = sub_1DA3942D4();
    v15 = sub_1DA394594();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      v18 = sub_1DA372AD8(v6, v7, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1DA365000, v14, v15, "StopWordAndNonSignificantWordList: Unable to find key in StopWordAndNonSignificantWordList: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1DA74C560](v17, -1, -1);
      MEMORY[0x1DA74C560](v16, -1, -1);
    }

    v12 = 0;
  }

  *a5 = v12;
}

Swift::Void __swiftcall StopWordAndNonSignificantWordList.updateWordList(locale:)(Swift::String locale)
{
  v2 = v1;
  v3 = sub_1DA36E530(locale._countAndFlagsBits, locale._object);
  os_unfair_lock_lock((v2 + 16));

  *(v2 + 24) = v3;

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_1DA36F0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD330, &qword_1DA395540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StopWordAndNonSignificantWordList.__deallocating_deinit()
{
  sub_1DA36F0A0(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1DA36F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1DA394374();

  v7 = sub_1DA394374();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1DA36F248()
{
  result = qword_1EDCC4D98;
  if (!qword_1EDCC4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD348, &qword_1DA395608);
    sub_1DA36F2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC4D98);
  }

  return result;
}

unint64_t sub_1DA36F2D4()
{
  result = qword_1EDCC5040;
  if (!qword_1EDCC5040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD300, &unk_1DA395610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5040);
  }

  return result;
}

uint64_t sub_1DA36F350(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *sub_1DA36F3BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_0();
    v8 = v72;
    v9 = a1 + 40;
    do
    {
      v10 = sub_1DA394394();
      v2 = v11;
      v72 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_1DA36CB08(v12 > 1, v13 + 1, 1);
      }

      v8[2] = v13 + 1;
      v14 = &v8[2 * v13];
      v14[4] = v10;
      v14[5] = v2;
      v9 += 16;
      --v4;
    }

    while (v4);
    v5 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(a2 + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_1_0();
    v5 = v72;
    v16 = a2 + 40;
    do
    {
      v17 = sub_1DA394394();
      v2 = v18;
      v20 = v72[2];
      v19 = v72[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_1DA36CB08(v19 > 1, v20 + 1, 1);
      }

      v72[2] = v21;
      v22 = &v72[2 * v20];
      v22[4] = v17;
      v22[5] = v2;
      v16 += 16;
      --v15;
    }

    while (v15);
  }

  else
  {
    v21 = v5[2];
  }

  v68 = v8[2];
  if (!v68 || !v21)
  {

    if (v21 <= v68)
    {
      return v68;
    }

    else
    {
      return v21;
    }
  }

  v23 = sub_1DA36F950(0, v21 + 1);
  v24 = sub_1DA36F9F4(v23, v68 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_97;
  }

  while (1)
  {
    if (v24[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v71 = v5;
      v5 = v24[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[5] = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_0_1();
    v24[5] = v66;
LABEL_20:
    if (v5[2])
    {
      v5[4] = 1;
      v26 = v68 - 1;
      if (v68 != 1)
      {
        v54 = v24 + 6;
        v55 = 2;
        while (v55 < v24[2])
        {
          v5 = *v54;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          *v54 = v5;
          if ((v56 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_1();
            *v54 = v57;
          }

          if (!v5[2])
          {
            goto LABEL_94;
          }

          v5[4] = v55++;
          ++v54;
          if (!--v26)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_22:
      if (v24[2])
      {
        v2 = v24 + 4;
        v5 = v24[4];
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v24[4] = v5;
        if (v27)
        {
          goto LABEL_24;
        }

        goto LABEL_102;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_0_1();
LABEL_24:
    if (v5[2] < 2uLL)
    {
      __break(1u);
LABEL_104:
      swift_once();
      goto LABEL_88;
    }

    v5[5] = 1;
    *v2 = v5;
    v28 = v21 - 1;
    if (v21 == 1)
    {
      break;
    }

    v58 = 6;
    while (v24[2])
    {
      v5 = *v2;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if ((v59 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_1();
        *v2 = v60;
      }

      if ((v58 - 4) >= v5[2])
      {
        goto LABEL_96;
      }

      v5[v58] = v58 - 4;
      ++v58;
      if (!--v28)
      {
        goto LABEL_26;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    sub_1DA36FAD4(v24);
    v24 = v65;
  }

LABEL_26:
  v69 = v24;
  v70 = v8;
  v29 = v71;
  v67 = v8 + 4;
  v30 = 1;
  while (2)
  {
    v31 = 0;
    v32 = v30 - 1;
    v33 = v71 + 5;
    v34 = &v67[2 * v30 - 2];
    do
    {
      if (v32 >= v70[2])
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v31 >= v29[2])
      {
        goto LABEL_75;
      }

      v35 = *v34 == *(v33 - 1) && v34[1] == *v33;
      v36 = !v35 && (sub_1DA394934() & 1) == 0;
      v37 = *(v69 + 16);
      if (v32 >= v37)
      {
        goto LABEL_76;
      }

      v28 = v31 + 1;
      v38 = v2[v32];
      if (v31 + 1 >= *(v38 + 16))
      {
        goto LABEL_77;
      }

      v39 = v38 + 8 * v31;
      v40 = *(v39 + 40);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_78;
      }

      if (v30 >= v37)
      {
        goto LABEL_79;
      }

      v43 = v2[v30];
      if (v31 >= *(v43 + 16))
      {
        goto LABEL_80;
      }

      v44 = *(v43 + 8 * v31 + 32);
      v41 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v41)
      {
        goto LABEL_81;
      }

      v46 = *(v39 + 32);
      v41 = __OFADD__(v46, v36);
      v47 = v46 + v36;
      if (v41)
      {
        goto LABEL_82;
      }

      v8 = v21;
      if (v45 < v42)
      {
        v42 = v45;
      }

      if (v47 >= v42)
      {
        v48 = v42;
      }

      else
      {
        v48 = v47;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      v2[v30] = v43;
      if ((v49 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_1();
        v2[v30] = v50;
      }

      if (v28 >= *(v43 + 16))
      {
        goto LABEL_83;
      }

      *(v43 + 8 * v31++ + 40) = v48;
      v33 += 2;
      v21 = v8;
      v29 = v71;
    }

    while (v8 != v31);
    v35 = v30++ == v68;
    if (!v35)
    {
      continue;
    }

    break;
  }

  v51 = sub_1DA36FA8C(v69);
  if (!v51)
  {
    goto LABEL_87;
  }

  v28 = *(v51 + 16);
  if (v28)
  {
    v52 = *(v51 + 8 * v28 + 24);
    goto LABEL_85;
  }

LABEL_84:
  v52 = 0;
LABEL_85:

  if (v28)
  {

    return v52;
  }

LABEL_87:
  if (qword_1EDCC52A0 != -1)
  {
    goto LABEL_104;
  }

LABEL_88:
  v61 = sub_1DA3942F4();
  __swift_project_value_buffer(v61, qword_1EDCC51C0);
  v62 = sub_1DA3942D4();
  v63 = sub_1DA394594();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1DA365000, v62, v63, "EditDistance: The output matrix was unexpectedly empty.", v64, 2u);
    MEMORY[0x1DA74C560](v64, -1, -1);
  }

  if (v8 <= v68)
  {
    return v68;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1DA36F950(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1DA394514();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1DA395620)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DA36F9F4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD350, &unk_1DA395630);
      v4 = sub_1DA394514();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1DA36FA8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_1_0()
{

  sub_1DA36CB08(0, v0, 0);
}

uint64_t sub_1DA36FBC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1DA3942F4();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_1DA3942E4();
}

uint64_t sub_1DA36FC58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA3942F4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1DA36FD4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1DA3701D0();
  result = sub_1DA3945A4();
  *a3 = result;
  return result;
}

id sub_1DA36FDD8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_1DA36FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t))
{
  v15[1] = a5;
  v9 = sub_1DA3942B4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a8(v11);
  sub_1DA3942A4();
  sub_1DA394294();
  return (*(v10 + 8))(v13, v9);
}

uint64_t getEnumTagSinglePayload for VectorDBWriteClientManager.DBWriteClientManagerErrors(unsigned int *a1, int a2)
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

_BYTE *sub_1DA3700EC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3701D0()
{
  result = qword_1EDCC4D90;
  if (!qword_1EDCC4D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC4D90);
  }

  return result;
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

Swift::String_optional __swiftcall DefaultLocaleProvider.updateLocale()()
{
  v1 = v0;
  v2 = DefaultLocaleProvider.siriLocale.getter();
  v4 = v3;
  v5 = sub_1DA3704BC();
  v7 = v6;
  if (v5 == v2 && v6 == v4)
  {
  }

  else
  {
    v9 = v5;
    v10 = sub_1DA394934();

    if ((v10 & 1) == 0)
    {
      os_unfair_lock_lock((v1 + 16));

      *(v1 + 24) = v9;
      *(v1 + 32) = v7;

      os_unfair_lock_unlock((v1 + 16));
      goto LABEL_10;
    }
  }

  v9 = 0;
  v7 = 0;
LABEL_10:
  v11 = v9;
  v12 = v7;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t DefaultLocaleProvider.siriLocale.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_1DA3703CC()
{
  type metadata accessor for DefaultLocaleProvider();
  swift_allocObject();
  result = sub_1DA370464();
  qword_1EDCC5968 = result;
  return result;
}

uint64_t static DefaultLocaleProvider.shared.getter()
{
  if (qword_1EDCC5960 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA370464()
{
  v1 = sub_1DA3704BC();
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_1DA3704BC()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1DA393968(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_1EDCC5A30 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA3942F4();
    __swift_project_value_buffer(v5, qword_1EDCC5A38);

    v6 = sub_1DA3942D4();
    v7 = sub_1DA394584();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1DA372AD8(v3, v4, &v15);
      _os_log_impl(&dword_1DA365000, v6, v7, "Fetched AFPreferences Siri Locale: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA74C560](v9, -1, -1);
      MEMORY[0x1DA74C560](v8, -1, -1);
    }
  }

  else
  {
    if (qword_1EDCC5A30 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA3942F4();
    __swift_project_value_buffer(v10, qword_1EDCC5A38);
    v11 = sub_1DA3942D4();
    v12 = sub_1DA394594();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DA365000, v11, v12, "Unable to fetch Siri locale", v13, 2u);
      MEMORY[0x1DA74C560](v13, -1, -1);
    }

    return 0;
  }

  return v3;
}

uint64_t DefaultLocaleProvider.__deallocating_deinit()
{
  sub_1DA370714(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t static DefaultMorphunTokenizer.shared.getter()
{
  if (qword_1EDCC5950 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA3708A8()
{
  type metadata accessor for DefaultMorphunTokenizer(0);
  swift_allocObject();
  result = sub_1DA3708E8();
  qword_1EDCC5958 = result;
  return result;
}

uint64_t sub_1DA3708E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_1DA393F74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - v11);
  v13 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus;
  *v13 = 0;
  *(v13 + 4) = 0;
  v14 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer;
  *v14 = 0;
  *(v14 + 8) = 0;
  if (qword_1EDCC5960 != -1)
  {
    swift_once();
  }

  DefaultLocaleProvider.updateLocale()();

  DefaultLocaleProvider.siriLocale.getter();

  sub_1DA393F44();
  sub_1DA393F44();
  *v5 = 0;
  v15 = *(v2 + 28);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3B0, qword_1DA395850);
  bzero(&v5[v15], *(*(v16 - 8) + 64));
  (*(v7 + 32))(&v5[v15], v10, v6);
  memcpy((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale), v5, v3);
  sub_1DA370B54(v12);
  (*(v7 + 8))(v12, v6);
  return v1;
}

void sub_1DA370B54(NSObject *a1)
{
  v3 = sub_1DA393F74();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v75 = v7 - v8;
  OUTLINED_FUNCTION_9_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v70 - v13;
  sub_1DA393EC4();
  OUTLINED_FUNCTION_0();
  v78 = v14;
  v79 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v70 - v20;
  v21 = v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus));
  *(v21 + 4) = 0;
  os_unfair_lock_unlock(v21);
  v22 = (v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760) + 28);
  v76 = *(v5 + 8);
  v76(v22 + v23, v3);
  v24 = *(v5 + 16);
  v81 = a1;
  v77 = v24;
  v24(v22 + v23, a1, v3);
  os_unfair_lock_unlock(v22);
  v25 = v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer));

  *(v25 + 8) = 0;
  os_unfair_lock_unlock(v25);
  v26 = [objc_opt_self() processInfo];
  v27 = [v26 processName];

  sub_1DA394384();
  v28 = sub_1DA394394();
  v30 = v29;

  v31 = v28 == 1769105779 && v30 == 0xE400000000000000;
  if (v31 || (sub_1DA394934() & 1) != 0 || (v28 == 0x6573636E69726973 ? (v32 = v30 == 0xED00006563697672) : (v32 = 0), v32))
  {
  }

  else
  {
    v33 = sub_1DA394934();

    if ((v33 & 1) == 0)
    {
      v34 = objc_opt_self();
      v35 = sub_1DA393F64();
      v36 = [v34 getAssetPathForLocale_];

      if (v36)
      {
        v37 = v80;
        sub_1DA393EB4();

        if (qword_1EDCC5A30 != -1)
        {
          OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
        }

        v38 = sub_1DA3942F4();
        v39 = __swift_project_value_buffer(v38, qword_1EDCC5A38);
        v40 = v78;
        v41 = v79;
        (*(v79 + 16))(v18, v37, v78);
        v72 = v39;
        v42 = sub_1DA3942D4();
        v43 = sub_1DA394584();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v70 = v44;
          v45 = swift_slowAlloc();
          v82 = v45;
          *v44 = 136315138;
          v71 = v43;
          v46 = sub_1DA393E74();
          v48 = v47;
          v73 = *(v79 + 8);
          v73(v18, v78);
          v49 = sub_1DA372AD8(v46, v48, &v82);

          v50 = v70;
          *(v70 + 1) = v49;
          _os_log_impl(&dword_1DA365000, v42, v71, "DefaultMorphunTokenizer: Registering %s with libmorphun.", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_46();
        }

        else
        {

          v73 = *(v41 + 8);
          v73(v18, v40);
        }

        sub_1DA393E74();
        v67 = v81;
        sub_1DA393FA4();

        v77(v74, v67, v3);
        sub_1DA394014();
        swift_allocObject();
        v69 = sub_1DA394004();
        os_unfair_lock_lock(v25);

        *(v25 + 8) = v69;

        os_unfair_lock_unlock(v25);
        os_unfair_lock_lock(v21);
        *(v21 + 4) = 1;
        os_unfair_lock_unlock(v21);

        v73(v80, v78);
      }

      else
      {
        if (qword_1EDCC5A30 != -1)
        {
          OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
        }

        v55 = sub_1DA3942F4();
        __swift_project_value_buffer(v55, qword_1EDCC5A38);
        v77(v12, v81, v3);
        v56 = sub_1DA3942D4();
        v57 = sub_1DA394584();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v82 = v59;
          *v58 = 136315138;
          OUTLINED_FUNCTION_4_0();
          sub_1DA373794(v60, v61, MEMORY[0x1E6969798]);
          v62 = sub_1DA394924();
          v64 = v63;
          OUTLINED_FUNCTION_11_0();
          v65();
          v66 = sub_1DA372AD8(v62, v64, &v82);

          *(v58 + 4) = v66;
          _os_log_impl(&dword_1DA365000, v56, v57, "DefaultMorphunTokenizer: Cannot get path for %s Morphun assets", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_46();
        }

        else
        {

          OUTLINED_FUNCTION_11_0();
          v68();
        }
      }

      return;
    }
  }

  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
  }

  v51 = sub_1DA3942F4();
  __swift_project_value_buffer(v51, qword_1EDCC5A38);
  v81 = sub_1DA3942D4();
  v52 = sub_1DA394584();
  if (os_log_type_enabled(v81, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DA365000, v81, v52, "DefaultMorphunTokenizer: Not registering Morphun path for Siri process", v53, 2u);
    OUTLINED_FUNCTION_46();
  }

  v54 = v81;
}

char *DefaultMorphunTokenizer.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v99 = sub_1DA393FE4();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v101 = v8 - v9;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v87 - v11;
  v94 = sub_1DA393FD4();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v93 = v15 - v16;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v87 - v18;
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  v22 = sub_1DA371E24(a1, a2);
  v24 = v23;
  v25 = v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer;
  os_unfair_lock_lock(v25);
  sub_1DA371FB0((v25 + 8), a1, a2, v109);
  os_unfair_lock_unlock(v25);
  v26 = v109[0];
  if (v109[0])
  {
    v88 = a1;
    v89 = a2;

    v109[0] = v26;
    sub_1DA393F94();
    sub_1DA373794(&qword_1EDCC5070, MEMORY[0x1E69B2880], MEMORY[0x1E69B2888]);
    v87 = v26;

    v27 = sub_1DA394464();
    v28 = 0;
    v103 = *(v27 + 16);
    v105 = v13 + 16;
    v98 = *MEMORY[0x1E69B2908];
    v96 = (v6 + 8);
    v97 = (v6 + 104);
    v104 = (v13 + 8);
    v102 = v13;
    v90 = (v13 + 32);
    v92 = MEMORY[0x1E69E7CC0];
    v29 = v94;
    v95 = v27;
    while (v103 != v28)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v30 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      a2 = *(v102 + 72);
      (*(v102 + 16))(v21, v27 + v30 + a2 * v28, v29);
      v31 = v100;
      sub_1DA393FB4();
      v6 = v21;
      v32 = v101;
      v33 = v28;
      v34 = v99;
      (*v97)(v101, v98, v99);
      sub_1DA373794(&qword_1EDCC5068, MEMORY[0x1E69B2910], MEMORY[0x1E69B2918]);
      sub_1DA394474();
      sub_1DA394474();
      v35 = *v96;
      (*v96)(v32, v34);
      v35(v31, v34);
      if (v107 == v106)
      {
        v36 = v33;
        v37 = *v90;
        (*v90)(v91, v6, v29);
        v38 = v92;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v109[0] = v38;
        v21 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = OUTLINED_FUNCTION_12_0();
          sub_1DA36CBB8(v41, v42, v43);
          v29 = v94;
          v40 = v109[0];
        }

        v27 = v95;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        v6 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v46 = OUTLINED_FUNCTION_7_0(v44);
          sub_1DA36CBB8(v46, v45 + 1, 1);
          v29 = v94;
          v40 = v109[0];
        }

        v28 = v36 + 1;
        *(v40 + 16) = v6;
        v92 = v40;
        v37((v40 + v30 + v45 * a2), v91, v29);
      }

      else
      {
        (*v104)(v6, v29);
        v28 = v33 + 1;
        v21 = v6;
        v27 = v95;
      }
    }

    v47 = *(v92 + 16);
    if (v47)
    {
      v109[0] = MEMORY[0x1E69E7CC0];
      v48 = v92;
      sub_1DA36CB08(0, v47, 0);
      v49 = v94;
      v6 = v109[0];
      v50 = v48 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v51 = *(v102 + 72);
      v52 = *(v102 + 16);
      do
      {
        v53 = v93;
        v52(v93, v50, v49);
        v54 = sub_1DA393FC4();
        v49 = v94;
        v55 = v54;
        v57 = v56;
        (*v104)(v53, v94);
        v109[0] = v6;
        v59 = *(v6 + 16);
        v58 = *(v6 + 24);
        if (v59 >= v58 >> 1)
        {
          v61 = OUTLINED_FUNCTION_7_0(v58);
          sub_1DA36CB08(v61, v59 + 1, 1);
          v49 = v94;
          v6 = v109[0];
        }

        *(v6 + 16) = v59 + 1;
        v60 = v6 + 16 * v59;
        *(v60 + 32) = v55;
        *(v60 + 40) = v57;
        v50 += v51;
        --v47;
      }

      while (v47);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    a2 = v89;
    v27 = v88;
    if (qword_1EDCC5A30 == -1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
    }

    v105 = 0;
    v62 = sub_1DA3942F4();
    __swift_project_value_buffer(v62, qword_1EDCC5A38);
    v63 = sub_1DA3942D4();
    v64 = sub_1DA394584();
    if (os_log_type_enabled(v63, v64))
    {
      a2 = swift_slowAlloc();
      *a2 = 0;
      _os_log_impl(&dword_1DA365000, v63, v64, "DefaultMorphunTokenizer: fallback to default tokenization", a2, 2u);
      OUTLINED_FUNCTION_46();
    }

    v109[0] = v22;
    v109[1] = v24;
    v107 = 32;
    v108 = 0xE100000000000000;
    sub_1DA368C30();
    v65 = sub_1DA3945C4();

    v27 = 0;
    v66 = *(v65 + 16);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v67 = (v65 + 40 + 16 * v27);
    while (1)
    {
      if (v66 == v27)
      {

        return v6;
      }

      if (v27 >= *(v65 + 16))
      {
        break;
      }

      ++v27;
      v69 = *(v67 - 1);
      v68 = *v67;
      v67 += 2;
      v70 = HIBYTE(v68) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v70 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (v70)
      {

        v71 = swift_isUniquelyReferenced_nonNull_native();
        v109[0] = v6;
        if ((v71 & 1) == 0)
        {
          v72 = OUTLINED_FUNCTION_12_0();
          sub_1DA36CB08(v72, v73, v74);
          v6 = v109[0];
        }

        v76 = *(v6 + 16);
        v75 = *(v6 + 24);
        a2 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v78 = OUTLINED_FUNCTION_7_0(v75);
          sub_1DA36CB08(v78, v76 + 1, 1);
          v6 = v109[0];
        }

        *(v6 + 16) = a2;
        v77 = v6 + 16 * v76;
        *(v77 + 32) = v69;
        *(v77 + 40) = v68;
        goto LABEL_23;
      }
    }

LABEL_42:
    __break(1u);
  }

  OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
LABEL_37:
  v79 = sub_1DA3942F4();
  __swift_project_value_buffer(v79, qword_1EDCC5A38);

  v80 = sub_1DA3942D4();
  v81 = sub_1DA394584();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v82 = 136315394;
    *(v82 + 4) = sub_1DA372AD8(v27, a2, v109);
    *(v82 + 12) = 2080;
    v83 = MEMORY[0x1DA74BB60](v6, MEMORY[0x1E69E6158]);
    v85 = sub_1DA372AD8(v83, v84, v109);

    *(v82 + 14) = v85;
    _os_log_impl(&dword_1DA365000, v80, v81, "DefaultMorphunTokenizer: tokenize %s %s", v82, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  return v6;
}

uint64_t sub_1DA371E24(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v18 = 0x5D229C80E25BLL;
  v19 = 0xA600000000000000;
  sub_1DA368C30();
  v20 = OUTLINED_FUNCTION_3_0(&v18);
  v21 = v2;
  v18 = 0x5D279880E25BLL;
  v19 = 0xA600000000000000;
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;

  v20 = v4;
  v21 = v6;
  v18 = 0x1000000000000027;
  v19 = 0x80000001DA397090;
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;

  v20 = v8;
  v21 = v10;
  v18 = 8814818;
  v19 = 0xA300000000000000;
  OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = v13;

  v20 = v12;
  v21 = v14;
  v18 = 0x5D8B80E38A80E35BLL;
  v19 = 0xA800000000000000;
  OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_3_0(v15);

  return v16;
}

void sub_1DA371FB0(void *a1@<X0>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*a1)
  {

    v10 = sub_1DA393FF4();
    if (v6)
    {
      if (qword_1EDCC5A30 != -1)
      {
        swift_once();
      }

      v11 = sub_1DA3942F4();
      __swift_project_value_buffer(v11, qword_1EDCC5A38);

      v12 = v6;
      v13 = sub_1DA3942D4();
      v14 = sub_1DA394594();

      if (os_log_type_enabled(v13, v14))
      {
        v22 = a6;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v15 = 136315394;
        *(v15 + 4) = sub_1DA372AD8(a4, a5, &v23);
        *(v15 + 12) = 2112;
        v18 = v6;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 14) = v19;
        *v16 = v19;
        _os_log_impl(&dword_1DA365000, v13, v14, "DefaultMorphunTokenizer: Failed to tokenize input: %s with error %@", v15, 0x16u);
        sub_1DA3737DC(v16, &qword_1ECBAD2F0, &qword_1DA395840);
        MEMORY[0x1DA74C560](v16, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1DA74C560](v17, -1, -1);
        v20 = v15;
        a6 = v22;
        MEMORY[0x1DA74C560](v20, -1, -1);
      }

      else
      {
      }

      v21 = 0;
    }

    else
    {
      v21 = v10;
    }
  }

  else
  {
    v21 = 0;
  }

  *a6 = v21;
}

char *DefaultMorphunTokenizer.getSearchTokens(_:)(uint64_t a1, uint8_t *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760);
  sub_1DA393F54();
  v6 = sub_1DA394424();

  os_unfair_lock_unlock(v5);
  v7 = DefaultMorphunTokenizer.tokenize(_:)(a1, a2);
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    return v8;
  }

  v47 = MEMORY[0x1E69E7CC0];
  v45 = *(v7 + 2);
  if (v45)
  {
    v9 = 0;
    v43 = v7;
    v44 = v7 + 32;
    while (2)
    {
      if (v9 >= *(v8 + 2))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v10 = v9 + 1;
      v11 = &v44[16 * v9];
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_1DA372628(v13, v12);
      v16 = v15;

      v46[0] = v14;
      v46[1] = v16;
      sub_1DA368C30();
      v17 = sub_1DA3945C4();

      v18 = 0;
      v19 = *(v17 + 16);
      v20 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v21 = (v17 + 40 + 16 * v18);
      while (v19 != v18)
      {
        if (v18 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        ++v18;
        v22 = *(v21 - 1);
        v23 = *v21;
        v21 += 2;
        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {

          v46[0] = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DA36CB08(0, *(v20 + 16) + 1, 1);
            v20 = v46[0];
          }

          v26 = *(v20 + 16);
          v25 = *(v20 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1DA36CB08(v25 > 1, v26 + 1, 1);
            v20 = v46[0];
          }

          *(v20 + 16) = v26 + 1;
          v27 = v20 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v23;
          v8 = v43;
          goto LABEL_6;
        }
      }

      sub_1DA37308C(v20);
      v9 = v10;
      if (v10 != v45)
      {
        continue;
      }

      break;
    }
  }

  if (qword_1EDCC5A30 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
  }

  v28 = sub_1DA3942F4();
  __swift_project_value_buffer(v28, qword_1EDCC5A38);

  v29 = sub_1DA3942D4();
  v30 = sub_1DA394584();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v31 = 136315394;
    v32 = MEMORY[0x1E69E6158];
    v33 = MEMORY[0x1DA74BB60](v8, MEMORY[0x1E69E6158]);
    v35 = v34;

    v36 = sub_1DA372AD8(v33, v35, v46);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    swift_beginAccess();

    v38 = MEMORY[0x1DA74BB60](v37, v32);
    v40 = v39;

    v41 = sub_1DA372AD8(v38, v40, v46);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_1DA365000, v29, v30, "DefaultMorphunTokenizer: convert zh: %s to pinyin: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  else
  {
  }

  swift_beginAccess();
  return v47;
}

uint64_t sub_1DA372628(uint64_t a1, uint64_t a2)
{
  sub_1DA373830();

  v4 = sub_1DA372858(a1, a2);
  CFStringTransform(v4, 0, *MEMORY[0x1E695E990], 0);
  CFStringTransform(v4, 0, *MEMORY[0x1E695E9A0], 0);
  v5 = sub_1DA394384();

  return v5;
}

Swift::Void __swiftcall DefaultMorphunTokenizer.updateAsset(locale:)(Swift::String locale)
{
  v1 = sub_1DA393F74();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1DA393F44();
  sub_1DA370B54(v6);
  (*(v3 + 8))(v6, v1);
}

Swift::Bool __swiftcall DefaultMorphunTokenizer.isAssetRegistered()()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_assetRegisteredStatus));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

Swift::String __swiftcall DefaultMorphunTokenizer.localeString()()
{
  v1 = (v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760);
  v2 = sub_1DA393F54();
  v4 = v3;
  os_unfair_lock_unlock(v1);
  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id sub_1DA372858(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DA394374();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t DefaultMorphunTokenizer.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizerLocale;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD368, &qword_1DA395760) + 28);
  sub_1DA393F74();
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(v1 + v2);
  sub_1DA3737DC(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI23DefaultMorphunTokenizer_tokenizer + 8, &qword_1ECBAD370, &qword_1DA395768);
  return v0;
}

uint64_t DefaultMorphunTokenizer.__deallocating_deinit()
{
  DefaultMorphunTokenizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DA372A7C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DA372AD8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1DA372AD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA372B9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DA373874(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DA372B9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DA372C9C(a5, a6);
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
    result = sub_1DA3947B4();
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

uint64_t sub_1DA372C9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DA372CE8(a1, a2);
  sub_1DA372E00(&unk_1F55E4AC0);
  return v3;
}

uint64_t sub_1DA372CE8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
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

  for (; v5; v5 = sub_1DA394414())
  {
    result = sub_1DA372EE4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DA394764();
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

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DA3947B4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA372E00(uint64_t result)
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

    result = sub_1DA372F54(result, v7, 1, v3);
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

void *sub_1DA372EE4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3A8, &qword_1DA395848);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DA372F54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3A8, &qword_1DA395848);
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

unint64_t sub_1DA373048(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1DA373068(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA37308C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DA373554(result, 1, sub_1DA377BAC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DefaultMorphunTokenizer(uint64_t a1)
{
  result = qword_1EDCC5940;
  if (!qword_1EDCC5940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA373204(uint64_t a1)
{
  sub_1DA3732C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA3732C0(uint64_t a1)
{
  if (!qword_1EDCC5A28)
  {
    sub_1DA393F74();
    v1 = sub_1DA3941B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC5A28);
    }
  }
}

uint64_t sub_1DA373318(unint64_t a1)
{
  v3 = sub_1DA377B88(a1);
  v4 = sub_1DA377B88(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DA37349C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DA3735CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DA3733C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DA373554(result, 1, sub_1DA377F88);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DA37349C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1DA3946C4();
LABEL_9:
  result = sub_1DA3947A4();
  *v2 = result;
  return result;
}

uint64_t sub_1DA373554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DA3735CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DA3946C4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DA377B88(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for AutoCompletePhrase(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DA373730();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD388, &qword_1DA395A90);
          v9 = sub_1DA37A918(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA373730()
{
  result = qword_1ECBAD390;
  if (!qword_1ECBAD390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD388, &qword_1DA395A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD390);
  }

  return result;
}

uint64_t sub_1DA373794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA3737DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DA373830()
{
  result = qword_1ECBAD3A0;
  if (!qword_1ECBAD3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAD3A0);
  }

  return result;
}

uint64_t sub_1DA373874(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return sub_1DA3945F4();
}

uint64_t sub_1DA3739A4()
{
  v1 = v0;
  v11 = MEMORY[0x1E69E7CD0];
  v2 = objc_opt_self();
  v3 = [v2 hiddenAppBundleIdentifiers];
  v4 = sub_1DA394544();

  sub_1DA373CF8(v4);
  v5 = [v2 lockedAppBundleIdentifiers];
  v6 = sub_1DA394544();

  sub_1DA373CF8(v6);
  v7 = sub_1DA394374();
  v8 = sub_1DA394374();
  v9 = CFPreferencesCopyAppValue(v7, v8);

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1DA3944D4();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_1DA373B3C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA373C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DA3753E0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA373CA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DA375458(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_1DA373CF8(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];

      sub_1DA3784D4(&v14, v12, v13);

      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1DA373DE8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_1DA3784D4(&v7, v6, v5);

    v4 += 2;
  }
}

void *sub_1DA373E90(unint64_t a1)
{
  result = sub_1DA377B88(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA74BE10](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    sub_1DA378614(&v6, v5);
  }
}

void *sub_1DA373F60(uint64_t a1)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD388, &qword_1DA395A90);
  v1[14] = OUTLINED_FUNCTION_1_2();
  v1[15] = OUTLINED_FUNCTION_1_2();
  type metadata accessor for AutoCompletePhrase(0);
  v1[16] = sub_1DA394344();
  v1[17] = OUTLINED_FUNCTION_1_2();
  v1[18] = a1;
  return v1;
}

uint64_t sub_1DA374004(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(*a4 + 16) < *(v4 + 144))
  {
    v8 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a4;
    result = sub_1DA3755C4(a3, v8, a2, isUniquelyReferenced_nonNull_native, &qword_1ECBAD3E0, &qword_1DA395A88);
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1DA3740A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(*a4 + 16) < *(v4 + 144))
  {
    v8 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a4;
    result = sub_1DA37570C(a3, v8, a2, isUniquelyReferenced_nonNull_native);
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1DA374134(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDCC52A0);
  }

  v8 = sub_1DA3942F4();
  __swift_project_value_buffer(v8, qword_1EDCC51C0);

  v9 = sub_1DA3942D4();
  v10 = sub_1DA394584();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1DA372AD8(0xD000000000000021, 0x80000001DA3972F0, v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DA372AD8(a1, a2, v13);
    _os_log_impl(&dword_1DA365000, v9, v10, "Cache write: %s %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_2_1(v4 + 112);
  sub_1DA374004(a1, a2, a3, (v4 + 112));
  return swift_endAccess();
}

uint64_t sub_1DA3742D0()
{
  v1 = v0;
  OUTLINED_FUNCTION_34();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDCC52A0);
  }

  v2 = sub_1DA3942F4();
  __swift_project_value_buffer(v2, qword_1EDCC51C0);

  v3 = sub_1DA3942D4();
  v4 = sub_1DA394584();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1DA372AD8(0xD00000000000001BLL, 0x80000001DA3972D0, v14);
    *(v5 + 12) = 2080;
    v6 = OUTLINED_FUNCTION_8_1();
    *(v5 + 14) = sub_1DA372AD8(v6, v7, v8);
    _os_log_impl(&dword_1DA365000, v3, v4, "Cache read: %s %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_3_1(v1 + 112);
  v9 = *(v1 + 112);

  v10 = OUTLINED_FUNCTION_8_1();
  v12 = sub_1DA373C50(v10, v11, v9);

  return v12;
}

uint64_t sub_1DA374468()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_1(v0 + 120);
  v1 = OUTLINED_FUNCTION_5_1();
  sub_1DA374004(v1, v2, v3, v4);
  return swift_endAccess();
}

uint64_t sub_1DA3744B4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1(v1 + 120);
  if (!*(*(v1 + 120) + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_8_1();
  v4 = sub_1DA3753E0(v2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1DA374530()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_1(v0 + 136);
  v1 = OUTLINED_FUNCTION_5_1();
  sub_1DA374004(v1, v2, v3, v4);
  return swift_endAccess();
}

uint64_t sub_1DA37457C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1(v1 + 136);
  if (!*(*(v1 + 136) + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_8_1();
  v4 = sub_1DA3753E0(v2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1DA3745F8()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2_1(v0 + 128);
  v1 = OUTLINED_FUNCTION_5_1();
  sub_1DA3740A4(v1, v2, v3, v4);
  return swift_endAccess();
}

uint64_t sub_1DA374644()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1(v1 + 128);
  if (!*(*(v1 + 128) + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_8_1();
  v4 = sub_1DA3753E0(v2, v3);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1DA3746C0(uint64_t a1, uint64_t a2)
{
  if (sub_1DA377B88(MEMORY[0x1E69E7CC0]))
  {
    v2 = sub_1DA375188(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v19 = v2;
  swift_beginAccess();
  v3 = *(v18 + 112);
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v6)))));
    v14 = *v12;
    v13 = v12[1];
    v6 &= v6 - 1;
    sub_1DA375338();
    sub_1DA37538C();

    if (sub_1DA394364())
    {
      v15 = *(v18 + 112);

      v16 = sub_1DA373C50(v14, v13, v15);

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      result = sub_1DA373E90(v17);
      v10 = v11;
    }

    else
    {

      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v19;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DA374884()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DA3748C4()
{
  sub_1DA374884();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA374944()
{
  type metadata accessor for TypingSessionCacheProvider.DisabledTypingCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EDCC4EB0 = v0;
  return result;
}

uint64_t sub_1DA374998()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA3749D8(char a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return v2;
}

uint64_t sub_1DA374A20(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 144) == 1)
  {
    v3 = sub_1DA374B3C(v2, a1, a2);
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);
    v7 = *(v2 + 136);
    *(v2 + 112) = v3;
    *(v2 + 120) = v8;
    *(v2 + 128) = v9;
    *(v2 + 136) = v10;
    swift_unknownObjectRetain();

    sub_1DA374FC4(v4, v5, v6, v7);
  }

  else
  {
    if (qword_1EDCC4EA8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDCC4EB0;
    sub_1DA375890(&qword_1EDCC4E98, 255, type metadata accessor for TypingSessionCacheProvider.DisabledTypingCache, &unk_1DA3959C4);
  }

  return v3;
}

uint64_t sub_1DA374B3C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[14];
  if (v6 && (a1[16] == a2 ? (v7 = a1[17] == a3) : (v7 = 0), v7 || (sub_1DA394934() & 1) != 0))
  {
    swift_unknownObjectRetain();
  }

  else
  {
    if (qword_1EDCC52A0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA3942F4();
    __swift_project_value_buffer(v8, qword_1EDCC51C0);

    v9 = sub_1DA3942D4();
    v10 = sub_1DA394574();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v11 = 136315394;
      v12 = a1[14];
      if (v12)
      {
        v14 = a1[16];
        v13 = a1[17];
        v15 = a1[15];
        sub_1DA3758D8(a1[14], v15, v14, v13);

        sub_1DA374FC4(v12, v15, v14, v13);
      }

      else
      {
        v13 = 0xE500000000000000;
        v14 = 0x3E6C696E3CLL;
      }

      v16 = sub_1DA372AD8(v14, v13, &v21);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1DA372AD8(a2, a3, &v21);
      _os_log_impl(&dword_1DA365000, v9, v10, "Sessions are different (%s != %s). Resetting typing session cache", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74C560](v20, -1, -1);
      MEMORY[0x1DA74C560](v11, -1, -1);
    }

    v17 = a1[19];
    type metadata accessor for DefaultTypingCache();
    v6 = swift_allocObject();
    sub_1DA373F60(v17);
    sub_1DA375890(&qword_1ECBAD3E8, v18, type metadata accessor for DefaultTypingCache, &unk_1DA395A30);
  }

  return v6;
}

uint64_t sub_1DA374DF0()
{
  sub_1DA374FC4(v0[14], v0[15], v0[16], v0[17]);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA374E80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DA374EC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DA374F10(uint64_t a1)
{
  result = sub_1DA375890(&qword_1EDCC4EA0, 255, type metadata accessor for TypingSessionCacheProvider.DisabledTypingCache, &unk_1DA3959E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DA374F6C(uint64_t a1, uint64_t a2)
{
  result = sub_1DA375890(&qword_1ECBAD3B8, a2, type metadata accessor for DefaultTypingCache, &unk_1DA395A4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DA374FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA375004(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3F8, &unk_1DA395AA0);
  result = sub_1DA394754();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_18:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1DA3949D4();
    sub_1DA394354();
    result = sub_1DA394A14();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      result = *v15;
      if (*v15 == v9 && v15[1] == v8)
      {
        goto LABEL_15;
      }

      result = sub_1DA394934();
      if (result)
      {
        goto LABEL_15;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_20;
    }

    *(v3 + 16) = v20;

LABEL_15:
    if (v5 == v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DA375188(unint64_t a1)
{
  if (sub_1DA377B88(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
    v2 = sub_1DA394754();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v16 = sub_1DA377B88(a1);
  if (v16)
  {
    v3 = 0;
    v4 = v2 + 56;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1DA373068(v3, v5 == 0, a1);
      if (v5)
      {
        result = MEMORY[0x1DA74BE10](v3, a1);
        v7 = result;
      }

      else
      {
        v7 = *(a1 + 32 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      sub_1DA3949D4();
      sub_1DA36AA48(v17);
      result = sub_1DA394A14();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        type metadata accessor for AutoCompletePhrase(0);
        if (static AutoCompletePhrase.== infix(_:_:)(*(*(v2 + 48) + 8 * v10), v7))
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v7;
      v14 = *(v2 + 16);
      v8 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      if (v3 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_1DA375338()
{
  result = qword_1ECBAD3C0;
  if (!qword_1ECBAD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD3C0);
  }

  return result;
}

unint64_t sub_1DA37538C()
{
  result = qword_1ECBAD3C8;
  if (!qword_1ECBAD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD3C8);
  }

  return result;
}

unint64_t sub_1DA3753E0(uint64_t a1, uint64_t a2)
{
  sub_1DA3949D4();
  sub_1DA394354();
  v4 = sub_1DA394A14();

  return sub_1DA37549C(a1, a2, v4);
}

unint64_t sub_1DA375458(uint64_t a1)
{
  v2 = sub_1DA3949C4();

  return sub_1DA375550(a1, v2);
}

unint64_t sub_1DA37549C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DA394934() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DA375550(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1DA3755C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_1DA3753E0(a2, a3);
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_1DA394824() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1DA3753E0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_1DA394964();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v9;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_1DA375848(v16, a2, a3, a1, v20);
  }
}

uint64_t sub_1DA37570C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DA3753E0(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D8, &qword_1DA395A80);
  if ((sub_1DA394824() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DA3753E0(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DA394964();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1DA375848(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1DA375848(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA375890(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DA3758D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return sub_1DA394344();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1DA3759EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient;
  v12 = *(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient);
  if (!v12)
  {
    v19[1] = type metadata accessor for DefaultSiriAutoCompleteService();
    v13 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_featureFlagsProvider;
    v14 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
    v15 = sub_1DA393EC4();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v4, v1 + v14, v15);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
    static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)(0, v1 + v13, v4);
    sub_1DA36CB60(v4, &qword_1ECBAD400, &unk_1DA395B90);
    sub_1DA376510(v10, v8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
    {
      sub_1DA36CB60(v8, &qword_1ECBAD408, &qword_1DA395FE0);
      v12 = 0;
    }

    else
    {
      v12 = *v8;
      (*(v16 + 8))(&v8[*(v17 + 48)], v15);
    }

    *(v1 + v11) = v12;
  }

  return v12;
}

uint64_t sub_1DA375C58(uint64_t *a1, char a2)
{
  *(v3 + 32) = a2;
  v4 = *a1;
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DA375C80, v2, 0);
}

uint64_t sub_1DA375C80()
{
  sub_1DA376098();
  if (sub_1DA3759EC())
  {
    v1 = sub_1DA394074();

    if (*(v0 + 32))
    {
      sub_1DA376194();
    }

    v5 = *(v0 + 8);

    return v5(v1);
  }

  else
  {
    v4 = *(v0 + 32);
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
    if (v4)
    {
      sub_1DA376194();
    }

    v2 = *(v0 + 8);

    return v2();
  }
}

void sub_1DA375DAC()
{
  sub_1DA376098();
  if (sub_1DA3759EC())
  {
    sub_1DA394044();
  }

  else
  {
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
  }

  sub_1DA376194();
}

uint64_t sub_1DA375E30()
{
  OUTLINED_FUNCTION_3_2();
  if (!sub_1DA3759EC())
  {
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
    if ((v0 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD418, &qword_1DA395ED0);
  v4 = sub_1DA3940F4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DA395AB0;
  (*(v5 + 16))(v3 + v6, v2, v4);
  sub_1DA394024();
  if (v1)
  {

    if (v0)
    {
LABEL_8:
      sub_1DA376194();
    }
  }

  else
  {

    v3 = sub_1DA394064();

    if (v0)
    {
      goto LABEL_8;
    }
  }

  return v3;
}

uint64_t sub_1DA375FE4()
{
  OUTLINED_FUNCTION_3_2();
  if (!sub_1DA3759EC())
  {
    sub_1DA376580();
    OUTLINED_FUNCTION_2_2();
    swift_allocError();
    swift_willThrow();
    if ((v0 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_4;
  }

  v3 = sub_1DA394064();
  if (!v1)
  {
    v2 = v3;

    if ((v0 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_4;
  }

  if (v0)
  {
LABEL_4:
    sub_1DA376194();
  }

  return v2;
}

void sub_1DA376098()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated;
  if ((*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) & 1) == 0)
  {
    v2 = v0;
    if (sub_1DA3759EC())
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
      }

      v3 = sub_1DA3942F4();
      __swift_project_value_buffer(v3, qword_1EDCC5A38);
      v4 = sub_1DA3942D4();
      v5 = sub_1DA394584();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        OUTLINED_FUNCTION_4_2(&dword_1DA365000, v7, v8, "Warming up WriteDBClient");
        MEMORY[0x1DA74C560](v6, -1, -1);
      }

      sub_1DA394084();

      *(v2 + v1) = 1;
    }
  }
}

void sub_1DA376194()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated;
  if (*(v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) == 1)
  {
    v2 = v0;
    if (sub_1DA3759EC())
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
      }

      v3 = sub_1DA3942F4();
      __swift_project_value_buffer(v3, qword_1EDCC5A38);
      v4 = sub_1DA3942D4();
      v5 = sub_1DA394584();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        OUTLINED_FUNCTION_4_2(&dword_1DA365000, v7, v8, "Deactivating WriteDBClient");
        MEMORY[0x1DA74C560](v6, -1, -1);
      }

      sub_1DA394094();

      *(v2 + v1) = 0;
    }
  }
}

uint64_t sub_1DA3762BC()
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](0);
  return sub_1DA394A14();
}

uint64_t sub_1DA376308(uint64_t a1)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](0);
  return sub_1DA394A14();
}

uint64_t sub_1DA376358()
{
  v1 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  sub_1DA393EC4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_featureFlagsProvider));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DA3763D8()
{
  sub_1DA376358();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for VectorDBWriteClientManager(uint64_t a1)
{
  result = qword_1EDCC5808;
  if (!qword_1EDCC5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA376458(uint64_t a1)
{
  result = sub_1DA393EC4();
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

uint64_t sub_1DA376510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA376580()
{
  result = qword_1EDCC4DA8[0];
  if (!qword_1EDCC4DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC4DA8);
  }

  return result;
}

uint64_t sub_1DA3765D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  swift_defaultActor_initialize();
  *(a3 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient) = 0;
  *(a3 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) = 0;
  sub_1DA366D48(&v13, a3 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_featureFlagsProvider);
  v10 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  sub_1DA393EC4();
  OUTLINED_FUNCTION_10();
  (*(v11 + 32))(a3 + v10, a2);
  return a3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for VectorDBWriteClientManager.DBWriteClientManagerErrors(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3767D0()
{
  result = qword_1ECBAD420;
  if (!qword_1ECBAD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD420);
  }

  return result;
}

void OUTLINED_FUNCTION_3_2()
{

  sub_1DA376098();
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1DA376884()
{

  sub_1DA394284();

  return v1;
}

id sub_1DA3768C8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = sub_1DA394384();
    v4 = sub_1DA376994(v2, v3, v1);

    return (v4 != 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA376938()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1DA376994(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA394374();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

BOOL sub_1DA3769F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394A14();
  OUTLINED_FUNCTION_8_2();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    v13 = v12[1];
    if (*v12 == a1 && v13 == a2)
    {
      break;
    }

    v15 = OUTLINED_FUNCTION_16_0(*v12, v13, a1);
    v6 = v9 + 1;
  }

  while ((v15 & 1) == 0);
  return v11;
}

uint64_t sub_1DA376AD0(uint64_t *a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  sub_1DA3949D4();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  sub_1DA394354();
  v24 = v6;
  sub_1DA394354();
  v23 = v8;
  MEMORY[0x1DA74C080](v8 + 1);
  sub_1DA394A14();
  v9 = a2 + 7;
  OUTLINED_FUNCTION_8_2();
  v12 = v11 & ~v10;
  if (((*(a2 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v10;
  v14 = a2[6];
  while (1)
  {
    v15 = v14 + 40 * v12;
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v20 = *v15 == v4 && v16 == v5;
    if (v20 || (OUTLINED_FUNCTION_16_0(*v15, v16, v4) & 1) != 0)
    {
      v21 = v17 == v24 && v18 == v7;
      if (v21 || (sub_1DA394934()) && v19 == v23)
      {
        break;
      }
    }

    v12 = (v12 + 1) & v13;
    if (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t VectorSearchAssets.assets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t VectorSearchAssets.init(phrases:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v107 = sub_1DA394154();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v95 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = sub_1DA3941A4();
  OUTLINED_FUNCTION_0();
  v97 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *v80 = v13;
    return result;
  }

  result = sub_1DA3946C4();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (result >= 1)
  {
    v12 = 0;
    v91 = a1 & 0xC000000000000001;
    v90 = "agsProvider";
    v113 = *MEMORY[0x1E69DF5B8];
    v112 = (v4 + 104);
    v89 = *MEMORY[0x1E69DF5E8];
    v88 = v97 + 32;
    v106 = *MEMORY[0x1E69DF5D8];
    v87 = *MEMORY[0x1E69DF5C0];
    v86 = *MEMORY[0x1E69DF5E0];
    v85 = *MEMORY[0x1E69DF5B0];
    v84 = *MEMORY[0x1E69DF5D0];
    v13 = MEMORY[0x1E69E7CC0];
    v83 = xmmword_1DA395AB0;
    v82 = xmmword_1DA395D10;
    v81 = xmmword_1DA395D20;
    v94 = a1;
    v93 = v10;
    v92 = result;
    do
    {
      v105 = v12;
      v104 = v13;
      if (v91)
      {
        v14 = MEMORY[0x1DA74BE10](v12, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v115 = v14;
      OUTLINED_FUNCTION_10_1(v14 + 16);
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v103 = v15;
      v102 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD428, &qword_1DA395D30);
      v17 = swift_allocObject();
      *(v17 + 16) = v83;

      v18 = sub_1DA3944F4();
      v101 = v17;
      *(v17 + 32) = v18;
      *(v17 + 40) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD430, &qword_1DA395D38);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD438, &qword_1DA395D40);
      v21 = *(v20 - 8);
      v22 = v20 - 8;
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = *(v21 + 72);
      v25 = swift_allocObject();
      v100 = v25;
      *(v25 + 16) = v82;
      v26 = v25 + v23;
      v27 = *(v22 + 56);
      v28 = v22;
      v108 = v22;
      v29 = v95;
      *v95 = 0;
      v29[1] = 0;
      v109 = *v112;
      v30 = v107;
      v109(v29, v113, v107);
      v111 = v26;
      sub_1DA394134();
      *(v26 + v27) = *(v115 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_searchTokens);
      v31 = sub_1DA394164();
      OUTLINED_FUNCTION_10();
      v33 = *(v32 + 104);
      v98 = v32 + 104;
      v114 = v31;
      (v33)(v26 + v27, v89, v31);
      v34 = v26 + v24;
      v35 = v24;
      v110 = v24;
      v36 = (v34 + *(v28 + 56));
      *v29 = 0;
      v29[1] = 0;
      v37 = v113;
      v38 = v109;
      v109(v29, v113, v30);

      sub_1DA394134();
      v39 = *(v115 + 56);
      *v36 = *(v115 + 48);
      v36[1] = v39;
      (v33)(v36, v106, v31);
      v40 = (v111 + 2 * v35 + *(v108 + 56));
      *v29 = 0;
      v29[1] = 0;
      v38(v29, v37, v30);

      sub_1DA394134();
      v41 = v114;
      v42 = *(v115 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
      *v40 = *(v115 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
      v40[1] = v42;
      v43 = v106;
      (v33)(v40, v106, v41);
      v44 = v107;
      v45 = v108;
      v46 = (v111 + 3 * v110 + *(v108 + 56));
      *v29 = 0;
      v29[1] = 0;
      v109(v29, v113, v44);

      sub_1DA394134();
      *v46 = sub_1DA393F14();
      v46[1] = v47;
      v99 = v33;
      (v33)(v46, v43, v114);
      v48 = *(v45 + 56);
      v50 = v110;
      v49 = v111;
      v51 = v111 + 4 * v110;
      *v29 = 0;
      *(v29 + 8) = 1;
      v52 = v109;
      v109(v29, v87, v44);
      sub_1DA394134();
      v53 = v114;
      *(v51 + v48) = *(v115 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) + 1;
      (v33)(v51 + v48, v86, v53);
      v54 = v49 + 5 * v50;
      v55 = v49;
      *v29 = 0;
      *(v29 + 8) = 0;
      v56 = v107;
      v52(v29, v85, v107);
      sub_1DA394134();
      v57 = v115 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore;
      OUTLINED_FUNCTION_10_1(v115 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedScore);
      v58 = *v57;
      if (*(v57 + 8))
      {
        v58 = 0.0;
      }

      v59 = v108;
      v60 = *(v108 + 56);
      *(v54 + v60) = v58;
      v61 = v53;
      v62 = v99;
      (v99)(v54 + v60, v84, v61);
      v63 = v55 + 6 * v110;
      v64 = v115;
      *v29 = v81;
      v52(v29, v113, v56);
      sub_1DA394134();
      v65 = (v64 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
      OUTLINED_FUNCTION_10_1(v64 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_zkwGenerationId);
      v66 = *v65;
      v67 = v65[1];
      if (!v67)
      {
        v66 = 0;
      }

      v68 = 0xE000000000000000;
      if (v67)
      {
        v68 = v67;
      }

      v69 = (v63 + *(v59 + 56));
      *v69 = v66;
      v69[1] = v68;
      v62();
      sub_1DA394144();
      sub_1DA37A9AC();

      v70 = sub_1DA394344();
      v71 = sub_1DA36A28C();
      v72 = v93;
      MEMORY[0x1DA74B7F0](v103, v102, v101, v70, v71, v73);
      v13 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA377E94(0, *(v13 + 16) + 1, 1, v13, sub_1DA37CE9C, MEMORY[0x1E69DF5F0], MEMORY[0x1E69DF5F0]);
        v13 = v77;
      }

      v75 = *(v13 + 16);
      v74 = *(v13 + 24);
      v76 = v105;
      if (v75 >= v74 >> 1)
      {
        sub_1DA377E94(v74 > 1, v75 + 1, 1, v13, sub_1DA37CE9C, MEMORY[0x1E69DF5F0], MEMORY[0x1E69DF5F0]);
        v13 = v78;
      }

      v12 = v76 + 1;

      *(v13 + 16) = v75 + 1;
      (*(v97 + 32))(v13 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v75, v72, v96);
      a1 = v94;
    }

    while (v92 != v12);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA377700(unint64_t a1)
{
  v29 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1DA377B88(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA74BE10](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_10_1(v5 + 16);

    v6 = sub_1DA3943C4();

    if (v6 <= 500)
    {
      sub_1DA3947C4();
      sub_1DA3947F4();
      sub_1DA394804();
      result = sub_1DA3947D4();
    }

    else
    {
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
  v30 = sub_1DA377B88(v32);
  OUTLINED_FUNCTION_10_1(v31 + 24);
  v7 = 0;
  v8 = v32 & 0xC000000000000001;
LABEL_13:
  while (v7 != v30)
  {
    sub_1DA373068(v7, v8 == 0, v32);
    if (v8)
    {
      result = MEMORY[0x1DA74BE10](v7, v32);
      v9 = result;
    }

    else
    {
      v9 = *(v32 + 32 + 8 * v7);
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_33;
    }

    v11 = *(v31 + 24);
    OUTLINED_FUNCTION_10_1(v9 + 16);
    v12 = *(v9 + 24);
    v33[0] = *(v9 + 16);
    v33[1] = v12;
    sub_1DA368C30();

    v13 = sub_1DA3945D4();
    v15 = v14;
    if (*(v11 + 16))
    {
      v16 = v13;
      sub_1DA3949D4();
      sub_1DA394354();
      sub_1DA394A14();
      OUTLINED_FUNCTION_8_2();
      v19 = ~v18;
      while (1)
      {
        v20 = v17 & v19;
        if (((*(v11 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          break;
        }

        v21 = (*(v11 + 48) + 16 * v20);
        v22 = v21[1];
        if (*v21 != v16 || v22 != v15)
        {
          v24 = OUTLINED_FUNCTION_16_0(*v21, v22, v16);
          v17 = v20 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }
    }

    v25 = sub_1DA3945D4();
    v27 = v26;
    swift_beginAccess();
    sub_1DA3784D4(v33, v25, v27);
    swift_endAccess();

    MEMORY[0x1DA74BB40](v28);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DA394504();
    }

    sub_1DA394524();
    v29 = v34;
  }

  swift_beginAccess();
  sub_1DA373318(v29);
  swift_endAccess();
}

uint64_t sub_1DA377AB0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_10_1(v1 + 16);

  return VectorSearchAssets.init(phrases:)(v3, a1);
}

uint64_t VectorSearchAssets.Builder.deinit()
{

  return v0;
}

uint64_t VectorSearchAssets.Builder.__deallocating_deinit()
{
  VectorSearchAssets.Builder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t static VectorSearchAssets.builder()()
{
  type metadata accessor for VectorSearchAssets.Builder();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CD0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1DA377B88(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DA3946C4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1DA377BAC()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_2();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA377C88()
{
  OUTLINED_FUNCTION_7_2();
  if (v4)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_4_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD440, &qword_1DA3964A0);
    v7 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_0();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_13_0();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1DA377D50()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD448, &unk_1DA395DE0);
    v9 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_0();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD350, &unk_1DA395630);
    swift_arrayInitWithCopy();
  }
}

void sub_1DA377E94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_6_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1DA378320(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA377F88()
{
  OUTLINED_FUNCTION_7_2();
  if (v4)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_4_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD458, &unk_1DA396490);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v3;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_13_0();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA378078()
{
  OUTLINED_FUNCTION_7_2();
  if (v4)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_4_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD468, &qword_1DA395E08);
    v7 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_13_0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1DA378140()
{
  OUTLINED_FUNCTION_7_2();
  if (v4)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_4_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD478, &qword_1DA395E18);
    v7 = OUTLINED_FUNCTION_11_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_13_0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

char *sub_1DA378208(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_1DA378240(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

void sub_1DA378260()
{
  OUTLINED_FUNCTION_14_0();
  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20), OUTLINED_FUNCTION_10(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      v5 = OUTLINED_FUNCTION_3_3();

      MEMORY[0x1EEE6BCF8](v5);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
    v6 = OUTLINED_FUNCTION_3_3();

    MEMORY[0x1EEE6BD00](v6);
  }
}

void sub_1DA378320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_14_0();
  if (v8 && (a4(0), OUTLINED_FUNCTION_10(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_3_3();

      MEMORY[0x1EEE6BCF8](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_3_3();

    MEMORY[0x1EEE6BD00](v11);
  }
}

char *sub_1DA3783D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

BOOL sub_1DA378404(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1DA3949C4();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1DA379548(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1DA3784D4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394A14();
  OUTLINED_FUNCTION_8_2();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = v13[1];
    v15 = *v13 == a2 && v14 == a3;
    if (v15 || (OUTLINED_FUNCTION_16_0(*v13, v14, a2) & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v11);
      v17 = v16[1];
      *a1 = *v16;
      a1[1] = v17;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1DA37964C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1DA378614(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1DA3946D4();

    if (v8)
    {

      v19[9] = v8;
      type metadata accessor for AutoCompletePhrase(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19[0];
    }

    else
    {
      result = sub_1DA3946C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v14 = sub_1DA378A24(v7, result + 1);
        v19[0] = v14;
        v15 = v14[2];
        if (v14[3] <= v15)
        {
          sub_1DA379010(v15 + 1);
          v14 = v19[0];
        }

        sub_1DA3794A4(v16, v14);

        *v3 = v14;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for AutoCompletePhrase(0);
    sub_1DA3949D4();
    sub_1DA36AA48(v19);
    sub_1DA394A14();
    OUTLINED_FUNCTION_8_2();
    v12 = ~v11;
    while (1)
    {
      v13 = v10 & v12;
      if (((*(v6 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19[0] = *v2;

        sub_1DA3797B4(v18, v13, isUniquelyReferenced_nonNull_native);
        *v2 = v19[0];
        goto LABEL_16;
      }

      if (static AutoCompletePhrase.== infix(_:_:)(*(*(v6 + 48) + 8 * v13), a2))
      {
        break;
      }

      v10 = v13 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v13);

    return 0;
  }

  return result;
}

uint64_t sub_1DA378824(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_1DA3949D4();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v32 = a2;
  v9 = *(a2 + 32);
  sub_1DA394354();
  v35 = v8;
  v36 = v7;
  sub_1DA394354();
  v34 = v9;
  MEMORY[0x1DA74C080](v9 + 1);
  sub_1DA394A14();
  v10 = v4 + 56;
  OUTLINED_FUNCTION_8_2();
  v13 = v12 & ~v11;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v30 = v4;
    v15 = *(v4 + 48);
    while (1)
    {
      v16 = v15 + 40 * v13;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *v16 == v5 && *(v16 + 8) == v6;
      if (v20 || (sub_1DA394934() & 1) != 0)
      {
        v21 = v17 == v36 && v18 == v35;
        if (v21 || (sub_1DA394934()) && v19 == v34)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1DA37AB7C(v32);
    v25 = *(v30 + 48) + 40 * v13;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    LOBYTE(v25) = *(v25 + 32);
    *a1 = v27;
    *(a1 + 8) = v26;
    *(a1 + 16) = v28;
    *(a1 + 24) = v29;
    *(a1 + 32) = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v31;
    sub_1DA37AB20(v32, v38);
    sub_1DA379900(v32, v13, isUniquelyReferenced_nonNull_native);
    *v31 = v37;
    v23 = *(v32 + 1);
    *a1 = *v32;
    *(a1 + 16) = v23;
    *(a1 + 32) = *(v32 + 32);
    return 1;
  }
}

void *sub_1DA378A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
    v2 = sub_1DA394744();
    v9 = v2;
    sub_1DA394664();
    while (1)
    {
      v3 = sub_1DA3946F4();
      if (!v3)
      {
        break;
      }

      v8[0] = v3;
      type metadata accessor for AutoCompletePhrase(0);
      swift_dynamicCast();
      v4 = v2[2];
      if (v2[3] <= v4)
      {
        sub_1DA379010(v4 + 1);
      }

      v2 = v9;
      v5 = v8[9];
      sub_1DA3949D4();
      sub_1DA36AA48(v8);
      sub_1DA394A14();
      v6 = sub_1DA394644();
      *(v2 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v6;
      *(v2[6] + 8 * v6) = v5;
      ++v2[2];
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DA378B90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD450, &unk_1DA395DF0);
  result = sub_1DA394734();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1DA379B00(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1DA3949C4();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DA378DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD488, &qword_1DA395E28);
  result = sub_1DA394734();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1DA379B00(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DA3949D4();
    sub_1DA394354();
    result = sub_1DA394A14();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1DA379010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
  result = sub_1DA394734();
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
    for (i = result + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1DA3949D4();
      sub_1DA36AA48(v18);
      sub_1DA394A14();
      result = sub_1DA394644();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v5 + 48) + 8 * result) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      sub_1DA379B00(0, (v17 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v17;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DA3791F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD460, &qword_1DA395E00);
  result = sub_1DA394734();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v32 = v1;
  v33 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1DA379B00(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    sub_1DA3949D4();
    sub_1DA394354();
    sub_1DA394354();
    MEMORY[0x1DA74C080](v21 + 1);
    result = sub_1DA394A14();
    v22 = -1 << *(v5 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v5 + 48) + 40 * v25;
    *v30 = v17;
    *(v30 + 8) = v18;
    *(v30 + 16) = v19;
    *(v30 + 24) = v20;
    *(v30 + 32) = v21;
    ++*(v5 + 16);
    v3 = v33;
    v10 = v34;
    if (!v34)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v12 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1DA3794A4(uint64_t a1, uint64_t a2)
{
  sub_1DA3949D4();
  sub_1DA36AA48(v5);
  sub_1DA394A14();
  result = sub_1DA394644();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DA379548(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DA378B90(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DA37A0C0(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_1DA3949C4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DA379B64();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DA394954();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_1DA37964C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DA378DB4(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DA37A2AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DA3949D4();
      sub_1DA394354();
      result = sub_1DA394A14();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1DA394934() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DA379CA4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1DA394954();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_1DA3797B4(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DA379010(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DA37A4E0(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1DA3949D4();
      sub_1DA36AA48(v14);
      result = sub_1DA394A14();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AutoCompletePhrase(0);
        if (static AutoCompletePhrase.== infix(_:_:)(*(*(v12 + 48) + 8 * a2), v5))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DA379DFC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DA394954();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DA379900(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v31 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1DA3791F0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DA379F4C();
      goto LABEL_22;
    }

    sub_1DA37A688(v6 + 1);
  }

  v8 = *v3;
  sub_1DA3949D4();
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  sub_1DA394354();
  v33 = v11;
  sub_1DA394354();
  v32 = v13;
  MEMORY[0x1DA74C080](v13 + 1);
  result = sub_1DA394A14();
  v14 = v8 + 56;
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 48);
    do
    {
      v18 = v17 + 40 * a2;
      result = *v18;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *v18 == v9 && *(v18 + 8) == v10;
      if (v22 || (result = sub_1DA394934(), (result & 1) != 0))
      {
        v23 = v19 == v33 && v20 == v12;
        if (v23 || (result = sub_1DA394934(), (result & 1) != 0))
        {
          if (v21 == v32)
          {
            goto LABEL_25;
          }
        }
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_22:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = *(v24 + 48) + 40 * a2;
  v26 = *(v31 + 16);
  *v25 = *v31;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(v31 + 32);
  v27 = *(v24 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v24 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_25:
  result = sub_1DA394954();
  __break(1u);
  return result;
}

uint64_t sub_1DA379B00(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DA395620;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1DA379B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD450, &unk_1DA395DF0);
  v2 = *v0;
  v3 = sub_1DA394724();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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