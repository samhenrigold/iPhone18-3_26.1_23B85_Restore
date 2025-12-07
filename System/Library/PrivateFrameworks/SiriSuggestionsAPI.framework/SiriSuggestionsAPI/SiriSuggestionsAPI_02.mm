uint64_t sub_1BFA2AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_1BFAAE3F8();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA2AF14, 0, 0);
}

uint64_t sub_1BFA2AF14(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 16);
  sub_1BFAAE3E8();
  v4 = v3[20];
  v5 = v3[21];
  __swift_project_boxed_opaque_existential_1(v3 + 17, v4);
  v6 = (v2 & 1) == 0;
  if (v2)
  {
    v7 = 0x6169646E496E6170;
  }

  else
  {
    v7 = 0x737567616DLL;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  v12 = (*(v5 + 16) + **(v5 + 16));
  v9 = swift_task_alloc();
  *(v1 + 56) = v9;
  *v9 = v1;
  v9[1] = sub_1BFA2B090;
  v10 = *(v1 + 48);

  return v12(v10, v7, v8, v4, v5);
}

uint64_t sub_1BFA2B090()
{
  OUTLINED_FUNCTION_40();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2B19C, 0, 0);
}

uint64_t sub_1BFA2B19C()
{
  v1 = v0[2];
  v2 = v1[20];
  v3 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v2);
  v8 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1BFA2B2D0;
  v5 = v0[6];
  v6 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1BFA2B2D0()
{
  OUTLINED_FUNCTION_40();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2B3C0, 0, 0);
}

uint64_t sub_1BFA2B3C0()
{
  OUTLINED_FUNCTION_40();
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

id sub_1BFA2B438@<X0>(char *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v3 = sub_1BF9F8E78(0x737567616DLL, 0xE500000000000000);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  result = sub_1BF9F8E78(0x6169646E496E6170, 0xE800000000000000);
  v5 = result;
  if ((v3 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]), result = SiriFeatureSupportPolicyProvider.isMagusSupported()(), (result & 1) == 0))
  {
    if ((v5 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]), result = SiriFeatureSupportPolicyProvider.isPanIndiaSupported()(), (result & 1) == 0))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1BFA2B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1BFA29FE4(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1BFA2B544(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (((2 * v1) & 0x7C) != 0)
  {
    return 128 - ((2 * v1) & 0x7C | (v1 >> 6));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BFA2B574()
{
  result = qword_1EBDFB900;
  if (!qword_1EBDFB900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDFB900);
  }

  return result;
}

uint64_t sub_1BFA2B5B8(uint64_t a1)
{
  v4 = *(sub_1BFAAE3F8() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BFA2B6C0;

  return sub_1BFA2AE50(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1BFA2B6C0()
{
  OUTLINED_FUNCTION_40();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BFA2B7D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BFA2B840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BFA2B988;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BFA2B988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1BFA2BA9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB1C20;
  *(inited + 32) = sub_1BFAAF868();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1BFAAF868();
  *(inited + 56) = v2;
  *(inited + 64) = sub_1BFAAF868();
  *(inited + 72) = v3;
  result = sub_1BFA7A2E4(inited);
  qword_1EDCC6D58 = result;
  return result;
}

uint64_t sub_1BFA2BB38()
{
  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {
    return 0;
  }

  v0 = sub_1BFAAE758();

  return v0;
}

uint64_t sub_1BFA2BB88(char a1)
{
  *(*v1 + 137) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2BCA8, 0, 0);
}

uint64_t sub_1BFA2BCA8()
{
  v19 = v0;
  v1 = *(v0 + 64);
  v16 = *(v0 + 48);
  v2 = *(v0 + 137);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v17 = *(v0 + 136);
  v18 = v1;
  v9 = (*(v5 + 8))(v7, v8, v3, v4, v2, &v16, v6);
  v11 = v10;
  v13 = v12;

  v14 = *(v0 + 8);

  return v14(v9, v11, v13);
}

void *sub_1BFA2BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v8 = *a4;
  v7 = *(a4 + 8);
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  v11 = *(a4 + 32);
  v25 = *a4;
  v26 = v7;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  if (sub_1BF9FF22C(&v25))
  {
    v24 = a2;
    v12 = v4[5];
    v13 = v4[6];
    v23 = __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
    v14 = sub_1BFAAE398();
    v25 = v8;
    v26 = v7;
    v27 = v9;
    v28 = v10;
    v29 = v11;
    v15 = v23;
    v17 = (*(v13 + 8))(v30, v24, v14, v16, 0, &v25, v12, v13);
    if (!v5)
    {
      v15 = v17;
    }
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v18 = sub_1BFAAF688();
    __swift_project_value_buffer(v18, qword_1EDCC77C8);
    v19 = sub_1BFAAF668();
    v20 = sub_1BFAAFB78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BF9F6000, v19, v20, "[SiriHintsViewService] Suggestions are not applicable for current Siri execution. Returning nil", v21, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    return 0;
  }

  return v15;
}

uint64_t SiriSuggestions.SuggestionList.init(suggestions:sourceOwner:generationId:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v8);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  v28 = a2;
  sub_1BF9F94C4(a2, v31);
  v22 = *(v14 + 16);
  v27 = a3;
  v22(v21, a3, v12);
  sub_1BF9F94C4(v31, v30);
  v22(v18, v21, v12);
  v23 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
  v29 = a1;

  sub_1BFA1B5D0(&v29);

  v24 = *(v14 + 8);
  v24(v27, v12);
  __swift_destroy_boxed_opaque_existential_2Tm(v28);
  v24(v21, v12);
  __swift_destroy_boxed_opaque_existential_2Tm(v31);
  *a4 = v29;
  sub_1BF9F97E4();
  v25 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(v14 + 32))(&a4[v25[6]], v18, v12);
  *&a4[v25[7]] = 0xBFF0000000000000;
  return sub_1BFA1B678(v11, &a4[v25[8]]);
}

uint64_t SiriSuggestions.SuggestionList.suggestions.getter()
{
  v1 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_0();
  v26 = v5 - v6;
  result = MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = 0;
  v12 = *v0;
  v13 = *(*v0 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v11)
    {
      return v14;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    sub_1BFA1C998(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v10);
    v15 = &v10[*(v1 + 24)];
    v16 = &v15[*(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 36)];
    if (!*(v16 + 2) || (*v16 & 1) != 0)
    {
      OUTLINED_FUNCTION_1_3();
      sub_1BFA2E4F4(v10, v26, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BFA2DC10(0, *(v14 + 16) + 1, 1);
        v14 = v27;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v25 = v20 + 1;
        sub_1BFA2DC10(v19 > 1, v20 + 1, 1);
        v21 = v25;
        v14 = v27;
      }

      ++v11;
      *(v14 + 16) = v21;
      OUTLINED_FUNCTION_1_3();
      result = sub_1BFA2E4F4(v26, v22, v23);
    }

    else
    {
      result = sub_1BFA2E5F8(v10, type metadata accessor for SiriSuggestions.Suggestion);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BFA2C3EC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_4_0();
  v25 = v7 - v8;
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {

      return v26;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    sub_1BFA1C998(a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v12);
    v15 = v27(v12);
    if (v3)
    {
      sub_1BFA2E5F8(v12, type metadata accessor for SiriSuggestions.Suggestion);
      v23 = v26;

      return v23;
    }

    if (v15)
    {
      sub_1BFA2E4F4(v12, v25, type metadata accessor for SiriSuggestions.Suggestion);
      v16 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BFA2DC10(0, *(v16 + 16) + 1, 1);
        v16 = v29;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v26 = v19 + 1;
        v24[1] = v19;
        sub_1BFA2DC10(v18 > 1, v19 + 1, 1);
        v20 = v26;
        v16 = v29;
      }

      ++v13;
      *(v16 + 16) = v20;
      v26 = v16;
      OUTLINED_FUNCTION_1_3();
      result = sub_1BFA2E4F4(v25, v21, v22);
    }

    else
    {
      result = sub_1BFA2E5F8(v12, type metadata accessor for SiriSuggestions.Suggestion);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriSuggestions.SuggestionList.generationId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.SuggestionList(0) + 24);
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SiriSuggestions.SuggestionList.experimentId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriSuggestions.SuggestionList(0) + 32);

  return sub_1BFA2E430(v3, a1);
}

uint64_t SiriSuggestions.SuggestionList.init(suggestions:sourceOwner:generationId:generationTs:experimentId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>, double a5@<D0>)
{
  v14 = a1;

  sub_1BFA1B5D0(&v14);

  *a4 = v14;
  sub_1BF9F97E4();
  v9 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v10 = v9[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0();
  (*(v11 + 32))(&a4[v10], a2);
  *&a4[v9[7]] = a5;
  v12 = &a4[v9[8]];

  return sub_1BFA1B678(a3, v12);
}

uint64_t SiriSuggestions.SuggestionList.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v6 = OUTLINED_FUNCTION_60_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_0();
  v52 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v44 - v10;
  v11 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v50 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB908, &qword_1BFAB1CD8);
  OUTLINED_FUNCTION_2_3();
  v51 = v21;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v25 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = sub_1BFA2E4A0();
  v27 = v54;
  sub_1BFAAFFF8();
  if (!v27)
  {
    v54 = v26;
    v46 = v19;
    v45 = v16;
    v29 = v51;
    v28 = v52;
    v30 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    v57[0] = 2;
    sub_1BFA2E650(&qword_1EDCC77B8, qword_1EDCC7818, &protocol conformance descriptor for SiriSuggestions.Suggestion, MEMORY[0x1E69E6330]);
    sub_1BFAAFE08();
    v31 = v58[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    v57[0] = 1;
    sub_1BFAAEE58();
    v32 = v24;
    v33 = v29;
    v44 = v31;
    v57[0] = 0;
    OUTLINED_FUNCTION_5_2();
    sub_1BFA2E6EC(v34, v35, MEMORY[0x1E69695D0]);
    v36 = v11;
    sub_1BFAAFE08();
    v57[0] = 3;
    sub_1BFAAFDE8();
    v38 = v37;
    sub_1BFAAED08();
    v57[0] = 4;
    v39 = v49;
    sub_1BFAAEE18();
    v40 = v50;
    v54 = v32;
    sub_1BF9F94C4(v58, v57);
    v42 = v46;
    (*(v40 + 16))(v45, v46, v36);
    sub_1BFA2E430(v39, v28);
    v56 = v44;

    sub_1BFA1B5D0(&v56);

    sub_1BF9FAB40(v49, &qword_1EBDFB670, &qword_1BFAB1CD0);
    (*(v40 + 8))(v42, v36);
    __swift_destroy_boxed_opaque_existential_2Tm(v58);
    (*(v33 + 8))(v54, v20);
    *v30 = v56;
    sub_1BF9F97E4();
    v43 = v47;
    (*(v40 + 32))(&v30[*(v47 + 24)], v45, v36);
    *&v30[*(v43 + 28)] = v38;
    sub_1BFA1B678(v28, &v30[*(v43 + 32)]);
    sub_1BFA2E4F4(v30, v48, type metadata accessor for SiriSuggestions.SuggestionList);
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v55);
}

uint64_t SiriSuggestions.SuggestionList.init(copy:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v9 = a2;

  sub_1BFA2E554(&v9);

  *a3 = v9;
  sub_1BF9F94C4(a1 + 8, (a3 + 8));
  v5 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  v6 = v5[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0();
  (*(v7 + 16))(&a3[v6], a1 + v6);
  *&a3[v5[7]] = *(a1 + v5[7]);
  sub_1BFA2E430(a1 + v5[8], &a3[v5[8]]);
  return sub_1BFA2E5F8(a1, type metadata accessor for SiriSuggestions.SuggestionList);
}

uint64_t SiriSuggestions.SuggestionList.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v4);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB918, &unk_1BFAB1CF0);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA2E4A0();
  sub_1BFAB0008();
  *&v33 = *v2;
  v36 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
  sub_1BFA2E650(&qword_1EDCC6458, &qword_1EDCC6620, &protocol conformance descriptor for SiriSuggestions.Suggestion, MEMORY[0x1E69E6300]);
  v14 = v32;
  sub_1BFAAFEB8();
  if (v14)
  {
    return (*(v10 + 8))(v13, v8);
  }

  v31 = v8;
  v32 = v10;
  v30 = v7;
  v36 = 1;
  v16 = v2[4];
  v17 = v2[5];
  v18 = __swift_project_boxed_opaque_existential_1(v2 + 1, v16);
  v19 = *(v17 + 32);
  *(&v34 + 1) = v16;
  v35 = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v33);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v16);
  OUTLINED_FUNCTION_8_1();
  sub_1BFAAEE68();
  __swift_destroy_boxed_opaque_existential_2Tm(&v33);
  v21 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  LOBYTE(v33) = 0;
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_5_2();
  sub_1BFA2E6EC(v22, v23, MEMORY[0x1E69695B0]);
  v24 = v31;
  sub_1BFAAFEB8();
  v25 = v32;
  LOBYTE(v33) = 3;
  sub_1BFAAFE98();
  v36 = 4;
  v26 = v30;
  sub_1BFA2E430(v2 + *(v21 + 32), v30);
  v27 = sub_1BFAAED08();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1BF9FAB40(v26, &qword_1EBDFB670, &qword_1BFAB1CD0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  else
  {
    *(&v34 + 1) = v27;
    v35 = sub_1BFA2E6EC(&qword_1EBDFB920, MEMORY[0x1E69D2F50], MEMORY[0x1E69D2F58]);
    v28 = __swift_allocate_boxed_opaque_existential_1Tm(&v33);
    (*(*(v27 - 8) + 32))(v28, v26, v27);
  }

  OUTLINED_FUNCTION_8_1();
  sub_1BFAAEE28();
  (*(v25 + 8))(v13, v24);
  return sub_1BF9FAB40(&v33, &qword_1EBDFB5A8, &qword_1BFAB0A00);
}

uint64_t sub_1BFA2D3D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x69746172656E6567 && a2 == 0xEC00000064496E6FLL;
  if (v3 || (OUTLINED_FUNCTION_7(0x69746172656E6567, 0xEC00000064496E6FLL) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_12_5();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_11_3();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_7(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = a1 == 0x69746172656E6567 && a2 == 0xEC00000073546E6FLL;
        if (v12 || (OUTLINED_FUNCTION_7(0x69746172656E6567, 0xEC00000073546E6FLL) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL)
        {

          return 4;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_7(0x656D697265707865, 0xEC0000006449746ELL);

          if (v14)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BFA2D520(char a1)
{
  result = 0x69746172656E6567;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_12_5();
      break;
    case 2:
      result = OUTLINED_FUNCTION_11_3();
      break;
    case 4:
      result = 0x656D697265707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA2D5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA2D3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA2D5F8(uint64_t a1)
{
  v2 = sub_1BFA2E4A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA2D634(uint64_t a1)
{
  v2 = sub_1BFA2E4A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SuggestionList.init(suggestions:sourceOwner:generationId:generationTs:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v10);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF9F94C4(a2, v25);
  (*(v16 + 16))(v19, a3, v14);
  v20 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  v24 = a1;

  sub_1BFA1B5D0(&v24);

  (*(v16 + 8))(a3, v14);
  __swift_destroy_boxed_opaque_existential_2Tm(a2);
  *a4 = v24;
  sub_1BF9F97E4();
  v21 = type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(v16 + 32))(&a4[v21[6]], v19, v14);
  *&a4[v21[7]] = a5;
  return sub_1BFA1B678(v13, &a4[v21[8]]);
}

char *sub_1BFA2D8AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_1BFA2D934(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_1BFA2D95C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

uint64_t sub_1BFA2DA0C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1BFA2DAF8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_14_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_14_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1BFA2DBB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB978, &qword_1BFAB1F10, MEMORY[0x1E69D2D78], MEMORY[0x1E69D2D78]);
  *v3 = result;
  return result;
}

void *sub_1BFA2DC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_4();
  result = sub_1BFA2DE18(v4, v5, v6, v7, v8, v9, v10, type metadata accessor for SiriSuggestions.Suggestion);
  *v3 = result;
  return result;
}

char *sub_1BFA2DC58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2DFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BFA2DC78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB968, &unk_1BFAB1EF0, MEMORY[0x1E69D2A98], MEMORY[0x1E69D2A98]);
  *v3 = result;
  return result;
}

void *sub_1BFA2DCD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB960, &qword_1BFAB4FB0, type metadata accessor for SiriAutoCompleteSuggestion, type metadata accessor for SiriAutoCompleteSuggestion);
  *v3 = result;
  return result;
}

void *sub_1BFA2DD28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2E0E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BFA2DD48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB948, &qword_1BFAB1ED0, MEMORY[0x1E69D2F70], MEMORY[0x1E69D2F70]);
  *v3 = result;
  return result;
}

void *sub_1BFA2DDA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2E218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BFA2DDC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB940, &qword_1BFAB1EC8, MEMORY[0x1E69D2F18], MEMORY[0x1E69D2F18]);
  *v3 = result;
  return result;
}

