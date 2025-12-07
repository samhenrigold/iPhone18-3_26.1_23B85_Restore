__n128 *sub_1DD3BC2DC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v62 - v3;
  if ((sub_1DD3C53FC() & 1) == 0)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v23 = sub_1DD63F9F8();
    v24 = OUTLINED_FUNCTION_11(v23, qword_1EE16EFB8);
    v25 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_2_4(v25))
    {
      goto LABEL_17;
    }

    v26 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_5_7(v26);
    v29 = "#AppResolutionRulesProvider#getPhoneAppResolutionRules: AppSelection is disabled, returning empty list of rules";
    goto LABEL_16;
  }

  if ((sub_1DD3C5418() & 1) == 0)
  {
    if (sub_1DD3C5450())
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v30 = sub_1DD63F9F8();
      v31 = OUTLINED_FUNCTION_11(v30, qword_1EE16EFB8);
      v32 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v32))
      {
        v33 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_5_7(v33);
        OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v34, v35, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: SeAS Model based resolution is enabled");
        OUTLINED_FUNCTION_4_6();
      }

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
      v9 = OUTLINED_FUNCTION_12_6(v36);
      OUTLINED_FUNCTION_6_5(v9, xmmword_1DD643F90);
      v37 = sub_1DD63EFC8();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v37);
      sub_1DD3BC8E0(&v62);
      type metadata accessor for AppUsageProvider();
      swift_allocObject();
      v38 = OUTLINED_FUNCTION_14();
      v39 = type metadata accessor for SeASModelAppResolverRule(v38);
      swift_allocObject();
      v40 = sub_1DD59F13C(&v62, v31, v4);
      if (v0)
      {
        goto LABEL_24;
      }

      v49 = &off_1F58BF7E8;
      v9[3].n128_u64[1] = v39;
LABEL_40:
      v9[4].n128_u64[0] = v49;
      v9[2].n128_u64[0] = v40;
      return v9;
    }

    if (sub_1DD3C5438())
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v41 = sub_1DD63F9F8();
      v42 = OUTLINED_FUNCTION_11(v41, qword_1EE16EFB8);
      v43 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v43))
      {
        v44 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_5_7(v44);
        OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v45, v46, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: always1p rule is enabled");
        OUTLINED_FUNCTION_4_6();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
      v9 = OUTLINED_FUNCTION_12_6(v47);
      OUTLINED_FUNCTION_6_5(v9, xmmword_1DD643F90);
      v48 = type metadata accessor for Always1pRule();
      v40 = OUTLINED_FUNCTION_10_8(v48);
      v49 = &protocol witness table for Always1pRule;
LABEL_31:
      v9[3].n128_u64[1] = v42;
      goto LABEL_40;
    }

    if (sub_1DD3C54E8())
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v50 = sub_1DD63F9F8();
      v51 = OUTLINED_FUNCTION_11(v50, qword_1EE16EFB8);
      v52 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v52))
      {
        v53 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_5_7(v53);
        OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v54, v55, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: people centric model rule is enabled");
        OUTLINED_FUNCTION_4_6();
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
      v9 = OUTLINED_FUNCTION_12_6(v56);
      v57 = OUTLINED_FUNCTION_6_5(v9, xmmword_1DD643F90);
      v42 = type metadata accessor for ModelBasedAppResolverRule(v57);
      v40 = sub_1DD527F68();
      if (v0)
      {
        goto LABEL_24;
      }

      v49 = &off_1F58BB7F0;
      goto LABEL_31;
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v59 = sub_1DD63F9F8();
    v24 = OUTLINED_FUNCTION_11(v59, qword_1EE16EFB8);
    v60 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_2_4(v60))
    {
LABEL_17:

      return MEMORY[0x1E69E7CC0];
    }

    v61 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_5_7(v61);
    v29 = "#AppResolutionRulesProvider#getPhoneAppResolutionRules: Returning empty list of app resolution rules";
LABEL_16:
    OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v27, v28, v29);
    OUTLINED_FUNCTION_4_6();
    goto LABEL_17;
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v5 = sub_1DD63F9F8();
  __swift_project_value_buffer(v5, qword_1EE16EFB8);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  if (OUTLINED_FUNCTION_2_4(v7))
  {
    v8 = OUTLINED_FUNCTION_9();
    *v8 = 0;
    _os_log_impl(&dword_1DD38D000, v6, v1, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: SeAS is enabled", v8, 2u);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_6_5(v9, xmmword_1DD643F80);
  v10 = type metadata accessor for SeasAppMatcherRule();
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  v11 = swift_allocObject();
  v12 = sub_1DD59C848(&v62);
  if (v0)
  {
LABEL_24:
    v9[1].n128_u64[0] = 0;

    return v9;
  }

  v9[3].n128_u64[1] = v10;
  v9[4].n128_u64[0] = &off_1F58BF7A0;
  v9[2].n128_u64[0] = v12;
  v13 = type metadata accessor for SeasContactInSingleAppRule();
  v14 = OUTLINED_FUNCTION_10_8(v13);
  v9[6].n128_u64[0] = v11;
  v9[6].n128_u64[1] = &protocol witness table for SeasContactInSingleAppRule;
  v9[4].n128_u64[1] = v14;
  if (sub_1DD3C53E0())
  {
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v16))
    {
      v17 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_13_4(v17);
      OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v18, v19, "#AppResolutionRulesProvider#getPhoneAppResolutionRules: SeAS appUsageRule is enabled");
      OUTLINED_FUNCTION_8_2();
    }

    type metadata accessor for AppUsageProvider();
    swift_allocObject();
    OUTLINED_FUNCTION_14();
    v20 = type metadata accessor for SeasAppUsageRule();
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    sub_1DD3BE71C(1, 3, 1, v9);
    v9 = v22;
    *(&v63 + 1) = v20;
    v64 = &protocol witness table for SeasAppUsageRule;
    *&v62 = v21;
    v22[1].n128_u64[0] = 3;
    sub_1DD3AA4A8(&v62, &v22[7]);
  }

  return v9;
}

uint64_t sub_1DD3BC8E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [objc_opt_self() clientWithIdentifier_];
  OUTLINED_FUNCTION_14();
  type metadata accessor for TrialManager();
  v4 = swift_allocObject();
  sub_1DD5506B4(v1, 0xD000000000000032, 0x80000001DD66A220, v4);
  OUTLINED_FUNCTION_14();
  v5 = type metadata accessor for PhoneAppSelectionModelManager();
  swift_allocObject();
  result = sub_1DD550A50(v1, 0xD000000000000019, 0x80000001DD66A200);
  a1[3] = v5;
  a1[4] = &off_1F58BD290;
  *a1 = result;
  return result;
}

uint64_t sub_1DD3BC9B8()
{
  sub_1DD3BCB88(v0 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_commsAppResolutionFeature);

  return v0;
}

uint64_t sub_1DD3BCA10()
{
  sub_1DD3BC9B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppResolutionRulesProvider(uint64_t a1)
{
  result = qword_1ECCDBBB8;
  if (!qword_1ECCDBBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD3BCABC(uint64_t a1)
{
  result = type metadata accessor for CommsAppResolutionFeature(319);
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

uint64_t sub_1DD3BCB88(uint64_t a1)
{
  v2 = type metadata accessor for CommsAppResolutionFeature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3BCBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommsAppResolutionFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t AppResolver.init(appResolutionRules:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for PhoneAppSelectionModelCache();
  swift_initStackObject();
  sub_1DD54F83C();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderPhone();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_34();
  sub_1DD3C5350(v3);
  OUTLINED_FUNCTION_23_2();
  type metadata accessor for MessagesAppSelectionModelCache();
  swift_initStackObject();
  sub_1DD51E238();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderMessages();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_34();
  sub_1DD3C5170(v4);
  OUTLINED_FUNCTION_14();
  type metadata accessor for FallbackAppProvider();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_29();
  a2[1] = sub_1DD4BFE14(v5, v6);
  v7 = [objc_opt_self() sharedAnalytics];
  v8 = [v7 defaultMessageStream];

  v12 = sub_1DD3BDEF0();
  v13 = &off_1F58BAF68;
  *&v11 = v8;
  type metadata accessor for AppResolverLogEmitter();
  v9 = swift_allocObject();
  result = sub_1DD3AA4A8(&v11, v9 + 16);
  a2[2] = v9;
  return result;
}

uint64_t AppResolver.resolveApp(features:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD3BCDE8, 0, 0);
}

void sub_1DD3BCDE8()
{
  v3 = v1[20];
  v4 = *(v3 + 24);
  v5 = v4[2];
  if (v5)
  {
    if (v5 == 1)
    {
      v3 = v4[4];
      v0 = v4[5];
      v6 = qword_1EE162D98;

      if (v6 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_4;
    }

    v21 = v1[21];
    v22 = *v21;
    if (!*(*v21 + 16))
    {

      v3 = 0;
      v2 = sub_1DD3BDDBC();
      v0 = v1[21];
      swift_bridgeObjectRelease_n();

      *v0 = v2;
      v5 = v4[2];
      v22 = v2;
    }

    v23 = 0;
    v56 = v22;
    v1[22] = v22;
    v24 = v4 + 5;
    v20 = MEMORY[0x1E69E7CC0];
    while (v5 != v23)
    {
      if (v23 >= v4[2])
      {
        __break(1u);
LABEL_42:
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
LABEL_4:
        v7 = sub_1DD63F9F8();
        __swift_project_value_buffer(v7, qword_1EE16EFB8);

        v8 = sub_1DD63F9D8();
        v9 = sub_1DD640368();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = OUTLINED_FUNCTION_54();
          v11 = OUTLINED_FUNCTION_62();
          v57 = v11;
          *v10 = 136315138;
          *(v10 + 4) = sub_1DD39565C(v3, v0, &v57);
          _os_log_impl(&dword_1DD38D000, v8, v9, "#AppResolver#resolveApp: got only one app, resolving to that app: %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v11);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_8_2();
        }

        v12 = v1[19];
        *v12 = v3;
        *(v12 + 8) = v0;
        *(v12 + 16) = 0;
LABEL_38:
        OUTLINED_FUNCTION_49();

        __asm { BRAA            X1, X16 }
      }

      v3 = *(v24 - 1);
      v25 = *v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE2A4();
        v20 = v27;
      }

      v0 = *(v20 + 16);
      v2 = v0 + 1;
      if (v0 >= *(v20 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v20 = v28;
      }

      *(v20 + 16) = v2;
      v26 = v20 + 16 * v0;
      *(v26 + 32) = v3;
      *(v26 + 40) = v25;
      v24 += 3;
      ++v23;
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v29 = sub_1DD63F9F8();
    v1[23] = __swift_project_value_buffer(v29, qword_1EE16EFB8);

    v30 = sub_1DD63F9D8();
    v19 = sub_1DD640368();

    v17 = v56;
    if (os_log_type_enabled(v30, v19))
    {
      v2 = OUTLINED_FUNCTION_54();
      v4 = OUTLINED_FUNCTION_62();
      v57 = v4;
      *v2 = 136315138;
      v31 = MEMORY[0x1E12B2430](v20, MEMORY[0x1E69E6158]);
      v33 = v32;

      v20 = sub_1DD39565C(v31, v33, &v57);

      *(v2 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, v30, v19, "#AppResolver#resolveApp: Found more than 1 app to resolve: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_8_2();
    }

    else
    {
    }

    v34 = *(v56 + 16);
    v1[24] = v34;
    v1[25] = 0;
    if (v34)
    {
      v35 = v1[22];
      if (*(v35 + 16))
      {
        sub_1DD3C2388(v35 + 32, (v1 + 2));
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        OUTLINED_FUNCTION_56_0();
        v36 = swift_task_alloc();
        v1[26] = v36;
        *v36 = v1;
        OUTLINED_FUNCTION_28_1(v36);
        OUTLINED_FUNCTION_49();

        __asm { BRAA            X4, X16 }
      }

      __break(1u);
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      v39 = sub_1DD63F9F8();
      __swift_project_value_buffer(v39, qword_1EE16EFB8);
      v40 = v19;
      v41 = sub_1DD63F9D8();
      v42 = sub_1DD640378();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_54();
        v44 = OUTLINED_FUNCTION_62();
        v57 = v44;
        *v43 = 136315138;
        v1[18] = v19;
        v45 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v46 = sub_1DD63FE38();
        v48 = sub_1DD39565C(v46, v47, &v57);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_1DD38D000, v41, v42, "#AppResolver#resolveApp: got an exception during resolving app recommendation error: %s, returning noMatchFound", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_0_1();
      }

      v50 = v1[20];
      v49 = v1[21];
      v51 = v1[19];
      v52 = v49[1];
      v53 = v49[2];
      v57 = *v49;
      v58 = v52;
      v59 = v53;

      sub_1DD3BDC20(v51, v50);

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_60_0();
  }

  else
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16EFB8);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640378();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_54();
      *v16 = 134217984;
      *(v16 + 4) = 0;
      _os_log_impl(&dword_1DD38D000, v14, v15, "#AppResolver#resolveApp: got app count of %ld which is not expected, returning noMatchFound", v16, 0xCu);
      OUTLINED_FUNCTION_0_1();
    }

    v17 = v1[20];
    v18 = v1[21];
    v19 = v1[19];

    v20 = *v18;
    v2 = v18[1];
    v4 = v18[2];
  }

  v57 = v20;
  v58 = v2;
  v59 = v4;

  sub_1DD3BDC20(v19, v17);

LABEL_37:

  goto LABEL_38;
}

uint64_t sub_1DD3BD530()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1DD3BDA38;
  }

  else
  {
    v2 = sub_1DD3BD644;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD3BD644()
{
  v43 = v0;
  v1 = *(v0 + 96);
  v2 = (v0 + 16);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  if (v4 < 3)
  {
    v5 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C240C(v5, v6, v4);
    v7 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C23EC(v7, v8, v4);
    sub_1DD3C23EC(0, 0, 3u);
    sub_1DD3C2388(v0 + 16, v0 + 56);
    v9 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C240C(v9, v10, v4);
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();
    v13 = OUTLINED_FUNCTION_20_2();
    sub_1DD3C23EC(v13, v14, v4);
    if (os_log_type_enabled(v11, v12))
    {
      v15 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v15 = 136315394;
      v40 = v12;
      v42[0] = v41;
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v17);
      log = v11;
      v18 = (*(v16 + 16))(v17, v16);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v21 = sub_1DD39565C(v18, v20, v42);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v0 + 120) = v1;
      *(v0 + 128) = v3;
      *(v0 + 136) = v4;
      v22 = OUTLINED_FUNCTION_20_2();
      sub_1DD3C240C(v22, v23, v4);
      v24 = sub_1DD63FE38();
      v26 = sub_1DD39565C(v24, v25, v42);

      *(v15 + 14) = v26;
      v2 = (v0 + 16);
      _os_log_impl(&dword_1DD38D000, log, v40, "#AppResolver#resolveApp: rule %s returned a match: %s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    v32 = *(v0 + 152);
    *v32 = v1;
    *(v32 + 8) = v3;
    *(v32 + 16) = v4;
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_8:
    OUTLINED_FUNCTION_49();

    __asm { BRAA            X1, X16 }
  }

  v27 = OUTLINED_FUNCTION_20_2();
  sub_1DD3C23EC(v27, v28, 3u);
  sub_1DD3C23EC(0, 0, 3u);
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v30 = *(v0 + 192);
  v31 = *(v0 + 200) + 1;
  *(v0 + 200) = v31;
  if (v31 == v30)
  {
    OUTLINED_FUNCTION_60_0();
    v42[0] = v1;
    v42[1] = v3;
    v42[2] = v4;

    sub_1DD3BDC20(v0 + 96, v0 + 16);

    goto LABEL_8;
  }

  v35 = *(v0 + 176);
  if (v31 < *(v35 + 16))
  {
    sub_1DD3C2388(v35 + 40 * v31 + 32, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_56_0();
    v36 = swift_task_alloc();
    *(v0 + 208) = v36;
    *v36 = v0;
    OUTLINED_FUNCTION_28_1(v36);
    OUTLINED_FUNCTION_49();

    __asm { BRAA            X4, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3BDA38()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[27];
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EFB8);
  v3 = v1;
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_54();
    v7 = OUTLINED_FUNCTION_62();
    v19[0] = v7;
    *v6 = 136315138;
    v0[18] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v9 = sub_1DD63FE38();
    v11 = sub_1DD39565C(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v4, v5, "#AppResolver#resolveApp: got an exception during resolving app recommendation error: %s, returning noMatchFound", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_0_1();
  }

  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v15 = v12[1];
  v16 = v12[2];
  v19[0] = *v12;
  v19[1] = v15;
  v19[2] = v16;

  sub_1DD3BDC20(v14, v13);

  v17 = v0[1];

  return v17();
}

void sub_1DD3BDC20(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1DD4BFE5C(a2, &v14);
  v3 = v14;
  v4 = v15;
  v5 = v16;
  CommsAppResolutionFeature.isPhone.getter();
  if (v6)
  {
    v7 = 5;
  }

  else
  {
    v7 = 3;
  }

  if (v5 == 3)
  {
    if (!(v4 | v3))
    {
      goto LABEL_14;
    }
  }

  else if (!v5)
  {
    v14 = v3;
    v15 = v4;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    if (sub_1DD63FD48())
    {
      v8 = sub_1DD63FE58();
      v10 = v9;
      sub_1DD3C23EC(v3, v4, 0);
      if (v8 != 0xD000000000000012 || 0x80000001DD66A260 != v10)
      {
        v12 = sub_1DD640CD8();

        if (v12)
        {
          goto LABEL_17;
        }

LABEL_14:
        v13 = 6;
LABEL_18:
        sub_1DD3C2824(v13, v7);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1DD3C23EC(v3, v4, 0);
    }

LABEL_17:
    v13 = 12;
    goto LABEL_18;
  }

LABEL_19:
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

__n128 *sub_1DD3BDDBC()
{
  v1 = OUTLINED_FUNCTION_14();
  v2 = type metadata accessor for CommsAppResolutionFeature(v1);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DD3C24BC(v0, v4);
  type metadata accessor for PhoneAppSelectionModelCache();
  swift_initStackObject();
  sub_1DD54F83C();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderPhone();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_34();
  v6 = sub_1DD3C5350(v5);
  type metadata accessor for MessagesAppSelectionModelCache();
  inited = swift_initStackObject();
  sub_1DD51E238();
  OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolverTrialConfigProviderMessages();
  OUTLINED_FUNCTION_57();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_34();
  sub_1DD3C5170(v8);
  v9 = OUTLINED_FUNCTION_14();
  type metadata accessor for AppResolutionRulesProvider(v9);
  swift_allocObject();
  sub_1DD3BBC90(v4, v6, inited);
  v10 = sub_1DD3BBCFC();

  return v10;
}

unint64_t sub_1DD3BDEF0()
{
  result = qword_1EE160180;
  if (!qword_1EE160180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE160180);
  }

  return result;
}

void sub_1DD3BDF94()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DD3BF534();
    *v0 = v3;
  }
}

void sub_1DD3BE000()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DD3C0B0C();
    *v0 = v3;
  }
}

uint64_t sub_1DD3BE09C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1DD3BE158()
{
  OUTLINED_FUNCTION_58_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_1DD3BF534();
    *v0 = v4;
  }
}

uint64_t sub_1DD3BE1AC(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DD640138();
  }

  return result;
}

void sub_1DD3BE1D8()
{
  OUTLINED_FUNCTION_58_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_1DD3C0B0C();
    *v0 = v4;
  }
}

