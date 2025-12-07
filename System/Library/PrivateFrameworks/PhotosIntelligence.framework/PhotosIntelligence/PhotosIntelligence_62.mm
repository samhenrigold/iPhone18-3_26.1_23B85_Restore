uint64_t dispatch thunk of static TextSanitizerProtocol.validateCharacterCategories(_:storyGenerationCache:useCaseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 48) + **(a6 + 48));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41_1(v12);
  *v13 = v14;
  v13[1] = sub_1C7406E44;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C7406CA4(uint64_t a1)
{
  result = type metadata accessor for SafetyBundle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextSanitizer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C7406DFC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MomentExpansionProcessor.__allocating_init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MomentExpansionProcessor.init(storyPhotoLibraryContext:)(a1);
  return v2;
}

uint64_t MomentExpansionProcessor.momentExpandedAssetUUIDs(from:anchorPersonUUIDs:queryTokens:sensitiveFlags:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = type metadata accessor for QueryTokenCategoryType(0);
  v9 = swift_task_alloc();
  v10 = *a4;
  v7[9] = v9;
  v7[10] = v10;
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C7406F28(uint64_t a1)
{
  if (*(v1[10] + 16))
  {
    v2 = sub_1C754FEEC();
    v3 = sub_1C75511BC();
    if (!OUTLINED_FUNCTION_128(v3))
    {
      goto LABEL_6;
    }

    *OUTLINED_FUNCTION_127() = 0;
    v6 = "Not performing moment expansion because we have sensitive scenes present in the prompt.";
    goto LABEL_4;
  }

  if (!*(v1[2] + 16))
  {
    v2 = sub_1C754FEEC();
    v32 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v32))
    {
      *OUTLINED_FUNCTION_127() = 0;
      v6 = "No asset UUIDs provided for expansion";
LABEL_4:
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v4, v5, v6);
LABEL_5:
      OUTLINED_FUNCTION_109();
    }

LABEL_6:
    v7 = v1[6];

    v8 = sub_1C754F2FC();
    v9 = *(*(v8 - 8) + 8);
    sub_1C75504FC();
    v9(v7, v8);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X2, X16 }
  }

  if (qword_1EDD0E0A0 != -1)
  {
    swift_once();
  }

  v12 = v1[4];
  v13 = __swift_project_value_buffer(v1[8], qword_1EDD0E0A8);
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  sub_1C75504FC();
  v15 = sub_1C706CC1C(sub_1C7055510, v14, v12);
  v1[11] = v15;

  if (*(v15 + 2))
  {
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v17))
    {
      v18 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v18);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_37();
    }

    v24 = swift_task_alloc();
    v1[12] = v24;
    *v24 = v1;
    v24[1] = sub_1C7407648;
    OUTLINED_FUNCTION_17_1();

    return sub_1C7409660(v25, v26, v27, v28, v29);
  }

  if (qword_1EDD0E058 != -1)
  {
    swift_once();
  }

  v33 = v1[9];
  v34 = v1[4];
  v35 = __swift_project_value_buffer(v1[8], qword_1EDD0E060);
  v36 = swift_task_alloc();
  *(v36 + 16) = v35;
  sub_1C75504FC();
  v37 = sub_1C706CC1C(sub_1C70A97B0, v36, v34);

  v38 = *(v37 + 2);

  swift_storeEnumTagMultiPayload();
  *(swift_task_alloc() + 16) = v33;
  v55 = sub_1C707351C();

  sub_1C6FDD4EC(v33);
  if (qword_1EC213CC0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v1[8], &qword_1EC216260);
  *(swift_task_alloc() + 16) = v39;
  v40 = sub_1C707351C();

  if (qword_1EDD0E0C8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v1[8], qword_1EDD0E0D0);
  *(swift_task_alloc() + 16) = v41;
  v42 = sub_1C707351C();

  if (qword_1EDD099E8 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v1[8], qword_1EDD099F0);
  *(swift_task_alloc() + 16) = v43;
  v44 = sub_1C707351C();

  v2 = sub_1C754FEEC();
  v45 = sub_1C75511BC();
  v46 = OUTLINED_FUNCTION_66(v45);
  if (!v55 && !v40 && !v42 && (!v44 || v38 == 0))
  {
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_20_1();
      *v47 = 67110144;
      *(v47 + 8) = 1024;
      *(v47 + 10) = v38 != 0;
      *(v47 + 14) = 1024;
      *(v47 + 16) = v44;
      *(v47 + 20) = 1024;
      *(v47 + 22) = 0;
      *(v47 + 26) = 1024;
      *(v47 + 28) = 0;
      _os_log_impl(&dword_1C6F5C000, v2, OS_LOG_TYPE_DEFAULT, "Not performing moment expansion because no what (%{BOOL}d), no who (%{BOOL}d) with trip (%{BOOL}d), no public event (%{BOOL}d), or no personal event (%{BOOL}d).", v47, 0x20u);
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (v46)
  {
    v48 = OUTLINED_FUNCTION_20_1();
    *v48 = 67110144;
    *(v48 + 4) = v55;
    *(v48 + 8) = 1024;
    *(v48 + 10) = v40;
    *(v48 + 14) = 1024;
    *(v48 + 16) = v38 != 0;
    *(v48 + 20) = 1024;
    *(v48 + 22) = v44;
    *(v48 + 26) = 1024;
    *(v48 + 28) = v42;
    _os_log_impl(&dword_1C6F5C000, v2, OS_LOG_TYPE_DEFAULT, "Performing moment expansion because there's a what (%{BOOL}d), generic location (%{BOOL}d), a who (%{BOOL}d) with trip (%{BOOL}d), or a public event (%{BOOL}d) in the user prompt.", v48, 0x20u);
    OUTLINED_FUNCTION_109();
  }

  v49 = swift_task_alloc();
  v1[13] = v49;
  *v49 = v1;
  v49[1] = sub_1C7407790;
  OUTLINED_FUNCTION_17_1();

  return MomentExpansionProcessor.momentExpandedAssetUUIDs(from:anchorPersonUUIDs:eventRecorder:progressReporter:)(v50, v51, v52, v53);
}

uint64_t sub_1C7407648(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_1C7407790(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t MomentExpansionProcessor.init(storyPhotoLibraryContext:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = a1[2];
  sub_1C754FEFC();
  v5 = v1 + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext;
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return v1;
}

uint64_t MomentExpansionProcessor.momentExpandAssetUUIDs(extendedTokens:anchorPersonUUIDs:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = __src;
  v6[23] = a2;
  memcpy(v6 + 2, __src, 0x50uLL);
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74079D4()
{
  v12 = v0;
  memcpy(v11, *(v0 + 176), sizeof(v11));
  sub_1C7027A20(v0 + 16, v0 + 96);
  sub_1C701260C();
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_1C7407B18;
    v4 = *(v0 + 208);
    v5 = *(v0 + 200);
    v6 = *(v0 + 184);

    return MomentExpansionProcessor.momentExpandedAssetUUIDs(from:anchorPersonUUIDs:eventRecorder:progressReporter:)(v2, v6, v5, v4);
  }

  else
  {
    v8 = *(v0 + 208);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v8);
    OUTLINED_FUNCTION_116();

    return v10(0);
  }
}

uint64_t sub_1C7407B18(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  if (v1)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v8(a1);
  }
}

uint64_t MomentExpansionProcessor.momentExpandedAssetUUIDs(from:anchorPersonUUIDs:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v5[14] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v6 = sub_1C754DF6C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7407E10()
{
  v261 = v0;
  v1 = (v0 + 25);
  v2 = v0[11];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  v4 = 0;
  sub_1C754F2CC();
  v5 = v0[13];
  v6 = OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_logger;
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v8))
  {
    v3 = OUTLINED_FUNCTION_127();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Starting expandAssetUUIDs", v3, 2u);
    OUTLINED_FUNCTION_109();
  }

  v9 = v0[9];

  if (!*(v9 + 16))
  {
LABEL_23:
    v27 = sub_1C754FEEC();
    v28 = sub_1C755119C();
    if (!OUTLINED_FUNCTION_66(v28))
    {
LABEL_25:
      OUTLINED_FUNCTION_4_99();
LABEL_26:

      __swift_project_boxed_opaque_existential_1(v1, v2[3]);
      sub_1C75504FC();
      sub_1C754F1AC();
      (*(v5 + 8))(v4, v9);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v35 + 8))(v3);
      v36 = v0[9];
      goto LABEL_27;
    }

LABEL_24:
    v29 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_92_0(v29);
    OUTLINED_FUNCTION_39();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_37();
    goto LABEL_25;
  }

  v248 = v5;
  sub_1C754F2DC();
  v247 = v9;
  v253 = v6;
  v245 = v2;
  v10 = v0[14];
  v11 = v0[9];
  v12 = v0[13] + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext;
  v13 = *(v12 + 8);
  v252 = v12;
  v14 = *(v12 + 16);
  v257 = *v12;
  v258 = v13;
  v259 = v14;
  v15 = v257;

  v16 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v11, &v257);

  v17 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v16);
  v18 = sub_1C7409F40(v17, v10);
  v249 = 0;

  v2 = (v18 + 64);
  v19 = -1;
  v20 = -1 << v18[32];
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v3 = v19 & *(v18 + 8);
  v21 = (63 - v20) >> 6;
  v255 = v18;

  v5 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v254 = v16;
  while (2)
  {
    if (v3)
    {
      goto LABEL_12;
    }

    do
    {
      v22 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v22 >= v21)
      {
        v39 = v0[11];

        v40 = *(v252 + 8);
        v41 = *(v252 + 16);
        v257 = *v252;
        v258 = v40;
        v259 = v41;
        v42 = v257;

        v1 = sub_1C73DE778(v4, &v257, v39);
        v18 = v259;

        v43 = 0;
        v3 = *(v1 + 16);
        v5 = v1 + 40;
        v9 = MEMORY[0x1E69E7CC0];
LABEL_31:
        v44 = (v5 + 16 * v43);
        while (v3 != v43)
        {
          if (v43 >= *(v1 + 16))
          {
            goto LABEL_81;
          }

          if (*(v16 + 16))
          {
            v45 = *(v44 - 1);
            v46 = *v44;
            sub_1C75504FC();
            v47 = v45;
            v18 = v16;
            v48 = sub_1C6F78124(v47, v46);
            if (v49)
            {
              v246 = v5;
              v50 = (*(v16 + 56) + 16 * v48);
              v51 = *v50;
              v18 = v50[1];
              sub_1C75504FC();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB1814();
                v9 = v55;
              }

              v53 = *(v9 + 16);
              v52 = *(v9 + 24);
              if (v53 >= v52 >> 1)
              {
                OUTLINED_FUNCTION_15(v52);
                sub_1C6FB1814();
                v9 = v56;
              }

              ++v43;
              *(v9 + 16) = v53 + 1;
              v54 = v9 + 16 * v53;
              *(v54 + 32) = v51;
              *(v54 + 40) = v18;
              v5 = v246;
              goto LABEL_31;
            }
          }

          v44 += 2;
          ++v43;
        }

        sub_1C706D154();
        v58 = v57;
        v4 = 0;
        sub_1C754F2DC();
        v59 = *(v58 + 16);
        v60 = v58;
        v2 = v245;
        if (!v59)
        {

          v27 = sub_1C754FEEC();
          v108 = sub_1C755119C();
          if (!OUTLINED_FUNCTION_66(v108))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v228 = v59;
        v237 = v60;
        v61 = *(v252 + 8);
        v62 = *v252;

        v3 = v1;
        v1 = [v62 librarySpecificFetchOptions];
        [v1 setSharingFilter_];

        [v1 setWantsIncrementalChangeDetails_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1C75604F0;
        v64 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v65 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, 0);
        v66 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
        *(v63 + 56) = v66;
        *(v63 + 32) = v65;
        v67 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v68 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 0);
        *(v63 + 88) = v66;
        *(v63 + 64) = v68;
        sub_1C70E7F40(v63, v1);
        sub_1C75504FC();
        sub_1C706D154();
        v70 = v69;
        v71 = *(v252 + 8);
        v9 = *(v252 + 16);
        v257 = *v252;
        v258 = v71;
        v259 = v9;
        v72 = v257;

        v73 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(v70, &v257);

        v5 = objc_opt_self();
        sub_1C71BA844(v73, v81, v82, v74, v75, v76, v77, v78, v79, v80, v219, v220, v222, v223, v224, v225, 0, v228, v229, v231, v232, v233, v236, v237, v239, (v0 + 5));
        v84 = sub_1C740A230(v83, v1, v5);
        v4 = v248;
        v236 = v1;
        if (v84)
        {
          v85 = v84;
          v9 = [v84 count];
          v86 = [v85 firstObject];
          v232 = v85;
          if (v86)
          {
            if (v9 >= 1)
            {
              v243 = v86;
              v244 = v5;
              v246 = v9;
              v87 = v0[10];
              v0[8] = MEMORY[0x1E69E7CD0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
              v88 = swift_allocObject();
              *(v88 + 16) = xmmword_1C7565670;
              sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
              v89 = swift_allocObject();
              *(v89 + 16) = xmmword_1C75604F0;
              *(v89 + 56) = MEMORY[0x1E69E6158];
              *(v89 + 64) = sub_1C6F6D524();
              *(v89 + 32) = 0x752E746E656D6F6DLL;
              *(v89 + 40) = 0xEB00000000646975;
              *(v89 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
              *(v89 + 104) = sub_1C7067A60();
              *(v89 + 72) = v238;
              sub_1C75504FC();
              v90 = v88;
              *(v88 + 32) = sub_1C755112C();
              v256 = v88;
              v91 = sub_1C7409A98(v87, v248 + v253);
              v92 = static StoryGenerationUtilities.personConstrainedAssetFetchPredicate(constrainedTo:includeAssetsWithNoPersons:)(v91, 1);
              if (v92)
              {
                v93 = v92;
                sub_1C75504FC();
                v94 = sub_1C754FEEC();
                v95 = sub_1C75511BC();

                if (!os_log_type_enabled(v94, v95))
                {
                  goto LABEL_84;
                }

                v96 = swift_slowAlloc();
                v249 = OUTLINED_FUNCTION_20_1();
                v260 = v249;
                *v96 = 136315138;
                v97 = sub_1C6FB6304();
                v18 = MEMORY[0x1E69E7CC0];
                if (!v97)
                {
LABEL_83:
                  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
                  MEMORY[0x1CCA5D090](v18, v139);

                  v140 = OUTLINED_FUNCTION_15_1();
                  v143 = sub_1C6F765A4(v140, v141, v142);

                  *(v96 + 4) = v143;
                  _os_log_impl(&dword_1C6F5C000, v94, v95, "Moment expansion will be restricted to assets with no persons or at least one anchor person from the list of: %s", v96, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v249);
                  OUTLINED_FUNCTION_109();
                  OUTLINED_FUNCTION_109();
LABEL_84:

                  v2 = &selRef_clsSceneClassifications;
                  MEMORY[0x1CCA5D040]();
                  v23 = *((v256 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (*((v256 & 0xFFFFFFFFFFFFFF8) + 0x10) < v23 >> 1)
                  {
                    goto LABEL_85;
                  }

                  goto LABEL_139;
                }

                v98 = v97;
                v233 = v96;
                LOBYTE(v239) = v95;
                buf = v94;
                result = OUTLINED_FUNCTION_17_75(v97);
                if ((v98 & 0x8000000000000000) == 0)
                {
                  OUTLINED_FUNCTION_15_76();
                  do
                  {
                    if (&unk_1C755E000)
                    {
                      v99 = MEMORY[0x1CCA5DDD0](v96, v253);
                    }

                    else
                    {
                      v99 = *(v253 + 8 * v96 + 32);
                    }

                    v100 = v99;
                    v101 = sub_1C70CAC04(v99);
                    v103 = v102;

                    v257 = v18;
                    v105 = *(v18 + 2);
                    v104 = *(v18 + 3);
                    if (v105 >= v104 >> 1)
                    {
                      v107 = OUTLINED_FUNCTION_15(v104);
                      sub_1C716C9F0(v107, v105 + 1, 1);
                      v18 = v257;
                    }

                    ++v96;
                    *(v18 + 2) = v105 + 1;
                    v106 = &v18[16 * v105];
                    *(v106 + 4) = v101;
                    *(v106 + 5) = v103;
                  }

                  while (v93 != v96);
LABEL_82:
                  v94 = buf;
                  v95 = v239;
                  v96 = v233;
                  goto LABEL_83;
                }

                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
                return result;
              }

              sub_1C75504FC();
              v124 = sub_1C754FEEC();
              v125 = sub_1C75511BC();

              if (os_log_type_enabled(v124, v125))
              {
                v126 = swift_slowAlloc();
                v240 = OUTLINED_FUNCTION_20_1();
                v260 = v240;
                *v126 = 136315138;
                v127 = sub_1C6FB6304();
                v128 = MEMORY[0x1E69E7CC0];
                v250 = v125;
                bufa = v126;
                if (v127)
                {
                  v129 = v127;
                  result = OUTLINED_FUNCTION_17_75(v127);
                  if (v129 < 0)
                  {
                    goto LABEL_141;
                  }

                  OUTLINED_FUNCTION_15_76();
                  do
                  {
                    if (&unk_1C755E000)
                    {
                      v130 = MEMORY[0x1CCA5DDD0](v90, v253);
                    }

                    else
                    {
                      v130 = *(v253 + 8 * v90 + 32);
                    }

                    v131 = v130;
                    v132 = sub_1C70CAC04(v130);
                    v134 = v133;

                    v257 = v128;
                    v136 = *(v128 + 2);
                    v135 = *(v128 + 3);
                    if (v136 >= v135 >> 1)
                    {
                      v138 = OUTLINED_FUNCTION_15(v135);
                      sub_1C716C9F0(v138, v136 + 1, 1);
                      v128 = v257;
                    }

                    ++v90;
                    *(v128 + 2) = v136 + 1;
                    v137 = &v128[16 * v136];
                    *(v137 + 4) = v132;
                    *(v137 + 5) = v134;
                  }

                  while (v124 != v90);
                }

                v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
                MEMORY[0x1CCA5D090](v128, v144);

                v145 = OUTLINED_FUNCTION_15_1();
                v148 = sub_1C6F765A4(v145, v146, v147);

                *(bufa + 4) = v148;
                _os_log_impl(&dword_1C6F5C000, v124, v250, "Moment expansion will not be restricted to assets with persons in them (anchorPersons: %s)", bufa, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v240);
                OUTLINED_FUNCTION_109();
                OUTLINED_FUNCTION_109();
              }

              v2 = &selRef_clsSceneClassifications;
              goto LABEL_88;
            }
          }

          v27 = sub_1C754FEEC();
          v117 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v117))
          {
            v118 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_92_0(v118);
            OUTLINED_FUNCTION_39();
            _os_log_impl(v119, v120, v121, v122, v123, 2u);
            OUTLINED_FUNCTION_37();
          }

          OUTLINED_FUNCTION_4_99();

          v116 = v232;
        }

        else
        {

          v27 = sub_1C754FEEC();
          v109 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v109))
          {
            v110 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_92_0(v110);
            OUTLINED_FUNCTION_39();
            _os_log_impl(v111, v112, v113, v114, v115, 2u);
            OUTLINED_FUNCTION_37();
          }

          OUTLINED_FUNCTION_4_99();
          v116 = v1;
        }

        goto LABEL_26;
      }

      v3 = v2[v22];
      ++v5;
    }

    while (!v3);
    v5 = v22;