void *sub_1BFA2DE18(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
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
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_1BFA2DAF8(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1BFA2DFE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BFA2E0E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB950, &qword_1BFAB1ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BFA2E218(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB930, &qword_1BFAB1EB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1BFA2DA0C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for SiriSuggestions.SuggestionList(uint64_t a1)
{
  result = qword_1EDCC86D8;
  if (!qword_1EDCC86D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BFA2E430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA2E4A0()
{
  result = qword_1EDCC86F8[0];
  if (!qword_1EDCC86F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC86F8);
  }

  return result;
}

uint64_t sub_1BFA2E4F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BFA2E554(uint64_t *a1)
{
  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1BFA2FE30(v5, v6, v7);
  }

  v8 = v5[2];
  v10[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10[1] = v8;
  result = sub_1BFA2EB48(v10);
  *a1 = v5;
  return result;
}

uint64_t sub_1BFA2E5F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BFA2E650(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    sub_1BFA2E6EC(a2, type metadata accessor for SiriSuggestions.Suggestion, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA2E6EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BFA2E75C(uint64_t a1)
{
  sub_1BFA2E878(319, &qword_1EDCC84E0, type metadata accessor for SiriSuggestions.Suggestion, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BFA16528();
    if (v2 <= 0x3F)
    {
      sub_1BFAAE3F8();
      if (v3 <= 0x3F)
      {
        sub_1BFA2E878(319, qword_1EDCC8508, MEMORY[0x1E69D2F50], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BFA2E878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s14SuggestionListV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14SuggestionListV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFA2EA44()
{
  result = qword_1EBDFB928;
  if (!qword_1EBDFB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB928);
  }

  return result;
}

unint64_t sub_1BFA2EA9C()
{
  result = qword_1EDCC86E8;
  if (!qword_1EDCC86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC86E8);
  }

  return result;
}

unint64_t sub_1BFA2EAF4()
{
  result = qword_1EDCC86F0;
  if (!qword_1EDCC86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC86F0);
  }

  return result;
}

uint64_t sub_1BFA2EB48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BFAAFEC8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SiriSuggestions.Suggestion(0);
        v6 = sub_1BFAAFA28();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SiriSuggestions.Suggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BFA2EEB8(v8, v9, a1, v4);
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
    return sub_1BFA2EC78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BFA2EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v35 = v20;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      do
      {
        sub_1BFA1C998(v22, v17);
        sub_1BFA1C998(v20, v13);
        v23 = *(v8 + 44);
        v24 = v8;
        v25 = *&v17[v23];
        v26 = *&v13[v23];
        sub_1BFA2E5F8(v13, type metadata accessor for SiriSuggestions.Suggestion);
        result = sub_1BFA2E5F8(v17, type metadata accessor for SiriSuggestions.Suggestion);
        v27 = v25 < v26;
        v8 = v24;
        if (!v27)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        v28 = v39;
        sub_1BFA2E4F4(v22, v39, type metadata accessor for SiriSuggestions.Suggestion);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1BFA2E4F4(v28, v20, type metadata accessor for SiriSuggestions.Suggestion);
        v20 += v37;
        v22 += v37;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v36 + 1;
      v20 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BFA2EEB8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v114 = a1;
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v121 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v117 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v127 = &v112 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v130 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v112 - v13;
  v123 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v130 = *v114;
    if (!v130)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v124;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v104 = (v16 + 16);
      v105 = *(v16 + 16);
      while (v105 >= 2)
      {
        if (!*v123)
        {
          goto LABEL_138;
        }

        v106 = v6;
        v107 = v16;
        v6 = v16 + 16 * v105;
        v108 = *v6;
        v109 = &v104[2 * v105];
        v110 = v109[1];
        sub_1BFA2F7A8(*v123 + *(v121 + 72) * *v6, *v123 + *(v121 + 72) * *v109, *v123 + *(v121 + 72) * v110, v130);
        v16 = v106;
        if (v106)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_126;
        }

        if (v105 - 2 >= *v104)
        {
          goto LABEL_127;
        }

        *v6 = v108;
        *(v6 + 8) = v110;
        v111 = *v104 - v105;
        if (*v104 < v105)
        {
          goto LABEL_128;
        }

        v105 = *v104 - 1;
        memmove(v109, v109 + 2, 16 * v111);
        *v104 = v105;
        v6 = 0;
        v16 = v107;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v16 = sub_1BFA2FC4C(v16);
    goto LABEL_102;
  }

  v112 = a4;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v128 = v6;
  while (1)
  {
    v17 = v15++;
    v115 = v17;
    if (v15 < v14)
    {
      v113 = v16;
      v18 = *v123;
      v16 = *(v121 + 72);
      v19 = *v123 + v16 * v15;
      v20 = v15;
      v21 = v129;
      v120 = v14;
      sub_1BFA1C998(v19, v129);
      v22 = v130;
      sub_1BFA1C998(v18 + v16 * v17, v130);
      v23 = *(v6 + 44);
      v24 = *(v21 + v23);
      v118 = *(v22 + v23);
      v119 = v24;
      sub_1BFA2E5F8(v22, type metadata accessor for SiriSuggestions.Suggestion);
      v25 = v21;
      v15 = v20;
      sub_1BFA2E5F8(v25, type metadata accessor for SiriSuggestions.Suggestion);
      v26 = v120;
      v27 = v17 + 2;
      v122 = v16;
      v28 = v18 + v16 * (v17 + 2);
      while (1)
      {
        v29 = v27;
        v30 = v15 + 1;
        if (v30 >= v26)
        {
          break;
        }

        LODWORD(v125) = v119 < v118;
        v16 = v30;
        v31 = v129;
        v126 = v27;
        sub_1BFA1C998(v28, v129);
        v32 = v130;
        sub_1BFA1C998(v19, v130);
        v33 = *(v6 + 44);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_1BFA2E5F8(v32, type metadata accessor for SiriSuggestions.Suggestion);
        v36 = v31;
        v15 = v16;
        sub_1BFA2E5F8(v36, type metadata accessor for SiriSuggestions.Suggestion);
        v29 = v126;
        v26 = v120;
        v28 += v122;
        v19 += v122;
        v27 = v126 + 1;
        if (((v125 ^ (v34 >= v35)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = v26;
LABEL_9:
      if (v119 < v118)
      {
        v17 = v115;
        if (v15 < v115)
        {
          goto LABEL_132;
        }

        if (v115 >= v15)
        {
          v16 = v113;
          goto LABEL_30;
        }

        if (v26 >= v29)
        {
          v37 = v29;
        }

        else
        {
          v37 = v26;
        }

        v38 = v122 * (v37 - 1);
        v39 = v122 * v37;
        v40 = v115 * v122;
        v41 = v115;
        v42 = v15;
        do
        {
          if (v41 != --v42)
          {
            v43 = *v123;
            if (!*v123)
            {
              goto LABEL_139;
            }

            sub_1BFA2E4F4(v43 + v40, v117, type metadata accessor for SiriSuggestions.Suggestion);
            v44 = v40 < v38 || v43 + v40 >= (v43 + v39);
            if (v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BFA2E4F4(v117, v43 + v38, type metadata accessor for SiriSuggestions.Suggestion);
          }

          ++v41;
          v38 -= v122;
          v39 -= v122;
          v40 += v122;
        }

        while (v41 < v42);
      }

      v16 = v113;
      v17 = v115;
    }

LABEL_30:
    v45 = v123[1];
    if (v15 < v45)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_131;
      }

      if (v15 - v17 < v112)
      {
        break;
      }
    }

LABEL_48:
    if (v15 < v17)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BFA1F1DC();
      v16 = v101;
    }

    v59 = *(v16 + 16);
    v60 = v59 + 1;
    if (v59 >= *(v16 + 24) >> 1)
    {
      sub_1BFA1F1DC();
      v16 = v102;
    }

    *(v16 + 16) = v60;
    v61 = v16 + 32;
    v62 = (v16 + 32 + 16 * v59);
    *v62 = v115;
    v62[1] = v15;
    v126 = *v114;
    if (!v126)
    {
      goto LABEL_140;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = (v61 + 16 * (v60 - 1));
        v65 = (v16 + 16 * v60);
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v16 + 32);
          v67 = *(v16 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_68:
          if (v69)
          {
            goto LABEL_117;
          }

          v81 = *v65;
          v80 = v65[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_120;
          }

          v85 = v64[1];
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_125;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v60 < 2)
        {
          goto LABEL_119;
        }

        v88 = *v65;
        v87 = v65[1];
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_83:
        if (v84)
        {
          goto LABEL_122;
        }

        v90 = *v64;
        v89 = v64[1];
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_124;
        }

        if (v91 < v83)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_134;
        }

        if (!*v123)
        {
          goto LABEL_137;
        }

        v95 = (v61 + 16 * (v63 - 1));
        v96 = *v95;
        v97 = (v61 + 16 * v63);
        v98 = v97[1];
        v99 = v124;
        sub_1BFA2F7A8(*v123 + *(v121 + 72) * *v95, *v123 + *(v121 + 72) * *v97, *v123 + *(v121 + 72) * v98, v126);
        v6 = v99;
        if (v99)
        {
          goto LABEL_110;
        }

        if (v98 < v96)
        {
          goto LABEL_112;
        }

        v124 = 0;
        v6 = v16;
        v16 = *(v16 + 16);
        if (v63 > v16)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        v95[1] = v98;
        if (v63 >= v16)
        {
          goto LABEL_114;
        }

        v60 = v16 - 1;
        memmove((v61 + 16 * v63), v97 + 2, 16 * (v16 - 1 - v63));
        *(v6 + 16) = v16 - 1;
        v100 = v16 > 2;
        v16 = v6;
        v6 = v128;
        if (!v100)
        {
          goto LABEL_97;
        }
      }

      v70 = v61 + 16 * v60;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_115;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_116;
      }

      v77 = v65[1];
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_118;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_121;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = v64[1];
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v123[1];
    if (v15 >= v14)
    {
      goto LABEL_100;
    }
  }

  v46 = v17 + v112;
  if (__OFADD__(v17, v112))
  {
    goto LABEL_133;
  }

  if (v46 >= v45)
  {
    v46 = v123[1];
  }

  if (v46 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v15 == v46)
  {
    goto LABEL_48;
  }

  v113 = v16;
  v47 = *(v121 + 72);
  v48 = *v123 + v47 * (v15 - 1);
  v49 = -v47;
  v50 = v17 - v15;
  v126 = *v123;
  v116 = v47;
  v51 = v126 + v15 * v47;
  v118 = v46;
LABEL_39:
  v125 = v15;
  v119 = v51;
  v120 = v50;
  v122 = v48;
  v52 = v48;
  while (1)
  {
    v53 = v129;
    sub_1BFA1C998(v51, v129);
    v54 = v130;
    sub_1BFA1C998(v52, v130);
    v55 = *(v6 + 44);
    v56 = *(v53 + v55);
    v57 = *(v54 + v55);
    sub_1BFA2E5F8(v54, type metadata accessor for SiriSuggestions.Suggestion);
    sub_1BFA2E5F8(v53, type metadata accessor for SiriSuggestions.Suggestion);
    if (v56 >= v57)
    {
      v6 = v128;
LABEL_46:
      v15 = v125 + 1;
      v48 = v122 + v116;
      v50 = v120 - 1;
      v51 = v119 + v116;
      if (v125 + 1 == v118)
      {
        v15 = v118;
        v16 = v113;
        v17 = v115;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v126)
    {
      break;
    }

    v58 = v127;
    sub_1BFA2E4F4(v51, v127, type metadata accessor for SiriSuggestions.Suggestion);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BFA2E4F4(v58, v52, type metadata accessor for SiriSuggestions.Suggestion);
    v52 += v49;
    v51 += v49;
    v44 = __CFADD__(v50++, 1);
    if (v44)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_1BFA2F7A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v63 = &v54 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v18 = v14 / v13;
  v67 = a1;
  v66 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1BFA2DAF8(a2, v16 / v13, a4, type metadata accessor for SiriSuggestions.Suggestion);
    v34 = a4 + v19 * v13;
    v35 = -v13;
    v36 = v34;
    v58 = a1;
    v59 = a4;
    v57 = -v13;
LABEL_37:
    v37 = a2 + v35;
    v38 = a3;
    v55 = v36;
    v60 = a2 + v35;
    v61 = a2;
    while (1)
    {
      if (v34 <= a4)
      {
        v67 = a2;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v56 = v36;
      v39 = v38 + v35;
      v40 = v34 + v35;
      v41 = v63;
      v42 = v38;
      sub_1BFA1C998(v34 + v35, v63);
      v43 = v34;
      v44 = v62;
      sub_1BFA1C998(v37, v62);
      v45 = *(v64 + 44);
      v46 = *(v41 + v45);
      v47 = v44;
      v48 = *(v44 + v45);
      sub_1BFA2E5F8(v47, type metadata accessor for SiriSuggestions.Suggestion);
      sub_1BFA2E5F8(v41, type metadata accessor for SiriSuggestions.Suggestion);
      if (v46 < v48)
      {
        v34 = v43;
        v51 = v42 < v61 || v39 >= v61;
        a3 = v39;
        if (v51)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v56;
          v35 = v57;
          a1 = v58;
          a4 = v59;
        }

        else
        {
          v35 = v57;
          v36 = v56;
          v15 = v42 == v61;
          a4 = v59;
          v52 = v60;
          a2 = v60;
          a1 = v58;
          if (!v15)
          {
            v53 = v56;
            swift_arrayInitWithTakeBackToFront();
            a2 = v52;
            v36 = v53;
          }
        }

        goto LABEL_37;
      }

      v49 = v42 < v43 || v39 >= v43;
      v50 = v39;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v39;
        v34 = v40;
        v36 = v40;
        a1 = v58;
        a4 = v59;
        v37 = v60;
        a2 = v61;
        v35 = v57;
      }

      else
      {
        v36 = v40;
        v15 = v43 == v42;
        v38 = v39;
        v34 = v40;
        a1 = v58;
        a4 = v59;
        v37 = v60;
        a2 = v61;
        v35 = v57;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v50;
          v34 = v40;
          v36 = v40;
        }
      }
    }

    v67 = a2;
    v36 = v55;
LABEL_59:
    v65 = v36;
  }

  else
  {
    sub_1BFA2DAF8(a1, v14 / v13, a4, type metadata accessor for SiriSuggestions.Suggestion);
    v60 = a3;
    v61 = a4 + v18 * v13;
    v65 = v61;
    while (a4 < v61 && a2 < a3)
    {
      v21 = v13;
      v22 = a1;
      v23 = v63;
      sub_1BFA1C998(a2, v63);
      v24 = a4;
      v25 = a4;
      v26 = v62;
      sub_1BFA1C998(v24, v62);
      v27 = *(v64 + 44);
      v28 = *(v23 + v27);
      v29 = a2;
      v30 = *(v26 + v27);
      sub_1BFA2E5F8(v26, type metadata accessor for SiriSuggestions.Suggestion);
      sub_1BFA2E5F8(v23, type metadata accessor for SiriSuggestions.Suggestion);
      if (v28 >= v30)
      {
        a2 = v29;
        v13 = v21;
        a4 = v25 + v21;
        v31 = v22;
        if (v22 < v25 || v22 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v60;
        }

        else
        {
          a3 = v60;
          if (v22 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v66 = v25 + v21;
      }

      else
      {
        a2 = v29 + v21;
        v31 = v22;
        v32 = v22 < v29 || v22 >= a2;
        a4 = v25;
        if (v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v60;
        }

        else
        {
          a3 = v60;
          if (v22 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v13 = v21;
      }

      a1 = v31 + v13;
      v67 = a1;
    }
  }

  sub_1BFA2FC60(&v67, &v66, &v65);
  return 1;
}

void sub_1BFA2FC60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {
    OUTLINED_FUNCTION_93();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_93();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1BFA2FD30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB770, &unk_1BFAB1F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *DefaultSELFLogger.__allocating_init()()
{
  OUTLINED_FUNCTION_58_0();
  result = swift_allocObject();
  result[2] = &unk_1BFAB1F30;
  result[3] = 0;
  result[4] = sub_1BFA301BC;
  result[5] = 0;
  return result;
}

SiriSuggestionsAPI::UIActivity_optional __swiftcall UIActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UIActivity.rawValue.getter()
{
  v1 = 0x646570706174;
  if (*v0 != 1)
  {
    v1 = 0x64657265646E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

uint64_t sub_1BFA2FFC8@<X0>(uint64_t *a1@<X8>)
{
  result = UIActivity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BFA2FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  *(v9 + 24) = *v10;
  OUTLINED_FUNCTION_15_0();
  v25 = v11 + *v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_45(v13);
  OUTLINED_FUNCTION_48_0();

  return v21(v15, v16, v17, v18, v19, v20, v21, v22, a9, v25);
}

uint64_t sub_1BFA3012C()
{
  OUTLINED_FUNCTION_40();
  [objc_msgSend(objc_opt_self() sharedStream)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA301BC@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1BFAAE3B8();
  v4 = [v2 derivedIdentifierForComponentName:32 fromSourceIdentifier:v3];

  if (v4)
  {
    sub_1BFAAE3D8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BFAAE3F8();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void *DefaultSELFLogger.__allocating_init(selfEmitter:uuidMapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  OUTLINED_FUNCTION_58_0();
  result = swift_allocObject();
  result[2] = &unk_1BFAB1F40;
  result[3] = v8;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1BFA302E8(void *a1, int *a2)
{
  v2[5] = sub_1BFA3C744(0, &qword_1EBDFB9E0, 0x1E69CF600);
  v2[2] = a1;
  v5 = a1;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1BFA30410;

  return v8(v2 + 2);
}

uint64_t sub_1BFA30410()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_2Tm((v2 + 16));
  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA304F8()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v5[1] = sub_1BF9FDF08;

  return sub_1BFA302E8(v2, v3);
}

uint64_t sub_1BFA305A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BFAAE3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  (*(v2 + 32))(a1);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    sub_1BF9FAB40(v11, &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v12 = sub_1BFAAF688();
    __swift_project_value_buffer(v12, qword_1EDCC7478);
    (*(v6 + 16))(v8, a1, v5);
    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_1BFAAE398();
      v19 = v18;
      (*(v6 + 8))(v8, v5);
      v20 = sub_1BF9F88A8(v17, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BF9F6000, v13, v14, "error generating derived identifier for SUG from request UUID - %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v16);
      MEMORY[0x1BFB618C0](v16, -1, -1);
      MEMORY[0x1BFB618C0](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v21 = 1;
  }

  else
  {
    (*(v6 + 32))(a2, v11, v5);
    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v21, 1, v5);
}

NSObject *sub_1BFA308A0(uint64_t a1)
{
  v2 = sub_1BFAAE3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69CF698]) init];
  if (!v6)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v11 = sub_1BFAAF688();
    __swift_project_value_buffer(v11, qword_1EDCC7478);
    v7 = sub_1BFAAF668();
    v12 = sub_1BFAAFB88();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BF9F6000, v7, v12, "error initializing SUGSchemaSUGClientEvent", v13, 2u);
      MEMORY[0x1BFB618C0](v13, -1, -1);
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69CF6A0]) init];
  if (!v8)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v14 = sub_1BFAAF688();
    __swift_project_value_buffer(v14, qword_1EDCC7478);
    v15 = sub_1BFAAF668();
    v16 = sub_1BFAAFB88();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BF9F6000, v15, v16, "error initializing SUGSchemaSUGClientEventMetadata", v17, 2u);
      MEMORY[0x1BFB618C0](v17, -1, -1);
    }

LABEL_13:
    return 0;
  }

  v9 = v8;
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_1BFA30B80(v5);
  [v9 setSugId_];

  [v7 setEventMetadata:v9];
  return v7;
}

id sub_1BFA30B80(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BFAAE3B8();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1BFAAE3F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

NSObject *sub_1BFA30C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_1BFAAE3F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1BFA305A4(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1BF9FAB40(v4, &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v12 = sub_1BFAAF688();
    __swift_project_value_buffer(v12, qword_1EDCC7478);
    (*(v6 + 16))(v9, a1, v5);
    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      sub_1BFA3C6FC(&qword_1EDCC7430, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v17 = sub_1BFAAFEE8();
      v19 = v18;
      (*(v6 + 8))(v9, v5);
      v20 = sub_1BF9F88A8(v17, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1BF9F6000, v13, v14, "Error emitting request link because of nil sugID and requestId - %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v16);
      MEMORY[0x1BFB618C0](v16, -1, -1);
      MEMORY[0x1BFB618C0](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v21 = sub_1BFA308A0(v11);
    (*(v6 + 8))(v11, v5);
  }

  return v21;
}

uint64_t DefaultSELFLogger.logRequestLink(requestId:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1BFAAF898();
  OUTLINED_FUNCTION_60_0(v4);
  v1[7] = OUTLINED_FUNCTION_100();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v5);
  v1[8] = OUTLINED_FUNCTION_100();
  v6 = sub_1BFAAE3F8();
  v1[9] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BFA310B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, os_log_t log, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_61_0();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_80();
  a22 = v24;
  v29 = v24[8];
  v28 = v24[9];
  v30 = v24[6];
  sub_1BFA305A4(v24[5], v29);
  if (__swift_getEnumTagSinglePayload(v29, 1, v28) == 1)
  {
    sub_1BF9FAB40(v24[8], &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v31 = sub_1BFAAF688();
    __swift_project_value_buffer(v31, qword_1EDCC7478);
    v32 = OUTLINED_FUNCTION_9_3();
    v33(v32);
    v34 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_35_2();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_51_0();
      a13 = OUTLINED_FUNCTION_32();
      *v25 = 136315138;
      OUTLINED_FUNCTION_31_1();
      sub_1BFA3C6FC(v36, v37, MEMORY[0x1E69695E0]);
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_69_0();
      v38 = OUTLINED_FUNCTION_40_0();
      v39(v38);
      v40 = OUTLINED_FUNCTION_34_2();
      v43 = sub_1BF9F88A8(v40, v41, v42);

      *(v25 + 4) = v43;
      OUTLINED_FUNCTION_50_1(&dword_1BF9F6000, v44, v45, "Error emitting request link because of nil sugID and requestId - %s");
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {

      v72 = OUTLINED_FUNCTION_40_0();
      v73(v72);
    }

LABEL_23:
    OUTLINED_FUNCTION_86_0();

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_12_3();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, log, a12, a13, a14, a15, a16);
  }

  (*(v24[10] + 32))(v24[16], v24[8], v24[9]);
  v46 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF5E8]));
  v24[17] = v46;
  if (!v46)
  {
LABEL_18:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v74 = sub_1BFAAF688();
    __swift_project_value_buffer(v74, qword_1EDCC7478);
    v75 = OUTLINED_FUNCTION_9_3();
    v76(v75);
    v77 = sub_1BFAAF668();
    v78 = sub_1BFAAFB88();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v24[16];
    v81 = v24[12];
    v83 = v24[9];
    v82 = v24[10];
    if (v79)
    {
      a12 = v24[16];
      v84 = OUTLINED_FUNCTION_51_0();
      v85 = swift_slowAlloc();
      a13 = v85;
      *v84 = 136315138;
      v86 = MEMORY[0x1BFB5F5E0]();
      v88 = v87;
      log = v83;
      v89 = *(v82 + 8);
      v89(v81, v83);
      v90 = sub_1BF9F88A8(v86, v88, &a13);

      *(v84 + 4) = v90;
      _os_log_impl(&dword_1BF9F6000, v77, v78, "Failed to initialize inRequest schema objects. requestId: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v85);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();

      v89(a12, v83);
    }

    else
    {

      v91 = *(v82 + 8);
      v91(v81, v83);
      v91(v80, v83);
    }

    goto LABEL_23;
  }

  v47 = v46;
  v48 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v30 + 2936)];
  v24[18] = v48;
  if (!v48)
  {
    v49 = v47;
LABEL_17:

    goto LABEL_18;
  }

  v49 = v48;
  v50 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v30 + 2936)];
  v24[19] = v50;
  if (!v50)
  {

    goto LABEL_17;
  }

  v51 = v50;
  v52 = v24[15];
  v130 = v24[16];
  v53 = v24[9];
  v54 = v24[10];
  v55 = v24[4];
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  v57 = *(v54 + 16);
  v56 = v54 + 16;
  v57(v52, v55, v53);
  v58 = sub_1BFA30B80(v52);
  OUTLINED_FUNCTION_92_0(v58, sel_setUuid_);

  [v51 setComponent_];
  v59 = v130;
  v131 = v57;
  v57(v52, v59, v53);
  v60 = sub_1BFA30B80(v52);
  OUTLINED_FUNCTION_73_0(v60, sel_setUuid_);

  OUTLINED_FUNCTION_75_0([v49 setComponent_], sel_setSource_);
  [v47 setTarget_];
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v61 = v24[16];
  v63 = v24[13];
  v62 = v24[14];
  v64 = v24[9];
  v65 = v24[4];
  v66 = sub_1BFAAF688();
  __swift_project_value_buffer(v66, qword_1EDCC7478);
  v131(v62, v65, v64);
  v131(v63, v61, v64);
  v67 = v47;
  v68 = sub_1BFAAF668();
  v69 = sub_1BFAAFB78();

  if (os_log_type_enabled(v68, v69))
  {
    HIDWORD(a10) = v69;
    v70 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v70 = 136315650;
    a13 = a9;
    sub_1BFA3B24C(v67);
    log = v68;
    if (v71 >> 60 == 15)
    {
      v67 = 0;
      v56 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_69_0();
      sub_1BFAAF888();
      OUTLINED_FUNCTION_34_2();
      sub_1BFAAF878();
      OUTLINED_FUNCTION_84_0();
      v108 = OUTLINED_FUNCTION_34_2();
      sub_1BFA1B9DC(v108, v109);
    }

    v110 = v24[14];
    v112 = v24[9];
    v111 = v24[10];
    v24[2] = v67;
    v24[3] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB980, &qword_1BFAB1F58);
    v113 = sub_1BFAAF8B8();
    v115 = sub_1BF9F88A8(v113, v114, &a13);

    *(v70 + 4) = v115;
    *(v70 + 12) = 2080;
    MEMORY[0x1BFB5F5E0](v116);
    OUTLINED_FUNCTION_84_0();
    v117 = *(v111 + 8);
    v104 = v111 + 8;
    v105 = v117;
    (v117)(v110, v112);
    v118 = OUTLINED_FUNCTION_85_0();
    v121 = sub_1BF9F88A8(v118, v119, v120);

    *(v70 + 14) = v121;
    *(v70 + 22) = 2080;
    v123 = MEMORY[0x1BFB5F5E0](v122);
    v125 = v124;
    v126 = OUTLINED_FUNCTION_34_2();
    v117(v126);
    v127 = sub_1BF9F88A8(v123, v125, &a13);

    *(v70 + 24) = v127;
    _os_log_impl(&dword_1BF9F6000, log, BYTE4(a10), "Emitting request link: %s\nwith requestId: %s,\nsugId: %s", v70, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_20_1();
  }

  else
  {
    v101 = v24[13];
    v103 = v24[9];
    v102 = v24[10];

    v106 = *(v102 + 8);
    v104 = v102 + 8;
    v105 = v106;
    (v106)(v101, v103);
    v107 = OUTLINED_FUNCTION_41_0();
    v106(v107);
  }

  v24[20] = v104;
  v24[21] = v105;
  OUTLINED_FUNCTION_0_5();
  a12 = v128;
  v129 = swift_task_alloc();
  v24[22] = v129;
  *v129 = v24;
  OUTLINED_FUNCTION_10_2(v129);
  OUTLINED_FUNCTION_12_3();

  return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, log, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA318B8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA3199C()
{
  OUTLINED_FUNCTION_58();
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = OUTLINED_FUNCTION_93();
  v1(v4);
  OUTLINED_FUNCTION_86_0();

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t DefaultSELFLogger.logRequestLink(turnId:sugId:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1BFAAF898();
  OUTLINED_FUNCTION_60_0(v4);
  v1[7] = OUTLINED_FUNCTION_100();
  v5 = sub_1BFAAE3F8();
  v1[8] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_109();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA31B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_61_0();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_80();
  a22 = v25;
  v29 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF5E8]));
  v25[14] = v29;
  if (v29)
  {
    v30 = v29;
    v26 = 0x1E69CF000uLL;
    v31 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v24 + 2936)];
    v25[15] = v31;
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v24 + 2936)];
      v25[16] = v33;
      if (v33)
      {
        v34 = v33;
        v35 = v25[13];
        v36 = v25[8];
        v37 = v25[9];
        v38 = v25[4];
        v107 = v25[5];
        sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
        v40 = *(v37 + 16);
        v39 = v37 + 16;
        v40(v35, v38, v36);
        v41 = sub_1BFA30B80(v35);
        OUTLINED_FUNCTION_92_0(v41, sel_setUuid_);

        [v34 setComponent_];
        v42 = v107;
        v108 = v40;
        v40(v35, v42, v36);
        v43 = sub_1BFA30B80(v35);
        OUTLINED_FUNCTION_73_0(v43, sel_setUuid_);

        OUTLINED_FUNCTION_75_0([v32 setComponent_], sel_setSource_);
        [v30 setTarget_];
        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4(&qword_1EDCC7470);
        }

        v45 = v25[11];
        v44 = v25[12];
        v46 = v25[8];
        v48 = v25[4];
        v47 = v25[5];
        v49 = sub_1BFAAF688();
        __swift_project_value_buffer(v49, qword_1EDCC7478);
        v108(v44, v48, v46);
        v108(v45, v47, v46);
        v50 = v30;
        v51 = sub_1BFAAF668();
        v52 = sub_1BFAAFB78();

        if (os_log_type_enabled(v51, v52))
        {
          HIDWORD(a11) = v52;
          v53 = swift_slowAlloc();
          a10 = swift_slowAlloc();
          *v53 = 136315650;
          a13 = a10;
          sub_1BFA3B24C(v50);
          if (v54 >> 60 == 15)
          {
            v50 = 0;
            v39 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_69_0();
            sub_1BFAAF888();
            OUTLINED_FUNCTION_34_2();
            sub_1BFAAF878();
            OUTLINED_FUNCTION_84_0();
            v85 = OUTLINED_FUNCTION_34_2();
            sub_1BFA1B9DC(v85, v86);
          }

          v87 = v25[12];
          v89 = v25[8];
          v88 = v25[9];
          v25[2] = v50;
          v25[3] = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB980, &qword_1BFAB1F58);
          v90 = sub_1BFAAF8B8();
          v92 = sub_1BF9F88A8(v90, v91, &a13);

          *(v53 + 4) = v92;
          *(v53 + 12) = 2080;
          MEMORY[0x1BFB5F5E0](v93);
          OUTLINED_FUNCTION_84_0();
          v94 = *(v88 + 8);
          v94(v87, v89);
          v95 = OUTLINED_FUNCTION_85_0();
          v98 = sub_1BF9F88A8(v95, v96, v97);

          *(v53 + 14) = v98;
          *(v53 + 22) = 2080;
          v100 = MEMORY[0x1BFB5F5E0](v99);
          v102 = v101;
          v103 = OUTLINED_FUNCTION_34_2();
          (v94)(v103);
          v104 = sub_1BF9F88A8(v100, v102, &a13);

          *(v53 + 24) = v104;
          _os_log_impl(&dword_1BF9F6000, v51, BYTE4(a11), "Emitting request link: %s\nwith turnId: %s,\nsugId: %s", v53, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_94();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
          v80 = v25[11];
          v82 = v25[8];
          v81 = v25[9];

          v83 = *(v81 + 8);
          v83(v80, v82);
          v84 = OUTLINED_FUNCTION_41_0();
          (v83)(v84);
        }

        OUTLINED_FUNCTION_0_5();
        a12 = v105;
        v106 = swift_task_alloc();
        v25[17] = v106;
        *v106 = v25;
        OUTLINED_FUNCTION_10_2(v106);
        OUTLINED_FUNCTION_12_3();

        return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }

    else
    {
      v32 = v30;
    }
  }

  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v55 = sub_1BFAAF688();
  __swift_project_value_buffer(v55, qword_1EDCC7478);
  v56 = OUTLINED_FUNCTION_9_3();
  v57(v56);
  v58 = sub_1BFAAF668();
  sub_1BFAAFB88();
  OUTLINED_FUNCTION_35_2();
  if (os_log_type_enabled(v58, v59))
  {
    OUTLINED_FUNCTION_51_0();
    v60 = OUTLINED_FUNCTION_32();
    a13 = v60;
    *v26 = 136315138;
    MEMORY[0x1BFB5F5E0]();
    OUTLINED_FUNCTION_69_0();
    v61 = OUTLINED_FUNCTION_41_0();
    v62(v61);
    v63 = OUTLINED_FUNCTION_34_2();
    v66 = sub_1BF9F88A8(v63, v64, v65);

    *(v26 + 4) = v66;
    OUTLINED_FUNCTION_50_1(&dword_1BF9F6000, v67, v68, "Failed to initialize inRequest schema objects. turnId: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_20_1();
  }

  else
  {

    v69 = OUTLINED_FUNCTION_41_0();
    v70(v69);
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA3215C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA32240()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DefaultSELFLogger.logRequestLink(turnId:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v4);
  v1[5] = OUTLINED_FUNCTION_100();
  v5 = sub_1BFAAE3F8();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_109();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA323BC()
{
  OUTLINED_FUNCTION_72();
  v3 = v0[5];
  v2 = v0[6];
  sub_1BFA305A4(v0[3], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_1BF9FAB40(v0[5], &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v4 = sub_1BFAAF688();
    __swift_project_value_buffer(v4, qword_1EDCC7478);
    v5 = OUTLINED_FUNCTION_9_3();
    v6(v5);
    v7 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_35_2();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      *v1 = 136315138;
      OUTLINED_FUNCTION_31_1();
      sub_1BFA3C6FC(v9, v10, MEMORY[0x1E69695E0]);
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_69_0();
      v11 = OUTLINED_FUNCTION_40_0();
      v12(v11);
      v13 = OUTLINED_FUNCTION_34_2();
      v16 = sub_1BF9F88A8(v13, v14, v15);

      *(v1 + 4) = v16;
      OUTLINED_FUNCTION_50_1(&dword_1BF9F6000, v17, v18, "Error emitting request link because of nil sugID - %s");
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {

      v21 = OUTLINED_FUNCTION_40_0();
      v22(v21);
    }

    OUTLINED_FUNCTION_85();

    return v23();
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_1BFA32654;

    return DefaultSELFLogger.logRequestLink(turnId:sugId:)();
  }
}

uint64_t sub_1BFA32654()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA32738()
{
  OUTLINED_FUNCTION_40();
  (*(v0[7] + 8))(v0[9], v0[6]);

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t DefaultSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 72) = *a3;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA327E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_89_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_72();
  a18 = v20;
  v23 = [objc_allocWithZone(MEMORY[0x1E69CF758]) init];
  *(v20 + 48) = v23;
  if (v23)
  {
    v24 = v23;
    v25 = *(v20 + 72);
    [v23 setDeliveryVehicle_];
    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    [v24 setUiActivity_];
    sub_1BFA3B2B0(v26, v24);
    v28 = sub_1BFA30C1C(v27);
    *(v20 + 56) = v28;
    if (v28)
    {
      [v28 setUiActivity:v24];
      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4(&qword_1EDCC7470);
      }

      v29 = sub_1BFAAF688();
      __swift_project_value_buffer(v29, qword_1EDCC7478);

      v30 = sub_1BFAAF668();
      sub_1BFAAFB78();
      OUTLINED_FUNCTION_35_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v20 + 72);
        v33 = *(v20 + 24);
        swift_slowAlloc();
        a11 = OUTLINED_FUNCTION_32();
        *v27 = 134218242;
        *(v27 + 4) = *(v33 + 16);

        *(v27 + 12) = 2080;
        v34 = 0xE600000000000000;
        v35 = 0x646570706174;
        if (v32 != 1)
        {
          v35 = 0x64657265646E6572;
          v34 = 0xE800000000000000;
        }

        if (v32)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0x65746E6573657270;
        }

        if (v32)
        {
          v37 = v34;
        }

        else
        {
          v37 = 0xE900000000000064;
        }

        v38 = sub_1BF9F88A8(v36, v37, &a11);

        *(v27 + 14) = v38;
        OUTLINED_FUNCTION_39_3();
        _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_20_1();
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_5();
      a10 = v62;
      v63 = swift_task_alloc();
      *(v20 + 64) = v63;
      *v63 = v20;
      OUTLINED_FUNCTION_45(v63);
      OUTLINED_FUNCTION_77_0();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
    }

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v50 = sub_1BFAAF688();
    v45 = OUTLINED_FUNCTION_56(v50, qword_1EDCC7478);
    v51 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v51))
    {
      v52 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_0(v52);
      OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v45, v26, "error generating the SUGClient Event");
      OUTLINED_FUNCTION_20_1();
    }
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v44 = sub_1BFAAF688();
    v45 = OUTLINED_FUNCTION_56(v44, qword_1EDCC7478);
    v46 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v46))
    {
      v47 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v47);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v48, v49, "Failed to initialize SUGSchemaSUGSuggestionsUIActivity object");
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_77_0();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
}

