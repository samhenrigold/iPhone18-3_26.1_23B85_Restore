void sub_1C7112364()
{
  OUTLINED_FUNCTION_124();
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_15_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v16);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61_1();
  sub_1C7112800(v2);
  if (v1)
  {
LABEL_18:
    OUTLINED_FUNCTION_125();
  }

  else
  {
    v19 = v18;
    v33 = v12;
    v34 = 0;
    v35 = v8;
    v36 = v0;
    v37 = v3;
    sub_1C6FD7FC8(v2, &unk_1EC219230, &unk_1C7563720);
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = *(v19 + 16);
    while (1)
    {
      if (v20 == v22)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217980, &qword_1C756CAD8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C75604F0;
        *(inited + 32) = 1;
        *(inited + 40) = v21;
        *(inited + 48) = 2;
        *(inited + 56) = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988, &unk_1C756CAE0);
        sub_1C708039C();
        sub_1C75504DC();
        v30 = v35;
        sub_1C754DF5C();
        sub_1C7111644();
        (*(v38 + 8))(v30, v37);

        goto LABEL_18;
      }

      if (v20 >= *(v19 + 16))
      {
        break;
      }

      ++v20;
      OUTLINED_FUNCTION_20_25();
      sub_1C71154C8();
      if (v15[16] != 1)
      {
        goto LABEL_11;
      }

      v23 = 0;
      while (v23 != 3)
      {
        v24 = &unk_1F46A7CC8 + v23++;
        if (v24[32] == v15[72])
        {
          goto LABEL_11;
        }
      }

      if (!sub_1C705D108(*(v15 + 10), &unk_1F46A7CF0))
      {
        OUTLINED_FUNCTION_19_23();
        sub_1C7115578();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716D568(0, *(v21 + 16) + 1, 1);
        }

        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v31 = *(v21 + 16);
          v32 = v27 + 1;
          sub_1C716D568(v26 > 1, v27 + 1, 1);
          v28 = v32;
        }

        *(v21 + 16) = v28;
        OUTLINED_FUNCTION_19_23();
        sub_1C7115578();
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_2_46();
        sub_1C7115520(v15, v25);
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C711271C()
{
  sub_1C7110E68();
  type metadata accessor for PromptSuggestionPersistedBundle(0);
  sub_1C708039C();
  sub_1C75504DC();
  sub_1C71155D0();
  v1 = sub_1C754DBAC();
  v3 = v2;

  if (!v0)
  {
    OUTLINED_FUNCTION_52_11();
    return sub_1C6FC1640(v1, v3);
  }

  return result;
}

double sub_1C7112800(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28, &qword_1C756CB00);
  OUTLINED_FUNCTION_76(v5);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v58 - v7;
  v9 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v59 = (v12 - v11);
  v13 = *(v1 + 112);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v14 = v13;
  v60 = PerformanceMeasure.init(name:log:)();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  v17 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_96_0();
    v19 = swift_slowAlloc();
    *v19 = 0;
    OUTLINED_FUNCTION_46_0();
    _os_log_impl(v20, v21, v22, v23, v19, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v25 = sub_1C7113C14(v24);
  if (v2)
  {
    sub_1C6F85170();

    return v3;
  }

  v29 = v26;
  if (!v26)
  {
    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_96_0();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_58_8(v43);
      v42 = "No persistent container found. Returning default values";
      goto LABEL_13;
    }

LABEL_14:

    v44 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v44);
    sub_1C6F85170();

    return 1.0;
  }

  v16 = v28;
  v58[1] = v27;
  v58[2] = v25;
  v58[3] = 0;
  v30 = sub_1C754FEEC();
  sub_1C75511BC();
  v31 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_96_0();
    v33 = swift_slowAlloc();
    v58[0] = a1;
    OUTLINED_FUNCTION_61(v33);
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    a1 = v58[0];
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C6FE126C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

    sub_1C6FD7FC8(v8, &qword_1EC216D28, &qword_1C756CB00);
    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_96_0();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_58_8(v41);
      v42 = "No Search persistent container found. Returning default values";
LABEL_13:
      _os_log_impl(&dword_1C6F5C000, v39, v40, v42, v16, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v3 = *&v16;
  OUTLINED_FUNCTION_18_19();
  v45 = v59;
  sub_1C7115578();
  v46 = *v45;
  swift_bridgeObjectRetain_n();
  v47 = sub_1C754FEEC();
  sub_1C75511BC();
  v48 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_13_3();
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = *(v46 + 16);

    OUTLINED_FUNCTION_46_0();
    _os_log_impl(v51, v52, v53, v54, v50, 0xCu);
    v55 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v55);
  }

  else
  {
  }

  sub_1C710FB00(v29, a1);
  OUTLINED_FUNCTION_0_66();
  sub_1C7115520(v45, v56);

  sub_1C6F85170();

  return v3;
}

uint64_t sub_1C7112C48()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28, &qword_1C756CB00);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  sub_1C7113C14(v5);
  if (!v1)
  {
    if (v6)
    {
      sub_1C6FE126C();

      type metadata accessor for PromptSuggestionPersistedBundle(0);
      v7 = OUTLINED_FUNCTION_56_9();
      if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
      {
        v0 = *v2;
        sub_1C75504FC();
        OUTLINED_FUNCTION_0_66();
        sub_1C7115520(v2, v19);
        return v0;
      }

      sub_1C6FD7FC8(v2, &qword_1EC216D28, &qword_1C756CB00);
    }

    else
    {
      v10 = sub_1C754FEEC();
      sub_1C75511BC();
      v11 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_96_0();
        v13 = swift_slowAlloc();
        *v13 = 0;
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v14, v15, v16, v17, v13, 2u);
        v18 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v18);
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C7112DBC()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_15_3();
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28, &qword_1C756CB00);
  OUTLINED_FUNCTION_76(v4);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  v1[10] = v5;
  OUTLINED_FUNCTION_76(v5);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7112EF4, v0, 0);
}

void sub_1C7112EF4(__n128 a1, uint64_t a2)
{
  v63 = v2;
  sub_1C7113C14(a2);
  if (!v3)
  {
    v18 = sub_1C754FEEC();
    sub_1C755119C();
    v19 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_24;
  }

  v5 = v2[9];
  v4 = v2[10];
  v61 = v3;
  sub_1C6FE126C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    sub_1C6FD7FC8(v2[9], &qword_1EC216D28, &qword_1C756CB00);
    OUTLINED_FUNCTION_20_25();
    sub_1C71154C8();
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();
    v8 = OUTLINED_FUNCTION_72();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v2[5];
    if (v10)
    {
      OUTLINED_FUNCTION_13_3();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v13 = swift_slowAlloc();
      v62[0] = v13;
      *v12 = 136315138;
      v14 = *(v11 + 16);
      v15 = 0xE400000000000000;
      v16 = 1701736270;
      v17 = v13;
      switch(v14)
      {
        case 1:
          v15 = 0xE600000000000000;
          v16 = 0x636961736F4DLL;
          break;
        case 2:
          v15 = 0xE600000000000000;
          v16 = 0x686372616553;
          break;
        case 3:
          v15 = 0xE90000000000006CLL;
          v16 = 0x616369736D696857;
          break;
        case 4:
          v15 = 0xEA00000000006C61;
          v16 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2_46();
      sub_1C7115520(v54, v55);
      v56 = sub_1C6F765A4(v16, v15, v62);

      *(v12 + 4) = v56;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "No persisted suggestion bundle found for source %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v57 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v57);

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_46();
    v46 = v11;
LABEL_18:
    sub_1C7115520(v46, v45);
LABEL_23:

    goto LABEL_24;
  }

  v26 = v2[11];
  v27 = v2[2];
  OUTLINED_FUNCTION_18_19();
  sub_1C7115578();
  v28 = *v26;
  sub_1C75504FC();
  v29 = sub_1C710DF20(v27, v28);
  if (v30)
  {

    sub_1C71154C8();
    sub_1C71154C8();
    v31 = sub_1C754FEEC();
    v32 = sub_1C755119C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v2[11];
    v35 = v2[6];
    v36 = v2[7];
    if (v33)
    {
      v60 = v2[11];
      v37 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v37 = 136315395;
      v39 = *v36;
      v38 = v36[1];
      sub_1C75504FC();
      sub_1C7115520(v36, type metadata accessor for PromptSuggestion);
      v40 = sub_1C6F765A4(v39, v38, v62);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2081;
      v41 = *(v35 + 104);
      v42 = *(v35 + 112);
      sub_1C75504FC();
      sub_1C7115520(v35, type metadata accessor for PromptSuggestion);
      v43 = sub_1C6F765A4(v41, v42, v62);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Suggestion not found in cache: [%s] %{private}s", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v44 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v44);

      OUTLINED_FUNCTION_0_66();
      v46 = v60;
    }

    else
    {

      sub_1C7115520(v35, type metadata accessor for PromptSuggestion);
      sub_1C7115520(v36, type metadata accessor for PromptSuggestion);
      OUTLINED_FUNCTION_0_66();
      v46 = v34;
    }

    goto LABEL_18;
  }

  v47 = v29;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v47 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C70E42C0();
  v28 = v59;
  if ((v47 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if (v47 >= *(v28 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v49 = v2[10];
  v48 = v2[11];
  v50 = v2[8];
  sub_1C7115624(v2[2], v28 + ((*(v2[4] + 80) + 32) & ~*(v2[4] + 80)) + *(v2[4] + 72) * v47);
  v51 = *(v49 + 20);
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  (*(v52 + 16))(v50 + v51, v48 + v51);
  *v50 = v28;
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
  sub_1C709B1F4(v50);
  sub_1C7113F68(0, v61, 4, 1.0);
  OUTLINED_FUNCTION_0_66();
  sub_1C7115520(v48, v53);

LABEL_24:

  OUTLINED_FUNCTION_43();

  v58();
}

void sub_1C7113550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v22 = sub_1C754FEEC();
  sub_1C75511BC();
  v23 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_96_0();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v25);
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v31 = [objc_opt_self() defaultManager];
  sub_1C754DCDC();
  v32 = sub_1C755065C();

  v33 = [v31 fileExistsAtPath_];

  v34 = sub_1C754FEEC();
  LOBYTE(v32) = sub_1C75511BC();

  v35 = os_log_type_enabled(v34, v32);
  if (v33)
  {
    if (v35)
    {
      OUTLINED_FUNCTION_13_3();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v37 = swift_slowAlloc();
      a10 = v37;
      *v36 = 136315138;
      v38 = sub_1C754DCEC();
      v40 = sub_1C6F765A4(v38, v39, &a10);

      *(v36 + 4) = v40;
      OUTLINED_FUNCTION_68_10(&dword_1C6F5C000, v41, v42, "File exists at %s, try getting Data at path");
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C754DD6C();
  }

  else
  {
    if (v35)
    {
      OUTLINED_FUNCTION_13_3();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v44 = swift_slowAlloc();
      a10 = v44;
      *v43 = 136315138;
      v45 = sub_1C754DCEC();
      v47 = sub_1C6F765A4(v45, v46, &a10);

      *(v43 + 4) = v47;
      OUTLINED_FUNCTION_68_10(&dword_1C6F5C000, v48, v49, "No file found at %s");
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  OUTLINED_FUNCTION_125();
}

BOOL sub_1C71137BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C7113550(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31);
  if (v8 >> 60 == 15)
  {
    return 1;
  }

  sub_1C7110EEC();
  sub_1C7115688();
  sub_1C754DB5C();

  v10 = v23 != 4;
  sub_1C75504FC();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  v13 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109632;
    *(v16 + 4) = v23 != 4;
    *(v16 + 8) = 2048;

    *(v16 + 10) = v23;

    *(v16 + 18) = 2048;
    *(v16 + 20) = 4;
    _os_log_impl(&dword_1C6F5C000, v11, v12, "Should reset cache %{BOOL}d, persisted schema version %ld, expected %ld", v16, 0x1Cu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = OUTLINED_FUNCTION_295();
  sub_1C70B5C10(v17, v18);

  return v10;
}

uint64_t sub_1C7113A40@<X0>(uint64_t a1@<X8>, uint64_t x0_0@<X0>)
{
  result = sub_1C7113C14(x0_0);
  if (!v3)
  {
    if (v6)
    {
      sub_1C710FB00(v6, a1);
    }

    else
    {
      sub_1C754DF6C();
      v7 = OUTLINED_FUNCTION_56_9();
      return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1C7113AB4@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28, &qword_1C756CB00);
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_61_1();
  result = sub_1C7113C14(v6);
  if (!v1)
  {
    if (v8)
    {
      sub_1C6FE126C();

      v9 = type metadata accessor for PromptSuggestionPersistedBundle(0);
      v10 = OUTLINED_FUNCTION_56_9();
      if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
      {
        v15 = *(v9 + 20);
        v16 = sub_1C754DF6C();
        OUTLINED_FUNCTION_12();
        (*(v17 + 16))(a1, v2 + v15, v16);
        OUTLINED_FUNCTION_0_66();
        sub_1C7115520(v2, v18);
        v13 = a1;
        v14 = 0;
        v12 = v16;
        return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
      }

      sub_1C6FD7FC8(v2, &qword_1EC216D28, &qword_1C756CB00);
    }

    v12 = sub_1C754DF6C();
    v13 = a1;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  }

  return result;
}

uint64_t sub_1C7113C14(uint64_t a1)
{
  v4 = v1;
  v5 = sub_1C754FEEC();
  sub_1C75511BC();
  v6 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_96_0();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v8);
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C7113550(v14, v15, v16, v17, v18, v19, v20, v21, v49, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  if (!v2)
  {
    v24 = v22;
    v25 = v23;
    v26 = sub_1C754FEEC();
    v3 = sub_1C75511BC();
    v27 = OUTLINED_FUNCTION_72();
    v29 = os_log_type_enabled(v27, v28);
    if (v25 >> 60 == 15)
    {
      if (v29)
      {
        OUTLINED_FUNCTION_96_0();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_58_8(v30);
        OUTLINED_FUNCTION_63_10();
        _os_log_impl(v31, v32, v33, v34, v4, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      OUTLINED_FUNCTION_55_10();
    }

    else
    {
      if (v29)
      {
        OUTLINED_FUNCTION_96_0();
        v35 = swift_slowAlloc();
        *v35 = 0;
        OUTLINED_FUNCTION_63_10();
        _os_log_impl(v36, v37, v38, v39, v35, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C7110EEC();
      sub_1C7115688();
      sub_1C754DB5C();

      v3 = v50;
      v40 = sub_1C754FEEC();
      sub_1C75511BC();
      v41 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v41, v42))
      {
        OUTLINED_FUNCTION_96_0();
        v43 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v43);
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v44, v45, v46, v47, v24, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C70B5C10(v24, v25);
    }
  }

  return v3;
}

void sub_1C7113F68(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C7110E68();
  sub_1C71155D0();
  v5 = sub_1C754DBAC();
  v7 = v6;

  if (!v4)
  {
    OUTLINED_FUNCTION_52_11();
    sub_1C6FC1640(v5, v7);
  }
}

void sub_1C7114030(uint64_t *a1)
{
  sub_1C7110E68();
  sub_1C71156DC();
  v2 = sub_1C754DBAC();
  v4 = v3;

  if (!v1)
  {
    v5 = sub_1C754FEEC();
    sub_1C75511BC();
    v6 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_96_0();
      v8 = swift_slowAlloc();
      *v8 = 0;
      OUTLINED_FUNCTION_63_10();
      _os_log_impl(v9, v10, v11, v12, v8, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v13, v14);
    }

    sub_1C754DE1C();
    sub_1C6FC1640(v2, v4);
  }
}

double sub_1C7114154@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 112);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v4 = v3;
  PerformanceMeasure.init(name:log:)();
  sub_1C711435C(v14);
  v5 = v14[0];
  v6 = v14[1];
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  v9 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_96_0();
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Successfully loaded analytics", v11, 2u);
    v12 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v12);
  }

  *a1 = v5;
  a1[1] = v6;
  sub_1C6F85170();

  return result;
}

void sub_1C711435C(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  v7 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_96_0();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Start readAnalyticsFromDisk", v9, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v10 = [objc_opt_self() defaultManager];
  sub_1C754DCDC();
  v11 = sub_1C755065C();

  v12 = [v10 fileExistsAtPath_];

  v13 = sub_1C754FEEC();
  if (v12)
  {
    v14 = sub_1C75511BC();

    v53 = a2;
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_13_3();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v51 = swift_slowAlloc();
      v52[0] = v51;
      *v15 = 136315138;
      v16 = sub_1C754DCDC();
      v18 = sub_1C6F765A4(v16, v17, v52);

      *(v15 + 4) = v18;
      v3 = v2;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Analytics file exists at %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v19 = sub_1C754DD6C();
    if (!v3)
    {
      v21 = v19;
      v22 = v20;

      v23 = sub_1C754FEEC();
      v24 = sub_1C75511BC();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_13_3();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v50 = swift_slowAlloc();
        v52[0] = v50;
        *v25 = 136315138;
        v26 = sub_1C754DCDC();
        v28 = v22;
        v29 = sub_1C6F765A4(v26, v27, v52);

        *(v25 + 4) = v29;
        v22 = v28;
        _os_log_impl(&dword_1C6F5C000, v23, v24, "Finished reading Data at %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v30 = v53;
      sub_1C7110EEC();
      sub_1C7116E40();
      sub_1C754DB5C();
      v38 = v21;
      v39 = v22;

      v40 = v52[0];
      v41 = v52[1];
      v42 = sub_1C754FEEC();
      sub_1C75511BC();
      v43 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_96_0();
        v45 = swift_slowAlloc();
        *v45 = 0;
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v46, v47, v48, v49, v45, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6FC1640(v38, v39);

      *v30 = v40;
      v30[1] = v41;
    }
  }

  else
  {
    v31 = sub_1C755119C();

    if (os_log_type_enabled(v13, v31))
    {
      OUTLINED_FUNCTION_13_3();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v33 = swift_slowAlloc();
      v52[0] = v33;
      *v32 = 136315138;
      v34 = sub_1C754DCEC();
      v36 = sub_1C6F765A4(v34, v35, v52);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1C6F5C000, v13, v31, "Failed to load analytics. File not found at %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v37 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v37);
    }

    sub_1C7116DEC();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t PromptSuggestionCache.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_cacheFileURL;
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_analyticsFileURL, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PromptSuggestionCache.__deallocating_deinit()
{
  PromptSuggestionCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7114974(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7114994, v3, 0);
}

uint64_t sub_1C7114994()
{
  OUTLINED_FUNCTION_49_0();
  v1.n128_f64[0] = sub_1C7112800(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C7114A38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7114A58, v3, 0);
}

uint64_t sub_1C7114A58()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C7112C48();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C7114AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;

  return sub_1C7112DBC();
}

uint64_t sub_1C7114B68(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1C7114B8C, v4, 0);
}

uint64_t sub_1C7114B8C()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C7111490();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7114C04(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7114C24, v3, 0);
}

uint64_t sub_1C7114C24()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C7113A40(*(v0 + 16), v1);
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C7114C98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return sub_1C7111A24();
}

unint64_t sub_1C7114D58()
{
  result = qword_1EDD0D468;
  if (!qword_1EDD0D468)
  {
    result = swift_getWitnessTable("uВ'h!\b", &type metadata for PromptSuggestionAnalyticsPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D468);
  }

  return result;
}

unint64_t sub_1C7114DAC()
{
  result = qword_1EDD07898;
  if (!qword_1EDD07898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionAnalyticsPayload.SourcePayloadContainer, &type metadata for PromptSuggestionAnalyticsPayload.SourcePayloadContainer, v0, v1);
    atomic_store(result, &qword_1EDD07898);
  }

  return result;
}

unint64_t sub_1C7114E00()
{
  result = qword_1EDD078A8[0];
  if (!qword_1EDD078A8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionAnalyticsPayload.CommonPayload, &type metadata for PromptSuggestionAnalyticsPayload.CommonPayload, v0, v1);
    atomic_store(result, qword_1EDD078A8);
  }

  return result;
}

unint64_t sub_1C7114E54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217970, &qword_1C756CAB0);
    v8 = v6();
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7114EC8()
{
  result = qword_1EDD07890;
  if (!qword_1EDD07890)
  {
    result = swift_getWitnessTable("qĒ'", &type metadata for PromptSuggestionAnalyticsPayload.SourcePayloadContainer, v0, v1);
    atomic_store(result, &qword_1EDD07890);
  }

  return result;
}

unint64_t sub_1C7114F1C()
{
  result = qword_1EDD078A0;
  if (!qword_1EDD078A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionAnalyticsPayload.CommonPayload, &type metadata for PromptSuggestionAnalyticsPayload.CommonPayload, v0, v1);
    atomic_store(result, &qword_1EDD078A0);
  }

  return result;
}