LABEL_12:
    v23 = (v5 << 9) | (8 * __clz(__rbit64(v3)));
    v9 = *(*(v255 + 7) + v23);
    v18 = *(v9 + 16);
    v1 = *(v4 + 16);
    if (!__OFADD__(v1, v18))
    {
      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || &v18[v1] > *(v4 + 24) >> 1)
      {
        sub_1C6FB1814();
        v4 = v24;
      }

      v16 = v254;
      v3 &= v3 - 1;
      if (*(v9 + 16))
      {
        v23 = *(v4 + 16);
        if (((*(v4 + 24) >> 1) - v23) < v18)
        {
          goto LABEL_135;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v25 = *(v4 + 16);
          v26 = __OFADD__(v25, v18);
          v23 = &v18[v25];
          if (v26)
          {
            goto LABEL_137;
          }

          *(v4 + 16) = v23;
        }
      }

      else
      {

        if (v18)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  do
  {
    __break(1u);
LABEL_139:
    OUTLINED_FUNCTION_15(v23);
    sub_1C7550B9C();
LABEL_85:
    sub_1C7550BEC();
LABEL_88:
    v149 = *(v252 + 8);
    v150 = *v252;

    v2 = [v150 v2[477]];
    [v2 setSharingFilter_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_1C755BAB0;
    *(v151 + 32) = sub_1C755068C();
    *(v151 + 40) = v152;
    sub_1C6FCA0EC(v151, v2);
    [v2 setWantsIncrementalChangeDetails_];
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    v153 = sub_1C75504FC();
    v154 = sub_1C6F6E5C4(v153);
    [v2 setInternalPredicate_];

    if (sub_1C72D0E94(v236))
    {
      v155 = sub_1C7550B3C();
    }

    else
    {
      v155 = 0;
    }

    [v2 setInternalSortDescriptors_];

    v221 = v2;
    v244 = [v244 fetchAssetsWithOptions_];
    v226 = v243;
    v156 = [v226 creationDate];
    v157 = v0[22];
    if (v156)
    {
      v158 = v156;
      v159 = v0[21];
      v161 = v0[17];
      v160 = v0[18];
      v162 = v0[16];
      sub_1C754DF2C();

      v163 = *(v160 + 32);
      v2 = (v160 + 32);
      v163(v162, v159, v161);
      __swift_storeEnumTagSinglePayload(v162, 0, 1, v161);
      v163(v157, v162, v161);
      v164 = v246;
    }

    else
    {
      v166 = v0[16];
      v165 = v0[17];
      __swift_storeEnumTagSinglePayload(v166, 1, 1, v165);
      sub_1C754DE6C();
      v164 = v246;
      if (__swift_getEnumTagSinglePayload(v166, 1, v165) != 1)
      {
        sub_1C70D7CB8(v0[16]);
      }
    }

    v243 = [v244 count];
  }

  while ((v243 & 0x8000000000000000) != 0);
  v167 = 0;
  v168 = 0;
  v2 = v0[9];
  v230 = (v0[18] + 32);
  v234 = v226;
  while (v167 != v243)
  {
    v23 = v167 + 1;
    v252 = v167 + 1;
    if (__OFADD__(v167, 1))
    {
      goto LABEL_136;
    }

    v251 = objc_autoreleasePoolPush();
    v169 = [v244 objectAtIndexedSubscript_];
    result = sub_1C6FCA214(v169);
    if (!v170)
    {
      goto LABEL_142;
    }

    v171 = v170;
    if (*(v247 + 16))
    {
      v172 = result;
      sub_1C7551F3C();
      sub_1C75505AC();
      v173 = sub_1C7551FAC();
      v174 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v175 = v173 & v174;
        if (((*(v2 + (((v173 & v174) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v173 & v174)) & 1) == 0)
        {
          break;
        }

        v176 = &(*v2[6])[16 * v175];
        if (*v176 != v172 || v171 != *(v176 + 1))
        {
          v178 = sub_1C7551DBC();
          v173 = v175 + 1;
          if ((v178 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_121;
      }
    }

    v179 = [v169 creationDate];
    if (v179)
    {
      v180 = v179;
      sub_1C754DF2C();

      v181 = v168;
LABEL_111:
      v164 = v246;
      while (1)
      {
        v182 = v0[20];
        if (v168 >= v246)
        {
          if (v246 <= v181)
          {
            v168 = v181;
          }

          else
          {
            v168 = v246;
          }

          goto LABEL_129;
        }

        sub_1C754DEAC();
        if (fabs(v183) <= 900.0)
        {
          break;
        }

        if (v183 > 900.0)
        {
          v182 = v0[20];
LABEL_129:
          v202 = v0[17];

          OUTLINED_FUNCTION_8_85();
          v203(v182, v202);
          goto LABEL_130;
        }

        if (++v168 < v246)
        {
          v184 = [v232 objectAtIndexedSubscript_];

          v185 = [v184 creationDate];
          v186 = v0[22];
          if (v185)
          {
            v187 = v185;
            v188 = v0[21];
            v235 = v0[19];
            v189 = v0[17];
            v190 = v0[15];
            sub_1C754DF2C();

            OUTLINED_FUNCTION_8_85();
            v191(v186, v189);
            v192 = v230;
            v193 = v184;
            v194 = *v230;
            (*v230)(v190, v188, v189);
            __swift_storeEnumTagSinglePayload(v190, 0, 1, v189);
            v194(v235, v190, v189);
            v184 = v193;
          }

          else
          {
            v195 = v0[17];
            v196 = v0[15];
            __swift_storeEnumTagSinglePayload(v196, 1, 1, v195);
            sub_1C754DE6C();
            OUTLINED_FUNCTION_8_85();
            v197(v186, v195);
            v192 = v230;
            if (__swift_getEnumTagSinglePayload(v196, 1, v195) != 1)
            {
              sub_1C70D7CB8(v0[15]);
            }
          }

          (*v192)(v0[22], v0[19], v0[17]);
          v181 = v168;
          v234 = v184;
          goto LABEL_111;
        }
      }

      result = sub_1C6FCA214(v169);
      if (!v198)
      {
        goto LABEL_143;
      }

      v199 = v0[20];
      v200 = v0[17];
      sub_1C70F082C(&v257, result, v198);

      OUTLINED_FUNCTION_8_85();
      v201(v199, v200);
    }

    else
    {
LABEL_121:
    }

    v164 = v246;
LABEL_130:
    objc_autoreleasePoolPop(v251);
    v167 = v252;
  }

  sub_1C754F2EC();
  v204 = sub_1C754FEEC();
  v205 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_66(v205))
  {
    v206 = OUTLINED_FUNCTION_20_1();
    *v206 = 134218496;
    swift_beginAccess();
    *(v206 + 4) = *(v0[8] + 16);
    *(v206 + 12) = 2048;
    *(v206 + 14) = v164;
    *(v206 + 22) = 2048;
    *(v206 + 24) = v227;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v207, v208, v209, v210, v211, 0x20u);
    OUTLINED_FUNCTION_37();
  }

  v212 = v0[22];
  v213 = v0[17];
  v214 = v0[11];
  swift_beginAccess();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C70738FC();
  v36 = v215;

  OUTLINED_FUNCTION_8_85();
  v216(v212, v213);

  OUTLINED_FUNCTION_5_93(v214);
  v217 = OUTLINED_FUNCTION_15_1();
  v218(v217);
LABEL_27:

  OUTLINED_FUNCTION_116();

  return v37(v36);
}

uint64_t sub_1C7409660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a1;
  v6[33] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7409684, 0, 0);
}

uint64_t sub_1C7409684(uint64_t a1)
{
  v41 = v1;
  if (*(v1[33] + 16))
  {
    v2 = v1[32];
    v39 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    for (i = (v2 + 32); v3; --v3)
    {
      memcpy(v1 + 2, i, 0x78uLL);
      memcpy(__dst, i, 0x78uLL);
      sub_1C6FCA6E4((v1 + 2), (v1 + 17));
      QueryToken.selectedEventMomentUUIDs()();
      sub_1C739796C(v5);
      sub_1C6FDD548((v1 + 2));
      i += 120;
    }

    v6 = v39;
    v7 = *(v39 + 16);
    if (!v7)
    {
      v8 = v1[33];
      v9 = v1[35] + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      __dst[0] = *v9;
      LOWORD(__dst[1]) = v10;
      __dst[2] = v11;
      v12 = __dst[0];

      static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v8, __dst);

      sub_1C706D87C();
      v14 = v13;

      v6 = v14;
    }

    v15 = v1[35] + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext;
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_1C75504FC();
    v18 = v16;

    v19 = objc_autoreleasePoolPush();
    sub_1C71C8640(v6, 0, v18, v17, __dst);
    objc_autoreleasePoolPop(v19);

    v24 = __dst[0];
    sub_1C75504FC();
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v26))
    {
      v27 = OUTLINED_FUNCTION_20_1();
      __dst[0] = swift_slowAlloc();
      *v27 = 134218498;
      *(v27 + 4) = v24[2];

      *(v27 + 12) = 2080;
      if (v7)
      {
        v28 = 0xD000000000000019;
      }

      else
      {
        v28 = 0xD000000000000012;
      }

      if (v7)
      {
        v29 = "from anchor assets";
      }

      else
      {
        v29 = "ExpansionProcessor";
      }

      v30 = sub_1C6F765A4(v28, v29 | 0x8000000000000000, __dst);

      *(v27 + 14) = v30;
      *(v27 + 22) = 2080;
      sub_1C75504FC();
      v31 = sub_1C7550F9C();
      v33 = v32;

      v34 = sub_1C6F765A4(v31, v33, __dst);

      *(v27 + 24) = v34;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Expand to all %ld assets in the moments %s = %s", v27, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }
  }

  else
  {
    v20 = sub_1C754FEEC();
    v21 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v21))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v22, v23, "No asset UUIDs provided for personal event moment expansion!");
      OUTLINED_FUNCTION_109();
    }

    sub_1C75504FC();
    v24 = v1[33];
  }

  v35 = v1[34];
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v36 + 8))(v35);
  OUTLINED_FUNCTION_116();

  return v37(v24);
}

uint64_t sub_1C7409A98(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C7409C14(a1, v2, &v6);
  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t MomentExpansionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext);

  return v0;
}

uint64_t MomentExpansionProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext);

  return swift_deallocClassInstance();
}

void sub_1C7409C14(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (a1 && *(a1 + 16))
  {
    v4 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext + 8);
    v5 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence24MomentExpansionProcessor_storyPhotoLibraryContext);

    v6 = [v5 librarySpecificFetchOptions];
    [v6 setSharingFilter:v4];

    v17 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    sub_1C7082AAC(v17, v6);
    v7 = objc_opt_self();
    v8 = sub_1C7550B3C();
    v9 = [v7 fetchPersonsWithLocalIdentifiers:v8 options:v6];

    v10 = [v9 fetchedObjects];
    if (v10)
    {
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      v11 = sub_1C7550B5C();

      v12 = v6;
    }

    else
    {
      v12 = sub_1C754FEEC();
      v15 = sub_1C755119C();
      if (os_log_type_enabled(v12, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C6F5C000, v12, v15, "Fetch result had nil fetchedObjects!", v16, 2u);
        MEMORY[0x1CCA5F8E0](v16, -1, -1);
      }

      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = sub_1C754FEEC();
    v13 = sub_1C75511BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "No anchor persons passed into moment expansion", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    v11 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v11;
}

uint64_t sub_1C7409F40(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1C740A1A0(v10, v6, v4, a2);
      a2 = v11;
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  sub_1C740A0B0(v7, v6, v4);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void sub_1C740A0B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 3uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484100(result, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C740A1A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    sub_1C740A3C0(a1, a2, a3, &v7);
  }
}

id sub_1C740A230(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C7550B3C();

  v6 = [a3 fetchAssetsWithObjectIDs:v5 options:a2];

  return v6;
}

uint64_t type metadata accessor for MomentExpansionProcessor(uint64_t a1)
{
  result = qword_1EDD0DDB0;
  if (!qword_1EDD0DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C740A2FC(uint64_t a1)
{
  result = sub_1C754FF1C();
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

void sub_1C740A3C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C740A0B0(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

void sub_1C740A3EC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v185 = v2;
  v5 = v4;
  v173 = v4;
  v6 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v183 = v8;
  v180 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v166 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v11);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v152 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v152 - v16;
  v184 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v161 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v162 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_68_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_140_1();
  v160 = v23;
  OUTLINED_FUNCTION_68_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_140_1();
  v168 = v25;
  OUTLINED_FUNCTION_68_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_140_1();
  v171 = v27;
  OUTLINED_FUNCTION_68_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_140_1();
  v163 = v29;
  OUTLINED_FUNCTION_68_22();
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v152 - v31;
  v153 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming;
  sub_1C74133C0(v3, v5);
  v158 = v1;
  v33 = v1[3];
  v32 = v1[4];
  v34 = __swift_project_boxed_opaque_existential_1(v1, v33);
  v167 = v34;
  v179 = v33;
  v172 = v32;
  sub_1C754F17C();
  v182 = v197[4];
  OUTLINED_FUNCTION_66_25(v197, v197[3]);
  v35 = sub_1C754F61C();
  v36 = OUTLINED_FUNCTION_28_36();
  v170 = v35;
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  OUTLINED_FUNCTION_65_25();
  sub_1C754F16C();
  sub_1C6FD7FC8(v17, &qword_1EC214BF0, &qword_1C7574200);
  v39 = v34;
  sub_1C754F17C();
  OUTLINED_FUNCTION_66_25(v196, v196[3]);
  v40 = OUTLINED_FUNCTION_28_36();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v35);
  v43 = v163;
  OUTLINED_FUNCTION_65_25();
  sub_1C754F16C();
  sub_1C6FD7FC8(v17, &qword_1EC214BF0, &qword_1C7574200);
  v159 = sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  sub_1C6FB5E28(v196, &v194);
  v48 = v161;
  v49 = *(v161 + 16);
  v175 = v161 + 16;
  v178 = v49;
  v50 = v171;
  v51 = v184;
  v49(v171, v43, v184);
  v52 = v166;
  v53 = v153;
  sub_1C74133C0(v185, v166);
  v54 = *(v48 + 80);
  v55 = v48;
  v157 = ((v54 + 72) & ~v54) + v20;
  v56 = (v54 + 72) & ~v54;
  v182 = v56;
  v174 = v54 | 7;
  v169 = v183[80];
  v57 = (v157 + v169) & ~v169;
  v165 = v57;
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_82_19(v58);
  sub_1C6F699F8(&v194, v39 + 32);
  v59 = *(v55 + 32);
  v181 = v55 + 32;
  v183 = v59;
  (v59)(v39 + v56, v50, v51);
  v60 = v52;
  v61 = v52;
  v62 = v53;
  sub_1C741341C(v60, v39 + v57);
  v63 = OUTLINED_FUNCTION_149();
  sub_1C7293840(v63, v64, v176, v65, v39);
  v66 = OUTLINED_FUNCTION_19_1();
  v177 = type metadata accessor for FreeformStoryCompletionAsync(v66);
  v67 = v177[6];
  v68 = v173;
  v156 = v39;
  *(v173 + v67) = v39;

  v69 = v167;
  OUTLINED_FUNCTION_91_17(0x656C746974627553, 0xE800000000000000);
  OUTLINED_FUNCTION_66_25(&v194, v195);
  v70 = OUTLINED_FUNCTION_28_36();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v170);
  OUTLINED_FUNCTION_65_25();
  sub_1C754F16C();
  sub_1C6FD7FC8(v17, &qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_84();
  v73 = v159;
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v159);
  sub_1C6FB5E28(&v194, &v192);
  v77 = v168;
  v78 = v184;
  OUTLINED_FUNCTION_78_15();
  v79();
  sub_1C74133C0(v185, v61);
  v80 = OUTLINED_FUNCTION_62_24(&unk_1F46C71E0);
  OUTLINED_FUNCTION_82_19(v80);
  v81 = OUTLINED_FUNCTION_92_17(&v192);
  v82(v81, v77, v78);
  sub_1C741341C(v61, v53 + v69);
  v83 = OUTLINED_FUNCTION_149();
  v84 = v176;
  sub_1C7293840(v83, v85, v176, v86, v69);
  v155 = v87;
  *(v68 + v177[7]) = v87;

  v88 = v167;
  v89 = v167;
  OUTLINED_FUNCTION_91_17(0x746573734179654BLL, 0xED00007972657551);
  OUTLINED_FUNCTION_66_25(&v192, v193);
  v90 = OUTLINED_FUNCTION_28_36();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v170);
  OUTLINED_FUNCTION_65_25();
  sub_1C754F16C();
  sub_1C6FD7FC8(v17, &qword_1EC214BF0, &qword_1C7574200);
  v93 = v84;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v73);
  sub_1C6FB5E28(&v192, &v190);
  v97 = v160;
  v98 = v184;
  OUTLINED_FUNCTION_78_15();
  v99();
  v100 = v166;
  sub_1C74133C0(v185, v166);
  v101 = OUTLINED_FUNCTION_62_24(&unk_1F46C7208);
  OUTLINED_FUNCTION_82_19(v101);
  v102 = OUTLINED_FUNCTION_92_17(&v190);
  v103(v102, v97, v98);
  sub_1C741341C(v100, v62 + v89);
  v104 = OUTLINED_FUNCTION_149();
  v105 = v93;
  sub_1C7293840(v104, v106, v93, v107, v89);
  v154 = v108;
  *(v173 + v177[8]) = v108;

  OUTLINED_FUNCTION_91_17(0x737469617254, 0xE600000000000000);
  OUTLINED_FUNCTION_66_25(&v190, v191);
  v109 = OUTLINED_FUNCTION_28_36();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v170);
  OUTLINED_FUNCTION_65_25();
  sub_1C754F16C();
  sub_1C6FD7FC8(v17, &qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_84();
  v112 = v159;
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v159);
  sub_1C6FB5E28(&v190, v189);
  v116 = v162;
  v117 = v184;
  OUTLINED_FUNCTION_78_15();
  v118();
  v119 = v185;
  v120 = v166;
  sub_1C74133C0(v185, v166);
  v121 = v165;
  v122 = swift_allocObject();
  OUTLINED_FUNCTION_82_19(v122);
  v123 = OUTLINED_FUNCTION_92_17(v189);
  v124(v123, v116, v117);
  sub_1C741341C(v120, v88 + v121);
  v125 = OUTLINED_FUNCTION_149();
  sub_1C729384C(v125, v126, v105, v127, v88);
  v180 = v128;
  v129 = v177;
  v130 = v173;
  *(v173 + v177[9]) = v128;

  OUTLINED_FUNCTION_91_17(0x79726F7453, 0xE500000000000000);
  sub_1C74133C0(v119, v120);
  sub_1C6FB5E28(v189, v186);
  sub_1C740DFC0();
  v131 = v188;
  v132 = v130 + v129[10];
  *v132 = v187;
  *(v132 + 8) = v131;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v112);
  v136 = *v132;
  LOBYTE(v132) = *(v132 + 8);
  sub_1C6FB5E28(v197, v186);
  v137 = v162;
  v138 = v184;
  OUTLINED_FUNCTION_78_15();
  v139();
  v179 = (v157 + 7) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v157 + 23) & 0xFFFFFFFFFFFFFFF8;
  v141 = (v140 + 15) & 0xFFFFFFFFFFFFFFF8;
  v142 = (v141 + 15) & 0xFFFFFFFFFFFFFFF8;
  v143 = swift_allocObject();
  *(v143 + 16) = 0;
  *(v143 + 24) = 0;
  sub_1C6F699F8(v186, v143 + 32);
  (v183)(v143 + v182, v137, v138);
  v144 = v143 + v179;
  *v144 = v136;
  *(v144 + 8) = v132;
  v145 = v155;
  *(v143 + v140) = v156;
  *(v143 + v141) = v145;
  *(v143 + v142) = v154;
  *(v143 + ((v142 + 15) & 0xFFFFFFFFFFFFFFF8)) = v180;
  sub_1C7410C3C(v136, v132);
  v146 = OUTLINED_FUNCTION_149();
  sub_1C7293860(v146, v147, v176, v148, v143);
  v150 = v149;
  sub_1C7413058(v185);
  __swift_destroy_boxed_opaque_existential_1(v189);
  v151 = *(v161 + 8);
  v151(v160, v138);
  v151(v168, v138);
  v151(v171, v138);
  v151(v163, v138);
  v151(v164, v138);
  *(v173 + v177[5]) = v150;
  __swift_destroy_boxed_opaque_existential_1(&v190);
  __swift_destroy_boxed_opaque_existential_1(&v192);
  __swift_destroy_boxed_opaque_existential_1(&v194);
  __swift_destroy_boxed_opaque_existential_1(v196);
  __swift_destroy_boxed_opaque_existential_1(v197);
  __swift_destroy_boxed_opaque_existential_1(v158);
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C740AF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23[-1] - v11;
  v23[5] = a4;
  v23[6] = a5;
  sub_1C70A3CFC(a3, &v23[-1] - v11);
  v13 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v12, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C7550C8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C755071C();
      sub_1C74120B4(v19 + 32, v23);

      v20 = v23[0];
      sub_1C6FD7FC8(a3, &qword_1EC2158F8, &qword_1C755FF40);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C6FD7FC8(a3, &qword_1EC2158F8, &qword_1C755FF40);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C740B190()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C754FF1C();
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C740B25C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v4[1];
  v0[10] = v5;
  v6 = *v4;
  v7 = qword_1EC25B880;
  v0[11] = v6;
  v0[12] = v7;
  v8 = *(v3 + 16);
  v0[13] = v8;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6 + v7, v2);
  v9 = sub_1C754FEEC();
  v10 = sub_1C755117C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_41_0();
    *v11 = 134217984;
    *(v11 + 4) = v5;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v12, v13, "Iterator's next() called with nextIndex %ld");
    OUTLINED_FUNCTION_10_1();
  }

  v14 = v0[9];
  v15 = v0[5];
  v16 = v0[6];

  v17 = *(v16 + 8);
  v0[15] = v17;
  v0[16] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v14, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[17] = v18;
  *v18 = v19;
  v18[1] = sub_1C740B3C0;
  OUTLINED_FUNCTION_142();

  return sub_1C740B688(v20, v21);
}

uint64_t sub_1C740B3C0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_43();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1C740B4F8()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1[2], 1, *(v1[3] + 16));
  v3 = v1[13];
  v5 = v1[11];
  v4 = v1[12];
  v6 = v1[5];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v1 + 7;
    v3(v1[7], v5 + v4, v6);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755117C();
    if (OUTLINED_FUNCTION_66(v9))
    {
      v10 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_81_21(v10, 3.852e-34);
      v11 = "Iterator's next() returning nil for index %ld";
LABEL_6:
      _os_log_impl(&dword_1C6F5C000, v8, v0, v11, v10, 0xCu);
      v13 = *v7;
      OUTLINED_FUNCTION_109();
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v1 + 8;
    v3(v1[8], v5 + v4, v6);
    v8 = sub_1C754FEEC();
    v12 = sub_1C755117C();
    if (OUTLINED_FUNCTION_66(v12))
    {
      v10 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_81_21(v10, 3.852e-34);
      v11 = "Iterator's next() returning next element for index %ld";
      goto LABEL_6;
    }
  }

  v13 = *v7;
LABEL_8:
  v14 = v1[15];
  v15 = v1[10];
  v16 = v1[5];

  result = v14(v13, v16);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1[4] + 8) = v15 + 1;

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_142();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return result;
}

uint64_t sub_1C740B688(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_0_67(sub_1C740B6CC);
}

uint64_t sub_1C740B6CC()
{
  OUTLINED_FUNCTION_123();
  v14 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = (v1 + qword_1EC25B888);
  os_unfair_lock_lock((v1 + qword_1EC25B888));
  sub_1C740BDAC(&v3[2], v2, v1, &v13);
  v0[6] = *(v0[5] + 80);
  sub_1C755149C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_16_6();
  sub_1C7550E3C();
  os_unfair_lock_unlock(v3);
  v0[7] = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1C740B86C;
  OUTLINED_FUNCTION_93_16();

  return MEMORY[0x1EEE6DA10](v6, v7, v8, v9, v10);
}

uint64_t sub_1C740B86C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740B964()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(*(v1 + 16), 1, *(v1 + 48));
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v4))
  {
    if (EnumTagSinglePayload == 1)
    {
      v5 = "Sequence's element() returning nil for index %ld";
    }

    else
    {
      v5 = "Sequence's element() returning element for index %ld";
    }

    v6 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_81_21(v6, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v3, v0, v5, v6, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_244_0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C740BA54()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C740BAB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return sub_1C740B190();
}

uint64_t sub_1C740BB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C740BC2C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C740BC2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C740BD1C(uint64_t a1)
{
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    *v4 = 0;
    _os_log_impl(&dword_1C6F5C000, v2, v1, "Sequence makes new iterator", v4, 2u);
    OUTLINED_FUNCTION_109();
  }
}

void sub_1C740BDAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v30 - v9;
  v11 = *(a1 + 40);
  v12 = sub_1C755149C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
  sub_1C7550E3C();
  v13 = sub_1C7550BFC();
  v14 = a2;
  if (v13 <= a2)
  {
    v31 = v12;
    if (v13 < a2)
    {
      sub_1C7551AAC();
      __break(1u);
    }

    else
    {
      v30[2] = qword_1EC25B880;
      v18 = sub_1C754FEEC();
      v19 = sub_1C755117C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30[1] = v4;
        v21 = v20;
        *v20 = 134217984;
        *(v20 + 4) = v14;
        _os_log_impl(&dword_1C6F5C000, v18, v19, "Sequence's element() called with index=%ld, not cached yet", v20, 0xCu);
        MEMORY[0x1CCA5F8E0](v21, -1, -1);
      }

      v34 = v11;
      v22 = sub_1C7550C3C();
      swift_getWitnessTable(MEMORY[0x1E69E6310], v22);
      sub_1C75505EC();
      v23 = v33;
      v24 = sub_1C7550D5C();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = a3;
      v25[5] = v14;
      v25[6] = v23;

      v26 = sub_1C740AF3C(0, 0, v10, &unk_1C758A468, v25, v31);
      v34 = v26;

      sub_1C7550C0C();
      v27 = sub_1C754FEEC();
      v28 = sub_1C755117C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v14;
        _os_log_impl(&dword_1C6F5C000, v27, v28, "Sequence cached task with index=%ld", v29, 0xCu);
        MEMORY[0x1CCA5F8E0](v29, -1, -1);
      }

      *v32 = v26;
    }
  }

  else
  {
    v15 = sub_1C754FEEC();
    v16 = sub_1C755117C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_1C6F5C000, v15, v16, "Sequence's element() called with index=%ld, already cached", v17, 0xCu);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    sub_1C7550C6C();
  }
}

uint64_t sub_1C740C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  v7 = *a4;
  v6[14] = *a4;
  v6[15] = *(v7 + 80);
  v8 = sub_1C755149C();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C740C2CC, 0, 0);
}