uint64_t sub_1BFA32B90()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA32C74()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA32CD0(uint64_t a1)
{
  v2 = sub_1BFAAEEF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *(v3 + 16);
  v12(&v20 - v10, a1, v2);
  v13 = (*(v3 + 88))(v11, v2);
  if (v13 != *MEMORY[0x1E69D3078])
  {
    if (v13 == *MEMORY[0x1E69D3088])
    {
      v12(v9, v11, v2);
      (*(v3 + 96))(v9, v2);
      v17 = sub_1BFAAEA48();
      v18 = *(v17 - 8);
      v19 = (*(v18 + 88))(v9, v17);
      if (v19 == *MEMORY[0x1E69D2CE0])
      {
        v15 = 5;
        goto LABEL_3;
      }

      if (v19 == *MEMORY[0x1E69D2CD8])
      {
        v15 = 7;
        goto LABEL_3;
      }

      (*(v18 + 8))(v9, v17);
    }

    else
    {
      if (v13 == *MEMORY[0x1E69D3068])
      {
        v15 = 1;
        goto LABEL_3;
      }

      if (v13 == *MEMORY[0x1E69D3070])
      {
        v15 = 2;
        goto LABEL_3;
      }

      if (v13 == *MEMORY[0x1E69D3058])
      {
        v15 = 3;
        goto LABEL_3;
      }

      if (v13 == *MEMORY[0x1E69D3080])
      {
        v15 = 4;
        goto LABEL_3;
      }

      if (v13 == *MEMORY[0x1E69D3050])
      {
        v15 = 8;
        goto LABEL_3;
      }

      if (v13 == *MEMORY[0x1E69D3060])
      {
        v15 = 10;
        goto LABEL_3;
      }
    }

    v15 = 0;
    goto LABEL_3;
  }

  v12(v6, v11, v2);
  (*(v3 + 96))(v6, v2);
  v14 = sub_1BFAAEF58();
  (*(*(v14 - 8) + 8))(v6, v14);
  v15 = 9;
LABEL_3:
  (*(v3 + 8))(v11, v2);
  return v15;
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGenerated(generationId:suggestionList:presentationContext:)()
{
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_100();
  v7 = sub_1BFAAE3F8();
  v1[11] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1BFA33128()
{
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC7478);
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_91(v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v5);
    OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v3, v0, "Building SELF generation log");
    OUTLINED_FUNCTION_20_1();
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69CF748]) init];
  *(v1 + 112) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BFA30C1C(*(v1 + 40));
    *(v1 + 120) = v8;
    if (v8)
    {
      v60 = v8;
      v9 = *(v1 + 96);
      v10 = *(v1 + 104);
      v11 = *(v1 + 88);
      v12 = *(v1 + 48);
      v13 = *v12;
      v14 = sub_1BFA33794(*(v1 + 56), v12);
      v16 = v15;
      v56 = v17;
      [v7 setInvocationType_];

      v57 = v14;
      v59 = v16;
      sub_1BFA3B310(v14, v16, v7, &selRef_setGenerationTag_);
      sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
      v18 = type metadata accessor for SiriSuggestions.SuggestionList(0);
      (*(v9 + 16))(v10, &v12[*(v18 + 24)], v11);
      v19 = sub_1BFA30B80(v10);
      [v7 setGenerationId_];

      v20 = MEMORY[0x1E69E7CC0];
      v61 = MEMORY[0x1E69E7CC0];
      v21 = *(v13 + 16);
      v58 = v13;
      if (v21)
      {
        v22 = *(v1 + 72);
        v23 = v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v24 = *(v22 + 72);
        do
        {
          v25 = *(v1 + 80);
          sub_1BFA3C644(v23, v25, type metadata accessor for SiriSuggestions.Suggestion);
          sub_1BFA34664(v25);
          v27 = v26;
          v28 = sub_1BFA3C6A4(v25, type metadata accessor for SiriSuggestions.Suggestion);
          if (v27)
          {
            MEMORY[0x1BFB60C00](v28);
            OUTLINED_FUNCTION_24_4();
            if (v30)
            {
              OUTLINED_FUNCTION_22_2(v29);
              sub_1BFAAFA08();
            }

            OUTLINED_FUNCTION_34_2();
            sub_1BFAAFA38();
            v20 = v61;
          }

          v23 += v24;
          --v21;
        }

        while (v21);
      }

      sub_1BFA3B1D0(v20, v7, &qword_1EDCC6400, 0x1E69CF738);
      [v60 setSuggestionsGenerated:v7];

      v31 = sub_1BFAAF668();
      v32 = sub_1BFAAFB78();

      if (os_log_type_enabled(v31, v32))
      {
        swift_slowAlloc();
        v33 = OUTLINED_FUNCTION_32();
        v61 = v33;
        *v7 = 134218242;
        *(v7 + 1) = *(v58 + 16);

        *(v7 + 6) = 2080;
        *(v1 + 16) = v57;
        *(v1 + 24) = v59;
        *(v1 + 32) = v56;
        v34 = sub_1BFAAF8B8();
        v36 = sub_1BF9F88A8(v34, v35, &v61);

        *(v7 + 14) = v36;
        OUTLINED_FUNCTION_39_3();
        _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_2Tm(v33);
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_20_1();
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_5();
      v53 = swift_task_alloc();
      *(v1 + 128) = v53;
      *v53 = v1;
      OUTLINED_FUNCTION_10_2(v53);
      OUTLINED_FUNCTION_47_0();

      __asm { BRAA            X1, X16 }
    }

    v42 = sub_1BFAAF668();
    v47 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v47))
    {
      v48 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v48);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v49, v50, "error generating the SUGClient Event");
      OUTLINED_FUNCTION_69();
    }
  }

  else
  {
    v42 = sub_1BFAAF668();
    v43 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v43))
    {
      v44 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v44);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v45, v46, "Failed to initialize SUGSchemaSUGSuggestionsGenerated object");
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA33640()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA33724()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA33794(_BYTE *a1, uint64_t a2)
{
  v102 = a2;
  v3 = type metadata accessor for PresentationContext(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v105 = &v97[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v97[-v6];
  v7 = sub_1BFAAED08();
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v97[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v97[-v11];
  v13 = sub_1BFAAEEA8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v97[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v103 = &v97[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v104 = v3;
  v20 = *(v3 + 20);
  v21 = *(v14 + 16);
  v106 = a1;
  v22 = &a1[v20];
  v24 = &v97[-v23];
  v21(&v97[-v23], v22, v13);
  v25 = (*(v14 + 88))(v24, v13);
  if (v25 == *MEMORY[0x1E69D2FB0])
  {
    v103 = v24;
    v21(v17, v24, v13);
    (*(v14 + 96))(v17, v13);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9D8, &qword_1BFAB2658) + 48);
    v27 = sub_1BFAAEFD8();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 88))(v17, v27);
    v30 = v13;
    if (v29 != *MEMORY[0x1E69D3118])
    {
      v45 = v29;
      v46 = *MEMORY[0x1E69D3108];
      v47 = sub_1BFAAEFF8();
      v48 = *(v47 - 8);
      v49 = v48;
      if (v45 == v46)
      {
        v50 = (*(v48 + 88))(&v17[v26], v47);
        if (v50 == *MEMORY[0x1E69D3140] || (v30 = v13, v50 == *MEMORY[0x1E69D3138]))
        {
          v51 = 0x6E61747369737361;
          (*(v14 + 8))(v103, v13);
          return v51;
        }

        (*(v49 + 8))(&v17[v26], v47);
      }

      else
      {
        (*(v48 + 8))(&v17[v26], v47);
        (*(v28 + 8))(v17, v27);
        v30 = v13;
      }

      v38 = v105;
      v37 = v106;
      goto LABEL_48;
    }

    (*(v28 + 96))(v17, v27);
    v31 = sub_1BFAAF008();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 88))(v17, v31);
    if (v33 == *MEMORY[0x1E69D3148])
    {
      v34 = sub_1BFAAEFF8();
      v35 = *(v34 - 8);
      v36 = (*(v35 + 88))(&v17[v26], v34);
      v38 = v105;
      v37 = v106;
      if (v36 == *MEMORY[0x1E69D3140] || v36 == *MEMORY[0x1E69D3138])
      {
        goto LABEL_43;
      }
    }

    else
    {
      v38 = v105;
      v37 = v106;
      if (v33 != *MEMORY[0x1E69D3150])
      {
        (*(v32 + 8))(v17, v31);
        v67 = sub_1BFAAEFF8();
        (*(*(v67 - 8) + 8))(&v17[v26], v67);
LABEL_48:
        v24 = v103;
        goto LABEL_49;
      }

      v34 = sub_1BFAAEFF8();
      v35 = *(v34 - 8);
      if ((*(v35 + 88))(&v17[v26], v34) == *MEMORY[0x1E69D3140])
      {
LABEL_43:
        v51 = 0x6E61747369737361;
        (*(v14 + 8))(v103, v30);
        return v51;
      }
    }

    (*(v35 + 8))(&v17[v26], v34);
    goto LABEL_48;
  }

  if (v25 == *MEMORY[0x1E69D2FD8] || v25 == *MEMORY[0x1E69D2FC0])
  {
    v98 = *MEMORY[0x1E69D2FC0];
    v40 = *(v14 + 8);
    v41 = v13;
    v105 = (v14 + 8);
    v99 = v40;
    v40(v24, v13);
    v42 = type metadata accessor for SiriSuggestions.SuggestionList(0);
    sub_1BFA29E68(v102 + *(v42 + 32), v12, &qword_1EBDFB670, &qword_1BFAB1CD0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
    }

    else
    {
      v52 = v101;
      (*(v101 + 32))(v9, v12, v7);
      v108 = 64;
      v109 = 0xE100000000000000;
      v53 = sub_1BFAAECF8();
      MEMORY[0x1BFB60B80](v53);

      v43 = v108;
      v44 = v109;
      (*(v52 + 8))(v9, v7);
    }

    v54 = 0xD000000000000012;
    v55 = v106;
    if (*v106 == 1)
    {
      v56 = 0x80000001BFAB8F20;
    }

    else
    {
      v56 = 0x80000001BFAB8F00;
      v54 = 0xD000000000000013;
    }

    v108 = v54;
    v109 = v56;
    MEMORY[0x1BFB60B80](v43, v44);

    v51 = v108;
    v61 = v103;
    (*(v14 + 104))(v103, v98, v41);
    v62 = sub_1BFAAEE98();
    v99(v61, v41);
    if ((v62 & 1) == 0)
    {
      return v51;
    }

    v63 = v104;
    v64 = &v55[*(v104 + 28)];
    v65 = v64[1];
    if (v65)
    {
      v66 = *v64 == 0x6F6C6C65486C6164 && v65 == 0xE800000000000000;
      if (v66 || (sub_1BFAAFF08() & 1) != 0)
      {
        return v51;
      }

      if (qword_1EDCC7470 != -1)
      {
        swift_once();
      }

      v85 = sub_1BFAAF688();
      __swift_project_value_buffer(v85, qword_1EDCC7478);
      v86 = v55;
      v87 = v100;
      sub_1BFA3C644(v86, v100, type metadata accessor for PresentationContext);
      v81 = sub_1BFAAF668();
      v88 = sub_1BFAAFB68();
      if (!os_log_type_enabled(v81, v88))
      {

        sub_1BFA3C6A4(v87, type metadata accessor for PresentationContext);
        return v51;
      }

      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v107 = v90;
      *v89 = 136315138;
      v91 = &v87[*(v63 + 28)];
      v92 = v91[1];
      v108 = *v91;
      v109 = v92;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8F0, &qword_1BFAB1A60);
      v93 = sub_1BFAAF8B8();
      v95 = v94;
      sub_1BFA3C6A4(v87, type metadata accessor for PresentationContext);
      v96 = sub_1BF9F88A8(v93, v95, &v107);

      *(v89 + 4) = v96;
      _os_log_impl(&dword_1BF9F6000, v81, v88, "[warning] Unknown dialogContextId for socialConversation invocation %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v90);
      MEMORY[0x1BFB618C0](v90, -1, -1);
      v84 = v89;
    }

    else
    {
      if (qword_1EDCC7470 != -1)
      {
        swift_once();
      }

      v80 = sub_1BFAAF688();
      __swift_project_value_buffer(v80, qword_1EDCC7478);
      v81 = sub_1BFAAF668();
      v82 = sub_1BFAAFB68();
      if (!os_log_type_enabled(v81, v82))
      {
        goto LABEL_66;
      }

      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1BF9F6000, v81, v82, "[warning] dialogContextId not set in presentation context", v83, 2u);
      v84 = v83;
    }

    MEMORY[0x1BFB618C0](v84, -1, -1);