uint64_t sub_1C7114FD0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1C75504FC();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C7115020(uint64_t result, int a2, void x2_0, uint64_t a3)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    type metadata accessor for PromptSuggestion(0);
    return sub_1C71154C8();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C71150D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 16 * result);
    sub_1C75504FC();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C711514C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  sub_1C6F78034(v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v36 = v43[5];
  v37 = v43[0];
  v9 = (v43[2] + 64) >> 6;
  sub_1C75504FC();

  v35 = v6;
  if (v8)
  {
    while (1)
    {
      v38 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v37 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v37 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;
      sub_1C75504FC();
      v16 = v15;
      v36(&v39, v42);

      v17 = v39;
      v18 = v40;
      v19 = v41;
      v20 = *v44;
      v21 = sub_1C6F78124(v39, v40);
      OUTLINED_FUNCTION_13_2();
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v22;
      if (v20[3] >= v23 + v24)
      {
        if ((v38 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354B70();
        v26 = sub_1C6F78124(v17, v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v44;
      if (v25)
      {

        v29 = v28[7];
        v30 = *(v29 + 8 * v21);
        *(v29 + 8 * v21) = v19;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v28[v21 >> 6]);
        v31 = (v28[6] + 16 * v21);
        *v31 = v17;
        v31[1] = v18;
        *(v28[7] + 8 * v21) = v19;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v35;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88(v37);

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v38 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C7551E4C();
  __break(1u);
}

id sub_1C71153E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  v5 = [a3 directoryExistsAtPath_];

  return v5;
}

uint64_t sub_1C7115464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71154C8()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7115520(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7115578()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C71155D0()
{
  result = qword_1EDD08F88[0];
  if (!qword_1EDD08F88[0])
  {
    result = swift_getWitnessTable(asc_1C756D11C, &type metadata for PromptSuggestionsContainer, v0, v1);
    atomic_store(result, qword_1EDD08F88);
  }

  return result;
}

uint64_t sub_1C7115624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7115688()
{
  result = qword_1EDD0D8F0;
  if (!qword_1EDD0D8F0)
  {
    result = swift_getWitnessTable(byte_1C756D0F4, &type metadata for PromptSuggestionsContainer, v0, v1);
    atomic_store(result, &qword_1EDD0D8F0);
  }

  return result;
}

unint64_t sub_1C71156DC()
{
  result = qword_1EDD07888;
  if (!qword_1EDD07888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionAnalyticsPayload, &type metadata for PromptSuggestionAnalyticsPayload, v0, v1);
    atomic_store(result, &qword_1EDD07888);
  }

  return result;
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.readSuggestionsWithMetadata()()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t sub_1C7115830()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_47();
  v7 = *v0;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  v9 = *(v7 + 8);
  v10.n128_u64[0] = v4;

  return v9(v6, v2, v10);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.read(source:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_0(v5);

  return v9(v7);
}

uint64_t sub_1C7115A34()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.update(suggestion:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_0(v5);

  return v9(v7);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.updateAll(source:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_3();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41_1(v9);
  *v10 = v11;
  v10[1] = sub_1C6F739D4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.lastUpdateDate()()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.updateWithMetadata(suggestionsGroupedBySource:processingCode:lastUpdateDate:embeddingDistanceThresholdForRanking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  OUTLINED_FUNCTION_15_3();
  v18 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_41_1(v13);
  *v14 = v15;
  v14[1] = sub_1C6F739D4;
  v16.n128_f64[0] = a6;

  return v18(a1, a2, a3, a4, a5, v16);
}

uint64_t sub_1C7115FC8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = sub_1C754DD2C();
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

uint64_t dispatch thunk of PromptSuggestionCache.updateWithMetadata(suggestionsGroupedBySource:processingCode:lastUpdateDate:embeddingDistanceThresholdForRanking:)(double a1)
{
  OUTLINED_FUNCTION_69_3();
  v9 = (*(v2 + 208) + **(v2 + 208));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);
  v7.n128_f64[0] = a1;

  return v9(v6, v7);
}

uint64_t dispatch thunk of PromptSuggestionCache.update(suggestion:)()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0;
  OUTLINED_FUNCTION_69_3();
  v7 = (*(v2 + 248) + **(v2 + 248));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v4[1] = sub_1C6F739D4;

  return v7(v1);
}

void sub_1C71165F8(uint64_t a1)
{
  sub_1C711667C(319);
  if (v1 <= 0x3F)
  {
    sub_1C754DF6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C711667C(uint64_t a1)
{
  if (!qword_1EDD0D038)
  {
    type metadata accessor for PromptSuggestion(255);
    v1 = sub_1C7550C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD0D038);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionAnalyticsPayload.SourcePayloadContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71167D4()
{
  result = qword_1EC217990;
  if (!qword_1EC217990)
  {
    result = swift_getWitnessTable(asc_1C756CF0C, &type metadata for PromptSuggestionAnalyticsPayload.SourcePayloadContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217990);
  }

  return result;
}

unint64_t sub_1C711682C()
{
  result = qword_1EC217998;
  if (!qword_1EC217998)
  {
    result = swift_getWitnessTable(byte_1C756CFC4, &type metadata for PromptSuggestionAnalyticsPayload.CommonPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC217998);
  }

  return result;
}

unint64_t sub_1C7116884()
{
  result = qword_1EC2179A0;
  if (!qword_1EC2179A0)
  {
    result = swift_getWitnessTable(asc_1C756D07C, &type metadata for PromptSuggestionAnalyticsPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2179A0);
  }

  return result;
}

unint64_t sub_1C71168DC()
{
  result = qword_1EDD0D458;
  if (!qword_1EDD0D458)
  {
    result = swift_getWitnessTable(byte_1C756CFEC, &type metadata for PromptSuggestionAnalyticsPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D458);
  }

  return result;
}

unint64_t sub_1C7116934()
{
  result = qword_1EDD0D460;
  if (!qword_1EDD0D460)
  {
    result = swift_getWitnessTable(byte_1C756D014, &type metadata for PromptSuggestionAnalyticsPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D460);
  }

  return result;
}

unint64_t sub_1C711698C()
{
  result = qword_1EDD0D488;
  if (!qword_1EDD0D488)
  {
    result = swift_getWitnessTable(byte_1C756CF34, &type metadata for PromptSuggestionAnalyticsPayload.CommonPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D488);
  }

  return result;
}

unint64_t sub_1C71169E4()
{
  result = qword_1EDD0D490;
  if (!qword_1EDD0D490)
  {
    result = swift_getWitnessTable(byte_1C756CF5C, &type metadata for PromptSuggestionAnalyticsPayload.CommonPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D490);
  }

  return result;
}

unint64_t sub_1C7116A3C()
{
  result = qword_1EDD0D470;
  if (!qword_1EDD0D470)
  {
    result = swift_getWitnessTable("u̒'x$\b", &type metadata for PromptSuggestionAnalyticsPayload.SourcePayloadContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D470);
  }

  return result;
}

unint64_t sub_1C7116A94()
{
  result = qword_1EDD0D478;
  if (!qword_1EDD0D478)
  {
    result = swift_getWitnessTable(byte_1C756CEA4, &type metadata for PromptSuggestionAnalyticsPayload.SourcePayloadContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D478);
  }

  return result;
}

unint64_t sub_1C7116AE8()
{
  result = qword_1EDD0D908[0];
  if (!qword_1EDD0D908[0])
  {
    result = swift_getWitnessTable(byte_1C756D4F8, &type metadata for PromptSuggestionsContainer.CodingKeys, v0, v1);
    atomic_store(result, qword_1EDD0D908);
  }

  return result;
}

unint64_t sub_1C7116B3C()
{
  result = qword_1EDD06C88;
  if (!qword_1EDD06C88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2179B0, &qword_1C756D240);
    v4[0] = sub_1C710EB44();
    v4[1] = sub_1C7116CB4(&unk_1EDD07BF0);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EDD06C88);
  }

  return result;
}

unint64_t sub_1C7116BF8()
{
  result = qword_1EDD0D098;
  if (!qword_1EDD0D098)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2179B0, &qword_1C756D240);
    v4[0] = sub_1C710EDA8();
    v4[1] = sub_1C7116CB4(&unk_1EDD0D5D0);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v3, v4);
    atomic_store(result, &qword_1EDD0D098);
  }

  return result;
}

unint64_t sub_1C7116CB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7116CF8()
{
  result = qword_1EDD0D5E8[0];
  if (!qword_1EDD0D5E8[0])
  {
    result = swift_getWitnessTable(byte_1C756D4A8, &type metadata for PromptSuggestionPersistedBundle.CodingKeys, v0, v1);
    atomic_store(result, qword_1EDD0D5E8);
  }

  return result;
}

unint64_t sub_1C7116D4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217988, &unk_1C756CAE0);
    v8 = sub_1C7116CB4(v6);
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7116DEC()
{
  result = qword_1EDD07CE0;
  if (!qword_1EDD07CE0)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for PromptSuggestionAnalyticsError, v0, v1);
    atomic_store(result, &qword_1EDD07CE0);
  }

  return result;
}

unint64_t sub_1C7116E40()
{
  result = qword_1EDD07880;
  if (!qword_1EDD07880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionAnalyticsPayload, &type metadata for PromptSuggestionAnalyticsPayload, v0, v1);
    atomic_store(result, &qword_1EDD07880);
  }

  return result;
}

_BYTE *sub_1C7116E94(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C7116F40(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PromptSuggestionsContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71170FC()
{
  result = qword_1EC2179D8;
  if (!qword_1EC2179D8)
  {
    result = swift_getWitnessTable(asc_1C756D320, &type metadata for PromptSuggestionsContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2179D8);
  }

  return result;
}

unint64_t sub_1C7117154()
{
  result = qword_1EC2179E0;
  if (!qword_1EC2179E0)
  {
    result = swift_getWitnessTable(aQ_4, &type metadata for PromptSuggestionPersistedBundle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2179E0);
  }

  return result;
}

unint64_t sub_1C71171AC()
{
  result = qword_1EC2179E8;
  if (!qword_1EC2179E8)
  {
    result = swift_getWitnessTable(asc_1C756D440, &type metadata for PromptSuggestionAnalyticsError, v0, v1);
    atomic_store(result, &qword_1EC2179E8);
  }

  return result;
}

unint64_t sub_1C7117204()
{
  result = qword_1EDD0D5D8;
  if (!qword_1EDD0D5D8)
  {
    result = swift_getWitnessTable(byte_1C756D348, &type metadata for PromptSuggestionPersistedBundle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D5D8);
  }

  return result;
}

unint64_t sub_1C711725C()
{
  result = qword_1EDD0D5E0;
  if (!qword_1EDD0D5E0)
  {
    result = swift_getWitnessTable(byte_1C756D370, &type metadata for PromptSuggestionPersistedBundle.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D5E0);
  }

  return result;
}

unint64_t sub_1C71172B4()
{
  result = qword_1EDD0D8F8;
  if (!qword_1EDD0D8F8)
  {
    result = swift_getWitnessTable(aAr, &type metadata for PromptSuggestionsContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D8F8);
  }

  return result;
}

unint64_t sub_1C711730C()
{
  result = qword_1EDD0D900;
  if (!qword_1EDD0D900)
  {
    result = swift_getWitnessTable(aYe, &type metadata for PromptSuggestionsContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D900);
  }

  return result;
}

double OUTLINED_FUNCTION_50_11@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_68_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C7117424(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v32 = v2;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C716E46C(0, v4, 0);
    v6 = v44;
    result = sub_1C719D92C();
    v10 = result;
    v11 = 0;
    v40 = v5 + 56;
    v36 = v5;
    v37 = a2 + 32;
    v33 = v5 + 64;
    v34 = a2;
    v35 = v4;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v5 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v40 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_29;
        }

        v13 = *(*(v5 + 48) + 8 * v10);
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v13 >= *(a2 + 16))
        {
          goto LABEL_31;
        }

        v39 = v9;
        v38 = v8;
        sub_1C6FB5E28(v37 + 40 * v13, v41);
        v44 = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C716E46C(v14 > 1, v15 + 1, 1);
        }

        v17 = v42;
        v16 = v43;
        v18 = __swift_mutable_project_boxed_opaque_existential_0(v41, v42);
        v19 = MEMORY[0x1EEE9AC00](v18);
        v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v21, v19);
        sub_1C71FCD88(v15, v21, &v44, v17, v16);
        result = __swift_destroy_boxed_opaque_existential_1(v41);
        if (v39)
        {
          goto LABEL_35;
        }

        v23 = v35;
        v5 = v36;
        v24 = 1 << *(v36 + 32);
        if (v10 >= v24)
        {
          goto LABEL_32;
        }

        v25 = *(v40 + 8 * v12);
        if ((v25 & (1 << v10)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v36 + 36) != v38)
        {
          goto LABEL_34;
        }

        v6 = v44;
        v26 = v25 & (-2 << (v10 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = v12 << 6;
          v28 = v12 + 1;
          v29 = (v33 + 8 * v12);
          while (v28 < (v24 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              result = sub_1C6F9ED50(v10, v38, 0);
              v24 = __clz(__rbit64(v30)) + v27;
              goto LABEL_21;
            }
          }

          result = sub_1C6F9ED50(v10, v38, 0);
        }

LABEL_21:
        ++v11;
        a2 = v34;
        if (v11 == v23)
        {

          return v6;
        }

        v9 = 0;
        v8 = *(v5 + 36);
        v10 = v24;
        if (v24 < 0)
        {
          break;
        }
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
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t TraitGenerator.Configuration.globalTraitGeneratorConfiguration.getter()
{
  memcpy(__dst, v0, 0x59uLL);
  v1 = OUTLINED_FUNCTION_90();
  memcpy(v1, v2, 0x59uLL);
  return sub_1C7117834(__dst, &v4);
}

void *TraitGenerator.Configuration.globalTraitGeneratorConfiguration.setter()
{
  memcpy(v4, v0, 0x59uLL);
  sub_1C71178DC(v4);
  v1 = OUTLINED_FUNCTION_66_2();
  return memcpy(v1, v2, 0x59uLL);
}

double TraitGenerator.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C754E15C();
  OUTLINED_FUNCTION_29();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = objc_opt_self();
  v12 = [v11 numberOfGlobalTraits];
  v13 = [v12 integerValue];

  v18 = [v11 useGlobalTraitsV3];
  sub_1C754E0AC();
  sub_1C754E04C();
  OUTLINED_FUNCTION_144();
  v14 = *(v4 + 8);
  v14(v7, v2);
  OUTLINED_FUNCTION_323();
  sub_1C754E03C();
  sub_1C719647C(v10);
  v15 = OUTLINED_FUNCTION_51();
  v14(v15, v2);
  *a1 = v13;
  *(a1 + 8) = xmmword_1C756D550;
  *(a1 + 24) = 0x3F847AE147AE147BLL;
  *(a1 + 32) = v7;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1C756D560;
  *(a1 + 64) = 500;
  *(a1 + 72) = sub_1C7196254;
  *(a1 + 80) = 0;
  *(a1 + 88) = v18;
  *(a1 + 96) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(a1 + 112) = xmmword_1C756D570;
  *(a1 + 128) = xmmword_1C756D580;
  *(a1 + 144) = [v11 maximumNumberOfConsolidatedTraits];
  result = 1.45;
  *(a1 + 152) = xmmword_1C756D590;
  return result;
}

uint64_t sub_1C7117C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a5[3];
  v12 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_0(a5, v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = a7[3];
  v20 = a7[4];
  __swift_mutable_project_boxed_opaque_existential_0(a7, v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v26 = a8(a1, a2, a3, a4, v17, a6, v24, v31, v13, v19, v12, v20);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v26;
}

uint64_t sub_1C7117E3C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 4200) = v0;
  *(v1 + 4152) = v30;
  *(v1 + 4104) = v29;
  *(v1 + 4056) = v28;
  *(v1 + 4008) = v27;
  *(v1 + 3960) = v8;
  *(v1 + 3912) = v9;
  *(v1 + 3864) = v10;
  *(v1 + 3816) = v11;
  *(v1 + 3768) = v12;
  v13 = type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 4248) = v14;
  *(v1 + 4296) = OUTLINED_FUNCTION_77();
  v15 = type metadata accessor for GlobalTrait(0);
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 4344) = v16;
  *(v1 + 4392) = OUTLINED_FUNCTION_77();
  v17 = sub_1C754F2FC();
  *(v1 + 4440) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 4488) = v18;
  *(v1 + 4536) = OUTLINED_FUNCTION_81_0();
  *(v1 + 4584) = swift_task_alloc();
  *(v1 + 4632) = swift_task_alloc();
  *(v1 + 4680) = swift_task_alloc();
  *(v1 + 4728) = swift_task_alloc();
  *(v1 + 4736) = swift_task_alloc();
  v19 = sub_1C754F38C();
  *(v1 + 4744) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v1 + 4752) = v20;
  *(v1 + 4760) = OUTLINED_FUNCTION_77();
  memcpy((v1 + 3112), v7, 0x50uLL);
  v21 = v5[1];
  *(v1 + 4768) = *v5;
  *(v1 + 4784) = v21;
  *(v1 + 4800) = *v3;
  *(v1 + 3714) = *(v3 + 8);
  *(v1 + 3715) = *(v3 + 9);
  v22 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C7118070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v65 = v10;
  v11 = *(v10 + 3715);
  OUTLINED_FUNCTION_141_1(*(v10 + 4056), *(*(v10 + 4056) + 24));
  sub_1C754F1CC();
  if (v11 == 1)
  {
    v12 = sub_1C754FEEC();
    sub_1C75511BC();
    v13 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v15);
      OUTLINED_FUNCTION_127_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v21 = *(v10 + 4760);
    v22 = *(v10 + 4752);
    v23 = *(v10 + 4744);
    v24 = *(v10 + 4488);
    v62 = *(v10 + 4440);
    v25 = *(v10 + 4104);
    v26 = *(v10 + 3768);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
    v27 = swift_allocObject();
    *(v27 + 24) = 0;
    *(v27 + 16) = MEMORY[0x1E69E7CC8];
    v28 = MEMORY[0x1E69E7CD0];
    *v26 = MEMORY[0x1E69E7CD0];
    v26[1] = v28;
    v26[2] = v28;
    v26[3] = v27;
    v29 = OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_18_0(v29, v30);
    sub_1C754F1AC();
    (*(v22 + 8))(v21, v23);
    (*(v24 + 8))(v25, v62);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_110_3();

    return v31();
  }

  else
  {
    sub_1C754F2CC();
    v34 = *(v10 + 4056);
    v60 = *(v10 + 4008);
    v59 = *(v10 + 3912);
    v57 = *(v10 + 4784);
    v58 = *(v10 + 4768);
    v35 = OUTLINED_FUNCTION_121();
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_1C754F15C();
    OUTLINED_FUNCTION_24_6(v34);
    sub_1C754F17C();
    sub_1C754F2BC();
    sub_1C754F2BC();
    sub_1C754F2BC();
    v37 = [objc_allocWithZone(PNTextEmbeddingService) init];
    *(v10 + 4808) = v37;
    v38 = swift_allocObject();
    *(v10 + 4816) = v38;
    *(v38 + 16) = v37;
    v39 = v37;
    swift_asyncLet_begin();
    sub_1C6FB5E28(v10 + 3432, v10 + 3352);
    v40 = swift_allocObject();
    *(v10 + 4824) = v40;
    sub_1C6F699F8((v10 + 3352), v40 + 16);
    swift_asyncLet_begin();
    v64[0] = v58;
    v64[1] = v57;
    sub_1C711EE04(v59, v64, v60);
    *(v10 + 4832) = v41;
    *(v10 + 4840) = 0;
    v42 = *(v10 + 3714);
    v43 = *(v10 + 4800);
    v44 = *(v43 + 16);
    *(v10 + 4848) = v44;
    v61 = *(v10 + 4784);
    v63 = *(v10 + 4768);
    *(v10 + 3716) = sub_1C711BCA0(v41, v44 != 0) & 1;
    OUTLINED_FUNCTION_161_2((v10 + 3032));
    *(v10 + 3544) = v63;
    *(v10 + 3560) = v61;
    *(v10 + 3704) = v43;
    *(v10 + 3712) = v42;
    *(v10 + 3713) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v10 + 4856) = v45;
    *v45 = v46;
    v45[1] = sub_1C71186F0;
    v47 = *(v10 + 4152);
    v66 = v10 + 3272;
    v67 = v47;
    OUTLINED_FUNCTION_110_3();

    return sub_1C711BE54(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
  }
}

uint64_t sub_1C71186F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 4864) = v0;

  if (v0)
  {
    v7 = sub_1C711A490;
  }

  else
  {
    v7 = sub_1C71187FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C71187FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  v11 = *(v10 + 4488);
  v12 = *(v10 + 3512);
  *(v10 + 4872) = v12;
  v13 = *(v10 + 3520);
  *(v10 + 4880) = v13;
  v14 = *(v10 + 3528);
  *(v10 + 4888) = v14;
  v15 = *(v10 + 3536);
  *(v10 + 4896) = v15;
  OUTLINED_FUNCTION_161_2((v10 + 2872));
  v16 = *(v10 + 4784);
  *(v10 + 3608) = *(v10 + 4768);
  *(v10 + 3624) = v16;
  *(v10 + 3576) = v12;
  *(v10 + 3584) = v13;
  *(v10 + 3592) = v14;
  *(v10 + 3600) = v15;
  *(v10 + 4904) = *(v11 + 32);
  *(v10 + 4912) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17 = OUTLINED_FUNCTION_0_11();
  v18(v17);
  v19 = swift_task_alloc();
  *(v10 + 4920) = v19;
  *v19 = v10;
  v19[1] = sub_1C711894C;
  OUTLINED_FUNCTION_61_3(*(v10 + 3816));
  OUTLINED_FUNCTION_44();

  return sub_1C711D710(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1C711894C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[616] = v3;
  v5[617] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C711A634, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[618] = v9;
    *v9 = v7;
    v9[1] = sub_1C7118AC0;

    return sub_1C7124E14();
  }
}

uint64_t sub_1C7118AC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 4952) = v5;
  *(v3 + 4960) = v0;

  if (v0)
  {

    v6 = sub_1C711A7E0;
  }

  else
  {
    v6 = sub_1C7118BD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C7118BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v137 = v8;
  v9 = *(v8 + 4960);
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v134, *(v8 + 4008), v8 + 3272, a4, a5, a6, a7, a8, v111, v113, v116, v119, v122, v124, v128, v131, *(v8 + 4768), *(v8 + 4776), *(v8 + 4784), *(v8 + 4792));
  *(v8 + 4968) = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_71_5();

    v11 = OUTLINED_FUNCTION_15_28();

    return MEMORY[0x1EEE6DEB0](v11, v12, v13, v8 + 3392);
  }

  v14 = MEMORY[0x1E69E7CD0];
  v15 = &unk_1C755C000;
  v132 = v10;
  if (*(v8 + 3716) == 1)
  {
    if (*(*(v8 + 4200) + 56) == 1)
    {
      v16 = *(v8 + 4008);
      sub_1C75504FC();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1C711F208(*(v8 + 4928));
    sub_1C706D154();
    StoryAsset.Manager.collection(with:filter:eventRecorder:)(v32, v16, v8 + 3272, &v134);
    *(v8 + 4976) = 0;
    v71 = *(v8 + 4008);

    v72 = *(&v134 + 1);
    v27 = v134;
    v17 = v136;
    v29 = v135;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v134, v71, v8 + 3272, v73, v74, v75, v76, v77, v112, v114, v117, v120, v8 + 3720, v125, v129, v132, v134, *(&v134 + 1), v135, v136);
    *(v8 + 4984) = 0;
    v28 = v72;
    v79 = v78;

    v130 = v79;
    *(v8 + 3720) = v79;
    v18 = sub_1C754FEEC();
    sub_1C75511BC();
    v80 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v80, v81))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_3();
    v82 = swift_slowAlloc();
    *v82 = 134217984;
    *(v82 + 4) = *(v79 + 16);
    OUTLINED_FUNCTION_127_0();
    _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
LABEL_10:
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_11:
    v30 = v132;
    v31 = v29;
    v14 = v28;
    v15 = &unk_1C755C000;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0, &qword_1C756D5F0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = MEMORY[0x1E69E7CC8];
  v123 = v8 + 3720;
  *(v8 + 3720) = v14;
  v18 = sub_1C754FEEC();
  sub_1C75511BC();
  v19 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v21);
    OUTLINED_FUNCTION_127_0();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    v27 = MEMORY[0x1E69E7CD0];
    v28 = MEMORY[0x1E69E7CD0];
    v29 = MEMORY[0x1E69E7CD0];
    v130 = MEMORY[0x1E69E7CD0];
    goto LABEL_10;
  }

  v27 = v14;
  v31 = v14;
  v130 = v14;
  v30 = v132;