uint64_t sub_1C740C2CC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0[19] = qword_1EC25B880;
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v3 = v0[12];
    v4 = OUTLINED_FUNCTION_41_0();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  v10 = v0[13];

  if (v10)
  {

    v11 = sub_1C754FEEC();
    v12 = sub_1C755117C();
    if (OUTLINED_FUNCTION_66(v12))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_37();
    }

    v18 = swift_task_alloc();
    v0[20] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    *v18 = v0;
    v18[1] = sub_1C740C524;
    OUTLINED_FUNCTION_142();

    return MEMORY[0x1EEE6DA10](v19, v20, v21, v22, v23);
  }

  else
  {
    v25 = v0[11];
    v26 = qword_1EC25B888;
    v0[22] = qword_1EC25B888;
    v27 = (v25 + v26);
    os_unfair_lock_lock((v25 + v26));
    sub_1C6FB5E28(&v27[2], (v0 + 2));
    v0[23] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
    v28 = sub_1C7550E3C();
    OUTLINED_FUNCTION_40_43(v28);
    os_unfair_lock_unlock(v27);
    __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[24] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_24_42(v29);
    OUTLINED_FUNCTION_142();

    return MEMORY[0x1EEE6D8C8](v31, v32, v33);
  }
}

uint64_t sub_1C740C524()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[21] = v0;

  if (!v0)
  {
    (*(v3[17] + 8))(v3[18], v3[16]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740C634()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v3 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v3);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v9 = v0[11];
  v10 = qword_1EC25B888;
  v0[22] = qword_1EC25B888;
  v11 = (v9 + v10);
  os_unfair_lock_lock((v9 + v10));
  sub_1C6FB5E28(&v11[2], (v0 + 2));
  v0[23] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
  v12 = sub_1C7550E3C();
  OUTLINED_FUNCTION_40_43(v12);
  os_unfair_lock_unlock(v11);
  __swift_mutable_project_boxed_opaque_existential_0((v0 + 2), v0[5]);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[24] = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_24_42(v13);

  return MEMORY[0x1EEE6D8C8](v15, v16, v17);
}

uint64_t sub_1C740C784()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740C87C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = v0[11] + v0[22];
  v2 = v0[9];
  v0[26] = v2;
  os_unfair_lock_lock(v1);
  __swift_assign_boxed_opaque_existential_1((v1 + 8), v0 + 2);
  os_unfair_lock_unlock(v1);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v4))
  {
    v5 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_81_21(v5, 3.852e-34);
    OUTLINED_FUNCTION_39();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  if (v2)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[27] = v11;
    *v11 = v12;
    v11[1] = sub_1C740CA14;
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DA10](v13, v14, v15, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_244_0();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1C740CA14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740CB0C()
{
  OUTLINED_FUNCTION_42();

  __swift_storeEnumTagSinglePayload(v0[10], 0, 1, v0[15]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1C740CB90()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C740CBF4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C740CC58()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t **sub_1C740CCC8()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_1EC25B880;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(v1 + v3);
  type metadata accessor for ResilientAsyncSequence.State(255, v2[10], v2[11], v2[12]);
  v5 = sub_1C754E60C();
  sub_1C74128FC(v5);
  return v1;
}

uint64_t sub_1C740CD94()
{
  sub_1C740CCC8();

  return swift_deallocClassInstance();
}

void sub_1C740CDEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C740BD1C(a1);

  *a2 = v3;
  a2[1] = 0;
}

uint64_t sub_1C740CE9C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28A48);
  __swift_project_value_buffer(v0, qword_1EDD28A48);
  return sub_1C754FEFC();
}

uint64_t sub_1C740CF1C()
{
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(&v1);
  switch(v1)
  {
    case 3:

      break;
    default:
      sub_1C7551DBC();

      break;
  }

  return sub_1C754F60C();
}

uint64_t sub_1C740D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF0, &qword_1C758A510);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1C740D174;

  return sub_1C6FA8308();
}

uint64_t sub_1C740D174()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740D26C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v3 = OUTLINED_FUNCTION_58_28();
  if ((*(v4 + 88))(v3) == *MEMORY[0x1E69A0888])
  {
    v5 = OUTLINED_FUNCTION_32_38();
    v6(v5);
    v7 = v0[1];
    *v2 = *v0;
    v2[1] = v7;
    v8 = OUTLINED_FUNCTION_49_3();
    v10 = OUTLINED_FUNCTION_3_111(v8, v9);
    OUTLINED_FUNCTION_64_19(v10);

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_58_28();
    (*(v12 + 8))(v11);
    v13 = sub_1C7413570();
    v14 = OUTLINED_FUNCTION_166_0(&type metadata for CompletionParserError, v13);
    *v15 = 0xD000000000000028;
    v15[1] = 0x80000001C75AFE30;
    OUTLINED_FUNCTION_31_41(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_3_111(*(v1 + 24), *(*(v1 + 24) + 24));
    OUTLINED_FUNCTION_64_19(v17);

    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_244_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1C740D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF0, &qword_1C758A510);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1C740D49C;

  return sub_1C6FA8468();
}

uint64_t sub_1C740D49C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740D594()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v3 = OUTLINED_FUNCTION_58_28();
  if ((*(v4 + 88))(v3) == *MEMORY[0x1E69A0888])
  {
    v5 = OUTLINED_FUNCTION_32_38();
    v6(v5);
    v7 = v0[1];
    *v2 = *v0;
    v2[1] = v7;
    v8 = OUTLINED_FUNCTION_49_3();
    v10 = OUTLINED_FUNCTION_3_111(v8, v9);
    OUTLINED_FUNCTION_64_19(v10);

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_58_28();
    (*(v12 + 8))(v11);
    v13 = sub_1C7413570();
    v14 = OUTLINED_FUNCTION_166_0(&type metadata for CompletionParserError, v13);
    *v15 = 0xD00000000000002BLL;
    v15[1] = 0x80000001C75AFE00;
    OUTLINED_FUNCTION_31_41(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_3_111(*(v1 + 24), *(*(v1 + 24) + 24));
    OUTLINED_FUNCTION_64_19(v17);

    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_244_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1C740D6B8()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = OUTLINED_FUNCTION_3_111(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_64_19(v1);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_244_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C740D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF0, &qword_1C758A510);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1C740D840;

  return sub_1C6FA80AC();
}

uint64_t sub_1C740D840()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740D938()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v3 = OUTLINED_FUNCTION_58_28();
  if ((*(v4 + 88))(v3) == *MEMORY[0x1E69A0888])
  {
    v5 = OUTLINED_FUNCTION_32_38();
    v6(v5);
    v7 = v0[1];
    *v2 = *v0;
    v2[1] = v7;
    v8 = OUTLINED_FUNCTION_49_3();
    v10 = OUTLINED_FUNCTION_3_111(v8, v9);
    OUTLINED_FUNCTION_64_19(v10);

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_58_28();
    (*(v12 + 8))(v11);
    v13 = sub_1C7413570();
    v14 = OUTLINED_FUNCTION_166_0(&type metadata for CompletionParserError, v13);
    *v15 = 0xD000000000000028;
    v15[1] = 0x80000001C75AFDD0;
    OUTLINED_FUNCTION_31_41(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_3_111(*(v1 + 24), *(*(v1 + 24) + 24));
    OUTLINED_FUNCTION_64_19(v17);

    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_244_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1C740DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C740DB94, 0, 0);
}

uint64_t sub_1C740DB94()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0[9] + 16))(v0[10], v0[7], v0[8]);
  OUTLINED_FUNCTION_14_65(&qword_1EDD069F8, &qword_1EC214C08, "8");
  sub_1C7550E8C();
  v0[14] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8, &unk_1C755BF90);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[15] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_34_39(v1);
  OUTLINED_FUNCTION_80_13();

  return MEMORY[0x1EEE6D8C8](v3, v4, v5);
}

uint64_t sub_1C740DC94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740DDAC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[14];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[14];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_8_64();
      sub_1C6FB1814();
      v5 = v25;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      OUTLINED_FUNCTION_15(v6);
      sub_1C6FB1814();
      v5 = v26;
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = v2;
    *(v8 + 40) = v1;
    v0[14] = v5;
    OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8, &unk_1C755BF90);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[15] = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_34_39(v9);
    OUTLINED_FUNCTION_80_13();
    OUTLINED_FUNCTION_142();

    return MEMORY[0x1EEE6D8C8](v11, v12, v13);
  }

  else
  {
    v15 = v0[5];
    v16 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    *v16 = v3;
    OUTLINED_FUNCTION_3_111(v15, v15[3]);
    sub_1C754F1AC();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_142();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1C740DF38()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = OUTLINED_FUNCTION_3_111(*(v0 + 40), *(*(v0 + 40) + 24));
  OUTLINED_FUNCTION_64_19(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1C740DFC0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v51 = v2;
  v52 = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C10, &qword_1C755BB78);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BB98, &qword_1C758A4C8);
  OUTLINED_FUNCTION_3_0();
  v49 = v9;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  v54 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v13);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1[3];
  v53 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v23);
  sub_1C740CF1C();
  v24 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  sub_1C754F16C();
  sub_1C6FD7FC8(v16, &qword_1EC214BF0, &qword_1C7574200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BBA0, &qword_1C758A4D0);
  v25 = swift_allocObject();
  *(v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v19 + 16))(v25 + *(*v25 + *MEMORY[0x1E69E6B68] + 16), v22, v17);
  (*(v19 + 8))(v22, v17);
  if (qword_1EDD079A0 != -1)
  {
    OUTLINED_FUNCTION_28(&qword_1EDD079A0);
  }

  v26 = sub_1C754FF1C();
  __swift_project_value_buffer(v26, qword_1EDD28990);
  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_127();
    *v29 = 0;
    _os_log_impl(&dword_1C6F5C000, v27, v28, "FreeformStoryCompletion: Starting chapters", v29, 2u);
    OUTLINED_FUNCTION_37();
  }

  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  v32 = v51;
  (*(v5 + 16))(v46, v51 + *(v31 + 20), v48);
  v33 = v53;
  sub_1C6FB5E28(v53, v55);
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = v25;
  sub_1C6F699F8(v55, v34 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BBB0, &qword_1C758A4F0);
  OUTLINED_FUNCTION_14_65(&qword_1EDD06A08, &qword_1EC214C10, &qword_1C755BB78);
  v35 = v54;
  sub_1C75519FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BA80, &qword_1C758A0C8);
  v36 = swift_allocObject();
  v37 = v49;
  v38 = v47;
  v39 = v35;
  v40 = v50;
  (*(v49 + 16))(v47, v39, v50);
  v41 = sub_1C7413164(v38, v36);
  v42 = sub_1C754FEEC();
  v43 = sub_1C75511BC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_127();
    *v44 = 0;
    _os_log_impl(&dword_1C6F5C000, v42, v43, "FreeformStoryCompletion: Completing chapters async sequence", v44, 2u);
    OUTLINED_FUNCTION_109();
  }

  sub_1C7413058(v32);
  (*(v37 + 8))(v54, v40);

  v45 = v52;
  *v52 = v41;
  *(v45 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C740E598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 424) = v11;
  *(v8 + 408) = v10;
  *(v8 + 392) = a6;
  *(v8 + 400) = a8;
  *(v8 + 57) = a7;
  *(v8 + 376) = a4;
  *(v8 + 384) = a5;
  *(v8 + 368) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C740E5DC, 0, 0);
}

uint64_t sub_1C740E5DC()
{
  v1 = *(v0 + 392);
  if (*(v0 + 57))
  {
    v2 = OUTLINED_FUNCTION_57_0();
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_42_35();
    OUTLINED_FUNCTION_16_6();
    *(v0 + 48) = sub_1C7099594(v4, v5, v6, v7);
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    *(v0 + 56) = 1;
    sub_1C7410C3C(v1, 1);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_49_3();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    *(v0 + 296) = v10;
    OUTLINED_FUNCTION_41_40();
    OUTLINED_FUNCTION_75();
    *(v0 + 304) = sub_1C7099594(v11, v12, v13, v14);
    *(v0 + 272) = v1;
    v15 = __swift_project_boxed_opaque_existential_1((v0 + 272), v10);
    v16 = *(v10 - 8);
    v17 = swift_task_alloc();
    (*(v16 + 16))(v17, v15, v10);
    *(v0 + 40) = swift_getAssociatedTypeWitness();
    *(v0 + 48) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    v19 = sub_1C7410C3C(v1, 0);
    v20 = sub_1C740BD1C(v19);
    v22 = v21;

    *boxed_opaque_existential_0 = v20;
    boxed_opaque_existential_0[1] = v22;

    *(v0 + 56) = 0;
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  }

  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 432) = v23;
    sub_1C7055658(v0 + 16, v0 + 64);
    if ((*(v0 + 104) & 1) == 0)
    {
      break;
    }

    sub_1C6F699F8((v0 + 64), v0 + 112);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 112, *(v0 + 136));
    OUTLINED_FUNCTION_57_0();
    sub_1C755150C();
    v25 = *(v0 + 152);
    v24 = *(v0 + 160);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 184);
    sub_1C70556B4(v0 + 16);
    sub_1C6FB5E28(v0 + 112, v0 + 16);
    *(v0 + 56) = 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
    if (!v24)
    {
      sub_1C7055708(v0 + 16);
      v47 = swift_task_alloc();
      *(v0 + 456) = v47;
      *(v0 + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      *v47 = v0;
      OUTLINED_FUNCTION_37_37();
      OUTLINED_FUNCTION_44();

      return MEMORY[0x1EEE6DA10](v48, v49, v50, v51, v52);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 432);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB19BC(v33, v34, v35, v36);
      v23 = v37;
    }

    v31 = *(v23 + 16);
    v30 = *(v23 + 24);
    if (v31 >= v30 >> 1)
    {
      v38 = OUTLINED_FUNCTION_15(v30);
      sub_1C6FB19BC(v38, v31 + 1, 1, v39);
      v23 = v40;
    }

    *(v23 + 16) = v31 + 1;
    v32 = (v23 + 40 * v31);
    v32[4] = v25;
    v32[5] = v24;
    v32[6] = v26;
    v32[7] = v27;
    v32[8] = v28;
  }

  sub_1C6F699F8((v0 + 64), v0 + 192);
  __swift_mutable_project_boxed_opaque_existential_0(v0 + 192, *(v0 + 216));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 440) = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_38_37(v41);
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6D8C8](v43, v44, v45);
}

uint64_t sub_1C740E9B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740EAB0()
{
  v1 = *(v0 + 232);
  v31 = (v0 + 64);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  sub_1C70556B4(v0 + 16);
  sub_1C6FB5E28(v0 + 192, v0 + 16);
  v30 = v0 + 192;
  *(v0 + 56) = 0;
  for (i = (v0 + 192); ; i = (v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1(i);
    if (!v3)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v0 + 432);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_8_64();
      sub_1C6FB19BC(v12, v13, v14, v15);
      v8 = v16;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      v17 = OUTLINED_FUNCTION_15(v9);
      sub_1C6FB19BC(v17, v10 + 1, 1, v18);
      v8 = v19;
    }

    *(v8 + 16) = v10 + 1;
    v11 = (v8 + 40 * v10);
    v11[4] = v1;
    v11[5] = v3;
    v11[6] = v2;
    v11[7] = v4;
    v11[8] = v5;
    *(v0 + 432) = v8;
    sub_1C7055658(v0 + 16, v31);
    if ((*(v0 + 104) & 1) == 0)
    {
      sub_1C6F699F8(v31, v30);
      v25 = *(v0 + 216);
      v26 = *(v0 + 224);
      __swift_mutable_project_boxed_opaque_existential_0(v30, v25);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 440) = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_38_37(v27);

      return MEMORY[0x1EEE6D8C8](v0 + 232, v25, v26);
    }

    sub_1C6F699F8(v31, v0 + 112);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 112, *(v0 + 136));
    sub_1C755150C();
    v1 = *(v0 + 152);
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    sub_1C70556B4(v0 + 16);
    sub_1C6FB5E28(v0 + 112, v0 + 16);
    *(v0 + 56) = 1;
  }

  sub_1C7055708(v0 + 16);
  v20 = swift_task_alloc();
  *(v0 + 456) = v20;
  *(v0 + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  *v20 = v0;
  OUTLINED_FUNCTION_37_37();
  v23 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 312, v21, v23, v22, v24);
}

uint64_t sub_1C740ED40()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  sub_1C7055708(v0 + 16);
  OUTLINED_FUNCTION_3_111(*(v0 + 376), *(*(v0 + 376) + 24));
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_7_46();

  return v1();
}

uint64_t sub_1C740EDC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[59] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v3[40];
    v3[60] = v3[39];
    v3[61] = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v3[62] = v11;
    *v11 = v12;
    v11[1] = sub_1C740EF40;
    v13 = v3[58];
    v14 = v3[51];
    v15 = MEMORY[0x1E69E6158];
    v16 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v3 + 41, v14, v15, v13, v16);
  }
}

uint64_t sub_1C740EF40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[63] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v3[42];
    v3[64] = v3[41];
    v3[65] = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v3[66] = v11;
    *v11 = v12;
    v11[1] = sub_1C740F0CC;
    v13 = v3[58];
    v14 = v3[52];
    v15 = MEMORY[0x1E69E6158];
    v16 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v3 + 43, v14, v15, v13, v16);
  }
}

uint64_t sub_1C740F0CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[67] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v3[44];
    v3[68] = v3[43];
    v3[69] = v10;
    v11 = swift_task_alloc();
    v3[70] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *v11 = v5;
    v11[1] = sub_1C740F278;
    v13 = v3[58];
    v14 = v3[53];
    v15 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v3 + 45, v14, v12, v13, v15);
  }
}

uint64_t sub_1C740F278()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740F3A4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 544);
  v2 = *(v0 + 512);
  v3 = *(v0 + 432);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  *v5 = *(v0 + 480);
  *(v5 + 16) = v2;
  *(v5 + 32) = v1;
  *(v5 + 48) = v6;
  *(v5 + 56) = v3;
  OUTLINED_FUNCTION_3_111(v4, v4[3]);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_1C740F434()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_3_111(*(v0 + 376), *(*(v0 + 376) + 24));
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_7_46();

  return v1();
}

uint64_t sub_1C740F4A8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_3_111(*(v0 + 376), *(*(v0 + 376) + 24));
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_7_46();

  return v1();
}

uint64_t sub_1C740F51C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_3_111(*(v0 + 376), *(*(v0 + 376) + 24));
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_7_46();

  return v1();
}

uint64_t sub_1C740F590()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_3_111(*(v0 + 376), *(*(v0 + 376) + 24));
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_7_46();

  return v1();
}

uint64_t sub_1C740F604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming(0) - 8);
  v5[12] = v6;
  v5[13] = *(v6 + 64);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C740F708, 0, 0);
}

void sub_1C740F708()
{
  v1 = *(*(v0 + 72) + 16);
  while (1)
  {
    v2 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    v3 = v1;
    atomic_compare_exchange_strong_explicit((*(v0 + 72) + 16), &v3, v2, memory_order_relaxed, memory_order_relaxed);
    v4 = v3 == v1;
    v1 = v3;
    if (v4)
    {
      if (qword_1EDD079A0 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  OUTLINED_FUNCTION_28(&qword_1EDD079A0);
LABEL_6:
  v5 = sub_1C754FF1C();
  __swift_project_value_buffer(v5, qword_1EDD28990);
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_41_0();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "FreeformStoryCompletion: Spawning chapter %ld", v8, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);
  v23 = *(v0 + 56);

  sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1C6FB5E28(v12, v0 + 16);
  sub_1C74133C0(v13, v9);
  v18 = (*(v10 + 80) + 88) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = v11;
  sub_1C6F699F8((v0 + 16), (v19 + 6));
  sub_1C741341C(v9, v19 + v18);

  OUTLINED_FUNCTION_149();
  sub_1C7294288();
  *v23 = v20;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C740F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF0, &qword_1C758A510);
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C740FAD4, 0, 0);
}

uint64_t sub_1C740FAD4()
{
  OUTLINED_FUNCTION_123();
  if (v0[5] >= 2)
  {
    v1 = v0[6];
    v2 = v0[7];
    *(swift_task_alloc() + 16) = v2;
    v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v4));
    sub_1C74135E0(v1 + v3);
    os_unfair_lock_unlock((v1 + v4));
  }

  if (qword_1EDD079A0 != -1)
  {
    OUTLINED_FUNCTION_28(&qword_1EDD079A0);
  }

  v5 = sub_1C754FF1C();
  v0[19] = __swift_project_value_buffer(v5, qword_1EDD28990);
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v7))
  {
    v8 = v0[5];
    v9 = OUTLINED_FUNCTION_41_0();
    *v9 = 134217984;
    *(v9 + 4) = v8;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[20] = v15;
  *v15 = v16;
  v15[1] = sub_1C740FCA0;
  OUTLINED_FUNCTION_93_16();

  return sub_1C6FA9A88();
}

uint64_t sub_1C740FCA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C740FD98()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v3 + 88);
  *(v0 + 176) = v4;
  *(v0 + 184) = (v3 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v5 = v4(v1, v2);
  v6 = MEMORY[0x1E69A0888];
  *(v0 + 280) = v5;
  v7 = *v6;
  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  if (v5 != v7)
  {
    (*(v10 + 8))(*(v0 + 144), v9);
    v16 = sub_1C7413570();
    v17 = OUTLINED_FUNCTION_166_0(&type metadata for CompletionParserError, v16);
    *v18 = 0xD000000000000049;
    v18[1] = 0x80000001C75AFD30;
    OUTLINED_FUNCTION_31_41(v17, v18, v19);
    OUTLINED_FUNCTION_49_30();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_93_16();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v10 + 96);
  *(v0 + 192) = v11;
  *(v0 + 200) = (v10 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
  v11(v8, v9);
  *(v0 + 208) = *v8;
  *(v0 + 216) = v8[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 224) = v12;
  *v12 = v13;
  v12[1] = sub_1C740FF40;
  OUTLINED_FUNCTION_93_16();

  return sub_1C6FA9E30();
}

uint64_t sub_1C740FF40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7410040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 280);
  if ((*(v10 + 176))(*(v10 + 136), *(v10 + 120)) == v11)
  {
    v12 = *(v10 + 136);
    v14 = *(v10 + 80);
    v13 = *(v10 + 88);
    v16 = *(v10 + 64);
    v15 = *(v10 + 72);
    (*(v10 + 192))(v12, *(v10 + 120));
    *(v10 + 240) = *v12;
    *(v10 + 248) = v12[1];
    v17 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming(0);
    (*(v14 + 16))(v13, v16 + *(v17 + 24), v15);
    OUTLINED_FUNCTION_14_65(&qword_1EDD069F8, &qword_1EC214C08, "8");
    sub_1C7550E8C();
    *(v10 + 256) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8, &unk_1C755BF90);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v10 + 264) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_33_38(v18);
    OUTLINED_FUNCTION_80_13();
    OUTLINED_FUNCTION_239_0();

    return MEMORY[0x1EEE6D8C8](v20, v21, v22);
  }

  else
  {
    v25 = *(v10 + 128);
    v24 = *(v10 + 136);
    v26 = *(v10 + 120);

    (*(v25 + 8))(v24, v26);
    v27 = sub_1C7413570();
    v28 = OUTLINED_FUNCTION_166_0(&type metadata for CompletionParserError, v27);
    *v29 = 0xD00000000000004ALL;
    v29[1] = 0x80000001C75AFD80;
    OUTLINED_FUNCTION_31_41(v28, v29, v30);
    OUTLINED_FUNCTION_49_30();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_239_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_1C7410238()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[34] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7410370()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_8_64();
      sub_1C6FB1814();
      v4 = v32;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      OUTLINED_FUNCTION_15(v5);
      sub_1C6FB1814();
      v4 = v33;
    }

    *(v4 + 16) = v6 + 1;
    v7 = v4 + 16 * v6;
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;
    *(v0 + 256) = v4;
    OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8, &unk_1C755BF90);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 264) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_33_38(v8);
    OUTLINED_FUNCTION_80_13();
    OUTLINED_FUNCTION_88_16();

    MEMORY[0x1EEE6D8C8](v10, v11, v12);
  }

  else
  {
    v14 = *(v0 + 272);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *(swift_task_alloc() + 16) = v15;
    v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
    v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    os_unfair_lock_lock((v16 + v18));
    sub_1C74135C4(v16 + v17);
    os_unfair_lock_unlock((v16 + v18));
    if (!v14)
    {

      v19 = sub_1C754FEEC();
      v20 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_21_0(v20))
      {
        v21 = *(v0 + 40);
        v22 = OUTLINED_FUNCTION_41_0();
        *v22 = 134217984;
        *(v22 + 4) = v21;
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
        OUTLINED_FUNCTION_23_3();
      }

      v28 = *(v0 + 240);
      v29 = *(v0 + 32);
      v34 = *(v0 + 248);
      v35 = *(v0 + 208);

      *v29 = v35;
      *(v29 + 16) = v28;
      *(v29 + 24) = v34;

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_88_16();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_88_16();
  }
}