LABEL_66:

    return v51;
  }

  v30 = v13;
  if (v25 != *MEMORY[0x1E69D2FC8])
  {
    v38 = v105;
    v37 = v106;
    if (v25 == *MEMORY[0x1E69D2FD0])
    {
      if (qword_1EDCC7470 != -1)
      {
        swift_once();
      }

      v57 = sub_1BFAAF688();
      __swift_project_value_buffer(v57, qword_1EDCC7478);
      v58 = sub_1BFAAF668();
      v59 = sub_1BFAAFB88();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BF9F6000, v58, v59, "unknown invocation type detected", v60, 2u);
        MEMORY[0x1BFB618C0](v60, -1, -1);
      }

      goto LABEL_54;
    }

LABEL_49:
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v68 = sub_1BFAAF688();
    __swift_project_value_buffer(v68, qword_1EDCC7478);
    sub_1BFA3C644(v37, v38, type metadata accessor for PresentationContext);
    v69 = sub_1BFAAF668();
    v70 = sub_1BFAAFB88();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v24;
      v73 = swift_slowAlloc();
      v108 = v73;
      *v71 = 136315138;
      sub_1BFA3C6FC(&qword_1EBDFB9D0, MEMORY[0x1E69D2FE0], MEMORY[0x1E69D3000]);
      v74 = sub_1BFAAFEE8();
      v76 = v75;
      sub_1BFA3C6A4(v38, type metadata accessor for PresentationContext);
      v77 = sub_1BF9F88A8(v74, v76, &v108);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_1BF9F6000, v69, v70, "Found unknown invocation type: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v73);
      v78 = v73;
      v24 = v72;
      MEMORY[0x1BFB618C0](v78, -1, -1);
      MEMORY[0x1BFB618C0](v71, -1, -1);
    }

    else
    {

      sub_1BFA3C6A4(v38, type metadata accessor for PresentationContext);
    }

LABEL_54:
    (*(v14 + 8))(v24, v30);
    return 0;
  }

  (*(v14 + 8))(v24, v13);
  return 0x7070416E69;
}

void sub_1BFA34664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v73 - v3;
  v5 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B8, &qword_1BFAB2630);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = v73 - v11;
  v12 = sub_1BFAAEC98();
  v76 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9C0, &qword_1BFAB2638);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v73 - v19;
  v81 = sub_1BFAAEDF8();
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
  if (v22)
  {
    v79 = v4;
    v80 = v5;
    v74 = v7;
    v23 = type metadata accessor for SiriSuggestions.Suggestion(0);
    v24 = sub_1BFAAF1D8();
    sub_1BFA3B310(v24, v25, v22, &selRef_setSuggestionId_);
    v26 = sub_1BFAAF1D8();
    sub_1BFA3B310(v26, v27, v22, &selRef_setLoggingActionId_);
    v28 = [objc_allocWithZone(MEMORY[0x1E69CF730]) init];
    if (!v28)
    {
      goto LABEL_17;
    }

    v29 = v28;
    sub_1BF9F94C4(a1 + v23[9], &v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    type metadata accessor for SignalledOwner();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_17;
    }

    v30 = v83;
    sub_1BFA60FF4(*(v83 + 64), v20);
    v31 = v81;
    if (__swift_getEnumTagSinglePayload(v20, 1, v81) == 1)
    {

      sub_1BF9FAB40(v20, &qword_1EBDFB9C0, &qword_1BFAB2638);
      goto LABEL_17;
    }

    v73[1] = v30;
    (*(v78 + 32))(v82, v20, v31);
    sub_1BFAAEDE8();
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -1.0)
    {
      if (v32 < 4294967300.0)
      {
        [v29 setDepthFromActiveSignal_];
        sub_1BFAAEDC8();
        sub_1BFAAEC88();
        v76 = *(v76 + 8);
        (v76)(v17, v12);
        v33 = sub_1BFAAF2A8();
        v35 = v34;

        sub_1BFA3B310(v33, v35, v29, &selRef_setSignalValue_);
        sub_1BFAAEDC8();
        sub_1BFAAEC88();
        (v76)(v15, v12);
        sub_1BFAAF298();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9C8, &unk_1BFAB2648);
        v36 = sub_1BFAAEEC8();
        v37 = v77;
        if (swift_dynamicCast())
        {
          v38 = 1;
          __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
          v39 = v75;
          sub_1BFA29E68(v37, v75, &qword_1EBDFB9B8, &qword_1BFAB2630);
          v40 = *(v36 - 8);
          v41 = (*(v40 + 88))(v39, v36);
          if (v41 == *MEMORY[0x1E69D3040])
          {
LABEL_16:
            [v29 setSignalType_];
            sub_1BF9FAB40(v37, &qword_1EBDFB9B8, &qword_1BFAB2630);
            [v22 setSubscribedSignal_];

            (*(v78 + 8))(v82, v81);
LABEL_17:
            [v22 setDeliveryVehicle_];
            [v22 setGoal_];
            v42 = a1 + v23[11];
            if ((*v42 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (!HIDWORD(*v42))
            {
              [v22 setFinalRank_];
              v43 = *(v42 + 8);
              [v22 setGoalSpecificScore_];
              [v22 setFinalScore_];
              [v22 setSuggestionTier_];
              v44 = a1 + v23[6];
              v45 = (v44 + *(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 36));
              v46 = v45[1];
              v47 = v45[2];
              v48 = v45[3];
              v49 = v45[4];
              v50 = v45[5];
              v84 = *v45;
              v85 = v46;
              v86 = v47;
              v87 = v48;
              v88 = v49;
              v89 = v50;
              sub_1BFA3C558(v84, v46, v47, v48, v49, v50);
              *&v56 = COERCE_DOUBLE(sub_1BFA39B60(&v84, v51, v52, v53, v54, v55));
              v58 = v57;
              sub_1BFA3C59C(v84, v85, v86, v87, v88, v89);
              v59 = *&v56;
              if (v58)
              {
                v59 = -1.0;
              }

              [v22 setSmartSuppressionScore_];
              v60 = v79;
              sub_1BFA29E68(a1 + v23[13], v79, &qword_1EBDFB9B0, &qword_1BFAB2628);
              v61 = v80;
              if (__swift_getEnumTagSinglePayload(v60, 1, v80) == 1)
              {
                sub_1BF9FAB40(v60, &qword_1EBDFB9B0, &qword_1BFAB2628);
              }

              else
              {
                v62 = v60;
                v63 = v74;
                sub_1BFA3C5E0(v62, v74);
                [v22 setChannel_];
                [v22 setChannelScore_];
                sub_1BFA3C6A4(v63, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
              }

              v64 = v45[1];
              v65 = v45[2];
              v66 = v45[3];
              v67 = v45[4];
              v68 = v45[5];
              v84 = *v45;
              v85 = v64;
              v86 = v65;
              v87 = v66;
              v88 = v67;
              v89 = v68;
              sub_1BFA3C558(v84, v64, v65, v66, v67, v68);
              v69 = sub_1BFA39F00(&v84);
              sub_1BFA3C59C(v84, v85, v86, v87, v88, v89);
              if (v69)
              {
                [v22 setSuppressionResult_];
LABEL_29:

                return;
              }

              if (qword_1EDCC7470 == -1)
              {
LABEL_27:
                v70 = sub_1BFAAF688();
                __swift_project_value_buffer(v70, qword_1EDCC7478);
                v69 = sub_1BFAAF668();
                v71 = sub_1BFAAFB88();
                if (os_log_type_enabled(v69, v71))
                {
                  v72 = swift_slowAlloc();
                  *v72 = 0;
                  _os_log_impl(&dword_1BF9F6000, v69, v71, "no policy result set on the suggestion", v72, 2u);
                  MEMORY[0x1BFB618C0](v72, -1, -1);
                }

                goto LABEL_29;
              }

LABEL_42:
              swift_once();
              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_42;
          }

          if (v41 == *MEMORY[0x1E69D3038])
          {
            v38 = 2;
            goto LABEL_16;
          }

          if (v41 == *MEMORY[0x1E69D3028])
          {
            v38 = 3;
            goto LABEL_16;
          }

          if (v41 == *MEMORY[0x1E69D3020])
          {
            v38 = 5;
            goto LABEL_16;
          }

          if (v41 == *MEMORY[0x1E69D3048])
          {
            v38 = 4;
            goto LABEL_16;
          }

          if (v41 == *MEMORY[0x1E69D3030])
          {
            v38 = 6;
            goto LABEL_16;
          }

          (*(v40 + 8))(v39, v36);
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v37, 1, 1, v36);
        }

        v38 = 0;
        goto LABEL_16;
      }

LABEL_45:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_45;
  }
}

void sub_1BFA35064(void (*a1)(__int128 *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for SiriAutoCompleteSuggestion(0) - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v16, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    ++v6;
    if (v16 != 1)
    {
      v15 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F36C();
        v8 = v13;
      }

      v11 = *(v8 + 16);
      v12 = v15;
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1BFA1F36C();
        v12 = v15;
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 16 * v11 + 32) = v12;
      v6 = v10;
    }
  }
}