LABEL_15:
  *(v8 + 5016) = v17;
  *(v8 + 5008) = v31;
  *(v8 + 5000) = v14;
  *(v8 + 4992) = v27;
  v33 = *(v8 + 4848);

  if (v33 || *(v30 + 16) || *(v130 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_141_4();
    swift_retain_n();
    v34 = sub_1C754FEEC();
    sub_1C75511BC();
    v35 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v8 + 4848);
      v126 = v14;
      v38 = v31;
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v40 = swift_slowAlloc();
      *&v134 = v40;
      *v39 = 136315906;
      if (v37)
      {
        v41 = 6648417;
      }

      else
      {
        v41 = 0x746F6E20657261;
      }

      if (v37)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      v43 = sub_1C6F765A4(v41, v42, &v134);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      v44 = *(v132 + 16);

      *(v39 + 14) = v44;

      *(v39 + 22) = 2048;
      v45 = v130;
      *(v39 + 24) = *(v130 + 16);
      *(v39 + 32) = 2048;
      v46 = *(v27 + 16);

      *(v39 + 34) = v46;

      OUTLINED_FUNCTION_127_0();
      _os_log_impl(v47, v48, v49, v50, v51, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v30 = v132;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v31 = v38;
      v14 = v126;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_141_4();

      swift_bridgeObjectRelease_n();

      v45 = v130;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
  }

  else
  {
    v127 = v14;
    v115 = v31;
    v88 = *(v8 + 4008);
    OUTLINED_FUNCTION_161_2(&v134);
    sub_1C7027A20(v8 + 3112, v8 + 2952);
    sub_1C701104C();
    if (v89)
    {
      v90 = v89;
    }

    else
    {
      v90 = MEMORY[0x1E69E7CD0];
    }

    StoryAsset.Manager.collection(with:)(v90, &v134);

    v91 = v134;
    v92 = v135;
    StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v134, v88, v8 + 3272, v93, v94, v95, v96, v97, v112, v115, v136, v120, v123, v127, v130, v132, v134, *(&v134 + 1), v135, v136);
    *(v8 + 5024) = 0;
    v121 = v92;
    v99 = v98;
    swift_beginAccess();
    *(v8 + 3720) = v99;

    v100 = sub_1C754FEEC();
    sub_1C75511BC();
    v101 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v101, v102))
    {
      OUTLINED_FUNCTION_13_3();
      v103 = swift_slowAlloc();
      *v103 = v15[397];
      *(v103 + 4) = *(v99 + 16);
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
      v109 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v109);
    }

    v14 = v91 >> 64;
    v27 = v91;
    v17 = v118;
    v31 = v121;
    v45 = v99;
    v30 = v133;
  }

  *(v8 + 5064) = v45;
  *(v8 + 5056) = v17;
  *(v8 + 5048) = v31;
  *(v8 + 5040) = v14;
  *(v8 + 5032) = v27;
  v52 = *(v45 + 16);
  v53 = sub_1C754FEEC();
  sub_1C75511BC();
  v54 = OUTLINED_FUNCTION_72();
  v56 = os_log_type_enabled(v54, v55);
  if (v52)
  {
    if (v56)
    {
      v57 = OUTLINED_FUNCTION_127();
      *v57 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v58, v59, v60, v61, v57, 2u);
      v62 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v62);
    }

    sub_1C75504FC();
    sub_1C70738FC();
    v30 = v63;
  }

  else
  {
    if (v56)
    {
      v64 = OUTLINED_FUNCTION_127();
      *v64 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v65, v66, v67, v68, v64, 2u);
      v69 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v69);
    }
  }

  *(v8 + 5072) = sub_1C71CD85C(v30);
  OUTLINED_FUNCTION_161_2((v8 + 3192));
  v70 = OUTLINED_FUNCTION_15_28();

  return MEMORY[0x1EEE6DEC0](v70);
}

uint64_t sub_1C7119544()
{
  OUTLINED_FUNCTION_123();
  v1[635] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = v1[613];
    memcpy(v1 + 327, v1 + 199, 0xD8uLL);
    memcpy(v1 + 295, v1 + 199, 0xD8uLL);
    v6 = OUTLINED_FUNCTION_90();
    v5(v6);
    sub_1C70592B4((v1 + 327), (v1 + 263));
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v1[636] = v7;
    *v7 = v8;
    v7[1] = sub_1C71196A4;

    return sub_1C711F330();
  }
}

uint64_t sub_1C71196A4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v2[637] = v6;
  v2[638] = v0;

  if (v0)
  {
    memcpy(v2 + 231, v2 + 295, 0xD8uLL);
    sub_1C7059364((v2 + 231));
  }

  else
  {
    memcpy(v2 + 167, v2 + 295, 0xD8uLL);
    sub_1C7059364((v2 + 167));
  }

  OUTLINED_FUNCTION_107_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C711981C()
{
  OUTLINED_FUNCTION_123();
  __swift_project_boxed_opaque_existential_1((v0[525] + 248), *(v0[525] + 272));
  v4 = (OUTLINED_FUNCTION_99_1() + 72);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  v0[639] = v1;
  *v1 = v0;
  v1[1] = sub_1C7119944;
  v2 = OUTLINED_FUNCTION_61_3(v0[637]);

  return v5(v2);
}

uint64_t sub_1C7119944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 5120) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7119A30()
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v1 = v0[519];
  if (v1)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24);
    v3 = MEMORY[0x1E69E7CC0];
    if (*(v0[616] + 16))
    {
      v56 = v0[519];
      v57 = MEMORY[0x1E69E7CC0];

      v4 = OUTLINED_FUNCTION_106_3();
      sub_1C6F7ED9C(v4, v5, v6, v7, v8, v9, v10);
      v11 = v57;
      OUTLINED_FUNCTION_191();
      do
      {
        v12 = v0[549];
        OUTLINED_FUNCTION_2_47();
        v13 = OUTLINED_FUNCTION_140_4();
        sub_1C712A7D0(v13, v14, v15);
        OUTLINED_FUNCTION_152_1();
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v12, v16);
        OUTLINED_FUNCTION_134_3();
        if (v18)
        {
          OUTLINED_FUNCTION_15(v17);
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C(v20, v21, v22, v23, v24, v25, v26);
          v11 = v57;
        }

        OUTLINED_FUNCTION_111_3();
      }

      while (!v19);
      v3 = MEMORY[0x1E69E7CC0];
      v1 = v56;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v27 = v0[640];
    *(v2 + 16) = v11;

    v28 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    v29 = *(v28 + 24);
    if (*(v27 + 16))
    {
      v55 = *(v28 + 24);

      v30 = OUTLINED_FUNCTION_106_3();
      sub_1C6F7ED9C(v30, v31, v32, v33, v34, v35, v36);
      v37 = v3;
      OUTLINED_FUNCTION_191();
      do
      {
        v38 = v0[537];
        OUTLINED_FUNCTION_9_32();
        v39 = OUTLINED_FUNCTION_140_4();
        sub_1C712A7D0(v39, v40, v41);
        OUTLINED_FUNCTION_152_1();
        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v38, v42);
        OUTLINED_FUNCTION_134_3();
        if (v18)
        {
          OUTLINED_FUNCTION_15(v43);
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C(v44, v45, v46, v47, v48, v49, v50);
          v37 = v3;
        }

        OUTLINED_FUNCTION_111_3();
      }

      while (!v19);
      v29 = v55;
    }

    else
    {

      v37 = MEMORY[0x1E69E7CC0];
    }

    v51 = v0[619];
    *(v29 + 40) = v37;

    *(*(v28 + 24) + 32) = v51;
  }

  OUTLINED_FUNCTION_129();

  return MEMORY[0x1EEE6DEC0](v52);
}

uint64_t sub_1C7119C74()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 5128) = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    (*(v1 + 4904))(*(v1 + 4536), *(v1 + 4680), *(v1 + 4440));
    v5 = swift_task_alloc();
    *(v1 + 5136) = v5;
    *v5 = v1;
    v5[1] = sub_1C7119D84;
    OUTLINED_FUNCTION_61_3(*(v1 + 4928));

    return sub_1C711FB34();
  }
}

uint64_t sub_1C7119D84()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 5144) = v6;
  *(v2 + 5152) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_107_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7119ED4(uint64_t a1)
{
  v2 = *(v1 + 5152);
  if (*(v1 + 4152))
  {

    v3 = OUTLINED_FUNCTION_90();
    static PersonalTraitDiagnosticsGenerator.save(finalGlobalAndPersonalTraits:to:)(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25, v27, v28, v30, v31, v32, v33, v34);
    *(v1 + 5160) = v2;
    if (v2)
    {
      OUTLINED_FUNCTION_126_5();
      v11 = *(v1 + 4872);

      sub_1C7129C34(v11);

      v12 = OUTLINED_FUNCTION_15_28();
      v15 = 4592;
      goto LABEL_10;
    }
  }

  sub_1C754F2EC();
  *(v1 + 5168) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_126_5();

    v16 = OUTLINED_FUNCTION_0_11();
    sub_1C7129C34(v16);

    v12 = OUTLINED_FUNCTION_15_28();
    v15 = 4400;
  }

  else
  {
    if (*(v1 + 4152))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C71618A4(v17);
    }

    v18 = *(v1 + 4872);
    v19 = *(v1 + 3768);
    v26 = *(v1 + 5048);
    v29 = *(v1 + 5032);

    sub_1C7129C34(v18);

    *v19 = v29;
    v19[1] = v26;
    v12 = OUTLINED_FUNCTION_15_28();
    v15 = 4496;
  }

LABEL_10:

  return MEMORY[0x1EEE6DEB0](v12, v13, v14, v1 + v15);
}

uint64_t sub_1C711A204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_54_13();
  v13 = *(v12 + 4056);

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_8_28(v13);
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_44();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C711A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_4_37();
  v17 = v16[591];
  v18 = v16[561];
  v19 = v16[555];
  OUTLINED_FUNCTION_68_11();
  v20 = v16[507];

  OUTLINED_FUNCTION_49_11();
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_323();
  v22(v23);
  (v22)(v17, v19);
  v24 = OUTLINED_FUNCTION_148_0();
  v22(v24);
  OUTLINED_FUNCTION_8_28(v20);
  sub_1C754F1AC();
  v25 = OUTLINED_FUNCTION_26_19();
  v26(v25);
  (v22)(a10, v19);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_4_37();
  v17 = v16[591];
  v18 = v16[561];
  v19 = v16[555];
  OUTLINED_FUNCTION_68_11();
  v20 = v16[507];

  OUTLINED_FUNCTION_49_11();
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_323();
  v22(v23);
  (v22)(v17, v19);
  v24 = OUTLINED_FUNCTION_148_0();
  v22(v24);
  OUTLINED_FUNCTION_8_28(v20);
  sub_1C754F1AC();
  v25 = OUTLINED_FUNCTION_26_19();
  v26(v25);
  (v22)(a10, v19);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711A634()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_71_5();
  v1 = OUTLINED_FUNCTION_15_28();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2320);
}

uint64_t sub_1C711A7E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_71_5();
  v1 = OUTLINED_FUNCTION_15_28();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2832);
}

uint64_t sub_1C711AECC()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B0C4()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_7_31();
  v18 = v16[594];
  v19 = v16[585];
  v20 = v16[561];
  v21 = v16[555];
  OUTLINED_FUNCTION_68_11();

  OUTLINED_FUNCTION_49_11();
  v23 = *(v20 + 8);
  v23(v19, v21);
  v24 = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_18_0(v24, v25);
  sub_1C754F1AC();
  (*(v18 + 8))(v17, a11);
  v23(a10, v21);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711B2DC()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_7_31();
  v18 = v16[594];
  v19 = v16[585];
  v20 = v16[561];
  v21 = v16[555];
  OUTLINED_FUNCTION_68_11();

  OUTLINED_FUNCTION_49_11();
  v23 = *(v20 + 8);
  v23(v19, v21);
  v24 = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_18_0(v24, v25);
  sub_1C754F1AC();
  (*(v18 + 8))(v17, a11);
  v23(a10, v21);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711B4F8()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v32 = *(v15 + 4816);
  v33 = *(v15 + 4824);
  OUTLINED_FUNCTION_54_13();
  OUTLINED_FUNCTION_109_7(v18);
  OUTLINED_FUNCTION_49_11();
  v19 = OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_18_0(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_15_1();
  v22(v21);
  (*(v14 + 8))(v17, v16);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v32 = *(v15 + 4816);
  v33 = *(v15 + 4824);
  OUTLINED_FUNCTION_54_13();
  OUTLINED_FUNCTION_109_7(v18);
  OUTLINED_FUNCTION_49_11();
  v19 = OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_18_0(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_15_1();
  v22(v21);
  (*(v14 + 8))(v17, v16);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_54_13();
  v13 = *(v12 + 4056);

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_8_28(v13);
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C711B988()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C711BA80;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1C72C079C;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  [v1 prewarmWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C711BA80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_1C711BBA8;
  }

  else
  {
    v5 = sub_1C711BB84;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C711BBA8()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C711BC0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C711BC2C, 0, 0);
}

uint64_t sub_1C711BC2C()
{
  OUTLINED_FUNCTION_49_0();
  static PersonalTraitGeneratorConfiguration.fromRemoteConfiguration(eventRecorder:)();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C711BCA0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = sub_1C754FEEC();
    sub_1C75511BC();
    v4 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v4, v5))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (!*(a1 + 16))
  {
    v3 = sub_1C754FEEC();
    sub_1C75511BC();
    v19 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v19, v20))
    {
LABEL_9:
      v21 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v21);
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v22, v23, v24, v25, v2, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

LABEL_10:

    return 0;
  }

  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_3();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136642819;
    v10 = MEMORY[0x1CCA5D090](v2, &type metadata for QueryToken);
    v12 = sub_1C6F765A4(v10, v11, &v26);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v13, v14, v15, v16, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v17 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v17);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return 1;
}

uint64_t sub_1C711BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *(v11 + 496) = a10;
  *(v11 + 504) = v10;
  *(v11 + 480) = v18;
  *(v11 + 488) = a9;
  *(v11 + 145) = v19;
  *(v11 + 464) = v16;
  *(v11 + 472) = v20;
  *(v11 + 448) = v21;
  *(v11 + 456) = v22;
  v23 = sub_1C754F38C();
  *(v11 + 512) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v11 + 520) = v24;
  *(v11 + 528) = OUTLINED_FUNCTION_77();
  memcpy((v11 + 152), v17, 0x50uLL);
  v25 = v15[1];
  *(v11 + 536) = *v15;
  *(v11 + 552) = v25;
  *(v11 + 568) = *v13;
  *(v11 + 146) = *(v13 + 8);
  *(v11 + 147) = *(v13 + 9);
  v26 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v26, v27, v28);
}

unint64_t sub_1C711BF48()
{
  v134 = v0;
  v1 = *(v0 + 145);
  v2 = OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_141_1(v2, v3);
  sub_1C754F1CC();
  if (v1 != 1)
  {
    v9 = sub_1C754FEEC();
    sub_1C75511BC();
    v10 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v10, v11))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  static StoryGenerationUtilities.queryTokenWhatsStrings(from:)();
  v5 = v4;
  *(v0 + 576) = v4;
  if (!*(v4 + 16))
  {

    v9 = sub_1C754FEEC();
    sub_1C755119C();
    v12 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v12, v13))
    {
LABEL_8:
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      v19 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v19);
    }

LABEL_9:
    v20 = *(v0 + 560);
    v21 = *(v0 + 552);
    v22 = *(v0 + 544);
    v23 = *(v0 + 536);
    v24 = *(v0 + 448);

    *v24 = v23;
    v24[1] = v22;
    v24[2] = v21;
    v24[3] = v20;
    v25 = OUTLINED_FUNCTION_121();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    goto LABEL_10;
  }

  v6 = *(v0 + 488);
  memcpy(__dst, *(v0 + 464), sizeof(__dst));
  sub_1C7027A20(v0 + 152, v0 + 232);
  sub_1C701104C();
  v8 = v7;
  *(v0 + 584) = v7;
  OUTLINED_FUNCTION_34_12(v6);
  sub_1C754F15C();
  if (v8)
  {
    *(v0 + 440) = *(v8 + 16);
    sub_1C7551D8C();
  }

  *(v0 + 592) = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  sub_1C75504FC();
  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_11_3();
    v33 = swift_slowAlloc();
    *&__dst[0] = swift_slowAlloc();
    *v33 = 136643075;
    v34 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
    v36 = sub_1C6F765A4(v34, v35, __dst);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = OUTLINED_FUNCTION_154();
    v40 = sub_1C6F765A4(v37, v38, v39);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Starting scoping global traits asset expansion using what query(ies): %{sensitive}s with %s scoping assets", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v41 = *(v5 + 16);
  *(v0 + 600) = v41;
  if (v41)
  {
    *(v0 + 608) = objc_opt_self();
    *(v0 + 616) = objc_opt_self();
    result = sub_1C70DF0F4();
    *(v0 + 624) = result;
    *(v0 + 640) = MEMORY[0x1E69E7CC0];
    *(v0 + 632) = 0;
    v42 = *(v0 + 576);
    if (v42[2])
    {
      v43 = *(v0 + 608);
      *(v0 + 648) = v42[4];
      *(v0 + 656) = v42[5];
      *(v0 + 376) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
      *(v0 + 384) = &off_1F46ACFD0;
      sub_1C75504FC();
      v44 = [v43 currentUnifiedEmbeddingVersion];
      v45 = v44;
      if (v44)
      {
        v46 = [v44 integerValue];
      }

      else
      {
        v46 = 0;
      }

      v54 = *(v0 + 616);
      v55 = *(v0 + 584);
      v56 = *(v0 + 504);
      *(v0 + 352) = 0;
      *(v0 + 360) = v46;
      *(v0 + 368) = v45 == 0;
      v57 = [v54 globalTraitsScopingEmbeddingSearchRetrievalLimit];
      sub_1C6FB5E28(v0 + 352, v0 + 32);
      *(v0 + 16) = 2;
      *(v0 + 24) = 1;
      *(v0 + 88) = 1;
      *(v0 + 96) = v55;
      OUTLINED_FUNCTION_112_3(1, xmmword_1C756A560);
      *(v0 + 72) = v57;
      *(v0 + 80) = 0;
      v58 = v56[29];
      v59 = v56[30];
      __swift_project_boxed_opaque_existential_1(v56 + 26, v58);
      sub_1C75504FC();
      sub_1C75504FC();
      v60 = sub_1C7073450();
      *(v0 + 664) = v60;
      v128 = (*(v59 + 16) + **(v59 + 16));
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 672) = v61;
      *v61 = v62;
      v63 = OUTLINED_FUNCTION_59_8(v61);

      return v128(v63, v60, v0 + 16, v0 + 312, v58, v59);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v47 = *(v0 + 147);
  v48 = *(v0 + 146);
  v49 = *(v0 + 568);
  v125 = *(v0 + 552);
  v127 = *(v0 + 536);

  v124 = *(MEMORY[0x1E69E7CC0] + 16);
  *&__dst[0] = v49;
  BYTE8(__dst[0]) = v48;
  BYTE9(__dst[0]) = v47;
  v50 = MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(MEMORY[0x1E69E7CC0], __dst, (v0 + 312));
  StoryAsset.Manager.collection(with:)(v50, __dst);
  v51 = __dst[0];
  v52 = *(&__dst[1] + 1);
  v132 = __dst[0];
  v133 = __dst[1];
  __dst[0] = v127;
  __dst[1] = v125;
  StoryAsset.Collection.union(with:)(__dst, v131);
  v53 = *(v0 + 584);
  v122 = v52;
  v126 = v50;
  v64 = *(v0 + 480);
  v65 = v131[1];
  v129 = v131[0];
  v67 = v131[2];
  v66 = v131[3];
  if (!v53)
  {
    v53 = MEMORY[0x1E69E7CD0];
  }

  v112 = *(v0 + 552);
  v115 = *(v0 + 536);

  v68 = sub_1C71CD85C(v53);
  v69 = *(v68 + 16);
  __dst[0] = v115;
  __dst[1] = v112;
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v64, v0 + 312, v70, v71, v72, v73, v74, v103, v106, v108, v110, v112, *(&v112 + 1), v115, *(&v115 + 1), v118, v51, *(&v51 + 1), v122);
  v76 = v75;
  v77 = *(v0 + 480);
  *&__dst[0] = v129;
  *(&__dst[0] + 1) = v65;
  *&__dst[1] = v67;
  *(&__dst[1] + 1) = v66;
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v77, v0 + 312, v78, v79, v80, v81, v82, v104, v107, v109, v111, v69, v114, v68, v117, v119, v120, v121, v123);
  v84 = v83;
  sub_1C75504FC();
  sub_1C75504FC();
  v85 = sub_1C754FEEC();
  sub_1C75511BC();
  v86 = OUTLINED_FUNCTION_72();
  v105 = v84;
  if (os_log_type_enabled(v86, v87))
  {
    OUTLINED_FUNCTION_98();
    v88 = swift_slowAlloc();
    v89 = v84;
    v90 = v88;
    *v88 = 134218496;
    *(v88 + 4) = *(v89 + 16);

    *(v90 + 12) = 2048;
    *(v90 + 14) = v113;
    *(v90 + 22) = 2048;
    v91 = *(v76 + 16);

    *(v90 + 24) = v91;

    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v92, v93, v94, v95, v90, 0x20u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v96 = v129;

  v97 = *(v0 + 496);
  if (v97)
  {

    v98 = sub_1C7164AD8(v116, 0xD000000000000024, 0x80000001C759F8D0, 0, 0);

    sub_1C75504FC();
    sub_1C75504FC();
    if (sub_1C71656D8(v99))
    {
      v100 = (v97 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock((v97 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
      sub_1C711D5C0(&v100[2], v113, v124, v126, v105);
      os_unfair_lock_unlock(v100);
    }

    OUTLINED_FUNCTION_141_4();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 312));
    v96 = v129;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  }

  v101 = *(v0 + 488);
  v102 = *(v0 + 448);
  *v102 = v96;
  v102[1] = v65;
  v102[2] = v67;
  v102[3] = v66;
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  OUTLINED_FUNCTION_138();
LABEL_10:
  sub_1C754F1AC();
  v27 = OUTLINED_FUNCTION_115_6();
  v28(v27);

  OUTLINED_FUNCTION_43();

  return v29();
}

uint64_t sub_1C711CA68()
{
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 680) = v0;

  v5 = *(v2 + 664);
  if (v0)
  {

    v6 = sub_1C711D4F0;
  }

  else
  {

    v6 = sub_1C711CBC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C711CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v135 = v7;
  v8 = *(v7 + 400);
  v9 = *(v7 + 408);
  *(v7 + 416) = *(v7 + 392);
  *(v7 + 424) = v8;
  *(v7 + 432) = v9;
  v10 = FreeformStoryFetching.Result.uuids.getter(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  sub_1C75504FC();
  sub_1C706D154();
  OUTLINED_FUNCTION_99_1();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v7 + 640);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB20F8();
    v12 = v104;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    OUTLINED_FUNCTION_15(v13);
    OUTLINED_FUNCTION_177();
    sub_1C6FB20F8();
    v12 = v105;
  }

  *(v12 + 16) = v14 + 1;
  *(v12 + 8 * v14 + 32) = v7 + 416;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v7 + 656);
  if (v17)
  {
    v19 = *(v7 + 648);
    OUTLINED_FUNCTION_11_3();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v21 = swift_slowAlloc();
    *&v133 = v21;
    *v20 = 134218243;
    v22 = *(v10 + 16);

    *(v20 + 4) = v22;

    OUTLINED_FUNCTION_146_2();
    v23 = sub_1C6F765A4(v19, v18, &v133);

    *(v20 + 14) = v23;
    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v29 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v29);
  }

  else
  {
    OUTLINED_FUNCTION_160_2();
  }

  sub_1C70DF138(v7 + 16);
  result = __swift_destroy_boxed_opaque_existential_1((v7 + 352));
  v31 = *(v7 + 632) + 1;
  if (v31 == *(v7 + 600))
  {
    v32 = *(v7 + 680);
    v33 = *(v7 + 147);
    v34 = *(v7 + 146);
    v35 = *(v7 + 568);
    v36 = *(v7 + 504);
    v124 = *(v7 + 552);
    v127 = *(v7 + 536);

    v118 = *(v12 + 16);
    *&v133 = v35;
    BYTE8(v133) = v34;
    BYTE9(v133) = v33;
    v37 = MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(v12, &v133, (v7 + 312));
    v121 = *(v36 + 304);
    StoryAsset.Manager.collection(with:)(v37, &v133);
    v38 = v133;
    v39 = v134;
    v131 = v133;
    v132 = v134;
    v133 = v127;
    v134 = v124;
    StoryAsset.Collection.union(with:)(&v133, v130);
    v40 = *(v7 + 584);
    if (v32)
    {
      __swift_destroy_boxed_opaque_existential_1((v7 + 312));

      OUTLINED_FUNCTION_38_6(*(v7 + 488));
      v59 = OUTLINED_FUNCTION_457();
      v60(v59);

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v128 = v37;
      v47 = *(v7 + 480);
      v48 = v130[0];
      v49 = v130[1];
      v50 = v130[2];
      v51 = v130[3];
      if (!v40)
      {
        v40 = MEMORY[0x1E69E7CD0];
      }

      v106 = *(v7 + 552);
      v110 = *(v7 + 536);

      v52 = sub_1C71CD85C(v40);
      v53 = *(v52 + 16);
      v133 = v110;
      v134 = v106;
      StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v133, v47, v7 + 312, v54, v55, v56, v57, v58, v106, *(&v106 + 1), v110, *(&v110 + 1), v113, v38, *(&v38 + 1), v39, v118, v121, *(&v39 + 1), *(&v124 + 1));
      v73 = v72;
      v74 = *(v7 + 480);
      *&v133 = v48;
      *(&v133 + 1) = v49;
      *&v134 = v50;
      *(&v134 + 1) = v51;
      StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v133, v74, v7 + 312, v75, v76, v77, v78, v79, v107, v109, v53, v112, v114, v115, v116, v117, v119, v122, v125, v126);
      v81 = v50;
      v82 = v51;
      v83 = v52;
      v108 = v49;
      v123 = v82;
      v84 = v80;
      sub_1C75504FC();
      sub_1C75504FC();
      v85 = sub_1C754FEEC();
      sub_1C75511BC();
      v86 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v86, v87))
      {
        OUTLINED_FUNCTION_98();
        v88 = swift_slowAlloc();
        *v88 = 134218496;
        *(v88 + 4) = *(v84 + 16);
        v89 = v84;

        *(v88 + 12) = 2048;
        *(v88 + 14) = v111;
        *(v88 + 22) = 2048;
        v90 = v81;
        v91 = *(v73 + 16);

        *(v88 + 24) = v91;
        v81 = v90;

        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v92, v93, v94, v95, v88, 0x20u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
        OUTLINED_FUNCTION_160_2();
        v89 = v84;
      }

      v96 = *(v7 + 496);
      if (v96)
      {

        v97 = sub_1C7164AD8(v83, 0xD000000000000024, 0x80000001C759F8D0, 0, 0);

        sub_1C75504FC();
        sub_1C75504FC();
        if (sub_1C71656D8(v98))
        {
          v99 = (v96 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
          os_unfair_lock_lock((v96 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
          sub_1C711D5C0(&v99[2], v111, v120, v128, v89);
          os_unfair_lock_unlock(v99);
        }

        OUTLINED_FUNCTION_160_2();
        swift_bridgeObjectRelease_n();
        __swift_destroy_boxed_opaque_existential_1((v7 + 312));
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1((v7 + 312));
      }

      v100 = *(v7 + 488);
      v101 = *(v7 + 448);
      *v101 = v48;
      v101[1] = v108;
      v101[2] = v81;
      v101[3] = v123;
      __swift_project_boxed_opaque_existential_1(v100, v100[3]);
      OUTLINED_FUNCTION_138();
      sub_1C754F1AC();
      v102 = OUTLINED_FUNCTION_115_6();
      v103(v102);

      OUTLINED_FUNCTION_43();
    }

    return v61();
  }

  else
  {
    *(v7 + 640) = v12;
    *(v7 + 632) = v31;
    v41 = *(v7 + 576);
    if (v31 >= *(v41 + 16))
    {
      __break(1u);
    }

    else
    {
      v42 = *(v7 + 608);
      v43 = v41 + 16 * v31;
      *(v7 + 648) = *(v43 + 32);
      *(v7 + 656) = *(v43 + 40);
      *(v7 + 376) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
      *(v7 + 384) = &off_1F46ACFD0;
      sub_1C75504FC();
      v44 = [v42 currentUnifiedEmbeddingVersion];
      v45 = v44;
      if (v44)
      {
        v46 = [v44 integerValue];
      }

      else
      {
        v46 = 0;
      }

      v62 = *(v7 + 616);
      v63 = *(v7 + 584);
      v64 = *(v7 + 504);
      *(v7 + 352) = 0;
      *(v7 + 360) = v46;
      *(v7 + 368) = v45 == 0;
      v65 = [v62 globalTraitsScopingEmbeddingSearchRetrievalLimit];
      sub_1C6FB5E28(v7 + 352, v7 + 32);
      *(v7 + 16) = 2;
      *(v7 + 24) = 1;
      *(v7 + 88) = 1;
      *(v7 + 96) = v63;
      OUTLINED_FUNCTION_112_3(1, xmmword_1C756A560);
      *(v7 + 72) = v65;
      *(v7 + 80) = 0;
      v66 = v64[29];
      v67 = v64[30];
      __swift_project_boxed_opaque_existential_1(v64 + 26, v66);
      sub_1C75504FC();
      sub_1C75504FC();
      v68 = sub_1C7073450();
      *(v7 + 664) = v68;
      v129 = (*(v67 + 16) + **(v67 + 16));
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v7 + 672) = v69;
      *v69 = v70;
      v71 = OUTLINED_FUNCTION_59_8(v69);

      return v129(v71, v68, v7 + 16, v7 + 312, v66, v67);
    }
  }

  return result;
}