uint64_t sub_1DD3BE25C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1DD3BE2A4()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
    v7 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v7);
    v7[2] = v2;
    v7[3] = 2 * (v8 / 16);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BE37C()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC0, &unk_1DD649F60);
    v3 = 24;
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC8, &qword_1DD6441E8);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BE460()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD48, &qword_1DD6440D8);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_13_5();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
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

void sub_1DD3BE528()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF38, &qword_1DD644230);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63C758();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E695A238]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BE648()
{
  OUTLINED_FUNCTION_14_8();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_35();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
    v4 = 24;
    v16 = OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_22_2(v16);
    OUTLINED_FUNCTION_48(v17);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v16 != v0 || v5 + 24 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_36_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_29();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_32_4(v24);
  }
}

void sub_1DD3BE740()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF28, &qword_1DD644220);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63F3D8();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D2A98]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BE850()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &unk_1ECCDBD18, &qword_1DD649F30);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63F148();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D29D0]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BE928()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEF8, &qword_1DD6441F8);
    v8 = OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_3_13(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BE9E4()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD0, &qword_1DD644030);
    v7 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v7);
    OUTLINED_FUNCTION_18_6(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1DD3BEAAC()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD30, &unk_1DD649DE0);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BEB7C()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC88, &qword_1DD654E50);
    v7 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v7);
    OUTLINED_FUNCTION_18_6(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
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

void sub_1DD3BEC68()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD38, &unk_1DD6522F0);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_13_5();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
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

void sub_1DD3BED30()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC60, &qword_1DD664BC0);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69695A8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BEE1C()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
    v9 = OUTLINED_FUNCTION_61(v8);
    OUTLINED_FUNCTION_22_2(v9);
    v9[2] = v3;
    v9[3] = 2 * (v10 / v4);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v9 != v0 || &v12[80 * v3] <= v11)
    {
      memmove(v11, v12, 80 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BEEF8()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD60, &unk_1DD649EC0);
    v3 = 88;
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BEFDC()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBD70, &qword_1DD649ED0);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for ContactMatchRuntimeData(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for ContactMatchRuntimeData);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

char *sub_1DD3BF0B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE78, &qword_1DD6441B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DD3BF1BC()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF48, &unk_1DD649F20);
    v3 = 24;
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF50, &qword_1DD644240);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF2A0()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF58, &qword_1DD644248);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF370()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 80 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF440()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE68, &qword_1DD6441A0);
    v8 = OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_3_13(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF534()
{
  OUTLINED_FUNCTION_14_8();
  if (v7)
  {
    OUTLINED_FUNCTION_5_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_15_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  v12 = sub_1DD3C1774(v11, v8, v5, v6);
  v13 = OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    sub_1DD3C1F6C(v0 + v15, v11, v12 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF620()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEA0, &qword_1DD6441C8);
    v8 = OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_3_13(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BF700()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC80, &qword_1DD649E20);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63D078();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E6969530]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BF868()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC38, &qword_1DD644058);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63FA38();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D2828]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BF964()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBC90, &qword_1DD644070);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63F028();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D29A8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFA60()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF20, &qword_1DD644218);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BFB78()
{
  OUTLINED_FUNCTION_14_8();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_35();
  if (v3)
  {
    OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_13_5();
    v15[2] = v2;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v15 != v0 || v5 + 8 * v2 <= v4)
    {
      v18 = OUTLINED_FUNCTION_36_0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_29();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_32_4(v23);
  }
}

void sub_1DD3BFC48()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBD50, &qword_1DD6440E0);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for ContactResolverRunTimeData(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for ContactResolverRunTimeData);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFD44()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 264 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3BFE14()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBD58, &unk_1DD649DD0);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for Contact(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for Contact);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFEEC()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF68, &unk_1DD645280);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63D2B8();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E6969AD0]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3BFFD8()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    OUTLINED_FUNCTION_53(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v2;
    v13[3] = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1DD3C0098()
{
  OUTLINED_FUNCTION_16_1();
  if (v5)
  {
    OUTLINED_FUNCTION_5_8();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
    v9 = OUTLINED_FUNCTION_61(v8);
    OUTLINED_FUNCTION_22_2(v9);
    v9[2] = v3;
    v9[3] = 2 * (v10 / v4);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[10 * v3 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C018C()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF8, &qword_1DD649E80);
    v7 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v7);
    OUTLINED_FUNCTION_18_6(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1DD3C0254()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBEA8, &qword_1DD6441D0);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for LearnedDisambiguation(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for LearnedDisambiguation);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C032C()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD28, &qword_1DD6440C8);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    if (v3 != v0 || &v10[168 * v2] <= v9)
    {
      memmove(v9, v10, 168 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0420()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE90, &qword_1DD6441C0);
    v3 = 720;
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE98, &unk_1DD656C70);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0504()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE0, &qword_1DD657080);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 712 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C05D4()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBF40, &qword_1DD644238);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63D8D8();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D2C60]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C06AC()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBE80, &qword_1DD64A020);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for UnstitchedTask(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for UnstitchedTask);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C0784()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBE88, &qword_1DD6441B8);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for RunTimeDataRecord(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for RunTimeDataRecord);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C085C()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBE70, &qword_1DD6441A8);
  v8 = OUTLINED_FUNCTION_23_2();
  type metadata accessor for StitchableInteraction(v8);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v9, type metadata accessor for StitchableInteraction);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C0958()
{
  OUTLINED_FUNCTION_14_8();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_35();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
    v4 = 48;
    v16 = OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_22_2(v16);
    OUTLINED_FUNCTION_48(v17);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v16 != v0 || v5 + 48 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_36_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_29();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_32_4(v24);
  }
}

void sub_1DD3C0A2C()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE38, &qword_1DD644178);
    v8 = OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_3_13(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0B0C()
{
  OUTLINED_FUNCTION_14_8();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_35();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
    v4 = 40;
    v16 = OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_22_2(v16);
    OUTLINED_FUNCTION_48(v17);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_59();
  if (v1)
  {
    if (v16 != v0 || v5 + 40 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_36_0();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_29();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_32_4(v24);
  }
}

void sub_1DD3C0BE0()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDD8, &unk_1DD65AB80);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0CB0()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE00, &qword_1DD644150);
    v8 = OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_3_13(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0D6C()
{
  OUTLINED_FUNCTION_16_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDF8, &qword_1DD644148);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_5();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    type metadata accessor for INPersonHandleLabel(0);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C0E4C()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBDE0, &qword_1DD644140);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63F428();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D2AB8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

char *sub_1DD3C0F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDC0, &qword_1DD644128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DD3C1038()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCD8, &qword_1DD6440A0);
    v8 = OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_3_13(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_45();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C10F4()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCC8, &unk_1DD649E30);
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_27_2();
  if (v1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C11C4()
{
  OUTLINED_FUNCTION_9_4();
  if (v4)
  {
    OUTLINED_FUNCTION_8_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_6();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_43_0(v2, v5, &qword_1ECCDBCD0, &qword_1DD644098);
  OUTLINED_FUNCTION_23_2();
  sub_1DD63DE08();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    OUTLINED_FUNCTION_17_5(v8, MEMORY[0x1E69D1740]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
  }
}

void sub_1DD3C129C()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA0, &qword_1DD644080);
    v3 = 104;
    v8 = OUTLINED_FUNCTION_21_0(v7);
    OUTLINED_FUNCTION_1_7(v8);
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    OUTLINED_FUNCTION_50_0();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA8, qword_1DD649E40);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C1380()
{
  OUTLINED_FUNCTION_16_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB0, &qword_1DD644088);
    v10 = OUTLINED_FUNCTION_30_3(v9);
    OUTLINED_FUNCTION_3_13(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_39_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_20_2();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD3C1470()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    OUTLINED_FUNCTION_53(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22_2(v13);
    OUTLINED_FUNCTION_18_6(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v13 != v0 || &v16[2 * v3] <= v15)
    {
      memmove(v15, v16, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, 2 * v3);
  }
}

char *sub_1DD3C1528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC98, &qword_1DD644078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DD3C163C()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  v3 = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_22_2(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 16);
  return v3;
}

const void *sub_1DD3C16BC()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD30, &unk_1DD649DE0);
  v2 = OUTLINED_FUNCTION_51_0(v1);
  OUTLINED_FUNCTION_22_2(v2);
  OUTLINED_FUNCTION_33_0(v3);
  return v2;
}

size_t sub_1DD3C1774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(a1, a2, a3, a4);
  v5 = OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_56_0();
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v8)
  {
    if (result - v10 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_33_0(result - v10);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD3C1858()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD40, &qword_1DD6440D0);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

const void *sub_1DD3C18EC()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = OUTLINED_FUNCTION_44(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_51_0(v5);
  OUTLINED_FUNCTION_22_2(v6);
  OUTLINED_FUNCTION_33_0(v7);
  return v6;
}

const void *sub_1DD3C1940()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDE8, &qword_1DD649F00);
  v2 = OUTLINED_FUNCTION_51_0(v1);
  OUTLINED_FUNCTION_22_2(v2);
  OUTLINED_FUNCTION_33_0(v3);
  return v2;
}

