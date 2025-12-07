uint64_t sub_1DA33BEA0()
{
  v43 = v0;
  v1 = v0[13];
  v2 = v0[14];
  sub_1DA34B910();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DA2E7E4C(v0[13], &qword_1ECBA6118, &qword_1DA352EE0);
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v3 = sub_1DA34C8E0();
    __swift_project_value_buffer(v3, qword_1EE109060);

    v4 = sub_1DA34C8C0();
    v5 = sub_1DA34CD90();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v42[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1DA300D78(v7, v6, v42);
      _os_log_impl(&dword_1DA2E0000, v4, v5, "DeviceExpertTellMeGeneratedFlow#donateSirSuggestions() could not parse UUID from %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

LABEL_17:
    OUTLINED_FUNCTION_5_15();

    v38 = v0[1];

    return v38();
  }

  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  v10 = *(sub_1DA34BC00() + 16);

  if (!v10)
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[3];
    v16 = sub_1DA34C8E0();
    __swift_project_value_buffer(v16, qword_1EE109060);
    (*(v13 + 16))(v12, v15, v14);

    v17 = sub_1DA34C8C0();
    v18 = sub_1DA34CD90();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[15];
    v41 = v0[16];
    v21 = v0[14];
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    if (v19)
    {
      v40 = v0[14];
      v25 = v0[4];
      v26 = v0[5];
      v27 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1DA300D78(v25, v26, v42);
      *(v27 + 12) = 2080;
      v28 = sub_1DA34BF40();
      v30 = v29;
      (*(v23 + 8))(v22, v24);
      v31 = sub_1DA300D78(v28, v30, v42);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_1DA2E0000, v17, v18, "DeviceExpertTellMeGeneratedFlow#donateSirSuggestions() - No suggestions to donate for requestId: %s, query: %s", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      (*(v20 + 8))(v41, v40);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v41, v21);
    }

    goto LABEL_17;
  }

  v0[2] = MEMORY[0x1E69E7CC0];
  v11 = sub_1DA34BC00();
  sub_1DA33CD4C(v11, v0 + 2);

  sub_1DA34C6B0();
  v0[17] = sub_1DA34C6A0();
  v33 = v0[11];
  v32 = v0[12];
  v34 = v0[2];
  v0[18] = v34;
  *v32 = v34;
  (*(v33 + 104))();

  v35 = swift_task_alloc();
  v0[19] = v35;
  *v35 = v0;
  v35[1] = sub_1DA33C4CC;
  v36 = v0[16];
  v37 = v0[12];

  return MEMORY[0x1EEE403E8](v36, v37);
}

uint64_t sub_1DA33C4CC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1DA33C748;
  }

  else
  {
    v5 = sub_1DA33C660;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA33C660(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[4];
  v4 = sub_1DA34BC00();
  v5 = sub_1DA34BFA0();
  sub_1DA33CE0C(v4, 1, v3, v2, v5, v6);

  v7 = OUTLINED_FUNCTION_2_19();
  v8(v7);

  OUTLINED_FUNCTION_5_15();

  v9 = v1[1];

  return v9();
}

uint64_t sub_1DA33C748()
{
  v1 = *(v0 + 160);
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = v1;
  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DA2E0000, v4, v5, "DeviceExpertTellMeGeneratedFlow#donateSirSuggestions() failed with error: %@", v6, 0xCu);
    sub_1DA2E7E4C(v7, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  sub_1DA34BC00();
  sub_1DA34BFA0();
  v10 = OUTLINED_FUNCTION_1_23();
  sub_1DA33CE0C(v10, v11, v12, v13, v14, v15);

  v16 = OUTLINED_FUNCTION_2_19();
  v17(v16);

  OUTLINED_FUNCTION_5_15();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DA33C928(uint64_t a1, uint64_t *a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6128, qword_1DA352EE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = (&v28 - v4);
  v5 = sub_1DA34C6D0();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA34BB70();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v33 = a1;
  sub_1DA34BB40();
  v14 = *(v8 + 104);
  v14(v11, *MEMORY[0x1E69BCD10], v7);
  sub_1DA33D31C();
  sub_1DA34CC40();
  sub_1DA34CC40();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v35 == v34)
  {
    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v16 = sub_1DA34C6F0();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v16);
    v17 = v29;
    sub_1DA34C6C0();
    v18 = v17;
  }

  else
  {
    sub_1DA34BB40();
    v14(v11, *MEMORY[0x1E69BCD08], v7);
    sub_1DA34CC40();
    sub_1DA34CC40();
    v15(v11, v7);
    result = (v15)(v13, v7);
    if (v35 != v34)
    {
      return result;
    }

    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v20 = sub_1DA34BB50();
    v21 = v28;
    *v28 = v20;
    v21[1] = v22;
    v23 = *MEMORY[0x1E69D31A0];
    v24 = sub_1DA34C6F0();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v24);
    v18 = v29;
    sub_1DA34C6C0();
  }

  v25 = v32;
  sub_1DA2FBE80();
  v26 = *(*v25 + 16);
  sub_1DA2FBF3C(v26);
  v27 = *v25;
  *(v27 + 16) = v26 + 1;
  return (*(v30 + 32))(v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v18, v31);
}

uint64_t sub_1DA33CD4C(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_1DA34BB60() - 8);
    result = sub_1DA33C928(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

uint64_t sub_1DA33CE0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v42 = a5;
  v41 = a4;
  v40 = a3;
  v8 = sub_1DA34BB70();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v15 = sub_1DA34BB60();
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v49 = v22;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v48 = *(v21 + 56);
    v47 = *MEMORY[0x1E69BCD10];
    v24 = (v9 + 104);
    v46 = (v9 + 8);
    v36 = *MEMORY[0x1E69BCD08];
    v38 = 0x80000001DA3569F0;
    v37 = a2 & 1;
    v50 = v21;
    v45 = (v21 - 8);
    v53 = v12;
    v52 = v14;
    v39 = v8;
    v51 = v15;
    while (1)
    {
      v57 = v20;
      v56 = v23;
      v49(v19);
      sub_1DA34BB40();
      v25 = *v24;
      (*v24)(v12, v47, v8);
      sub_1DA33D31C();
      sub_1DA34CC40();
      sub_1DA34CC40();
      v26 = v19;
      v27 = *v46;
      (*v46)(v12, v8);
      v27(v14, v8);
      v55 = __src[0];
      v54 = v59;
      if (__src[0] == v59)
      {
        break;
      }

      sub_1DA34BB40();
      v25(v12, v36, v8);
      sub_1DA34CC40();
      sub_1DA34CC40();
      v27(v12, v8);
      v27(v14, v8);
      v19 = v26;
      if (__src[0] == v59)
      {
        v28 = sub_1DA34BB50();
        v30 = v33;
        v31 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        goto LABEL_7;
      }

LABEL_8:
      result = (*v45)(v19, v51);
      v23 = v56 + v48;
      v20 = v57 - 1;
      v12 = v53;
      v14 = v52;
      if (v57 == 1)
      {
        return result;
      }
    }

    v28 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v30 = v29;
    v31 = 0;
    v32 = 0;
    v19 = v26;
LABEL_7:
    __src[0] = 0xD00000000000001DLL;
    __src[1] = v38;
    __src[2] = v40;
    __src[3] = v41;
    __src[4] = v42;
    __src[5] = v43;
    __src[6] = v28;
    __src[7] = v30;
    __src[8] = v31;
    __src[9] = v32;
    LOBYTE(__src[10]) = v55 == v54;
    BYTE1(__src[10]) = v37;
    memcpy(__dst, __src, 0x52uLL);
    v34 = *(v44 + 248);

    sub_1DA33A0F0(__dst, v34);
    sub_1DA33D374(__src);
    v8 = v39;
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_1DA33D31C()
{
  result = qword_1ECBA6120;
  if (!qword_1ECBA6120)
  {
    sub_1DA34BB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_15()
{
}

uint64_t sub_1DA33D478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA33D5A0;

  return v9(a1, a2, a3);
}

uint64_t sub_1DA33D5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TPSTip.bodyContentOrText.getter()
{
  v1 = sub_1DA33DF78(v0);
  if (v1)
  {
    v2 = sub_1DA33DCBC(v1);

    if (!v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A00, &qword_1DA34E630);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DA34DC80;
      *(v2 + 32) = sub_1DA34CAC0();
    }

    return v2;
  }

  else
  {
    sub_1DA33DFE4(v0);
    if (v4)
    {
      v5 = sub_1DA34CB30();
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_opt_self() textContentWithText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B70, &qword_1DA34F208);
    v7 = sub_1DA34CC70();

    v8 = sub_1DA33DA5C(v7);

    return v8;
  }
}

uint64_t sub_1DA33D7D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  v9 = [v1 fullContentAssets];
  v10 = [v2 language];
  v11 = sub_1DA34CB40();
  v13 = v12;

  v14 = [v2 assetFileInfoManager];
  v15 = objc_allocWithZone(MEMORY[0x1E69DA3C0]);
  v16 = sub_1DA33DEF0(v9, v11, v13, 0, v14);
  v17 = [v2 fullContentAssets];
  v18 = [v2 language];
  v19 = sub_1DA34CB40();
  v21 = v20;

  v22 = [v2 assetFileInfoManager];
  v23 = objc_allocWithZone(MEMORY[0x1E69DA3C0]);
  v24 = sub_1DA33DEF0(v17, v19, v21, 1, v22);
  v25 = v16;
  sub_1DA33DDFC(v16, 2, v8);

  v26 = v24;
  sub_1DA33DDFC(v24, 2, v6);

  LODWORD(v17) = [objc_opt_self() isPhoneUI];
  if (v17)
  {
    v27 = 1.28033473;
  }

  else
  {
    v27 = 0.842975207;
  }

  v28 = v32;
  sub_1DA33E048(v8, v32);
  v29 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  result = sub_1DA33E048(v6, v28 + *(v29 + 20));
  *(v28 + *(v29 + 24)) = v27;
  return result;
}