uint64_t sub_1C711D4F0()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C70DF138(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  OUTLINED_FUNCTION_34_12(*(v0 + 488));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

void sub_1C711D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6FB0C38();
  v10 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v11 = *(a1 + 48);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 32 * v10;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = a2;
  *(v12 + 56) = 4;
  *(a1 + 48) = v11;
  sub_1C6FB0C38();
  v13 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v14 = *(a1 + 48);
  *(v14 + 16) = v13 + 1;
  v15 = v14 + 32 * v13;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 32) = a3;
  *(v15 + 56) = 5;
  *(a1 + 48) = v14;
  v16 = *(a4 + 16);
  sub_1C6FB0C38();
  v17 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v18 = *(a1 + 48);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 32 * v17;
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  *(v19 + 32) = v16;
  *(v19 + 56) = 6;
  *(a1 + 48) = v18;
  v20 = *(a5 + 16);
  sub_1C6FB0C38();
  v21 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v22 = *(a1 + 48);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 32 * v21;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 32) = v20;
  *(v23 + 56) = 7;
  *(a1 + 48) = v22;
}

uint64_t sub_1C711D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *(v11 + 912) = v10;
  *(v11 + 904) = a10;
  *(v11 + 896) = a9;
  *(v11 + 888) = v18;
  *(v11 + 880) = v19;
  *(v11 + 872) = v20;
  *(v11 + 864) = v16;
  *(v11 + 856) = v21;
  *(v11 + 848) = v22;
  v23 = sub_1C754F2FC();
  *(v11 + 920) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v11 + 928) = v24;
  *(v11 + 936) = OUTLINED_FUNCTION_81_0();
  *(v11 + 944) = swift_task_alloc();
  *(v11 + 952) = swift_task_alloc();
  *(v11 + 960) = swift_task_alloc();
  *(v11 + 968) = swift_task_alloc();
  *(v11 + 976) = swift_task_alloc();
  v25 = sub_1C754F38C();
  *(v11 + 984) = v25;
  OUTLINED_FUNCTION_18(v25);
  *(v11 + 992) = v26;
  *(v11 + 1000) = OUTLINED_FUNCTION_77();
  memcpy((v11 + 304), v17, 0x50uLL);
  v27 = v15[1];
  *(v11 + 1008) = *v15;
  *(v11 + 1024) = v27;
  v28 = v13[1];
  *(v11 + 1040) = *v13;
  *(v11 + 1056) = v28;
  v29 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v29, v30, v31);
}

uint64_t sub_1C711D88C()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2("TraitGenerator.generateGlobalTraits", 35);
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2CC();
  if (v1)
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 920);
    v7 = *(v0 + 896);
    OUTLINED_FUNCTION_18_0(*(v0 + 888), *(v2 + 24));
    sub_1C754F1AC();
    v8 = OUTLINED_FUNCTION_15_1();
    v9(v8);
    (*(v5 + 8))(v7, v6);
    OUTLINED_FUNCTION_50_12();

    OUTLINED_FUNCTION_43();

    return v20();
  }

  else
  {
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1064);
    v31 = *(v0 + 1040);
    v32 = *(v0 + 1048);
    v10 = *(v0 + 912);
    v11 = *(v0 + 888);
    v12 = *(v0 + 872);
    sub_1C754F2BC();
    sub_1C754F2BC();
    sub_1C754F2BC();
    OUTLINED_FUNCTION_34_12(v11);
    sub_1C754F15C();
    memcpy((v0 + 16), (v10 + 16), 0x59uLL);
    memcpy((v0 + 112), (v10 + 16), 0x59uLL);
    v13 = *(v10 + 184);
    v14 = *(v10 + 192);
    v15 = *(v10 + 200);
    *(v0 + 808) = v13;
    *(v0 + 816) = v14;
    *(v0 + 824) = v15;
    sub_1C6FB5E28(v10 + 208, v0 + 664);
    sub_1C6FB5E28(v10 + 248, v0 + 704);
    v16 = *(v10 + 304);
    type metadata accessor for GlobalTraitGenerator(0);
    swift_allocObject();
    sub_1C7117834(v0 + 16, v0 + 208);
    v17 = v13;

    *(v0 + 1072) = GlobalTraitGenerator.init(configuration:storyPhotoLibraryContext:storyAssetsFetcher:safetyController:storyAssetManager:)((v0 + 112), v0 + 808, (v0 + 664), v0 + 704, v16);
    v18 = swift_task_alloc();
    v18[2] = v10;
    v18[3] = v12;
    v18[4] = v0 + 624;
    v19 = sub_1C727381C(sub_1C712A750, v18, v31, v32, v33, v34);
    *(v0 + 1080) = v19;
    v22 = v19;
    v23 = *(v0 + 928);
    v24 = *(v0 + 864);

    memcpy((v0 + 384), v24, 0x50uLL);
    *(v0 + 1088) = *(v23 + 32);
    *(v0 + 1096) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25 = OUTLINED_FUNCTION_0_11();
    v26(v25);
    v27 = swift_task_alloc();
    *(v0 + 1104) = v27;
    *v27 = v0;
    v27[1] = sub_1C711DD3C;
    v28 = *(v0 + 952);
    v29 = *(v0 + 904);
    v30 = *(v0 + 888);

    return sub_1C7125154(v22, (v0 + 384), v30, v28, v29);
  }
}

uint64_t sub_1C711DD3C()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[139] = v7;
  v3[140] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C711E594, 0, 0);
  }

  else
  {
    v8 = v3[136];
    v9 = v3[121];
    v10 = v3[118];
    v11 = v3[115];

    memcpy(v3 + 58, v3 + 38, 0x50uLL);
    v8(v10, v9, v11);
    v12 = swift_task_alloc();
    v3[141] = v12;
    *v12 = v5;
    v12[1] = sub_1C711DF28;
    OUTLINED_FUNCTION_61_3(v3[106]);

    return GlobalTraitGenerator.generatePromptBindings(about:extendedTokens:assetCaptions:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C711DF28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1136) = v5;
  *(v3 + 1144) = v0;

  if (v0)
  {
    v6 = sub_1C711E6C4;
  }

  else
  {
    v6 = sub_1C711E040;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C711E040()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 1088);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 832) = MEMORY[0x1E69E7CC0];
  *(v0 + 840) = v2;
  memcpy((v0 + 544), (v0 + 304), 0x50uLL);
  v3 = *(v0 + 1024);
  *(v0 + 744) = *(v0 + 1008);
  *(v0 + 760) = v3;
  *(v0 + 776) = *(v0 + 1040);
  *(v0 + 792) = *(v0 + 1056);
  v4 = OUTLINED_FUNCTION_154();
  v1(v4);

  v5 = swift_task_alloc();
  *(v0 + 1152) = v5;
  *v5 = v0;
  v5[1] = sub_1C711E1B0;
  OUTLINED_FUNCTION_61_3(*(v0 + 1136));
  OUTLINED_FUNCTION_17_1();

  __asm { BR              X8 }
}

uint64_t sub_1C711E1B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1160) = v0;

  if (v0)
  {
    v7 = sub_1C711E7D8;
  }

  else
  {
    v7 = sub_1C711E2BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C711E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = v16[145];
  if (v16[113])
  {
    v18 = v16[105];

    v19 = OUTLINED_FUNCTION_457();
    static GlobalTraitDiagnosticsGenerator.save(globalTraits:rejectedGlobalTraits:in:)(v19, v20, v21);
    if (v17)
    {

      v22 = v17;
      v23 = sub_1C754FEEC();
      v24 = sub_1C755119C();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_104_5();
        v25 = swift_slowAlloc();
        *v18 = 138412290;
        v26 = v17;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v27;
        *v25 = v27;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
        sub_1C6FB5FC8(v25, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v33 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v33);
      }

      else
      {
      }

      v17 = 0;
    }

    else
    {
    }
  }

  sub_1C754F2EC();
  OUTLINED_FUNCTION_103_5();
  if (v17)
  {

    __swift_destroy_boxed_opaque_existential_1(v16 + 78);
    OUTLINED_FUNCTION_22_26();
    v34 = OUTLINED_FUNCTION_457();
    v35(v34);
    OUTLINED_FUNCTION_50_12();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_129();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v55 = v16[119];
    v56 = v16[118];
    v57 = v16[117];

    v58 = v16[104];

    __swift_destroy_boxed_opaque_existential_1(v16 + 78);
    OUTLINED_FUNCTION_22_26();
    v45 = OUTLINED_FUNCTION_457();
    v46(v45);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_129();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, a13, a14, a15, a16);
  }
}

uint64_t sub_1C711E594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_103_5();
  v17 = v15[121];
  v18 = v15[116];
  v19 = v15[115];
  v32 = v15[112];
  v33 = v15[123];
  v20 = v15[111];

  __swift_destroy_boxed_opaque_existential_1(v15 + 78);
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_15_1();
  v21(v22);
  (v21)(v17, v19);
  OUTLINED_FUNCTION_0_22(v20, v20[3]);
  sub_1C754F1AC();
  (*(v16 + 8))(v14, v33);
  (v21)(v32, v19);
  OUTLINED_FUNCTION_45_13();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_103_5();
  v17 = v15[116];
  v18 = v15[115];
  v32 = v15[112];
  v33 = v15[123];

  __swift_destroy_boxed_opaque_existential_1(v15 + 78);
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_57_3();
  v19(v20);
  v21 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v21, v22);
  sub_1C754F1AC();
  (*(v16 + 8))(v14, v33);
  (v19)(v32, v18);
  OUTLINED_FUNCTION_45_13();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711E7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 888);

  __swift_destroy_boxed_opaque_existential_1((v12 + 624));
  OUTLINED_FUNCTION_24_6(v13);
  OUTLINED_FUNCTION_101_5();
  sub_1C754F1AC();
  v14 = OUTLINED_FUNCTION_57_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_117_0();
  v17(v16);
  OUTLINED_FUNCTION_45_13();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1C711E948()
{
  OUTLINED_FUNCTION_42();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AC8, &qword_1C756D800);
  OUTLINED_FUNCTION_76(v5);
  v0[8] = OUTLINED_FUNCTION_77();
  v6 = type metadata accessor for GlobalTrait(0);
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_81_0();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AD0, &qword_1C757DA90);
  v0[13] = v8;
  OUTLINED_FUNCTION_76(v8);
  v0[14] = OUTLINED_FUNCTION_77();
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C711EA60()
{
  OUTLINED_FUNCTION_115_0();
  v59 = v0;
  sub_1C712A774(v0[4], v0[14], &qword_1EC217AD0, &qword_1C757DA90);
  OUTLINED_FUNCTION_66_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[2] = *v2;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    type metadata accessor for GlobalTraitGenerator.Error(0);
    v5 = swift_dynamicCast();
    v6 = v0[8];
    if (v5)
    {
      OUTLINED_FUNCTION_90_9();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
      OUTLINED_FUNCTION_140_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = v0[12];
        v13 = v0[9];
        v12 = v0[10];
        v14 = v0[6];
        sub_1C7129CC4(v0[8], v12, type metadata accessor for GlobalTrait);
        OUTLINED_FUNCTION_2_47();
        v15 = OUTLINED_FUNCTION_117_0();
        sub_1C712A7D0(v15, v16, v17);
        sub_1C6FB0848();
        v18 = *(*v14 + 16);
        sub_1C6FB10D4(v18, v19, v20, v21, v22, v23);
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v12, v24);
        v25 = *v14;
        *(v25 + 16) = v18 + 1;
        sub_1C7129CC4(v11, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, type metadata accessor for GlobalTrait);
      }

      else
      {
        sub_1C712A82C(v0[8], type metadata accessor for GlobalTraitGenerator.Error);
      }
    }

    else
    {
      OUTLINED_FUNCTION_90_9();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
      sub_1C6FB5FC8(v6, &qword_1EC217AC8, &qword_1C756D800);
    }

    v45 = v3;
    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_13_3();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v49 = swift_slowAlloc();
      v58 = v49;
      *v48 = 136642819;
      v0[3] = v3;
      v50 = v3;
      v51 = sub_1C75506EC();
      v53 = sub_1C6F765A4(v51, v52, &v58);

      *(v48 + 4) = v53;
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v54, v55, "Generating global trait failed with error '%{sensitive}s'");
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

  else
  {
    v27 = v0[11];
    v26 = v0[12];
    v28 = v0[9];
    v29 = v0[5];
    sub_1C7129CC4(v2, v26, type metadata accessor for GlobalTrait);
    OUTLINED_FUNCTION_2_47();
    v30 = OUTLINED_FUNCTION_57_0();
    sub_1C712A7D0(v30, v31, v32);
    sub_1C6FB0848();
    v33 = *(*v29 + 16);
    sub_1C6FB10D4(v33, v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_1_51();
    sub_1C712A82C(v26, v39);
    v40 = *v29;
    *(v40 + 16) = v33 + 1;
    sub_1C7129CC4(v27, v40 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v33, type metadata accessor for GlobalTrait);
  }

  OUTLINED_FUNCTION_43();

  return v56();
}

void sub_1C711EE04(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v10 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  static StoryGenerationUtilities.querySortOrder(in:)();
  LODWORD(v48) = LOBYTE(__dst[0]);
  v16 = a2[1];
  v54[0] = *a2;
  v54[1] = v16;
  sub_1C754F41C();
  __dst[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
  __dst[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(__dst);
  MEMORY[0x1CCA5B6D0]();
  v17 = v56;
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v54, a3, __dst, v18, v19, v20, v21, v22, v43, v45, v46, v48, a3, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6]);
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v17)
  {
    return;
  }

  if (v49)
  {
    v25 = sub_1C7551DBC();

    if ((v25 & 1) == 0)
    {
      v42 = *(v24 + 16);

      v26 = a1;
      if (v42)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v26 = a1;
LABEL_7:
  v27 = 0;
  v47 = v26 + 32;
  v50 = *(v26 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  while (v27 != v50)
  {
    if (v27 >= v50)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v28 = (v47 + 120 * v27);
    memcpy(__dst, v28, 0x78uLL);
    v29 = __OFADD__(v27, 1);
    v30 = v27 + 1;
    if (v29)
    {
      goto LABEL_27;
    }

    v56 = v30;
    memcpy(v54, v28, 0x78uLL);
    sub_1C6FCA6E4(__dst, v53);
    static StoryGenerationUtilities.shouldUseHighPrecisionEmbeddingSearchThreshold(_:)();
    v52 = v31;
    v32 = 0;
    v33 = __dst[10];
    v34 = *(__dst[10] + 16);
    do
    {
      if (v34 == v32)
      {
        goto LABEL_16;
      }

      if (v32 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_191();
      sub_1C712A7D0(v33 + v35 + *(v12 + 72) * v32++, v15, type metadata accessor for QueryTokenSuggestion);
      swift_storeEnumTagMultiPayload();
      v36 = static QueryTokenCategoryType.== infix(_:_:)(v15, v8);
      sub_1C712A82C(v8, type metadata accessor for QueryTokenCategoryType);
      sub_1C712A82C(v15, type metadata accessor for QueryTokenSuggestion);
    }

    while ((v36 & 1) == 0);
    if (v52)
    {
LABEL_16:
      sub_1C6FDD548(__dst);
      v27 = v56;
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB3514();
      v44 = v40;
    }

    v37 = v44;
    v39 = *(v44 + 16);
    v38 = *(v44 + 24);
    if (v39 >= v38 >> 1)
    {
      OUTLINED_FUNCTION_15(v38);
      sub_1C6FB3514();
      v37 = v41;
    }

    *(v37 + 16) = v39 + 1;
    v44 = v37;
    memcpy((v37 + 120 * v39 + 32), __dst, 0x78uLL);
    v27 = v56;
  }
}

uint64_t sub_1C711F208(uint64_t a1)
{
  v2 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = MEMORY[0x1E69E7CD0];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_2_47();
      v9 = OUTLINED_FUNCTION_0_11();
      sub_1C712A7D0(v9, v10, v11);
      v12 = sub_1C75504FC();
      sub_1C73978C4(v12);
      OUTLINED_FUNCTION_1_51();
      sub_1C712A82C(v5, v13);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  sub_1C703FD7C();
  v15 = v14;

  return v15;
}

uint64_t sub_1C711F330()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[74] = v0;
  v1[73] = v4;
  v1[72] = v5;
  v1[71] = v6;
  v1[70] = v7;
  v1[69] = v8;
  v9 = type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_18(v9);
  v1[75] = v10;
  v1[76] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F38C();
  v1[77] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[78] = v12;
  v1[79] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 2, v3, 0xD8uLL);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C711F444()
{
  v15 = v0;
  v1 = *(v0 + 584);
  OUTLINED_FUNCTION_141_1(*(v0 + 568), *(*(v0 + 568) + 24));
  sub_1C754F1CC();
  if (v1)
  {
    __dst[0] = 8;
    StoryGenerationDiagnosticContext.generationStage.setter(__dst);
  }

  v2 = *(v0 + 592);
  v3 = *(v0 + 552);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = *(v2 + 192);
  v6 = *(v2 + 200);
  v12 = *(v2 + 184);
  v4 = v12;
  v13 = v5;
  v14 = v6;
  type metadata accessor for PersonalTraitGenerator();
  swift_allocObject();
  *(v0 + 640) = PersonalTraitGenerator.init(configuration:storyPhotoLibraryContext:)(__dst, &v12);
  memcpy((v0 + 448), v3, 0x50uLL);
  sub_1C70592B4(v0 + 16, v0 + 232);
  v7 = v4;

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 648) = v8;
  *v8 = v9;
  v8[1] = sub_1C711F5D4;

  return PersonalTraitGenerator.generate(from:assetUUIDs:eventRecorder:progressReporter:)();
}

uint64_t sub_1C711F5D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 656) = v0;

  if (v0)
  {
    v7 = sub_1C711FA84;
  }

  else
  {
    v7 = sub_1C711F6D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C711F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v26;
  a26 = v27;
  a24 = v25;
  v28 = v25[66];
  v29 = v25[67];
  if (v25[73])
  {
    v30 = v25[82];
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C7161818(v31, v28, v29, v32);
    a13.n128_u64[0] = v28;
    sub_1C75504FC();
    sub_1C71274B0(&a13);
    if (v30)
    {

      OUTLINED_FUNCTION_94_1();

      return;
    }

    v46 = *(a13.n128_u64[0] + 16);
    if (v46)
    {
      a11 = v29;
      a12 = v28;
      v47 = v25[76];
      v48 = v25[75];
      a10 = a13.n128_u64[0];
      v49 = a13.n128_u64[0] + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v50 = *(v48 + 72);
      do
      {
        v51 = v25[76];
        OUTLINED_FUNCTION_9_32();
        sub_1C712A7D0(v49, v51, v52);
        a13.n128_u64[0] = 0;
        a13.n128_u64[1] = 0xE000000000000000;
        sub_1C755180C();

        a13.n128_u64[0] = 0xD000000000000015;
        a13.n128_u64[1] = 0x80000001C759F870;
        MEMORY[0x1CCA5CD70](*v51, *(v47 + 8));
        MEMORY[0x1CCA5CD70](2629671, 0xE300000000000000);
        v25[68] = *(*(v47 + 16) + 16);
        v53 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v53);

        MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
        sub_1C7161CDC(a13.n128_i64[0], a13.n128_i64[1]);

        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v51, v54);
        v49 += v50;
        --v46;
      }

      while (v46);

      v29 = a11;
    }

    else
    {
    }

    a13.n128_u64[0] = v28;
    a13.n128_u64[1] = v29;
    static PersonalTraitDiagnosticsGenerator.save(selectionResult:to:)(&a13);
  }

  v34 = v25[79];
  v35 = v25[78];
  v36 = v25[77];
  v37 = v25[71];

  OUTLINED_FUNCTION_24_6(v37);
  sub_1C754F1AC();
  (*(v35 + 8))(v34, v36);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_94_1();

  v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13.n128_u64[0], a13.n128_u64[1], a15, a16, a17, a18);
}