void *sub_1DD3C19A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(a1, a2, a3, a4);
  v8 = OUTLINED_FUNCTION_23_2();
  a5(v8);
  OUTLINED_FUNCTION_56_0();
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = v5;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD3C1AB8()
{
  OUTLINED_FUNCTION_40_0();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_44(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_42();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_13_5();
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

void *sub_1DD3C1B08()
{
  OUTLINED_FUNCTION_40_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v3 = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_22_2(v3);
  v3[2] = v2;
  v3[3] = (2 * (v4 / 8)) | 1;
  return v3;
}

char *sub_1DD3C1B90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1BC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1C2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1C98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1CF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1D6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1DCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[264 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1E64(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[728 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1E8C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[712 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1EFC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C1F1C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3C1F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_55();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_19_4();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_19_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1DD3C203C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3C207C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3C20A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_55();
  if (v8 && (result = a4(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_19_4();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_19_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1DD3C2160(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3C21B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DD39565C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1DD3C220C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF30, &qword_1DD644228);
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

_BYTE **sub_1DD3C2300(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1DD3C2310(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_1DD3C2358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DD3C2388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DD3C23EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DD3C240C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_1DD3C242C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DD3C246C(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD3C24BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommsAppResolutionFeature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t OUTLINED_FUNCTION_3_13(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD3C19A8(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1DD3C2824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v47 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  sub_1DD3C2CD4(&v44 - v15);
  v17 = objc_opt_self();
  v18 = sub_1DD63D0B8();
  v19 = [v17 derivedIdentifierForComponentName:27 fromSourceIdentifier:v18];

  if (v19)
  {
    sub_1DD63D0D8();

    v20 = sub_1DD3C2E1C(a1, a2, v13);
    v46 = v9;
    if (v20)
    {
      v21 = v20;
      v22 = sub_1DD3C3188(v13, v16);
      if (v22)
      {
        v23 = v22;
        v24 = v3[5];
        v25 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v24);
        v45 = v23;
        v26 = *(v47 + 16);
        v26(v8, v13, v46);
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v46);
        (*(v25 + 8))(v21, v8, v24, v25);
        sub_1DD3C34AC(v8);
        v27 = v3[5];
        v28 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
        v26(v8, v13, v46);
        v29 = v45;
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v46);
        (*(v28 + 8))(v29, v8, v27, v28);
        sub_1DD3C34AC(v8);
        if (qword_1EE162D98 != -1)
        {
          OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
        }

        v30 = sub_1DD63F9F8();
        __swift_project_value_buffer(v30, qword_1EE16EFB8);
        v31 = sub_1DD63F9D8();
        v32 = sub_1DD640358();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_9();
          *v33 = 0;
          _os_log_impl(&dword_1DD38D000, v31, v32, "AppResolverLogEmitter#emitAppSelectionExecutionPath: Execution path emitted.", v33, 2u);
          OUTLINED_FUNCTION_0_1();
        }

LABEL_19:
        v42 = v46;
        v43 = *(v47 + 8);
        v43(v13, v46);
        return (v43)(v16, v42);
      }
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v39 = sub_1DD63F9F8();
    __swift_project_value_buffer(v39, qword_1EE16EFB8);
    v31 = sub_1DD63F9D8();
    v40 = sub_1DD640378();
    if (os_log_type_enabled(v31, v40))
    {
      v41 = OUTLINED_FUNCTION_9();
      *v41 = 0;
      _os_log_impl(&dword_1DD38D000, v31, v40, "AppResolverLogEmitter#emitAppSelectionExecutionPath: Error generating log message Skipping Emission.", v41, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_19;
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v34 = sub_1DD63F9F8();
  __swift_project_value_buffer(v34, qword_1EE16EFB8);
  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640378();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_9();
    *v37 = 0;
    _os_log_impl(&dword_1DD38D000, v35, v36, "AppResolverLogEmitter#emitAppSelectionExecutionPath: No inferenceUUID, not emitting SELF.", v37, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v47 + 8))(v16, v9);
}

uint64_t sub_1DD3C2CD4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    sub_1DD63F738();
    v6 = v5;

    if (v6)
    {
      sub_1DD63D088();

      v7 = sub_1DD63D0F8();
      if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
      {
        return (*(*(v7 - 8) + 32))(a1, v4, v7);
      }

      sub_1DD3C34AC(v4);
    }
  }

  return sub_1DD63D0E8();
}

void *sub_1DD3C2E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69CEBD8]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x1E69CEBE0]) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x1E69CECD8]) init];
      if (v16)
      {
        v17 = v16;
        sub_1DD3C3468();
        (*(v8 + 16))(v11, a3, v6);
        v18 = sub_1DD5A5500(v11);
        [v15 setInferenceId_];

        [v13 setEventMetadata_];
        [v17 setExecutionPath_];
        [v17 setProjectIntent_];
        [v13 setSeasExecutionPathReported_];
        if (qword_1EE162D98 != -1)
        {
          OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
        }

        v19 = sub_1DD63F9F8();
        __swift_project_value_buffer(v19, qword_1EE16EFB8);
        v20 = v17;
        v21 = sub_1DD63F9D8();
        v22 = sub_1DD640368();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v35 = v24;
          *v23 = 136315138;
          [v20 executionPath];
          v25 = sub_1DD640518();
          v27 = sub_1DD39565C(v25, v26, &v35);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_1DD38D000, v21, v22, "AppResolverLogEmitter#generateSelfMessage: generated SELF message for SeAS execution path: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        else
        {
        }

        return v13;
      }
    }

    else
    {
      v15 = v13;
    }
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v28 = sub_1DD63F9F8();
  __swift_project_value_buffer(v28, qword_1EE16EFB8);
  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640378();
  if (os_log_type_enabled(v29, v30))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v31, v32, "AppResolverLogEmitter#generateSelfMessage: failed to generate top-level SELF message");
    OUTLINED_FUNCTION_0_1();
  }

  return 0;
}

void *sub_1DD3C3188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v14)
      {
        v15 = v14;
        [v14 setComponent_];
        sub_1DD3C3468();
        v16 = *(v6 + 16);
        v16(v9, a1, v4);
        v17 = sub_1DD5A5500(v9);
        [v15 setUuid_];

        [v13 setComponent_];
        v16(v9, a2, v4);
        v18 = sub_1DD5A5500(v9);
        [v13 setUuid_];

        [v11 setSource_];
        [v11 setTarget_];

        return v11;
      }
    }

    else
    {
      v13 = v11;
    }
  }

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v19 = sub_1DD63F9F8();
  __swift_project_value_buffer(v19, qword_1EE16EFB8);
  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640378();
  if (os_log_type_enabled(v20, v21))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v22, v23, "AppResolverLogEmitter#generateRequestLink: Failed to create RequestLink SELF message templates.");
    OUTLINED_FUNCTION_0_1();
  }

  return 0;
}

uint64_t sub_1DD3C340C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1DD3C3468()
{
  result = qword_1EE1638C0;
  if (!qword_1EE1638C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1638C0);
  }

  return result;
}