uint64_t sub_1C7410648()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74106C0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7410738()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74107B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1C754F38C();
  (*(*(v7 - 8) + 8))(a1, v7);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C740CF1C();
  v8 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  sub_1C754F16C();
  return sub_1C6FD7FC8(v6, &qword_1EC214BF0, &qword_1C7574200);
}

uint64_t FreeformStoryCompletionAsync.ChapterCompletionAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[1])
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BA70, &qword_1C758A0C0);
    OUTLINED_FUNCTION_42_35();
    *(a1 + 32) = sub_1C7099594(v4, &qword_1EC21BA70, &qword_1C758A0C0, v5);
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 40) = 1;

    return sub_1C75504FC();
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BA80, &qword_1C758A0C8);
    OUTLINED_FUNCTION_41_40();
    v21 = sub_1C7099594(v7, &qword_1EC21BA80, &qword_1C758A0C8, v8);
    v19[0] = v3;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_27_0();
    v10 = MEMORY[0x1EEE9AC00](v9);
    (*(v12 + 16))(&v19[-1] - v11, v10);
    *(a1 + 24) = swift_getAssociatedTypeWitness();
    *(a1 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);

    v15 = sub_1C740BD1C(v14);
    v17 = v16;

    *boxed_opaque_existential_0 = v15;
    boxed_opaque_existential_0[1] = v17;
    *(a1 + 40) = 0;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }
}

double sub_1C7410B70@<D0>(uint64_t a1@<X8>)
{
  FreeformStoryCompletionAsync.ChapterCompletionAsyncSequence.makeAsyncIterator()(a1);
  v2 = *v1;
  v3 = *(v1 + 8);

  return sub_1C741290C(v2, v3);
}

uint64_t FreeformStoryCompletionAsync.story.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FreeformStoryCompletionAsync(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;

  return sub_1C7410C3C(v4, v5);
}

uint64_t type metadata accessor for FreeformStoryCompletionAsync(uint64_t a1)
{
  result = qword_1EDD08AE8;
  if (!qword_1EDD08AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7410C3C(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_1C75504FC();
  }

  else
  {
  }
}

uint64_t sub_1C7410C60()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD08B00 != -1)
  {
    OUTLINED_FUNCTION_1_130(&qword_1EDD08B00);
  }

  v1 = sub_1C754FF1C();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_1EDD28A48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  type metadata accessor for FreeformStoryCompletionAsync(0);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_26_44();
  *v10 = v11;
  v10[1] = sub_1C7410DA8;
  v12 = OUTLINED_FUNCTION_27_48();

  return MEMORY[0x1EEE6DA10](v12, v13, v14, v15, v16);
}

uint64_t sub_1C7410DA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7410EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_72_21();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    *v10 = 136642819;
    v13 = OUTLINED_FUNCTION_57_0();
    *(v10 + 4) = sub_1C6F765A4(v13, v14, v15);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v16, v17, "FreeformStoryCompletion: returning title '%{sensitive}s'");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_30_42();
  OUTLINED_FUNCTION_239_0();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1C7410F94()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD08B00 != -1)
  {
    OUTLINED_FUNCTION_1_130(&qword_1EDD08B00);
  }

  v1 = sub_1C754FF1C();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_1EDD28A48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  type metadata accessor for FreeformStoryCompletionAsync(0);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_26_44();
  *v10 = v11;
  v10[1] = sub_1C74110DC;
  v12 = OUTLINED_FUNCTION_27_48();

  return MEMORY[0x1EEE6DA10](v12, v13, v14, v15, v16);
}

uint64_t sub_1C74110DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74111D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_72_21();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    *v10 = 136642819;
    v13 = OUTLINED_FUNCTION_57_0();
    *(v10 + 4) = sub_1C6F765A4(v13, v14, v15);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v16, v17, "FreeformStoryCompletion: returning subtitle '%{sensitive}s'");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_30_42();
  OUTLINED_FUNCTION_239_0();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1C74112C8()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD08B00 != -1)
  {
    OUTLINED_FUNCTION_1_130(&qword_1EDD08B00);
  }

  v1 = sub_1C754FF1C();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_1EDD28A48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  type metadata accessor for FreeformStoryCompletionAsync(0);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_26_44();
  *v10 = v11;
  v10[1] = sub_1C7411410;
  v12 = OUTLINED_FUNCTION_27_48();

  return MEMORY[0x1EEE6DA10](v12, v13, v14, v15, v16);
}

uint64_t sub_1C7411410()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7411508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_72_21();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    *v10 = 136642819;
    v13 = OUTLINED_FUNCTION_57_0();
    *(v10 + 4) = sub_1C6F765A4(v13, v14, v15);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v16, v17, "FreeformStoryCompletion: returning keyAssetQuery '%{sensitive}s'");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_30_42();
  OUTLINED_FUNCTION_239_0();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1C74115FC()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD08B00 != -1)
  {
    OUTLINED_FUNCTION_1_130(&qword_1EDD08B00);
  }

  v1 = sub_1C754FF1C();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_1EDD28A48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  type metadata accessor for FreeformStoryCompletionAsync(0);
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_26_44();
  *v10 = v12;
  v10[1] = sub_1C7411758;
  v13 = OUTLINED_FUNCTION_27_48();

  return MEMORY[0x1EEE6DA10](v13, v14, v11, v15, v16);
}

uint64_t sub_1C7411758()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7411850()
{
  OUTLINED_FUNCTION_75_1();
  v17 = v0;
  v1 = *(v0 + 16);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_41_0();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136642819;
    v6 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v16);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t FreeformStoryCompletionAsync.synced()(uint64_t a1)
{
  *(v2 + 336) = a1;
  *(v2 + 344) = v1;
  return OUTLINED_FUNCTION_0_67(sub_1C7411998);
}

uint64_t sub_1C7411998()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD08B00 != -1)
  {
    OUTLINED_FUNCTION_1_130(&qword_1EDD08B00);
  }

  v1 = sub_1C754FF1C();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_1EDD28A48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  type metadata accessor for FreeformStoryCompletionAsync(0);
  v10 = swift_task_alloc();
  *(v0 + 360) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_26_44();
  *v10 = v11;
  v10[1] = sub_1C7411AE0;
  v12 = OUTLINED_FUNCTION_27_48();

  return MEMORY[0x1EEE6DA10](v12, v13, v14, v15, v16);
}

uint64_t sub_1C7411AE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7411BD8()
{
  v26 = v0;
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v2;
  sub_1C6FDE928(v0 + 80, v0 + 144);
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();
  sub_1C6FB5454(v0 + 80);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_41_0();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136642819;
    v7 = *(v0 + 96);
    v22 = *(v0 + 80);
    v23 = v7;
    v8 = *(v0 + 128);
    v24 = *(v0 + 112);
    v25 = v8;
    sub_1C6FDE928(v0 + 80, v0 + 272);
    v9 = FreeformStoryCompletionSync.description.getter();
    v11 = v10;
    v12 = v23;
    *(v0 + 208) = v22;
    *(v0 + 224) = v12;
    v13 = v25;
    *(v0 + 240) = v24;
    *(v0 + 256) = v13;
    sub_1C6FB5454(v0 + 208);
    v14 = sub_1C6F765A4(v9, v11, &v21);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "FreeformStoryCompletion: returning completion %{sensitive}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v15 = *(v0 + 336);
  v16 = *(v0 + 80);
  v17 = *(v0 + 96);
  v18 = *(v0 + 128);
  v15[2] = *(v0 + 112);
  v15[3] = v18;
  *v15 = v16;
  v15[1] = v17;
  OUTLINED_FUNCTION_25();

  return v19();
}

uint64_t sub_1C7411D88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7413658;

  return FreeformStoryCompletionAsync.title.getter();
}

uint64_t sub_1C7411E14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7413658;

  return FreeformStoryCompletionAsync.subtitle.getter();
}

uint64_t sub_1C7411EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C725E780;

  return FreeformStoryCompletionAsync.keyAssetQuery.getter();
}

uint64_t sub_1C7411F2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7272418;

  return FreeformStoryCompletionAsync.traits.getter();
}

uint64_t sub_1C7411FB8(uint64_t a1)
{
  FreeformStoryCompletionAsync.story.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C741201C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6F739D4;

  return FreeformStoryCompletionAsync.synced()(a1);
}

uint64_t sub_1C74120B4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C7412170(uint64_t a1)
{
  result = sub_1C7412198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C7412198()
{
  result = qword_1EDD08B10;
  if (!qword_1EDD08B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCompletionAsync.ChapterCompletionAsyncSequence, &type metadata for FreeformStoryCompletionAsync.ChapterCompletionAsyncSequence, v0, v1);
    atomic_store(result, &qword_1EDD08B10);
  }

  return result;
}

unint64_t sub_1C74121F0()
{
  result = qword_1EDD06E30;
  if (!qword_1EDD06E30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryChapterCompletionAsyncIterator, &type metadata for FreeformStoryChapterCompletionAsyncIterator, v0, v1);
    atomic_store(result, &qword_1EDD06E30);
  }

  return result;
}

uint64_t sub_1C7412244(uint64_t a1)
{
  result = sub_1C754FF1C();
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

void sub_1C7412334(uint64_t a1)
{
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(319);
  if (v1 <= 0x3F)
  {
    sub_1C7412418(319, qword_1EC21BB10, &type metadata for FreeformStoryCompletionSync);
    if (v2 <= 0x3F)
    {
      sub_1C7412418(319, &qword_1EDD06A28, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C741248C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C7412418(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
    v4 = sub_1C7550E3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C741248C(uint64_t a1)
{
  if (!qword_1EDD06A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
    v1 = sub_1C7550E3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD06A20);
    }
  }
}

uint64_t sub_1C7412540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C741257C(uint64_t a1, int a2)
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

uint64_t sub_1C74125BC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C7412624()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_142();

  return sub_1C740C1C4(v3, v4, v5, v6, v7, v8);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v5;
      a1[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v14, a1, v4);
        if ((v9 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v8 + 16))(a1, a2, v5);
        }

        (*(v6 + 8))(v14, v4);
      }
    }
  }

  return result;
}

double sub_1C741290C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C7412918()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = OUTLINED_FUNCTION_54_30();
  OUTLINED_FUNCTION_18(v0);
  v1 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_19_68();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_44(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_100(v3);
  OUTLINED_FUNCTION_142();

  return sub_1C740D068(v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_55Tm()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  OUTLINED_FUNCTION_279();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  (*(v4 + 8))(v1 + v5, v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  OUTLINED_FUNCTION_12();
  v12 = *(v11 + 8);
  v12(v1 + v9, v10);
  v13 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C10, &qword_1C755BB78);
  OUTLINED_FUNCTION_12();
  (*(v14 + 8))(v1 + v9 + v13);
  v15 = OUTLINED_FUNCTION_70_21(v0[8]);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_70_21(v0[9]);
  (v12)(v16);
  v17 = OUTLINED_FUNCTION_70_21(v0[10]);
  (v12)(v17);
  OUTLINED_FUNCTION_25_0();

  return MEMORY[0x1EEE6BDD0](v18, v19, v20);
}

uint64_t sub_1C7412BEC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = OUTLINED_FUNCTION_54_30();
  OUTLINED_FUNCTION_18(v0);
  v1 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_19_68();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_44(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_100(v3);
  OUTLINED_FUNCTION_142();

  return sub_1C740D390(v5, v6, v7, v8, v9);
}

uint64_t sub_1C7412CEC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = OUTLINED_FUNCTION_54_30();
  OUTLINED_FUNCTION_18(v0);
  v1 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_19_68();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_44(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_100(v3);
  OUTLINED_FUNCTION_142();

  return sub_1C740D734(v5, v6, v7, v8, v9);
}

uint64_t sub_1C7412DEC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = OUTLINED_FUNCTION_54_30();
  OUTLINED_FUNCTION_18(v0);
  v1 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_19_68();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_44(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_100(v3);
  OUTLINED_FUNCTION_142();

  return sub_1C740DA5C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7412EEC()
{
  v0 = sub_1C754F38C();
  OUTLINED_FUNCTION_18(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_25_44(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_44();

  return sub_1C740E598(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C7413058(uint64_t a1)
{
  v2 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C74130B4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_244_0();

  return sub_1C740F604(v3, v4, v5, v6, v7);
}

uint64_t sub_1C7413164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BB98, &qword_1C758A4C8);
  v18 = v4;
  v19 = sub_1C7099594(&qword_1EDD06860, &qword_1EC21BB98, &qword_1C758A4C8, MEMORY[0x1E69E8878]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, a1, v4);
  sub_1C754FEFC();
  v6 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(&v14 + 1) = swift_getAssociatedTypeWitness();
  *&v15 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v13);
  sub_1C7550E8C();
  *(&v15 + 1) = MEMORY[0x1E69E7CC0];
  *&v16[20] = v14;
  *&v16[4] = v13;
  *&v16[36] = v15;
  v10 = a2 + qword_1EC25B888;
  v11 = *&v16[16];
  *(v10 + 4) = *v16;
  *v10 = 0;
  *(v10 + 20) = v11;
  *(v10 + 36) = *&v16[32];
  *(v10 + 52) = *&v16[48];
  return a2;
}

uint64_t sub_1C74133C0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C741341C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C7413478()
{
  OUTLINED_FUNCTION_75_1();
  v2 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming(0);
  OUTLINED_FUNCTION_76(v2);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();

  return sub_1C740F924(v7, v8, v9, v3, v4, v10, v11);
}

unint64_t sub_1C7413570()
{
  result = qword_1EC21BBB8[0];
  if (!qword_1EC21BBB8[0])
  {
    result = swift_getWitnessTable(byte_1C758D6F0, &type metadata for CompletionParserError, v0, v1);
    atomic_store(result, qword_1EC21BBB8);
  }

  return result;
}

uint64_t sub_1C74135FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_40_43(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;

  return swift_getExtendedExistentialTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_54_30()
{

  return sub_1C754F38C();
}

uint64_t OUTLINED_FUNCTION_62_24(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_64_19(uint64_t a1)
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_66_25(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a2);

  return sub_1C740CF1C();
}

uint64_t OUTLINED_FUNCTION_81_21(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

double OUTLINED_FUNCTION_91_17(uint64_t a1, uint64_t a2)
{

  sub_1C754F17C();
  return result;
}

void sub_1C741384C(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v10 = 136380931;
    v11 = [v7 title];
    v12 = sub_1C755068C();
    v14 = v13;

    v15 = sub_1C6F765A4(v12, v14, v50);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = [v7 localIdentifier];
    v17 = sub_1C755068C();
    v19 = v18;

    v20 = sub_1C6F765A4(v17, v19, v50);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for Album (%{private}s) %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v21 = sub_1C70A65EC();
  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C7565670;
  *(v23 + 32) = v7;
  sub_1C7413D38();
  v24 = v7;
  v25 = sub_1C7550B3C();

  v26 = [v22 fetchAssetsInAssetCollections:v25 options:v21];

  if (!v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ([v26 count])
  {
    sub_1C70A51CC(v26, a2);
    v28 = v27;
    v29 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
    AssetElectionResult.init(fetchResult:)(v28);

    sub_1C6F85170();

    return;
  }

  v30 = v24;
  v31 = sub_1C754FEEC();
  v32 = sub_1C755117C();
  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_10;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v50[0] = v34;
  *v33 = 136315138;
  v35 = sub_1C70CAC04(v30);
  v37 = v36;

  if (!v37)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v38 = sub_1C6F765A4(v35, v37, v50);

  *(v33 + 4) = v38;
  _os_log_impl(&dword_1C6F5C000, v31, v32, "Found 0 asset in album %s", v33, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_109();

LABEL_10:
  v39 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
  v40 = v26;
  v41 = AssetElectionResult.init(fetchResult:)(v40);
  v42 = [v30 localIdentifier];
  v43 = sub_1C755068C();
  v45 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BC40, &qword_1C758A568);
  sub_1C7413D7C();
  v46 = swift_allocError();
  *v47 = 2;
  *(v47 + 8) = v43;
  *(v47 + 16) = v45;
  *(v47 + 24) = 1;

  v48 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
  swift_beginAccess();
  v49 = *&v41[v48];
  *&v41[v48] = v46;

  sub_1C6F85170();
}

unint64_t sub_1C7413D38()
{
  result = qword_1EDD0FA88;
  if (!qword_1EDD0FA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FA88);
  }

  return result;
}

unint64_t sub_1C7413D7C()
{
  result = qword_1EDD0C3B0[0];
  if (!qword_1EDD0C3B0[0])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21BC40, &qword_1C758A568);
    result = swift_getWitnessTable(byte_1C75866C0, v3, v0, v1);
    atomic_store(result, qword_1EDD0C3B0);
  }

  return result;
}

id AlbumAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlbumAssetElector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AlbumAssetElector(uint64_t a1)
{
  result = qword_1EDD0ADF8;
  if (!qword_1EDD0ADF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C7413EB8(uint64_t *a1)
{
  v2 = *(sub_1C754DF6C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422DD4();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C7415B44(v6);
  *a1 = v3;
}

void static FreeformStoryGenerator.generateLastResortTitle(from:storyElements:photoLibrary:)(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 280);
  v5 = *(a2 + 288);
  v6 = *(a2 + 232);
  v19[0] = *(a2 + 216);
  v19[1] = v6;
  v7 = *(a2 + 264);
  v19[2] = *(a2 + 248);
  v19[3] = v7;
  v20 = v4;
  v21 = v5;
  static FreeformStoryGenerator.generatePersonTitle(from:photoLibrary:)(v19, a3);
  if (!v8)
  {
    OUTLINED_FUNCTION_2_121();
    static FreeformStoryGenerator.generateLocationTitle(from:)(v9, v10, v11, v12, v13, v14, v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_2_121();
      static FreeformStoryGenerator.generateTimeTitle(from:)(v17);
      if (!v18)
      {
        sub_1C74140CC(a1, *(v4 + 16) == 1, 0);
      }
    }
  }
}

id static FreeformStoryGenerator.generateLastResortTitleForMiniMC(from:storyElements:)(unint64_t a1)
{
  v1 = sub_1C74140CC(a1, 0, 1);
  if (v2)
  {
    return v1;
  }

  if (qword_1EC213FB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC21A150;
  sub_1C75504FC();
  return v3;
}

id sub_1C74140CC(unint64_t a1, int a2, int a3)
{
  v63 = a3;
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_78();
  v68 = (v5 - v6);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v63 - v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v15 = sub_1C754DF6C();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v65 = (v17 - v18);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v63 - v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v63 - v22;
  v23 = sub_1C6FB6304();
  v24 = v23;
  v25 = 0;
  v69 = v16;
  v71 = (v16 + 32);
  v72 = MEMORY[0x1E69E7CC0];
  v73 = v15;
  while (v24 != v25)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1CCA5DDD0](v25, a1);
    }

    else
    {
      if (v25 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v23 = *(a1 + 8 * v25 + 32);
    }

    v15 = v23;
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      if (v24 > 2 && v23 > 24 && (v63 & 1) != 0)
      {
        if (qword_1EDD0DF48 != -1)
        {
          swift_once();
        }

        v48 = qword_1EDD0DF50;
        sub_1C75504FC();

        goto LABEL_51;
      }

      sub_1C754DECC();
      v58 = OUTLINED_FUNCTION_7_94();
      v59 = OUTLINED_FUNCTION_4_101();
      v61 = [v59 v60];

      if (v61)
      {
        v48 = sub_1C755068C();
      }

      else
      {

        v48 = 0;
      }

LABEL_50:
      v15 = v73;
LABEL_51:
      v62 = *(v69 + 8);
      v62(v65, v15);
      v62(v14, v15);
      return v48;
    }

    v27 = [v23 localCreationDate];
    if (v27)
    {
      v28 = v27;
      sub_1C754DF2C();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v15 = v73;
    __swift_storeEnumTagSinglePayload(v11, v29, 1, v73);
    sub_1C6FF51C8(v11, v14);
    OUTLINED_FUNCTION_78_1(v14);
    if (v43)
    {
      v23 = sub_1C7030CDC(v14, &unk_1EC219230, &unk_1C7563720);
      ++v25;
    }

    else
    {
      v30 = *v71;
      (*v71)(v70, v14, v15);
      v31 = v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB3608(0, *(v31 + 16) + 1, 1, v31);
        v31 = v36;
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v72 = v31;
      if (v34 >= v33 >> 1)
      {
        sub_1C6FB3608(v33 > 1, v34 + 1, 1, v72);
        v72 = v37;
      }

      v35 = v72;
      *(v72 + 16) = v34 + 1;
      v15 = v73;
      v23 = (v30)(v35 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v34, v70, v73);
      v25 = v26;
    }
  }

  if (*(v72 + 16))
  {
    v74 = v72;
    sub_1C75504FC();
    a1 = 0;
    sub_1C7413EB8(&v74);

    v38 = v74;
    v39 = v66;
    sub_1C710DAC4(v74, v66);
    OUTLINED_FUNCTION_78_1(v39);
    v14 = v67;
    if (v43)
    {
    }

    else
    {
      v40 = *v71;
      (*v71)(v67, v39, v15);
      v41 = v68;
      sub_1C74ED548(v38, v68);

      v42 = v41;
      v15 = v73;
      OUTLINED_FUNCTION_78_1(v42);
      if (!v43)
      {
        v40(v65, v68, v15);
        v25 = [objc_allocWithZone(MEMORY[0x1E69BE3B0]) init];
        sub_1C754DEAC();
        v51 = v50;
        sub_1C7293288(v50 / 604800.0);
        v24 = v52;
        sub_1C7293288(v51 / 2629746.0);
        if ((v64 & 1) == 0)
        {
          goto LABEL_39;
        }

        sub_1C754DECC();
        v53 = OUTLINED_FUNCTION_7_94();
        v48 = [v25 stringFromStartDate:0 endDate:v53 type:2];

        if (v48)
        {
          v54 = sub_1C755068C();
          v56 = v55;

          sub_1C754F28C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1C755BAB0;
          *(v57 + 56) = MEMORY[0x1E69E6158];
          *(v57 + 64) = sub_1C6F6D524();
          *(v57 + 32) = v54;
          *(v57 + 40) = v56;
          v48 = sub_1C754F25C();
        }

        else
        {
        }

        goto LABEL_50;
      }

      (*(v69 + 8))(v14, v15);
      v39 = v68;
    }

    sub_1C7030CDC(v39, &unk_1EC219230, &unk_1C7563720);
  }

  else
  {
  }

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDD09CF0);
  }

  v44 = sub_1C754FF1C();
  __swift_project_value_buffer(v44, qword_1EDD28B68);
  v45 = sub_1C754FEEC();
  v46 = sub_1C755119C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1C6F5C000, v45, v46, "No localCreationDates from assets during subtitle generation.", v47, 2u);
    MEMORY[0x1CCA5F8E0](v47, -1, -1);
  }

  return 0;
}