uint64_t sub_1BFA351E4(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
  v7 = OUTLINED_FUNCTION_60_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1BFAAEDA8();
  OUTLINED_FUNCTION_2_3();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = v15;
  v39 = &v34 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v41 = (v15 + 32);
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v17 == v16)
    {
      return v42;
    }

    v18 = sub_1BFAAF6C8();
    OUTLINED_FUNCTION_15(v18);
    a1(a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v20 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1BF9FAB40(v9, &qword_1EBDFB9A0, &qword_1BFAB2620);
      ++v16;
    }

    else
    {
      v21 = *v41;
      (*v41)(v39, v9, v10);
      v37 = v21;
      v21(v40, v39, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OUTLINED_FUNCTION_36_1();
        sub_1BFA1F290(v26, v27, v28, v29);
        v42 = v30;
      }

      v23 = *(v42 + 16);
      v22 = *(v42 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v35 = *(v42 + 16);
        v36 = v23 + 1;
        sub_1BFA1F290(v22 > 1, v23 + 1, 1, v42);
        v23 = v35;
        v24 = v36;
        v42 = v31;
      }

      ++v16;
      v25 = v42;
      *(v42 + 16) = v24;
      v37((v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23), v40, v10);
    }
  }

  v32 = v42;

  return v32;
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAnnouncement(generationId:for:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1BFAAE3F8();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_100();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA3558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF748]) init];
  v16[9] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = v16[5];
    v20 = sub_1BFA30C1C(v16[2]);
    v16[10] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
      v16[11] = v22;
      if (v22)
      {
        v23 = v22;
        v24 = [objc_allocWithZone(MEMORY[0x1E69CF768]) init];
        v16[12] = v24;
        if (v24)
        {
          OUTLINED_FUNCTION_46_2();
          [v25 setWasSuppressed_];
          sub_1BFAAFC48();

          a12 = 0xD000000000000014;
          a13 = 0x80000001BFAB8DE0;
          v26 = OUTLINED_FUNCTION_85_0();
          MEMORY[0x1BFB60B80](v26);
          sub_1BFA3B310(0xD000000000000014, 0x80000001BFAB8DE0, v23, &selRef_setSuggestionId_);
          [v23 setDeliveryVehicle_];
          OUTLINED_FUNCTION_92_0([v23 setGoal_], sel_setSuppressionResult_);
          sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
          v27 = OUTLINED_FUNCTION_82_0();
          v28(v27);
          v29 = sub_1BFA30B80(&off_1E80FA000);
          OUTLINED_FUNCTION_73_0(v29, sel_setGenerationId_);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1BFAB1F20;
          *(v30 + 32) = v23;
          v31 = v23;
          sub_1BFA3B1D0(v30, v18, &qword_1EDCC6400, 0x1E69CF738);
          [v18 setInvocationType_];
          v32 = sub_1BFAAF858();
          OUTLINED_FUNCTION_73_0(v32, sel_setGenerationTag_);

          OUTLINED_FUNCTION_75_0(v33, sel_setSuggestionsGenerated_);
          OUTLINED_FUNCTION_0_5();
          a11 = v34;
          v35 = swift_task_alloc();
          v16[13] = v35;
          *v35 = v16;
          OUTLINED_FUNCTION_45(v35);
          OUTLINED_FUNCTION_12_3();

          return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4(&qword_1EDCC7470);
        }

        v58 = sub_1BFAAF688();
        v54 = OUTLINED_FUNCTION_56(v58, qword_1EDCC7478);
        v59 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v59))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_74_0(&dword_1BF9F6000, v60, v59, "error generating the SUGSchemaSUGSuppressionResult");
          OUTLINED_FUNCTION_94();
        }
      }

      else
      {
        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4(&qword_1EDCC7470);
        }

        v53 = sub_1BFAAF688();
        v54 = OUTLINED_FUNCTION_56(v53, qword_1EDCC7478);
        v55 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v55))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_90_0(&dword_1BF9F6000, v56, v57, "error generating the SUGSchemaSUGSuggestion");
          OUTLINED_FUNCTION_28();
        }
      }
    }

    else
    {
      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4(&qword_1EDCC7470);
      }

      v50 = sub_1BFAAF688();
      v21 = OUTLINED_FUNCTION_56(v50, qword_1EDCC7478);
      v51 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_43_0(v51))
      {
        v52 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_66_0(v52);
        OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v21, v19, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_20_1();
      }
    }
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v45 = sub_1BFAAF688();
    v21 = OUTLINED_FUNCTION_56(v45, qword_1EDCC7478);
    v46 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_43_0(v46))
    {
      v47 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v47);
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v48, v49, "Failed to initialize SUGSchemaSUGSuggestionsGenerated object");
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA35A5C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA35B40()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForCrossDomainHint(generationId:for:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1BFAAE3F8();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_100();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA35C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF748]) init];
  v16[9] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = v16[5];
    v20 = sub_1BFA30C1C(v16[2]);
    v16[10] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
      v16[11] = v22;
      if (v22)
      {
        v23 = v22;
        v24 = [objc_allocWithZone(MEMORY[0x1E69CF768]) init];
        v16[12] = v24;
        if (v24)
        {
          OUTLINED_FUNCTION_46_2();
          [v25 setWasSuppressed_];
          sub_1BFAAFC48();

          a12 = 0xD000000000000010;
          a13 = 0x80000001BFAB8E20;
          v26 = OUTLINED_FUNCTION_85_0();
          MEMORY[0x1BFB60B80](v26);
          sub_1BFA3B310(0xD000000000000010, 0x80000001BFAB8E20, v23, &selRef_setSuggestionId_);
          [v23 setDeliveryVehicle_];
          OUTLINED_FUNCTION_92_0([v23 setGoal_], sel_setSuppressionResult_);
          sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
          v27 = OUTLINED_FUNCTION_82_0();
          v28(v27);
          v29 = sub_1BFA30B80(&off_1E80FA000);
          OUTLINED_FUNCTION_73_0(v29, sel_setGenerationId_);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1BFAB1F20;
          *(v30 + 32) = v23;
          v31 = v23;
          sub_1BFA3B1D0(v30, v18, &qword_1EDCC6400, 0x1E69CF738);
          [v18 setInvocationType_];
          v32 = sub_1BFAAF858();
          OUTLINED_FUNCTION_73_0(v32, sel_setGenerationTag_);

          OUTLINED_FUNCTION_75_0(v33, sel_setSuggestionsGenerated_);
          OUTLINED_FUNCTION_0_5();
          a11 = v34;
          v35 = swift_task_alloc();
          v16[13] = v35;
          *v35 = v16;
          OUTLINED_FUNCTION_45(v35);
          OUTLINED_FUNCTION_12_3();

          return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4(&qword_1EDCC7470);
        }

        v58 = sub_1BFAAF688();
        v54 = OUTLINED_FUNCTION_56(v58, qword_1EDCC7478);
        v59 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v59))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_74_0(&dword_1BF9F6000, v60, v59, "error generating the SUGSchemaSUGSuppressionResult");
          OUTLINED_FUNCTION_94();
        }
      }

      else
      {
        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4(&qword_1EDCC7470);
        }

        v53 = sub_1BFAAF688();
        v54 = OUTLINED_FUNCTION_56(v53, qword_1EDCC7478);
        v55 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v55))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_90_0(&dword_1BF9F6000, v56, v57, "error generating the SUGSchemaSUGSuggestion");
          OUTLINED_FUNCTION_28();
        }
      }
    }

    else
    {
      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4(&qword_1EDCC7470);
      }

      v50 = sub_1BFAAF688();
      v21 = OUTLINED_FUNCTION_56(v50, qword_1EDCC7478);
      v51 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_43_0(v51))
      {
        v52 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_66_0(v52);
        OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v21, v19, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_20_1();
      }
    }
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v45 = sub_1BFAAF688();
    v21 = OUTLINED_FUNCTION_56(v45, qword_1EDCC7478);
    v46 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_43_0(v46))
    {
      v47 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v47);
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v48, v49, "Failed to initialize SUGSchemaSUGSuggestionsGenerated object");
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA36134()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA36218(uint64_t a1)
{
  v3 = sub_1BFAAF398();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  (*(v5 + 16))(v1, a1, v3);
  v7 = OUTLINED_FUNCTION_93();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E69CE2B8])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E69CE2C0])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x1E69CE2B0])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x1E69CE2D0])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x1E69CE298])
  {
    return 7;
  }

  if (v9 == *MEMORY[0x1E69CE2A0])
  {
    return 8;
  }

  if (v9 == *MEMORY[0x1E69CE2C8])
  {
    return 9;
  }

  if (v9 == *MEMORY[0x1E69CE2A8])
  {
    return 6;
  }

  v11 = OUTLINED_FUNCTION_93();
  v12(v11);
  return 0;
}

uint64_t sub_1BFA363D0(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1BFAAE3F8();
  v6 = OUTLINED_FUNCTION_60_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_0();
  v7 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CF740]) init];
  if (!v9)
  {
    v10 = v8;
LABEL_10:

LABEL_11:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v21 = sub_1BFAAF688();
    v22 = OUTLINED_FUNCTION_56(v21, qword_1EDCC7478);
    v23 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_43_0(v23))
    {
      v24 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v24);
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v25, v26, "error generating the SUGSchemaSUGSuggestion/SUGSchemaSUGSuggestionTier1");
      OUTLINED_FUNCTION_69();
    }

    return 0;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF690]) init];
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = v11;
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  sub_1BFAAE3E8();
  v13 = sub_1BFA30B80(v2);
  [v8 setDeliveryVehicle_];
  v14 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  [v12 setAutoCompleteSuggestionSource_];
  [v8 setAutoCompleteSuggestionMetaData_];
  v15 = *a1;
  v16 = a1[1];
  result = sub_1BFAAF918();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v8 setNumCharactersInSuggestion_];

  v18 = *(sub_1BFA366A8(0x7FFFFFFFFFFFFFFFLL, 1, v15, v16) + 16);

  if (!(v18 >> 31))
  {
    [v8 setNumWordsInSuggestion_];
    v19 = v13;
    OUTLINED_FUNCTION_75_0(v19, sel_setLinkId_);
    v20 = sub_1BFAAF858();
    [v10 setSuggestionId_];

    [v10 setLinkId_];
    return v8;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1BFA366A8(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(a4) & 0xF) : (v11 = a3 & 0xFFFFFFFFFFFFLL), !v11))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1BFAAF988();
    OUTLINED_FUNCTION_72_0();
    sub_1BFA1F4E8();
    v12 = v26;
    v4 = *(v26 + 16);
    v27 = *(v26 + 24);
LABEL_34:
    v5 = v4 + 1;
    if (v4 < v27 >> 1)
    {
LABEL_35:
      *(v12 + 16) = v5;
      v28 = (v12 + 32 * v4);
      v28[4] = v6;
      v28[5] = v7;
      v28[6] = v8;
      v28[7] = v9;
      return v12;
    }