uint64_t sub_1DD3C34AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AppResolverResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_1_8();
        v10 = sub_1DD640CD8();
        v34 = OUTLINED_FUNCTION_5_9();
        v36 = OUTLINED_FUNCTION_0_13(v34, v35, 1u);
        v38 = OUTLINED_FUNCTION_0_13(v36, v37, 1u);
        sub_1DD3C23EC(v38, v39, 1u);
        v17 = OUTLINED_FUNCTION_5_9();
        v19 = 1;
        goto LABEL_22;
      }

      v49 = 1;
      v50 = OUTLINED_FUNCTION_1_8();
      v52 = OUTLINED_FUNCTION_0_13(v50, v51, 1u);
      v54 = OUTLINED_FUNCTION_0_13(v52, v53, 1u);
      sub_1DD3C23EC(v54, v55, 1u);
      v56 = OUTLINED_FUNCTION_1_8();
      sub_1DD3C23EC(v56, v57, 1u);
      return v49;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_23;
      }

      sub_1DD3C3778();
      v10 = v20;
      v21 = OUTLINED_FUNCTION_5_9();
      v23 = OUTLINED_FUNCTION_0_13(v21, v22, 2u);
      v25 = OUTLINED_FUNCTION_0_13(v23, v24, 2u);
      sub_1DD3C23EC(v25, v26, 2u);
      v17 = OUTLINED_FUNCTION_5_9();
      v19 = 2;
      goto LABEL_22;
    case 3u:
      if (v7 != 3 || (v5 | v6) != 0)
      {
        goto LABEL_23;
      }

      v28 = OUTLINED_FUNCTION_1_8();
      sub_1DD3C23EC(v28, v29, 3u);
      v30 = 0;
      v31 = 0;
      v32 = 3;
      goto LABEL_26;
    default:
      if (*(a2 + 16))
      {
LABEL_23:
        v41 = OUTLINED_FUNCTION_5_9();
        v43 = OUTLINED_FUNCTION_0_13(v41, v42, v7);
        v45 = OUTLINED_FUNCTION_0_13(v43, v44, v4);
        sub_1DD3C23EC(v45, v46, v4);
        v47 = OUTLINED_FUNCTION_5_9();
        sub_1DD3C23EC(v47, v48, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v58 = OUTLINED_FUNCTION_0_13(v8, v2, 0);
        v60 = OUTLINED_FUNCTION_0_13(v58, v59, 0);
        sub_1DD3C23EC(v60, v61, 0);
        v30 = OUTLINED_FUNCTION_1_8();
        v32 = 0;
LABEL_26:
        sub_1DD3C23EC(v30, v31, v32);
        return 1;
      }

      v10 = sub_1DD640CD8();
      v11 = OUTLINED_FUNCTION_5_9();
      v13 = OUTLINED_FUNCTION_0_13(v11, v12, 0);
      v15 = OUTLINED_FUNCTION_0_13(v13, v14, 0);
      sub_1DD3C23EC(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_5_9();
      v19 = 0;
LABEL_22:
      sub_1DD3C23EC(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_1DD3C371C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD3C3778()
{
  OUTLINED_FUNCTION_9_5();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1DD3C37FC()
{
  OUTLINED_FUNCTION_9_5();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v1 + 48);
    v4 = (v2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (v7)
      {
        if (v5 != v6)
        {
          return;
        }
      }

      else
      {
        sub_1DD640CD8();
        OUTLINED_FUNCTION_12_8();
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return;
        }
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1DD3C38A8()
{
  OUTLINED_FUNCTION_18_7();
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_10();
  v68 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_6();
  v7 = *(v1 + 16);
  if (v7 != *(v0 + 16))
  {
LABEL_62:
    v50 = 0;
    return v50 & 1;
  }

  if (!v7 || v1 == v0)
  {
    v50 = 1;
    return v50 & 1;
  }

  v8 = 0;
  OUTLINED_FUNCTION_8_4();
  v52 = v7;
  v64 = v2;
  while (1)
  {
    OUTLINED_FUNCTION_3_3();
    result = sub_1DD3C4CFC();
    if (v8 == v7)
    {
      break;
    }

    v53 = v8;
    OUTLINED_FUNCTION_3_3();
    v10 = v68;
    sub_1DD3C4CFC();
    OUTLINED_FUNCTION_14_9();
    static Contact.== infix(_:_:)();
    if ((v11 & 1) == 0 || (result = static ContactResolver.SignalSet.== infix(_:_:)((v64 + matched[5]), (v68 + matched[5])), (result & 1) == 0) || ((v12 = matched[6], v13 = v64 + v12, v14 = *(v64 + v12), v15 = *(v64 + v12 + 8), v16 = (v68 + v12), v14 == *v16) ? (v17 = v15 == v16[1]) : (v17 = 0), !v17 || (v56 = *(v16 + 2), v57 = *(v13 + 16), v18 = *(v57 + 16), v18 != *(v56 + 16))))
    {
LABEL_61:
      OUTLINED_FUNCTION_2_8();
      sub_1DD3C4D54(v68, v51);
      sub_1DD3C4D54(v64, v10);
      goto LABEL_62;
    }

    if (v18)
    {
      v19 = v57 == v56;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v26 = 0;
      while (v18)
      {
        v27 = *(v57 + v26 + 48);
        v28 = *(v57 + v26 + 56);
        v29 = *(v57 + v26 + 64);
        v30 = *(v57 + v26 + 72);
        v10 = *(v57 + v26 + 80);
        v63 = *(v57 + v26 + 88);
        v62 = *(v57 + v26 + 96);
        v59 = *(v57 + v26 + 104);
        v66 = *(v57 + v26 + 105);
        v31 = *(v57 + v26 + 112);
        v32 = *(v56 + v26 + 48);
        v33 = *(v56 + v26 + 56);
        v34 = *(v56 + v26 + 64);
        v36 = *(v56 + v26 + 72);
        v35 = *(v56 + v26 + 80);
        v61 = *(v56 + v26 + 88);
        v60 = *(v56 + v26 + 96);
        v58 = *(v56 + v26 + 104);
        v65 = *(v56 + v26 + 105);
        v37 = *(v57 + v26 + 32) == *(v56 + v26 + 32) && *(v57 + v26 + 40) == *(v56 + v26 + 40);
        v38 = *(v56 + v26 + 112);
        if (!v37)
        {
          v54 = v26;
          v55 = *(v56 + v26 + 80);
          v39 = *(v56 + v26 + 72);
          v40 = *(v57 + v26 + 80);
          v41 = *(v57 + v26 + 72);
          v42 = *(v57 + v26 + 56);
          v43 = sub_1DD640CD8();
          v28 = v42;
          v30 = v41;
          v10 = v40;
          v36 = v39;
          v26 = v54;
          v35 = v55;
          if ((v43 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        if (v27 != v32)
        {
          goto LABEL_61;
        }

        if (v28 != v33 || v29 != v34)
        {
          v45 = v30;
          v46 = sub_1DD640CD8();
          v30 = v45;
          if ((v46 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        v47 = v30 == v36 && v10 == v35;
        if (!v47 && (sub_1DD640CD8() & 1) == 0)
        {
          goto LABEL_61;
        }

        result = v63;
        if (v63 == v61 && v62 == v60)
        {
          if (v59 != v58)
          {
            goto LABEL_61;
          }
        }

        else
        {
          result = sub_1DD640CD8();
          if (result & 1) == 0 || ((v59 ^ v58))
          {
            goto LABEL_61;
          }
        }

        if (v66 == 2)
        {
          if (v65 != 2 || v31 != v38)
          {
            goto LABEL_61;
          }
        }

        else if (v65 == 2 || ((v65 ^ v66) & 1) != 0 || v31 != v38)
        {
          goto LABEL_61;
        }

        v26 += 88;
        if (!--v18)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

LABEL_19:
    sub_1DD4747FC(*(v64 + matched[7]), *(v68 + matched[7]));
    if ((v20 & 1) == 0 || *(v64 + matched[8]) != *(v68 + matched[8]))
    {
      goto LABEL_61;
    }

    v21 = *(v64 + matched[9]) ^ *(v68 + matched[9]);
    OUTLINED_FUNCTION_2_8();
    sub_1DD3C4D54(v22, v23);
    v24 = OUTLINED_FUNCTION_14_9();
    sub_1DD3C4D54(v24, v25);
    v7 = v52;
    if ((v21 & 1) == 0)
    {
      v8 = v53 + 1;
      if (v53 + 1 != v52)
      {
        continue;
      }
    }

    v50 = v21 ^ 1;
    return v50 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C3CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_10();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_8_4();
      v13 = a1 + v12;
      v14 = a2 + v12;
      v16 = *(v15 + 72);
      do
      {
        sub_1DD3C4CFC();
        sub_1DD3C4CFC();
        OUTLINED_FUNCTION_1_8();
        static Contact.== infix(_:_:)();
        v18 = v17;
        sub_1DD3C4D54(v7, type metadata accessor for Contact);
        sub_1DD3C4D54(v10, type metadata accessor for Contact);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v14 += v16;
        v13 += v16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1DD3C3E7C(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    v11 = 0;
    v31 = a1;
    while (1)
    {
      OUTLINED_FUNCTION_11_8(a1);
      v13 = *(v12 + 112);
      OUTLINED_FUNCTION_4_8();
      v34 = v17;
      v35 = v18;
      v32 = *(v16 + 105);
      v33 = v19;
      v22 = v20 == v21 && v14 == v15;
      v23 = *(v16 + 112);
      if (v22)
      {
        if (v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if ((v25 & 1) == 0 || v6 != v7)
        {
          return result;
        }
      }

      if (v2 != v4 || v3 != v5)
      {
        OUTLINED_FUNCTION_15_0();
        if ((sub_1DD640CD8() & 1) == 0)
        {
          break;
        }
      }

      v27 = v41 == v8 && v40 == v9;
      if (!v27 && (OUTLINED_FUNCTION_16_4(v41, v40) & 1) == 0)
      {
        break;
      }

      if (v39 == v37 && v38 == v36)
      {
        if (v35 != v34)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if (v29 & 1) == 0 || ((v35 ^ v34))
        {
          return result;
        }
      }

      if (v33 == 2)
      {
        if (v32 != 2 || v13 != v23)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v32 == 2 || ((v32 ^ v33) & 1) != 0 || v13 != v23)
        {
          return result;
        }
      }

      v11 += 88;
      --v10;
      a1 = v31;
      if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C4024(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, 0x81uLL);
      memcpy(v9, v3, 0x81uLL);
      memcpy(v11, i, 0x81uLL);
      memcpy(__src, i, 0x81uLL);
      sub_1DD3C4DAC(__dst, v7);
      sub_1DD3C4DAC(v11, v7);
      v5 = static SportsPersonalizationEntity.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x81uLL);
      sub_1DD3C4E08(v12);
      memcpy(v13, v9, 0x81uLL);
      sub_1DD3C4E08(v13);
      if (!v5)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DD3C4134(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  if (v12 && v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v6 = *(a1 + v3 + 64);
      v7 = *(a1 + v3 + 72);
      v8 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v11 = *(a2 + v3 + 72);
      v12 = *(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40);
      if (!v12 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (OUTLINED_FUNCTION_16_4(v4, v5) & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (OUTLINED_FUNCTION_17_6() & 1) == 0)
      {
        break;
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1DD3C4228(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    v11 = 0;
    v27 = a1;
    while (1)
    {
      OUTLINED_FUNCTION_11_8(a1);
      OUTLINED_FUNCTION_4_8();
      v30 = v16;
      v31 = v17;
      v20 = v18 == v19 && v12 == v13;
      v28 = *(v14 + 105);
      v29 = v15;
      if (v20)
      {
        if (v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if ((v22 & 1) == 0 || v6 != v7)
        {
          return result;
        }
      }

      if (v2 != v4 || v3 != v5)
      {
        OUTLINED_FUNCTION_15_0();
        if ((sub_1DD640CD8() & 1) == 0)
        {
          break;
        }
      }

      v24 = v37 == v8 && v36 == v9;
      if (!v24 && (OUTLINED_FUNCTION_16_4(v37, v36) & 1) == 0)
      {
        break;
      }

      if (v35 == v33 && v34 == v32)
      {
        if (v31 != v30)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD640CD8();
        result = OUTLINED_FUNCTION_12_8();
        if (v26 & 1) == 0 || ((v31 ^ v30))
        {
          return result;
        }
      }

      if (v29 == 2)
      {
        if (v28 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v28 == 2 || ((v28 ^ v29) & 1) != 0)
        {
          return result;
        }
      }

      v11 += 80;
      --v10;
      a1 = v27;
      if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD3C43B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3C4410(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_10();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_6();
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_15:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    OUTLINED_FUNCTION_8_4();
    v13 = a1 + v12;
    v14 = a2 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_5_9();
      sub_1DD3C4EB4();
      OUTLINED_FUNCTION_19_5();
      v17 = *v2 == *v9 && *(v2 + 1) == *(v9 + 1);
      if (!v17 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v18 = static PrivatizedHandleSignalSet.== infix(_:_:)(&v2[*(v5 + 36)], &v9[*(v5 + 36)]);
      sub_1DD390754(v9, &qword_1ECCDBD78, &unk_1DD644390);
      sub_1DD390754(v2, &qword_1ECCDBD78, &unk_1DD644390);
      if (v18)
      {
        v14 += v16;
        v13 += v16;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v19 = OUTLINED_FUNCTION_1_8();
    sub_1DD390754(v19, v20, &unk_1DD644390);
    v21 = OUTLINED_FUNCTION_14_9();
    sub_1DD390754(v21, v22, &unk_1DD644390);
    goto LABEL_15;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1DD3C45E4(uint64_t a1, uint64_t a2)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_10();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_6();
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_39:
    v37 = 0;
    return v37 & 1;
  }

  if (v10 && a1 != a2)
  {
    OUTLINED_FUNCTION_8_4();
    v12 = a1 + v11;
    v13 = a2 + v11;
    v47 = *(v14 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_5_9();
      sub_1DD3C4EB4();
      v49 = v12;
      OUTLINED_FUNCTION_19_5();
      v15 = *(v2 + 16);
      v17 = *(v2 + 24);
      v16 = *(v2 + 32);
      v18 = *(v2 + 40);
      v19 = *(v2 + 48);
      v54 = *(v2 + 64);
      v55 = *(v2 + 56);
      v57 = *(v2 + 73);
      v20 = *(v8 + 16);
      v21 = *(v8 + 24);
      v22 = *(v8 + 32);
      v24 = *(v8 + 40);
      v23 = *(v8 + 48);
      v53 = *(v8 + 56);
      v52 = *(v8 + 64);
      v50 = *(v8 + 72);
      v51 = *(v2 + 72);
      v25 = *v2 == *v8 && *(v2 + 8) == *(v8 + 8);
      v56 = *(v8 + 73);
      if (!v25)
      {
        v45 = *(v8 + 48);
        v46 = v10;
        v43 = *(v2 + 48);
        v44 = *(v8 + 40);
        v26 = v13;
        v27 = *(v2 + 40);
        v28 = *(v2 + 32);
        v29 = *(v8 + 24);
        v30 = *(v8 + 32);
        v31 = sub_1DD640CD8();
        v22 = v30;
        v21 = v29;
        v16 = v28;
        v18 = v27;
        v13 = v26;
        v19 = v43;
        v24 = v44;
        v23 = v45;
        v10 = v46;
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      if (v15 != v20)
      {
        break;
      }

      if (v17 != v21 || v16 != v22)
      {
        v33 = v18;
        v34 = sub_1DD640CD8();
        v18 = v33;
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      v35 = v18 == v24 && v19 == v23;
      if (!v35 && (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      if (v55 == v53 && v54 == v52)
      {
        if (v51 != v50)
        {
          break;
        }
      }

      else if (sub_1DD640CD8() & 1) == 0 || ((v51 ^ v50))
      {
        break;
      }

      if (v57 == 2)
      {
        if (v56 != 2)
        {
          break;
        }
      }

      else if (v56 == 2 || ((v56 ^ v57) & 1) != 0)
      {
        break;
      }

      v37 = static ContactResolver.HandleSignalSet.== infix(_:_:)((v2 + *(v48 + 36)), (v8 + *(v48 + 36)));
      sub_1DD390754(v8, &qword_1ECCDBBD8, &unk_1DD645A90);
      sub_1DD390754(v2, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (v37)
      {
        v13 += v47;
        v12 = v49 + v47;
        if (--v10)
        {
          continue;
        }
      }

      return v37 & 1;
    }

    v38 = OUTLINED_FUNCTION_1_8();
    sub_1DD390754(v38, v39, &unk_1DD645A90);
    v40 = OUTLINED_FUNCTION_14_9();
    sub_1DD390754(v40, v41, &unk_1DD645A90);
    goto LABEL_39;
  }

  v37 = 1;
  return v37 & 1;
}

uint64_t sub_1DD3C4934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D0F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v26 = *(v16 + 56);
  v27 = v17;
  while (1)
  {
    v19 = v27;
    result = (v27)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1DD3C4E5C();
    OUTLINED_FUNCTION_14_9();
    v22 = sub_1DD63FD98();
    v23 = *v18;
    v24 = OUTLINED_FUNCTION_15_0();
    v23(v24);
    (v23)(v11, v4);
    if (v22)
    {
      v15 += v26;
      v14 += v26;
      v25 = v12-- == 1;
      v16 = v21;
      if (!v25)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1DD3C4B10()
{
  OUTLINED_FUNCTION_9_5();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v2 + 48);
    v4 = (v1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      v7 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (v7)
      {
        if (v5 != v6)
        {
          return;
        }
      }

      else
      {
        sub_1DD640CD8();
        OUTLINED_FUNCTION_12_8();
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return;
        }
      }

      v4 += 24;
      v3 += 24;
      --v0;
    }

    while (v0);
  }
}

void sub_1DD3C4BBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (v4)
    {
      OUTLINED_FUNCTION_18_7();
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = v3 + v7;
          v9 = v2 + v7;
          if (*(v3 + v7 + 32) != *(v2 + v7 + 32))
          {
            break;
          }

          v10 = *(v8 + 56);
          v11 = *(v8 + 64);
          v12 = *(v8 + 72);
          v13 = *(v9 + 56);
          v14 = *(v9 + 64);
          v15 = *(v9 + 72);
          v16 = *(v8 + 40) == *(v9 + 40) && *(v8 + 48) == *(v9 + 48);
          if (!v16 && (sub_1DD640CD8() & 1) == 0)
          {
            break;
          }

          if (v10 == v13 && v11 == v14)
          {
            if (v12 != v15)
            {
              return;
            }
          }

          else
          {
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_12_8();
            if ((v18 & 1) == 0 || v12 != v15)
            {
              return;
            }
          }

          v7 += 48;
          --v4;
        }

        while (v4);
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13SiriInference17AppResolverResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD3C4CE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DD3C4CFC()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

uint64_t sub_1DD3C4D54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD3C4E5C()
{
  result = qword_1ECCDBF70;
  if (!qword_1ECCDBF70)
  {
    sub_1DD63D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBF70);
  }

  return result;
}

uint64_t sub_1DD3C4EB4()
{
  OUTLINED_FUNCTION_18_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_15_0();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_1DD3C4EB4();
}

uint64_t sub_1DD3C4F88(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0 && *(a1 + 8) == 1)
  {
    v1 = *(a1 + 24);
    v2 = *(v1 + 16);
    if (!v2)
    {
      return 0;
    }

    sub_1DD3B52B8();
    sub_1DD3B530C();
    v3 = 0;
    v4 = 0;
    v5 = (v1 + 48);
    v22 = 0;
    while (1)
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      OUTLINED_FUNCTION_0_14();

      if (OUTLINED_FUNCTION_1_9(v8, v9, v10, v11))
      {
        if (v7)
        {
          v12 = __OFADD__(v4++, 1);
          if (v12)
          {
            break;
          }
        }
      }

      OUTLINED_FUNCTION_0_14();
      if (OUTLINED_FUNCTION_1_9(v13, v14, v15, v16) & 1) != 0 || ((v7 ^ 1))
      {
      }

      else
      {

        v12 = __OFADD__(v3++, 1);
        if (v12)
        {
          goto LABEL_21;
        }

        v22 = v6;
      }

      v5 += 24;
      if (!--v2)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_1EE162D98 != -1)
  {
LABEL_22:
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16EFB8);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640378();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DD38D000, v19, v20, "#SeasRulesHelper contacts is not equal 1, return default values", v21, 2u);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  return 0;
}

uint64_t sub_1DD3C5170(void *a1)
{
  if (!a1)
  {
    v2 = [objc_opt_self() clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v3 = swift_allocObject();
    a1 = sub_1DD5506B4(v2, 0xD000000000000031, 0x80000001DD66A320, v3);
  }

  *(v1 + 16) = a1;
  return v1;
}

id sub_1DD3C5200()
{
  v0 = sub_1DD5FFDD8();
  v1 = sub_1DD59B690(0x7031737961776C61, 0xE800000000000000, v0);

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 BOOLeanValue];

  return v2;
}

id sub_1DD3C5278()
{
  v0 = sub_1DD5FFDD8();
  v1 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66A300, v0);

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 BOOLeanValue];

  return v2;
}

uint64_t sub_1DD3C52F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3C5350(void *a1)
{
  if (!a1)
  {
    v2 = [objc_opt_self() clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v3 = swift_allocObject();
    a1 = sub_1DD5506B4(v2, 0xD000000000000032, 0x80000001DD66A220, v3);
  }

  *(v1 + 16) = a1;
  return v1;
}

id sub_1DD3C546C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD5FFDD8();
  v5 = sub_1DD59B690(a1, a2, v4);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLeanValue];

  return v6;
}

id sub_1DD3C54E8()
{
  v0 = sub_1DD5FFDD8();
  v1 = sub_1DD59B690(0xD000000000000012, 0x80000001DD66A3A0, v0);

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 BOOLeanValue];

  return v2;
}

id sub_1DD3C5588()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v0 setComputeUnits_];
  return v0;
}

void sub_1DD3C55D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  v6 = sub_1DD5FFDD8();

  v7 = (*(a2 + 16))(a1, a2);
  v10 = sub_1DD59B690(v7, v8, v6);

  if (v10)
  {
    sub_1DD5FF528(a3);
  }

  else
  {
    v9 = sub_1DD63CE68();

    __swift_storeEnumTagSinglePayload(a3, 1, 1, v9);
  }
}

uint64_t sub_1DD3C56E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  sub_1DD3C55D4(a1, a2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DD3ADFD0(v7, &qword_1ECCDBF78, &unk_1DD644440);
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16EFB8);
    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DD38D000, v19, v20, "AppSelectionModelManaging#model: No Trial override, using default model", v21, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    v22 = OUTLINED_FUNCTION_1_10();
    return v23(v22);
  }

  else
  {
    (*(v9 + 32))(v17, v7, v8);
    v25 = sub_1DD3C5588();
    (*(a2 + 32))(&v55, v17, v25, a1, a2);

    if (v56)
    {
      sub_1DD3AA4A8(&v55, v57);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v26 = sub_1DD63F9F8();
      __swift_project_value_buffer(v26, qword_1EE16EFB8);
      (*(v9 + 16))(v14, v17, v8);
      v27 = sub_1DD63F9D8();
      v28 = sub_1DD640368();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v55 = v53;
        *v29 = 136446210;
        sub_1DD3C5CC8();
        v30 = sub_1DD640CB8();
        v32 = v31;
        v33 = *(v9 + 8);
        v33(v14, v8);
        v34 = sub_1DD39565C(v30, v32, &v55);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1DD38D000, v27, v28, "AppSelectionModelManaging#model: Loaded model from Trial-override; %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        v33(v17, v8);
      }

      else
      {

        v45 = *(v9 + 8);
        v45(v14, v8);
        v45(v17, v8);
      }

      return sub_1DD3AA4A8(v57, v54);
    }

    else
    {
      sub_1DD3ADFD0(&v55, &qword_1ECCDBF80, &unk_1DD657A00);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v35 = sub_1DD63F9F8();
      __swift_project_value_buffer(v35, qword_1EE16EFB8);
      (*(v9 + 16))(v11, v17, v8);
      v36 = sub_1DD63F9D8();
      v37 = sub_1DD640378();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v51 = v38;
        v53 = swift_slowAlloc();
        *&v57[0] = v53;
        *v38 = 136446210;
        sub_1DD3C5CC8();
        v52 = v37;
        v49 = sub_1DD640CB8();
        v50 = v36;
        v40 = v39;
        v41 = OUTLINED_FUNCTION_2_9();
        (v36)(v41);
        v42 = sub_1DD39565C(v49, v40, v57);

        v44 = v50;
        v43 = v51;
        *(v51 + 1) = v42;
        _os_log_impl(&dword_1DD38D000, v44, v52, "AppSelectionModelManaging#model: Failed to load Trial-overridden model from %{public}s, reverting to default model", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        v46 = OUTLINED_FUNCTION_2_9();
        (v36)(v46);
      }

      v47 = OUTLINED_FUNCTION_1_10();
      v48(v47);
      return (v36)(v17, v8);
    }
  }
}

unint64_t sub_1DD3C5CC8()
{
  result = qword_1EE165CE0;
  if (!qword_1EE165CE0)
  {
    sub_1DD63CE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165CE0);
  }

  return result;
}

void sub_1DD3C5E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = 0;
  v9 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = *(v3 + 72);
    sub_1DD3C68F8(a1 + v10 + v11 * v8, v7);
    sub_1DD40F728();
    if (sub_1DD56DEC0(v25, v12))
    {
      sub_1DD3C69D0(v7, v23);
      v13 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_0_16();
        sub_1DD42B4F8(v15, v16, v17);
        v13 = v26;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = v19 + 1;
        v22 = v19;
        sub_1DD42B4F8(v18 > 1, v19 + 1, 1);
        v20 = v24;
        v19 = v22;
        v13 = v26;
      }

      ++v8;
      *(v13 + 16) = v20;
      v24 = v13;
      sub_1DD3C69D0(v23, v13 + v10 + v19 * v11);
    }

    else
    {
      sub_1DD3C6968(v7);
      ++v8;
    }
  }

  __break(1u);
}

void *sub_1DD3C62A4(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = result[2];
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = 80 * v2 + 32; ; i += 80)
  {
    if (v3 == v2)
    {

      return v4;
    }

    if (v2 >= v1[2])
    {
      break;
    }

    memcpy(__dst, v1 + i, 0x4AuLL);
    v6 = *&__dst[56];
    v7 = *&__dst[64];
    sub_1DD3C6A40(__dst, v20);

    LOBYTE(v6) = sub_1DD56CE00(v20, v6, v7, v8, v9, v10, v11, v12, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], v31);

    if (v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_0_16();
        sub_1DD42B518(v14, v15, v16);
        v4 = v32;
      }

      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DD42B518(v17 > 1, v18 + 1, 1);
        v4 = v32;
      }

      ++v2;
      *(v4 + 16) = v18 + 1;
      result = memcpy((v4 + 80 * v18 + 32), __dst, 0x4AuLL);
      goto LABEL_2;
    }

    result = sub_1DD3C6A9C(__dst);
    ++v2;
  }

  __break(1u);
  return result;
}

void sub_1DD3C640C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = sub_1DD63D0F8();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v28 - v6;
  v7 = sub_1DD63F8F8();
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = 0;
  v40 = *(v10 + 16);
  v33 = (v3 + 8);
  v34 = v15 + 16;
  v32 = (v15 + 8);
  v35 = v15;
  v29 = (v15 + 32);
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v40 == v14)
    {

      return;
    }

    if (v14 >= *(v10 + 16))
    {
      break;
    }

    v16 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v17 = *(v35 + 72);
    v18 = v10;
    (*(v35 + 16))(v13, v10 + v16 + v17 * v14, v7, v11);
    sub_1DD63F8D8();
    v19 = v36;
    sub_1DD56E9E0();
    v21 = v20;
    (*v33)(v19, v38);
    if (v21)
    {
      v22 = *v29;
      (*v29)(v30, v13, v7);
      v23 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42BE34(0, *(v23 + 16) + 1, 1);
        v23 = v41;
      }

      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v31 = v26 + 1;
        sub_1DD42BE34(v25 > 1, v26 + 1, 1);
        v27 = v31;
        v23 = v41;
      }

      ++v14;
      *(v23 + 16) = v27;
      v31 = v23;
      v22((v23 + v16 + v26 * v17), v30, v7);
      v10 = v18;
    }

    else
    {
      (*v32)(v13, v7);
      ++v14;
      v10 = v18;
    }
  }

  __break(1u);
}

uint64_t sub_1DD3C6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v4 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    v8 = MEMORY[0x1E12B2590]();

    v4 = a4(v6, &v8);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1DD3C67E4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    MEMORY[0x1E12B2590]();

    v1 = sub_1DD3C6080(v2);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1DD3C6868(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    v3 = sub_1DD63D0F8();
    v4 = sub_1DD3BBA74();
    v8 = MEMORY[0x1E12B2590](v2, v3, v4);

    sub_1DD3C640C(v5, &v8);
    v1 = v6;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1DD3C68F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3C6968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3C69D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AsrE3CandidateExpander(uint64_t a1)
{
  result = qword_1EE161918;
  if (!qword_1EE161918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD3C6B70(uint64_t a1)
{
  type metadata accessor for StringTokenizer(319);
  if (v1 <= 0x3F)
  {
    sub_1DD3C6C14();
    if (v2 <= 0x3F)
    {
      sub_1DD3C6C70(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DD3C6C14()
{
  result = qword_1EE163290;
  if (!qword_1EE163290)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE163290);
  }

  return result;
}

void sub_1DD3C6C70(uint64_t a1)
{
  if (!qword_1EE162FE0)
  {
    type metadata accessor for E3Orchestrator();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE162FE0);
    }
  }
}

void *sub_1DD3C6D0C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v229 = sub_1DD63CD18();
  v220 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v228 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v232 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v225 = &v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v226 = &v214 - v14;
  MEMORY[0x1EEE9AC00](v15);
  *&v222 = &v214 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v221 = (&v214 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v230 = (&v214 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v231 = &v214 - v22;
  memcpy(v239, a1, sizeof(v239));
  v238 = a2;
  v23 = v239[3];
  v24 = v239[4];
  v25 = v239[4] & 0x2000000000000000;
  v26 = HIBYTE(v239[4]) & 0xFLL;
  v27 = v239[3] & 0xFFFFFFFFFFFFLL;
  if ((v239[4] & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v239[4]) & 0xFLL;
  }

  else
  {
    v28 = v239[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v23 = v239[7];
    v24 = v239[8];
    v25 = v239[8] & 0x2000000000000000;
    v26 = HIBYTE(v239[8]) & 0xFLL;
    v27 = v239[7] & 0xFFFFFFFFFFFFLL;
    if (!((v239[8] & 0x2000000000000000) != 0 ? HIBYTE(v239[8]) & 0xFLL : v239[7] & 0xFFFFFFFFFFFFLL))
    {
      v23 = v239[11];
      v24 = v239[12];
      v25 = v239[12] & 0x2000000000000000;
      v26 = HIBYTE(v239[12]) & 0xFLL;
      v27 = v239[11] & 0xFFFFFFFFFFFFLL;
    }
  }

  if (v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = v27;
  }

  if (!v30 || (v227 = a2, v31 = type metadata accessor for AsrE3CandidateExpander(0), (v32 = *(a3 + *(v31 + 28))) == 0))
  {

    return v238;
  }

  v224 = v31;
  v236 = v23;
  v237 = v24;
  v234 = 31868;
  v235 = 0xE200000000000000;
  sub_1DD3B7F10();

  v33 = sub_1DD6406D8();
  v223 = a3;
  v217 = a4;
  v218 = v32;
  if (v33)
  {
    v236 = v23;
    v237 = v24;
    v34 = sub_1DD6406E8();

    v39 = *(v34 + 16);
    if (v39)
    {
      v233 = v5;
      v236 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v39, 0, v35, v36, v37, v38);
      v40 = v236;
      v219 = v34;
      v41 = (v34 + 56);
      do
      {
        v43 = *(v41 - 3);
        v42 = *(v41 - 2);
        v44 = *(v41 - 1);
        v45 = *v41;

        v46 = MEMORY[0x1E12B2190](v43, v42, v44, v45);
        v48 = v47;

        v236 = v40;
        v54 = *(v40 + 16);
        v53 = *(v40 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1DD42A2D4(v53 > 1, v54 + 1, 1, v49, v50, v51, v52);
          v40 = v236;
        }

        *(v40 + 16) = v54 + 1;
        v55 = v40 + 16 * v54;
        *(v55 + 32) = v46;
        *(v55 + 40) = v48;
        v41 += 4;
        --v39;
      }

      while (v39);

      v5 = v233;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DD643F90;
    *(v40 + 32) = v23;
    *(v40 + 40) = v24;
  }

  v56 = v223 + *(v224 + 6);
  v57 = *(v56 + 8);

  v58 = sub_1DD607064(v57);
  if (v58 == 3)
  {
    goto LABEL_26;
  }

  v60 = v58;
  v61 = &qword_1DD643000;
  if (sub_1DD6070B0(v58))
  {
    v62 = v223;
    v63 = sub_1DD3C82CC(v40);

    MEMORY[0x1EEE9AC00](v64);
    *(&v214 - 2) = v62;
    *(&v214 - 1) = v239;
    v65 = sub_1DD5E7B34(sub_1DD3C976C, (&v214 - 2), v63);
    if (!v5)
    {
      v76 = v65;
      v224 = v63;
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v77 = sub_1DD63F9F8();
      v219 = __swift_project_value_buffer(v77, qword_1EE16F068);
      v78 = sub_1DD63F9D8();
      v79 = sub_1DD640368();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1DD38D000, v78, v79, "[UCG][ASR-E3] Candidates:", v80, 2u);
        MEMORY[0x1E12B3DA0](v80, -1, -1);
      }

      v226 = v76;
      v86 = *(v76 + 16);
      v233 = 0;
      v87 = v231;
      *&v225 = v86;
      if (v86)
      {
        v88 = v226 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v89 = v232[9];
        v215 = (v220 + 1);
        *&v85 = 136315138;
        v214 = v85;
        v90 = v225;
        v216 = v89;
        do
        {
          sub_1DD3C68F8(v88, v87);
          v91 = sub_1DD63F9D8();
          v92 = sub_1DD640368();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v220 = v94;
            v236 = v94;
            *v93 = v214;
            v95 = v228;
            Contact.nameComponents.getter(v94);
            v96 = sub_1DD63CCF8();
            v98 = v97;
            v99 = v95;
            v89 = v216;
            (*v215)(v99, v229);
            sub_1DD390754(v231, &qword_1ECCDBBE8, &qword_1DD644470);
            v100 = sub_1DD39565C(v96, v98, &v236);
            v87 = v231;

            *(v93 + 4) = v100;
            _os_log_impl(&dword_1DD38D000, v91, v92, "%s", v93, 0xCu);
            v101 = v220;
            __swift_destroy_boxed_opaque_existential_1(v220);
            MEMORY[0x1E12B3DA0](v101, -1, -1);
            MEMORY[0x1E12B3DA0](v93, -1, -1);
          }

          else
          {

            sub_1DD390754(v87, &qword_1ECCDBBE8, &qword_1DD644470);
          }

          v88 += v89;
          --v90;
        }

        while (v90);
      }

      v102 = v227;
      v103 = v227[2];
      v5 = MEMORY[0x1E69E7CC0];
      if (v103)
      {
        v236 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4(0, v103, 0, v81, v82, v83, v84);
        v5 = v236;
        v104 = v102 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v231 = v232[9];
        v105 = v221;
        do
        {
          v106 = v230;
          sub_1DD3C68F8(v104, v230);
          v107 = *v106;
          v108 = v106[1];

          sub_1DD390754(v106, &qword_1ECCDBBE8, &qword_1DD644470);
          v236 = v5;
          v114 = *(v5 + 16);
          v113 = *(v5 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_1DD42A2D4(v113 > 1, v114 + 1, 1, v109, v110, v111, v112);
            v105 = v221;
            v5 = v236;
          }

          *(v5 + 16) = v114 + 1;
          v115 = v5 + 16 * v114;
          *(v115 + 32) = v107;
          *(v115 + 40) = v108;
          v104 += v231;
          --v103;
        }

        while (v103);
      }

      else
      {
        v105 = v221;
      }

      v121 = 0;
      v231 = MEMORY[0x1E69E7CC0];
      v61 = &v236;
LABEL_61:
      v40 = v226;
      while (v225 != v121)
      {
        if (v121 >= *(v40 + 16))
        {
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v122 = (*(v232 + 80) + 32) & ~*(v232 + 80);
        v123 = v232[9];
        v124 = sub_1DD3C68F8(v40 + v122 + v123 * v121, v105);
        v125 = v105[1];
        v236 = *v105;
        v237 = v125;
        MEMORY[0x1EEE9AC00](v124);
        *(&v214 - 2) = &v236;
        v126 = v233;
        v127 = sub_1DD450388();
        v233 = v126;
        if (v127)
        {
          sub_1DD390754(v105, &qword_1ECCDBBE8, &qword_1DD644470);
          ++v121;
          goto LABEL_61;
        }

        sub_1DD3C69D0(v105, v222);
        v128 = v231;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v234 = v128;
        if (isUniquelyReferenced_nonNull_native)
        {
          v130 = v128;
        }

        else
        {
          sub_1DD42B4F8(0, *(v128 + 16) + 1, 1);
          v105 = v221;
          v130 = v234;
        }

        v40 = v226;
        v132 = *(v130 + 16);
        v131 = *(v130 + 24);
        v133 = v132 + 1;
        if (v132 >= v131 >> 1)
        {
          v230 = *(v130 + 16);
          v231 = v132 + 1;
          sub_1DD42B4F8(v131 > 1, v132 + 1, 1);
          v132 = v230;
          v133 = v231;
          v105 = v221;
          v130 = v234;
        }

        ++v121;
        *(v130 + 16) = v133;
        v231 = v130;
        sub_1DD3C69D0(v222, v130 + v122 + v132 * v123);
      }

      v40 = 0;
      v134 = v224;
      v232 = v224[2];
      v230 = MEMORY[0x1E69E7CC0];
LABEL_73:
      v135 = 5 * v40;
      while (v232 != v40)
      {
        if (v40 >= v134[2])
        {
          goto LABEL_122;
        }

        v61 = &v214;
        v136 = v134[v135 + 4];
        v137 = v134[v135 + 5];
        v138 = v134[v135 + 6];
        v139 = v134[v135 + 7];
        v140 = v134[v135 + 8];
        v236 = v137;
        v237 = v138;
        MEMORY[0x1EEE9AC00](v134);
        *(&v214 - 2) = &v236;

        v141 = v233;
        v142 = sub_1DD450388();
        v233 = v141;
        if (!v142)
        {
          v143 = v230;
          v144 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v143;
          if ((v144 & 1) == 0)
          {
            sub_1DD42B4BC();
            v143 = v234;
          }

          v134 = v224;
          v61 = v143[2];
          v145 = (v61 + 1);
          if (v61 >= v143[3] >> 1)
          {
            v230 = (v61 + 1);
            sub_1DD42B4BC();
            v145 = v230;
            v134 = v224;
            v143 = v234;
          }

          ++v40;
          v143[2] = v145;
          v230 = v143;
          v146 = &v143[5 * v61];
          v146[4] = v136;
          v146[5] = v137;
          v146[6] = v138;
          *(v146 + 14) = v139;
          v146[8] = v140;
          goto LABEL_73;
        }

        v135 += 5;
        ++v40;
        v134 = v224;
      }

      v147 = v231;

      sub_1DD60782C();

      v148 = sub_1DD63F9D8();
      v149 = sub_1DD640368();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 134217984;
        v151 = *(v147 + 16);

        *(v150 + 4) = v151;

        _os_log_impl(&dword_1DD38D000, v148, v149, "[UCG][ASR-E3] Generated new (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to always", v150, 0xCu);
        MEMORY[0x1E12B3DA0](v150, -1, -1);
      }

      else
      {
      }

      sub_1DD3C8668(v218, v230, MEMORY[0x1E69E7CC0], v217);

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if ((sub_1DD607F98(v60) & 1) == 0)
  {
    if (sub_1DD60801C(v60))
    {
      v72 = v223;
      v73 = sub_1DD3C82CC(v40);

      MEMORY[0x1EEE9AC00](v74);
      *(&v214 - 2) = v72;
      *(&v214 - 1) = v239;
      v75 = sub_1DD5E7B34(sub_1DD3C94F4, (&v214 - 2), v73);
      if (!v5)
      {
        v152 = v75;
        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v216 = v56;
        v219 = v73;
        v233 = 0;
        v153 = sub_1DD63F9F8();
        v154 = __swift_project_value_buffer(v153, qword_1EE16F068);
        v155 = sub_1DD63F9D8();
        v156 = sub_1DD640368();
        v157 = os_log_type_enabled(v155, v156);
        v230 = v154;
        if (v157)
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_1DD38D000, v155, v156, "[UCG][ASR-E3] Candidates:", v158, 2u);
          MEMORY[0x1E12B3DA0](v158, -1, -1);
        }

        v221 = v152;
        v160 = v152[2];
        if (v160)
        {
          v161 = v221 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
          v162 = v232[9];
          v224 = v220 + 1;
          *&v159 = 136315138;
          v222 = v159;
          v226 = v162;
          do
          {
            v163 = v225;
            sub_1DD3C68F8(v161, v225);
            v164 = sub_1DD63F9D8();
            v165 = sub_1DD640368();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              v167 = swift_slowAlloc();
              v232 = v167;
              v236 = v167;
              *v166 = v222;
              v168 = v228;
              Contact.nameComponents.getter(v167);
              v231 = sub_1DD63CCF8();
              v169 = v163;
              v171 = v170;
              (*v224)(v168, v229);
              sub_1DD390754(v169, &qword_1ECCDBBE8, &qword_1DD644470);
              v172 = sub_1DD39565C(v231, v171, &v236);

              *(v166 + 4) = v172;
              _os_log_impl(&dword_1DD38D000, v164, v165, "%s", v166, 0xCu);
              v173 = v232;
              __swift_destroy_boxed_opaque_existential_1(v232);
              MEMORY[0x1E12B3DA0](v173, -1, -1);
              v174 = v166;
              v162 = v226;
              MEMORY[0x1E12B3DA0](v174, -1, -1);
            }

            else
            {

              sub_1DD390754(v163, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v161 += v162;
            --v160;
          }

          while (v160);
        }

        v175 = v221;

        v176 = sub_1DD63F9D8();
        v177 = sub_1DD640368();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 134217984;
          v179 = v175[2];

          *(v178 + 4) = v179;

          _os_log_impl(&dword_1DD38D000, v176, v177, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and not passing any to CRR since triggering condition is set to None", v178, 0xCu);
          MEMORY[0x1E12B3DA0](v178, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v204 = v219;
        if (*(v216 + 56) == 1)
        {
          sub_1DD3BEE08(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v206 = v205;
          v208 = *(v205 + 16);
          v207 = *(v205 + 24);
          v209 = v208 + 1;
          if (v208 >= v207 >> 1)
          {
            sub_1DD3BEE08(v207 > 1, v208 + 1, 1, v205);
            v206 = v212;
          }

          *(v206 + 16) = v209;
          *(v206 + v208 + 32) = 0;
          if (!v227[2])
          {
            v210 = *(v206 + 24);
            v211 = v208 + 2;
            if (v211 > (v210 >> 1))
            {
              sub_1DD3BEE08(v210 > 1, v211, 1, v206);
              v206 = v213;
            }

            *(v206 + 16) = v211;
            *(v206 + v209 + 32) = 1;
          }
        }

        else
        {
          v206 = MEMORY[0x1E69E7CC0];
        }

        sub_1DD3C8668(v218, v204, v206, v217);

        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_26:

LABEL_27:

    return v238;
  }

  if (qword_1EE165FB0 != -1)
  {
LABEL_123:
    swift_once();
  }

  v66 = sub_1DD63F9F8();
  v67 = __swift_project_value_buffer(v66, qword_1EE16F068);
  v68 = v227;

  v231 = v67;
  v69 = sub_1DD63F9D8();
  v70 = sub_1DD640368();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = v68[2];

    _os_log_impl(&dword_1DD38D000, v69, v70, "[UCG][ASR-E3] Candidate count to CRR pre ASR-E3: %ld", v71, 0xCu);
    MEMORY[0x1E12B3DA0](v71, -1, -1);
  }

  else
  {
  }

  v116 = v226;
  if (v68[2])
  {
    goto LABEL_26;
  }

  v117 = v223;
  v118 = sub_1DD3C82CC(v40);

  MEMORY[0x1EEE9AC00](v119);
  *(&v214 - 2) = v117;
  *(&v214 - 1) = v239;
  v120 = sub_1DD5E7B34(sub_1DD3C976C, (&v214 - 2), v118);
  if (!v5)
  {
    v180 = v120;
    *&v222 = v118;
    v233 = 0;
    v181 = sub_1DD63F9D8();
    v182 = sub_1DD640368();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_1DD38D000, v181, v182, "[UCG][ASR-E3] Candidates:", v183, 2u);
      v184 = v183;
      v116 = v226;
      MEMORY[0x1E12B3DA0](v184, -1, -1);
    }

    v224 = v180;
    v186 = v180[2];
    if (v186)
    {
      v187 = v224 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
      v232 = v232[9];
      v227 = v220 + 1;
      *&v185 = *(v61 + 2704);
      v225 = v185;
      do
      {
        sub_1DD3C68F8(v187, v116);
        v188 = sub_1DD63F9D8();
        v189 = sub_1DD640368();
        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v230 = v191;
          v236 = v191;
          *v190 = v225;
          v192 = v228;
          Contact.nameComponents.getter(v191);
          v193 = sub_1DD63CCF8();
          v195 = v194;
          (*v227)(v192, v229);
          sub_1DD390754(v226, &qword_1ECCDBBE8, &qword_1DD644470);
          v196 = sub_1DD39565C(v193, v195, &v236);

          *(v190 + 4) = v196;
          _os_log_impl(&dword_1DD38D000, v188, v189, "%s", v190, 0xCu);
          v197 = v230;
          __swift_destroy_boxed_opaque_existential_1(v230);
          MEMORY[0x1E12B3DA0](v197, -1, -1);
          v198 = v190;
          v116 = v226;
          MEMORY[0x1E12B3DA0](v198, -1, -1);
        }

        else
        {

          sub_1DD390754(v116, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        v187 += v232;
        --v186;
      }

      while (v186);
    }

    v199 = v224;

    sub_1DD60782C();

    v200 = sub_1DD63F9D8();
    v201 = sub_1DD640368();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 134217984;
      v203 = v199[2];

      *(v202 + 4) = v203;

      _os_log_impl(&dword_1DD38D000, v200, v201, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to noCandidatesInCrr", v202, 0xCu);
      MEMORY[0x1E12B3DA0](v202, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_1DD3C8668(v218, v222, MEMORY[0x1E69E7CC0], v217);

    goto LABEL_27;
  }

LABEL_31:
}

unint64_t sub_1DD3C82CC(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);

  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E12B2430](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1DD39565C(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v5, v6, "[UCG][ASR-E3] Running Euclid embedding on queries: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
    MEMORY[0x1E12B3DA0](v7, -1, -1);
  }

  v12 = type metadata accessor for AsrE3CandidateExpander(0);
  if (!*(v2 + *(v12 + 28)))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (v2 + *(v12 + 24));
  v15 = v13[5];
  v14 = v13[6];
  v17 = *(v13 + 3);
  v16 = *(v13 + 4);
  v21[3] = type metadata accessor for StringTokenizer(0);
  v21[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1DD3C96F0(v2, boxed_opaque_existential_1, type metadata accessor for StringTokenizer);

  v19 = sub_1DD4B822C(a1, v16, v17, v21, v14, v15);

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v19;
}

uint64_t sub_1DD3C8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a4;
  v8 = sub_1DD63D0F8();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v42 - v16;
  v17 = type metadata accessor for InferenceEuclidLog(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4B8C28(a2, v20);
  v21 = *(v18 + 28);
  v45 = v20;
  v22 = &v20[v21];
  v42 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v23 = &v22[*(v42 + 28)];
  if (*(v23 + 1) != 1)
  {
    v24 = *(v5 + *(type metadata accessor for AsrE3CandidateExpander(0) + 24) + 48);
    *(v23 + 4) = v24;
    v23[20] = 0;
  }

  v43 = v22;
  v46 = v5;
  v25 = *(a3 + 16);
  if (v25)
  {
    v26 = a3 + 32;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v51;
    v29 = (v50 + 32);
    v49 = (v50 + 32);
    do
    {
      ++v26;
      sub_1DD63D088();
      if (__swift_getEnumTagSinglePayload(v14, 1, v28) == 1)
      {
        sub_1DD390754(v14, &qword_1ECCDBAC8, &qword_1DD643E60);
      }

      else
      {
        v30 = *v29;
        (*v29)(v52, v14, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BED30();
          v27 = v33;
        }

        v31 = *(v27 + 16);
        if (v31 >= *(v27 + 24) >> 1)
        {
          sub_1DD3BED30();
          v27 = v34;
        }

        *(v27 + 16) = v31 + 1;
        v29 = v49;
        v32 = v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31;
        v28 = v51;
        v30(v32, v52, v51);
      }

      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v51;
  }

  v35 = v43;
  v36 = *(v42 + 20);

  *(v35 + v36) = v27;
  v37 = *(v46 + *(type metadata accessor for AsrE3CandidateExpander(0) + 24) + 8);

  if (sub_1DD607064(v37) == 3)
  {
    v38 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v28);
  }

  else
  {
    v38 = v44;
    sub_1DD6080A0();
  }

  v39 = v47;
  v40 = v45;
  sub_1DD3C9510(v38, v35);
  sub_1DD5AC168();
  sub_1DD5AC8AC();
  sub_1DD390754(v39, &qword_1ECCDBAC8, &qword_1DD643E60);
  return sub_1DD3C9638(v40, type metadata accessor for InferenceEuclidLog);
}

uint64_t sub_1DD3C8AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v32 = *(a1 + 16);
  v31 = *(a2 + 16);
  if (v31 >= v32)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1DD42B404(0, v5, 0);
  v6 = v38;
  v30 = a1;
  v28 = a2;
  if (v5)
  {
    v29 = a1 + 32;
    v27 = a2 + 32;

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v8)
      {
        sub_1DD3C94EC(__src);
        memcpy(__dst, __src, 0x110uLL);
        v8 = 1;
        v11 = v34;
      }

      else
      {
        v12 = v32;
        v11 = v34;
        if (v10 == v32)
        {
          goto LABEL_12;
        }

        if (v10 >= v32)
        {
          goto LABEL_45;
        }

        result = memcpy(__src, (v29 + 264 * v10), 0x108uLL);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_46;
        }

        if (v9 == v31)
        {
LABEL_12:
          sub_1DD3C94EC(__src);
          memcpy(__dst, __src, 0x110uLL);
          v8 = 1;
        }

        else
        {
          if (v9 >= v31)
          {
            goto LABEL_47;
          }

          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_48;
          }

          v14 = *(v27 + 8 * v9);
          memcpy(__dst, (v29 + 264 * v10), 0x108uLL);
          __dst[33] = v14;
          nullsub_1();
          sub_1DD3C9478(__src, v35);

          v8 = 0;
          v9 = v13;
        }

        v10 = v12;
      }

      memcpy(__src, __dst, sizeof(__src));
      result = sub_1DD3C94D4(__src);
      if (result == 1)
      {
        goto LABEL_49;
      }

      v15 = a3(__dst, __dst[33]);
      if (v11)
      {
        break;
      }

      v16 = v15;
      v34 = 0;
      v17 = v10;
      memcpy(v35, __dst, sizeof(v35));
      result = sub_1DD390754(v35, &qword_1ECCDBF88, &qword_1DD644468);
      v38 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1DD42B404(v18 > 1, v19 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v19 + 1;
      *(v6 + 8 * v19 + 32) = v16;
      --v5;
      v10 = v17;
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    memcpy(v35, __dst, sizeof(v35));
    sub_1DD390754(v35, &qword_1ECCDBF88, &qword_1DD644468);
    return v6;
  }

  else
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_24:
    for (i = 264 * v10 + 32; ; i += 264)
    {
      if ((v8 & 1) != 0 || v32 == v10)
      {
LABEL_38:

        return v6;
      }

      if (v10 >= v32)
      {
        break;
      }

      result = memcpy(v35, (v30 + i), 0x108uLL);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_42;
      }

      if (v31 == v9)
      {
        goto LABEL_38;
      }

      if (v9 >= v31)
      {
        goto LABEL_43;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_44;
      }

      v21 = *(v28 + 32 + 8 * v9);
      memcpy(__dst, (v30 + i), 0x108uLL);
      __dst[33] = v21;
      sub_1DD3C9478(v35, __src);

      v22 = a3(__dst, v21);
      if (v34)
      {
        memcpy(__src, __dst, sizeof(__src));
        sub_1DD390754(__src, &qword_1ECCDBF88, &qword_1DD644468);

        return v6;
      }

      v23 = v22;
      v34 = 0;
      v24 = v10;
      memcpy(__src, __dst, sizeof(__src));
      result = sub_1DD390754(__src, &qword_1ECCDBF88, &qword_1DD644468);
      v38 = v6;
      v26 = *(v6 + 16);
      v25 = *(v6 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1DD42B404(v25 > 1, v26 + 1, 1);
        v6 = v38;
      }

      v8 = 0;
      *(v6 + 16) = v26 + 1;
      *(v6 + 8 * v26 + 32) = v23;
      ++v9;
      v10 = v24 + 1;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  return result;
}

void *sub_1DD3C8F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v55 = a3;
  v54 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1DD63CD18();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48[-v15];
  v17 = *(a1 + 8);
  v57 = *a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = (a2 + *(type metadata accessor for AsrE3CandidateExpander(0) + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = v59;
  result = (*(v22 + 24))(v17, v18, v21, v22);
  if (!v23)
  {
    v59 = v18;
    v51 = v10;
    if (result)
    {
      v25 = v13;
      v26 = v16;
      v50 = result;
      sub_1DD40B108();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v27 = sub_1DD63F9F8();
      __swift_project_value_buffer(v27, qword_1EE16F068);
      sub_1DD3C96F0(v16, v25, type metadata accessor for Contact);

      v28 = sub_1DD63F9D8();
      v29 = sub_1DD640368();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v25;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v59 = v32;
        v61[0] = v32;
        *v31 = 136315394;
        v33 = v26;
        v34 = v51;
        v57 = v28;
        Contact.nameComponents.getter(v32);
        v35 = sub_1DD63CCF8();
        v37 = v36;
        v49 = v29;
        v38 = v34;
        v26 = v33;
        (*(v53 + 8))(v38, v52);
        sub_1DD3C9638(v30, type metadata accessor for Contact);
        v39 = sub_1DD39565C(v35, v37, v61);

        *(v31 + 4) = v39;
        *(v31 + 12) = 2048;
        *(v31 + 14) = v19;
        v40 = v57;
        _os_log_impl(&dword_1DD38D000, v57, v49, "[UCG][ASR-E3] Euclid candidate found: %s, with score: %f", v31, 0x16u);
        v41 = v59;
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x1E12B3DA0](v41, -1, -1);
        MEMORY[0x1E12B3DA0](v31, -1, -1);
      }

      else
      {

        sub_1DD3C9638(v25, type metadata accessor for Contact);
      }

      v43 = v58;
      v44 = v55;
      v45 = v56;
      v46 = v54;
      sub_1DD43038C(v56);

      memcpy(v61, v45 + 8, 0x108uLL);
      sub_1DD3C9478(v44, &v60);
      sub_1DD3C9580(v61);
      memcpy(v45 + 8, v44, 0x108uLL);
      v45[*(v46 + 232)] = 1;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD3C96F0(v45, v43 + *(v47 + 36), type metadata accessor for ContactResolver.SignalSet);
      sub_1DD3C95D4(v26, v43);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v47);
      return sub_1DD3C9638(v45, type metadata accessor for ContactResolver.SignalSet);
    }

    else
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      return __swift_storeEnumTagSinglePayload(v58, 1, 1, v42);
    }
  }

  return result;
}

uint64_t sub_1DD3C94D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD3C9510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3C95D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3C9638(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
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

uint64_t sub_1DD3C96F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AsrPhoneticSequenceFetcher(uint64_t a1)
{
  result = qword_1ECCDBF98;
  if (!qword_1ECCDBF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD3C97F8(uint64_t a1)
{
  sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    sub_1DD3C987C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD3C987C(uint64_t a1)
{
  if (!qword_1EE1601E8)
  {
    sub_1DD39638C(255, &qword_1EE1601F0, 0x1E698D228);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1601E8);
    }
  }
}

uint64_t sub_1DD3C98E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for AsrPhoneticSequenceFetcher(0) + 20));
  if (!v3)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v73 = sub_1DD63F9F8();
    __swift_project_value_buffer(v73, qword_1EE16F068);
    v65 = sub_1DD63F9D8();
    v74 = sub_1DD640378();
    if (os_log_type_enabled(v65, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1DD38D000, v65, v74, "[AsrPhoneticSequenceFetcher] could not fetch speech lattice", v75, 2u);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_76:

    return 0;
  }

  v4 = v3;
  v5 = [v4 recognition];
  v6 = &qword_1DD643000;
  if (!v5 || (v7 = sub_1DD3CA4C0(v5)) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_70;
  }

  v8 = v7;
  v77 = v4;
  v4 = 0;
  v85 = v7 & 0xC000000000000001;
  v86 = sub_1DD3CC020();
  v78 = MEMORY[0x1E69E7CC0];
  v84 = v8 & 0xFFFFFFFFFFFFFF8;
  v6 = &unk_1EE165000;
  v79 = v8;
  while (1)
  {
LABEL_5:
    if (v86 == v4)
    {

      return v78;
    }

    if (v85)
    {
      v9 = MEMORY[0x1E12B2C10](v4, v8);
    }

    else
    {
      if (v4 >= *(v84 + 16))
      {
        goto LABEL_83;
      }

      v9 = *(v8 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_82;
    }

    v83 = v4 + 1;
    v89 = v9;
    v10 = sub_1DD3CA3EC(v9, &selRef_interpretations, &qword_1EE1601A8, 0x1E698D220);
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_3_14();
    if (!v13)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16F068);
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640378();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_54();
      *v17 = 134349056;
      *(v17 + 4) = v4;
      _os_log_impl(&dword_1DD38D000, v15, v16, "[AsrPhoneticSequenceFetcher] interpretations is nil for phrase %{public}ld, skipping phrase", v17, 0xCu);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_20:
    ++v4;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  v88 = v10;
  if (v10 >> 62)
  {
    v63 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1DD6407B8();
    v11 = v63;
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {

    goto LABEL_20;
  }

  v18 = 0;
  v81 = v11;
  v80 = v12;
  while (1)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      v19 = v18;
      v20 = MEMORY[0x1E12B2C10](v18, v88);
    }

    else
    {
      if (v18 >= *(v11 + 16))
      {
        goto LABEL_85;
      }

      v19 = v18;
      v20 = *(v88 + 32 + 8 * v18);
    }

    v87 = v20;
    v21 = __OFADD__(v19, 1);
    v4 = v19 + 1;
    if (v21)
    {
      goto LABEL_84;
    }

    v82 = v4;
    v22 = sub_1DD3CA3EC(v20, &selRef_tokens, &qword_1ECCDBFB0, 0x1E698D248);
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_3_14();
    if (!v13)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v52 = sub_1DD63F9F8();
    __swift_project_value_buffer(v52, qword_1EE16F068);
    v4 = v87;
    v53 = sub_1DD63F9D8();
    v54 = sub_1DD640378();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_54();
      v56 = swift_slowAlloc();
      v97[0] = v56;
      *v55 = 136315138;
      v57 = [v4 description];
      v58 = sub_1DD63FDD8();
      v60 = v59;

      v61 = v58;
      v8 = v79;
      v62 = sub_1DD39565C(v61, v60, v97);

      *(v55 + 4) = v62;
      v6 = &unk_1EE165000;
      _os_log_impl(&dword_1DD38D000, v53, v54, "[AsrPhoneticSequenceFetcher] no tokens found for interpretation %s, skipping", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

LABEL_65:
    v11 = v81;
    v18 = v82;
    if (v82 == v80)
    {

      v4 = v83;
      goto LABEL_5;
    }
  }

  v23 = v22;
  v24 = 0;
  v95 = v22 & 0xC000000000000001;
  v96 = sub_1DD3CC020();
  v93 = v23;
  v94 = v23 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    v25 = v24;
LABEL_30:
    if (v96 == v25)
    {

      v8 = v79;
      goto LABEL_65;
    }

    if (v95)
    {
      v26 = MEMORY[0x1E12B2C10](v25, v23);
    }

    else
    {
      if (v25 >= *(v94 + 16))
      {
        goto LABEL_81;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    v24 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      v28 = sub_1DD3CA460(v26, &selRef_text);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v32 = sub_1DD3CA460(v27, &selRef_phoneSequence);
        if (v33)
        {
          v4 = v32;
          v34 = v33;
          OUTLINED_FUNCTION_3_14();
          if (!v13)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v35 = sub_1DD63F9F8();
          __swift_project_value_buffer(v35, qword_1EE16F068);

          v36 = sub_1DD63F9D8();
          v37 = sub_1DD640368();

          v90 = v4;
          if (os_log_type_enabled(v36, v37))
          {
            v4 = OUTLINED_FUNCTION_54();
            v38 = swift_slowAlloc();
            v97[0] = v38;
            *v4 = 136315138;
            *(v4 + 4) = sub_1DD39565C(v30, v31, v97);
            _os_log_impl(&dword_1DD38D000, v36, v37, "[AsrPhoneticSequenceFetcher] interpretation.token.text: %s", v4, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v38);
            v6 = &unk_1EE165000;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          v97[0] = a1;
          v97[1] = a2;
          sub_1DD3B7F10();
          if (sub_1DD6406D8())
          {

            v42 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BE2A4();
              v42 = v50;
            }

            v43 = *(v42 + 16);
            if (v43 >= *(v42 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v42 = v51;
            }

            *(v42 + 16) = v43 + 1;
            v78 = v42;
            v44 = v42 + 16 * v43;
            v4 = v90;
            *(v44 + 32) = v90;
            *(v44 + 40) = v34;

            v45 = sub_1DD63F9D8();
            v46 = sub_1DD640368();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v4 = swift_slowAlloc();
              v97[0] = v4;
              *v47 = 136315394;
              v48 = sub_1DD39565C(v30, v31, v97);

              *(v47 + 4) = v48;
              *(v47 + 12) = 2080;
              v49 = sub_1DD39565C(v90, v34, v97);

              *(v47 + 14) = v49;
              _os_log_impl(&dword_1DD38D000, v45, v46, "[AsrPhoneticSequenceFetcher] Contact name token found: %s, phone sequence: %s", v47, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
            }

            else
            {
            }

            v6 = &unk_1EE165000;
            v23 = v93;
            continue;
          }

          v23 = v93;
          goto LABEL_49;
        }

        v23 = v93;
      }

      OUTLINED_FUNCTION_3_14();
      if (!v13)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v39 = sub_1DD63F9F8();
      __swift_project_value_buffer(v39, qword_1EE16F068);
      v4 = sub_1DD63F9D8();
      v40 = sub_1DD640378();
      if (os_log_type_enabled(v4, v40))
      {
        v41 = OUTLINED_FUNCTION_54();
        *v41 = 134217984;
        *(v41 + 4) = v25;
        _os_log_impl(&dword_1DD38D000, v4, v40, "[AsrPhoneticSequenceFetcher] no text or phone sequence found for token at index %ld, skipping", v41, 0xCu);
        OUTLINED_FUNCTION_0_1();
      }

LABEL_49:
      ++v25;
      goto LABEL_30;
    }

    break;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_70:
  v64 = sub_1DD63F9F8();
  __swift_project_value_buffer(v64, qword_1EE16F068);
  v65 = v4;
  v66 = sub_1DD63F9D8();
  v67 = sub_1DD640378();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_54();
    v69 = swift_slowAlloc();
    v97[0] = v69;
    *v68 = v6[338];
    sub_1DD3CA538(v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFA8, &unk_1DD6444A0);
    v70 = sub_1DD63FE38();
    v72 = sub_1DD39565C(v70, v71, v97);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1DD38D000, v66, v67, "[AsrPhoneticSequenceFetcher] speech package does not contain any phrases: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();

    goto LABEL_76;
  }

  return 0;
}

id sub_1DD3CA34C(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    sub_1DD3CA5A4(a1, a2, result);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD3CA3EC(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1DD39638C(0, a3, a4);
  v8 = sub_1DD640118();

  return v8;
}

uint64_t sub_1DD3CA460(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD63FDD8();

  return v4;
}

uint64_t sub_1DD3CA4C0(void *a1)
{
  v2 = [a1 phrases];

  if (!v2)
  {
    return 0;
  }

  sub_1DD39638C(0, &unk_1EE160220, 0x1E698D230);
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD3CA538(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

void sub_1DD3CA5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();

  [a3 setPhoneSequence_];
}

uint64_t sub_1DD3CA614(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1DD3CA6B8()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1DD3CA738()
{
  sub_1DD3CA6B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3CA7D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 3);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(31, 5);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  v34 = 2;
  type metadata accessor for DateTime.Date.Holiday();
  swift_allocObject();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v6 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v6);
  OUTLINED_FUNCTION_1_11();
  v7 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v7);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v8 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v8);
  OUTLINED_FUNCTION_1_11();
  v9 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v9);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v10 = OUTLINED_FUNCTION_34();
  v11 = DateTime.init(occurringIn:)(v10);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v11;
  *(inited + 112) = 1;
  v12 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v12, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v13, v14, v15, v16, v28, *v30, *&v30[4], v30[6], v34);
  OUTLINED_FUNCTION_2_10();
  v17 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v17);
  OUTLINED_FUNCTION_1_11();
  v18 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v18);
  v19 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v19, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v20, v21, v22, v23, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_allocObject();
}