uint64_t sub_1DA33DA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DA3481F4(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B70, &qword_1DA34F208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DA3481F4((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DA33DB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DA348A6C(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DA348A6C((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DA33DCBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1DA3481F4(0, v2, 0);
  v3 = a1 + 32;
  v4 = v9;
  if (v2)
  {
    while (1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DA3481F4((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v3 += 8;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1DA33DDFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 assetPathFromAssetConfiguration:v7 type:a2];
    if (v8)
    {
      v9 = v8;
      sub_1DA34CB40();

      sub_1DA34B8B0();
    }
  }

  v11 = sub_1DA34B8C0();

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
}

id sub_1DA33DEF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1DA34CB30();

  v10 = [v5 initWithAssets:a1 language:v9 userInterfaceStyle:a4 assetFileInfoManager:a5];

  return v10;
}

uint64_t sub_1DA33DF78(void *a1)
{
  v1 = [a1 bodyContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
  v3 = sub_1DA34CC70();

  return v3;
}

uint64_t sub_1DA33DFE4(void *a1)
{
  v1 = [a1 bodyText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t sub_1DA33E048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA33E0CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DA33E10C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DA33E164(uint64_t a1)
{
  *(a1 + 8) = sub_1DA33E194();
  result = sub_1DA33AA90();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA33E194()
{
  result = qword_1ECBA6130;
  if (!qword_1ECBA6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6130);
  }

  return result;
}

uint64_t sub_1DA33E1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a2;
  sub_1DA34BA70();
  OUTLINED_FUNCTION_0();
  v111 = v3;
  v112 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v110 = v6 - v5;
  v104 = sub_1DA34BC60();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v103 = v11 - v10;
  v99 = sub_1DA34BD00();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v98 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v89 - v21;
  v23 = sub_1DA34BA40();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v93 = sub_1DA34BF40();
  v92 = v30;
  v91 = sub_1DA34BD10();
  v90 = v31;
  v32 = sub_1DA34BAF0();
  v33 = *(v32 + 16);
  v95 = a1;
  if (v33)
  {
    v35 = *(v25 + 16);
    v34 = v25 + 16;
    v109 = v35;
    v36 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    v89[1] = v32;
    v37 = v32 + v36;
    v108 = *(v34 + 56);
    LODWORD(v107) = *MEMORY[0x1E69BCCC0];
    v102 = *MEMORY[0x1E69BCCC8];
    v96 = (v13 + 8);
    v97 = (v13 + 32);
    v100 = (v8 + 8);
    v101 = (v8 + 32);
    v113 = MEMORY[0x1E69E7CC0];
    v105 = v34;
    v106 = v20;
    while (1)
    {
      v109(v29, v37, v23);
      sub_1DA34BA30();
      v38 = sub_1DA34BA20();
      if (__swift_getEnumTagSinglePayload(v22, 1, v38) == 1)
      {
        v39 = OUTLINED_FUNCTION_9_8();
        v40(v39);
      }

      else
      {
        sub_1DA33F8E8(v22, v20);
        v41 = OUTLINED_FUNCTION_12_9();
        v43 = v42(v41);
        if (v43 == v107)
        {
          v44 = OUTLINED_FUNCTION_12_9();
          v45(v44);
          v47 = v103;
          v46 = v104;
          (*v101)(v103, v20, v104);
          v48 = sub_1DA34BB50();
          v50 = v49;
          v51 = v100;
LABEL_10:
          (*v51)(v47, v46);
          v55 = OUTLINED_FUNCTION_9_8();
          v56(v55);
          sub_1DA33F880(v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DA2FC190(0, *(v113 + 2) + 1, 1, v113);
            v113 = v65;
          }

          v58 = *(v113 + 2);
          v57 = *(v113 + 3);
          if (v58 >= v57 >> 1)
          {
            sub_1DA2FC190(v57 > 1, v58 + 1, 1, v113);
            v113 = v66;
          }

          v59 = v113;
          *(v113 + 2) = v58 + 1;
          v60 = &v59[16 * v58];
          *(v60 + 4) = v48;
          *(v60 + 5) = v50;
          v20 = v106;
          goto LABEL_15;
        }

        if (v43 == v102)
        {
          v52 = OUTLINED_FUNCTION_12_9();
          v53(v52);
          v47 = v98;
          v46 = v99;
          (*v97)(v98, v20, v99);
          v48 = sub_1DA34BC40();
          v50 = v54;
          v51 = v96;
          goto LABEL_10;
        }

        v61 = OUTLINED_FUNCTION_9_8();
        v62(v61);
        v63 = OUTLINED_FUNCTION_12_9();
        v64(v63);
      }

      sub_1DA33F880(v22);
LABEL_15:
      v37 += v108;
      if (!--v33)
      {

        a1 = v95;
        goto LABEL_19;
      }
    }
  }

  v113 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v67 = sub_1DA34BA80();
  v68 = *(v67 + 16);
  if (v68)
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1DA348AAC(0, v68, 0);
    v69 = v114;
    v70 = *(v112 + 16);
    v71 = *(v112 + 80);
    v107 = v67;
    v72 = v67 + ((v71 + 32) & ~v71);
    v108 = *(v112 + 72);
    v109 = v70;
    v112 += 16;
    v73 = (v112 - 8);
    do
    {
      v75 = v110;
      v74 = v111;
      v109(v110, v72, v111);
      v76 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
      v78 = v77;
      v79 = sub_1DA34BA50();
      (*v73)(v75, v74);
      v114 = v69;
      v81 = *(v69 + 16);
      v80 = *(v69 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_1DA348AAC((v80 > 1), v81 + 1, 1);
        v69 = v114;
      }

      *(v69 + 16) = v81 + 1;
      v82 = (v69 + 24 * v81);
      v82[4] = v76;
      v82[5] = v78;
      v82[6] = v79;
      v72 += v108;
      --v68;
    }

    while (v68);
    sub_1DA34BFB0();
    OUTLINED_FUNCTION_0_5();
    (*(v83 + 8))(v95);
  }

  else
  {

    sub_1DA34BFB0();
    OUTLINED_FUNCTION_0_5();
    result = (*(v85 + 8))(a1);
    v69 = MEMORY[0x1E69E7CC0];
  }

  v86 = v94;
  v87 = v92;
  *v94 = v93;
  v86[1] = v87;
  v88 = v90;
  v86[2] = v91;
  v86[3] = v88;
  v86[4] = v113;
  v86[5] = v69;
  return result;
}

uint64_t sub_1DA33E928(uint64_t a1)
{
  v1 = sub_1DA34CFF0();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA33E980(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x656D616E5F676174;
  }
}

uint64_t sub_1DA33E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (!v8 && (sub_1DA34D160() & 1) == 0)
  {
    return 0;
  }

  return sub_1DA2FB8DC(a3, a6);
}

uint64_t sub_1DA33EA20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6148, &qword_1DA3530F0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F64C();
  sub_1DA34D250();
  v15 = 0;
  sub_1DA34D0F0();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    OUTLINED_FUNCTION_2_20(&qword_1EE109008, MEMORY[0x1E69E6160]);
    sub_1DA34D120();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1DA33EBC4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6138, &unk_1DA3530E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F64C();
  sub_1DA34D240();
  if (!v1)
  {
    v4 = sub_1DA34D060();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    OUTLINED_FUNCTION_3_16(&qword_1ECBA6140, MEMORY[0x1E69E6190]);
    sub_1DA34D090();
    v6 = OUTLINED_FUNCTION_8_8();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_1DA33EDB0(uint64_t a1)
{
  v1 = sub_1DA34CFF0();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DA33EDFC(char a1)
{
  result = 0x6E6F697473657571;
  switch(a1)
  {
    case 1:
      result = 0x64695F616E71;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x5F747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA33EEAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA33E928(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA33EEDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA33E980(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA33EF10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA33E928(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA33EF38(uint64_t a1)
{
  v2 = sub_1DA33F64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA33EF74(uint64_t a1)
{
  v2 = sub_1DA33F64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA33EFB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA33EBC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1DA33F040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA33EDB0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DA33F070@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA33EDFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DA33F0A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA33EDB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA33F0D8(uint64_t a1)
{
  v2 = sub_1DA33F70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA33F114(uint64_t a1)
{
  v2 = sub_1DA33F70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA33F150(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6168, &unk_1DA353108);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F70C();
  sub_1DA34D250();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_15_10(v11, v12);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_15_10(v13, v14);
    v17 = v3[4];
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    OUTLINED_FUNCTION_2_20(&qword_1EE109008, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_6_14();
    v17 = v3[5];
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F8, qword_1DA352C40);
    sub_1DA33F7B4(&qword_1EE109010, sub_1DA33F82C, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_6_14();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DA33F334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6150, &unk_1DA3530F8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F70C();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = OUTLINED_FUNCTION_14_8();
  v15 = v7;
  LOBYTE(v16) = 1;
  v8 = OUTLINED_FUNCTION_14_8();
  v14 = v9;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  OUTLINED_FUNCTION_3_16(&qword_1ECBA6140, MEMORY[0x1E69E6190]);
  OUTLINED_FUNCTION_5_16();
  sub_1DA34D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F8, qword_1DA352C40);
  sub_1DA33F7B4(&qword_1ECBA6158, sub_1DA33F760, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_5_16();
  sub_1DA34D090();
  v10 = OUTLINED_FUNCTION_1_24();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v16;
  return result;
}

double sub_1DA33F5F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DA33F334(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1DA33F64C()
{
  result = qword_1EE109558;
  if (!qword_1EE109558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109558);
  }

  return result;
}

uint64_t sub_1DA33F6A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A78, qword_1DA34EA00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA33F70C()
{
  result = qword_1EE109570;
  if (!qword_1EE109570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109570);
  }

  return result;
}

unint64_t sub_1DA33F760()
{
  result = qword_1ECBA6160;
  if (!qword_1ECBA6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6160);
  }

  return result;
}

uint64_t sub_1DA33F7B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA60F8, qword_1DA352C40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA33F82C()
{
  result = qword_1EE109548;
  if (!qword_1EE109548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109548);
  }

  return result;
}

uint64_t sub_1DA33F880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA33F8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1DA33F958(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA33FA30(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA33FB0C()
{
  result = qword_1ECBA6170;
  if (!qword_1ECBA6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6170);
  }

  return result;
}

unint64_t sub_1DA33FB64()
{
  result = qword_1ECBA6178;
  if (!qword_1ECBA6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6178);
  }

  return result;
}

unint64_t sub_1DA33FBBC()
{
  result = qword_1EE109578[0];
  if (!qword_1EE109578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE109578);
  }

  return result;
}

unint64_t sub_1DA33FC14()
{
  result = qword_1EE109568;
  if (!qword_1EE109568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109568);
  }

  return result;
}

unint64_t sub_1DA33FC6C()
{
  result = qword_1EE109560;
  if (!qword_1EE109560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109560);
  }

  return result;
}

unint64_t sub_1DA33FCC4()
{
  result = qword_1EE109550;
  if (!qword_1EE109550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109550);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6300];

  return sub_1DA33F6A0(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_3_16(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6330];

  return sub_1DA33F6A0(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return sub_1DA34D060();
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D0F0();
}

unint64_t sub_1DA33FE38(char a1)
{
  result = 0x5F72657473756C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E5F746E65746E69;
      break;
    case 3:
      result = 0x6C616E676973;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA33FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA2EEFDC();

  v4 = 5;
  v5 = &unk_1F55DFEC0;
  do
  {
    v6 = sub_1DA34CE70();

    v5 += 16;
    --v4;
  }

  while (v4);
  return v6;
}

uint64_t sub_1DA33FFC8()
{
  sub_1DA306F34();
  sub_1DA34CAC0();
  v1 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_22();
  sub_1DA30F908(v1, 0x5F72657473756C63, 0xEA00000000006469, v2);
  if (*(v0 + 80))
  {
    v3 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_22();
    v5 = 0x6C616E676973;
    v6 = v3;
    v7 = 0xE600000000000000;
  }

  else
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_22();
    sub_1DA30F908(v10, 0xD000000000000010, 0x80000001DA3552D0, v11);
    sub_1DA33FEDC(v12, v13, v9, v8);
    v14 = sub_1DA34CB30();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_22();
    v5 = 0x6E5F746E65746E69;
    v7 = 0xEB00000000656D61;
    v6 = v14;
  }

  sub_1DA30F908(v6, v5, v7, v4);
  v15 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_22();
  sub_1DA30F908(v15, 0xD000000000000010, 0x80000001DA356A10, v16);
  return v18;
}

uint64_t sub_1DA340198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1DA3401D8(uint64_t result, int a2, int a3)
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
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA340250(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1DA340290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA340330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_8(v14, v15, v16, v17, v18, v19, v20, v21, v40);
  v22 = sub_1DA34BED0();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34BEE0();
  sub_1DA34B980();
  v28 = *(v24 + 8);
  v28(v27, v22);
  Array<A>.asTextRuns()();
  v40 = v29;

  v42 = a1;
  sub_1DA34BEE0();
  sub_1DA34BE80();
  v28(v27, v22);
  Array<A>.asTextRuns()();
  v31 = v30;

  sub_1DA34B9C0();
  Array<A>.asTextRuns()();
  v33 = v32;

  v34 = v41;
  sub_1DA32B41C(v44, v41);
  v35 = *(type metadata accessor for SummarizedAnswerSnippetModel(0) + 28);
  v36 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v36);
  sub_1DA32B41C(v13, v9);
  sub_1DA34C0D0();
  sub_1DA32B48C(v13);
  v45 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v45 = v31;
  OUTLINED_FUNCTION_20_7();
  v45 = v33;
  OUTLINED_FUNCTION_20_7();
  sub_1DA32B41C(v34, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12();
  (*(v37 + 8))(a4 + v35);
  sub_1DA32B41C(v13, v9);
  sub_1DA34C0D0();
  sub_1DA32B48C(v13);
  v45 = v43;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  sub_1DA32B48C(v44);
  sub_1DA34BFB0();
  OUTLINED_FUNCTION_12();
  (*(v38 + 8))(v42);
  return sub_1DA32B48C(v34);
}

uint64_t SummarizedAnswerSnippetModel.body.getter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t type metadata accessor for SummarizedAnswerSnippetModel(uint64_t a1)
{
  result = qword_1EE10A450;
  if (!qword_1EE10A450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummarizedAnswerSnippetModel.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  return v1;
}

uint64_t (*SummarizedAnswerSnippetModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SummarizedAnswerSnippetModel.body.setter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*SummarizedAnswerSnippetModel.body.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SummarizedAnswerSnippetModel.disclaimer.getter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t SummarizedAnswerSnippetModel.disclaimer.setter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*SummarizedAnswerSnippetModel.disclaimer.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

void *SummarizedAnswerSnippetModel.attributionModel.getter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA340AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DA32B41C(a1, &v6 - v3);
  return SummarizedAnswerSnippetModel.attributionModel.setter(v4);
}

uint64_t SummarizedAnswerSnippetModel.attributionModel.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DA32B41C(a1, &v5 - v3);
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  sub_1DA34C100();
  return sub_1DA32B48C(a1);
}

uint64_t (*SummarizedAnswerSnippetModel.attributionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t SummarizedAnswerSnippetModel.context.getter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_13_2(v0);
  return v2;
}

uint64_t SummarizedAnswerSnippetModel.context.setter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return OUTLINED_FUNCTION_10_5(v0, v1);
}

uint64_t (*SummarizedAnswerSnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SummarizedAnswerSnippetModel.init(title:body:disclaimer:attributionModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *(type metadata accessor for SummarizedAnswerSnippetModel(0) + 28);
  v19 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  sub_1DA32B41C(v17, v14);
  sub_1DA34C0D0();
  sub_1DA32B48C(v17);
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v23 = a2;
  OUTLINED_FUNCTION_20_7();
  v23 = a3;
  OUTLINED_FUNCTION_20_7();
  sub_1DA32B41C(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12();
  (*(v20 + 8))(a6 + v18);
  sub_1DA32B41C(v17, v14);
  sub_1DA34C0D0();
  sub_1DA32B48C(v17);
  v23 = v22;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  return sub_1DA32B48C(a4);
}

BOOL SummarizedAnswerSnippetModel.hasTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v0 = *(v2 + 16);

  return v0 != 0;
}

BOOL SummarizedAnswerSnippetModel.hasDisclaimer.getter()
{
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2(v0);
  v1 = *(v3 + 16);

  return v1 != 0;
}

uint64_t SummarizedAnswerSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA34DA00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for [A];
  *(v0 + 32) = v3;
  type metadata accessor for SummarizedAnswerSnippetModel(0);
  sub_1DA34C0F0();
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for [A];
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_1DA341150(uint64_t (*a1)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v2 = a1();

  if (v2 & 1) != 0 || (type metadata accessor for SummarizedAnswerSnippetModel(0), sub_1DA34C0F0(), v3 = a1(), , (v3))
  {
    v4 = 1;
  }

  else
  {
    sub_1DA34C0F0();
    v4 = a1();
  }

  return v4 & 1;
}

uint64_t sub_1DA341248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2036625250 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DA354F50 == a2;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA34D160();

          if (v10)
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

unint64_t sub_1DA3413F4(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0x6D69616C63736964;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA341494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA341248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3414BC(uint64_t a1)
{
  v2 = sub_1DA341768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3414F8(uint64_t a1)
{
  v2 = sub_1DA341768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizedAnswerSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6180, &qword_1DA3535E0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA341768();
  sub_1DA34D250();
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_1_6();
  sub_1DA342158(v11);
  OUTLINED_FUNCTION_5_17(v3, &v25);
  if (!v2)
  {
    v12 = type metadata accessor for SummarizedAnswerSnippetModel(0);
    v13 = v12[5];
    v24 = 1;
    OUTLINED_FUNCTION_5_17(v3 + v13, &v24);
    v14 = v12[6];
    v23 = 2;
    OUTLINED_FUNCTION_5_17(v3 + v14, &v23);
    v15 = v12[7];
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA341844(v16);
    OUTLINED_FUNCTION_4_8(v3 + v15, &v22);
    v17 = v12[8];
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA3419A4(v18);
    OUTLINED_FUNCTION_4_8(v3 + v17, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DA341768()
{
  result = qword_1ECBA6188;
  if (!qword_1ECBA6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6188);
  }

  return result;
}

unint64_t sub_1DA3417BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA342380(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA341844(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    sub_1DA34191C(&unk_1EE10A850);
    sub_1DA34191C(&unk_1EE10A858);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA34191C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5840, "lt");
    sub_1DA342380(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3419A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA342380(&unk_1EE10AC10);
    sub_1DA342380(&unk_1EE10AC18);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SummarizedAnswerSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0();
  v69 = v3;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  v71 = v65 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_0();
  v81 = v7;
  v82 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v73 = v65 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_0();
  v74 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_1();
  v76 = (v12 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v65 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_8(v18, v19, v20, v21, v22, v23, v24, v25, v65[0]);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6190, &qword_1DA3535E8);
  OUTLINED_FUNCTION_0();
  v75 = v26;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3_1();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v65 - v33;
  v35 = type metadata accessor for SummarizedAnswerSnippetModel(0);
  OUTLINED_FUNCTION_12();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v65 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v37 + 28);
  v41 = type metadata accessor for AttributionModel(0);
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v41);
  sub_1DA32B41C(v34, v31);
  v83 = v40;
  sub_1DA34C0D0();
  sub_1DA32B48C(v34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA341768();
  v42 = v80;
  sub_1DA34D240();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v81 + 8))(&v39[v83], v82);
  }

  else
  {
    v43 = v17;
    v80 = v39;
    v44 = v76;
    v67 = v35;
    v68 = a1;
    v88 = 0;
    OUTLINED_FUNCTION_2_4();
    v46 = sub_1DA342158(v45);
    v47 = v77;
    OUTLINED_FUNCTION_10_12(v46, &v88);
    v48 = *(v74 + 32);
    v49 = v79;
    v79 = v74 + 32;
    v66 = v48;
    v50 = (v48)(v80, v49, v47);
    v87 = 1;
    OUTLINED_FUNCTION_10_12(v50, &v87);
    v51 = v47;
    v52 = v67;
    v66(&v80[*(v67 + 20)], v43, v51);
    v86 = 2;
    v65[1] = 0;
    sub_1DA34D090();
    v54 = v81;
    v53 = v82;
    v66(&v80[*(v52 + 24)], v44, v77);
    v85 = 3;
    OUTLINED_FUNCTION_2_4();
    sub_1DA341844(v55);
    v56 = v73;
    sub_1DA34D090();
    (*(v54 + 40))(&v80[v83], v56, v53);
    v84 = 4;
    OUTLINED_FUNCTION_2_4();
    sub_1DA3419A4(v57);
    v58 = v71;
    v59 = v72;
    sub_1DA34D090();
    v60 = OUTLINED_FUNCTION_9_9();
    v61(v60);
    v62 = v58;
    v63 = v80;
    (*(v69 + 32))(&v80[*(v67 + 32)], v62, v59);
    sub_1DA342230(v63, v70);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return sub_1DA342294(v63);
  }
}

unint64_t sub_1DA342158(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA3417BC(&unk_1EE109F68);
    sub_1DA3417BC(&unk_1EE109F70);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA342230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA342294(uint64_t a1)
{
  v2 = type metadata accessor for SummarizedAnswerSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA342380(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA342454(uint64_t a1)
{
  sub_1DA3063E8(319, &qword_1EE10AC50, &qword_1ECBA58C0, &qword_1DA34DF10);
  if (v1 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC88, &qword_1ECBA5840, "lt");
    if (v2 <= 0x3F)
    {
      sub_1DA2F33D8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SummarizedAnswerSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA342608()
{
  result = qword_1ECBA6198;
  if (!qword_1ECBA6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6198);
  }

  return result;
}

unint64_t sub_1DA342660()
{
  result = qword_1ECBA61A0;
  if (!qword_1ECBA61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61A0);
  }

  return result;
}

unint64_t sub_1DA3426B8()
{
  result = qword_1ECBA61A8;
  if (!qword_1ECBA61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SummarizedAnswerSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_1DA34C0D0();
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = OUTLINED_FUNCTION_76();
  v6[9] = v8;
  v12 = OUTLINED_FUNCTION_6_15(v8, v9, v10, v11, MEMORY[0x1E69E5C80]);
  v6[10] = v12;
  v6[11] = *(v12 - 8);
  v6[12] = OUTLINED_FUNCTION_76();
  sub_1DA34CE20();
  v6[13] = OUTLINED_FUNCTION_76();
  v6[14] = *(a3 - 8);
  v13 = OUTLINED_FUNCTION_76();
  v6[15] = v13;
  v17 = OUTLINED_FUNCTION_6_15(v13, v14, v15, v16, MEMORY[0x1E69E5CB8]);
  v6[16] = v17;
  v6[17] = *(v17 - 8);
  v6[18] = OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6DFA0](sub_1DA34297C, 0, 0);
}

uint64_t sub_1DA34297C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1DA34CC90();
  (*(v2 + 16))(v1, v3, v4);
  sub_1DA34CC30();
  v5 = v0[13];
  v6 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_1DA34CE30();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = OUTLINED_FUNCTION_2_21();
    v8(v7);

    v9 = OUTLINED_FUNCTION_5_18();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_4_19();
    v12(v11);
    OUTLINED_FUNCTION_0_23();
    v16 = v13;
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v9 = OUTLINED_FUNCTION_1_25(v14);
    v10 = v16;
  }

  return v10(v9);
}

uint64_t sub_1DA342B60()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1DA342E48;
  }

  else
  {
    v2 = sub_1DA342C7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA342C7C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1DA34CCD0();
  sub_1DA34CCC0();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_1DA34CE30();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v6 = OUTLINED_FUNCTION_2_21();
    v7(v6);

    v8 = OUTLINED_FUNCTION_5_18();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_19();
    v11(v10);
    OUTLINED_FUNCTION_0_23();
    v15 = v12;
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v8 = OUTLINED_FUNCTION_1_25(v13);
    v9 = v15;
  }

  return v9(v8);
}

uint64_t sub_1DA342E48()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t LearnMoreSnippetModel.init(result:context:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34BED0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34BEE0();
  sub_1DA34BE80();
  (*(v6 + 8))(v9, v4);
  Array<A>.asTextRuns()();
  v11 = v10;

  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  type metadata accessor for LearnMoreSnippetModel(0);
  v15 = a2;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  v12 = sub_1DA34BFB0();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t LearnMoreSnippetModel.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  return v1;
}

uint64_t (*LearnMoreSnippetModel.body.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t LearnMoreSnippetModel.context.getter()
{
  type metadata accessor for LearnMoreSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v1;
}

uint64_t LearnMoreSnippetModel.context.setter(uint64_t a1)
{
  type metadata accessor for LearnMoreSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*LearnMoreSnippetModel.context.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for LearnMoreSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t LearnMoreSnippetModel.init(body:context:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  type metadata accessor for LearnMoreSnippetModel(0);
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t type metadata accessor for LearnMoreSnippetModel(uint64_t a1)
{
  result = qword_1EE10A7E8;
  if (!qword_1EE10A7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LearnMoreSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA34DC80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v0 + 64) = &protocol witness table for [A];
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_1DA343558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  sub_1DA3462B8();
  v1 = v0;

  return v1 & 1;
}

uint64_t sub_1DA3435B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

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

uint64_t sub_1DA34367C(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 2036625250;
  }
}

uint64_t sub_1DA3436B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3435B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3436DC(uint64_t a1)
{
  v2 = sub_1DA3438F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA343718(uint64_t a1)
{
  v2 = sub_1DA3438F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LearnMoreSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA61B0, &qword_1DA353820);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3438F4();
  sub_1DA34D250();
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_1_6();
  sub_1DA343E2C(v11);
  OUTLINED_FUNCTION_6_1(v3, &v17);
  if (!v2)
  {
    v12 = *(type metadata accessor for LearnMoreSnippetModel(0) + 20);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA3439E0(v13);
    OUTLINED_FUNCTION_6_1(v3 + v12, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DA3438F4()
{
  result = qword_1ECBA61B8;
  if (!qword_1ECBA61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61B8);
  }

  return result;
}

unint64_t sub_1DA343948(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA344060(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3439E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA344060(&unk_1EE10AC10);
    sub_1DA344060(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LearnMoreSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0();
  v28 = v4;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_0();
  v30 = v8;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA61C0, &qword_1DA353828);
  OUTLINED_FUNCTION_0();
  v33 = v12;
  v34 = v11;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for LearnMoreSnippetModel(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3438F4();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v27 = v16;
  v18 = v30;
  v17 = v31;
  v37 = 0;
  OUTLINED_FUNCTION_2_4();
  sub_1DA343E2C(v19);
  v20 = v32;
  sub_1DA34D090();
  (*(v18 + 32))(v27, v20, v35);
  v36 = 1;
  OUTLINED_FUNCTION_2_4();
  sub_1DA3439E0(v21);
  sub_1DA34D090();
  v22 = OUTLINED_FUNCTION_5_1();
  v23(v22);
  v24 = v27;
  (*(v28 + 32))(&v27[*(v26 + 20)], v7, v17);
  sub_1DA343F10(v24, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA343F74(v24);
}

unint64_t sub_1DA343E2C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA343948(&unk_1EE109F68);
    sub_1DA343948(&unk_1EE109F70);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA343F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA343F74(uint64_t a1)
{
  v2 = type metadata accessor for LearnMoreSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA344060(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA344104(uint64_t a1)
{
  sub_1DA344188(319);
  if (v1 <= 0x3F)
  {
    sub_1DA2F33D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA344188(uint64_t a1)
{
  if (!qword_1EE10AC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    v1 = sub_1DA34C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE10AC50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LearnMoreSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3442CC()
{
  result = qword_1ECBA61C8;
  if (!qword_1ECBA61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61C8);
  }

  return result;
}

unint64_t sub_1DA344324()
{
  result = qword_1ECBA61D0;
  if (!qword_1ECBA61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61D0);
  }

  return result;
}

unint64_t sub_1DA34437C()
{
  result = qword_1ECBA61D8;
  if (!qword_1ECBA61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61D8);
  }

  return result;
}

id static BiomeEventSender.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE109948 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE109950;
  *a1 = qword_1EE109950;

  return v2;
}

uint64_t DeviceExpertDiscoverabilityEvent.hashValue.getter()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

void sub_1DA3444EC(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v3 = [v2 Signals];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  *a1 = v4;
}

void BiomeEventSender.send(_:)()
{
  v1 = *v0;
  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = sub_1DA34C8C0();
  v4 = sub_1DA34CD90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1DA300D78(0xD00000000000001BLL, 0x80000001DA356A30, &v9);
    _os_log_impl(&dword_1DA2E0000, v3, v4, "Donating %s event to discoverabilitySignal", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA74B3A0](v6, -1, -1);
    MEMORY[0x1DA74B3A0](v5, -1, -1);
  }

  else
  {
  }

  v7 = objc_allocWithZone(MEMORY[0x1E698EBC0]);
  v8 = sub_1DA344754(0xD00000000000001BLL, 0x80000001DA356A30, 0, 0, 0, 0, 0, 0xF000000000000000);
  [v1 sendEvent_];
}

id sub_1DA344754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_1DA34CB30();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1DA34CB30();

  if (a6)
  {
LABEL_4:
    v15 = sub_1DA34CB30();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1DA34B8D0();
    sub_1DA300C94(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

unint64_t sub_1DA34487C()
{
  result = qword_1ECBA61E0;
  if (!qword_1ECBA61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceExpertDiscoverabilityEvent(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA34499C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1DA3449DC(uint64_t result, int a2, int a3)
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

void sub_1DA344C7C()
{
  OUTLINED_FUNCTION_34_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v27 = v13;
  v14 = sub_1DA34C770();
  v15 = OUTLINED_FUNCTION_15_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v16 = v8(0);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v31 = v12;
  v32 = v10;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v22 = OUTLINED_FUNCTION_26_6();
  sub_1DA2F3A4C(v22, v23);
  sub_1DA34C760();
  sub_1DA34834C(v6, v4, v2);
  sub_1DA34C790();
  v24 = OUTLINED_FUNCTION_26_6();
  sub_1DA2E62C4(v24, v25);
  if (!v0)
  {
    (*(v18 + 32))(v27, v21, v16);
  }

  OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1DA34508C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(0);
  v5 = OUTLINED_FUNCTION_26_6();
  sub_1DA34834C(v5, v6, a4);
  return sub_1DA34C780();
}

void sub_1DA3450FC()
{
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4 = type metadata accessor for Action(v3);
  v5 = OUTLINED_FUNCTION_15_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34_3();
  v7 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_4(&type metadata for CodableMessageCodingKeys, v8, v7);
  if (!v1)
  {
    v9 = sub_1DA2F3F64();
    OUTLINED_FUNCTION_23_7(MEMORY[0x1E6969080], v10, v11, v12, v9);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_35_3();
    v13 = OUTLINED_FUNCTION_10_13();
    v14(v13);
    v15 = OUTLINED_FUNCTION_26_6();
    sub_1DA3488BC(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_33_3();
}

void sub_1DA3452A8()
{
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4 = type metadata accessor for Action.URLConfiguration(v3);
  v5 = OUTLINED_FUNCTION_15_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34_3();
  v7 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_4(&type metadata for CodableMessageCodingKeys, v8, v7);
  if (!v1)
  {
    v9 = sub_1DA2F3F64();
    OUTLINED_FUNCTION_23_7(MEMORY[0x1E6969080], v10, v11, v12, v9);
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_35_3();
    v13 = OUTLINED_FUNCTION_10_13();
    v14(v13);
    v15 = OUTLINED_FUNCTION_26_6();
    sub_1DA3488BC(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_33_3();
}

void sub_1DA345454()
{
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4 = type metadata accessor for Action.AppIntentConfiguration(v3);
  v5 = OUTLINED_FUNCTION_15_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34_3();
  v7 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_4(&type metadata for CodableMessageCodingKeys, v8, v7);
  if (!v1)
  {
    v9 = sub_1DA2F3F64();
    OUTLINED_FUNCTION_23_7(MEMORY[0x1E6969080], v10, v11, v12, v9);
    OUTLINED_FUNCTION_20_8();
    OUTLINED_FUNCTION_35_3();
    v13 = OUTLINED_FUNCTION_10_13();
    v14(v13);
    v15 = OUTLINED_FUNCTION_26_6();
    sub_1DA3488BC(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1DA345600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for TextRun(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v11 = v14;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v8 + 8))(v10, v7);
    sub_1DA3488BC(v6, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA345854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for TextRun.Color(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v11 = v14;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v8 + 8))(v10, v7);
    sub_1DA3488BC(v6, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA345AA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for TextRun.TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v11 = v14;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v8 + 8))(v10, v7);
    sub_1DA3488BC(v6, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA345CFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for TextRun.SymbolConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v11 = v14;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v8 + 8))(v10, v7);
    sub_1DA3488BC(v6, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DA346064()
{
  OUTLINED_FUNCTION_34_2();
  v19 = v2;
  v20 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5978, qword_1DA34E468);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DA2F3F10();
  sub_1DA34D250();
  v8(0);
  sub_1DA34834C(v6, v4, v19);
  v17 = sub_1DA34C780();
  if (!v1)
  {
    v21 = v17;
    v22 = v18;
    sub_1DA2F4138();
    sub_1DA34D120();
    sub_1DA2E62C4(v21, v22);
  }

  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_33_3();
}

uint64_t TextRun.init(_:_:_:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_1DA34BA10();
  sub_1DA34834C(&qword_1EE10ACC8, MEMORY[0x1E69BCCB0], MEMORY[0x1E69BCCA8]);
  sub_1DA34C7B0();
}

void sub_1DA3462B8()
{
  OUTLINED_FUNCTION_33_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v3 = OUTLINED_FUNCTION_15_3(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - v7;
  type metadata accessor for TextRun.Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = type metadata accessor for TextRun(0);
  v14 = OUTLINED_FUNCTION_0_12(v13);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = 0;
  v46 = v1;
  v21 = *(v1 + 16);
  HIDWORD(v45) = *MEMORY[0x1E69BCC98];
  LODWORD(v45) = *MEMORY[0x1E69BCCA0];
  while (1)
  {
    v22 = v20;
    if (v21 == v20)
    {
LABEL_9:
      OUTLINED_FUNCTION_32_1();
      return;
    }

    OUTLINED_FUNCTION_25_1();
    sub_1DA348918(v46 + v23 + *(v16 + 72) * v22, v19);
    sub_1DA34BA00();
    v24 = sub_1DA34B9D0();
    if (__swift_getEnumTagSinglePayload(v8, 1, v24) == 1)
    {
      goto LABEL_11;
    }

    v25 = OUTLINED_FUNCTION_28_7();
    sub_1DA31A11C(v25, v26);
    OUTLINED_FUNCTION_2();
    v27 = OUTLINED_FUNCTION_32_3();
    v29 = v28(v27);
    if (v29 != HIDWORD(v45))
    {
      break;
    }

    v30 = OUTLINED_FUNCTION_32_3();
    v31(v30);
    sub_1DA34BBF0();
LABEL_8:
    OUTLINED_FUNCTION_12_10();
    (*(v34 + 32))(v12, v6);
    swift_storeEnumTagMultiPayload();
    sub_1DA3482E4(v8);
    OUTLINED_FUNCTION_0_24();
    sub_1DA34897C(v19, v35);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DA34897C(v12, type metadata accessor for TextRun.Value);
    v20 = v22 + 1;
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_9;
    }
  }

  if (v29 == v45)
  {
    v32 = OUTLINED_FUNCTION_32_3();
    v33(v32);
    sub_1DA34BCC0();
    goto LABEL_8;
  }

  v37 = OUTLINED_FUNCTION_32_3();
  v38(v37);
LABEL_11:
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_6_16("Fatal error", v39, v40, v41, v42, "DeviceExpertIntents/TextRun.swift", v43, v44, v45, v46);
  __break(1u);
}

void Array<A>.asTextRuns()()
{
  OUTLINED_FUNCTION_33_1();
  v1 = v0;
  v2 = type metadata accessor for TextRun(0);
  v3 = OUTLINED_FUNCTION_0_12(v2);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DA34826C(0, v9, 0);
    v17 = sub_1DA34BA10();
    v10 = *(v17 - 8);
    v11 = *(v10 + 16);
    v12 = v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    do
    {
      v11(v8, v12, v17);
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DA34826C(v14 > 1, v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      OUTLINED_FUNCTION_25_1();
      sub_1DA3488BC(v8, v18 + v16 + *(v5 + 72) * v15);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_32_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep.asTextRuns()(uint64_t a1)
{
  sub_1DA34B980();
  Array<A>.asTextRuns()();
  v2 = v1;

  return v2;
}

BOOL sub_1DA3467C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v2 += 8;

    sub_1DA3462B8();
    v6 = v5;
  }

  while ((v6 & 1) == 0);
  return v3 != 0;
}

void sub_1DA34682C()
{
  OUTLINED_FUNCTION_33_1();
  v4 = OUTLINED_FUNCTION_15_11();
  v5 = type metadata accessor for TextRun.SymbolConfiguration(v4);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v54 = v8 - v7;
  v9 = type metadata accessor for TextRun.TextConfiguration(0);
  v10 = OUTLINED_FUNCTION_15_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v15 = OUTLINED_FUNCTION_15_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  type metadata accessor for TextRun.Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  v20 = OUTLINED_FUNCTION_36_1() - 8;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + 16);
  if (v23)
  {
    OUTLINED_FUNCTION_43_1();
    v55 = *(v24 + 72);
    v56 = *MEMORY[0x1E69BCC98];
    HIDWORD(v53) = *MEMORY[0x1E69BCCA0];
    while (1)
    {
      sub_1DA348918(v3, v22);
      sub_1DA34BA00();
      sub_1DA34B9D0();
      OUTLINED_FUNCTION_27_6(v18);
      if (v25)
      {
        break;
      }

      v26 = OUTLINED_FUNCTION_26_6();
      sub_1DA31A11C(v26, v27);
      OUTLINED_FUNCTION_2();
      v28 = OUTLINED_FUNCTION_5_6();
      v30 = v29(v28);
      if (v30 == v56)
      {
        v31 = OUTLINED_FUNCTION_5_6();
        v32(v31);
        sub_1DA34BBF0();
        OUTLINED_FUNCTION_40_1();
      }

      else
      {
        if (v30 != HIDWORD(v53))
        {
          v45 = OUTLINED_FUNCTION_5_6();
          v46(v45);
          break;
        }

        v33 = OUTLINED_FUNCTION_5_6();
        v34(v33);
        sub_1DA34BCC0();
        OUTLINED_FUNCTION_39_1();
      }

      OUTLINED_FUNCTION_12_10();
      (*(v35 + 32))(v2, v1);
      OUTLINED_FUNCTION_42_1();
      swift_storeEnumTagMultiPayload();
      sub_1DA3482E4(v18);
      OUTLINED_FUNCTION_42_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = OUTLINED_FUNCTION_3_17();
        v37 = v54;
        sub_1DA3488BC(v36, v54);
        v38 = v37;
        _s19DeviceExpertIntents7TextRunV19SymbolConfigurationV11highlightedSbvg_0();
        OUTLINED_FUNCTION_18_8();
        v40 = v39;
        v41 = v37;
      }

      else
      {
        v42 = OUTLINED_FUNCTION_2_22();
        sub_1DA3488BC(v42, v13);
        v38 = v13;
        _s19DeviceExpertIntents7TextRunV0D13ConfigurationV11highlightedSbvg_0();
        OUTLINED_FUNCTION_17_9();
        v40 = v43;
        v41 = v13;
      }

      sub_1DA34897C(v41, v40);
      OUTLINED_FUNCTION_0_24();
      sub_1DA34897C(v22, v44);
      if ((v38 & 1) == 0)
      {
        v3 += v55;
        if (--v23)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_6_16("Fatal error", v47, v48, v49, v50, "DeviceExpertIntents/TextRun.swift", v51, v52, v53, v54);
    __break(1u);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_32_1();
  }
}

void sub_1DA346BDC()
{
  OUTLINED_FUNCTION_33_1();
  v4 = OUTLINED_FUNCTION_15_11();
  v5 = type metadata accessor for TextRun.SymbolConfiguration(v4);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v61 = v8 - v7;
  v9 = type metadata accessor for TextRun.TextConfiguration(0);
  v10 = OUTLINED_FUNCTION_15_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v60 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v14 = OUTLINED_FUNCTION_15_3(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  type metadata accessor for TextRun.Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v19 = OUTLINED_FUNCTION_36_1();
  v20 = OUTLINED_FUNCTION_0_12(v19);
  v64 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_3();
  v22 = 0;
  v23 = *(v0 + 16);
  v24 = v0 + 32;
  v62 = *MEMORY[0x1E69BCC98];
  v59 = *MEMORY[0x1E69BCCA0];
  v58 = v23;
  v55 = v0 + 32;
  do
  {
LABEL_2:
    v25 = v22;
    if (v22 == v23)
    {
LABEL_18:
      OUTLINED_FUNCTION_32_1();
      return;
    }

    v26 = *(v24 + 8 * v22++);
    v27 = *(v26 + 16);
  }

  while (!v27);
  v56 = v22;
  v57 = v25;
  OUTLINED_FUNCTION_25_1();
  v63 = v26 + v28;

  v29 = 0;
  while (v29 < *(v26 + 16))
  {
    sub_1DA348918(v63 + *(v64 + 72) * v29, v3);
    sub_1DA34BA00();
    sub_1DA34B9D0();
    OUTLINED_FUNCTION_27_6(v17);
    if (v30)
    {
      goto LABEL_21;
    }

    v31 = OUTLINED_FUNCTION_26_6();
    sub_1DA31A11C(v31, v32);
    OUTLINED_FUNCTION_2();
    v33 = OUTLINED_FUNCTION_5_6();
    v35 = v34(v33);
    if (v35 == v62)
    {
      v36 = OUTLINED_FUNCTION_5_6();
      v37(v36);
      sub_1DA34BBF0();
      OUTLINED_FUNCTION_40_1();
    }

    else
    {
      if (v35 != v59)
      {
        goto LABEL_20;
      }

      v38 = OUTLINED_FUNCTION_5_6();
      v39(v38);
      sub_1DA34BCC0();
      OUTLINED_FUNCTION_39_1();
    }

    OUTLINED_FUNCTION_12_10();
    (*(v40 + 32))(v2, v1);
    OUTLINED_FUNCTION_42_1();
    swift_storeEnumTagMultiPayload();
    sub_1DA3482E4(v17);
    OUTLINED_FUNCTION_42_1();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = OUTLINED_FUNCTION_3_17();
      v42 = v61;
      sub_1DA3488BC(v41, v61);
      v43 = v42;
      _s19DeviceExpertIntents7TextRunV19SymbolConfigurationV11highlightedSbvg_0();
      OUTLINED_FUNCTION_18_8();
    }

    else
    {
      v45 = OUTLINED_FUNCTION_2_22();
      v42 = v60;
      sub_1DA3488BC(v45, v60);
      v43 = v42;
      _s19DeviceExpertIntents7TextRunV0D13ConfigurationV11highlightedSbvg_0();
      OUTLINED_FUNCTION_17_9();
    }

    sub_1DA34897C(v42, v44);
    OUTLINED_FUNCTION_0_24();
    sub_1DA34897C(v3, v46);
    if (v43)
    {

      goto LABEL_18;
    }

    if (v27 == ++v29)
    {

      v23 = v58;
      v24 = v55;
      v22 = v56;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  v47 = OUTLINED_FUNCTION_5_6();
  v48(v47);
LABEL_21:
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_6_16("Fatal error", v49, v50, v51, v52, "DeviceExpertIntents/TextRun.swift", v53, v54, v55, v56);
  __break(1u);
}

void sub_1DA346FE8()
{
  OUTLINED_FUNCTION_33_1();
  v4 = OUTLINED_FUNCTION_15_11();
  v5 = type metadata accessor for TextRun.SymbolConfiguration(v4);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v53 = v8 - v7;
  v9 = type metadata accessor for TextRun.TextConfiguration(0);
  v10 = OUTLINED_FUNCTION_15_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v52 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v14 = OUTLINED_FUNCTION_15_3(v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v57 = type metadata accessor for TextRun.Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v21 = OUTLINED_FUNCTION_36_1() - 8;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 16);
  if (v24)
  {
    OUTLINED_FUNCTION_43_1();
    v56 = *(v25 + 72);
    v55 = *MEMORY[0x1E69BCC98];
    HIDWORD(v51) = *MEMORY[0x1E69BCCA0];
    v58 = v19;
    v54 = v17;
    while (1)
    {
      sub_1DA348918(v3, v23);
      sub_1DA34BA00();
      sub_1DA34B9D0();
      OUTLINED_FUNCTION_27_6(v19);
      if (v26)
      {
        break;
      }

      v27 = OUTLINED_FUNCTION_32_3();
      sub_1DA31A11C(v27, v28);
      OUTLINED_FUNCTION_2();
      v29 = OUTLINED_FUNCTION_41_1();
      v31 = v30(v29);
      if (v31 == v55)
      {
        v32 = OUTLINED_FUNCTION_41_1();
        v33(v32);
        sub_1DA34BBF0();
        OUTLINED_FUNCTION_40_1();
      }

      else
      {
        if (v31 != HIDWORD(v51))
        {
          v43 = OUTLINED_FUNCTION_41_1();
          v44(v43);
          break;
        }

        v34 = OUTLINED_FUNCTION_41_1();
        v35(v34);
        sub_1DA34BCC0();
        OUTLINED_FUNCTION_39_1();
      }

      OUTLINED_FUNCTION_12_10();
      (*(v36 + 32))(v2, v17);
      v37 = v57;
      swift_storeEnumTagMultiPayload();
      sub_1DA3482E4(v58);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = OUTLINED_FUNCTION_3_17();
        v39 = v53;
        sub_1DA3488BC(v38, v53);
        _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
        OUTLINED_FUNCTION_45_0();
        MEMORY[0x1DA74A690](v37, v1);

        v40 = type metadata accessor for TextRun.SymbolConfiguration;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_2_22();
        v39 = v52;
        sub_1DA3488BC(v41, v52);
        _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        OUTLINED_FUNCTION_45_0();
        MEMORY[0x1DA74A690](v37, v1);

        v40 = type metadata accessor for TextRun.TextConfiguration;
      }

      sub_1DA34897C(v39, v40);
      OUTLINED_FUNCTION_0_24();
      sub_1DA34897C(v23, v42);
      v3 += v56;
      --v24;
      v17 = v54;
      v19 = v58;
      if (!v24)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_6_16("Fatal error", v45, v46, v47, v48, "DeviceExpertIntents/TextRun.swift", v49, v50, v51, v52);
    __break(1u);
  }

  else
  {
LABEL_12:
    OUTLINED_FUNCTION_32_1();
  }
}

uint64_t sub_1DA34746C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  sub_1DA34BBF0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_3();
  sub_1DA34834C(&qword_1EE109F18, MEMORY[0x1E69BCD28], MEMORY[0x1E69BCD20]);
  sub_1DA34C7B0();
  return sub_1DA34B9F0();
}

uint64_t sub_1DA34759C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = sub_1DA34BD50();
  MEMORY[0x1EEE9AC00](v5);

  sub_1DA34BBC0();
  sub_1DA34834C(&qword_1ECBA6200, MEMORY[0x1E69BCD50], MEMORY[0x1E69BCD48]);
  sub_1DA34C7B0();
  sub_1DA34BBE0();
  return sub_1DA34BBA0();
}

uint64_t sub_1DA3476D8(uint64_t a1, char a2)
{
  v3 = sub_1DA34BF80();
  MEMORY[0x1EEE9AC00](v3);
  v6 = MEMORY[0x1E69BCDA8];
  if ((a2 & 1) == 0)
  {
    v6 = MEMORY[0x1E69BCDB0];
  }

  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *v6);
  return sub_1DA34BD40();
}

uint64_t TextRun.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v4 = OUTLINED_FUNCTION_15_3(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  sub_1DA34BA00();
  sub_1DA34B9D0();
  OUTLINED_FUNCTION_27_6(v7);
  if (!v8)
  {
    sub_1DA31A11C(v7, v1);
    OUTLINED_FUNCTION_2();
    v9 = OUTLINED_FUNCTION_5_6();
    v11 = v10(v9);
    if (v11 == *MEMORY[0x1E69BCC98])
    {
      v12 = OUTLINED_FUNCTION_5_6();
      v13(v12);
      sub_1DA34BBF0();
      OUTLINED_FUNCTION_40_1();
LABEL_6:
      OUTLINED_FUNCTION_12_10();
      (*(v16 + 32))(a1, v1);
      type metadata accessor for TextRun.Value(0);
      swift_storeEnumTagMultiPayload();
      return sub_1DA3482E4(v7);
    }

    if (v11 == *MEMORY[0x1E69BCCA0])
    {
      v14 = OUTLINED_FUNCTION_5_6();
      v15(v14);
      sub_1DA34BCC0();
      OUTLINED_FUNCTION_39_1();
      goto LABEL_6;
    }

    v18 = OUTLINED_FUNCTION_5_6();
    v19(v18);
  }

  OUTLINED_FUNCTION_8_9();
  result = OUTLINED_FUNCTION_6_16("Fatal error", v20, v21, v22, v23, "DeviceExpertIntents/TextRun.swift", v24, v25, v26, v27);
  __break(1u);
  return result;
}

uint64_t sub_1DA347B78@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2(0);
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 32);

  return v7(a3, a1, v5);
}

uint64_t TextRun.Color.name.getter@<X0>(BOOL *a1@<X8>)
{
  sub_1DA34BF80();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  sub_1DA34BD30();
  v3 = OUTLINED_FUNCTION_28_7();
  result = v4(v3);
  v6 = result;
  v7 = *MEMORY[0x1E69BCDB0];
  if (result != *MEMORY[0x1E69BCDB0])
  {
    v8 = OUTLINED_FUNCTION_28_7();
    result = v9(v8);
  }

  *a1 = v6 == v7;
  return result;
}

uint64_t sub_1DA347D20(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(0);
  v6 = OUTLINED_FUNCTION_28_7();
  sub_1DA34834C(v6, v7, a5);

  return sub_1DA34CAD0();
}

uint64_t sub_1DA347DDC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA34D210();
  a1(0);
  v6 = OUTLINED_FUNCTION_28_7();
  sub_1DA34834C(v6, v7, a4);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA347F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DA34D210();
  a4(0);
  v9 = OUTLINED_FUNCTION_28_7();
  sub_1DA34834C(v9, v10, a7);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA348068@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t TextRun.Color.Name.hashValue.getter()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

void *sub_1DA3481F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA348ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA3482E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA34834C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA348568()
{
  result = qword_1ECBA6218;
  if (!qword_1ECBA6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6218);
  }

  return result;
}

uint64_t sub_1DA3485FC(uint64_t a1)
{
  result = type metadata accessor for TextRun.TextConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TextRun.SymbolConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA348770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextRun.Color.Name(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA3488BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_15_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DA348918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextRun(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA34897C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1DA3489D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA348D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA348A4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA348E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA348A6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA348F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DA348A8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3490E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA348AAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DA3491DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA348ACC(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A00, &qword_1DA34E630);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2FD4E4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DA348BDC()
{
  OUTLINED_FUNCTION_33_1();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_0_12(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    v5(v8 + v24, v14, v21 + v24);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_32_1();
}

void *sub_1DA348D88(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6238, &qword_1DA353F38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2FD4E4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DA348E98(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DA2FC8C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DA348F98(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6248, &qword_1DA353F50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2FD4E4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DA3490E4(void *result, int64_t a2, char a3, char *a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6230, &qword_1DA353F30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2E30C4(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DA3491DC(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6220, &qword_1DA353F20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DA2FC900((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

uint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1DA34CFC0();
}

uint64_t OUTLINED_FUNCTION_14_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 104) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA34D240();
}

unint64_t OUTLINED_FUNCTION_29_8()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1DA2F3F10();
}

void OUTLINED_FUNCTION_35_3()
{

  sub_1DA344C7C();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return type metadata accessor for TextRun(0);
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t SelectableContentItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

Swift::String_optional __swiftcall Array.selectableContent(itemStyle:)(DeviceExpertIntents::SelectableContentItemStyle itemStyle)
{
  v1 = *itemStyle;
  sub_1DA34CCD0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  if (swift_dynamicCast())
  {
    sub_1DA346FE8();
    v3 = v2;
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {

      v3 = 0;
      v5 = 0;
    }

    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
  if (!swift_dynamicCast())
  {

    v3 = 0;
    v5 = 0;
LABEL_24:
    v8 = v3;
    v9 = v5;
    goto LABEL_27;
  }

  v7 = *(v25 + 16);
  if (!v7)
  {
LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    sub_1DA2F982C();
    v3 = sub_1DA34CAF0();
    v5 = v17;

LABEL_23:

    goto LABEL_24;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v8 = sub_1DA348A4C(0, v7, 0);
  v10 = 0;
  v19 = *(v25 + 16);
  while (v19 != v10)
  {
    if (v10 >= *(v25 + 16))
    {
      goto LABEL_26;
    }

    if (v1)
    {

      if (v1 == 1)
      {
        v11 = 0xE200000000000000;
        v12 = 8234;
      }

      else
      {
        v12 = 0;
        v11 = 0xE000000000000000;
      }
    }

    else
    {

      v20 = sub_1DA34D140();
      v22 = v13;
      MEMORY[0x1DA74A690](8238, 0xE200000000000000);
      v12 = v20;
      v11 = v22;
    }

    v21 = v12;
    v23 = v11;
    sub_1DA346FE8();
    MEMORY[0x1DA74A690]();

    v15 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (v15 >= v14 >> 1)
    {
      v8 = sub_1DA348A4C((v14 > 1), v15 + 1, 1);
    }

    *(v24 + 16) = v15 + 1;
    v16 = v24 + 16 * v15;
    *(v16 + 32) = v21;
    *(v16 + 40) = v23;
    if (v7 == ++v10)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_1DA349994()
{
  result = qword_1ECBA6250;
  if (!qword_1ECBA6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6250);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectableContentItemStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AttributeScopes.DeviceExpertIntentAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA34B6B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static AttributeScopes.DeviceExpertIntentAttributes.AttributionGroupKey.name.getter()
{
  swift_beginAccess();
  v0 = qword_1ECBA6258;

  return v0;
}

uint64_t static AttributeScopes.DeviceExpertIntentAttributes.AttributionGroupKey.name.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1ECBA6258 = a1;
  off_1ECBA6260 = a2;
}

uint64_t sub_1DA349CA4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ECBA6260;
  *a1 = qword_1ECBA6258;
  a1[1] = v2;
}

uint64_t sub_1DA349CF4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1ECBA6258 = v2;
  off_1ECBA6260 = v1;
}

unint64_t sub_1DA349E1C()
{
  result = qword_1EE10A8C8;
  if (!qword_1EE10A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8C8);
  }

  return result;
}

uint64_t type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes(uint64_t a1)
{
  result = qword_1EE10AD48;
  if (!qword_1EE10AD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA349F3C(uint64_t a1)
{
  sub_1DA2FFE00(&qword_1EE10AD90, &protocol conformance descriptor for AttributeScopes.DeviceExpertIntentAttributes);

  return sub_1DA34B690();
}

uint64_t sub_1DA349FA4(uint64_t a1)
{
  sub_1DA2FFE00(&qword_1EE10AD90, &protocol conformance descriptor for AttributeScopes.DeviceExpertIntentAttributes);

  return sub_1DA34B690();
}

uint64_t sub_1DA34A034(uint64_t a1)
{
  result = sub_1DA34B6B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s28DeviceExpertIntentAttributesV19AttributionGroupKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA34A15C()
{
  result = qword_1EE10A8D0;
  if (!qword_1EE10A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8D0);
  }

  return result;
}

unint64_t sub_1DA34A1B0()
{
  result = qword_1EE109958[0];
  if (!qword_1EE109958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE109958);
  }

  return result;
}

__n128 FlowContext.__allocating_init(sessionId:clusterId:rewriteSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_18();
  v10 = swift_allocObject();
  *(v10 + 97) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v11;
  result = *(a5 + 32);
  *(v10 + 80) = result;
  *(v10 + 96) = *(a5 + 48);
  return result;
}

double sub_1DA34A274(uint64_t a1)
{
  if (qword_1EE109470 != -1)
  {
    swift_once();
  }

  type metadata accessor for FlowContext();
  v1 = swift_allocObject();
  *(v1 + 97) = 0;
  *(v1 + 16) = 0x6E776F6E6B6E75;
  *(v1 + 24) = 0xE700000000000000;
  *(v1 + 32) = 0x6E776F6E6B6E75;
  *(v1 + 40) = 0xE700000000000000;
  v2 = xmmword_1EE109488;
  *(v1 + 48) = xmmword_1EE109478;
  *(v1 + 64) = v2;
  result = *&xmmword_1EE109498;
  *(v1 + 80) = xmmword_1EE109498;
  *(v1 + 96) = byte_1EE1094A8;
  qword_1ECBA6268 = v1;
  return result;
}

uint64_t static FlowContext.unknown.getter()
{
  if (qword_1ECBA57B0 != -1)
  {
    swift_once();
  }
}

uint64_t FlowContext.init(sessionId:clusterId:rewriteSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 97) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v6 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a5 + 32);
  *(v5 + 96) = *(a5 + 48);
  return v5;
}

uint64_t sub_1DA34A398()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DA34A3E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_26(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1DA34A46C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1DA34A4B4()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DA34A4FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_26(v2 + 32, a2);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double sub_1DA34A588@<D0>(uint64_t a1@<X8>)
{
  sub_1DA34A5D8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1DA34A5D8@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 96);
  return result;
}

__n128 sub_1DA34A628(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_26(v2 + 48, a2);
  v4 = *(a1 + 16);
  *(v2 + 48) = *a1;
  *(v2 + 64) = v4;
  result = *(a1 + 32);
  *(v2 + 80) = result;
  *(v2 + 96) = *(a1 + 48);
  return result;
}

uint64_t sub_1DA34A6B4()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  return *(v0 + 97);
}

uint64_t sub_1DA34A6E4(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_1_26(v2 + 97, a2);
  *(v2 + 97) = a1;
  return result;
}

uint64_t sub_1DA34A75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4972657473756C63 && a2 == 0xE900000000000064;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5365746972776572 && a2 == 0xEE007972616D6D75;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6867696C68676968 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

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

uint64_t sub_1DA34A8C8(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x4972657473756C63;
      break;
    case 2:
      result = 0x5365746972776572;
      break;
    case 3:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA34A960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA34A75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA34A988(uint64_t a1)
{
  v2 = sub_1DA34AC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA34A9C4(uint64_t a1)
{
  v2 = sub_1DA34AC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlowContext.deinit()
{

  return v0;
}

uint64_t FlowContext.__deallocating_deinit()
{
  FlowContext.deinit();
  OUTLINED_FUNCTION_3_18();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA34AA54(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6270, &qword_1DA354210);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA34AC78();
  sub_1DA34D250();
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v10 = *(v2 + 16);
  LOBYTE(v20[0]) = 0;

  OUTLINED_FUNCTION_4_20(v11, v12, v20);
  if (v10 || (, OUTLINED_FUNCTION_0_25(), swift_beginAccess(), v13 = *(v2 + 32), v22 = 1, v14 = , OUTLINED_FUNCTION_4_20(v14, v15, &v22), v13))
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {

    OUTLINED_FUNCTION_0_25();
    swift_beginAccess();
    v17 = *(v2 + 64);
    v20[0] = *(v2 + 48);
    v20[1] = v17;
    v20[2] = *(v2 + 80);
    v21 = *(v2 + 96);
    v19 = 2;
    sub_1DA34ACCC();
    OUTLINED_FUNCTION_6_17();
    sub_1DA34D120();
    OUTLINED_FUNCTION_0_25();
    swift_beginAccess();
    v19 = 3;
    OUTLINED_FUNCTION_6_17();
    sub_1DA34D100();
    return (*(v6 + 8))(v9, v4);
  }
}

unint64_t sub_1DA34AC78()
{
  result = qword_1EE10AC30;
  if (!qword_1EE10AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AC30);
  }

  return result;
}

unint64_t sub_1DA34ACCC()
{
  result = qword_1EE10A730;
  if (!qword_1EE10A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A730);
  }

  return result;
}

uint64_t FlowContext.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_3_18();
  v2 = swift_allocObject();
  FlowContext.init(from:)(a1);
  return v2;
}

uint64_t FlowContext.init(from:)(void *a1)
{
  v3 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6278, &qword_1DA354218);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  *(v1 + 97) = 0;
  v6 = (v1 + 97);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA34AC78();
  sub_1DA34D240();
  if (v2)
  {
    type metadata accessor for FlowContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1DA34D060();
    *(v1 + 24) = v7;
    LOBYTE(v14) = 1;
    *(v1 + 32) = sub_1DA34D060();
    *(v1 + 40) = v8;
    sub_1DA34B050();
    sub_1DA34D090();
    *(v1 + 48) = v14;
    *(v1 + 64) = v15;
    *(v1 + 80) = v16;
    *(v1 + 96) = v17;
    v10 = sub_1DA34D070();
    v11 = OUTLINED_FUNCTION_7_11();
    v12(v11, v13);
    swift_beginAccess();
    *v6 = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DA34B050()
{
  result = qword_1EE109428;
  if (!qword_1EE109428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109428);
  }

  return result;
}

uint64_t sub_1DA34B0A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FlowContext.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA34B410()
{
  result = qword_1ECBA6280;
  if (!qword_1ECBA6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6280);
  }

  return result;
}

unint64_t sub_1DA34B468()
{
  result = qword_1EE10AC20;
  if (!qword_1EE10AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AC20);
  }

  return result;
}

unint64_t sub_1DA34B4C0()
{
  result = qword_1EE10AC28;
  if (!qword_1EE10AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AC28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA34D0F0();
}