LABEL_38:
    sub_1BFA1F4E8();
    v12 = v29;
    goto LABEL_35;
  }

  v7 = 4 * v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 15;
  while (1)
  {
    for (i = v13; ; i = sub_1BFAAF928())
    {
      v8 = i >> 14;
      if (i >> 14 == v7)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_57_0();
      sub_1BFAAF978();
      v9 = v15;
      v16 = sub_1BFAAF828();

      if ((v16 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_57_0();
    }

    v18 = (v13 >> 14 == v8) & a2;
    if (v18)
    {
      goto LABEL_19;
    }

    if (v8 < v13 >> 14)
    {
      break;
    }

    v19 = sub_1BFAAF988();
    v32 = v21;
    v33 = v20;
    v31 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_36_1();
      sub_1BFA1F4E8();
      v12 = v24;
    }

    v8 = *(v12 + 16);
    v9 = v8 + 1;
    if (v8 >= *(v12 + 24) >> 1)
    {
      sub_1BFA1F4E8();
      v12 = v25;
    }

    *(v12 + 16) = v9;
    v23 = (v12 + 32 * v8);
    v23[4] = v19;
    v23[5] = v33;
    v23[6] = v32;
    v23[7] = v31;
LABEL_19:
    OUTLINED_FUNCTION_57_0();
    v13 = sub_1BFAAF928();
    if ((v18 & 1) == 0 && *(v12 + 16) == a1)
    {
LABEL_27:
      if (v13 >> 14 == v7 && (a2 & 1) != 0)
      {

        return v12;
      }

      if (v7 < v13 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1BFAAF988();
        OUTLINED_FUNCTION_72_0();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v4 = *(v12 + 16);
          v27 = *(v12 + 24);
          goto LABEL_34;
        }
      }

      OUTLINED_FUNCTION_36_1();
      sub_1BFA1F4E8();
      v12 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAutoComplete(typingWindowId:for:query:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1BFAAEEF8();
  v1[7] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_100();
  v8 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_15(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_100();
  v10 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v10);
  v1[12] = OUTLINED_FUNCTION_100();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA36AB0()
{
  v2 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF748]));
  v1[13] = v2;
  if (!v2)
  {
LABEL_17:
    if (qword_1EDCC7470 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_18;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF750]) (v0 + 2936)];
  v1[14] = v4;
  if (!v4)
  {
    v5 = v3;
LABEL_16:

    goto LABEL_17;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CF688]) (v0 + 2936)];
  v1[15] = v6;
  if (!v6)
  {

    goto LABEL_16;
  }

  v7 = v6;
  v8 = v1[12];
  v9 = v1[6];
  v10 = v1[2];
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  sub_1BFAAE3E8();
  v11 = sub_1BFA30B80(v8);
  v1[16] = v11;
  v12 = sub_1BFA308A0(v10);
  v1[17] = v12;
  if (!v12)
  {
LABEL_21:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v40 = sub_1BFAAF688();
    v35 = OUTLINED_FUNCTION_56(v40, qword_1EDCC7478);
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_35_2();
    if (os_log_type_enabled(v35, v41))
    {
      v42 = OUTLINED_FUNCTION_44_0();
      *v42 = 0;
      _os_log_impl(&dword_1BF9F6000, v35, v9, "error generating the SUGClient Event", v42, 2u);
      OUTLINED_FUNCTION_94();
    }

    goto LABEL_26;
  }

  v13 = v12;
  v14 = sub_1BFA308A0(v1[2]);
  v1[18] = v14;
  if (!v14)
  {

    goto LABEL_21;
  }

  v73 = v3;
  v68 = v14;
  v69 = v13;
  v70 = v11;
  v71 = v7;
  v72 = v5;
  v15 = v1[3];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v77 = v1;
  if (v16)
  {
    v18 = v1[10];
    v19 = v1[8];
    v20 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v75 = *(v18 + 72);
    v74 = *MEMORY[0x1E69D3060];
    v21 = (v19 + 104);
    v22 = (v19 + 8);
    do
    {
      v23 = v77[11];
      v24 = v77[9];
      v25 = v77[7];
      sub_1BFA3C644(v20, v23, type metadata accessor for SiriAutoCompleteSuggestion);
      (*v21)(v24, v74, v25);
      v26 = sub_1BFA363D0(v23, v24);
      v28 = v27;
      (*v22)(v24, v25);
      sub_1BFA3C6A4(v23, type metadata accessor for SiriAutoCompleteSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_36_1();
        sub_1BFA1F36C();
        v17 = v32;
      }

      v29 = *(v17 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v17 + 24) >> 1)
      {
        sub_1BFA1F36C();
        v17 = v33;
      }

      *(v17 + 16) = v30;
      v31 = v17 + 16 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v20 += v75;
      --v16;
    }

    while (v16);
  }

  else
  {
    v30 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v45 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v48 = 16 * v45 + 32;
  while (1)
  {
    if (v30 == v45)
    {
      v53 = 0;
      v79 = v46;
LABEL_39:
      v54 = 16 * v53 + 40;
      while (v30 != v53)
      {
        if (v53 >= *(v17 + 16))
        {
          goto LABEL_53;
        }

        v55 = *(v17 + v54);
        v54 += 16;
        ++v53;
        if (v55)
        {
          v56 = v55;
          MEMORY[0x1BFB60C00]();
          OUTLINED_FUNCTION_24_4();
          if (v52)
          {
            OUTLINED_FUNCTION_22_2(v57);
            sub_1BFAAFA08();
          }

          sub_1BFAAFA38();
          v46 = v79;
          goto LABEL_39;
        }
      }

      v58 = v77[12];

      sub_1BFA3B1D0(v47, v73, &qword_1EDCC6400, 0x1E69CF738);
      sub_1BFAAE3E8();
      v59 = sub_1BFA30B80(v58);
      [v73 setGenerationId_];

      [v73 setInvocationType_];
      result = sub_1BFAAF918();
      if (result < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (result <= 0x7FFFFFFF)
      {
        v60 = v77[4];
        v61 = v77[5];
        [v71 setNumCharactersInQuery_];

        v62 = *(sub_1BFA366A8(0x7FFFFFFFFFFFFFFFLL, 1, v60, v61) + 16);

        if (!(v62 >> 31))
        {
          v63 = v77[6];
          [v71 setNumWordsInQuery_];
          [v73 setAutoCompleteQuery_];
          v64 = v70;
          [v73 setLinkId_];
          [v69 setSuggestionsGenerated:v73];
          sub_1BFA3B1D0(v46, v72, &qword_1EBDFB9A8, 0x1E69CF740);
          [v72 setLinkId_];

          [v68 setSugGeneratedTier1:v72];
          v77[19] = *(v63 + 16);
          v77[20] = *(v63 + 24);
          OUTLINED_FUNCTION_0_5();
          v76 = v65;
          v66 = swift_task_alloc();
          v77[21] = v66;
          *v66 = v77;
          v67 = OUTLINED_FUNCTION_10_2(v66);

          return v76(v67);
        }

LABEL_57:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_57;
    }

    if (v45 >= *(v17 + 16))
    {
      break;
    }

    v49 = *(v17 + v48);
    v48 += 16;
    ++v45;
    if (v49)
    {
      v50 = v49;
      MEMORY[0x1BFB60C00]();
      OUTLINED_FUNCTION_24_4();
      if (v52)
      {
        OUTLINED_FUNCTION_22_2(v51);
        sub_1BFAAFA08();
      }

      sub_1BFAAFA38();
      v47 = v78;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_4(&qword_1EDCC7470);
LABEL_18:
  v34 = sub_1BFAAF688();
  v35 = OUTLINED_FUNCTION_56(v34, qword_1EDCC7478);
  v36 = sub_1BFAAFB88();
  if (OUTLINED_FUNCTION_91(v36))
  {
    v37 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v37);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v38, v39, "Failed to initialize SUGSchemaSUGSuggestionsGenerated/SUGSchemaSUGSuggestionsGeneratedTier1/SUGSchemaSUGAutoCompleteQuery object");
    OUTLINED_FUNCTION_69();
  }

LABEL_26:

  OUTLINED_FUNCTION_85();

  return v43();
}

uint64_t sub_1BFA371E8()
{
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *(v1 + 144);
  v5 = *v0;
  *v3 = *v0;

  OUTLINED_FUNCTION_18_3();
  v9 = v6;
  v7 = swift_task_alloc();
  *(v2 + 176) = v7;
  *v7 = v5;
  v7[1] = sub_1BFA3737C;

  return v9(v4);
}

uint64_t sub_1BFA3737C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA37460()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t DefaultSELFLogger.logUIActivityForAutoComplete(typingWindowId:uiActivity:autoCompleteSuggestions:isZeroTurn:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 144) = v5;
  *(v1 + 16) = v6;
  v7 = sub_1BFAAEEF8();
  *(v1 + 40) = v7;
  OUTLINED_FUNCTION_15(v7);
  *(v1 + 48) = v8;
  *(v1 + 56) = OUTLINED_FUNCTION_100();
  v9 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v9);
  *(v1 + 64) = OUTLINED_FUNCTION_100();
  *(v1 + 145) = *v3;
  v10 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1BFA375D8()
{
  v2 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF758]));
  *(v1 + 72) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69CF760]) (v0 + 2936)];
    *(v1 + 80) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + 64);
      v7 = *(v1 + 32);
      v8 = *(v1 + 16);
      sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
      sub_1BFAAE3E8();
      v9 = sub_1BFA30B80(v6);
      *(v1 + 88) = v9;
      v10 = sub_1BFA308A0(v8);
      *(v1 + 96) = v10;
      if (v10)
      {
        v11 = v10;
        v12 = sub_1BFA308A0(*(v1 + 16));
        *(v1 + 104) = v12;
        if (v12)
        {
          v53 = v12;
          v54 = v9;
          v13 = *(v1 + 56);
          v14 = *(v1 + 32);
          v15 = *(v1 + 24);
          if (*(v1 + 144))
          {
            v16 = MEMORY[0x1E69D3050];
          }

          else
          {
            v16 = MEMORY[0x1E69D3060];
          }

          (*(*(v1 + 48) + 104))(*(v1 + 56), *v16, *(v1 + 40));
          v17 = swift_task_alloc();
          *(v17 + 16) = v14;
          *(v17 + 24) = v13;
          sub_1BFA35064(sub_1BFA3B37C, v17, v15);
          v19 = v18;

          v20 = 0;
          v55 = MEMORY[0x1E69E7CC0];
          v21 = *(v19 + 16);
          v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
          v23 = 16 * v20 + 32;
          while (1)
          {
            if (v21 == v20)
            {
              v52 = v22;
              v34 = 0;
              v35 = MEMORY[0x1E69E7CC0];
              for (i = MEMORY[0x1E69E7CC0]; ; v35 = i)
              {
                v36 = 16 * v34 + 40;
                do
                {
                  if (v21 == v34)
                  {
                    v40 = *(v1 + 145);
                    v41 = *(v1 + 56);

                    [v3 setDeliveryVehicle_];
                    v42 = *(v1 + 32);
                    [v3 setUiActivity_];
                    v43 = v54;
                    [v3 setLinkId_];
                    sub_1BFA3B1D0(v52, v3, &qword_1EDCC6400, 0x1E69CF738);
                    [v11 setUiActivity:v3];
                    [v5 setLinkId_];

                    sub_1BFA3B1D0(v35, v5, &qword_1EBDFB9A8, 0x1E69CF740);
                    [v53 setUiActivityTier1:v5];
                    *(v1 + 112) = *(v42 + 16);
                    *(v1 + 120) = *(v42 + 24);
                    OUTLINED_FUNCTION_0_5();
                    v44 = swift_task_alloc();
                    *(v1 + 128) = v44;
                    *v44 = v1;
                    OUTLINED_FUNCTION_10_2(v44);
                    OUTLINED_FUNCTION_47_0();

                    __asm { BRAA            X1, X16 }
                  }

                  if (v34 >= *(v19 + 16))
                  {
                    goto LABEL_41;
                  }

                  v37 = *(v19 + v36);
                  v36 += 16;
                  ++v34;
                }

                while (!v37);
                v38 = v37;
                MEMORY[0x1BFB60C00]();
                OUTLINED_FUNCTION_24_4();
                if (v27)
                {
                  OUTLINED_FUNCTION_22_2(v39);
                  sub_1BFAAFA08();
                }

                sub_1BFAAFA38();
              }
            }

            if (v20 >= *(v19 + 16))
            {
              break;
            }

            v24 = *(v19 + v23);
            v23 += 16;
            ++v20;
            if (v24)
            {
              v25 = v24;
              MEMORY[0x1BFB60C00]();
              OUTLINED_FUNCTION_24_4();
              if (v27)
              {
                OUTLINED_FUNCTION_22_2(v26);
                sub_1BFAAFA08();
              }

              sub_1BFAAFA38();
              v22 = v55;
              goto LABEL_9;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          OUTLINED_FUNCTION_4(&qword_1EDCC7470);
LABEL_18:
          v28 = sub_1BFAAF688();
          v29 = OUTLINED_FUNCTION_56(v28, qword_1EDCC7478);
          v30 = sub_1BFAAFB88();
          if (OUTLINED_FUNCTION_91(v30))
          {
            v31 = OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_29(v31);
            OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v32, v33, "Failed to initialize SUGSchemaSUGSuggestionsUIActivity/SUGSchemaSUGSuggestionsUIActivityTier1 object");
            OUTLINED_FUNCTION_69();
          }

          goto LABEL_37;
        }
      }

      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4(&qword_1EDCC7470);
      }

      v47 = sub_1BFAAF688();
      v29 = OUTLINED_FUNCTION_56(v47, qword_1EDCC7478);
      sub_1BFAAFB88();
      OUTLINED_FUNCTION_35_2();
      if (os_log_type_enabled(v29, v48))
      {
        *OUTLINED_FUNCTION_44_0() = 0;
        OUTLINED_FUNCTION_74_0(&dword_1BF9F6000, v49, v7, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_94();
      }

LABEL_37:

      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_47_0();

      __asm { BRAA            X1, X16 }
    }
  }

  if (qword_1EDCC7470 == -1)
  {
    goto LABEL_18;
  }

  goto LABEL_42;
}

uint64_t sub_1BFA37B10()
{
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *(v1 + 104);
  v5 = *v0;
  *v3 = *v0;

  OUTLINED_FUNCTION_18_3();
  v9 = v6;
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v5;
  v7[1] = sub_1BFA37CA4;

  return v9(v4);
}

uint64_t sub_1BFA37CA4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA37D88()
{
  OUTLINED_FUNCTION_58();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  v5 = OUTLINED_FUNCTION_93();
  v6(v5);

  OUTLINED_FUNCTION_85();

  return v7();
}

uint64_t DefaultSELFLogger.emitPerfStartMessage(generationId:perfBlock:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  return OUTLINED_FUNCTION_2_0();
}

void sub_1BFA37E58()
{
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v3 = sub_1BFAAF688();
  v4 = __swift_project_value_buffer(v3, qword_1EDCC7478);
  v5 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_35_2();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_0();
  v48 = OUTLINED_FUNCTION_32();
  v7 = OUTLINED_FUNCTION_55_0(4.8149e-34);
  switch(v8)
  {
    case 1:
      v9 = 0x6172656E6567;
      goto LABEL_8;
    case 2:
      v9 = 0x756C6F736572;
LABEL_8:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_52_1();
      break;
    case 4:
      v7 = OUTLINED_FUNCTION_63_0();
      break;
    default:
      goto LABEL_10;
  }

  while (1)
  {
LABEL_10:
    v10 = sub_1BF9F88A8(v7, v2, &v48);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_20_1();
LABEL_11:

    v16 = sub_1BFA30C1C(v0[2]);
    v0[4] = v16;
    if (!v16)
    {
      v38 = sub_1BFAAF668();
      v39 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_91(v39))
      {
        v40 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_29(v40);
        OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v41, v42, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_69();
      }

      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_59_0();

      __asm { BRAA            X1, X16 }
    }

    v24 = OUTLINED_FUNCTION_76_0(v16, v17, v18, v19, v20, v21, v22, v23, v45, v46, *v47, *&v47[4], v47[6]);
    OUTLINED_FUNCTION_67_0(v24);
    v26 = sub_1BFA383C8(v25);
    v0[6] = v26;
    if (v26)
    {
      swift_getObjectType();
      v27 = OUTLINED_FUNCTION_68_2();
      v28(v27);
    }

    if (v1)
    {
      swift_getObjectType();
      v29 = *(v4 + 8);
      v30 = v1;
      v31 = OUTLINED_FUNCTION_53_1();
      v29(v31);

      swift_getObjectType();
      v2 = v4 + 24;
      v32 = *(v4 + 24);
      v33 = v1;
      v34 = OUTLINED_FUNCTION_83_0();
      v32(v34);
    }

    v5 = *(v0[3] + 24);
    OUTLINED_FUNCTION_0_5();
    v46 = v35;
    v36 = swift_task_alloc();
    v0[7] = v36;
    *v36 = v0;
    OUTLINED_FUNCTION_45(v36);
    OUTLINED_FUNCTION_59_0();
  }
}

uint64_t sub_1BFA3814C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

Swift::String __swiftcall SELFPerfBlock.description()()
{
  v1 = 0xE500000000000000;
  v2 = 0x6C61746F74;
  switch(*v0)
  {
    case 1:
      v3 = 0x6172656E6567;
      goto LABEL_5;
    case 2:
      v3 = 0x756C6F736572;
LABEL_5:
      v2 = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v1 = 0xE900000000000067;
      v2 = 0x6E697265746C6966;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v2 = 0x676E696B6E6172;
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

id sub_1BFA382C4(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6C8]) init];
      break;
    case 2:
      result = [objc_allocWithZone(MEMORY[0x1E69CF718]) init];
      break;
    case 3:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6B0]) init];
      break;
    case 4:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6E0]) init];
      break;
    default:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6F8]) init];
      break;
  }

  return result;
}

id sub_1BFA383C8(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6D8]) init];
      break;
    case 2:
      result = [objc_allocWithZone(MEMORY[0x1E69CF728]) init];
      break;
    case 3:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6C0]) init];
      break;
    case 4:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6F0]) init];
      break;
    default:
      result = [objc_allocWithZone(MEMORY[0x1E69CF710]) init];
      break;
  }

  return result;
}

uint64_t DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  return OUTLINED_FUNCTION_2_0();
}

void sub_1BFA384E8()
{
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v3 = sub_1BFAAF688();
  v4 = __swift_project_value_buffer(v3, qword_1EDCC7478);
  v5 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_35_2();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_0();
  v48 = OUTLINED_FUNCTION_32();
  v7 = OUTLINED_FUNCTION_55_0(4.8149e-34);
  switch(v8)
  {
    case 1:
      v9 = 0x6172656E6567;
      goto LABEL_8;
    case 2:
      v9 = 0x756C6F736572;
LABEL_8:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_52_1();
      break;
    case 4:
      v7 = OUTLINED_FUNCTION_63_0();
      break;
    default:
      goto LABEL_10;
  }

  while (1)
  {
LABEL_10:
    v10 = sub_1BF9F88A8(v7, v2, &v48);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_20_1();
LABEL_11:

    v16 = sub_1BFA30C1C(v0[2]);
    v0[4] = v16;
    if (!v16)
    {
      v38 = sub_1BFAAF668();
      v39 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_91(v39))
      {
        v40 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_29(v40);
        OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v41, v42, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_69();
      }

      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_59_0();

      __asm { BRAA            X1, X16 }
    }

    v24 = OUTLINED_FUNCTION_76_0(v16, v17, v18, v19, v20, v21, v22, v23, v45, v46, *v47, *&v47[4], v47[6]);
    OUTLINED_FUNCTION_67_0(v24);
    v26 = sub_1BFA38924(v25);
    v0[6] = v26;
    if (v26)
    {
      swift_getObjectType();
      v27 = OUTLINED_FUNCTION_68_2();
      v28(v27);
    }

    if (v1)
    {
      swift_getObjectType();
      v29 = *(v4 + 16);
      v30 = v1;
      v31 = OUTLINED_FUNCTION_53_1();
      v29(v31);

      swift_getObjectType();
      v2 = v4 + 24;
      v32 = *(v4 + 24);
      v33 = v1;
      v34 = OUTLINED_FUNCTION_83_0();
      v32(v34);
    }

    v5 = *(v0[3] + 24);
    OUTLINED_FUNCTION_0_5();
    v46 = v35;
    v36 = swift_task_alloc();
    v0[7] = v36;
    *v36 = v0;
    OUTLINED_FUNCTION_45(v36);
    OUTLINED_FUNCTION_59_0();
  }
}

uint64_t sub_1BFA387DC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA388C0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_85();

  return v3();
}

id sub_1BFA38924(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6D0]) init];
      break;
    case 2:
      result = [objc_allocWithZone(MEMORY[0x1E69CF720]) init];
      break;
    case 3:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6B8]) init];
      break;
    case 4:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6E8]) init];
      break;
    default:
      result = [objc_allocWithZone(MEMORY[0x1E69CF700]) init];
      break;
  }

  return result;
}

uint64_t DefaultSELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA38A3C()
{
  OUTLINED_FUNCTION_51();
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC7478);
  v3 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_35_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v5);
    OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v3, v0, "emitting failed message for");
    OUTLINED_FUNCTION_20_1();
  }

  v7 = v1[2];
  v6 = v1[3];

  v8 = sub_1BFA30C1C(v7);
  v1[4] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF6F8]));
    v1[5] = v10;
    v11 = [objc_allocWithZone(MEMORY[0x1E69CF708]) (v6 + 2936)];
    v1[6] = v11;
    if (v11)
    {
      v11 = [v11 setExists_];
    }

    OUTLINED_FUNCTION_75_0(v11, sel_setFailed_);
    [v9 setRequestContext:v10];
    OUTLINED_FUNCTION_0_5();
    v21 = v12;
    v13 = swift_task_alloc();
    v1[7] = v13;
    *v13 = v1;
    OUTLINED_FUNCTION_45(v13);

    return v21(v9);
  }

  else
  {
    v15 = sub_1BFAAF668();
    v16 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v16))
    {
      v17 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v17);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v18, v19, "error generating the SUGClient Event");
      OUTLINED_FUNCTION_69();
    }

    OUTLINED_FUNCTION_85();

    return v20();
  }
}