id sub_1DD3CAB14()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundQueue()) init];
  qword_1EE166630 = result;
  return result;
}

id static BackgroundQueue.shared.getter()
{
  if (qword_1EE166628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE166630;

  return v1;
}

id sub_1DD3CABA0()
{
  v12 = sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v6 = sub_1DD640438();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v7 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_2();
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FB98();
  sub_1DD3CBF88(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8098], v12);
  v8 = sub_1DD6404A8();
  v9 = objc_allocWithZone(type metadata accessor for BackgroundQueue());
  v10 = sub_1DD3CAE38(v8);
  swift_getObjectType();
  OUTLINED_FUNCTION_6_9();
  swift_deallocPartialClassInstance();
  return v10;
}

id sub_1DD3CAE38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock;
  *&v2[v4] = dispatch_semaphore_create(1);
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests] = 0;
  v5 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queue;
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queue] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFF0, &qword_1DD644568);
  swift_allocObject();
  v6 = a1;
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKey] = sub_1DD63FB48();
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKeyValue] = v6;
  v7 = *&v2[v5];
  v12 = v6;
  v13 = 0;

  v8 = v7;
  sub_1DD640468();

  v11.receiver = v2;
  v11.super_class = type metadata accessor for BackgroundQueue();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setMaxConcurrentOperationCount_];
  [v9 setUnderlyingQueue_];

  return v9;
}