uint64_t sub_1C711FA84()
{
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_22_26();
  v0 = OUTLINED_FUNCTION_57_0();
  v1(v0);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C711FB34()
{
  OUTLINED_FUNCTION_42();
  v1[57] = v2;
  v1[58] = v0;
  v1[55] = v3;
  v1[56] = v4;
  v1[53] = v5;
  v1[54] = v6;
  v7 = sub_1C754F2FC();
  v1[59] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[60] = v8;
  v1[61] = OUTLINED_FUNCTION_81_0();
  v1[62] = swift_task_alloc();
  v9 = type metadata accessor for PersonalTrait(0);
  v1[63] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[64] = v10;
  v1[65] = OUTLINED_FUNCTION_81_0();
  v1[66] = swift_task_alloc();
  v11 = type metadata accessor for GlobalTrait(0);
  v1[67] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[68] = v12;
  v1[69] = OUTLINED_FUNCTION_81_0();
  v1[70] = swift_task_alloc();
  v13 = sub_1C754F38C();
  v1[71] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[72] = v14;
  v1[73] = OUTLINED_FUNCTION_77();
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_1C711FCE8()
{
  v255 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2("TraitGenerator.consolidateTraits", 32);
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2CC();
  if (v2)
  {
    v5 = *(v0 + 480);
    v248 = *(v0 + 472);
    v6 = *(v0 + 456);
    OUTLINED_FUNCTION_18_0(*(v0 + 448), *(v1 + 24));
    sub_1C754F1AC();
    v7 = OUTLINED_FUNCTION_15_1();
    v8(v7);
    (*(v5 + 8))(v6, v248);
    OUTLINED_FUNCTION_108_5();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_1();

    __asm { BRAA            X1, X16 }
  }

  sub_1C754F2DC();
  *(v0 + 592) = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v11 = sub_1C754FEEC();
  sub_1C75511BC();
  v12 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v12, v13))
  {
    v238 = v11;
    v14 = *(v0 + 424);
    v15 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *v15 = 134218755;
    v16 = *(v14 + 16);
    *(v15 + 4) = v16;

    *(v15 + 12) = 2085;
    v21 = MEMORY[0x1E69E7CC0];
    v242 = v15;
    if (v16)
    {
      v22 = *(v0 + 560);
      v23 = *(v0 + 544);
      v249 = *(v0 + 536);
      v24 = *(v0 + 424);
      v252 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v16, 0, v17, v18, v19, v20);
      v21 = v252;
      OUTLINED_FUNCTION_191();
      v26 = v24 + v25;
      v244 = *(v23 + 72);
      v247 = "PersonalTraitGeneration";
      do
      {
        v27 = *(v0 + 560);
        OUTLINED_FUNCTION_2_47();
        sub_1C712A7D0(v26, v27, v28);
        OUTLINED_FUNCTION_153_0();
        v29 = v254;
        *(v0 + 352) = v253;
        *(v0 + 360) = v29;
        OUTLINED_FUNCTION_35_10();
        MEMORY[0x1CCA5CD70](*v27, v22[1]);
        v30 = OUTLINED_FUNCTION_132_0();
        MEMORY[0x1CCA5CD70](v30);
        *(v0 + 400) = *(*(v27 + *(v249 + 32)) + 16);
        v31 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v31);

        MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C759F720);
        MEMORY[0x1CCA5CD70](v22[2], v22[3]);
        OUTLINED_FUNCTION_79_7();
        *(v0 + 641) = *(v27 + *(v249 + 28));
        sub_1C75519EC();
        v32 = *(v0 + 352);
        v33 = *(v0 + 360);
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v27, v34);
        v36 = *(v252 + 16);
        v35 = *(v252 + 24);
        if (v36 >= v35 >> 1)
        {
          v38 = OUTLINED_FUNCTION_15(v35);
          sub_1C6F7ED9C(v38, v36 + 1, 1, v39, v40, v41, v42);
        }

        *(v252 + 16) = v36 + 1;
        v37 = v252 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v33;
        v26 += v244;
        --v16;
      }

      while (v16);
      v15 = v242;
    }

    v43 = *(v0 + 432);
    *(v0 + 408) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v44 = sub_1C703328C();
    OUTLINED_FUNCTION_158_2();
    OUTLINED_FUNCTION_98_6();

    v45 = OUTLINED_FUNCTION_66_2();
    sub_1C6F765A4(v45, v46, v47);
    OUTLINED_FUNCTION_24_2();

    *(v15 + 14) = v0 + 408;
    *(v15 + 22) = 2048;
    v48 = *(v43 + 16);

    *(v15 + 24) = v48;

    *(v15 + 32) = 2085;
    v49 = MEMORY[0x1E69E7CC0];
    if (v48)
    {
      v247 = v44;
      v50 = *(v0 + 512);
      v51 = *(v0 + 432);
      v253 = MEMORY[0x1E69E7CC0];
      v52 = OUTLINED_FUNCTION_105();
      sub_1C6F7ED9C(v52, v53, v54, v55, v56, v57, v58);
      v49 = v253;
      OUTLINED_FUNCTION_191();
      v60 = v51 + v59;
      v61 = *(v50 + 72);
      do
      {
        v62 = *(v0 + 528);
        OUTLINED_FUNCTION_9_32();
        sub_1C712A7D0(v60, v62, v63);
        PersonalTrait.description.getter();
        OUTLINED_FUNCTION_144();
        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v62, v64);
        v253 = v49;
        v65 = *(v49 + 16);
        if (v65 >= *(v49 + 24) >> 1)
        {
          OUTLINED_FUNCTION_336();
          sub_1C6F7ED9C(v67, v68, v69, v70, v71, v72, v73);
          v49 = v253;
        }

        *(v49 + 16) = v65 + 1;
        v66 = v49 + 16 * v65;
        *(v66 + 32) = v44;
        *(v66 + 40) = 2085;
        v60 += v61;
        --v48;
      }

      while (v48);
      v15 = v242;
    }

    *(v0 + 416) = v49;
    OUTLINED_FUNCTION_158_2();
    OUTLINED_FUNCTION_98_6();

    v74 = OUTLINED_FUNCTION_66_2();
    sub_1C6F765A4(v74, v75, v76);
    OUTLINED_FUNCTION_24_2();

    *(v15 + 34) = v0 + 416;
    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v77, v78, v79, v80, v81, 0x2Au);
    v11 = v236;
    swift_arrayDestroy();
    v82 = OUTLINED_FUNCTION_27_20();
    MEMORY[0x1CCA5F8E0](v82);
    v83 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v83);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_1C71BABB8();
  OUTLINED_FUNCTION_98_5();
  sub_1C71BAD20();
  v253 = v11;
  sub_1C6FD339C(v84);
  v85 = v11;
  *(v0 + 600) = v11;
  v86 = objc_opt_self();
  *(v0 + 608) = v86;
  if ([v86 enableTraitDeduping])
  {
    sub_1C754F2BC();
    v87 = OUTLINED_FUNCTION_154();
    v88(v87);
    v89 = swift_task_alloc();
    *(v0 + 616) = v89;
    *v89 = v0;
    v89[1] = sub_1C7120E84;
    OUTLINED_FUNCTION_128_1();

    sub_1C7121DE4(v90, v91, v92, v93);
    return;
  }

  v95 = sub_1C754FEEC();
  sub_1C75511BC();
  v96 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v96, v97))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v98, v99, v100, v101, v102, 2u);
    v103 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v103);
  }

  v104 = *(v0 + 608);
  sub_1C75504FC();
  v105 = &byte_1C756CFEC[20];
  if (![v104 enableFinalTraitLimit])
  {

    goto LABEL_42;
  }

  v106 = *(v0 + 464);
  v107 = v11[2];

  if (*(v106 + 160) >= v107)
  {
LABEL_42:

    v130 = sub_1C754FEEC();
    sub_1C75511BC();
    v131 = OUTLINED_FUNCTION_72();
    v133 = os_log_type_enabled(v131, v132);
    v134 = *(v0 + 464);
    if (v133)
    {
      OUTLINED_FUNCTION_13_3();
      v135 = swift_slowAlloc();
      *v135 = 134217984;
      *(v135 + 4) = *(v134 + 160);

      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v136, v137, v138, v139, v135, 0xCu);
      v140 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v140);
    }

    else
    {
    }

    goto LABEL_46;
  }

  v108 = 0;
  v109 = v85[2];
  v110 = MEMORY[0x1E69E7CC0];
  v111 = (v85 + 4);
  v112 = &qword_1EC217A10;
  v113 = (v85 + 4);
  v247 = v109;
  v250 = v85;
  v245 = (v85 + 4);
  while (1)
  {
    if (v109 == v108)
    {
      sub_1C71BAE88(v110);

      v175 = 0;
      v176 = MEMORY[0x1E69E7CC0];
      v177 = &qword_1EC217A10;
      while (v109 != v175)
      {
        if (v175 >= v85[2])
        {
          goto LABEL_81;
        }

        sub_1C6FB5E28(v111, v0 + 136);
        sub_1C6FB5E28(v0 + 136, v0 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(v177, &qword_1C756D610);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_1_51();
          sub_1C712A82C(v178, v179);
          sub_1C6F699F8((v0 + 136), v0 + 216);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v253 = v176;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v181 = OUTLINED_FUNCTION_99();
            sub_1C716E46C(v181, v182, v183);
            v176 = v253;
          }

          v184 = v177;
          v186 = *(v176 + 16);
          v185 = *(v176 + 24);
          if (v186 >= v185 >> 1)
          {
            v193 = OUTLINED_FUNCTION_15(v185);
            sub_1C716E46C(v193, v186 + 1, 1);
          }

          v188 = *(v0 + 240);
          v187 = *(v0 + 248);
          v189 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 216, v188);
          OUTLINED_FUNCTION_29();
          v191 = v190;
          v192 = OUTLINED_FUNCTION_77();
          (*(v191 + 16))(v192, v189, v188);
          sub_1C71FCD88(v186, v192, &v253, v188, v187);
          __swift_destroy_boxed_opaque_existential_1((v0 + 216));

          v176 = v253;
          v109 = v247;
          v85 = v250;
          v177 = v184;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        }

        v111 += 40;
        ++v175;
      }

      sub_1C71BAEC8(v176);

      v194 = OUTLINED_FUNCTION_15_1();
      sub_1C7122EE4(v194, v195);
      v85 = v204;

      sub_1C75504FC();
      v205 = sub_1C754FEEC();
      v206 = sub_1C75511BC();
      if (os_log_type_enabled(v205, v206))
      {
        OUTLINED_FUNCTION_11_3();
        v208 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v247 = swift_slowAlloc();
        v105 = &byte_1C756CFEC[20];
        *v208 = 134218243;
        *(v208 + 4) = v85[2];

        OUTLINED_FUNCTION_146_2();
        v209 = MEMORY[0x1E69E7CC0];
        if (v85[2])
        {
          v246 = v205;
          v253 = MEMORY[0x1E69E7CC0];
          v210 = OUTLINED_FUNCTION_36_12();
          sub_1C6F7ED9C(v210, v211, v212, v213, v214, v215, v216);
          v209 = v253;
          v251 = v85;
          v217 = (v85 + 4);
          do
          {
            sub_1C6FB5E28(v217, v0 + 256);
            v218 = *(v0 + 288);
            __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
            v219 = OUTLINED_FUNCTION_24_2();
            v220(v219, v218);
            __swift_destroy_boxed_opaque_existential_1((v0 + 256));
            v253 = v209;
            v221 = *(v209 + 24);
            if (*(v209 + 16) >= v221 >> 1)
            {
              OUTLINED_FUNCTION_15(v221);
              OUTLINED_FUNCTION_177();
              sub_1C6F7ED9C(v223, v224, v225, v226, v227, v228, v229);
              v209 = v253;
            }

            OUTLINED_FUNCTION_119_6();
          }

          while (!v222);
          v85 = v251;
          v105 = byte_1C756CFEC + 20;
          v205 = v246;
        }

        *(v0 + 384) = v209;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        OUTLINED_FUNCTION_38_12();
        sub_1C75505FC();
        OUTLINED_FUNCTION_98_6();

        v230 = OUTLINED_FUNCTION_66_2();
        sub_1C6F765A4(v230, v231, v232);
        OUTLINED_FUNCTION_24_2();

        *(v208 + 14) = v0 + 384;
        OUTLINED_FUNCTION_156_1(&dword_1C6F5C000, v233, v234, "%ld random weighted sampled traits:\n%{sensitive}s");
        __swift_destroy_boxed_opaque_existential_1(v247);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v235 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v235);
      }

      else
      {

        v105 = byte_1C756CFEC + 20;
      }

LABEL_46:
      sub_1C754F2EC();
      OUTLINED_FUNCTION_159_2();
      sub_1C75504FC();
      v141 = sub_1C754FEEC();
      v142 = sub_1C75511BC();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = *(v0 + 424);
        OUTLINED_FUNCTION_11_3();
        v144 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v240 = swift_slowAlloc();
        *v144 = *(v105 + 180);
        *(v144 + 4) = v85[2];

        buf = v144;
        *(v144 + 12) = 2085;
        v145 = *(v143 + 16);
        v146 = MEMORY[0x1E69E7CC0];
        if (v145)
        {
          v237 = v142;
          v239 = v141;
          v147 = *(v0 + 560);
          OUTLINED_FUNCTION_133_4();
          v148 = OUTLINED_FUNCTION_36_12();
          sub_1C6F7ED9C(v148, v149, v150, v151, v152, v153, v154);
          OUTLINED_FUNCTION_191();
          v156 = v141 + v155;
          v243 = *(v144 + 72);
          do
          {
            v157 = *(v0 + 560);
            OUTLINED_FUNCTION_2_47();
            sub_1C712A7D0(v156, v157, v158);
            OUTLINED_FUNCTION_153_0();
            v159 = v254;
            *(v0 + 336) = v253;
            *(v0 + 344) = v159;
            OUTLINED_FUNCTION_35_10();
            MEMORY[0x1CCA5CD70](*v157, v147[1]);
            v160 = OUTLINED_FUNCTION_132_0();
            MEMORY[0x1CCA5CD70](v160);
            *(v0 + 368) = *(*(v157 + *(v247 + 8)) + 16);
            v161 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v161);

            OUTLINED_FUNCTION_154_1();
            MEMORY[0x1CCA5CD70](v147[2], v147[3]);
            OUTLINED_FUNCTION_79_7();
            *(v0 + 640) = *(v157 + *(v247 + 7));
            sub_1C75519EC();
            v162 = *(v0 + 336);
            v163 = *(v0 + 344);
            OUTLINED_FUNCTION_1_51();
            sub_1C712A82C(v157, v164);
            v166 = *(v146 + 16);
            v165 = *(v146 + 24);
            if (v166 >= v165 >> 1)
            {
              OUTLINED_FUNCTION_15(v165);
              OUTLINED_FUNCTION_336();
              sub_1C6F7ED9C(v168, v169, v170, v171, v172, v173, v174);
            }

            *(v146 + 16) = v166 + 1;
            v167 = v146 + 16 * v166;
            *(v167 + 32) = v162;
            *(v167 + 40) = v163;
            v156 += v243;
            --v145;
          }

          while (v145);
          v141 = v239;
          v142 = v237;
        }

        *(v0 + 376) = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        OUTLINED_FUNCTION_38_12();
        sub_1C75505FC();
        OUTLINED_FUNCTION_98_6();

        v196 = OUTLINED_FUNCTION_66_2();
        sub_1C6F765A4(v196, v197, v198);
        OUTLINED_FUNCTION_24_2();

        *(buf + 14) = v0 + 376;
        _os_log_impl(&dword_1C6F5C000, v141, v142, "%ld consolidated traits:\n%{sensitive}s", buf, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v240);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v199 = OUTLINED_FUNCTION_27_20();
        MEMORY[0x1CCA5F8E0](v199);
      }

      else
      {
      }

      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_0_22(*(v0 + 448), *(*(v0 + 448) + 24));
      sub_1C754F1AC();
      v200 = OUTLINED_FUNCTION_57_0();
      v201(v200);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_128_1();

      __asm { BRAA            X2, X16 }
    }

    if (v108 >= v85[2])
    {
      break;
    }

    sub_1C6FB5E28(v113, v0 + 16);
    sub_1C6FB5E28(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(v112, &qword_1C756D610);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_38();
      sub_1C712A82C(v114, v115);
      sub_1C6F699F8((v0 + 16), v0 + 96);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v253 = v110;
      if ((v116 & 1) == 0)
      {
        v117 = OUTLINED_FUNCTION_99();
        sub_1C716E46C(v117, v118, v119);
        v110 = v253;
      }

      v120 = v112;
      v122 = *(v110 + 16);
      v121 = *(v110 + 24);
      if (v122 >= v121 >> 1)
      {
        v129 = OUTLINED_FUNCTION_15(v121);
        sub_1C716E46C(v129, v122 + 1, 1);
      }

      v123 = *(v0 + 120);
      v124 = *(v0 + 128);
      v125 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 96, v123);
      OUTLINED_FUNCTION_29();
      v127 = v126;
      v128 = OUTLINED_FUNCTION_77();
      (*(v127 + 16))(v128, v125, v123);
      sub_1C71FCD88(v122, v128, &v253, v123, v124);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));

      v110 = v253;
      v109 = v247;
      v85 = v250;
      v112 = v120;
      v111 = v245;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    v113 += 40;
    ++v108;
  }

  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t sub_1C7120E84()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v7 + 624) = v6;
  *(v7 + 632) = v0;

  if (v0)
  {
    v8 = sub_1C7121CEC;
  }

  else
  {
    v8 = sub_1C7120FB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void sub_1C7120FB4()
{
  v185 = v0;
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 624);
  v5 = &byte_1C756CFEC[20];
  if (v3)
  {
    OUTLINED_FUNCTION_11_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v7 = swift_slowAlloc();
    v184 = v7;
    *v6 = 134218243;
    *(v6 + 4) = *(v4 + 16);

    OUTLINED_FUNCTION_146_2();
    v12 = *(v4 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v175 = v7;
      v177 = v2;
      v180 = v1;
      v14 = *(v0 + 624);
      v182 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v12, 0, v8, v9, v10, v11);
      v13 = v182;
      v15 = v14 + 32;
      do
      {
        sub_1C6FB5E28(v15, v0 + 296);
        v16 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        v17 = OUTLINED_FUNCTION_99_1();
        v19 = v18(v17, v16);
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_1((v0 + 296));
        v182 = v13;
        v5 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v5 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_15(v22);
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C(v24, v25, v26, v27, v28, v29, v30);
          v13 = v182;
        }

        *(v13 + 16) = v5 + 1;
        v23 = v13 + 16 * v5;
        *(v23 + 32) = v19;
        *(v23 + 40) = v21;
        v15 += 40;
        --v12;
      }

      while (v12);
      v1 = v180;
      v2 = v177;
      v7 = v175;
    }

    *(v0 + 392) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v31 = sub_1C75505FC();
    v33 = v32;

    sub_1C6F765A4(v31, v33, &v184);
    OUTLINED_FUNCTION_99_1();

    *(v6 + 14) = v31;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "%ld deduped traits:\n%{sensitive}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v34 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v34);
  }

  else
  {
  }

  v35 = *(v0 + 624);
  v36 = *(v0 + 632);
  v37 = *(v0 + 608);
  sub_1C75504FC();
  if (![v37 enableFinalTraitLimit])
  {

    goto LABEL_24;
  }

  v38 = *(v0 + 464);
  v5 = *(v35 + 16);

  if (*(v38 + 160) >= v5)
  {
LABEL_24:

    v60 = sub_1C754FEEC();
    v61 = sub_1C75511BC();
    v62 = OUTLINED_FUNCTION_72();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 464);
    if (v64)
    {
      OUTLINED_FUNCTION_13_3();
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v65 + 160);

      _os_log_impl(&dword_1C6F5C000, v60, v61, "Final trait limit is disabled or there are less than %ld traits", v5, 0xCu);
      v66 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v66);
    }

    else
    {
    }

    goto LABEL_28;
  }

  v173 = v36;
  v39 = 0;
  v180 = *(v35 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  v41 = v35 + 32;
  v42 = &qword_1EC217A10;
  v43 = v35 + 32;
  v176 = v35 + 32;
  v178 = v35;
  while (v180 != v39)
  {
    if (v39 >= *(v35 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      return;
    }

    sub_1C6FB5E28(v43, v0 + 16);
    sub_1C6FB5E28(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(v42, &qword_1C756D610);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_38();
      sub_1C712A82C(v44, v45);
      sub_1C6F699F8((v0 + 16), v0 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_99();
        sub_1C716E46C(v47, v48, v49);
        v40 = v182;
      }

      v50 = v42;
      v52 = *(v40 + 16);
      v51 = *(v40 + 24);
      if (v52 >= v51 >> 1)
      {
        v59 = OUTLINED_FUNCTION_15(v51);
        sub_1C716E46C(v59, v52 + 1, 1);
      }

      v53 = *(v0 + 120);
      v54 = *(v0 + 128);
      v55 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 96, v53);
      OUTLINED_FUNCTION_29();
      v57 = v56;
      v58 = OUTLINED_FUNCTION_77();
      (*(v57 + 16))(v58, v55, v53);
      sub_1C71FCD88(v52, v58, &v182, v53, v54);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));

      v40 = v182;
      v42 = v50;
      v41 = v176;
      v35 = v178;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    v43 += 40;
    v39 = (v39 + 1);
  }

  sub_1C71BAE88(v40);

  v105 = 0;
  v106 = MEMORY[0x1E69E7CC0];
  while (v180 != v105)
  {
    if (v105 >= *(v35 + 16))
    {
      goto LABEL_70;
    }

    sub_1C6FB5E28(v41, v0 + 136);
    sub_1C6FB5E28(v0 + 136, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10, &qword_1C756D610);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_1_51();
      sub_1C712A82C(v107, v108);
      sub_1C6F699F8((v0 + 136), v0 + 216);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v182 = v106;
      if ((v109 & 1) == 0)
      {
        v110 = OUTLINED_FUNCTION_99();
        sub_1C716E46C(v110, v111, v112);
        v106 = v182;
      }

      v114 = *(v106 + 16);
      v113 = *(v106 + 24);
      if (v114 >= v113 >> 1)
      {
        v122 = OUTLINED_FUNCTION_15(v113);
        sub_1C716E46C(v122, v114 + 1, 1);
      }

      v116 = *(v0 + 240);
      v115 = *(v0 + 248);
      __swift_mutable_project_boxed_opaque_existential_0(v0 + 216, v116);
      OUTLINED_FUNCTION_29();
      v118 = v117;
      OUTLINED_FUNCTION_77();
      (*(v118 + 16))();
      v119 = OUTLINED_FUNCTION_121();
      sub_1C71FCD88(v119, v120, v121, v116, v115);
      __swift_destroy_boxed_opaque_existential_1((v0 + 216));

      v106 = v182;
      v35 = v178;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    }

    v41 += 40;
    v105 = (v105 + 1);
  }

  sub_1C71BAEC8(v106);

  v123 = OUTLINED_FUNCTION_117_0();
  sub_1C7122EE4(v123, v124);
  if (v173)
  {
    v126 = *(v0 + 480);
    v181 = *(v0 + 472);
    v127 = *(v0 + 456);

    v128 = OUTLINED_FUNCTION_57_3();
    OUTLINED_FUNCTION_0_22(v128, v129);
    sub_1C754F1AC();
    v130 = OUTLINED_FUNCTION_101_5();
    v131(v130);
    v69 = *(v126 + 8);
    v67 = v127;
    v68 = v181;
    goto LABEL_50;
  }

  v35 = v125;
  v5 = *(v0 + 464);

  sub_1C75504FC();
  v139 = sub_1C754FEEC();
  v140 = sub_1C75511BC();
  if (os_log_type_enabled(v139, v140))
  {
    OUTLINED_FUNCTION_11_3();
    v141 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v142 = swift_slowAlloc();
    v184 = v142;
    *v141 = 134218243;
    *(v141 + 4) = *(v35 + 16);

    OUTLINED_FUNCTION_146_2();
    v143 = MEMORY[0x1E69E7CC0];
    if (*(v35 + 16))
    {
      v180 = v139;
      v182 = MEMORY[0x1E69E7CC0];
      v144 = OUTLINED_FUNCTION_36_12();
      sub_1C6F7ED9C(v144, v145, v146, v147, v148, v149, v150);
      v143 = v182;
      do
      {
        sub_1C6FB5E28(v35 + 32, v0 + 256);
        v151 = *(v0 + 288);
        __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
        v152 = OUTLINED_FUNCTION_24_2();
        v153(v152, v151);
        __swift_destroy_boxed_opaque_existential_1((v0 + 256));
        v182 = v143;
        v154 = *(v143 + 24);
        if (*(v143 + 16) >= v154 >> 1)
        {
          OUTLINED_FUNCTION_15(v154);
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C(v156, v157, v158, v159, v160, v161, v162);
          v143 = v182;
        }

        OUTLINED_FUNCTION_119_6();
      }

      while (!v155);
      v139 = v180;
    }

    *(v0 + 384) = v143;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    OUTLINED_FUNCTION_38_12();
    sub_1C75505FC();
    OUTLINED_FUNCTION_98_6();

    v163 = OUTLINED_FUNCTION_66_2();
    sub_1C6F765A4(v163, v164, v165);
    OUTLINED_FUNCTION_24_2();

    *(v141 + 14) = v0 + 384;
    OUTLINED_FUNCTION_156_1(&dword_1C6F5C000, v166, v167, "%ld random weighted sampled traits:\n%{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v142);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v168 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v168);
  }

  else
  {
  }

  v36 = 0;
LABEL_28:
  sub_1C754F2EC();
  if (v36)
  {

    OUTLINED_FUNCTION_22_26();
    v67 = OUTLINED_FUNCTION_457();
LABEL_50:
    v69(v67, v68);
    OUTLINED_FUNCTION_108_5();

    OUTLINED_FUNCTION_6_0();

    v132();
  }

  else
  {
    OUTLINED_FUNCTION_159_2();
    sub_1C75504FC();
    v70 = sub_1C754FEEC();
    v71 = sub_1C75511BC();

    v179 = v35;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 424);
      OUTLINED_FUNCTION_11_3();
      v73 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v74 = swift_slowAlloc();
      *v73 = 134218243;
      *(v73 + 4) = *(v35 + 16);

      *(v73 + 12) = 2085;
      v75 = *(v72 + 16);
      v76 = MEMORY[0x1E69E7CC0];
      if (v75)
      {
        v169 = v74;
        v170 = v73;
        v171 = v71;
        v172 = v70;
        v77 = *(v0 + 560);
        OUTLINED_FUNCTION_133_4();
        v184 = v76;
        v78 = OUTLINED_FUNCTION_36_12();
        sub_1C6F7ED9C(v78, v79, v80, v81, v82, v83, v84);
        v76 = v184;
        OUTLINED_FUNCTION_191();
        v86 = v70 + v85;
        v174 = *(v5 + 72);
        do
        {
          v87 = *(v0 + 560);
          OUTLINED_FUNCTION_2_47();
          sub_1C712A7D0(v86, v87, v88);
          v182 = 0;
          v183 = 0xE000000000000000;
          sub_1C755180C();
          v89 = v183;
          *(v0 + 336) = v182;
          *(v0 + 344) = v89;
          OUTLINED_FUNCTION_35_10();
          MEMORY[0x1CCA5CD70](*v87, v77[1]);
          v90 = OUTLINED_FUNCTION_132_0();
          MEMORY[0x1CCA5CD70](v90);
          *(v0 + 368) = *(*(v87 + SLODWORD(v180[4].isa)) + 16);
          v91 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v91);

          OUTLINED_FUNCTION_154_1();
          MEMORY[0x1CCA5CD70](v77[2], v77[3]);
          OUTLINED_FUNCTION_79_7();
          *(v0 + 640) = *(v87 + SHIDWORD(v180[3].isa));
          sub_1C75519EC();
          v92 = *(v0 + 336);
          v93 = *(v0 + 344);
          OUTLINED_FUNCTION_1_51();
          sub_1C712A82C(v87, v94);
          v184 = v76;
          v96 = *(v76 + 16);
          v95 = *(v76 + 24);
          if (v96 >= v95 >> 1)
          {
            OUTLINED_FUNCTION_15(v95);
            OUTLINED_FUNCTION_89_5();
            sub_1C6F7ED9C(v98, v99, v100, v101, v102, v103, v104);
            v76 = v184;
          }

          *(v76 + 16) = v96 + 1;
          v97 = v76 + 16 * v96;
          *(v97 + 32) = v92;
          *(v97 + 40) = v93;
          v86 += v174;
          --v75;
        }

        while (v75);
        v70 = v172;
        v71 = v171;
        v74 = v169;
        v73 = v170;
      }

      *(v0 + 376) = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      OUTLINED_FUNCTION_38_12();
      sub_1C75505FC();
      OUTLINED_FUNCTION_98_6();

      v133 = OUTLINED_FUNCTION_66_2();
      sub_1C6F765A4(v133, v134, v135);
      OUTLINED_FUNCTION_24_2();

      *(v73 + 14) = v0 + 376;
      _os_log_impl(&dword_1C6F5C000, v70, v71, "%ld consolidated traits:\n%{sensitive}s", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_81_7();
    OUTLINED_FUNCTION_0_22(*(v0 + 448), *(*(v0 + 448) + 24));
    sub_1C754F1AC();
    v136 = OUTLINED_FUNCTION_57_0();
    v137(v136);

    OUTLINED_FUNCTION_116();

    v138(v179);
  }
}