uint64_t sub_1BFA38C80()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA38D64()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DefaultSELFLogger.instrument<A>(perfBlock:generationId:invocationType:block:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = v0;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  *(v1 + 72) = *(v4 - 8);
  *(v1 + 80) = OUTLINED_FUNCTION_109();
  *(v1 + 88) = swift_task_alloc();
  v10 = sub_1BFAAEEA8();
  *(v1 + 96) = v10;
  OUTLINED_FUNCTION_15(v10);
  *(v1 + 104) = v11;
  *(v1 + 112) = OUTLINED_FUNCTION_100();
  *(v1 + 195) = *v3;
  v12 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BFA38ED8()
{
  OUTLINED_FUNCTION_51();
  (*(*(v0 + 104) + 104))(*(v0 + 112), *MEMORY[0x1E69D2FB8], *(v0 + 96));
  v1 = sub_1BFAAEE98();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  if (v1)
  {
    v9 = (*(v0 + 40) + **(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_1BFA390A8;
    v5 = *(v0 + 16);

    return v9(v5);
  }

  else
  {
    *(v0 + 192) = *(v0 + 195);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_11_4(v7);

    return DefaultSELFLogger.emitPerfStartMessage(generationId:perfBlock:)(v8, (v0 + 192));
  }
}

uint64_t sub_1BFA390A8()
{
  OUTLINED_FUNCTION_43();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BFA391EC()
{
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v0;
  *v3 = *v0;

  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 136) = v6;
  *v6 = v5;
  v6[1] = sub_1BFA393A8;
  v7 = *(v1 + 80);

  return v9(v7);
}

uint64_t sub_1BFA393A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1BFA396D0;
  }

  else
  {
    v5 = sub_1BFA394AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BFA394AC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 195);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v4 + 32);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v6(v2, v3, v5);
  *(v0 + 194) = v1;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_11_4(v7);

  return DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(v8, (v0 + 194));
}

uint64_t sub_1BFA39568()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA3964C()
{
  OUTLINED_FUNCTION_40();
  (*(v0 + 152))(*(v0 + 16), *(v0 + 88), *(v0 + 56));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA396D0()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 195))
  {
    *(v0 + 193) = *(v0 + 195);
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_11_4(v1);

    return DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(v2, (v0 + 193));
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 176) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_11_4(v4);

    return DefaultSELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)(v5);
  }
}

uint64_t sub_1BFA397C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA398AC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA39990()
{
  OUTLINED_FUNCTION_43();
  swift_willThrow();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA39A10(uint64_t a1)
{
  v2 = sub_1BFAAF318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69D32B0])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x1E69D32A8])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E69D32A0])
  {
    return 2;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1BFA39B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 16) && *(*(a1 + 40) + 16))
  {
    PolicyResult.getLeafPolicyResults.getter(a1, a2, a3, a4, a5, a6);
    v7 = v6 + 64;
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v9 = *(v7 - 8);
      if (*(v7 - 24) != 0xD000000000000016 || 0x80000001BFAB8EE0 != *(v7 - 16))
      {
        v7 += 48;
        if ((sub_1BFAAFF08() & 1) == 0)
        {
          continue;
        }
      }

      return v9;
    }
  }

  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v11 = sub_1BFAAF688();
  __swift_project_value_buffer(v11, qword_1EDCC7478);
  v12 = sub_1BFAAF668();
  v13 = sub_1BFAAFB68();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BF9F6000, v12, v13, "[warning] Smart Suppression Score not found, returning nil", v14, 2u);
    MEMORY[0x1BFB618C0](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_1BFA39D20(uint64_t a1)
{
  v2 = sub_1BFAAF2E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69D3240])
  {
    v7 = 4;
  }

  else if (v6 == *MEMORY[0x1E69D3250])
  {
    v7 = 7;
  }

  else
  {
    if (v6 == *MEMORY[0x1E69D3248])
    {
      return 1;
    }

    if (v6 == *MEMORY[0x1E69D3230])
    {
      return 2;
    }

    if (v6 == *MEMORY[0x1E69D3258])
    {
      return 3;
    }

    if (v6 == *MEMORY[0x1E69D3220])
    {
      return 5;
    }

    if (v6 == *MEMORY[0x1E69D3238])
    {
      return 6;
    }

    if (v6 == *MEMORY[0x1E69D3228])
    {
      return 8;
    }

    v7 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

void *sub_1BFA39F00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = [objc_allocWithZone(MEMORY[0x1E69CF768]) init];
  v8 = v7;
  if (v7)
  {
    if (v3)
    {
      [v7 setWasSuppressed_];
      if ([v8 wasSuppressed])
      {
        v16[0] = v2 & 1;
        v17 = v1;
        v18 = v3;
        v19 = v4;
        v20 = v6 & 1;
        v21 = v5;
        v14 = sub_1BFA39FE4(v16, v9, v10, v11, v12, v13);
        if ((v14 & 0x100000000) == 0)
        {
          [v8 setSuppressionReason_];
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

unint64_t sub_1BFA39FE4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  if (*a1)
  {
    goto LABEL_32;
  }

  v7 = *(a1 + 5);
  v8 = a1[32];
  v9 = *(a1 + 3);
  v10 = *(a1 + 8);
  v25[0] = 0;
  v26 = v10;
  v27 = v9;
  v28 = v8;
  v29 = v7;
  sub_1BFA3A254(v25, a2, a3, a4, a5, a6, v30);
  v11 = v31;
  if (!v31)
  {
    goto LABEL_32;
  }

  v13 = v33;
  v12 = v34;
  v14 = v32;
  v16 = v30[0];
  v15 = v30[1];

  sub_1BFA3C59C(v16, v15, v11, v14, v13, v12);
  v17 = v15 == 0x6F6F546E776F6873 && v11 == 0xEC0000006E6F6F53;
  if (!v17 && (sub_1BFAAFF08() & 1) == 0)
  {
    v19 = v15 == 0x6F6F546E776F6873 && v11 == 0xEC000000796E614DLL;
    if (v19 || (sub_1BFAAFF08() & 1) != 0)
    {

      v18 = 1;
      goto LABEL_33;
    }

    v20 = v15 == 0x4579646165726C61 && v11 == 0xEE0064656761676ELL;
    if (v20 || (sub_1BFAAFF08() & 1) != 0)
    {

      v18 = 2;
      goto LABEL_33;
    }

    v21 = v15 == 0xD000000000000013 && 0x80000001BFAB8EC0 == v11;
    if (v21 || (sub_1BFAAFF08() & 1) != 0)
    {

      v18 = 4;
      goto LABEL_33;
    }

    if (v15 == 0xD000000000000016 && 0x80000001BFAB8EE0 == v11)
    {
    }

    else
    {
      v23 = sub_1BFAAFF08();

      if ((v23 & 1) == 0)
      {
LABEL_32:
        v18 = 0;
        goto LABEL_33;
      }
    }

    v18 = 12;
    goto LABEL_33;
  }

  v18 = 3;
LABEL_33:
  LOBYTE(v30[0]) = v6;
  return v18 | (v6 << 32);
}

double sub_1BFA3A254@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = *a1;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = a1[32];
  v14 = *(a1 + 5);
  if (*(v14 + 16))
  {
    PolicyResult.getLeafPolicyResults.getter(v10, a2, a3, a4, a5, a6);
    v16 = v15 + 16;
    v17 = *(v15 + 16) + 1;
    while (--v17)
    {
      v18 = (v16 + 48);
      v19 = *(v16 + 16);
      v16 += 48;
      if ((v19 & 1) == 0)
      {
        v21 = *(v18 - 3);
        v20 = *(v18 - 2);
        v22 = *(v18 - 1);
        v23 = *v18;
        v24 = *(v18 + 1);

        *a7 = 0;
        a7[1] = v21;
        a7[2] = v20;
        a7[3] = v22;
        a7[4] = v23;
        a7[5] = v24;
        return result;
      }
    }

    result = 0.0;
    *(a7 + 1) = 0u;
    *(a7 + 2) = 0u;
    *a7 = 0u;
  }

  else
  {
    *a7 = v9;
    a7[1] = v11;
    a7[2] = v10;
    a7[3] = v12;
    a7[4] = v13;
    a7[5] = v14;
  }

  return result;
}

uint64_t sub_1BFA3A384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGenerated(generationId:suggestionList:presentationContext:)();
}

uint64_t sub_1BFA3A434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAnnouncement(generationId:for:)();
}

uint64_t sub_1BFA3A4E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForCrossDomainHint(generationId:for:)();
}

uint64_t sub_1BFA3A594()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAutoComplete(typingWindowId:for:query:)();
}

uint64_t sub_1BFA3A654()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logRequestLink(requestId:generationId:)();
}

uint64_t sub_1BFA3A6FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logRequestLink(turnId:sugId:)();
}

uint64_t sub_1BFA3A7A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logRequestLink(turnId:generationId:)();
}

uint64_t sub_1BFA3A84C(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.emitPerfStartMessage(generationId:perfBlock:)(a1, a2);
}

uint64_t sub_1BFA3A8F4(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(a1, a2);
}

uint64_t sub_1BFA3A99C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)(a1);
}

uint64_t sub_1BFA3AA34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDE28;

  return DefaultSELFLogger.instrument<A>(perfBlock:generationId:invocationType:block:)();
}

uint64_t sub_1BFA3AB1C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDE28;

  return DefaultSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(a1, a2, a3, a4);
}

uint64_t sub_1BFA3ABDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logUIActivityForAutoComplete(typingWindowId:uiActivity:autoCompleteSuggestions:isZeroTurn:)();
}

uint64_t SELFPerfBlock.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

void sub_1BFA3B018(uint64_t a1, uint64_t a2, void *a3, uint8_t *a4, const char *a5)
{
  if (a1 && (v6 = a4, objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = *v6;

    [v5 v9];
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v10 = sub_1BFAAF688();
    oslog = OUTLINED_FUNCTION_56(v10, qword_1EDCC7478);
    v11 = sub_1BFAAFB88();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v12);
      _os_log_impl(&dword_1BF9F6000, oslog, v11, a5, v6, 2u);
      OUTLINED_FUNCTION_69();
    }
  }
}

uint64_t sub_1BFA3B1A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1BFA3B1D0(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  sub_1BFA3C744(0, a3, a4);
  v5 = sub_1BFAAF9D8();

  [a2 setSuggestions_];
}

uint64_t sub_1BFA3B24C(void *a1)
{
  v1 = [a1 jsonData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BFAAE338();

  return v3;
}

void sub_1BFA3B2B0(uint64_t a1, void *a2)
{
  v3 = sub_1BFAAF9D8();
  [a2 setSuggestionIds_];
}

void sub_1BFA3B310(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1BFAAF858();

  [a3 *a4];
}

uint64_t sub_1BFA3B37C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BFA363D0(a1, *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1BFA3B3C0()
{
  result = qword_1EBDFB990;
  if (!qword_1EBDFB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB990);
  }

  return result;
}

unint64_t sub_1BFA3B418()
{
  result = qword_1EBDFB998;
  if (!qword_1EBDFB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB998);
  }

  return result;
}