void sub_1DD3CAF74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock;
  v3 = *&v0[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock];
  sub_1DD6404F8();

  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD640458();
  v4 = MEMORY[0x1E69E7CC0];
  if ((v69 & 1) == 0 && v67 == *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKeyValue])
  {
    type metadata accessor for InferenceError();
    swift_initStackObject();
    sub_1DD4DE96C(0, 0, 0xE000000000000000, 0xD000000000000078, 0x80000001DD66A4A0, 0x29286573756170, 0xE700000000000000, 52, v4, 2);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1EE16F0C8);
    sub_1DD4DEB78();

    goto LABEL_49;
  }

  v6 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests;
  v7 = *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests];
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_51;
  }

  *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests] = v9;
  if (v9 >= 2)
  {
    if (qword_1EE166510 == -1)
    {
LABEL_9:
      v10 = sub_1DD63F9F8();
      __swift_project_value_buffer(v10, qword_1EE16F0C8);
      v11 = v1;
      v12 = sub_1DD63F9D8();
      v13 = sub_1DD640358();
      if (!OUTLINED_FUNCTION_2_4(v13))
      {

LABEL_49:
        v61 = *&v1[v2];
        sub_1DD640508();

        return;
      }

      v14 = OUTLINED_FUNCTION_5_10();
      *v14 = 67109120;
      v14[1] = *&v1[v6];

      OUTLINED_FUNCTION_7_7(&dword_1DD38D000, v15, v16, "background queue is already paused. count=%u");
      goto LABEL_45;
    }

LABEL_51:
    OUTLINED_FUNCTION_0_17();
    swift_once();
    goto LABEL_9;
  }

  v63 = v2;
  [v1 setSuspended_];
  v68 = v4;
  v17 = [v1 operations];
  sub_1DD39638C(0, &qword_1ECCDBFD8, 0x1E696ADC0);
  OUTLINED_FUNCTION_6_9();
  v18 = sub_1DD640118();

  v19 = sub_1DD3CBDE8(v18);
  v65 = v1;
  v62 = v6;
  if (v19)
  {
    v20 = v19;
    if (v19 < 1)
    {
      __break(1u);
      goto LABEL_53;
    }

    v21 = 0;
    v22 = v18 & 0xC000000000000001;
    v23 = &off_1E8655000;
    v24 = qword_1EE16F0C8;
    v25 = &off_1E8655000;
    v66 = v19;
    v64 = v18;
    do
    {
      if (v22)
      {
        v26 = MEMORY[0x1E12B2C10](v21, v18);
      }

      else
      {
        v26 = *(v18 + 8 * v21 + 32);
      }

      v27 = v26;
      if ([v26 v23[506]])
      {
        if (qword_1EE166510 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v28 = sub_1DD63F9F8();
        __swift_project_value_buffer(v28, v24);
        v29 = v27;
        v30 = sub_1DD63F9D8();
        v31 = sub_1DD640358();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = v22;
          v33 = v23;
          v34 = v24;
          v35 = swift_slowAlloc();
          v36 = v25;
          v37 = OUTLINED_FUNCTION_5_10();
          *v35 = 138543362;
          *(v35 + 4) = v29;
          *v37 = v29;
          v38 = v29;
          _os_log_impl(&dword_1DD38D000, v30, v31, "cancelling operation %{public}@", v35, 0xCu);
          sub_1DD3CBE0C(v37);
          v25 = v36;
          OUTLINED_FUNCTION_0_1();
          v24 = v34;
          v23 = v33;
          v22 = v32;
          v18 = v64;
          v20 = v66;
          OUTLINED_FUNCTION_0_1();
        }

        [v29 v25[509]];
        v39 = v29;
        MEMORY[0x1E12B23F0]();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();

        v4 = v68;
      }

      else
      {
      }

      ++v21;
    }

    while (v20 != v21);
  }

  v40 = sub_1DD3CBDE8(v4);
  v1 = v65;
  if (!v40)
  {
LABEL_41:

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v57 = sub_1DD63F9F8();
    __swift_project_value_buffer(v57, qword_1EE16F0C8);
    v58 = v1;
    v12 = sub_1DD63F9D8();
    v59 = sub_1DD640358();
    v2 = v63;
    if (!OUTLINED_FUNCTION_2_4(v59))
    {

      v12 = v58;
      goto LABEL_48;
    }

    v60 = OUTLINED_FUNCTION_5_10();
    *v60 = 67240192;
    *(v60 + 4) = *&v1[v62];

    _os_log_impl(&dword_1DD38D000, v12, v18, "paused background queue. count=%{public}u", v60, 8u);
LABEL_45:
    OUTLINED_FUNCTION_0_1();
LABEL_48:

    goto LABEL_49;
  }

  v18 = v40;
  if (v40 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1E12B2C10](i, v4);
      }

      else
      {
        v42 = *(v4 + 8 * i + 32);
      }

      v43 = v42;
      [v42 waitUntilFinished];
      swift_getObjectType();
      v44 = OUTLINED_FUNCTION_6_9();
      if (dynamic_cast_existential_1_conditional(v44, v45, &protocol descriptor for RestartableOperation))
      {
        v47 = v46;
        v48 = qword_1EE166510;
        v49 = v43;
        if (v48 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v50 = sub_1DD63F9F8();
        __swift_project_value_buffer(v50, qword_1EE16F0C8);
        v51 = v49;
        v52 = sub_1DD63F9D8();
        v53 = sub_1DD640358();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = OUTLINED_FUNCTION_5_10();
          *v54 = 138543362;
          *(v54 + 4) = v51;
          *v55 = v51;
          _os_log_impl(&dword_1DD38D000, v52, v53, "re-enqueuing cancelled operation %{public}@", v54, 0xCu);
          sub_1DD3CBE0C(v55);
          v1 = v65;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        else
        {

          v52 = v51;
        }

        ObjectType = swift_getObjectType();
        v43 = (*(v47 + 8))(ObjectType, v47);
        [v1 addOperation_];
      }
    }

    goto LABEL_41;
  }