uint64_t sub_1C7121CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_6(*(v12 + 448));
  OUTLINED_FUNCTION_101_5();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_57_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_117_0();
  v16(v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7121DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_0_67(sub_1C7121E04);
}

uint64_t sub_1C7121E04()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_36_12();
    sub_1C6F7ED9C(v4, v5, v6, v7, v8, v9, v10);
    v11 = v55;
    v12 = v1 + 32;
    v13 = v1 + 32;
    v14 = v2;
    do
    {
      sub_1C6FB5E28(v13, v0 + 16);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      OUTLINED_FUNCTION_113_5();
      v18 = v17(v15, v16);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v26 = *(v11 + 16);
      v25 = *(v11 + 24);
      v27 = v11;
      if (v26 >= v25 >> 1)
      {
        sub_1C6F7ED9C(v25 > 1, v26 + 1, 1, v21, v22, v23, v24);
        v27 = v11;
      }

      *(v27 + 16) = v26 + 1;
      v28 = v27 + 16 * v26;
      *(v28 + 32) = v18;
      *(v28 + 40) = v20;
      v13 += 40;
      --v14;
      v11 = v27;
    }

    while (v14);
    v56 = MEMORY[0x1E69E7CC0];
    v29 = OUTLINED_FUNCTION_36_12();
    sub_1C716E23C(v29, v30, v31);
    v3 = v56;
    do
    {
      sub_1C6FB5E28(v12, v0 + 56);
      v32 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v33 = OUTLINED_FUNCTION_51();
      v34(v33, v32);
      sub_1C706D154();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v38 = *(v56 + 16);
      v37 = *(v56 + 24);
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_15(v37);
        OUTLINED_FUNCTION_186();
        sub_1C716E23C(v39, v40, v41);
      }

      *(v56 + 16) = v38 + 1;
      *(v56 + 8 * v38 + 32) = v36;
      v12 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 192) = v3;
  *(v0 + 200) = v11;
  v42 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1(*(v0 + 152), *(*(v0 + 152) + 24));
  v43 = swift_task_alloc();
  *(v0 + 208) = v43;
  *(v43 + 16) = v42;
  *(v43 + 24) = v11;
  v44 = swift_task_alloc();
  *(v0 + 216) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A48, &unk_1C756D7E0);
  *v44 = v0;
  v44[1] = sub_1C71220B0;
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE2A6A0](v45, v46, v47, v48, v49, v50, v51, v52);
}

uint64_t sub_1C71220B0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_107_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71221EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v25 = v22[28];
  v26 = v22[17];
  sub_1C754F2CC();
  v28 = v22[24];
  v27 = v22[25];
  if (v25)
  {
    v29 = v22[21];

    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v30 + 8))(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v32 = v22[21];
    v31 = v22[22];
    v33 = swift_task_alloc();
    v33[2] = v32;
    v33[3] = v26;
    v33[4] = v28;
    v33[5] = v31;
    v33[6] = v27;
    sub_1C75504FC();
    sub_1C6FD9DD4();
    OUTLINED_FUNCTION_160_2();

    sub_1C754F2EC();
    sub_1C703FE30();
    v44 = v43;

    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = v22[18];
      a10 = MEMORY[0x1E69E7CC0];
      v47 = OUTLINED_FUNCTION_106_3();
      result = sub_1C716E46C(v47, v48, v49);
      v50 = a10;
      a9 = v46 + 32;
      v51 = 32;
      while (1)
      {
        v52 = *(v44 + v51);
        if (v52 >= v22[23])
        {
          break;
        }

        sub_1C6FB5E28(a9 + 40 * v52, (v22 + 12));
        a10 = v50;
        v54 = *(v50 + 16);
        v53 = *(v50 + 24);
        if (v54 >= v53 >> 1)
        {
          v61 = OUTLINED_FUNCTION_15(v53);
          sub_1C716E46C(v61, v54 + 1, 1);
        }

        v55 = v22[15];
        v56 = v22[16];
        v57 = __swift_mutable_project_boxed_opaque_existential_0((v22 + 12), v55);
        OUTLINED_FUNCTION_29();
        v59 = v58;
        v60 = OUTLINED_FUNCTION_77();
        (*(v59 + 16))(v60, v57, v55);
        sub_1C71FCD88(v54, v60, &a10, v55, v56);
        __swift_destroy_boxed_opaque_existential_1(v22 + 12);

        v50 = a10;
        v51 += 8;
        if (!--v45)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_17_1();

      return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
    }
  }

  return result;
}

uint64_t sub_1C71224EC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 168);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7122570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7122594, 0, 0);
}

uint64_t sub_1C7122594()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[20];
  v2 = sub_1C7550B3C();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C71226B4;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0, &qword_1C756D7F0);
  OUTLINED_FUNCTION_62(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 requestTextEmbeddings:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C71226B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_1C7122914;
  }

  else
  {
    v5 = sub_1C71227B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C71227B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 144);
  v14 = sub_1C6FB6304();
  if (v14)
  {
    v15 = v14;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C716E518(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v16 = 0;
    v17 = v33;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v16, v13);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v18 = PNTextEmbeddingResult.embeddingFloatValues.getter();
      swift_unknownObjectRelease();
      a9 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_15(v19);
        OUTLINED_FUNCTION_89_5();
        sub_1C716E518(v21, v22, v23);
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      *(v17 + 8 * v20 + 32) = v18;
    }

    while (v15 != v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(v12 + 152);

  *v24 = v17;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1C7122914()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

void sub_1C712297C(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (__OFADD__(*a2, 1))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v64 = a7;
  v13 = a2[1];
  v14 = *(a4 + 16);
  sub_1C754F2DC();
  if (v7)
  {
    return;
  }

  v67 = v14;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v70 = *(a5 + 16);
  if (v8 >= v70)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v66 = v13;
  v62[1] = a1;
  v63 = v8;
  v68 = a5 + 32;
  v15 = *(a5 + 32 + 8 * v8);
  v16 = *a1;
  v19 = *(*a1 + 56);
  v18 = *a1 + 56;
  v17 = v19;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v65 = a4 + 32;
  sub_1C75504FC();
  v71 = v16;
  sub_1C75504FC();
  v24 = 0;
  v69 = a6;
  do
  {
    do
    {
      if (v22)
      {
        goto LABEL_13;
      }

      do
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v25 >= v23)
        {

          sub_1C70F428C(v75, v63);
          return;
        }

        v22 = *(v18 + 8 * v25);
        ++v24;
      }

      while (!v22);
      v24 = v25;
LABEL_13:
      v26 = *(*(v71 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v22)))));
      if (v26 >= v70)
      {
        goto LABEL_35;
      }

      v72 = 0;
      v73 = v26;
      v27 = *(v68 + 8 * v26);
      v28 = *(v15 + 32);
      v29 = v28 & 0x3F;
      v30 = ((1 << v28) + 63) >> 6;
      swift_bridgeObjectRetain_n();
      isStackAllocationSafe = swift_bridgeObjectRetain_n();
      if (v29 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        v32 = v62;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v33 = v62 - ((8 * v30 + 15) & 0x3FFFFFFFFFFFFFF0);
        sub_1C71FAC38(0, v30, v33);
        v34 = v72;
        sub_1C70A9104(v33, v30, v15, v27);
        v36 = v34;
        if (!v34)
        {
          v37 = v35;

          swift_bridgeObjectRelease_n();
          goto LABEL_17;
        }

        swift_willThrow();

        __break(1u);
LABEL_43:

        MEMORY[0x1CCA5F8E0](v32, -1, -1);
        __break(1u);
        return;
      }

      v32 = swift_slowAlloc();

      v43 = v72;
      v44 = sub_1C70A9074(v32, v30, v15, v27);
      v36 = v43;
      if (v43)
      {
        goto LABEL_43;
      }

      v37 = v44;

      MEMORY[0x1CCA5F8E0](v32, -1, -1);
LABEL_17:

      v22 &= v22 - 1;
      v38 = v37[2];

      v39 = *(v15 + 16);
      if (!v39)
      {
        v40 = v69;
        break;
      }

      v40 = v69;
    }

    while (*(v69 + 112) >= v38 / v39);
    v75[0] = v66;
    if (v73 >= v67)
    {
      goto LABEL_37;
    }

    v74 = *(v65 + 8 * v73);
    sub_1C75504FC();
    static PairwiseMetrics.cosineSimilarity(_:_:)(v75, &v74);
    v42 = v41;
  }

  while (*(v40 + 120) >= v42);

  v45 = v64;
  sub_1C75504FC();
  v46 = sub_1C754FEEC();
  v47 = sub_1C755117C();

  if (os_log_type_enabled(v46, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v75[0] = v50;
    *v49 = 136643075;
    v51 = *(v45 + 16);
    if (v63 < v51)
    {
      v52 = v50;
      v53 = v45 + 32;
      v54 = (v53 + 16 * v63);
      v55 = *v54;
      v56 = v54[1];
      sub_1C75504FC();
      v57 = sub_1C6F765A4(v55, v56, v75);

      *(v49 + 4) = v57;
      *(v49 + 12) = 2085;
      if (v73 < v51)
      {
        v58 = (v53 + 16 * v73);
        v59 = *v58;
        v60 = v58[1];
        sub_1C75504FC();
        v61 = sub_1C6F765A4(v59, v60, v75);

        *(v49 + 14) = v61;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "Trait %{sensitive}s is too similar to other trait %{sensitive}s, dropping it", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v52, -1, -1);
        MEMORY[0x1CCA5F8E0](v49, -1, -1);

        return;
      }

LABEL_41:
      __break(1u);
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }
}