uint64_t _s4TierOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for UIActivity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of SELFLogger.logSUGSchemaSUGSuggestionsGenerated(generationId:suggestionList:presentationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_16(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_0();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_41(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_10_2(v16);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of SELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAnnouncement(generationId:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_16(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_0();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_41(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_10_2(v16);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of SELFLogger.logSUGSchemaSUGSuggestionsGeneratedForCrossDomainHint(generationId:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_16(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_0();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_41(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_10_2(v16);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of SELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAutoComplete(typingWindowId:for:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37_1(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_30();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_41(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_45(v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_77_0();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of SELFLogger.logRequestLink(requestId:generationId:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SELFLogger.logRequestLink(turnId:sugId:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SELFLogger.logRequestLink(turnId:generationId:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SELFLogger.emitPerfStartMessage(generationId:perfBlock:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SELFLogger.emitPerfEndMessage(generationId:perfBlock:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)()
{
  OUTLINED_FUNCTION_51();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_45(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of SELFLogger.instrument<A>(perfBlock:generationId:invocationType:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_0();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_41(v17);
  *v18 = v19;
  v18[1] = sub_1BF9FDE28;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of SELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37_1(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_30();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_41(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_45(v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_77_0();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

uint64_t dispatch thunk of SELFLogger.logUIActivityForAutoComplete(typingWindowId:uiActivity:autoCompleteSuggestions:isZeroTurn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37_1(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_30();
  v32 = v18 + *v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_41(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_45(v20);
  OUTLINED_FUNCTION_77_0();

  return v28(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v32, a12);
}

_BYTE *storeEnumTagSinglePayload for SELFPerfBlock(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BFA3C4C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1BFA3C508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BFA3C558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }
}

void sub_1BFA3C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }
}

uint64_t sub_1BFA3C5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA3C644(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BFA3C6A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BFA3C6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BFA3C744(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_0()
{
}

void OUTLINED_FUNCTION_74_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

id OUTLINED_FUNCTION_75_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13)
{
  a13 = *(v13 + 64);

  return sub_1BFA382C4(&a13);
}

id OUTLINED_FUNCTION_78_0(void *a1)
{

  return [a1 init];
}

void PolicyResult.getLeafPolicyResults.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 72;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      OUTLINED_FUNCTION_2_4(a1, a2, a3, a4, a5, a6);
      v12 = *(v11 + 16);
      v13 = *(v10 + 16);
      if (__OFADD__(v13, v12))
      {
        break;
      }

      v14 = v11;
      if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v10 + 24) >> 1)
      {
        sub_1BFA1F42C();
        v10 = v15;
      }

      if (*(v14 + 16))
      {
        if ((*(v10 + 24) >> 1) - *(v10 + 16) < v12)
        {
          goto LABEL_18;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = *(v10 + 16);
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_19;
          }

          *(v10 + 16) = v18;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_17;
        }
      }

      v9 += 48;
      if (!--v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v19 = v6[32];
    v20 = *(v6 + 2);
    v21 = *(v6 + 3);
    v22 = *(v6 + 1);
    v23 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB750, &unk_1BFAB2660);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BFAB08E0;
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;
    *(v24 + 48) = v20;
    *(v24 + 56) = v21;
    *(v24 + 64) = v19;
    *(v24 + 72) = v7;
  }
}

uint64_t PolicyResult.policyId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void __swiftcall PolicyResult.init(result:policyId:childPolicyResults:score:)(SiriSuggestionsAPI::PolicyResult *__return_ptr retstr, Swift::Bool result, Swift::String policyId, Swift::OpaquePointer childPolicyResults, Swift::Double_optional score)
{
  retstr->result = result;
  retstr->policyId = policyId;
  retstr->childPolicyResults = childPolicyResults;
  retstr->score.value = *&score.is_nil;
  retstr->score.is_nil = v5 & 1;
}

uint64_t PolicyResult.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (*v0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*v0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1BFB60B80](v5, v6);

  MEMORY[0x1BFB60B80](64, 0xE100000000000000);
  MEMORY[0x1BFB60B80](v1, v2);
  result = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1BFB60B80](0, 0xE000000000000000);

    MEMORY[0x1BFB60B80](64, 0xE100000000000000);
    sub_1BFAAFB48();
    result = 0;
  }

  if (*(v4 + 16))
  {
    MEMORY[0x1BFB60B80](23354, 0xE200000000000000);
    v8 = *(v4 + 16);
    if (v8)
    {
      v19 = MEMORY[0x1E69E7CC0];
      sub_1BFA2DC58(0, v8, 0);
      v9 = v4 + 72;
      do
      {
        v10 = PolicyResult.description.getter();
        v12 = v11;
        v14 = *(v19 + 16);
        v13 = *(v19 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BFA2DC58((v13 > 1), v14 + 1, 1);
        }

        *(v19 + 16) = v14 + 1;
        v15 = v19 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        v9 += 48;
        --v8;
      }

      while (v8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
    sub_1BFA3D6B8();
    v16 = sub_1BFAAF838();
    v18 = v17;

    MEMORY[0x1BFB60B80](v16, v18);

    MEMORY[0x1BFB60B80](93, 0xE100000000000000);
    return 0;
  }

  return result;
}

void PolicyResult.getFailedPolicyIds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_4(a1, a2, a3, a4, a5, a6);
  v7 = v6;
  v8 = 0;
  v9 = *(v6 + 16);
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = 48 * v8;
  while (1)
  {
    if (v9 == v8)
    {

      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    ++v8;
    v12 = v11 + 48;
    v13 = *(v7 + v11 + 32);
    v11 += 48;
    if ((v13 & 1) == 0)
    {
      v15 = *(v7 + v12 - 8);
      v14 = *(v7 + v12);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F5A8();
        v10 = v18;
      }

      v16 = *(v10 + 16);
      if (v16 >= *(v10 + 24) >> 1)
      {
        sub_1BFA1F5A8();
        v10 = v19;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1BFA3CEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64497963696C6F70 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001BFAB8F40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BFAAFF08();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BFA3D04C(char a1)
{
  result = 0x746C75736572;
  switch(a1)
  {
    case 1:
      result = 0x64497963696C6F70;
      break;
    case 2:
      result = 0x65726F6373;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA3D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA3CEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA3D11C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA137A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA3D144(uint64_t a1)
{
  v2 = sub_1BFA3D71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA3D180(uint64_t a1)
{
  v2 = sub_1BFA3D71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PolicyResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9E8, &qword_1BFAB2670);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v10;
  v11 = *(v1 + 24);
  v20 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA3D71C();
  sub_1BFAB0008();
  v24 = 0;
  OUTLINED_FUNCTION_3();
  sub_1BFAAFE88();
  if (!v2)
  {
    v12 = v15;
    v23 = 1;
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE78();
    v22 = 2;
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE58();
    v19 = v12;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9F0, &qword_1BFAB2678);
    sub_1BFA3D7C4(&qword_1EDCC6460, sub_1BFA3D770, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_3();
    sub_1BFAAFEB8();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t PolicyResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9F8, &qword_1BFAB2680);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA3D71C();
  sub_1BFAAFFF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  OUTLINED_FUNCTION_1_4();
  v6 = sub_1BFAAFDD8();
  OUTLINED_FUNCTION_1_4();
  v7 = sub_1BFAAFDC8();
  v10 = v9;
  v16 = v7;
  OUTLINED_FUNCTION_1_4();
  v11 = sub_1BFAAFDA8();
  v18 = v12;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9F0, &qword_1BFAB2678);
  sub_1BFA3D7C4(&qword_1EDCC6FD0, sub_1BFA3D83C, MEMORY[0x1E69E6330]);
  sub_1BFAAFE08();
  v13 = OUTLINED_FUNCTION_0_6();
  v14(v13);
  *a2 = v6 & 1;
  *(a2 + 8) = v16;
  *(a2 + 16) = v10;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18 & 1;
  *(a2 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

unint64_t sub_1BFA3D6B8()
{
  result = qword_1EDCC6418;
  if (!qword_1EDCC6418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB560, &qword_1BFAB5470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6418);
  }

  return result;
}

unint64_t sub_1BFA3D71C()
{
  result = qword_1EDCC7610;
  if (!qword_1EDCC7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7610);
  }

  return result;
}

unint64_t sub_1BFA3D770()
{
  result = qword_1EDCC6B00;
  if (!qword_1EDCC6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6B00);
  }

  return result;
}

uint64_t sub_1BFA3D7C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB9F0, &qword_1BFAB2678);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFA3D83C()
{
  result = qword_1EDCC7238[0];
  if (!qword_1EDCC7238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC7238);
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

uint64_t sub_1BFA3D8A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BFA3D8E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for PolicyResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFA3DA20()
{
  result = qword_1EBDFBA00;
  if (!qword_1EBDFBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBA00);
  }

  return result;
}

unint64_t sub_1BFA3DA78()
{
  result = qword_1EDCC7600;
  if (!qword_1EDCC7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7600);
  }

  return result;
}

unint64_t sub_1BFA3DAD0()
{
  result = qword_1EDCC7608;
  if (!qword_1EDCC7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7608);
  }

  return result;
}

uint64_t sub_1BFA3DB24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA20, &qword_1BFAB28B8);
  __swift_allocate_value_buffer(v0, qword_1EDCC7380);
  __swift_project_value_buffer(v0, qword_1EDCC7380);
  return sub_1BFAAF108();
}

uint64_t SiriRemembersLogger.storeProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SiriRemembersLogger.__allocating_init(donator:storeProvider:clock:)()
{
  OUTLINED_FUNCTION_18_4();
  v0 = swift_allocObject();
  SiriRemembersLogger.init(donator:storeProvider:clock:)();
  return v0;
}

uint64_t SiriRemembersLogger.init(donator:storeProvider:clock:)()
{
  OUTLINED_FUNCTION_18_4();
  sub_1BFA3DE00(v5, &v9);
  if (v10)
  {
    sub_1BFA007F8(v4, &qword_1EBDFBA08, &qword_1BFAB2880);
    sub_1BF9FA474(&v9, &v11);
  }

  else
  {
    v6 = type metadata accessor for InProcessRemembersDonator();
    v7 = swift_allocObject();
    v7[2] = sub_1BFA4254C;
    v7[3] = 0;
    v7[4] = sub_1BFA42564;
    v7[5] = 0;
    v12 = v6;
    v13 = &protocol witness table for InProcessRemembersDonator;
    *&v11 = v7;
    sub_1BFA007F8(v4, &qword_1EBDFBA08, &qword_1BFAB2880);
    if (v10)
    {
      sub_1BFA007F8(&v9, &qword_1EBDFBA08, &qword_1BFAB2880);
    }
  }

  sub_1BF9FA474(&v11, v1 + 16);
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  sub_1BF9FA474(v0, v1 + 72);
  return v1;
}

uint64_t sub_1BFA3DE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA08, &qword_1BFAB2880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *InProcessRemembersDonator.__allocating_init(writableStore:inProcessStore:)()
{
  OUTLINED_FUNCTION_18_4();
  result = swift_allocObject();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = sub_1BFA4254C;
  }

  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  result[2] = v5;
  result[3] = v6;
  if (v1)
  {
    v7 = v1;
  }

  else
  {
    v7 = sub_1BFA42564;
  }

  if (v1)
  {
    v8 = v0;
  }

  else
  {
    v8 = 0;
  }

  result[4] = v7;
  result[5] = v8;
  return result;
}

uint64_t SiriRemembersLogger.donate(donation:item:)()
{
  OUTLINED_FUNCTION_40();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_1BFAAE738();
  v1[10] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[11] = v5;
  v1[12] = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_100();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA3DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v15 = *(v14 + 104);
  v16 = *(v14 + 80);
  v17 = *(v14 + 88);
  v19 = *(v14 + 64);
  v18 = *(v14 + 72);
  v20 = *(v14 + 56);
  v21 = v18[6];
  __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
  sub_1BF9F93E8(v19, v14 + 16);
  (*(v17 + 16))(v15, v20, v16);
  v22 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v14 + 112) = v23;
  sub_1BF9FA474((v14 + 16), v23 + 16);
  (*(v17 + 32))(v23 + v22, v15, v16);
  v34 = *(v21 + 8) + **(v21 + 8);
  v24 = swift_task_alloc();
  *(v14 + 120) = v24;
  *v24 = v14;
  v24[1] = sub_1BFA3E190;
  OUTLINED_FUNCTION_61();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v21 + 8, v34, a12, a13, a14);
}

uint64_t sub_1BFA3E190()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_36();

    return v10();
  }
}

uint64_t sub_1BFA3E2B4()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

void sub_1BFA3E318(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BFAAE658();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BFAAE738();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a1;
    if (qword_1EDCC7490 != -1)
    {
      swift_once();
    }

    v17 = sub_1BFAAF688();
    __swift_project_value_buffer(v17, qword_1EDCC6FF8);
    v18 = a1;
    v19 = sub_1BFAAF668();
    v20 = sub_1BFAAFB88();
    sub_1BFA42FD8(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45[0] = v22;
      *v21 = 136315138;
      v46 = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v24 = sub_1BFAAF8B8();
      v26 = sub_1BF9F88A8(v24, v25, v45);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1BF9F6000, v19, v20, "Error when donating engagement to siri remembers: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v22);
      MEMORY[0x1BFB618C0](v22, -1, -1);
      MEMORY[0x1BFB618C0](v21, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    if (qword_1EDCC7490 != -1)
    {
      swift_once();
    }

    v27 = sub_1BFAAF688();
    __swift_project_value_buffer(v27, qword_1EDCC6FF8);
    sub_1BF9F93E8(a3, v45);
    (*(v13 + 16))(v15, a4, v12);
    v28 = sub_1BFAAF668();
    v29 = sub_1BFAAFB68();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v30 = 136315394;
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      swift_getDynamicType();
      v31 = sub_1BFAB0048();
      v42 = v4;
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_2Tm(v45);
      v34 = sub_1BF9F88A8(v31, v33, &v46);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      sub_1BFAAE708();
      v35 = sub_1BFAAE5E8();
      v37 = v36;
      (*(v43 + 8))(v11, v44);
      (*(v13 + 8))(v15, v12);
      v38 = sub_1BF9F88A8(v35, v37, &v46);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_1BF9F6000, v28, v29, "Submitted %s event to siri remembers for %s", v30, 0x16u);
      v39 = v41;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v39, -1, -1);
      MEMORY[0x1BFB618C0](v30, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
      __swift_destroy_boxed_opaque_existential_2Tm(v45);
    }
  }
}

uint64_t SiriRemembersLogger.logEngagement(for:with:invocationType:)()
{
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = sub_1BFAAE738();
  v1[12] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_109();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_1BFAAF648();
  v1[17] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA3EB58()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA3EC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v13 = OUTLINED_FUNCTION_1_5();
  v14(v13);
  sub_1BFAAEBD8();
  v15 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_2_5(v15);

  v16 = OUTLINED_FUNCTION_7_2();
  v17(v16);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_25_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1BFA3ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v14 = OUTLINED_FUNCTION_1_5();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_2Tm((v12 + 16));
  sub_1BFAAEBD8();
  v16 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_2_5(v16);

  v17 = OUTLINED_FUNCTION_7_2();
  v18(v17);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t static SiriRemembersLogger.createDonation(for:with:invocationType:clock:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  *&v34 = a4;
  v37 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D0, &qword_1BFAB1440);
  v8 = OUTLINED_FUNCTION_60_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v35 = sub_1BFAAE658();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v36 = v5;
  v19 = static SiriRemembersLogger.getInteractionIdForEngagement(requestId:action:)(a2);
  v21 = v20;
  sub_1BFAAF188();
  v22 = sub_1BFAAECC8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_1BFA007F8(v10, &qword_1EBDFB6D0, &qword_1BFAB1440);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = sub_1BFAAECA8();
    v24 = v25;
    OUTLINED_FUNCTION_54();
    (*(v26 + 8))(v10, v22);
  }

  static SiriRemembersLogger.createInteraction(type:interactionId:invocationType:associatedAppId:clock:)(0xD000000000000010, 0x80000001BFAB8FA0, v19, v21, v33, v23, v24, v34);

  v27 = v35;
  (*(v12 + 16))(v16, v18, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA10, &unk_1BFAB28A0);
  inited = swift_initStackObject();
  v34 = xmmword_1BFAB08E0;
  *(inited + 16) = xmmword_1BFAB08E0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BFAB8F80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB968, &unk_1BFAB1EF0);
  v29 = sub_1BFAAE6D8();
  OUTLINED_FUNCTION_15(v29);
  v30 = swift_allocObject();
  *(v30 + 16) = v34;
  sub_1BFA3F690();
  *(inited + 48) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA18, &qword_1BFAB28B0);
  sub_1BFAAF7D8();
  sub_1BFAAE6F8();
  return (*(v12 + 8))(v18, v27);
}

uint64_t static SiriRemembersLogger.getInteractionIdForEngagement(requestId:action:)(uint64_t a1)
{
  if (qword_1EDCC7378 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA20, &qword_1BFAB28B8);
  __swift_project_value_buffer(v2, qword_1EDCC7380);
  v3 = sub_1BFAAE818();
  v4 = sub_1BFAAF1D8();
  v16 = MEMORY[0x1E69E6158];
  v14 = v4;
  v15 = v5;
  v3(&v17, &v14);

  __swift_destroy_boxed_opaque_existential_2Tm(&v14);
  if (!v19)
  {
    sub_1BFA007F8(&v17, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v17 = 0x656D656761676E45;
    v18 = 0xEB000000005F746ELL;
LABEL_9:
    v7 = sub_1BFAAF1D8();
    v6 = v8;
    goto LABEL_10;
  }

  v7 = v14;
  v6 = v15;
  v17 = 0x656D656761676E45;
  v18 = 0xEB000000005F746ELL;
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = sub_1BFA41BC0(5uLL, v7, v6);
  v10 = MEMORY[0x1BFB60B30](v9);
  v12 = v11;

  MEMORY[0x1BFB60B80](v10, v12);

  static SiriRemembersLogger.getInteractionID(requestId:suffix:)(a1, v17, v18);

  return OUTLINED_FUNCTION_46();
}

uint64_t static SiriRemembersLogger.createInteraction(type:interactionId:invocationType:associatedAppId:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v21[1] = a5;
  v9 = sub_1BFAAE378();
  v10 = OUTLINED_FUNCTION_60_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB738, &qword_1BFAB1500);
  v12 = OUTLINED_FUNCTION_60_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v21 - v13);
  sub_1BFAAE648();

  sub_1BFAAE608();

  sub_1BFAAE5F8();

  sub_1BFAAE628();
  sub_1BFAAE5D8();
  *v14 = sub_1BFAAEE78();
  v14[1] = v15;
  v16 = *MEMORY[0x1E69D2AE8];
  v17 = sub_1BFAAE748();
  OUTLINED_FUNCTION_54();
  (*(v18 + 104))(v14, v16, v17);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  v19 = sub_1BFAAE618();
  sub_1BFA1CC50(v14, 0x697461636F766E49, 0xEE00657079546E6FLL);
  v19(v22, 0);
  __swift_project_boxed_opaque_existential_1(a8, a8[3]);
  sub_1BFAAF128();
  sub_1BFAAE348();
  return sub_1BFAAE638();
}

uint64_t sub_1BFA3F690()
{
  sub_1BFAAE6C8();
  sub_1BFAAE6A8();
  sub_1BFAAF1D8();
  sub_1BFAAE698();
  v0 = sub_1BFAAF198();
  sub_1BFA410F8(v0);

  return sub_1BFAAE6B8();
}

uint64_t static SiriRemembersLogger.createDonation(for:deliveryVehicle:generationId:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1BFAAE658();
  v9 = OUTLINED_FUNCTION_60_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BFA3F85C(a2, a3, 0, 0xE000000000000000, 0, 0, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA10, &unk_1BFAB28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB08E0;
  OUTLINED_FUNCTION_40_1(inited, "SuggestionEntities");
  *(inited + 48) = sub_1BFA3FA04(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA18, &qword_1BFAB28B0);
  sub_1BFAAF7D8();
  return sub_1BFAAE6F8();
}

uint64_t sub_1BFA3F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v10 = sub_1BFAAEEA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static SiriRemembersLogger.getTypeForShownSuggestions(_:)();
  v16 = v15;
  v25 = 0xD000000000000010;
  v26 = 0x80000001BFAB8FC0;
  MEMORY[0x1BFB60B80](a3, a4);
  v17 = static SiriRemembersLogger.getInteractionID(requestId:suffix:)(a2, v25, v26);
  v19 = v18;

  (*(v11 + 104))(v13, *MEMORY[0x1E69D2FD0], v10);
  static SiriRemembersLogger.createInteraction(type:interactionId:invocationType:associatedAppId:clock:)(v14, v16, v17, v19, v13, v22, v23, v24);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BFA3FA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BFAAE6D8();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;

  v10 = sub_1BFA2C3EC(sub_1BFA42F70, v25, a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v12 = sub_1BFA2DC78(0, v11, 0);
    v13 = 0;
    v14 = v27;
    v22 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21[1] = v7 + 32;
    while (v13 < *(v10 + 16))
    {
      v15 = v5;
      v16 = *(v5 + 72);
      v17 = v23;
      sub_1BFA1C998(v22 + v16 * v13, v23);
      sub_1BFA41714();
      sub_1BFA1C9FC(v17);
      v27 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BFA2DC78((v18 > 1), v19 + 1, 1);
        v14 = v27;
      }

      ++v13;
      *(v14 + 16) = v19 + 1;
      v12 = (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v9, v24);
      v5 = v15;
      if (v11 == v13)
      {

        return v14;
      }
    }

    __break(1u);
    sub_1BFA1C9FC(v12);

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t SiriRemembersLogger.log(from:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = sub_1BFAAE738();
  v1[12] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_109();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_1BFAAF648();
  v1[17] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA40030()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA40130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v13 = OUTLINED_FUNCTION_1_5();
  v14(v13);
  sub_1BFAAEBC8();
  v15 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_2_5(v15);

  v16 = OUTLINED_FUNCTION_7_2();
  v17(v16);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_25_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1BFA401D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v14 = OUTLINED_FUNCTION_1_5();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_2Tm((v12 + 16));
  sub_1BFAAEBC8();
  v16 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_2_5(v16);

  v17 = OUTLINED_FUNCTION_7_2();
  v18(v17);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t static SiriRemembersLogger.createDonation(candidates:deliveryVehicle:generationId:interactionSuffix:associatedAppId:clock:)()
{
  OUTLINED_FUNCTION_40();
  v1[17] = v16;
  v1[18] = v0;
  v1[15] = v2;
  v1[16] = v3;
  v1[13] = v4;
  v1[14] = v5;
  v1[11] = v6;
  v1[12] = v7;
  v1[9] = v8;
  v1[10] = v9;
  v10 = sub_1BFAAE658();
  OUTLINED_FUNCTION_60_0(v10);
  v1[19] = OUTLINED_FUNCTION_100();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA4031C()
{
  OUTLINED_FUNCTION_40();
  sub_1BFA3F85C(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA10, &unk_1BFAB28A0);
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = xmmword_1BFAB08E0;
  OUTLINED_FUNCTION_40_1(inited, "SuggestionEntities");
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA40400;
  v3 = *(v0 + 80);

  return sub_1BFA405A0(v3);
}

uint64_t sub_1BFA40400()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  *(v1 + 176) = v0;

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA404F0()
{
  OUTLINED_FUNCTION_43();
  *(*(v0 + 160) + 48) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA18, &qword_1BFAB28B0);
  sub_1BFAAF7D8();
  sub_1BFAAE6F8();

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA405A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BFAAE6D8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA40660, 0, 0);
}

uint64_t sub_1BFA40660()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0[2] + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v0[8] = 0;
  v0[9] = v2;
  v0[7] = v1;
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    v0[10] = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_10_3(v3);

    return sub_1BFA41764(v5, v6, v7);
  }

  else
  {

    v9 = v0[1];
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1BFA40728()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA40830()
{
  OUTLINED_FUNCTION_43();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BFA1F658(0, *(v2 + 16) + 1, 1, v0[9]);
    v2 = v17;
  }

  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v4 >= v3 >> 1)
  {
    sub_1BFA1F658(v3 > 1, v4 + 1, 1, v2);
    v2 = v18;
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  *(v2 + 16) = v4 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v5, v7);
  v8 = v0[7];
  v9 = v0[8] + 1;
  v0[8] = v9;
  v0[9] = v2;
  if (v9 == v8)
  {

    v10 = v0[1];

    return v10(v2);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    v0[10] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_10_3(v12);

    return sub_1BFA41764(v14, v15, v16);
  }
}

uint64_t SiriRemembersLogger.logShadowSelected(candidates:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = sub_1BFAAE738();
  v1[12] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_109();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_1BFAAF648();
  v1[17] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA40ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BFAAF258();
  sub_1BFAAF238();

  sub_1BFAAEBC8();
  v4 = sub_1BFAAF258();
  OUTLINED_FUNCTION_46();
  sub_1BFAAF268();

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v2 + 160) = v5;
  *v5 = v6;
  v5[1] = sub_1BFA40BF4;

  return static SiriRemembersLogger.createDonation(candidates:deliveryVehicle:generationId:interactionSuffix:associatedAppId:clock:)();
}

uint64_t sub_1BFA40BF4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA40E9C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA40F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v13 = OUTLINED_FUNCTION_23_1();
  v14(v13);
  sub_1BFAAEBC8();
  v15 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_2_5(v15);

  v16 = OUTLINED_FUNCTION_7_2();
  v17(v16);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_25_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1BFA41044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v14 = OUTLINED_FUNCTION_23_1();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_2Tm((v12 + 16));
  sub_1BFAAEBC8();
  v16 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_2_5(v16);

  v17 = OUTLINED_FUNCTION_7_2();
  v18(v17);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}