LABEL_53:
  __break(1u);
}

void sub_1DD3CB6AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock;
  v3 = *&v0[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock];
  sub_1DD6404F8();

  v4 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests;
  v5 = *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests];
  if (v5)
  {
    v6 = v5 - 1;
    *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests] = v6;
    if (v6)
    {
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v7 = sub_1DD63F9F8();
      __swift_project_value_buffer(v7, qword_1EE16F0C8);
      v8 = v1;
      v9 = sub_1DD63F9D8();
      v10 = sub_1DD640358();
      if (!OUTLINED_FUNCTION_2_4(v10))
      {

        v9 = v8;
        goto LABEL_13;
      }

      v11 = OUTLINED_FUNCTION_5_10();
      *v11 = 67240192;
      v11[1] = *&v1[v4];

      OUTLINED_FUNCTION_7_7(&dword_1DD38D000, v12, v13, "BackgroundQueue still paused. count=%{public}u");
    }

    else
    {
      [v1 setSuspended_];
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v14 = sub_1DD63F9F8();
      __swift_project_value_buffer(v14, qword_1EE16F0C8);
      v9 = sub_1DD63F9D8();
      v15 = sub_1DD640358();
      if (!os_log_type_enabled(v9, v15))
      {
        goto LABEL_13;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DD38D000, v9, v15, "resuming BackgroundQueue", v16, 2u);
    }

    OUTLINED_FUNCTION_0_1();