void sub_1C7122EE4(uint64_t a1, NSObject *a2)
{
  v6 = type metadata accessor for PersonalTrait(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v247 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v249 = (v10 - v9);
  v248 = type metadata accessor for GlobalTrait(0);
  OUTLINED_FUNCTION_29();
  v246 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v245 = sub_1C754DFFC();
  OUTLINED_FUNCTION_29();
  v250 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v239 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v239 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v239 - v24;
  v26 = *(v2 + 168);
  v254 = v2;
  v27 = *(v2 + 160);
  v252 = a2;
  sub_1C71BABB8();
  v29 = v28;
  *&v253 = a1;
  sub_1C71BAD20();
  v257[0] = v29;
  sub_1C6FD339C(v30);
  if (v27 < *(v257[0] + 16))
  {
    v243 = *(v257[0] + 16);
    v244 = v27;
    v255 = v257[0];
    v251 = v3;
    v31 = [objc_opt_self() globalAndPersonalTraitsSeed];
    v32 = &unk_1EDD0B000;
    if (v31)
    {
      v33 = v31;
      sub_1C755103C();
      v34 = sub_1C755104C();
      v35 = sub_1C7551FCC();

      v262 = &type metadata for Random.Arc4Random;
      v263 = sub_1C7054F1C();
      Random.Arc4Random.init(seed:)(v35, &v261);
      v36 = v33;
      OUTLINED_FUNCTION_100();
      v37 = sub_1C754FEEC();
      v38 = sub_1C75511BC();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_104_5();
        v39 = swift_slowAlloc();
        *v19 = 134218498;
        *(v19 + 4) = v26;
        *(v19 + 6) = 2048;
        *(v19 + 14) = v244;
        *(v19 + 11) = 2112;
        *(v19 + 3) = v36;
        *v39 = v33;
        v40 = v36;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v41, v42, v43, v44, v45, 0x20u);
        sub_1C6FB5FC8(v39, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v46 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v46);
      }

      else
      {
      }
    }

    else
    {
      sub_1C754DFEC();
      v47 = *(v250 + 16);
      v48 = v245;
      v47(v22, v25, v245);
      v262 = &type metadata for Random.Arc4Random;
      v32 = &unk_1EDD0B000;
      v263 = sub_1C7054F1C();
      Random.Arc4Random.init(seed:)(v22, &v261);
      v47(v19, v25, v48);
      OUTLINED_FUNCTION_100();
      v49 = sub_1C754FEEC();
      v50 = sub_1C75511BC();
      v51 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v51, v52))
      {
        OUTLINED_FUNCTION_98();
        v53 = swift_slowAlloc();
        v241 = v50;
        v54 = v53;
        OUTLINED_FUNCTION_98();
        v242 = swift_slowAlloc();
        v257[0] = v242;
        *v54 = 134218498;
        *(v54 + 4) = v26;
        *(v54 + 12) = 2048;
        *(v54 + 14) = v244;
        *(v54 + 22) = 2080;
        sub_1C712A6F8();
        v240 = v49;
        v239 = sub_1C7551D8C();
        v56 = v55;
        v57 = *(v250 + 8);
        v57(v19, v48);
        v58 = sub_1C6F765A4(v239, v56, v257);

        *(v54 + 24) = v58;
        OUTLINED_FUNCTION_143();
        v59 = v240;
        _os_log_impl(v60, v240, v61, v62, v54, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v242);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v63 = OUTLINED_FUNCTION_27_20();
        MEMORY[0x1CCA5F8E0](v63);

        v57(v25, v48);
      }

      else
      {

        v64 = *(v250 + 8);
        v64(v19, v48);
        v64(v25, v48);
      }
    }

    v65 = v252;
    isa = v252[2].isa;
    v67 = MEMORY[0x1E69E7CC0];
    if (isa)
    {
      v257[0] = MEMORY[0x1E69E7CC0];
      sub_1C716DA70(0, isa, 0);
      OUTLINED_FUNCTION_100();
      v69 = *(v68 + 176);
      v67 = v257[0];
      OUTLINED_FUNCTION_191();
      v71 = v65 + v70;
      v73 = *(v72 + 72);
      v74 = v248;
      do
      {
        OUTLINED_FUNCTION_2_47();
        sub_1C712A7D0(v71, v15, v75);
        v76 = *(*(v15 + *(v74 + 8)) + 16);
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v15, v77);
        v257[0] = v67;
        v79 = *(v67 + 16);
        v78 = *(v67 + 24);
        if (v79 >= v78 >> 1)
        {
          v80 = OUTLINED_FUNCTION_15(v78);
          sub_1C716DA70(v80, v79 + 1, 1);
          v74 = v248;
          v67 = v257[0];
        }

        *(v67 + 16) = v79 + 1;
        *(v67 + 8 * v79 + 32) = v69 * v76;
        v71 += v73;
        --isa;
      }

      while (isa);
      v32 = &unk_1EDD0B000;
    }

    v81 = v253;
    v82 = *(v253 + 16);
    v83 = MEMORY[0x1E69E7CC0];
    if (v82)
    {
      v257[0] = MEMORY[0x1E69E7CC0];
      v84 = OUTLINED_FUNCTION_105();
      sub_1C716DA70(v84, v85, v86);
      v83 = v257[0];
      OUTLINED_FUNCTION_191();
      v88 = v81 + v87;
      v90 = *(v89 + 72);
      v91 = v249;
      do
      {
        OUTLINED_FUNCTION_9_32();
        v92 = OUTLINED_FUNCTION_140_4();
        sub_1C712A7D0(v92, v93, v94);
        v95 = *(*(v91 + 16) + 16);
        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v91, v96);
        v257[0] = v83;
        v98 = *(v83 + 16);
        v97 = *(v83 + 24);
        if (v98 >= v97 >> 1)
        {
          OUTLINED_FUNCTION_15(v97);
          OUTLINED_FUNCTION_186();
          sub_1C716DA70(v99, v100, v101);
          v91 = v249;
          v83 = v257[0];
        }

        *(v83 + 16) = v98 + 1;
        *(v83 + 8 * v98 + 32) = v95;
        v88 += v90;
        --v82;
      }

      while (v82);
      v32 = &unk_1EDD0B000;
    }

    v257[0] = v67;
    sub_1C6FD3300(v83);
    v102 = v251;
    v103 = static StoryGenerationUtilities.normalizedSoftmaxWithTemperature(_:temperature:)(v257[0], v26);
    v104 = v102;

    v105 = v255;
    if (v102)
    {
      goto LABEL_35;
    }

    v106 = v32[495];
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_100();
    v107 = sub_1C754FEEC();
    v108 = sub_1C75511BC();

    if (os_log_type_enabled(v107, v108))
    {
      OUTLINED_FUNCTION_13_3();
      v109 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v110 = swift_slowAlloc();
      v264 = v110;
      *v109 = 136642819;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C74BB2E0(v105, v103);
      v257[0] = v111;
      sub_1C7127558(v257);
      v248 = v110;
      v249 = v109;
      LODWORD(v250) = v108;
      v251 = 0;

      v116 = v257[0];
      v117 = *(v257[0] + 16);
      if (v117)
      {
        v246 = v107;
        v247 = v103;
        v252 = v106;
        v260 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v117, 0, v112, v113, v114, v115);
        v118 = v260;
        v245 = v116;
        v106 = v116 + 32;
        v104 = &qword_1C75711D0;
        v253 = xmmword_1C75604F0;
        do
        {
          sub_1C712A774(v106, v257, &qword_1EC217AC0, &qword_1C75711D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
          v119 = swift_allocObject();
          *(v119 + 16) = v253;
          v120 = v258;
          v121 = v259;
          __swift_project_boxed_opaque_existential_1(v257, v258);
          OUTLINED_FUNCTION_113_5();
          v123 = v122(v120, v121);
          v125 = v124;
          *(v119 + 56) = MEMORY[0x1E69E6158];
          *(v119 + 64) = sub_1C6F6D524();
          *(v119 + 32) = v123;
          *(v119 + 40) = v125;
          sub_1C712A774(v257, v256, &qword_1EC217AC0, &qword_1C75711D0);
          v126 = v256[5];
          *(v119 + 96) = MEMORY[0x1E69E63B0];
          *(v119 + 104) = MEMORY[0x1E69E6438];
          *(v119 + 72) = v126;
          __swift_destroy_boxed_opaque_existential_1(v256);
          v127 = sub_1C75506BC();
          v129 = v128;
          sub_1C6FB5FC8(v257, &qword_1EC217AC0, &qword_1C75711D0);
          v260 = v118;
          v131 = *(v118 + 16);
          v130 = *(v118 + 24);
          if (v131 >= v130 >> 1)
          {
            v133 = OUTLINED_FUNCTION_15(v130);
            sub_1C6F7ED9C(v133, v131 + 1, 1, v134, v135, v136, v137);
            v118 = v260;
          }

          *(v118 + 16) = v131 + 1;
          v132 = v118 + 16 * v131;
          *(v132 + 32) = v127;
          *(v132 + 40) = v129;
          v106 += 48;
          --v117;
        }

        while (v117);

        OUTLINED_FUNCTION_150_2();
        v103 = v247;
        v107 = v246;
      }

      else
      {

        v118 = MEMORY[0x1E69E7CC0];
      }

      v257[0] = v118;
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C703328C();
      OUTLINED_FUNCTION_132_0();
      sub_1C75505FC();
      OUTLINED_FUNCTION_131_2();
      v139 = OUTLINED_FUNCTION_90();
      sub_1C6F765A4(v139, v140, v141);
      OUTLINED_FUNCTION_98_5();

      v142 = v249;
      *(v249 + 1) = v138;
      OUTLINED_FUNCTION_143();
      _os_log_impl(v143, v107, v144, v145, v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v248);
      v146 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v146);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      OUTLINED_FUNCTION_147_1();
      v105 = v255;
    }

    else
    {
    }

    v147 = v244;
    v148 = sub_1C71CD888(0, v243);
    v149 = v262;
    v150 = v263;
    v151 = __swift_mutable_project_boxed_opaque_existential_0(&v261, v262);
    static StoryGenerationUtilities.weightedSamplingWithoutReplacement<A, B>(items:probabilities:sampleSize:using:)(v148, v103, v147, v151, MEMORY[0x1E69E6530], v149, v150);
    v153 = v152;

    if (v104)
    {

LABEL_35:

      __swift_destroy_boxed_opaque_existential_1(&v261);
      return;
    }

    v154 = *(v153 + 16);
    v155 = MEMORY[0x1E69E7CC0];
    v252 = v106;
    if (v154)
    {
      *&v253 = v148;
      v251 = 0;
      v256[0] = MEMORY[0x1E69E7CC0];
      v156 = OUTLINED_FUNCTION_105();
      sub_1C716E46C(v156, v157, v158);
      v155 = v256[0];
      v250 = v153;
      v159 = (v153 + 32);
      while (1)
      {
        v161 = *v159++;
        v160 = v161;
        if ((v161 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v160 >= *(v255 + 16))
        {
          goto LABEL_67;
        }

        sub_1C6FB5E28(v105 + 32 + 40 * v160, v257);
        v256[0] = v155;
        v104 = *(v155 + 16);
        v162 = *(v155 + 24);
        if (v104 >= v162 >> 1)
        {
          v172 = OUTLINED_FUNCTION_15(v162);
          sub_1C716E46C(v172, v104 + 1, 1);
        }

        v163 = v258;
        v164 = v259;
        __swift_mutable_project_boxed_opaque_existential_0(v257, v258);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v165);
        OUTLINED_FUNCTION_14_0();
        LODWORD(v106) = v167 - v166;
        (*(v168 + 16))(v167 - v166);
        v169 = OUTLINED_FUNCTION_98_1();
        sub_1C71FCD88(v169, v170, v171, v163, v164);
        __swift_destroy_boxed_opaque_existential_1(v257);
        v155 = v256[0];
        if (!--v154)
        {
          OUTLINED_FUNCTION_147_1();
          v105 = v255;
          OUTLINED_FUNCTION_150_2();
          v148 = v253;
          v153 = v250;
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);

      __break(1u);
    }

    else
    {
LABEL_44:
      v173 = sub_1C706E520(v148);
      v174 = sub_1C706E520(v153);
      sub_1C723883C(v174, v173);
      OUTLINED_FUNCTION_98_5();

      sub_1C75504FC();
      v175 = sub_1C7117424(v173, v105);

      sub_1C75504FC();
      OUTLINED_FUNCTION_100();
      v177 = v176 + v106;
      v178 = sub_1C754FEEC();
      sub_1C75511BC();
      v179 = OUTLINED_FUNCTION_23();
      v181 = os_log_type_enabled(v179, v180);
      v251 = v104;
      if (v181)
      {
        LODWORD(v250) = v177;
        *&v253 = v178;
        OUTLINED_FUNCTION_11_3();
        v182 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v183 = swift_slowAlloc();
        v256[0] = v183;
        *v182 = 134218243;
        *(v182 + 4) = *(v155 + 16);

        *(v182 + 12) = 2085;
        v184 = MEMORY[0x1E69E7CC0];
        if (*(v155 + 16))
        {
          v248 = v183;
          v249 = v182;
          v255 = v175;
          v264 = MEMORY[0x1E69E7CC0];
          v185 = OUTLINED_FUNCTION_73_7();
          sub_1C6F7ED9C(v185, v186, v187, v188, v189, v190, v191);
          v184 = v264;
          do
          {
            sub_1C6FB5E28(v155 + 32, v257);
            v192 = v259;
            __swift_project_boxed_opaque_existential_1(v257, v258);
            v193 = OUTLINED_FUNCTION_24_2();
            v194(v193, v192);
            __swift_destroy_boxed_opaque_existential_1(v257);
            OUTLINED_FUNCTION_135_4();
            if (v196)
            {
              v198 = OUTLINED_FUNCTION_15(v195);
              sub_1C6F7ED9C(v198, v192, 1, v199, v200, v201, v202);
              v184 = v264;
            }

            OUTLINED_FUNCTION_116_6();
          }

          while (!v197);
          v175 = v255;
          v182 = v249;
          v183 = v248;
        }

        v257[0] = v184;
        v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        OUTLINED_FUNCTION_38_12();
        sub_1C75505FC();
        OUTLINED_FUNCTION_131_2();
        v204 = OUTLINED_FUNCTION_90();
        sub_1C6F765A4(v204, v205, v206);
        OUTLINED_FUNCTION_98_5();

        *(v182 + 14) = v203;
        OUTLINED_FUNCTION_143();
        v207 = v253;
        _os_log_impl(v208, v253, v209, v210, v182, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v183);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_150_2();
      }

      else
      {
      }

      sub_1C75504FC();
      OUTLINED_FUNCTION_100();
      v211 = sub_1C754FEEC();
      v212 = sub_1C75511BC();
      if (os_log_type_enabled(v211, v212))
      {
        LODWORD(v254) = v212;
        OUTLINED_FUNCTION_11_3();
        v213 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        *&v253 = swift_slowAlloc();
        v256[0] = v253;
        *v213 = 134218243;
        *(v213 + 4) = *(v175 + 16);

        *(v213 + 12) = 2085;
        if (*(v175 + 16))
        {
          v250 = v213;
          v252 = v211;
          v264 = MEMORY[0x1E69E7CC0];
          v214 = OUTLINED_FUNCTION_73_7();
          sub_1C6F7ED9C(v214, v215, v216, v217, v218, v219, v220);
          v221 = v264;
          v255 = v175;
          v211 = (v175 + 32);
          do
          {
            sub_1C6FB5E28(v175 + 32, v257);
            v222 = v259;
            __swift_project_boxed_opaque_existential_1(v257, v258);
            v223 = OUTLINED_FUNCTION_24_2();
            v224(v223, v222);
            __swift_destroy_boxed_opaque_existential_1(v257);
            OUTLINED_FUNCTION_135_4();
            if (v196)
            {
              v226 = OUTLINED_FUNCTION_15(v225);
              sub_1C6F7ED9C(v226, v222, 1, v227, v228, v229, v230);
              v221 = v264;
            }

            OUTLINED_FUNCTION_116_6();
          }

          while (!v197);

          OUTLINED_FUNCTION_150_2();
          v213 = v250;
        }

        else
        {

          v221 = MEMORY[0x1E69E7CC0];
        }

        v257[0] = v221;
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        OUTLINED_FUNCTION_38_12();
        sub_1C75505FC();
        OUTLINED_FUNCTION_131_2();
        v232 = OUTLINED_FUNCTION_90();
        sub_1C6F765A4(v232, v233, v234);
        OUTLINED_FUNCTION_98_5();

        *(v213 + 14) = v231;
        OUTLINED_FUNCTION_143();
        _os_log_impl(v235, v211, v236, v237, v213, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v253);
        v238 = OUTLINED_FUNCTION_27_20();
        MEMORY[0x1CCA5F8E0](v238);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        OUTLINED_FUNCTION_147_1();
      }

      else
      {

        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRelease_n();
      }

      __swift_destroy_boxed_opaque_existential_1(&v261);
    }
  }
}

uint64_t sub_1C7124084()
{
  OUTLINED_FUNCTION_42();
  v1[77] = v0;
  v1[76] = v2;
  v1[75] = v3;
  v1[74] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18, &unk_1C7577780);
  OUTLINED_FUNCTION_76(v5);
  v1[78] = OUTLINED_FUNCTION_77();
  v6 = type metadata accessor for PersonalTrait(0);
  v1[79] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[80] = v7;
  v1[81] = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A20, &qword_1C756D630);
  OUTLINED_FUNCTION_76(v8);
  v1[82] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for GlobalTrait(0);
  v1[83] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[84] = v10;
  v1[85] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F38C();
  v1[86] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[87] = v12;
  v1[88] = OUTLINED_FUNCTION_77();
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C7124224()
{
  v152 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2("TraitGenerator.selectRandomTraits", 33);
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2CC();
  if (v1)
  {
    v5 = *(v0 + 608);
    OUTLINED_FUNCTION_18_0(*(v0 + 600), *(v2 + 24));
    sub_1C754F1AC();
    v6 = OUTLINED_FUNCTION_15_1();
    v7(v6);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v5);
LABEL_41:

    OUTLINED_FUNCTION_6_0();

    return v138();
  }

  v149 = v2;
  v9 = *(v0 + 592);
  v10 = *(v9 + 16);
  v146 = v10;
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v9 + 32;
    do
    {
      v13 = *(v0 + 664);
      v14 = *(v0 + 656);
      sub_1C6FB5E28(v12, v0 + 352);
      sub_1C6F699F8((v0 + 352), v0 + 392);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10, &qword_1C756D610);
      v15 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v14, v15 ^ 1u, 1, v13);
      if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
      {
        sub_1C6FB5FC8(*(v0 + 656), &unk_1EC217A20, &qword_1C756D630);
      }

      else
      {
        OUTLINED_FUNCTION_69_4();
        sub_1C7129CC4(v16, v17, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB1D60(v24, v25, v26, v11);
          v11 = v27;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_15(v19);
          OUTLINED_FUNCTION_90_9();
          sub_1C6FB1D60(v28, v29, v30, v31);
          v11 = v32;
        }

        *(v11 + 16) = v20 + 1;
        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_69_4();
        sub_1C7129CC4(v21, v22, v23);
      }

      v12 += 40;
      --v10;
    }

    while (v10);
  }

  sub_1C71BABB8();
  v34 = v33;

  TraitGenerator.Configuration.init()(__src);
  memcpy((v0 + 16), __src, 0xA8uLL);
  sub_1C7129C94(v0 + 16);
  v35 = sub_1C7124B50(v34, *(v0 + 128));

  sub_1C75504FC();
  v36 = sub_1C754FEEC();
  v37 = sub_1C755117C();

  v148 = v35;
  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_13_3();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v39 = swift_slowAlloc();
    v40 = v39;
    v151 = v39;
    *v38 = 136642819;
    v41 = *(v35 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v141 = v39;
      v142 = v37;
      __src[0] = MEMORY[0x1E69E7CC0];
      v43 = OUTLINED_FUNCTION_73_7();
      sub_1C6F7ED9C(v43, v44, v45, v46, v47, v48, v49);
      v42 = __src[0];
      v50 = v35 + 32;
      do
      {
        sub_1C6FB5E28(v50, v0 + 552);
        __swift_project_boxed_opaque_existential_1((v0 + 552), *(v0 + 576));
        OUTLINED_FUNCTION_113_5();
        v51 = OUTLINED_FUNCTION_98_1();
        v53 = v52(v51);
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_1((v0 + 552));
        __src[0] = v42;
        v57 = *(v42 + 16);
        v56 = *(v42 + 24);
        if (v57 >= v56 >> 1)
        {
          v59 = OUTLINED_FUNCTION_15(v56);
          sub_1C6F7ED9C(v59, v57 + 1, 1, v60, v61, v62, v63);
          v42 = __src[0];
        }

        *(v42 + 16) = v57 + 1;
        v58 = v42 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
        v50 += 40;
        --v41;
      }

      while (v41);
      v37 = v142;
      v40 = v141;
    }

    v64 = MEMORY[0x1CCA5D090](v42, MEMORY[0x1E69E6158]);

    v65 = OUTLINED_FUNCTION_57_3();
    sub_1C6F765A4(v65, v66, v67);
    OUTLINED_FUNCTION_51();

    *(v38 + 4) = v64;
    _os_log_impl(&dword_1C6F5C000, v36, v37, "Randomly selected the following global traits: %{sensitive}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v68 = v146;
  if (v146)
  {
    v69 = *(v0 + 592) + 32;
    v70 = MEMORY[0x1E69E7CC0];
    do
    {
      v71 = *(v0 + 632);
      v72 = *(v0 + 624);
      sub_1C6FB5E28(v69, v0 + 432);
      sub_1C6F699F8((v0 + 432), v0 + 472);
      v73 = OUTLINED_FUNCTION_98_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
      swift_dynamicCast();
      OUTLINED_FUNCTION_90_9();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
      if (__swift_getEnumTagSinglePayload(v72, 1, v71) == 1)
      {
        sub_1C6FB5FC8(*(v0 + 624), &qword_1EC217A18, &unk_1C7577780);
      }

      else
      {
        OUTLINED_FUNCTION_66_0();
        sub_1C7129CC4(v79, v80, v81);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB1D20(v87, v88, v89, v70);
          v70 = v90;
        }

        v83 = *(v70 + 16);
        v82 = *(v70 + 24);
        if (v83 >= v82 >> 1)
        {
          OUTLINED_FUNCTION_15(v82);
          OUTLINED_FUNCTION_177();
          sub_1C6FB1D20(v91, v92, v93, v70);
          v70 = v94;
        }

        *(v70 + 16) = v83 + 1;
        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_66_0();
        sub_1C7129CC4(v84, v85, v86);
      }

      v69 += 40;
      --v68;
    }

    while (v68);
  }

  sub_1C71BAD20();
  v96 = v95;

  TraitGenerator.Configuration.init()(v0 + 184);
  sub_1C7129C94(v0 + 184);
  v97 = sub_1C7124B50(v96, *(v0 + 296));

  sub_1C75504FC();
  v98 = sub_1C754FEEC();
  v99 = sub_1C755117C();

  if (os_log_type_enabled(v98, v99))
  {
    OUTLINED_FUNCTION_13_3();
    v100 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v101 = swift_slowAlloc();
    v102 = v101;
    v151 = v101;
    *v100 = 136642819;
    v103 = *(v97 + 16);
    v104 = MEMORY[0x1E69E7CC0];
    if (v103)
    {
      v143 = v101;
      v144 = v100;
      v145 = v99;
      v147 = v98;
      __src[0] = MEMORY[0x1E69E7CC0];
      v105 = OUTLINED_FUNCTION_73_7();
      sub_1C6F7ED9C(v105, v106, v107, v108, v109, v110, v111);
      v104 = __src[0];
      v112 = v97 + 32;
      do
      {
        sub_1C6FB5E28(v112, v0 + 512);
        v113 = *(v0 + 544);
        __swift_project_boxed_opaque_existential_1((v0 + 512), *(v0 + 536));
        v114 = OUTLINED_FUNCTION_51();
        v116 = v115(v114, v113);
        v118 = v117;
        __swift_destroy_boxed_opaque_existential_1((v0 + 512));
        __src[0] = v104;
        v120 = *(v104 + 16);
        v119 = *(v104 + 24);
        if (v120 >= v119 >> 1)
        {
          v122 = OUTLINED_FUNCTION_15(v119);
          sub_1C6F7ED9C(v122, v120 + 1, 1, v123, v124, v125, v126);
          v104 = __src[0];
        }

        *(v104 + 16) = v120 + 1;
        v121 = v104 + 16 * v120;
        *(v121 + 32) = v116;
        *(v121 + 40) = v118;
        v112 += 40;
        --v103;
      }

      while (v103);
      v98 = v147;
      v99 = v145;
      v102 = v143;
      v100 = v144;
    }

    v127 = MEMORY[0x1CCA5D090](v104, MEMORY[0x1E69E6158]);

    v128 = OUTLINED_FUNCTION_57_3();
    sub_1C6F765A4(v128, v129, v130);
    OUTLINED_FUNCTION_51();

    *(v100 + 4) = v127;
    _os_log_impl(&dword_1C6F5C000, v98, v99, "Randomly selected the following personal traits: %{sensitive}s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v131 = *(v0 + 608);
  __src[0] = v148;
  sub_1C6FD339C(v97);
  v132 = __src[0];
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2EC();
  v133 = *(v0 + 704);
  v134 = *(v0 + 696);
  v135 = *(v0 + 688);
  if (v131)
  {

    v136 = OUTLINED_FUNCTION_57_3();
    __swift_project_boxed_opaque_existential_1(v136, v137);
    OUTLINED_FUNCTION_117_0();
    sub_1C754F1AC();
    (*(v134 + 8))(v133, v135);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 600), *(v149 + 24));
  sub_1C754F1AC();
  (*(v134 + 8))(v133, v135);

  OUTLINED_FUNCTION_116();

  return v140(v132);
}

unint64_t sub_1C7124B50(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    if (a2 < 0)
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_29:

      return v4;
    }