unint64_t static FreeformStoryGenerator.generatePersonTitle(from:photoLibrary:)(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = objc_autoreleasePoolPush();
  sub_1C7414FC4(__dst, a2, v4, v5, v6, v7, &v9);
  objc_autoreleasePoolPop(v3);
  return v9;
}

void static FreeformStoryGenerator.generateLocationTitle(from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  v8 = *(result + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = v8 + 32 + 56 * v7;
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    v13 = *v12;
    v14 = *(v12 + 48);
    v15 = *(v12 + 32);
    v36 = *(v12 + 16);
    v37 = v15;
    v38 = v14;
    v35 = v13;
    if ((BYTE8(v15) & 1) == 0 && !v37)
    {
      sub_1C70260B4(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_6_103();
        sub_1C716DD2C();
        v11 = v39;
      }

      v17 = v11[2];
      if (v17 >= v11[3] >> 1)
      {
        sub_1C716DD2C();
        v11 = v39;
      }

      ++v7;
      v11[2] = v17 + 1;
      v18 = &v11[7 * v17];
      v19 = v35;
      v20 = v36;
      v21 = v37;
      v18[10] = v38;
      *(v18 + 3) = v20;
      *(v18 + 4) = v21;
      *(v18 + 2) = v19;
      goto LABEL_2;
    }

    v12 += 56;
    ++v7;
  }

  v22 = v11[2];
  if (v22)
  {
    *&v35 = v10;
    sub_1C6F7ED9C(0, v22, 0, a4, a5, a6, a7);
    v23 = v35;
    v24 = v11 + 5;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      *&v35 = v23;
      v27 = *(v23 + 16);
      v28 = *(v23 + 24);
      sub_1C75504FC();
      if (v27 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v27 + 1, 1, v29, v30, v31, v32);
        v23 = v35;
      }

      *(v23 + 16) = v27 + 1;
      v33 = v23 + 16 * v27;
      *(v33 + 32) = v26;
      *(v33 + 40) = v25;
      v24 += 7;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  if (*(v23 + 16) != 1 || (sub_1C75504FC(), , OUTLINED_FUNCTION_0_11(), sub_1C75507FC() < 1) || (OUTLINED_FUNCTION_0_11(), sub_1C75507FC() > 22))
  {
  }

  OUTLINED_FUNCTION_0_11();
}

void static FreeformStoryGenerator.generateTimeTitle(from:)(uint64_t a1)
{
  v2 = type metadata accessor for TimeExtendedToken(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_78();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v45 - v15;
  v17 = 0;
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  while (v19 != v17)
  {
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      return;
    }

    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = *(v3 + 72);
    sub_1C721AB4C(v18 + v21 + v22 * v17, v16);
    if ((v16[56] & 1) != 0 || *(v16 + 6))
    {
      sub_1C7415AE8(v16);
      ++v17;
    }

    else
    {
      sub_1C721AC04(v16, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v9;
      v48 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = OUTLINED_FUNCTION_6_103();
        sub_1C716DCA8(v24, v25, v26);
        v20 = v48;
      }

      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v46 = v28 + 1;
        sub_1C716DCA8(v27 > 1, v28 + 1, 1);
        v29 = v46;
        v20 = v48;
      }

      ++v17;
      *(v20 + 16) = v29;
      v30 = v20 + v21 + v28 * v22;
      v9 = v47;
      sub_1C721AC04(v47, v30);
    }
  }

  v31 = *(v20 + 16);
  if (v31)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v32 = v20;
    sub_1C6F7ED9C(0, v31, 0, v11, v12, v13, v14);
    v33 = v48;
    v34 = v32 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v35 = *(v3 + 72);
    do
    {
      sub_1C721AB4C(v34, v6);
      v37 = *v6;
      v36 = v6[1];
      sub_1C75504FC();
      sub_1C7415AE8(v6);
      v48 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C6F7ED9C(v42 > 1, v43 + 1, 1, v38, v39, v40, v41);
        v33 = v48;
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 32) = v37;
      *(v44 + 40) = v36;
      v34 += v35;
      --v31;
    }

    while (v31);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  if (*(v33 + 16) != 1 || (sub_1C75504FC(), , OUTLINED_FUNCTION_0_11(), sub_1C75507FC() < 1) || (OUTLINED_FUNCTION_0_11(), sub_1C75507FC() > 22))
  {
  }

  OUTLINED_FUNCTION_0_11();
}

void sub_1C7414FC4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  v7 = 0;
  v8 = *(*a1 + 16);
  v9 = *a1 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v9 + 72 * v7);
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      *a7 = v7;
      a7[1] = v12;
      return;
    }

    memcpy(__dst, v12, 0x41uLL);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_92;
    }

    if ((__dst[3] & 1) == 0 && !__dst[2])
    {
      sub_1C7025F3C(__dst, v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D97C();
        v11 = v111;
      }

      v14 = v11[2];
      if (v14 >= v11[3] >> 1)
      {
        sub_1C716D97C();
        v11 = v111;
      }

      v11[2] = v14 + 1;
      memcpy(&v11[9 * v14 + 4], __dst, 0x41uLL);
      ++v7;
      goto LABEL_2;
    }

    ++v7;
    v12 += 72;
  }

  v15 = v11[2];
  if (v15)
  {
    __dst[0] = v10;
    sub_1C6F7ED9C(0, v15, 0, a3, a4, a5, a6);
    v16 = __dst[0];
    v17 = v11 + 9;
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      __dst[0] = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      sub_1C75504FC();
      if (v21 >= v20 >> 1)
      {
        sub_1C6F7ED9C(v20 > 1, v21 + 1, 1, v22, v23, v24, v25);
        v16 = __dst[0];
      }

      *(v16 + 16) = v21 + 1;
      v26 = v16 + 16 * v21;
      *(v26 + 32) = v19;
      *(v26 + 40) = v18;
      v17 += 9;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v31 = a1[1];
  v32 = *(v31 + 16);
  v33 = v31 + 32;
  v34 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v12 = (v33 + 72 * v7);
  while (v32 != v7)
  {
    if (v7 >= v32)
    {
      goto LABEL_93;
    }

    memcpy(__dst, v12, 0x42uLL);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_94;
    }

    if ((__dst[3] & 1) == 0 && !__dst[2])
    {
      sub_1C7025FF8(__dst, v109);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v35;
      if ((v36 & 1) == 0)
      {
        sub_1C716D940();
        v35 = v111;
      }

      v37 = v35[2];
      if (v37 >= v35[3] >> 1)
      {
        sub_1C716D940();
        v35 = v111;
      }

      v35[2] = v37 + 1;
      memcpy(&v35[9 * v37 + 4], __dst, 0x42uLL);
      ++v7;
      goto LABEL_22;
    }

    ++v7;
    v12 += 72;
  }

  v38 = v35[2];
  if (v38)
  {
    __dst[0] = v34;
    sub_1C6F7ED9C(0, v38, 0, v27, v28, v29, v30);
    v39 = __dst[0];
    v40 = v35 + 9;
    do
    {
      v42 = *(v40 - 1);
      v41 = *v40;
      __dst[0] = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      sub_1C75504FC();
      if (v44 >= v43 >> 1)
      {
        sub_1C6F7ED9C(v43 > 1, v44 + 1, 1, v45, v46, v47, v48);
        v39 = __dst[0];
      }

      *(v39 + 16) = v44 + 1;
      v49 = v39 + 16 * v44;
      *(v49 + 32) = v42;
      *(v49 + 40) = v41;
      v40 += 9;
      --v38;
    }

    while (v38);
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
  }

  __dst[0] = v16;
  sub_1C6FD2568(v39);
  sub_1C706D154();
  v51 = v50;
  if (!*(v50 + 16))
  {

    *a7 = 0;
    a7[1] = 0;
    return;
  }

  sub_1C71FE810();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (!sub_1C736F4A8(v51, ObjCClassFromMetadata))
  {
    if (qword_1EDD09CF0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_70;
  }

  v53 = [a2 librarySpecificFetchOptions];
  __dst[0] = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  sub_1C755196C();
  sub_1C755197C();
  sub_1C755193C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  sub_1C755196C();
  sub_1C755197C();
  sub_1C755193C();
  sub_1C7082AAC(__dst[0], v53);
  v54 = objc_opt_self();
  v55 = sub_1C75504FC();
  sub_1C71CD85C(v55);
  v56 = sub_1C7550B3C();

  v104 = v53;
  v57 = [v54 fetchPersonsWithLocalIdentifiers:v56 options:v53];

  v58 = [v57 fetchedObjects];
  if (!v58)
  {
    if (qword_1EDD09CF0 != -1)
    {
      swift_once();
    }

    v91 = sub_1C754FF1C();
    __swift_project_value_buffer(v91, qword_1EDD28B68);
    sub_1C75504FC();
    v92 = sub_1C754FEEC();
    v93 = sub_1C755119C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      __dst[0] = v95;
      *v94 = 136315138;
      v96 = sub_1C7550F9C();
      v98 = v97;

      v99 = sub_1C6F765A4(v96, v98, __dst);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_1C6F5C000, v92, v93, "No queryPersons fetched for person localIdentifiers %s.", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x1CCA5F8E0](v95, -1, -1);
      MEMORY[0x1CCA5F8E0](v94, -1, -1);
    }

    else
    {
    }

    goto LABEL_84;
  }

  v59 = sub_1C7550B5C();

  v60 = sub_1C6FB6304();
  v61 = 0;
  v107 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v60 == v61)
    {

      v75 = v107[2];
      if (v75 == 1)
      {
        v101 = v107[4];
        v100 = v107[5];
        sub_1C75504FC();

        v102 = a7;
        if (sub_1C75507FC() < 1)
        {
        }

        else
        {
          v103 = sub_1C75507FC();

          if (v103 <= 22)
          {
            *a7 = v101;
            a7[1] = v100;
            return;
          }
        }

LABEL_88:
        *v102 = 0;
        v102[1] = 0;
        return;
      }

      if (v75 == 2)
      {
        v76 = v107[4];
        v77 = v107[5];
        v78 = sub_1C74ED4C4(v107);
        v80 = v79;
        sub_1C75504FC();

        if (v80)
        {
          if (sub_1C75507FC() > 0 && sub_1C75507FC() >= 1)
          {
            __dst[0] = v76;
            __dst[1] = v77;
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](2106912, 0xE300000000000000);

            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](v78, v80);

            v7 = __dst[0];
            v12 = __dst[1];
            v81 = sub_1C75507FC();

            if (v81 <= 22)
            {
              goto LABEL_95;
            }

            goto LABEL_87;
          }
        }
      }

LABEL_87:
      v102 = a7;
      goto LABEL_88;
    }

    if ((v59 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x1CCA5DDD0](v61, v59);
    }

    else
    {
      if (v61 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v62 = *(v59 + 8 * v61 + 32);
    }

    v63 = v62;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    v64 = sub_1C7416D60(v62);
    if (v65)
    {
      v67 = v64;
      v68 = v65;
      goto LABEL_55;
    }

    v66 = [v63 name];
    if (v66)
    {
      v69 = v66;
      v67 = sub_1C755068C();
      v68 = v70;

LABEL_55:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v107 = v73;
      }

      v71 = v107[2];
      if (v71 >= v107[3] >> 1)
      {
        sub_1C6FB1814();
        v107 = v74;
      }

      v107[2] = v71 + 1;
      v72 = &v107[2 * v71];
      v72[4] = v67;
      v72[5] = v68;
      ++v61;
    }

    else
    {

      ++v61;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  swift_once();
LABEL_70:
  v82 = sub_1C754FF1C();
  __swift_project_value_buffer(v82, qword_1EDD28B68);
  sub_1C75504FC();
  v83 = sub_1C754FEEC();
  v84 = sub_1C755119C();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    __dst[0] = v86;
    *v85 = 136315138;
    v87 = sub_1C7550F9C();
    v89 = v88;

    v90 = sub_1C6F765A4(v87, v89, __dst);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_1C6F5C000, v83, v84, "No localIdentifiers for queryPersons with UUIDs %s.", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1CCA5F8E0](v86, -1, -1);
    MEMORY[0x1CCA5F8E0](v85, -1, -1);
  }

  else
  {
  }

LABEL_84:
  *a7 = 0;
  a7[1] = 0;
}

uint64_t sub_1C7415AE8(uint64_t a1)
{
  v2 = type metadata accessor for TimeExtendedToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C7415B44(uint64_t *a1)
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
        sub_1C754DF6C();
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C754DF6C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C7415EF0(v8, v9, a1, v4);
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
    sub_1C7415C74(0, v2, 1, a1);
  }
}

void sub_1C7415C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v30 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v35 = v19;
      v36 = a3;
      v33 = v21;
      v34 = v20;
      do
      {
        v22 = v43;
        v23 = v41;
        (v41)(v43, v21, v8, v14);
        v24 = v44;
        v23(v44, v19, v8);
        v25 = sub_1C754DEDC();
        v26 = *v18;
        (*v18)(v24, v8);
        v26(v22, v8);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          __break(1u);
          return;
        }

        v27 = *v38;
        v28 = v40;
        (*v38)(v40, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v27(v19, v28, v8);
        v19 += v37;
        v21 += v37;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v36 + 1;
      v19 = &v35[v31];
      v20 = v34 - 1;
      v21 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7415EF0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v127 = a1;
  v146 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v146);
  v130 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v123 - v13;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v144 = &v123 - v17;
  v135 = v15;
  v136 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v137 = v20;
      v116 = v20 + 16;
      v117 = *(v20 + 2);
      while (v117 >= 2)
      {
        if (!*v136)
        {
          goto LABEL_140;
        }

        v118 = v6;
        v119 = &v137[16 * v117];
        v6 = *v119;
        v120 = &v116[2 * v117];
        v121 = *(v120 + 1);
        sub_1C7416858(*v136 + *(v135 + 72) * *v119, *v136 + *(v135 + 72) * *v120, *v136 + *(v135 + 72) * v121, v5);
        if (v118)
        {
          break;
        }

        if (v121 < v6)
        {
          goto LABEL_128;
        }

        if (v117 - 2 >= *v116)
        {
          goto LABEL_129;
        }

        *v119 = v6;
        *(v119 + 1) = v121;
        v122 = *v116 - v117;
        if (*v116 < v117)
        {
          goto LABEL_130;
        }

        v117 = *v116 - 1;
        sub_1C7423CF4(v120 + 16, v122, v120);
        *v116 = v117;
        v6 = 0;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v20 = sub_1C7420830();
    goto LABEL_104;
  }

  v124 = a4;
  v19 = 0;
  v142 = (v15 + 8);
  v143 = v15 + 16;
  v141 = (v15 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19++;
    if (v19 >= v18)
    {
      goto LABEL_32;
    }

    v126 = v6;
    v137 = v20;
    v138 = v18;
    v22 = *v136;
    v23 = *(v15 + 72);
    v5 = v21;
    v24 = *v136 + v23 * v19;
    v25 = *(v15 + 16);
    v26 = v144;
    v134 = v19;
    v27 = v146;
    v25(v144, v24, v146, v16);
    v28 = v145;
    v132 = v25;
    (v25)(v145, v22 + v23 * v5, v27);
    LODWORD(v133) = sub_1C754DEDC();
    v29 = *(v135 + 8);
    v29(v28, v27);
    v30 = v27;
    v19 = v134;
    v131 = v29;
    v29(v26, v30);
    v31 = v138;
    v125 = v5;
    v32 = v5 + 2;
    v140 = v23;
    v33 = v22 + v23 * (v5 + 2);
    while (1)
    {
      v34 = v32;
      v35 = v19 + 1;
      if (v35 >= v31)
      {
        break;
      }

      v36 = v35;
      v37 = v144;
      v38 = v146;
      v39 = v132;
      (v132)(v144, v33, v146);
      v40 = v145;
      v39(v145, v24, v38);
      v41 = sub_1C754DEDC() & 1;
      v42 = v40;
      v5 = v142;
      v43 = v131;
      (v131)(v42, v38);
      v44 = v37;
      v19 = v36;
      v43(v44, v38);
      v33 += v140;
      v24 += v140;
      v32 = v34 + 1;
      v31 = v138;
      if ((v133 & 1) != v41)
      {
        goto LABEL_9;
      }
    }

    v19 = v31;
LABEL_9:
    v6 = v126;
    if (v133)
    {
      v21 = v125;
      if (v19 < v125)
      {
        goto LABEL_134;
      }

      if (v125 >= v19)
      {
        v15 = v135;
        v20 = v137;
LABEL_32:
        v53 = v146;
        goto LABEL_33;
      }

      v5 = v19;
      v45 = v31 >= v34 ? v34 : v31;
      v46 = v140 * (v45 - 1);
      v47 = v140 * v45;
      v48 = v125 * v140;
      v134 = v19;
      do
      {
        if (v21 != --v5)
        {
          v49 = *v136;
          if (!*v136)
          {
            goto LABEL_141;
          }

          v50 = v146;
          v51 = *v141;
          (*v141)(v130, v49 + v48, v146);
          v52 = v48 < v46 || v49 + v48 >= v49 + v47;
          if (v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v48 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51((v49 + v46), v130, v50);
        }

        ++v21;
        v46 -= v140;
        v47 -= v140;
        v48 += v140;
      }

      while (v21 < v5);
      v6 = v126;
      v19 = v134;
      v15 = v135;
    }

    else
    {
      v15 = v135;
    }

    v20 = v137;
    v53 = v146;
    v21 = v125;
LABEL_33:
    v54 = v136[1];
    if (v19 < v54)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_133;
      }

      if (v19 - v21 < v124)
      {
        break;
      }
    }

LABEL_49:
    if (v19 < v21)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v20 + 2) + 1, 1, v20);
      v20 = v114;
    }

    v72 = *(v20 + 2);
    v71 = *(v20 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      sub_1C6FB17EC(v71 > 1, v72 + 1, 1, v20);
      v20 = v115;
    }

    *(v20 + 2) = v73;
    v74 = v20 + 32;
    v75 = &v20[16 * v72 + 32];
    *v75 = v21;
    *(v75 + 1) = v19;
    v140 = *v127;
    if (!v140)
    {
      goto LABEL_142;
    }

    if (v72)
    {
      v137 = v20;
      while (1)
      {
        v76 = v73 - 1;
        v77 = &v74[16 * v73 - 16];
        v78 = &v20[16 * v73];
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v79 = *(v20 + 4);
          v80 = *(v20 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_70:
          if (v82)
          {
            goto LABEL_119;
          }

          v94 = *v78;
          v93 = *(v78 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_122;
          }

          v98 = *(v77 + 1);
          v99 = v98 - *v77;
          if (__OFSUB__(v98, *v77))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v96, v99))
          {
            goto LABEL_127;
          }

          if (v96 + v99 >= v81)
          {
            if (v81 < v99)
            {
              v76 = v73 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v73 < 2)
        {
          goto LABEL_121;
        }

        v101 = *v78;
        v100 = *(v78 + 1);
        v89 = __OFSUB__(v100, v101);
        v96 = v100 - v101;
        v97 = v89;
LABEL_85:
        if (v97)
        {
          goto LABEL_124;
        }

        v103 = *v77;
        v102 = *(v77 + 1);
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_126;
        }

        if (v104 < v96)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v76 - 1 >= v73)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v136)
        {
          goto LABEL_139;
        }

        v108 = &v74[16 * v76 - 16];
        v109 = *v108;
        v110 = &v74[16 * v76];
        v111 = *(v110 + 1);
        sub_1C7416858(*v136 + *(v135 + 72) * *v108, *v136 + *(v135 + 72) * *v110, *v136 + *(v135 + 72) * v111, v140);
        if (v6)
        {
          goto LABEL_112;
        }

        if (v111 < v109)
        {
          goto LABEL_114;
        }

        v5 = 0;
        v6 = v74;
        v112 = *(v137 + 2);
        if (v76 > v112)
        {
          goto LABEL_115;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        if (v76 >= v112)
        {
          goto LABEL_116;
        }

        v73 = v112 - 1;
        sub_1C7423CF4(v110 + 16, v112 - 1 - v76, v110);
        v20 = v137;
        *(v137 + 2) = v112 - 1;
        v113 = v112 > 2;
        v74 = v6;
        v6 = 0;
        if (!v113)
        {
          goto LABEL_99;
        }
      }

      v83 = &v74[16 * v73];
      v84 = *(v83 - 8);
      v85 = *(v83 - 7);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_117;
      }

      v88 = *(v83 - 6);
      v87 = *(v83 - 5);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_118;
      }

      v90 = *(v78 + 1);
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_120;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_123;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = *(v77 + 1);
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_131;
        }

        if (v81 < v107)
        {
          v76 = v73 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v15 = v135;
    v18 = v136[1];
    if (v19 >= v18)
    {
      goto LABEL_102;
    }
  }

  v55 = v21 + v124;
  if (__OFADD__(v21, v124))
  {
    goto LABEL_135;
  }

  if (v55 >= v54)
  {
    v55 = v136[1];
  }

  if (v55 < v21)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v19 == v55)
  {
    goto LABEL_49;
  }

  v125 = v21;
  v126 = v6;
  v56 = *v136;
  v57 = *(v15 + 72);
  v140 = *(v15 + 16);
  v58 = v56 + v57 * (v19 - 1);
  v59 = -v57;
  v60 = (v21 - v19);
  v137 = v20;
  v138 = v56;
  v128 = v57;
  v129 = v55;
  v61 = (v56 + v19 * v57);