LABEL_13:
  }

  v17 = *&v1[v2];
  sub_1DD640508();
}

uint64_t sub_1DD3CB8A0(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v37 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v38 = sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_1DD63FB58();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = (v18 - v17);
  v20 = sub_1DD63FC18();
  v35 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v33 - v25;
  sub_1DD63FBE8();
  *v19 = v34;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E7F48], v13);
  sub_1DD63FBF8();
  (*(v15 + 8))(v19, v13);
  v27 = *(v21 + 8);
  v27(v23, v20);
  v34 = *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queue];
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  aBlock[4] = sub_1DD3CBE74;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD3CBCD0;
  aBlock[3] = &block_descriptor_0;
  v29 = _Block_copy(aBlock);
  v30 = v2;
  sub_1DD63FBA8();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1DD3CBF88(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
  v31 = v37;
  sub_1DD640718();
  MEMORY[0x1E12B2750](v26, v12, v7, v29);
  _Block_release(v29);
  (*(v39 + 8))(v7, v31);
  (*(v36 + 8))(v12, v38);
  v27(v26, v35);
}

uint64_t sub_1DD3CBCD0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id BackgroundQueue.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BackgroundQueue();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

uint64_t sub_1DD3CBDE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD6407B8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1DD3CBE0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF90, &qword_1DD6445B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD3CBF88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_6_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD3CBFCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD3CC024(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v37 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v36 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched - 8);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v40 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  LODWORD(v39) = sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD643F90;
  v20 = sub_1DD6408F8();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1DD392BD8();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v38 = v18;
  v39 = v17;
  sub_1DD63F998();

  v23 = v37;
  v24 = *(v37 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v35 = v14;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1DD42B564(0, v24, 0);
    v25 = v44;
    v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v27 = v23 + v26;
    v28 = *(v36 + 72);
    do
    {
      sub_1DD3CD140(v27, v9);
      sub_1DD3CC39C(v9, a2 & 1, v41 & 1, v42, v43, v12);
      sub_1DD3CD1A4(v9);
      v44 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = OUTLINED_FUNCTION_1_0(v29);
        sub_1DD42B564(v31, v30 + 1, 1);
        v25 = v44;
      }

      *(v25 + 16) = v30 + 1;
      sub_1DD3CD200(v12, v25 + v26 + v30 * v28);
      v27 += v28;
      --v24;
    }

    while (v24);
    v32 = v40;
    v14 = v35;
  }

  else
  {
    v32 = v40;
  }

  sub_1DD6404C8();
  v33 = v39;
  sub_1DD63F9A8();
  (*(v14 + 8))(v33, v32);
  return v25;
}

void sub_1DD3CC39C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v148 = a5;
  v150 = a4;
  v149 = a3;
  v154 = a2;
  v152 = a6;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = matched - 8;
  MEMORY[0x1EEE9AC00](matched);
  OUTLINED_FUNCTION_1_4();
  v151 = v10 - v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v147 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0();
  v164 = v14;
  v165 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v156 = (v16 - v17);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v147 - v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v147 - v21;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v160 = &v147 - v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v147 - v28;
  v30 = 0;
  v31 = *(v9 + 28);
  v153 = a1;
  v32 = a1 + v31;
  v163 = *(v32 + 216);
  v33 = *(v32 + 272);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v34 == v30)
    {
      v49 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v50 = *(v35 + 16);
      while (v50 != v49)
      {
        if (v49 >= *(v35 + 16))
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_2_11();
        v53 = v52 & ~v51;
        v55 = *(v54 + 72);
        sub_1DD3CDD14(v35 + v53 + v55 * v49, v24, &qword_1ECCDBBD8, &unk_1DD645A90);
        if (!v163 || (v56 = v24 + *(v164 + 36), (*(v56 + 3) & 1) != 0) || *(v56 + 4) == 1)
        {
          sub_1DD3CD2CC(v24, v161);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v167[0] = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DD42B5CC(0, *(v6 + 16) + 1, 1);
            v6 = v167[0];
          }

          v59 = *(v6 + 16);
          v58 = *(v6 + 24);
          v60 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            v61 = OUTLINED_FUNCTION_1_0(v58);
            v63 = v62;
            sub_1DD42B5CC(v61, v62, 1);
            v60 = v63;
            v6 = v167[0];
          }

          ++v49;
          *(v6 + 16) = v60;
          sub_1DD3CD2CC(v161, v6 + v53 + v59 * v55);
        }

        else
        {
          sub_1DD3CD264(v24);
          ++v49;
        }
      }

      v24 = *(v6 + 16);
      v163 = v24 - 1;
      v64 = &unk_1EE165000;
      v157 = v6;
      if (!((v24 > 1) | v154 & 1) || ((v24 == 0) & v154) != 0)
      {
        if (qword_1EE165FB0 != -1)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      }

      if (v24)
      {
        v169 = MEMORY[0x1E69E7CC0];
        sub_1DD42B5AC(0, v24, 0);
        v65 = 0;
        v155 = v6 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
        v66 = v169;
        while (v65 < *(v6 + 16))
        {
          v67 = v156;
          sub_1DD3CDD14(v155 + v165[9] * v65, v156, &qword_1ECCDBBD8, &unk_1DD645A90);
          v68 = &v67[*(v164 + 36)];
          v69 = type metadata accessor for ContactResolver.HandleSignalSet(0);
          v70 = v69[12];
          v71 = -999;
          if (!v68[v69[14]])
          {
            v71 = 0;
          }

          v72 = 256;
          if (!v68[v69[13]])
          {
            v72 = 0;
          }

          v161 = v72;
          v162 = v71;
          v73 = v69[11];
          if (v68[v69[10]])
          {
            v74 = 3;
          }

          else
          {
            v74 = 0;
          }

          v75 = 128;
          if (!v68[v70])
          {
            v75 = 0;
          }

          v159 = v75;
          v160 = v74;
          v76 = 64;
          if (!v68[v73])
          {
            v76 = 0;
          }

          v158 = v76;
          if (v68[2])
          {
            v77 = 32;
          }

          else
          {
            v77 = 0;
          }

          if (v68[3])
          {
            v78 = 16;
          }

          else
          {
            v78 = 0;
          }

          if (v68[4])
          {
            v79 = 8;
          }

          else
          {
            v79 = 0;
          }

          if (v68[1])
          {
            v80 = 2;
          }

          else
          {
            v80 = 0;
          }

          memcpy(v166, v67, 0x4AuLL);
          memcpy(v167, v67, 0x4AuLL);
          sub_1DD3C6A40(v166, v168);
          sub_1DD3CD264(v67);
          v169 = v66;
          v24 = v66[2];
          v81 = v66[3];
          if (v24 >= v81 >> 1)
          {
            v84 = OUTLINED_FUNCTION_1_0(v81);
            sub_1DD42B5AC(v84, v24 + 1, 1);
            v66 = v169;
          }

          v82 = (((v161 | v162) + v160) | v159 | v158 | v77) + v78 + v79 + v80;
          v66[2] = v24 + 1;
          v83 = &v66[11 * v24];
          memcpy(v83 + 4, v167, 0x50uLL);
          v83[14] = v82;
          if (v163 == v65)
          {

            v64 = &unk_1EE165000;
            goto LABEL_69;
          }

          ++v65;
          v6 = v157;
        }

        goto LABEL_111;
      }

      v66 = MEMORY[0x1E69E7CC0];
LABEL_69:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD5869B8();
        v66 = v146;
      }

      v105 = v66[2];
      v167[0] = (v66 + 4);
      v167[1] = v105;
      sub_1DD3CD33C(v167);
      if (v64[502] != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v106 = sub_1DD63F9F8();
      v164 = __swift_project_value_buffer(v106, qword_1EE16F068);
      v107 = sub_1DD63F9D8();
      v108 = sub_1DD640368();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v167[0] = v110;
        *v109 = 136315138;

        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
        v112 = MEMORY[0x1E12B2430](v66, v111);
        v114 = v113;

        v115 = sub_1DD39565C(v112, v114, v167);

        *(v109 + 4) = v115;
        _os_log_impl(&dword_1DD38D000, v107, v108, "scored handles: %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v110);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v116 = v66[2];
      if (v116)
      {
        v6 = v66[14];
        if (!__OFSUB__(v6, v150))
        {
          v117 = (v6 - v150) & ~((v6 - v150) >> 63);

          v118 = 0;
          v119 = MEMORY[0x1E69E7CC0];
          v24 = 88;
          v165 = v66;
LABEL_78:
          v120 = 88 * v118 + 32;
          while (v116 != v118)
          {
            if (v118 >= v66[2])
            {
              goto LABEL_110;
            }

            memcpy(v167, v66 + v120, 0x58uLL);
            if (v167[10] >= v117)
            {
              sub_1DD3CDD14(v167, v166, &qword_1ECCDBD68, &qword_1DD6440E8);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_6_10();
                v119 = v122;
              }

              v121 = *(v119 + 24);
              if (*(v119 + 16) >= v121 >> 1)
              {
                OUTLINED_FUNCTION_1_0(v121);
                sub_1DD3BEE1C();
                v119 = v123;
              }

              ++v118;
              OUTLINED_FUNCTION_4_10();
              v66 = v165;
              goto LABEL_78;
            }

            v120 += 88;
            ++v118;
          }

          v124 = v151;
          sub_1DD3CD140(v153, v151);
          if ((v154 & 1) == 0 || *(v119 + 16) <= 1uLL && (v149 & 1) == 0)
          {
            v125 = sub_1DD3C6AF0(v119);

            v126 = *(type metadata accessor for Contact(0) + 80);

            *(v124 + v126) = v125;
LABEL_107:
            v145 = v152;
            swift_beginAccess();
            sub_1DD3CD140(v124, v145);
            sub_1DD3CD1A4(v124);

            return;
          }

          if (!__OFSUB__(v6, v148))
          {
            v127 = (v6 - v148) & ~((v6 - v148) >> 63);
            v6 = v66[2];

            v128 = 0;
            v129 = MEMORY[0x1E69E7CC0];
            v24 = &qword_1DD6440E8;
LABEL_94:
            v130 = 88 * v128 + 32;
            while (v6 != v128)
            {
              if (v128 >= v66[2])
              {
                goto LABEL_112;
              }

              memcpy(v167, v66 + v130, 0x58uLL);
              if (v167[10] >= v127)
              {
                sub_1DD3CDD14(v167, v166, &qword_1ECCDBD68, &qword_1DD6440E8);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_6_10();
                  v129 = v132;
                }

                v131 = *(v129 + 24);
                if (*(v129 + 16) >= v131 >> 1)
                {
                  OUTLINED_FUNCTION_1_0(v131);
                  sub_1DD3BEE1C();
                  v129 = v133;
                }

                ++v128;
                OUTLINED_FUNCTION_4_10();
                v66 = v165;
                goto LABEL_94;
              }

              v130 += 88;
              ++v128;
            }

            v134 = sub_1DD3C6AF0(v129);

            v135 = *(type metadata accessor for Contact(0) + 80);
            v124 = v151;

            *(v124 + v135) = v134;
            v136 = sub_1DD63F9D8();
            v137 = sub_1DD640368();
            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v167[0] = v139;
              *v138 = 136315138;

              v141 = MEMORY[0x1E12B2430](v140, &type metadata for ContactHandle);
              v143 = v142;

              v144 = sub_1DD39565C(v141, v143, v167);

              *(v138 + 4) = v144;
              _os_log_impl(&dword_1DD38D000, v136, v137, "[Unified Disambiguation] Returning all acceptable handles for this request: %s", v138, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v139);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
            }

            goto LABEL_107;
          }

LABEL_116:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_116;
    }

    if (v30 >= *(v33 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_2_11();
    v6 = v37 & ~v36;
    v39 = *(v38 + 72);
    sub_1DD3CDD14(v33 + v6 + v39 * v30, v29, &qword_1ECCDBBD8, &unk_1DD645A90);
    v40 = &v29[*(v164 + 36)];
    if (v40[*(type metadata accessor for ContactResolver.HandleSignalSet(0) + 48)] == 1)
    {
      sub_1DD3CD2CC(v29, v160);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v167[0] = v35;
      if ((v41 & 1) == 0)
      {
        sub_1DD42B5CC(0, *(v35 + 16) + 1, 1);
        v35 = v167[0];
      }

      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_1_0(v42);
        v47 = v46;
        v158 = v48;
        sub_1DD42B5CC(v45, v46, 1);
        v44 = v47;
        v43 = v158;
        v35 = v167[0];
      }

      ++v30;
      *(v35 + 16) = v44;
      sub_1DD3CD2CC(v160, v35 + v6 + v43 * v39);
    }

    else
    {
      sub_1DD3CD264(v29);
      ++v30;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
LABEL_56:
  v85 = sub_1DD63F9F8();
  __swift_project_value_buffer(v85, qword_1EE16F068);

  v86 = sub_1DD63F9D8();
  v87 = sub_1DD640368();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v167[0] = v89;
    *v88 = 136315138;
    v90 = MEMORY[0x1E12B2430](v6, v164);
    v92 = sub_1DD39565C(v90, v91, v167);

    *(v88 + 4) = v92;
    _os_log_impl(&dword_1DD38D000, v86, v87, "allowed handles: %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v93 = v159;
  sub_1DD3CD140(v153, v159);
  if (v24)
  {
    v168[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42B518(0, v24, 0);
    v94 = v168[0];
    OUTLINED_FUNCTION_2_11();
    v97 = v157 + (v96 & ~v95);
    for (i = *(v98 + 72); ; v97 += i)
    {
      v100 = v162;
      sub_1DD3CDD14(v97, v162, &qword_1ECCDBBD8, &unk_1DD645A90);
      memcpy(v167, v100, 0x4AuLL);
      sub_1DD3C6A40(v167, v166);
      sub_1DD3CD264(v100);
      v168[0] = v94;
      v102 = *(v94 + 16);
      v101 = *(v94 + 24);
      if (v102 >= v101 >> 1)
      {
        v103 = OUTLINED_FUNCTION_1_0(v101);
        sub_1DD42B518(v103, v102 + 1, 1);
        v94 = v168[0];
      }

      *(v94 + 16) = v102 + 1;
      memcpy((v94 + 80 * v102 + 32), v167, 0x4AuLL);
      if (!v163)
      {
        break;
      }

      --v163;
    }
  }

  else
  {

    v94 = MEMORY[0x1E69E7CC0];
  }

  v104 = *(type metadata accessor for Contact(0) + 80);

  *(v93 + v104) = v94;
  sub_1DD3CD200(v93, v152);
}