LABEL_24:
    v22 = sub_1C754FEEC();
    sub_1C755117C();
    v23 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_13_3();
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v5;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      v31 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v31);
    }

    sub_1C75504FC();
    return v4;
  }

  if ((a2 & 0x8000000000000000) == 0 && v5 <= a2)
  {
    goto LABEL_24;
  }

  v34 = MEMORY[0x1E69E7CD0];
  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v6 = *(v2 + 288);
  v32 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = [v6 nextUnsignedIntegerLessThan_];
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = result;
    if (result >= v5)
    {
      v13 = sub_1C754FEEC();
      v14 = sub_1C755119C();
      v15 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_127();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v13, v14, "Random index out of range!", v17, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {
      v9 = v34;
      if (*(v34 + 16))
      {
        v10 = sub_1C7551F2C();
        v11 = ~(-1 << *(v9 + 32));
        while (1)
        {
          v12 = v10 & v11;
          if (((*(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
          {
            break;
          }

          v10 = v12 + 1;
          if (*(*(v9 + 48) + 8 * v12) == v8)
          {
            goto LABEL_21;
          }
        }
      }

      sub_1C70F428C(v33, v8);
      sub_1C6FB5E28(v32 + 40 * v8, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3688();
        v4 = v20;
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_15(v18);
        sub_1C6FB3688();
        v4 = v21;
      }

      *(v4 + 16) = v19 + 1;
      sub_1C6F699F8(v33, v4 + 40 * v19 + 32);
    }

LABEL_21:
    if (*(v4 + 16) >= a2)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7124E14()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_1C754F38C();
  v1[10] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7124EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v26 = v22[8];
  v25 = v22[9];
  OUTLINED_FUNCTION_141_1(v26, v26[3]);
  sub_1C754F1CC();
  sub_1C71BABB8();
  v28 = sub_1C7124B50(v27, *(v25 + 136));

  v36 = *(v28 + 16);
  if (v36)
  {
    a10 = v26;
    a11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_129_5(v29, v30, v31, v32, v33, v34, v35);
    v37 = a11;
    v38 = v28 + 32;
    do
    {
      sub_1C6FB5E28(v38, (v22 + 2));
      v39 = v22[5];
      v40 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v39);
      OUTLINED_FUNCTION_113_5();
      v41 = OUTLINED_FUNCTION_323();
      v42(v41);
      OUTLINED_FUNCTION_144();
      __swift_destroy_boxed_opaque_existential_1(v22 + 2);
      a11 = v37;
      v44 = v37[2];
      v43 = v37[3];
      if (v44 >= v43 >> 1)
      {
        OUTLINED_FUNCTION_15(v43);
        OUTLINED_FUNCTION_336();
        sub_1C6F7ED9C(v46, v47, v48, v49, v50, v51, v52);
        v37 = a11;
      }

      v37[2] = v44 + 1;
      v45 = &v37[2 * v44];
      v45[4] = v39;
      v45[5] = v40;
      v38 += 40;
      --v36;
    }

    while (v36);
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1C75504FC();
  v53 = sub_1C754FEEC();
  v54 = sub_1C755117C();

  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_13_3();
    v55 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v56 = swift_slowAlloc();
    a11 = v56;
    *v55 = 136642819;
    v57 = MEMORY[0x1CCA5D090](v37, MEMORY[0x1E69E6158]);
    v59 = sub_1C6F765A4(v57, v58, &a11);

    *(v55 + 4) = v59;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v60, v61, "[FedStats] Randomly selected the following global traits: %{sensitive}s)");
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_8_28(v22[8]);
  sub_1C754F1AC();
  v62 = OUTLINED_FUNCTION_15_1();
  v63(v62);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7125154(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 432) = a5;
  *(v6 + 440) = v5;
  *(v6 + 416) = a3;
  *(v6 + 424) = a4;
  *(v6 + 408) = a1;
  *(v6 + 448) = *a2;
  return OUTLINED_FUNCTION_0_67(sub_1C712517C);
}

void sub_1C712517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  v19 = objc_opt_self();
  if (![v19 useGlobalTraitsV3])
  {
    goto LABEL_63;
  }

  if (![v19 useGlobalTraitsV3Captions])
  {
    goto LABEL_63;
  }

  v20 = *(v18 + 408);
  if (!v20)
  {
    goto LABEL_63;
  }

  sub_1C7125BE0(v20);
  *(v18 + 464) = v21;
  v22 = v21;
  v23 = 0;
  v24 = *(v21 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (v24 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    v26 = *(v22 + 8 * v23 + 32);
    v27 = *(v26 + 16);
    v28 = *(v25 + 16);
    if (__OFADD__(v28, v27))
    {
      goto LABEL_67;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v28 + v27 > *(v25 + 24) >> 1)
    {
      sub_1C6FB1814();
      v25 = v29;
    }

    if (*(v26 + 16))
    {
      if ((*(v25 + 24) >> 1) - *(v25 + 16) < v27)
      {
        goto LABEL_69;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v30 = *(v25 + 16);
        v31 = __OFADD__(v30, v27);
        v32 = v30 + v27;
        if (v31)
        {
          goto LABEL_72;
        }

        *(v25 + 16) = v32;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_68;
      }
    }

    ++v23;
  }

  v33 = *(v18 + 440);
  v34 = objc_autoreleasePoolPush();
  v35 = *(v33 + 192);
  v36 = *(v33 + 184);

  v37 = [v36 librarySpecificFetchOptions];
  [v37 setSharingFilter_];

  v38 = objc_opt_self();
  v39 = v37;
  v40 = sub_1C6FCA158(v25, v37, v38);
  *(v18 + 472) = v40;

  objc_autoreleasePoolPop(v34);
  if (!v40)
  {

    sub_1C75504FC();
    v80 = sub_1C754FEEC();
    v81 = sub_1C755119C();

    if (os_log_type_enabled(v80, v81))
    {
      OUTLINED_FUNCTION_13_3();
      v82 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      a14 = swift_slowAlloc();
      *v82 = 136315138;
      MEMORY[0x1CCA5D090](v25, MEMORY[0x1E69E6158]);

      v83 = OUTLINED_FUNCTION_98_1();
      v86 = sub_1C6F765A4(v83, v84, v85);

      *(v82 + 4) = v86;
      OUTLINED_FUNCTION_127_0();
      _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a14);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

LABEL_63:
    v125 = *(v18 + 424);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v126 + 8))(v125);
    OUTLINED_FUNCTION_94_1();

    v130(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    return;
  }

  v41 = *(v18 + 448);
  v40;

  v49 = 0;
  v50 = *(v41 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v53 = (v41 + 32 + 72 * v49);
  while (v50 != v49)
  {
    if (v49 >= *(v41 + 16))
    {
      goto LABEL_70;
    }

    v42 = memcpy((v18 + 264), v53, 0x41uLL);
    if ((*(v18 + 288) & 1) == 0 && !*(v18 + 280))
    {
      sub_1C7025F3C(v18 + 264, v18 + 336);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D97C();
      }

      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_15(v54);
        OUTLINED_FUNCTION_186();
        sub_1C716D97C();
      }

      ++v49;
      *(v52 + 16) = v55 + 1;
      v42 = memcpy((v52 + 72 * v55 + 32), (v18 + 264), 0x41uLL);
      goto LABEL_20;
    }

    v53 += 72;
    ++v49;
  }

  v56 = *(v52 + 16);
  v136 = v18;
  if (v56)
  {
    v137 = v51;
    OUTLINED_FUNCTION_129_5(v42, v43, v44, v45, v46, v47, v48);
    v57 = 0;
    v58 = v137;
    v59 = *(v137 + 16);
    v60 = 16 * v59;
    do
    {
      v61 = v52;
      v63 = *(v52 + v57 + 64);
      v62 = *(v52 + v57 + 72);
      v64 = *(v137 + 24);
      sub_1C75504FC();
      if (v59 >= v64 >> 1)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C6F7ED9C(v66, v67, v68, v69, v70, v71, v72);
      }

      *(v137 + 16) = v59 + 1;
      v65 = v137 + v60;
      *(v65 + 32) = v63;
      *(v65 + 40) = v62;
      v60 += 16;
      v57 += 72;
      ++v59;
      --v56;
      v52 = v61;
    }

    while (v56);

    v18 = v136;
  }

  else
  {

    v58 = MEMORY[0x1E69E7CC0];
  }

  v92 = 0;
  v93 = *(v18 + 456);
  v94 = *(v93 + 16);
  v95 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v96 = (v93 + 32 + 72 * v92);
  while (v94 != v92)
  {
    if (v92 >= *(v93 + 16))
    {
      goto LABEL_71;
    }

    v73 = memcpy((v18 + 120), v96, 0x42uLL);
    if ((*(v18 + 144) & 1) == 0 && !*(v18 + 136))
    {
      sub_1C7025FF8(v18 + 120, v18 + 192);
      v138 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D940();
      }

      v97 = v95;
      v98 = *(v95 + 16);
      v99 = *(v97 + 24);
      if (v98 >= v99 >> 1)
      {
        OUTLINED_FUNCTION_15(v99);
        OUTLINED_FUNCTION_186();
        sub_1C716D940();
        v97 = v138;
      }

      ++v92;
      *(v97 + 16) = v98 + 1;
      v73 = memcpy((v97 + 72 * v98 + 32), (v18 + 120), 0x42uLL);
      v95 = v97;
      goto LABEL_41;
    }

    v96 += 72;
    ++v92;
  }

  v100 = *(v95 + 16);
  if (v100)
  {
    v135 = v58;
    v139 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_129_5(v73, v74, v75, v76, v77, v78, v79);
    v101 = 0;
    v102 = v139;
    v103 = *(v139 + 16);
    v104 = 16 * v103;
    do
    {
      v105 = v95;
      v106 = v95 + v101;
      v107 = *(v95 + v101 + 64);
      v108 = *(v106 + 72);
      v109 = *(v139 + 24);
      v110 = v103 + 1;
      sub_1C75504FC();
      if (v103 >= v109 >> 1)
      {
        sub_1C6F7ED9C(v109 > 1, v110, 1, v111, v112, v113, v114);
      }

      *(v139 + 16) = v110;
      v115 = v139 + v104;
      *(v115 + 32) = v107;
      *(v115 + 40) = v108;
      v104 += 16;
      v101 += 72;
      ++v103;
      --v100;
      v95 = v105;
    }

    while (v100);

    v58 = v135;
    v18 = v136;
  }

  else
  {

    v102 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6FD2568(v102);
  *(v18 + 480) = v58;
  *(v18 + 112) = 0;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 16) = 0u;
  v116 = swift_task_alloc();
  *(v18 + 488) = v116;
  *v116 = v18;
  v116[1] = sub_1C7125980;
  OUTLINED_FUNCTION_94_1();

  sub_1C74B075C(v117, v118, v119, v120, v121, v122, v123);
}

uint64_t sub_1C7125980()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[62] = v5;
  v3[63] = v0;

  if (v0)
  {
    v6 = v3[59];

    v7 = sub_1C7125B84;
  }

  else
  {

    v7 = sub_1C7125AAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C7125AAC()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[54];
  if (v1)
  {
    v2 = v0[62];
    sub_1C75504FC();
    sub_1C7163564(0xD000000000000016, 0x80000001C759F740, v1, v2);
  }

  v3 = v0[59];
  v4 = OUTLINED_FUNCTION_0_11();
  sub_1C7126D40(v4, v5);

  v6 = OUTLINED_FUNCTION_57_3();

  return v7(v6);
}

uint64_t sub_1C7125B84()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

void sub_1C7125BE0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_autoreleasePoolPush();
  sub_1C7125C60(v2, a1, &v5, &v6);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1C7125C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v149 = a3;
  v142 = a2;
  v133 = a4;
  v156[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F50, &unk_1C756D790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v134 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v151 = &v125 - v8;
  v152 = sub_1C754DFFC();
  v147 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v125 - v11;
  v135 = sub_1C754EF5C();
  v144 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v143 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1C754EFBC();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v137 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1C754EF7C();
  v138 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v139 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v125 - v16;
  v145 = sub_1C754EFDC();
  v18 = *(v145 - 1);
  MEMORY[0x1EEE9AC00](v145);
  v20 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C754DD2C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v125 - v26;
  v28 = objc_opt_self();
  v136 = a1;
  v29 = [*(a1 + 184) photoLibraryURL];
  sub_1C754DCCC();

  v30 = sub_1C754DC8C();
  v140 = *(v22 + 8);
  v141 = v22 + 8;
  v140(v24, v21);
  v156[0] = 0;
  v31 = [v28 requestVUIndexURLForPhotoLibraryURL:v30 error:v156];

  v32 = v156[0];
  if (!v31)
  {
    v38 = v156[0];
    v36 = sub_1C754DBEC();

    result = swift_willThrow();
    goto LABEL_22;
  }

  sub_1C754DCCC();
  v33 = v32;

  (*(v18 + 104))(v20, *MEMORY[0x1E69E0608], v145);
  (*(v22 + 16))(v17, v27, v21);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
  sub_1C754EFFC();
  swift_allocObject();
  v34 = v148;
  v35 = sub_1C754EFCC();
  v36 = v34;
  if (v34)
  {
    result = (v140)(v27, v21);
    goto LABEL_22;
  }

  v128 = v35;
  v129 = 0;
  v126 = v27;
  v127 = v21;
  LOBYTE(v156[0]) = 1;
  sub_1C754EF6C();
  v39 = v135;
  (*(v144 + 104))(v143, *MEMORY[0x1E69E05B8], v135);
  v40 = v142 + 56;
  v41 = 1 << *(v142 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v142 + 56);
  v44 = (v41 + 63) >> 6;
  v145 = (v147 + 32);
  sub_1C75504FC();
  v45 = 0;
  v148 = MEMORY[0x1E69E7CC0];
  while (v43)
  {
    v46 = v45;
LABEL_13:
    v43 &= v43 - 1;
    sub_1C75504FC();
    v47 = v151;
    sub_1C754DF7C();

    if (__swift_getEnumTagSinglePayload(v47, 1, v152) == 1)
    {
      sub_1C6FB5FC8(v47, &unk_1EC217A30, &unk_1C75687E0);
      v45 = v46;
    }

    else
    {
      v48 = *v145;
      (*v145)(v130, v47, v152);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB2B50(0, *(v148 + 16) + 1, 1, v148);
        v148 = v53;
      }

      v50 = *(v148 + 16);
      v49 = *(v148 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1C6FB2B50(v49 > 1, v50 + 1, 1, v148);
        v148 = v54;
      }

      v51 = v147;
      v52 = v148;
      *(v148 + 16) = v50 + 1;
      v48((v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50), v130, v152);
      v45 = v46;
      v39 = v135;
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v46 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v46);
    ++v45;
    if (v43)
    {
      goto LABEL_13;
    }
  }

  v55 = v138;
  v56 = v139;
  v57 = v134;
  v58 = v146;
  (*(v138 + 16))(v134, v139, v146);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
  v59 = v143;
  v60 = v129;
  sub_1C754EFEC();
  v129 = v60;
  if (!v60)
  {

    sub_1C6FB5FC8(v57, &qword_1EC216F50, &unk_1C756D790);
    (*(v144 + 8))(v59, v39);
    v61 = sub_1C754EF8C();
    v62 = *(v61 + 16);
    if (v62)
    {
      v156[0] = MEMORY[0x1E69E7CC0];
      sub_1C716D5B0(0, v62, 0);
      v63 = 0;
      v64 = v156[0];
      v142 = v61 + 32;
      v148 = v147 + 8;
      v149 = (v147 + 16);
      v135 = v61;
      v134 = v62;
      do
      {
        if (v63 >= *(v61 + 16))
        {
          goto LABEL_79;
        }

        v65 = *(v142 + 8 * v63);
        v66 = *(v65 + 2);
        if (v66)
        {
          v144 = v63;
          v145 = v64;
          v155 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          sub_1C6F7ED9C(0, v66, 0, v67, v68, v69, v70);
          v71 = v155;
          v72 = *(v147 + 80);
          v143 = v65;
          v73 = &v65[(v72 + 32) & ~v72];
          v151 = *(v147 + 72);
          v74 = *(v147 + 16);
          do
          {
            v75 = v150;
            v76 = v152;
            v74(v150, v73, v152);
            v77 = sub_1C754DF8C();
            v79 = v78;
            (*v148)(v75, v76);
            v155 = v71;
            v85 = *(v71 + 16);
            v84 = *(v71 + 24);
            if (v85 >= v84 >> 1)
            {
              sub_1C6F7ED9C(v84 > 1, v85 + 1, 1, v80, v81, v82, v83);
              v71 = v155;
            }

            *(v71 + 16) = v85 + 1;
            v86 = v71 + 16 * v85;
            *(v86 + 32) = v77;
            *(v86 + 40) = v79;
            v73 += v151;
            --v66;
          }

          while (v66);

          v64 = v145;
          v58 = v146;
          v61 = v135;
          v62 = v134;
          v63 = v144;
        }

        else
        {
          v71 = MEMORY[0x1E69E7CC0];
        }

        v156[0] = v64;
        v88 = v64[2];
        v87 = v64[3];
        if (v88 >= v87 >> 1)
        {
          sub_1C716D5B0(v87 > 1, v88 + 1, 1);
          v64 = v156[0];
        }

        ++v63;
        v64[2] = (v88 + 1);
        v64[v88 + 4] = v71;
      }

      while (v63 != v62);
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v89 = sub_1C754FEEC();
    v90 = sub_1C75511BC();
    v91 = os_log_type_enabled(v89, v90);
    v145 = v64;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v156[0] = v93;
      *v92 = 134218242;
      *(v92 + 4) = v64[2];

      *(v92 + 12) = 2080;
      swift_getKeyPath();
      v94 = v64;
      v95 = v64[2];
      if (v95)
      {
        v151 = v93;
        LODWORD(v152) = v90;
        v155 = MEMORY[0x1E69E7CC0];
        sub_1C716D854();
        v96 = v155;
        v97 = (v94 + 4);
        do
        {
          v153 = *v97;
          sub_1C75504FC();
          swift_getAtKeyPath();

          v98 = v154;
          v155 = v96;
          v99 = *(v96 + 16);
          if (v99 >= *(v96 + 24) >> 1)
          {
            sub_1C716D854();
            v96 = v155;
          }

          *(v96 + 16) = v99 + 1;
          *(v96 + 8 * v99 + 32) = v98;
          ++v97;
          v95 = (v95 - 1);
        }

        while (v95);

        v58 = v146;
        LOBYTE(v90) = v152;
        v93 = v151;
      }

      else
      {

        v96 = MEMORY[0x1E69E7CC0];
      }

      v100 = MEMORY[0x1CCA5D090](v96, MEMORY[0x1E69E6530]);
      v102 = v101;

      v103 = sub_1C6F765A4(v100, v102, v156);

      *(v92 + 14) = v103;
      _os_log_impl(&dword_1C6F5C000, v89, v90, "Visual Clustering produced %ld clusters of sizes: %s", v92, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1CCA5F8E0](v93, -1, -1);
      MEMORY[0x1CCA5F8E0](v92, -1, -1);

      v64 = v145;
    }

    else
    {
    }

    v104 = 0;
    v105 = v64[2];
    v106 = MEMORY[0x1E69E7CC0];
    v107 = MEMORY[0x1E69E7CC0];
    v108 = v136;
    while (v105 != v104)
    {
      if (v104 >= v64[2])
      {
        goto LABEL_78;
      }

      v109 = v64[v104++ + 4];
      if (*(v109 + 2) >= *(v108 + 144))
      {
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156[0] = v107;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C716D5B0(0, v107[2] + 1, 1);
          v107 = v156[0];
        }

        v112 = v107[2];
        v111 = v107[3];
        v108 = v136;
        if (v112 >= v111 >> 1)
        {
          sub_1C716D5B0(v111 > 1, v112 + 1, 1);
          v108 = v136;
          v107 = v156[0];
        }

        v107[2] = v112 + 1;
        v107[v112 + 4] = v109;
        v64 = v145;
      }
    }

    v113 = v107[2];
    if (!v113)
    {

      (*(v131 + 8))(v137, v132);
      (*(v138 + 8))(v139, v58);
      result = (v140)(v126, v127);
      v115 = MEMORY[0x1E69E7CC0];
LABEL_76:
      *v133 = v115;
      return result;
    }

    v156[0] = v106;
    sub_1C716D5B0(0, v113, 0);
    v114 = *(v136 + 152);
    if ((v114 & 0x8000000000000000) == 0)
    {
      v115 = v156[0];
      v116 = 4;
      do
      {
        v117 = v107[v116];
        v118 = v117[2];
        if (v118 >= v114)
        {
          v119 = v114;
        }

        else
        {
          v119 = v117[2];
        }

        if (v114)
        {
          v120 = v119;
        }

        else
        {
          v120 = 0;
        }

        if (v118 == v120)
        {
          sub_1C75504FC();
        }

        else if (v120)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
          v121 = swift_allocObject();
          v122 = _swift_stdlib_malloc_size(v121);
          v121[2] = v120;
          v121[3] = 2 * ((v122 - 32) / 16);
          swift_arrayInitWithCopy();
          v117 = v121;
        }

        else
        {
          v117 = MEMORY[0x1E69E7CC0];
        }

        v156[0] = v115;
        v124 = v115[2];
        v123 = v115[3];
        if (v124 >= v123 >> 1)
        {
          sub_1C716D5B0(v123 > 1, v124 + 1, 1);
          v115 = v156[0];
        }

        v115[2] = v124 + 1;
        v115[v124 + 4] = v117;
        ++v116;
        --v113;
      }

      while (v113);

      (*(v131 + 8))(v137, v132);
      (*(v138 + 8))(v139, v146);
      result = (v140)(v126, v127);
      goto LABEL_76;
    }

LABEL_80:
    __break(1u);
  }

  sub_1C6FB5FC8(v57, &qword_1EC216F50, &unk_1C756D790);
  (*(v144 + 8))(v59, v39);
  (*(v55 + 8))(v56, v58);
  result = (v140)(v126, v127);
  v36 = v129;
LABEL_22:
  *v149 = v36;
  return result;
}

uint64_t sub_1C7126D40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  for (i = MEMORY[0x1E69E7CC0]; v3; --v3)
  {
    v51 = *v4;
    sub_1C75504FC();
    sub_1C712716C(&v51, a2, &v49);

    v6 = v50;
    if (v50)
    {
      v7 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        i = v11;
      }

      v9 = i[2];
      v8 = i[3];
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_15(v8);
        OUTLINED_FUNCTION_90_9();
        sub_1C6FB1814();
        i = v12;
      }

      i[2] = v9 + 1;
      v10 = &i[2 * v9];
      v10[4] = v7;
      v10[5] = v6;
    }

    ++v4;
  }

  v13 = i[2];
  if (v13)
  {
    v14 = -v13;
    v15 = i + 5;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 1;
    do
    {
      v19 = *(v15 - 1);
      v18 = *v15;
      v20 = HIBYTE(*v15) & 0xF;
      if ((*v15 & 0x2000000000000000) == 0)
      {
        v20 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1C75604F0;
        *(v21 + 56) = MEMORY[0x1E69E6530];
        *(v21 + 64) = MEMORY[0x1E69E65A8];
        *(v21 + 32) = v17;
        *(v21 + 96) = MEMORY[0x1E69E6158];
        *(v21 + 104) = sub_1C6F6D524();
        *(v21 + 72) = v19;
        *(v21 + 80) = v18;
        sub_1C75504FC();
        sub_1C75506BC();
        OUTLINED_FUNCTION_144();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v16 = v25;
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_15(v22);
          OUTLINED_FUNCTION_336();
          sub_1C6FB1814();
          v16 = v26;
        }

        *(v16 + 16) = v23 + 1;
        v24 = v16 + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v21;
      }

      ++v17;
      v15 += 2;
    }

    while (v14 + v17 != 1);

    v49 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v27 = sub_1C75505FC();
    v29 = v28;

    v49 = 10;
    v50 = 0xE100000000000000;
    MEMORY[0x1CCA5CD70](v27, v29);

    v30 = v49;
    v31 = v50;
    sub_1C75504FC();
    v32 = sub_1C754FEEC();
    v33 = sub_1C75511BC();

    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_13_3();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1C6F765A4(v30, v31, &v49);
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v36, v37, v38, v39, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v40 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v40);
    }
  }

  else
  {
    v30 = 0x656E6F4E20;

    v32 = sub_1C754FEEC();
    sub_1C75511BC();
    v41 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_127();
      *v43 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v44, v45, v46, v47, v43, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  return v30;
}

void sub_1C712716C(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  v5 = *result;
  v6 = *(*result + 16);
  v7 = *result + 40;
  v8 = MEMORY[0x1E69E7CC0];
  v29 = v7;
LABEL_2:
  v9 = (v7 + 16 * v4);
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    if (*(a2 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_1C75504FC();
      v12 = sub_1C6F78124(v10, v11);
      if (v13)
      {
        v14 = (*(a2 + 56) + 16 * v12);
        v15 = *v14;
        v16 = v14[1];
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1C755BAB0;
          *(v18 + 56) = MEMORY[0x1E69E6158];
          *(v18 + 64) = sub_1C6F6D524();
          *(v18 + 32) = v15;
          *(v18 + 40) = v16;
          sub_1C75504FC();
          v19 = sub_1C75506BC();
          v21 = v20;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v8 = v24;
          }

          v22 = *(v8 + 16);
          if (v22 >= *(v8 + 24) >> 1)
          {
            sub_1C6FB1814();
            v8 = v25;
          }

          ++v4;
          *(v8 + 16) = v22 + 1;
          v23 = v8 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v21;
          v7 = v29;
          goto LABEL_2;
        }
      }
    }

    v9 += 2;
    ++v4;
  }

  if (*(v8 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v26 = sub_1C75505FC();
    v28 = v27;
  }

  else
  {

    v26 = 0;
    v28 = 0;
  }

  *a3 = v26;
  a3[1] = v28;
}

uint64_t TraitGenerator.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C7129C94(__dst);
  v1 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
  __swift_destroy_boxed_opaque_existential_1((v0 + 248));

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  v2 = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t TraitGenerator.__deallocating_deinit()
{
  TraitGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C71274B0(uint64_t *a1)
{
  v2 = *(type metadata accessor for PersonalTrait(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C9C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C71275C4(v6);
  *a1 = v3;
}

uint64_t sub_1C7127558(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D8C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C71276F4(v6);
  *a1 = v2;
  return result;
}

void sub_1C71275C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PersonalTrait(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PersonalTrait(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C7127BB4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C71277F8(0, v2, 1, a1);
  }
}

uint64_t sub_1C71276F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AC0, &qword_1C75711D0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C71285B8(v7, v8, a1, v4);
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
    return sub_1C7127A80(0, v2, 1, a1);
  }

  return result;
}