LABEL_42:
  v133 = v58;
  v134 = v19;
  v131 = v61;
  v132 = v60;
  v62 = v58;
  while (1)
  {
    v63 = v144;
    v64 = v140;
    (v140)(v144, v61, v53);
    v65 = v145;
    v64(v145, v62, v146);
    v66 = sub_1C754DEDC();
    v5 = v142;
    v67 = *v142;
    v68 = v65;
    v53 = v146;
    (*v142)(v68, v146);
    v67(v63, v53);
    if ((v66 & 1) == 0)
    {
LABEL_47:
      v19 = v134 + 1;
      v58 = v133 + v128;
      v60 = v132 - 1;
      v61 = &v131[v128];
      if (v134 + 1 == v129)
      {
        v19 = v129;
        v21 = v125;
        v6 = v126;
        v20 = v137;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v138)
    {
      break;
    }

    v69 = *v141;
    v70 = v139;
    (*v141)(v139, v61, v53);
    swift_arrayInitWithTakeFrontToBack();
    v69(v62, v70, v53);
    v62 += v59;
    v61 += v59;
    v52 = __CFADD__(v60++, 1);
    if (v52)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1C7416858(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = a4;
  v60 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v49 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v12;
  v64 = a1;
  v63 = v61;
  v55 = (v9 + 8);
  v56 = (v9 + 16);
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v31 = v61;
    sub_1C741E628(a2, v14 / v12, v61);
    v32 = v31 + v17 * v12;
    v33 = -v12;
    v34 = v32;
    v51 = -v12;
    v52 = a1;
LABEL_36:
    v35 = v34;
    v53 = a2;
    v54 = a2 + v33;
    v36 = a3;
    v49 = v34;
    while (1)
    {
      if (v32 <= v61)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      v59 = v36 + v33;
      v37 = v32 + v33;
      v38 = v57;
      v39 = *v56;
      v40 = v32;
      v41 = v60;
      (*v56)(v57, v37, v60);
      v42 = v58;
      v39(v58, v54, v41);
      LOBYTE(v39) = sub_1C754DEDC();
      v43 = *v55;
      (*v55)(v42, v41);
      v43(v38, v41);
      if (v39)
      {
        v32 = v40;
        a3 = v59;
        if (v36 < v53 || v59 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v50;
          v33 = v51;
          a1 = v52;
        }

        else
        {
          v47 = v50;
          v33 = v51;
          v34 = v50;
          v13 = v36 == v53;
          v48 = v54;
          a2 = v54;
          a1 = v52;
          if (!v13)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v48;
            v34 = v47;
          }
        }

        goto LABEL_36;
      }

      v44 = v59;
      if (v36 < v40 || v59 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v44;
        v32 = v37;
        v35 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
      }

      else
      {
        v35 = v37;
        v13 = v40 == v36;
        v36 = v59;
        v32 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v44;
          v32 = v37;
          v35 = v37;
        }
      }
    }

    v64 = a2;
    v62 = v49;
  }

  else
  {
    v18 = v61;
    sub_1C741E628(a1, (a2 - a1) / v12, v61);
    v54 = v18 + v16 * v12;
    v62 = v54;
    v59 = a3;
    while (v61 < v54 && a2 < a3)
    {
      v20 = a1;
      v21 = v57;
      v22 = *v56;
      v23 = v60;
      (*v56)(v57, a2, v60);
      v24 = v58;
      v22(v58, v61, v23);
      LOBYTE(v22) = sub_1C754DEDC();
      v25 = a2;
      v26 = *v55;
      (*v55)(v24, v23);
      v26(v21, v23);
      if (v22)
      {
        a2 = v25 + v12;
        v27 = v20;
        if (v20 < v25 || v20 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v20 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v29 = v61 + v12;
        v27 = v20;
        if (v20 < v61 || v20 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
          a3 = v59;
        }

        else
        {
          a2 = v25;
          a3 = v59;
          if (v20 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v29;
        v61 = v29;
      }

      a1 = v27 + v12;
      v64 = a1;
    }
  }

LABEL_58:
  sub_1C74208E4(&v64, &v63, &v62);
}

uint64_t sub_1C7416D60(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t GroundedGenericLocation.init(text:type:synonyms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for GroundedGenericLocation(0);
  v9 = *(v8 + 20);
  sub_1C754F4DC();
  OUTLINED_FUNCTION_12();
  result = (*(v10 + 32))(&a5[v9], a3);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t type metadata accessor for GroundedGenericLocation(uint64_t a1)
{
  result = qword_1EDD0DF18;
  if (!qword_1EDD0DF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static GroundedGenericLocation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for GroundedGenericLocation(0);
  if ((sub_1C6FA1070(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1C70020D4(v7, v8);
}

uint64_t GroundedGenericLocation.text.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t GroundedGenericLocation.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroundedGenericLocation(0) + 20);
  sub_1C754F4DC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GroundedGenericLocation.synonyms.getter()
{
  type metadata accessor for GroundedGenericLocation(0);

  return sub_1C75504FC();
}

uint64_t GroundedGenericLocation.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75AFEC0);
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
  v1 = type metadata accessor for GroundedGenericLocation(0);
  v2 = sub_1C754F4CC();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0x796E6F6E7973202CLL, 0xEC000000203A736DLL);
  v3 = MEMORY[0x1CCA5D090](*(v0 + *(v1 + 24)), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C7417240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C7417358(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x736D796E6F6E7973;
}

uint64_t sub_1C74173A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7417240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74173D0(uint64_t a1)
{
  v2 = sub_1C7417C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C741740C(uint64_t a1)
{
  v2 = sub_1C7417C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundedGenericLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BC48, &unk_1C758A5A0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7417C50();
  sub_1C755200C();
  v25[1] = 0;
  sub_1C7551CCC();
  if (!v2)
  {
    v11 = type metadata accessor for GroundedGenericLocation(0);
    v12 = *(v11 + 20);
    v25[0] = 1;
    sub_1C754F4DC();
    OUTLINED_FUNCTION_0_176();
    v15 = sub_1C7417F8C(v13, v14, MEMORY[0x1E69C18B0]);
    OUTLINED_FUNCTION_4_102(v3 + v12, v25, v16, v17, v15);
    v24 = *(v3 + *(v11 + 24));
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v18 = sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_4_102(&v24, &v23, v19, v20, v18);
  }

  return (*(v7 + 8))(v10, v5);
}

void GroundedGenericLocation.hash(into:)(uint64_t a1)
{
  sub_1C75505AC();
  type metadata accessor for GroundedGenericLocation(0);
  sub_1C754F4DC();
  OUTLINED_FUNCTION_0_176();
  sub_1C7417F8C(v1, v2, MEMORY[0x1E69C18B8]);
  sub_1C755059C();

  sub_1C70418D0();
}

uint64_t GroundedGenericLocation.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  type metadata accessor for GroundedGenericLocation(0);
  sub_1C754F4DC();
  OUTLINED_FUNCTION_0_176();
  sub_1C7417F8C(v0, v1, MEMORY[0x1E69C18B8]);
  sub_1C755059C();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

uint64_t GroundedGenericLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_1C754F4DC();
  OUTLINED_FUNCTION_3_0();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BC60, &unk_1C758A5B0);
  OUTLINED_FUNCTION_3_0();
  v29 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for GroundedGenericLocation(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7417C50();
  v13 = v33;
  sub_1C7551FFC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v14 = v6;
  v27 = v9;
  v15 = v30;
  v16 = v32;
  v37 = 0;
  v17 = sub_1C7551BBC();
  v19 = v18;
  *v12 = v17;
  v12[1] = v18;
  v36 = 1;
  OUTLINED_FUNCTION_0_176();
  sub_1C7417F8C(v20, v21, MEMORY[0x1E69C18C8]);
  sub_1C7551C1C();
  v26[1] = v19;
  (*(v16 + 32))(v12 + *(v27 + 20), v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v35 = 2;
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C7551C1C();
  v22 = OUTLINED_FUNCTION_1_131();
  v23(v22);
  v24 = v28;
  *(v12 + *(v27 + 24)) = v34;
  sub_1C72BD52C(v12, v24);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1C71AFE7C(v12);
}

uint64_t sub_1C7417B98(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C754F4DC();
  sub_1C7417F8C(&qword_1EC216340, MEMORY[0x1E69C18A8], MEMORY[0x1E69C18B8]);
  sub_1C755059C();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

unint64_t sub_1C7417C50()
{
  result = qword_1EC21BC50;
  if (!qword_1EC21BC50)
  {
    result = swift_getWitnessTable(byte_1C758A7FC, &type metadata for GroundedGenericLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BC50);
  }

  return result;
}

void sub_1C7417D14(uint64_t a1)
{
  sub_1C754F4DC();
  if (v1 <= 0x3F)
  {
    sub_1C704303C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GroundedGenericLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7417E88()
{
  result = qword_1EC21BC78;
  if (!qword_1EC21BC78)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for GroundedGenericLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BC78);
  }

  return result;
}

unint64_t sub_1C7417EE0()
{
  result = qword_1EC21BC80;
  if (!qword_1EC21BC80)
  {
    result = swift_getWitnessTable(byte_1C758A744, &type metadata for GroundedGenericLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BC80);
  }

  return result;
}

unint64_t sub_1C7417F38()
{
  result = qword_1EC21BC88;
  if (!qword_1EC21BC88)
  {
    result = swift_getWitnessTable(byte_1C758A76C, &type metadata for GroundedGenericLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BC88);
  }

  return result;
}

uint64_t sub_1C7417F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C7417FD4(uint64_t a1)
{
  v3 = type metadata accessor for Hastings.Feature(0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v35[1] = v1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, v4, v5, v6, v7);
    v10 = v44;
    v13 = sub_1C719D92C();
    v14 = 0;
    v43 = a1 + 56;
    v36 = a1 + 64;
    v37 = v9;
    v38 = a1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(a1 + 32))
      {
        v15 = v13 >> 6;
        if ((*(v43 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v11)
        {
          goto LABEL_25;
        }

        v42 = v12;
        v41 = v11;
        v16 = v39;
        sub_1C74228D0();
        v18 = *v16;
        v17 = v16[1];
        sub_1C75504FC();
        sub_1C7422928(v16, type metadata accessor for Hastings.Feature);
        v44 = v10;
        v24 = *(v10 + 16);
        v23 = *(v10 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1C6F7ED9C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
          v10 = v44;
        }

        *(v10 + 16) = v24 + 1;
        v25 = v10 + 16 * v24;
        *(v25 + 32) = v18;
        *(v25 + 40) = v17;
        if (v42)
        {
          goto LABEL_29;
        }

        a1 = v38;
        v26 = 1 << *(v38 + 32);
        if (v13 >= v26)
        {
          goto LABEL_26;
        }

        v27 = *(v43 + 8 * v15);
        if ((v27 & (1 << v13)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v41)
        {
          goto LABEL_28;
        }

        v28 = v27 & (-2 << (v13 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v29 = v37;
        }

        else
        {
          v30 = v15 << 6;
          v31 = v15 + 1;
          v29 = v37;
          v32 = (v36 + 8 * v15);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_1C6F9ED50(v13, v41, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v13, v41, 0);
        }

LABEL_19:
        if (++v14 == v29)
        {
          return;
        }

        v12 = 0;
        v11 = *(a1 + 36);
        v13 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

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
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C74182C8(uint64_t a1)
{
  v62 = sub_1C754F58C();
  v2 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v56 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - v7;
  v8 = type metadata accessor for Hastings.Feature(0);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v60 = v2 + 16;
  v61 = v2;
  v66 = a1;
  sub_1C75504FC();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v63 = a1 + 64;
  if (v14)
  {
    while (1)
    {
      v18 = v16;
LABEL_8:
      sub_1C74228D0();
      v19 = *(v65 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v17;
      sub_1C6FC286C();
      if (__OFADD__(v17[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD88, &qword_1C758AB30);
      v24 = sub_1C7551A2C();
      v17 = v68;
      if (v24)
      {
        sub_1C6FC286C();
        if ((v23 & 1) != (v26 & 1))
        {
          goto LABEL_32;
        }

        v22 = v25;
      }

      if ((v23 & 1) == 0)
      {
        v17[(v22 >> 6) + 8] |= 1 << v22;
        (*(v61 + 16))(v17[6] + *(v61 + 72) * v22, &v10[v19], v62);
        *(v17[7] + 8 * v22) = 0;
        v27 = v17[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v17[2] = v29;
      }

      v30 = v17[7];
      v31 = *(v30 + 8 * v22);
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v14 &= v14 - 1;
      *(v30 + 8 * v22) = v32;
      sub_1C7422928(v10, type metadata accessor for Hastings.Feature);
      v16 = v18;
      v11 = v63;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v68 = 91;
    v69 = 0xE100000000000000;
    v34 = v61;
    v33 = v62;
    v35 = *(v61 + 104);
    v36 = v57;
    v35(v57, *MEMORY[0x1E69C1920], v62);
    v37 = sub_1C6FE0F40(v36, v17);
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v36, v33);
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = v37;
    }

    v67 = v41;
    v42 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v42);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v43 = v58;
    v35(v58, *MEMORY[0x1E69C1918], v33);
    v44 = sub_1C6FE0F40(v43, v17);
    v46 = v45;
    v40(v43, v33);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    v67 = v47;
    v48 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v48);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v49 = v59;
    v35(v59, *MEMORY[0x1E69C1910], v33);
    v50 = sub_1C6FE0F40(v49, v17);
    v52 = v51;

    v40(v49, v33);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    v67 = v53;
    v54 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v54);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    return v68;
  }

  return result;
}

uint64_t sub_1C7418830(uint64_t a1)
{
  v62 = sub_1C754F58C();
  v2 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v56 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - v7;
  v8 = type metadata accessor for Hastings.Feature(0);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v60 = v2 + 16;
  v61 = v2;
  v66 = a1;
  sub_1C75504FC();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v63 = a1 + 56;
  if (v14)
  {
    while (1)
    {
      v18 = v16;
LABEL_8:
      sub_1C74228D0();
      v19 = *(v65 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v17;
      sub_1C6FC286C();
      if (__OFADD__(v17[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD88, &qword_1C758AB30);
      v24 = sub_1C7551A2C();
      v17 = v68;
      if (v24)
      {
        sub_1C6FC286C();
        if ((v23 & 1) != (v26 & 1))
        {
          goto LABEL_32;
        }

        v22 = v25;
      }

      if ((v23 & 1) == 0)
      {
        v17[(v22 >> 6) + 8] |= 1 << v22;
        (*(v61 + 16))(v17[6] + *(v61 + 72) * v22, &v10[v19], v62);
        *(v17[7] + 8 * v22) = 0;
        v27 = v17[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v17[2] = v29;
      }

      v30 = v17[7];
      v31 = *(v30 + 8 * v22);
      v28 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v14 &= v14 - 1;
      *(v30 + 8 * v22) = v32;
      sub_1C7422928(v10, type metadata accessor for Hastings.Feature);
      v16 = v18;
      v11 = v63;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v68 = 91;
    v69 = 0xE100000000000000;
    v34 = v61;
    v33 = v62;
    v35 = *(v61 + 104);
    v36 = v57;
    v35(v57, *MEMORY[0x1E69C1920], v62);
    v37 = sub_1C6FE0F40(v36, v17);
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v36, v33);
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = v37;
    }

    v67 = v41;
    v42 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v42);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v43 = v58;
    v35(v58, *MEMORY[0x1E69C1918], v33);
    v44 = sub_1C6FE0F40(v43, v17);
    v46 = v45;
    v40(v43, v33);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    v67 = v47;
    v48 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v48);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v49 = v59;
    v35(v59, *MEMORY[0x1E69C1910], v33);
    v50 = sub_1C6FE0F40(v49, v17);
    v52 = v51;

    v40(v49, v33);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    v67 = v53;
    v54 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v54);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    return v68;
  }

  return result;
}

void sub_1C7418D98(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422EDC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C741E950(v6);
  *a1 = v3;
}

void Hastings.ClusterAssetElector.ElectedAssetIterator.next()()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v141 = v3;
  v4 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v137 - v9;
  v146 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  OUTLINED_FUNCTION_3_0();
  v140 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v137 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A28, &qword_1C7565B10);
  v18 = OUTLINED_FUNCTION_76(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  v154 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_84_14();
  v22 = type metadata accessor for Hastings.Asset(v21);
  OUTLINED_FUNCTION_3_0();
  v158 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v137 - v27);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_130();
  v155 = v30;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C741DB6C();
  OUTLINED_FUNCTION_80_4(v1, 1, v22);
  if (!v49)
  {
    sub_1C7422980();
    sub_1C7422980();
    OUTLINED_FUNCTION_25_8();
    v127 = v22;
    goto LABEL_44;
  }

  v153 = v22;
  sub_1C6FD7FC8(v1, &qword_1EC216A28, &qword_1C7565B10);
  v152 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v157 = v152[17];
  v33 = *(v0 + v157);
  v34 = *(v33 + 16);
  if (!v34)
  {
LABEL_43:
    OUTLINED_FUNCTION_84();
    v127 = v153;
LABEL_44:
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
LABEL_45:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v156 = v152[18];
  v143 = (v6 + 16);
  v142 = v6 + 8;
  *&v32 = 136315394;
  v137 = v32;
  v138 = v10;
  v149 = v0;
  v144 = v4;
  v150 = v16;
  while (1)
  {
    v35 = *(v2 + v156);
    if ((v35 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v35 >= v34)
    {
      goto LABEL_50;
    }

    v36 = OUTLINED_FUNCTION_78_16();
    sub_1C6FB5E28(v36, v37);
    __swift_mutable_project_boxed_opaque_existential_0(v161, v161[3]);
    v38 = v154;
    sub_1C755150C();
    OUTLINED_FUNCTION_80_4(v38, 1, v153);
    if (!v49)
    {
      OUTLINED_FUNCTION_6_104();
      sub_1C7422980();
      v151 = v152[13];
      v42 = *(v2 + v151);
      if (*(v42 + 16))
      {
        sub_1C7551F3C();
        v43 = *v155;
        v44 = v155[1];
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_9_2();
        v47 = ~v46;
        while (1)
        {
          v48 = v45 & v47;
          if (((*(v42 + 56 + (((v45 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v47)) & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_2_122();
          sub_1C74228D0();
          v49 = *v28 == v43 && v28[1] == v44;
          if (v49)
          {
            OUTLINED_FUNCTION_3_112();
            sub_1C7422928(v28, v116);
LABEL_37:
            OUTLINED_FUNCTION_3_112();
            sub_1C7422928(v155, v117);
            v2 = v149;
            goto LABEL_42;
          }

          v50 = sub_1C7551DBC();
          OUTLINED_FUNCTION_3_112();
          sub_1C7422928(v28, v51);
          v45 = v48 + 1;
          if (v50)
          {
            goto LABEL_37;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E3D64();
        v33 = v123;
      }

      v2 = v149;
      v52 = v148;
      v53 = v147;
      v54 = v150;
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_52;
      }

      v55 = OUTLINED_FUNCTION_78_16();
      __swift_assign_boxed_opaque_existential_1(v55, v56);
      *(v2 + v157) = v33;
      v57 = *(v33 + 16);
      if (!v57)
      {
        goto LABEL_53;
      }

      v58 = (v35 + 1) % v57;
      v59 = v155;
      *(v2 + v156) = v58;
      sub_1C74228D0();
      v60 = v145;
      sub_1C70F0914();
      sub_1C7422928(v60, type metadata accessor for Hastings.Asset);
      v61 = v152;
      v62 = sub_1C6FE0FD0(v59, *(v2 + v152[7]));
      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = MEMORY[0x1E69E7CD0];
      }

      sub_1C74228D0();
      v64 = v146;
      *(v54 + *(v146 + 20)) = v63;
      *(v54 + *(v64 + 24)) = 0;
      sub_1C75504FC();
      Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)();
      if (v159 == 1)
      {
        v87 = v61[19];
        sub_1C6FB0664();
        v88 = *(*(v2 + v87) + 16);
        sub_1C6FB0F4C(v88, v89, v90, v91, v92, v93);
        v94 = *(v2 + v87);
        *(v94 + 16) = v88 + 1;
        sub_1C74228D0();
        *(v2 + v87) = v94;
        (*v143)(v138, v2, v144);
        v95 = v139;
        sub_1C74228D0();
        sub_1C75504FC();
        v96 = sub_1C754FEEC();
        v97 = sub_1C755117C();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = OUTLINED_FUNCTION_23_1();
          v99 = OUTLINED_FUNCTION_49_1();
          v100 = OUTLINED_FUNCTION_41_41(v99);

          *(v98 + 4) = v100;
          *(v98 + 12) = 2080;
          v102 = Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter(v101);
          v104 = v103;
          OUTLINED_FUNCTION_1_132();
          v105 = v95;
          v107 = v106;
          sub_1C7422928(v105, v108);
          v109 = sub_1C6F765A4(v102, v104, v160);

          *(v98 + 14) = v109;
          _os_log_impl(&dword_1C6F5C000, v96, v97, "Cluster %s: %s\n\tadding to waiting room", v98, 0x16u);
          OUTLINED_FUNCTION_65_26();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v110, v111);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v112, v113);

          v114 = OUTLINED_FUNCTION_24_43();
          v115(v114);
          v85 = v150;
          v86 = v107;
          goto LABEL_41;
        }

        v118 = v95;
      }

      else
      {
        if (v159 != 2)
        {
          OUTLINED_FUNCTION_1_132();
          sub_1C7422928(v54, v133);

          OUTLINED_FUNCTION_6_104();
          sub_1C7422980();
          OUTLINED_FUNCTION_25_8();
          __swift_storeEnumTagSinglePayload(v134, v135, v136, v153);
          goto LABEL_48;
        }

        (*v143)(v52, v2, v144);
        OUTLINED_FUNCTION_30_43();
        sub_1C74228D0();
        sub_1C75504FC();
        v65 = sub_1C754FEEC();
        v66 = sub_1C755117C();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = OUTLINED_FUNCTION_23_1();
          v68 = OUTLINED_FUNCTION_49_1();
          v69 = OUTLINED_FUNCTION_41_41(v68);

          *(v67 + 4) = v69;
          *(v67 + 12) = 2080;
          v71 = Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter(v70);
          v73 = v72;
          OUTLINED_FUNCTION_1_132();
          v74 = v53;
          v76 = v75;
          sub_1C7422928(v74, v77);
          v78 = sub_1C6F765A4(v71, v73, v160);

          *(v67 + 14) = v78;
          _os_log_impl(&dword_1C6F5C000, v65, v66, "Cluster %s: %s\n\tdiscarding", v67, 0x16u);
          OUTLINED_FUNCTION_65_26();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v79, v80);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0](v81, v82);

          v83 = OUTLINED_FUNCTION_24_43();
          v84(v83);
          v85 = v150;
          v86 = v76;
LABEL_41:
          sub_1C7422928(v85, v86);
          OUTLINED_FUNCTION_3_112();
          sub_1C7422928(v155, v121);
          goto LABEL_42;
        }

        v118 = v53;
      }

      sub_1C7422928(v118, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset);
      v119 = OUTLINED_FUNCTION_24_43();
      v120(v119);
      v85 = v150;
      v86 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset;
      goto LABEL_41;
    }

    sub_1C6FD7FC8(v38, &qword_1EC216A28, &qword_1C7565B10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C70E3D64();
      v33 = v122;
    }

    v39 = *(v33 + 16);
    if (v35 >= v39)
    {
      goto LABEL_51;
    }

    v40 = v39 - 1;
    v41 = v33 + 40 * v35;
    __swift_destroy_boxed_opaque_existential_1((v41 + 32));
    memmove((v41 + 32), (v41 + 72), 40 * (v40 - v35));
    *(v33 + 16) = v40;
    *(v2 + v157) = v33;
    if (!v40)
    {
      sub_1C741DAC8();
      v128 = v152;
      sub_1C75504FC();
      sub_1C706D1DC();
      v130 = v129;
      v131 = v128[15];

      *(v2 + v131) = v130;
      v132 = v128[16];

      *(v2 + v132) = MEMORY[0x1E69E7CD0];
      sub_1C741DB6C();
LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(v161);
      goto LABEL_45;
    }

    *(v2 + v156) = v35 % v40;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1(v161);
    v33 = *(v2 + v157);
    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_1C741999C()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for Hastings.Feature(0);
  v2 = OUTLINED_FUNCTION_76(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_2();
  v66 = v3;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08, &unk_1C7565AE0);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v60 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v67 = sub_1C739D0F4(*(v0 + *(v60 + 24)));
  v15 = 0;
  sub_1C7418D98(&v67);
  v16 = 0;
  v17 = v67;
  v18 = *(v67 + 16);
  *&v19 = 136315906;
  v56 = v19;
  v57 = v0;
  v63 = v14;
  v64 = v11;
  v61 = v18;
  v62 = v67;
  while (1)
  {
    if (v16 == v18)
    {
      v20 = OUTLINED_FUNCTION_431();
      __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      v65 = v18;
      goto LABEL_7;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *(v17 + 16))
    {
      goto LABEL_14;
    }

    v26 = OUTLINED_FUNCTION_431();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    sub_1C6FD7F70();
    v65 = v16 + 1;
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
LABEL_7:
    sub_1C7091CBC();
    v32 = OUTLINED_FUNCTION_431();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_80_4(v14, 1, v34);
    if (v35)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v36 = *&v14[*(v34 + 48)];
    OUTLINED_FUNCTION_27_49();
    v37 = sub_1C7422980();
    MEMORY[0x1EEE9AC00](v37);
    *(&v56 - 2) = v0;
    sub_1C75504FC();
    sub_1C706CDA4(sub_1C7423B38, (&v56 - 2), v36);
    v39 = *(v38 + 16);

    v40 = (v0 + *(v60 + 40));
    v41 = *v40;
    v42 = v40[1];
    OUTLINED_FUNCTION_4_103();
    sub_1C74228D0();
    sub_1C75504FC();
    sub_1C75504FC();
    v43 = sub_1C754FEEC();
    v44 = v6;
    v45 = sub_1C75511BC();

    if (os_log_type_enabled(v43, v45))
    {
      v46 = swift_slowAlloc();
      v58 = v39;
      v47 = v46;
      v48 = OUTLINED_FUNCTION_49_1();
      v49 = v66;
      v67 = v48;
      *v47 = v56;
      *(v47 + 4) = sub_1C6F765A4(v41, v42, &v67);
      *(v47 + 12) = 2080;
      v50 = Hastings.Feature.description.getter();
      v52 = v51;
      v59 = v15;
      sub_1C7422928(v49, type metadata accessor for Hastings.Feature);
      v53 = sub_1C6F765A4(v50, v52, &v67);

      *(v47 + 14) = v53;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v58;
      *(v47 + 32) = 2048;
      v54 = *(v36 + 16);

      *(v47 + 34) = v54;

      _os_log_impl(&dword_1C6F5C000, v43, v45, "Cluster %s: Feature '%s' represented by %ld assets out of %ld available", v47, 0x2Au);
      OUTLINED_FUNCTION_82_20();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v0 = v57;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v55 = v44;
      v15 = v59;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1C7422928(v66, type metadata accessor for Hastings.Feature);
      v55 = v44;
    }

    sub_1C7422928(v55, type metadata accessor for Hastings.Feature);
    v6 = v44;
    v14 = v63;
    v18 = v61;
    v17 = v62;
    v16 = v65;
  }

  __break(1u);
LABEL_14:
  __break(1u);

  __break(1u);
}

void Hastings.ClusterAssetElector.ElectedAssetIterator.init(from:assetsByFeature:assetDependencySets:requiredAssets:id:diagnosticReporter:)()
{
  OUTLINED_FUNCTION_33();
  v89 = v0;
  v88 = v1;
  v87 = v2;
  v86 = v3;
  v5 = v4;
  v7 = v6;
  v100 = v8;
  isUniquelyReferenced_nonNull_native = v9;
  type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v104 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v112 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_140_1();
  v106 = v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v27);
  if (qword_1EC2140D8 != -1)
  {
    goto LABEL_73;
  }

LABEL_2:
  v28 = sub_1C754FF1C();
  v29 = __swift_project_value_buffer(v28, qword_1EC21BC98);
  (*(*(v28 - 8) + 16))(isUniquelyReferenced_nonNull_native, v29, v28);
  v30 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v31 = MEMORY[0x1E69E7CD0];
  *(isUniquelyReferenced_nonNull_native + v30[12]) = MEMORY[0x1E69E7CD0];
  *(isUniquelyReferenced_nonNull_native + v30[13]) = v31;
  *(isUniquelyReferenced_nonNull_native + v30[14]) = v31;
  *(isUniquelyReferenced_nonNull_native + v30[15]) = v31;
  *(isUniquelyReferenced_nonNull_native + v30[18]) = 0;
  v32 = MEMORY[0x1E69E7CC0];
  *(isUniquelyReferenced_nonNull_native + v30[19]) = MEMORY[0x1E69E7CC0];
  *(isUniquelyReferenced_nonNull_native + v30[20]) = v32;
  *(isUniquelyReferenced_nonNull_native + v30[5]) = v5;
  v91 = v30;
  v90 = isUniquelyReferenced_nonNull_native;
  *(isUniquelyReferenced_nonNull_native + v30[6]) = v7;
  v5 = v7 + 64;
  v33 = 1 << *(v7 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v7 + 64);
  v95 = (v33 + 63) >> 6;
  v96 = v7;
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC8];
  v92 = v7 + 64;
  v102 = v15;
LABEL_6:
  if (v35)
  {
    v38 = v96;
    goto LABEL_13;
  }

  v38 = v96;
  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
      goto LABEL_2;
    }

    if (v39 >= v95)
    {
      break;
    }

    v35 = *(v5 + 8 * v39);
    ++v36;
    if (v35)
    {
      v36 = v39;
LABEL_13:
      v97 = v35;
      v98 = v36;
      v40 = __clz(__rbit64(v35)) | (v36 << 6);
      v41 = v38;
      OUTLINED_FUNCTION_4_103();
      sub_1C74228D0();
      *(v99 + *(v94 + 48)) = *(*(v41 + 56) + 8 * v40);
      isUniquelyReferenced_nonNull_native = v93;
      sub_1C6FD7F70();
      v42 = *(v93 + *(v94 + 48));
      OUTLINED_FUNCTION_27_49();
      sub_1C7422980();
      v105 = *(v42 + 16);
      if (v105)
      {
        sub_1C75504FC();
        v5 = 0;
        v43 = 0;
        v103 = v42;
        while (1)
        {
          if (v43 >= *(v42 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v7 = *(v104 + 72);
          OUTLINED_FUNCTION_2_122();
          sub_1C74228D0();
          OUTLINED_FUNCTION_4_103();
          sub_1C74228D0();
          sub_1C6F6E5B4(v5, 0);
          swift_isUniquelyReferenced_nonNull_native();
          *&v116 = v37;
          sub_1C6FC292C(v15);
          if (__OFADD__(*(v37 + 16), (v45 & 1) == 0))
          {
            goto LABEL_70;
          }

          v5 = v44;
          isUniquelyReferenced_nonNull_native = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCB0, &qword_1C758A850);
          v46 = v116;
          if (sub_1C7551A2C())
          {
            sub_1C6FC292C(v15);
            if ((isUniquelyReferenced_nonNull_native & 1) != (v48 & 1))
            {
              sub_1C7551E4C();
              __break(1u);
              return;
            }

            v5 = v47;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v116 + 8 * (v5 >> 6) + 64) |= 1 << v5;
            OUTLINED_FUNCTION_2_122();
            sub_1C74228D0();
            *(*(v46 + 56) + 8 * v5) = MEMORY[0x1E69E7CD0];
            v49 = *(v46 + 16);
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_71;
            }

            *(v46 + 16) = v51;
          }

          v108 = v5;
          v109 = v43 + 1;
          v107 = *(v46 + 56);
          v111 = *(v107 + 8 * v5);
          sub_1C7551F3C();
          v52 = *v112;
          v53 = *(v112 + 8);
          sub_1C75505AC();
          v110 = v46;
          sub_1C75505AC();

          isUniquelyReferenced_nonNull_native = sub_1C754F58C();
          OUTLINED_FUNCTION_13_81();
          sub_1C7423CAC(&qword_1EC215238, v54, MEMORY[0x1E69C1938]);
          sub_1C755059C();
          sub_1C7551FAC();
          v7 = v111 + 56;
          OUTLINED_FUNCTION_9_2();
          v57 = v56 & ~v55;
          if (((*(v111 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
LABEL_55:
            v7 = v108;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_4_103();
            v5 = v101;
            sub_1C74228D0();
            *&v116 = *(v107 + 8 * v108);
            sub_1C72ED3C8();
            *(v107 + 8 * v108) = v116;
            goto LABEL_57;
          }

          v5 = ~v55;
          while (1)
          {
            OUTLINED_FUNCTION_4_103();
            sub_1C74228D0();
            v58 = *v19 == v52 && *(v19 + 8) == v53;
            if (!v58 && (sub_1C7551DBC() & 1) == 0)
            {
              goto LABEL_47;
            }

            v59 = 0xE900000000000072;
            v60 = 0x6574636172616843;
            switch(*(v19 + 16))
            {
              case 1:
                v59 = 0xE800000000000000;
                v60 = 0x6E6F697461636F4CLL;
                break;
              case 2:
                v59 = 0xE500000000000000;
                v60 = 0x746E657645;
                break;
              case 3:
                v59 = 0xE400000000000000;
                v60 = 1885958740;
                break;
              case 4:
                v59 = 0xE500000000000000;
                v60 = 0x7972657551;
                break;
              case 5:
                v60 = 0x6B61657262656954;
                v59 = 0xEA00000000007265;
                break;
              default:
                break;
            }

            v61 = 0x6574636172616843;
            v62 = 0xE900000000000072;
            switch(*(v112 + 16))
            {
              case 1:
                v62 = 0xE800000000000000;
                v61 = 0x6E6F697461636F4CLL;
                break;
              case 2:
                v62 = 0xE500000000000000;
                v61 = 0x746E657645;
                break;
              case 3:
                v62 = 0xE400000000000000;
                v61 = 1885958740;
                break;
              case 4:
                v62 = 0xE500000000000000;
                v61 = 0x7972657551;
                break;
              case 5:
                v61 = 0x6B61657262656954;
                v62 = 0xEA00000000007265;
                break;
              default:
                break;
            }

            if (v60 == v61 && v59 == v62)
            {
              break;
            }

            v64 = sub_1C7551DBC();

            if (v64)
            {
              goto LABEL_49;
            }

LABEL_47:
            OUTLINED_FUNCTION_5_94();
            sub_1C7422928(v19, v65);
LABEL_54:
            v57 = (v57 + 1) & v5;
            if (((*(v7 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
            {
              goto LABEL_55;
            }
          }

LABEL_49:
          OUTLINED_FUNCTION_13_81();
          sub_1C7423CAC(&qword_1EC2147A0, v66, MEMORY[0x1E69C1950]);
          sub_1C7550A5C();
          sub_1C7550A5C();
          if (v116 != v113 || *(&v116 + 1) != v115)
          {
            v68 = sub_1C7551DBC();

            OUTLINED_FUNCTION_5_94();
            sub_1C7422928(v19, v69);
            if (v68)
            {
              goto LABEL_57;
            }

            goto LABEL_54;
          }

          OUTLINED_FUNCTION_5_94();
          sub_1C7422928(v19, v70);
LABEL_57:
          OUTLINED_FUNCTION_5_94();
          sub_1C7422928(v112, v71);
          OUTLINED_FUNCTION_3_112();
          v15 = v102;
          sub_1C7422928(v102, v72);
          OUTLINED_FUNCTION_29_40();
          v43 = v109;
          v37 = v110;
          v42 = v103;
          if (v109 == v105)
          {

            OUTLINED_FUNCTION_29_40();
            goto LABEL_60;
          }
        }
      }

      sub_1C75504FC();

      v5 = 0;
LABEL_60:
      v35 = (v97 - 1) & v97;
      OUTLINED_FUNCTION_5_94();
      sub_1C7422928(v106, v73);
      sub_1C6F6E5B4(v5, 0);
      sub_1C6FD7FC8(v99, &qword_1EC2168B0, &qword_1C75656C0);
      v5 = v92;
      v36 = v98;
      goto LABEL_6;
    }
  }

  v74 = v90;
  *(v90 + v91[7]) = v37;
  v75 = v100;
  *(v90 + v91[8]) = v100;
  *(v90 + v91[9]) = v86;
  v76 = (v90 + v91[10]);
  *v76 = v87;
  v76[1] = v88;
  *(v90 + v91[11]) = v89;
  sub_1C75504FC();
  sub_1C706D1DC();
  *(v90 + v91[16]) = v77;
  v78 = *(v100 + 16);
  if (v78)
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1C716ED90(0, v78, 0);
    v79 = 32;
    v80 = v114;
    do
    {
      v81 = *(v75 + v79);
      v83 = *(v114 + 16);
      v82 = *(v114 + 24);
      sub_1C75504FC();
      if (v83 >= v82 >> 1)
      {
        sub_1C716ED90(v82 > 1, v83 + 1, 1);
      }

      v84 = OUTLINED_FUNCTION_64();
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(v84, v85);
      v118 = sub_1C7099594(&qword_1EC21BCC0, &qword_1EC21BCB8, &qword_1C758A858, MEMORY[0x1E69E6CF8]);
      v116 = v81;
      *(v114 + 16) = v83 + 1;
      sub_1C6F699F8(&v116, v114 + 40 * v83 + 32);
      v79 += 8;
      --v78;
      v75 = v100;
    }

    while (v78);

    v74 = v90;
  }

  else
  {

    v80 = MEMORY[0x1E69E7CC0];
  }

  *(v74 + v91[17]) = v80;
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C741AB24(uint64_t a1)
{
  v2 = sub_1C74229D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C741AB60(uint64_t a1)
{
  v2 = sub_1C74229D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C741ABF4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCC8, &qword_1C758A860);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74229D8();
  sub_1C755200C();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FC18BC();
  sub_1C7551D2C();
  v3 = OUTLINED_FUNCTION_103();
  return v4(v3);
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.init(asset:features:isRequired:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_6_104();
  sub_1C7422980();
  result = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0) + 20));
  if (*(v2 + 16))
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](2120480, 0xE300000000000000);
    sub_1C7417FD4(v2);
    v19 = v3;
    sub_1C75504FC();
    sub_1C70401E8();

    v4 = v19;
    v5 = *(v19 + 16);
    if (v5)
    {
      v20 = MEMORY[0x1E69E7CC0];
      sub_1C716D51C(0, v5, 0);
      v6 = v4 + 40;
      do
      {
        sub_1C75504FC();
        sub_1C755082C();
        v7 = sub_1C755098C();
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v15 = *(v20 + 16);
        v14 = *(v20 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C716D51C(v14 > 1, v15 + 1, 1);
        }

        *(v20 + 16) = v15 + 1;
        v16 = (v20 + 32 * v15);
        v16[4] = v7;
        v16[5] = v9;
        v16[6] = v11;
        v16[7] = v13;
        v6 += 16;
        --v5;
      }

      while (v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219368, &qword_1C7577D80);
    sub_1C7099594(&qword_1EDD06A40, &qword_1EC219368, &qword_1C7577D80, MEMORY[0x1E69E6328]);
    sub_1C721AA20();
    sub_1C7550A4C();
    OUTLINED_FUNCTION_43_36();
    v17 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v17);

    MEMORY[0x1CCA5CD70](23840, 0xE200000000000000);
  }

  else
  {
    sub_1C75504FC();
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.ProcessingResult.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C741B0FC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21BC98);
  v1 = __swift_project_value_buffer(v0, qword_1EC21BC98);
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC25B6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C741B1C4(uint64_t a1, uint64_t a2)
{
  v28 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v16 = *(a2 + *(v15 + 28));
  sub_1C75504FC();
  v17 = sub_1C6FE0FD0(a1, v16);

  if (!v17)
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  OUTLINED_FUNCTION_2_122();
  sub_1C74228D0();
  *(v14 + *(v11 + 28)) = v17;
  *(v14 + *(v11 + 32)) = 1;
  Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)();
  if (v30)
  {
    v18 = (a2 + *(v15 + 40));
    v20 = *v18;
    v19 = v18[1];
    (*(v5 + 16))(v9, a2, v28);
    sub_1C75504FC();
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_1C6F765A4(v20, v19, &v29);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Cluster %s: Processing of required asset failed, that's unexpected", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    (*(v5 + 8))(v9, v28);
  }

  OUTLINED_FUNCTION_1_132();
  return sub_1C7422928(v14, v26);
}

void Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v407 = v4;
  v393 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v410 = v7 - v6;
  v8 = type metadata accessor for Hastings.Asset(0);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCD8, &qword_1C758A868);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v15);
  v402 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v399 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v21);
  v22 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v408 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_78();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v380 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v380 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v409 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_140_1();
  v413 = v43;
  v45 = *v3;
  v44 = v3[1];
  v46 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v47 = (v1 + v46[10]);
  v48 = v47[1];
  v405 = *v47;
  v395 = v46[12];
  v403 = v3;
  sub_1C7009ADC();
  if (v49)
  {
    v50 = v407;
    (*(v408 + 16))(v27, v1, v22);
    sub_1C75504FC();
    sub_1C75504FC();
    v51 = sub_1C754FEEC();
    v52 = sub_1C755118C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_23_1();
      v416 = OUTLINED_FUNCTION_49_1();
      *v53 = 136315394;
      v54 = OUTLINED_FUNCTION_34_40();
      *(v53 + 4) = sub_1C6F765A4(v54, v48, v55);
      *(v53 + 12) = 2080;
      sub_1C75504FC();
      v56 = OUTLINED_FUNCTION_20_58();
      v57 = MEMORY[0x1CCA5CC40](v56);
      v59 = v58;

      v60 = sub_1C6F765A4(v57, v59, &v416);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_1C6F5C000, v51, v52, "Cluster %s: Asset %s already elected, discarding", v53, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v50 = v407;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v61 = OUTLINED_FUNCTION_79_18();
    v62(v61);
    v63 = 2;
LABEL_129:
    *v50 = v63;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v381 = v33;
  v382 = v30;
  v401 = v48;
  v404 = v22;
  v406 = v46;
  v64 = *(v1 + v46[5]);
  v65 = *(v64 + 16);
  v411 = v1;
  v412 = v64;
  if (v65)
  {
    v66 = 0;
    v67 = v64 + 32;
    v390 = v64 + 32;
    while (v66 < *(v64 + 16))
    {
      v68 = v67 + 24 * v66;
      v69 = *(v68 + 8);
      if (*(v69 + 16))
      {
        v3 = *v68;
        v70 = *(v68 + 16);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_9_2();
        v73 = ~v72;
        do
        {
          v74 = v71 & v73;
          if (((*(v69 + 56 + (((v71 & v73) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v71 & v73)) & 1) == 0)
          {

LABEL_28:

            v64 = v412;
            v67 = v390;
            goto LABEL_29;
          }

          v75 = (*(v69 + 48) + 16 * v74);
          v76 = *v75 == v45 && v75[1] == v44;
          if (v76)
          {
            break;
          }

          v77 = sub_1C7551DBC();
          v71 = v74 + 1;
        }

        while ((v77 & 1) == 0);
        if (!*(v70 + 16) || (v78 = sub_1C6F78124(v45, v44), (v79 & 1) == 0))
        {

          OUTLINED_FUNCTION_38_38();
          if (v70)
          {
            OUTLINED_FUNCTION_2_49();
            sub_1C755180C();
            MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75AFEE0);
            sub_1C75504FC();
            v207 = OUTLINED_FUNCTION_20_58();
            v209 = v208;
            MEMORY[0x1CCA5CC40](v207);
            OUTLINED_FUNCTION_43_36();
            v210 = OUTLINED_FUNCTION_64();
            MEMORY[0x1CCA5CD70](v210);

            MEMORY[0x1CCA5CD70](0xD000000000000035, 0x80000001C75AFF00);
            v65 = v416;
            OUTLINED_FUNCTION_31_42(v70 + 16);
            sub_1C6FB0600();
            OUTLINED_FUNCTION_46_34();
            OUTLINED_FUNCTION_36_34(v209 + 1);
            *(v70 + 16) = v211;
            swift_endAccess();
          }

          OUTLINED_FUNCTION_35_28();
          v212 = OUTLINED_FUNCTION_40_44();
          v213 = v404;
          v214(v212);
          sub_1C75504FC();
          OUTLINED_FUNCTION_37_38();
          v215 = sub_1C754FEEC();
          sub_1C755119C();
          OUTLINED_FUNCTION_67_23();

          if (OUTLINED_FUNCTION_64_20())
          {
            OUTLINED_FUNCTION_23_1();
            v216 = OUTLINED_FUNCTION_60_11();
            OUTLINED_FUNCTION_83_10(v216);
            v217 = OUTLINED_FUNCTION_22_63(4.8151e-34);
            OUTLINED_FUNCTION_21_57(v217);
            v218 = OUTLINED_FUNCTION_20_58();
            MEMORY[0x1CCA5CC40](v218);
            OUTLINED_FUNCTION_6_46();
            v219 = OUTLINED_FUNCTION_50_30();
            v221 = sub_1C6F765A4(v219, v44, v220);

            *(v65 + 14) = v221;
            OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v222, v223, "Cluster %s: INCONSISTENCY: Asset %s is dependent but has no dependency group, discarding");
            v63 = 2;
            OUTLINED_FUNCTION_51_27();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            (v3[1])(v391, v213);
          }

          else
          {

            (v3[1])(v65, v213);
            v63 = 2;
          }

          goto LABEL_50;
        }

        v80 = (*(v70 + 56) + 16 * v78);
        v81 = *v80;
        v82 = v80[1];
        sub_1C75504FC();

        v83 = *(v411 + v406[14]);
        if (*(v83 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          sub_1C7551FAC();
          OUTLINED_FUNCTION_9_2();
          v86 = ~v85;
          while (1)
          {
            v87 = v84 & v86;
            if (((*(v83 + 56 + (((v84 & v86) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v84 & v86)) & 1) == 0)
            {
              break;
            }

            v88 = (*(v83 + 48) + 16 * v87);
            if (*v88 != v81 || v88[1] != v82)
            {
              v90 = sub_1C7551DBC();
              v84 = v87 + 1;
              if ((v90 & 1) == 0)
              {
                continue;
              }
            }

            v3 = v82;
            goto LABEL_28;
          }
        }

        v119 = v411;
        v120 = *(v411 + v406[11]);
        if (v120)
        {
          OUTLINED_FUNCTION_2_49();
          sub_1C755180C();
          OUTLINED_FUNCTION_60_24();
          sub_1C75504FC();
          v121 = OUTLINED_FUNCTION_20_58();
          v122 = MEMORY[0x1CCA5CC40](v121);
          v124 = v123;

          MEMORY[0x1CCA5CD70](v122, v124);

          MEMORY[0x1CCA5CD70](0x65646E6570656420, 0xEE00206E6920746ELL);
          MEMORY[0x1CCA5CD70](v81, v82);
          OUTLINED_FUNCTION_23_50();
          MEMORY[0x1CCA5CD70](v125 + 11, v126 | 0x8000000000000000);
          v127 = v416;
          v128 = v417;
          OUTLINED_FUNCTION_31_42(v120 + 16);
          sub_1C6FB0600();
          v129 = *(*(v120 + 16) + 16);
          sub_1C6FB0EFC();
          v130 = *(v120 + 16);
          *(v130 + 16) = v129 + 1;
          v131 = v130 + 16 * v129;
          *(v131 + 32) = v127;
          *(v131 + 40) = v128;
          v119 = v411;
          *(v120 + 16) = v130;
          swift_endAccess();
        }

        v132 = v408;
        v133 = v413;
        v134 = v404;
        (*(v408 + 16))(v413, v119, v404);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v135 = sub_1C754FEEC();
        v136 = sub_1C755117C();

        if (os_log_type_enabled(v135, v136))
        {
          OUTLINED_FUNCTION_98();
          v137 = swift_slowAlloc();
          v416 = swift_slowAlloc();
          *v137 = 136315650;
          v138 = OUTLINED_FUNCTION_34_40();
          *(v137 + 4) = sub_1C6F765A4(v138, v139, v140);
          *(v137 + 12) = 2080;
          sub_1C75504FC();
          v141 = OUTLINED_FUNCTION_20_58();
          v142 = MEMORY[0x1CCA5CC40](v141);
          v144 = v143;

          v145 = sub_1C6F765A4(v142, v144, &v416);

          *(v137 + 14) = v145;
          *(v137 + 22) = 2080;
          v146 = sub_1C6F765A4(v81, v82, &v416);

          *(v137 + 24) = v146;
          _os_log_impl(&dword_1C6F5C000, v135, v136, "Cluster %s: Asset %s dependent in %s with no anchor asset, deferring", v137, 0x20u);
          OUTLINED_FUNCTION_82_20();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          (*(v132 + 8))(v413, v404);
        }

        else
        {

          (*(v132 + 8))(v133, v134);
        }

        goto LABEL_49;
      }

LABEL_29:
      ++v66;
      v1 = v411;
      if (v66 == v65)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_136;
  }

LABEL_30:
  v91 = 0x207465737341;
  v92 = v406;
  v93 = v398;
  sub_1C741D6B4();
  v94 = v402;
  OUTLINED_FUNCTION_80_4(v93, 1, v402);
  if (v76)
  {
    sub_1C6FD7FC8(v93, &qword_1EC21BCD8, &qword_1C758A868);
    v95 = *(v1 + v92[11]);
    if (v95)
    {
      OUTLINED_FUNCTION_2_49();
      sub_1C755180C();

      v416 = 0x207465737341;
      v417 = 0xE600000000000000;
      sub_1C75504FC();
      v96 = OUTLINED_FUNCTION_20_58();
      v98 = v97;
      MEMORY[0x1CCA5CC40](v96);
      OUTLINED_FUNCTION_43_36();
      v99 = OUTLINED_FUNCTION_64();
      MEMORY[0x1CCA5CD70](v99);

      OUTLINED_FUNCTION_23_50();
      MEMORY[0x1CCA5CD70](v100 + 14, v101 | 0x8000000000000000);
      v91 = v416;
      OUTLINED_FUNCTION_31_42(v95 + 16);
      sub_1C6FB0600();
      OUTLINED_FUNCTION_88_17();
      OUTLINED_FUNCTION_36_34(v98 + 1);
      *(v95 + 16) = v102;
      swift_endAccess();
    }

    OUTLINED_FUNCTION_35_28();
    OUTLINED_FUNCTION_40_44();
    OUTLINED_FUNCTION_69_24();
    v103();
    sub_1C75504FC();
    OUTLINED_FUNCTION_37_38();
    v104 = sub_1C754FEEC();
    sub_1C755117C();
    OUTLINED_FUNCTION_67_23();

    v105 = OUTLINED_FUNCTION_64_20();
    v391 = v95;
    if (v105)
    {
      OUTLINED_FUNCTION_23_1();
      v106 = OUTLINED_FUNCTION_60_11();
      OUTLINED_FUNCTION_83_10(v106);
      v107 = OUTLINED_FUNCTION_22_63(4.8151e-34);
      OUTLINED_FUNCTION_21_57(v107);
      v108 = OUTLINED_FUNCTION_20_58();
      MEMORY[0x1CCA5CC40](v108);
      v110 = v109;

      v111 = OUTLINED_FUNCTION_50_30();
      v113 = sub_1C6F765A4(v111, v110, v112);

      *(v91 + 14) = v113;
      OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v114, v115, "Cluster %s: Asset %s elected (all features represented)");
      OUTLINED_FUNCTION_51_27();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v116 = v3[1];
      v117 = v394;
      v118 = v404;
    }

    else
    {

      v117 = OUTLINED_FUNCTION_64();
    }

    v394 = v116;
    v116(v117, v118);
    LODWORD(v398) = 0;
    goto LABEL_65;
  }

  v147 = v399 + 32;
  v413 = *(v399 + 32);
  (v413)(v400, v93, v94);
  v148 = v393;
  v149 = v403;
  v150 = v92[15];
  sub_1C75504FC();
  v151 = OUTLINED_FUNCTION_66_2();
  v153 = sub_1C72387A4(v151, v152);
  if ((*(v149 + *(v148 + 24)) & 1) == 0)
  {
    v187 = v389;
    sub_1C741D6B4();
    OUTLINED_FUNCTION_80_4(v187, 1, v94);
    if (v76)
    {

      sub_1C6FD7FC8(v187, &qword_1EC21BCD8, &qword_1C758A868);
      OUTLINED_FUNCTION_38_38();
      if (v150)
      {
        OUTLINED_FUNCTION_2_49();
        sub_1C755180C();

        v416 = 0x207465737341;
        v417 = 0xE600000000000000;
        sub_1C75504FC();
        v188 = OUTLINED_FUNCTION_20_58();
        v190 = v189;
        MEMORY[0x1CCA5CC40](v188);
        OUTLINED_FUNCTION_43_36();
        v191 = OUTLINED_FUNCTION_64();
        MEMORY[0x1CCA5CD70](v191);

        OUTLINED_FUNCTION_23_50();
        MEMORY[0x1CCA5CD70](v192 + 12, v193 | 0x8000000000000000);
        v148 = v416;
        OUTLINED_FUNCTION_31_42(v150 + 16);
        sub_1C6FB0600();
        OUTLINED_FUNCTION_46_34();
        OUTLINED_FUNCTION_36_34(v190 + 1);
        *(v150 + 16) = v194;
        swift_endAccess();
      }

      OUTLINED_FUNCTION_35_28();
      v195 = OUTLINED_FUNCTION_40_44();
      v196 = v404;
      v197(v195);
      sub_1C75504FC();
      OUTLINED_FUNCTION_37_38();
      v198 = sub_1C754FEEC();
      sub_1C755117C();
      OUTLINED_FUNCTION_67_23();

      if (OUTLINED_FUNCTION_64_20())
      {
        OUTLINED_FUNCTION_23_1();
        v199 = OUTLINED_FUNCTION_60_11();
        OUTLINED_FUNCTION_83_10(v199);
        v200 = OUTLINED_FUNCTION_22_63(4.8151e-34);
        OUTLINED_FUNCTION_21_57(v200);
        v201 = OUTLINED_FUNCTION_20_58();
        MEMORY[0x1CCA5CC40](v201);
        OUTLINED_FUNCTION_6_46();
        v202 = OUTLINED_FUNCTION_50_30();
        v204 = sub_1C6F765A4(v202, v44, v203);

        *(v148 + 14) = v204;
        OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v205, v206, "Cluster %s: Asset %s has no needed feature, deferring");
        OUTLINED_FUNCTION_51_27();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        (*(v149 + 8))(v387, v196);
      }

      else
      {

        (*(v149 + 8))(v148, v196);
      }

      v374 = OUTLINED_FUNCTION_44_32();
      v375(v374);
    }

    else
    {
      v148 = v94;
      v149 = v388;
      v333 = OUTLINED_FUNCTION_151_1();
      (v413)(v333);
      v334 = sub_1C754F57C();
      if ((v334 & 1) == 0)
      {
        (*(v399 + 8))(v149, v94);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_38_38();
      if (v150)
      {
        OUTLINED_FUNCTION_2_49();
        sub_1C755180C();
        OUTLINED_FUNCTION_60_24();
        sub_1C75504FC();
        v335 = OUTLINED_FUNCTION_20_58();
        v337 = v336;
        v338 = MEMORY[0x1CCA5CC40](v335);
        v340 = v339;

        MEMORY[0x1CCA5CD70](v338, v340);

        MEMORY[0x1CCA5CD70](0x206F6E2073616820, 0xEF2064656465656ELL);
        OUTLINED_FUNCTION_325();
        sub_1C75519EC();
        OUTLINED_FUNCTION_23_50();
        MEMORY[0x1CCA5CD70](v341 - 2, v342 | 0x8000000000000000);
        v344 = v416;
        v343 = v417;
        OUTLINED_FUNCTION_31_42(v150 + 16);
        sub_1C6FB0600();
        OUTLINED_FUNCTION_46_34();
        v345 = *(v150 + 16);
        *(v345 + 16) = v337 + 1;
        v346 = v345 + 16 * v337;
        *(v346 + 32) = v344;
        *(v346 + 40) = v343;
        *(v150 + 16) = v345;
        swift_endAccess();
      }

      v347 = v386;
      (*(v408 + 16))(v386, v147, v404);
      v348 = v399;
      v349 = v385;
      v350 = OUTLINED_FUNCTION_151_1();
      v413 = v351;
      (v351)(v350);
      sub_1C75504FC();
      OUTLINED_FUNCTION_37_38();
      v352 = v347;
      v353 = sub_1C754FEEC();
      sub_1C755117C();
      OUTLINED_FUNCTION_67_23();

      if (OUTLINED_FUNCTION_64_20())
      {
        OUTLINED_FUNCTION_98();
        v354 = swift_slowAlloc();
        LODWORD(v411) = v352;
        v355 = v148;
        v356 = v354;
        v412 = swift_slowAlloc();
        v416 = v412;
        v357 = OUTLINED_FUNCTION_22_63(4.8152e-34);
        OUTLINED_FUNCTION_21_57(v357);
        v358 = OUTLINED_FUNCTION_20_58();
        MEMORY[0x1CCA5CC40](v358);
        v359 = v348;
        OUTLINED_FUNCTION_6_46();
        v360 = OUTLINED_FUNCTION_50_30();
        v362 = sub_1C6F765A4(v360, v44, v361);

        *(v356 + 14) = v362;
        *(v356 + 22) = 2080;
        (v413)(v384, v349, v355);
        v363 = sub_1C75506EC();
        v365 = v364;
        v366 = *(v359 + 8);
        v367 = OUTLINED_FUNCTION_151_1();
        v366(v367);
        v368 = sub_1C6F765A4(v363, v365, &v416);

        *(v356 + 24) = v368;
        _os_log_impl(&dword_1C6F5C000, v353, v411, "Cluster %s: Asset %s has no needed %s feature, deferring", v356, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v369 = OUTLINED_FUNCTION_85_15();
        v370(v369);
        (v366)(v388, v355);
        v371 = OUTLINED_FUNCTION_325();
        (v366)(v371, v355);
      }

      else
      {

        v376 = *(v348 + 8);
        v376(v349, v148);
        v377 = OUTLINED_FUNCTION_85_15();
        v378(v377);
        v376(v388, v148);
        v379 = OUTLINED_FUNCTION_325();
        v376(v379, v148);
      }
    }

LABEL_49:
    v63 = 1;
LABEL_50:
    v50 = v407;
    goto LABEL_129;
  }

LABEL_42:
  v154 = *(v153 + 16);
  LODWORD(v398) = v154 != 0;
  v155 = v411;
  if (v154)
  {
    sub_1C75504FC();
    sub_1C7397760();
    sub_1C7420BBC(v153, v156, v157, v158, v159, v160, v161, v162, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391);
  }

  v163 = *(v155 + v406[11]);
  if (v163)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C755180C();

    v416 = 0x207465737341;
    v417 = 0xE600000000000000;
    sub_1C75504FC();
    v164 = OUTLINED_FUNCTION_20_58();
    v166 = v165;
    MEMORY[0x1CCA5CC40](v164);
    OUTLINED_FUNCTION_43_36();
    v167 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v167);

    OUTLINED_FUNCTION_23_50();
    MEMORY[0x1CCA5CD70](v168 + 14, v169 | 0x8000000000000000);
    v148 = v416;
    OUTLINED_FUNCTION_31_42(v163 + 16);
    sub_1C6FB0600();
    OUTLINED_FUNCTION_88_17();
    OUTLINED_FUNCTION_36_34(v166 + 1);
    *(v163 + 16) = v170;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_35_28();
  OUTLINED_FUNCTION_40_44();
  OUTLINED_FUNCTION_69_24();
  v171();
  sub_1C75504FC();
  OUTLINED_FUNCTION_37_38();
  v172 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_67_23();

  v173 = OUTLINED_FUNCTION_64_20();
  v391 = v163;
  if (v173)
  {
    OUTLINED_FUNCTION_23_1();
    v174 = OUTLINED_FUNCTION_60_11();
    OUTLINED_FUNCTION_83_10(v174);
    v175 = OUTLINED_FUNCTION_22_63(4.8151e-34);
    OUTLINED_FUNCTION_21_57(v175);
    v176 = OUTLINED_FUNCTION_20_58();
    MEMORY[0x1CCA5CC40](v176);
    v178 = v177;

    v179 = OUTLINED_FUNCTION_50_30();
    v181 = sub_1C6F765A4(v179, v178, v180);

    *(v148 + 14) = v181;
    OUTLINED_FUNCTION_32_39(&dword_1C6F5C000, v182, v183, "Cluster %s: Asset %s elected (new represented features)");
    OUTLINED_FUNCTION_51_27();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v184 = *(v149 + 8);
    v185 = v392;
    v186 = v404;
  }

  else
  {

    v185 = OUTLINED_FUNCTION_64();
  }

  v394 = v184;
  v184(v185, v186);
  v224 = OUTLINED_FUNCTION_44_32();
  v225(v224);
LABEL_65:
  v226 = v410;
  v227 = v396;
  sub_1C74228D0();
  sub_1C70F0914();
  sub_1C7422928(v227, type metadata accessor for Hastings.Asset);
  v229 = *(v412 + 16);
  if (!v229)
  {
    v400 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_70_22();
LABEL_99:
    v277 = (v408 + 16);
    v278 = v411;
    OUTLINED_FUNCTION_58_29();
    v279();
    OUTLINED_FUNCTION_30_43();
    sub_1C74228D0();
    v280 = v401;
    sub_1C75504FC();
    v281 = v400;
    sub_1C75504FC();
    v282 = sub_1C754FEEC();
    v283 = sub_1C755117C();

    if (os_log_type_enabled(v282, v283))
    {
      LODWORD(v412) = v283;
      v413 = v277;
      v284 = swift_slowAlloc();
      v415 = swift_slowAlloc();
      *v284 = 136315906;
      *(v284 + 4) = sub_1C6F765A4(v405, v280, &v415);
      *(v284 + 12) = 2080;
      v286 = Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset.description.getter(v285);
      v288 = v287;
      OUTLINED_FUNCTION_1_132();
      sub_1C7422928(v226, v289);
      v290 = sub_1C6F765A4(v286, v288, &v415);

      *(v284 + 14) = v290;
      *(v284 + 22) = 2080;
      if (v398)
      {
        v291 = 0xD000000000000016;
      }

      else
      {
        v291 = 0;
      }

      v292 = 0xE000000000000000;
      if (v398)
      {
        v293 = 0x80000001C75A4D30;
      }

      else
      {
        v293 = 0xE000000000000000;
      }

      v294 = sub_1C6F765A4(v291, v293, &v415);

      *(v284 + 24) = v294;
      *(v284 + 32) = 2080;
      if (*(v281 + 16))
      {
        v416 = 0;
        v417 = 0xE000000000000000;
        sub_1C755180C();

        v416 = 0xD000000000000015;
        v417 = 0x80000001C75AFF40;
        v414 = v281;
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E69E6310]);
        v295 = sub_1C75505FC();
        v297 = v296;

        MEMORY[0x1CCA5CD70](v295, v297);

        v298 = v416;
        v292 = v417;
      }

      else
      {

        v298 = 0;
      }

      v301 = sub_1C6F765A4(v298, v292, &v415);

      *(v284 + 34) = v301;
      _os_log_impl(&dword_1C6F5C000, v282, v412, "Cluster %s: %s\n\tadding asset%s%s", v284, 0x2Au);
      OUTLINED_FUNCTION_82_20();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      OUTLINED_FUNCTION_80_14();
      v302();
      v278 = v411;
    }

    else
    {

      OUTLINED_FUNCTION_1_132();
      sub_1C7422928(v226, v299);
      OUTLINED_FUNCTION_57_27();
      OUTLINED_FUNCTION_80_14();
      v300();
    }

    v50 = v407;
    if (v398)
    {
      v303 = *(v278 + v406[15]);
      if (*(v303 + 16) >= *(*(v278 + v406[6]) + 16))
      {
        v321 = sub_1C75504FC();
        v322 = sub_1C74182C8(v321);
        v324 = v323;

        OUTLINED_FUNCTION_58_29();
        v325();
        v326 = v401;
        sub_1C75504FC();
        sub_1C75504FC();
        v327 = sub_1C754FEEC();
        v328 = sub_1C755117C();

        if (OUTLINED_FUNCTION_64_20())
        {
          v329 = OUTLINED_FUNCTION_23_1();
          v416 = OUTLINED_FUNCTION_49_1();
          *v329 = 136315394;
          v330 = OUTLINED_FUNCTION_34_40();
          *(v329 + 4) = sub_1C6F765A4(v330, v326, v331);
          *(v329 + 12) = 2080;
          v332 = sub_1C6F765A4(v322, v324, &v416);

          *(v329 + 14) = v332;
          _os_log_impl(&dword_1C6F5C000, v327, v328, "Cluster %s: Feature representation complete (%s", v329, 0x16u);
          OUTLINED_FUNCTION_82_20();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_57_27();
        OUTLINED_FUNCTION_80_14();
        v373();
        v50 = v407;
      }

      else
      {
        sub_1C7418830(v303);
        v305 = v304;
        v306 = sub_1C75504FC();
        sub_1C74182C8(v306);

        OUTLINED_FUNCTION_151_1();
        OUTLINED_FUNCTION_58_29();
        v307();
        v308 = v401;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v309 = sub_1C754FEEC();
        v310 = sub_1C755117C();

        if (OUTLINED_FUNCTION_64_20())
        {
          OUTLINED_FUNCTION_98();
          v311 = swift_slowAlloc();
          v416 = swift_slowAlloc();
          *v311 = 136315650;
          v312 = OUTLINED_FUNCTION_34_40();
          *(v311 + 4) = sub_1C6F765A4(v312, v308, v313);
          *(v311 + 12) = 2080;
          v314 = OUTLINED_FUNCTION_50_30();
          v316 = sub_1C6F765A4(v314, v305, v315);

          *(v311 + 14) = v316;
          *(v311 + 22) = 2080;
          v317 = OUTLINED_FUNCTION_103();
          v320 = sub_1C6F765A4(v317, v318, v319);

          *(v311 + 24) = v320;
          _os_log_impl(&dword_1C6F5C000, v309, v310, "Cluster %s: %s features represented out of %s", v311, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {

          OUTLINED_FUNCTION_57_27();
        }

        OUTLINED_FUNCTION_80_14();
        v372();
        v50 = v407;
      }
    }

    if (v402)
    {
      sub_1C741DAC8();
    }

    v63 = 0;
    goto LABEL_129;
  }

  v230 = 0;
  v413 = (v412 + 32);
  v396 = ", represented groups ";
  v395 = "Dependency group ";
  v399 = v408 + 16;
  v397 = v408 + 8;
  v400 = MEMORY[0x1E69E7CC0];
  *&v228 = 136315394;
  v392 = v228;
  OUTLINED_FUNCTION_70_22();
  while (v230 < *(v231 + 16))
  {
    v232 = &v413[24 * v230];
    v233 = *v232;
    ++v230;
    if (*(*v232 + 16))
    {
      v234 = *(v232 + 2);
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v237 = ~v236;
      do
      {
        v238 = v235 & v237;
        OUTLINED_FUNCTION_77_15();
        if ((v239 & 1) == 0)
        {
          goto LABEL_79;
        }

        v240 = (*(v233 + 48) + 16 * v238);
        if (*v240 == v45 && v240[1] == v44)
        {
          break;
        }

        v242 = sub_1C7551DBC();
        v235 = v238 + 1;
      }

      while ((v242 & 1) == 0);
      if (!*(v234 + 16))
      {
LABEL_79:

        v226 = v410;
        goto LABEL_80;
      }

      v243 = sub_1C6F78124(v45, v44);
      v226 = v410;
      if ((v244 & 1) == 0)
      {

LABEL_80:

        v231 = v412;
        goto LABEL_81;
      }

      v245 = (*(v234 + 56) + 16 * v243);
      v247 = *v245;
      v246 = v245[1];
      sub_1C75504FC();

      v248 = v246;

      v249 = v406[14];
      sub_1C75504FC();
      v250 = v411;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v416 = *(v250 + v249);
      sub_1C73A873C(v247, v248, isUniquelyReferenced_nonNull_native);
      *(v250 + v249) = v416;
      if (v252)
      {

        OUTLINED_FUNCTION_75_18();
      }

      else
      {
        v402 = v247;
        v254 = v248;
        sub_1C75504FC();
        OUTLINED_FUNCTION_325();
        v255 = swift_isUniquelyReferenced_nonNull_native();
        v256 = v391;
        if ((v255 & 1) == 0)
        {
          sub_1C6FB1814();
          v400 = v275;
        }

        v257 = v402;
        v258 = *(v400 + 16);
        if (v258 >= *(v400 + 24) >> 1)
        {
          sub_1C6FB1814();
          v400 = v276;
        }

        v259 = v400;
        *(v400 + 16) = v258 + 1;
        v260 = v259 + 16 * v258;
        *(v260 + 32) = v257;
        *(v260 + 40) = v254;
        if (v256)
        {
          OUTLINED_FUNCTION_2_49();
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0xD000000000000011, v396 | 0x8000000000000000);
          MEMORY[0x1CCA5CD70](v257, v254);
          MEMORY[0x1CCA5CD70](0xD000000000000020, v395 | 0x8000000000000000);
          v261 = v416;
          v226 = v417;
          OUTLINED_FUNCTION_31_42(v256 + 16);
          sub_1C6FB0600();
          v262 = *(*(v256 + 16) + 16);
          sub_1C6FB0EFC();
          v263 = *(v256 + 16);
          *(v263 + 16) = v262 + 1;
          v264 = v263 + 16 * v262;
          *(v264 + 32) = v261;
          *(v264 + 40) = v226;
          *(v256 + 16) = v263;
          swift_endAccess();
        }

        v265 = v383;
        v266 = v404;
        v393(v383, v411, v404);
        OUTLINED_FUNCTION_37_38();
        sub_1C75504FC();
        v267 = sub_1C754FEEC();
        v268 = sub_1C755117C();

        if (os_log_type_enabled(v267, v268))
        {
          v269 = OUTLINED_FUNCTION_23_1();
          v390 = OUTLINED_FUNCTION_49_1();
          v416 = v390;
          *v269 = v392;
          v270 = OUTLINED_FUNCTION_34_40();
          *(v269 + 4) = sub_1C6F765A4(v270, v226, v271);
          *(v269 + 12) = 2080;
          v272 = sub_1C6F765A4(v402, v254, &v416);

          *(v269 + 14) = v272;
          _os_log_impl(&dword_1C6F5C000, v267, v268, "Cluster %s: Dependency group %s now has elected anchored assets", v269, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          v273 = v383;
          v274 = v404;
        }

        else
        {

          v273 = v265;
          v274 = v266;
        }

        v394(v273, v274);
        v226 = v410;
        OUTLINED_FUNCTION_75_18();
      }

      v231 = v412;
      if (v253)
      {
        goto LABEL_99;
      }
    }

    else
    {
LABEL_81:
      if (v230 == v229)
      {
        goto LABEL_99;
      }
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
}