void *sub_1C6FE16CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1C6FCABD0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

unint64_t Spatial3DCuration.Postgating.Result.FailureReason.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    sub_1C755180C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E63B0];
    *(v3 + 16) = xmmword_1C755BAB0;
    v5 = MEMORY[0x1E69E6438];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v6 = sub_1C75506BC();
    MEMORY[0x1CCA5CD70](v6);

    return 0xD000000000000021;
  }
}

void Spatial3DCuration.Postgating.Result.init(score:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = a2;
  if (a2 > 0.4)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 9) = a2 > 0.4;
}

uint64_t sub_1C6FE18A0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2156E0);
  __swift_project_value_buffer(v0, qword_1EC2156E0);
  return sub_1C754FEFC();
}

uint64_t static Spatial3DCuration.Postgating.passes(for:using:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = PHSuggestion.disparityScore(using:)(&v4);
  return (*&v5.is_nil > 0.4) & ~v2;
}

Swift::Double_optional __swiftcall PHSuggestion.disparityScore(using:)(PhotosIntelligence::Spatial3DResourceGenerator::GenerationMode using)
{
  v2 = *using;
  v3 = [v1 featuresProperties];
  v4 = sub_1C75504AC();

  sub_1C6FE11F0(0xD00000000000001DLL, 0x80000001C7598030, v4);

  if (!v41)
  {
    sub_1C6FE32F4(v40);
LABEL_14:
    v32 = 0;
    goto LABEL_15;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
  OUTLINED_FUNCTION_12_11(v5, v6, v7, v8, v9, v10, v11, v12, v33, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = "eWallpaperPicker";
  v15 = 0xD000000000000026;
  switch(v2)
  {
    case 1:
      v14 = "resPropertiesModeWidget1x1";
      v15 = 0xD000000000000030;
      break;
    case 2:
      v16 = "PNSpatial3DFeaturesPropertiesModeWidget1x1";
      goto LABEL_7;
    case 3:
      v16 = "PNSpatial3DFeaturesPropertiesModeWidget1x2";
LABEL_7:
      v14 = (v16 - 32);
      v15 = 0xD00000000000002ALL;
      break;
    default:
      break;
  }

  sub_1C6FE11F0(v15, v14 | 0x8000000000000000, v37);

  OUTLINED_FUNCTION_12_11(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C6FE11F0(0xD00000000000002BLL, 0x80000001C7598050, v38);

  OUTLINED_FUNCTION_12_11(v25, v26, v27, MEMORY[0x1E69E63B0], v28, v29, v30, v31, v35, v38);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v32 = v39;
LABEL_15:
  result.value = v13;
  result.is_nil = v32;
  return result;
}

uint64_t static Spatial3DCuration.Postgating.persistDisparityScore(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6FE1B84, 0, 0);
}

uint64_t sub_1C6FE1B84()
{
  v60 = v0;
  v1 = **(v0 + 32);
  *(v0 + 88) = v1;
  LOBYTE(v59[0]) = v1;
  v62 = PHSuggestion.disparityScore(using:)(v59);
  if (v2)
  {
    v3 = [*(v0 + 24) photoLibrary];
    *(v0 + 40) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 24);
      v6 = [v3 librarySpecificFetchOptions];
      *(v0 + 48) = v6;
      [v6 setFetchLimit_];
      [v6 setIncludeGuestAssets_];
      v7 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v5 options:v6];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 firstObject];
        *(v0 + 56) = v9;

        if (v9)
        {
          v10 = swift_task_alloc();
          *(v0 + 64) = v10;
          *v10 = v0;
          v10[1] = sub_1C6FE21B4;

          return Spatial3DResourceGenerator.spatial3DScene(for:statusHandler:)();
        }
      }

      if (qword_1EC213C78 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
      }

      v26 = *(v0 + 24);
      v27 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v27, qword_1EC2156E0);
      v28 = v26;
      v29 = sub_1C754FEEC();
      v30 = sub_1C755119C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 24);
        v32 = OUTLINED_FUNCTION_41_0();
        v33 = OUTLINED_FUNCTION_20_1();
        v59[0] = v33;
        *v32 = 136315138;
        v34 = [v31 localIdentifier];
        v35 = sub_1C755068C();
        v37 = v36;

        v38 = sub_1C6F765A4(v35, v37, v59);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_1C6F5C000, v29, v30, "No key asset for suggestion %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      sub_1C6FE335C();
      swift_allocError();
      *v39 = 0;
      v39[1] = 0;
      swift_willThrow();
    }

    else
    {
      if (qword_1EC213C78 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
      }

      v40 = *(v0 + 24);
      v41 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v41, qword_1EC2156E0);
      v42 = v40;
      v43 = sub_1C754FEEC();
      LOBYTE(v40) = sub_1C75511AC();

      if (os_log_type_enabled(v43, v40))
      {
        v44 = *(v0 + 24);
        v45 = OUTLINED_FUNCTION_41_0();
        v46 = OUTLINED_FUNCTION_20_1();
        v59[0] = v46;
        *v45 = 136315138;
        v47 = [v44 localIdentifier];
        v48 = sub_1C755068C();
        v50 = v49;

        v51 = sub_1C6F765A4(v48, v50, v59);

        *(v45 + 4) = v51;
        OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v52, v53, "Suggestion %s has no photo library");
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      sub_1C6FE335C();
      swift_allocError();
      *v54 = 0;
      v54[1] = 0;
      swift_willThrow();
    }

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v12 = *&v62.is_nil;
    if (qword_1EC213C78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
    }

    v13 = *(v0 + 24);
    v14 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v14, qword_1EC2156E0);
    v15 = v13;
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 24);
      v19 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v19 = 136315394;
      v20 = [v18 localIdentifier];
      v21 = sub_1C755068C();
      v23 = v22;

      v24 = sub_1C6F765A4(v21, v23, v59);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v25 = OUTLINED_FUNCTION_14_10();
      switch(v1)
      {
        case 1:
          v25 = OUTLINED_FUNCTION_7_5();
          break;
        case 2:
          v25 = OUTLINED_FUNCTION_55_1();
          v24 = 0xE900000000000031;
          break;
        case 3:
          v25 = OUTLINED_FUNCTION_55_1();
          v24 = 0xE900000000000032;
          break;
        default:
          break;
      }

      v56 = sub_1C6F765A4(v25, v24, v59);

      *(v19 + 14) = v56;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Suggestion %s already has disparity score persisted for mode %s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    if (v12 <= 0.4)
    {
      v57 = v12;
    }

    else
    {
      v57 = 0.0;
    }

    v58 = *(v0 + 16);
    *v58 = v57;
    *(v58 + 8) = 0;
    *(v58 + 9) = v12 > 0.4;
    OUTLINED_FUNCTION_43();
  }

  return v55();
}

uint64_t sub_1C6FE21B4()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v0;

  if (v0)
  {
    v4 = sub_1C6FE271C;
  }

  else
  {
    v4 = sub_1C6FE22C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6FE22C4()
{
  v54 = v0;
  v1 = *(v0 + 72);
  if (!v1)
  {
    if (qword_1EC213C78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
    }

    v19 = *(v0 + 56);
    v20 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v20, qword_1EC2156E0);
    v21 = v19;
    v22 = sub_1C754FEEC();
    v23 = sub_1C755119C();

    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    if (v24)
    {
      v51 = *(v0 + 40);
      v28 = OUTLINED_FUNCTION_41_0();
      v29 = OUTLINED_FUNCTION_20_1();
      v53[0] = v29;
      *v28 = 136315138;
      v30 = [v25 localIdentifier];
      v31 = sub_1C755068C();
      v33 = v32;

      v34 = sub_1C6F765A4(v31, v33, v53);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1C6F5C000, v22, v23, "No cached spatial scene for asset %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v42 = 0;
    v43 = 0;
    goto LABEL_24;
  }

  v2 = MXIScene.disparityScore.getter();
  if (v3)
  {
    if (qword_1EC213C78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
    }

    v4 = *(v0 + 56);
    v5 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v5, qword_1EC2156E0);
    v6 = v4;
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 56);
    if (v9)
    {
      v11 = *(v0 + 88);
      v12 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = [v10 localIdentifier];
      v14 = sub_1C755068C();
      v16 = v15;

      v17 = sub_1C6F765A4(v14, v16, v53);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v18 = OUTLINED_FUNCTION_14_10();
      switch(v11)
      {
        case 1:
          v18 = OUTLINED_FUNCTION_7_5();
          break;
        case 2:
          v18 = OUTLINED_FUNCTION_55_1();
          v17 = 0xE900000000000031;
          break;
        case 3:
          v18 = OUTLINED_FUNCTION_55_1();
          v17 = 0xE900000000000032;
          break;
        default:
          break;
      }

      v46 = *(v0 + 48);
      v47 = *(v0 + 56);
      v52 = *(v0 + 40);
      v48 = sub_1C6F765A4(v18, v17, v53);

      *(v12 + 14) = v48;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "MXIScene for asset %s with mode %s has no disparityScore", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v44 = *(v0 + 40);
    }

    v43 = 0;
    v42 = 1;
LABEL_24:
    v45 = 1;
    goto LABEL_25;
  }

  v35 = *&v2;
  v36 = *(v0 + 80);
  v37 = *(v0 + 40);
  v38 = *(v0 + 24);
  LOBYTE(v53[0]) = **(v0 + 32);
  static Spatial3DCuration.Postgating.persist3DFeaturesProperties(for:with:score:)(v38, v53, v35);

  v40 = *(v0 + 48);
  v39 = *(v0 + 56);
  if (v36)
  {

    OUTLINED_FUNCTION_43();
    goto LABEL_26;
  }

  v45 = 0;
  v43 = v35 > 0.4;
  if (v35 <= 0.4)
  {
    v42 = *&v35;
  }

  else
  {
    v42 = 0;
  }

LABEL_25:
  v49 = *(v0 + 16);
  *v49 = v42;
  *(v49 + 8) = v45;
  *(v49 + 9) = v43;
  OUTLINED_FUNCTION_43();
LABEL_26:

  return v41();
}

uint64_t sub_1C6FE271C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t MXIScene.disparityScore.getter()
{
  if ([v0 attribute_])
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C6FE32F4(v5);
    return 0;
  }
}

void static Spatial3DCuration.Postgating.persist3DFeaturesProperties(for:with:score:)(void *a1, char *a2, double a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = [a1 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v5;
    *(v8 + 32) = a3;
    aBlock[4] = sub_1C6FE33B0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6FD8F68;
    aBlock[3] = &block_descriptor_0;
    v9 = _Block_copy(aBlock);
    v10 = a1;

    aBlock[0] = 0;
    v11 = [v7 performChangesAndWait:v9 error:aBlock];
    _Block_release(v9);
    if (v11)
    {
      v12 = aBlock[0];
    }

    else
    {
      v14 = aBlock[0];
      sub_1C754DBEC();

      swift_willThrow();
    }
  }

  else
  {
    sub_1C6FE335C();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
  }
}

BOOL static Spatial3DCuration.Postgating.passes(for:)()
{
  v0 = COERCE_DOUBLE(MXIScene.disparityScore.getter());
  if ((v1 & 1) == 0)
  {
    return v0 > 0.4;
  }

  if (qword_1EC213C78 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
  }

  v2 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v2, qword_1EC2156E0);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Unable to get disparity score for spatial scene", v5, 2u);
    OUTLINED_FUNCTION_109();
  }

  return 0;
}

uint64_t static Spatial3DCuration.Postgating.getDisparityScore(for:spatial3DResourceGenerator:)()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C6FE2B8C;

  return Spatial3DResourceGenerator.spatial3DScene(for:statusHandler:)();
}

uint64_t sub_1C6FE2B8C()
{
  OUTLINED_FUNCTION_42();
  *(*v1 + 32) = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6FE2CB8, 0, 0);
  }
}

uint64_t sub_1C6FE2CB8()
{
  v22 = v0;
  v1 = v0[4];
  if (v1)
  {
    v2 = MXIScene.disparityScore.getter();
    v4 = v3;
  }

  else
  {
    if (qword_1EC213C78 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EC213C78);
    }

    v5 = v0[2];
    v6 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v6, qword_1EC2156E0);
    v7 = v5;
    v8 = sub_1C754FEEC();
    LOBYTE(v5) = sub_1C755119C();

    if (os_log_type_enabled(v8, v5))
    {
      v9 = v0[2];
      v10 = OUTLINED_FUNCTION_41_0();
      v11 = OUTLINED_FUNCTION_20_1();
      v21 = v11;
      *v10 = 136315138;
      v12 = [v9 localIdentifier];
      v13 = sub_1C755068C();
      v15 = v14;

      v16 = sub_1C6F765A4(v13, v15, &v21);

      *(v10 + 4) = v16;
      OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v17, v18, "No cached spatial scene for asset %s");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v2 = 0;
    v4 = 1;
  }

  v19 = v0[1];

  return v19(v2, v4 & 1);
}

void sub_1C6FE2E5C(void *a1, char a2, double a3)
{
  v6 = [objc_opt_self() changeRequestForSuggestion_];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 featuresProperties];
    sub_1C75504AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215700, &qword_1C755ED08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    v10 = 0xD000000000000026;
    v11 = "eWallpaperPicker";
    v12 = inited;
    switch(a2)
    {
      case 1:
        v11 = "resPropertiesModeWidget1x1";
        v10 = 0xD000000000000030;
        break;
      case 2:
        v23 = "PNSpatial3DFeaturesPropertiesModeWidget1x1";
        goto LABEL_13;
      case 3:
        v23 = "PNSpatial3DFeaturesPropertiesModeWidget1x2";
LABEL_13:
        v11 = (v23 - 32);
        v10 = 0xD00000000000002ALL;
        break;
      default:
        break;
    }

    *(inited + 32) = v10;
    *(inited + 40) = v11 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98, &unk_1C7571030);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1C755BAB0;
    *(v24 + 32) = 0xD00000000000002BLL;
    *(v24 + 40) = 0x80000001C7598050;
    *(v24 + 48) = a3;
    *(v12 + 48) = sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
    v25 = sub_1C75504DC();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215710, &qword_1C755ED10);
    *&v29 = v25;
    sub_1C6F9ED18(&v29, &v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6FC7D4C();
    v26 = sub_1C755048C();

    [v7 setFeaturesProperties_];
  }

  else
  {
    if (qword_1EC213C78 != -1)
    {
      swift_once();
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EC2156E0);
    v14 = a1;
    oslog = sub_1C754FEEC();
    v15 = sub_1C755119C();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v29 = v17;
      *v16 = 136315138;
      v18 = [v14 localIdentifier];
      v19 = sub_1C755068C();
      v21 = v20;

      v22 = sub_1C6F765A4(v19, v21, &v29);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1C6F5C000, oslog, v15, "PHSuggestionChangeRequest could not be created for suggestion %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t Spatial3DResourceGenerator.GenerationMode.keyForFeaturesProperties.getter()
{
  result = 0xD000000000000026;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
    case 3:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FE32F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219770, &unk_1C755C740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6FE335C()
{
  result = qword_1EC2156F8;
  if (!qword_1EC2156F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.Postgating.Error, &type metadata for Spatial3DCuration.Postgating.Error, v0, v1);
    atomic_store(result, &qword_1EC2156F8);
  }

  return result;
}

_BYTE *sub_1C6FE33D8(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C6FE3480(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FE34D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1C6FE3524(void *result, int a2)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s10PostgatingO6ResultOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10PostgatingO6ResultOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1C6FE35B4(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FE35D0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExtendedTokenSource(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExtendedTokenSource(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6FE3654(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FE3670(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

id sub_1C6FE369C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
    v6 = a1;
    sub_1C75504FC();

    return sub_1C75504FC();
  }
}

uint64_t sub_1C6FE36F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t FreeformStoryGeneration.Montage.Uncurated.Story.identifier.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryGeneration.Montage.Uncurated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Montage.Uncurated.Story.musicCurationTask.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 384);
  *a1 = *(v1 + 376);
  a1[1] = v2;
}

Swift::Void __swiftcall FreeformStoryGeneration.Montage.Uncurated.Story.cancel()()
{
  if (qword_1EC213C80 != -1)
  {
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EC215718);
  sub_1C6FE3AE4(v0, v10);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    v6 = v10[0];
    v7 = v10[1];
    sub_1C75504FC();
    sub_1C6FE3B1C(v10);
    v8 = sub_1C6F765A4(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Cancelling music task for story %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C6FE3B1C(v10);
  }

  type metadata accessor for StoryMusicCuration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  sub_1C7550E1C();
  sub_1C7550E1C();
}

uint64_t sub_1C6FE3A64()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC215718);
  __swift_project_value_buffer(v0, qword_1EC215718);
  return sub_1C754FEFC();
}

uint64_t sub_1C6FE3B4C(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6[125] = v5;
  v6[124] = a5;
  v6[123] = a4;
  v6[122] = a2;
  v6[121] = a1;
  v9 = sub_1C754F2FC();
  v6[126] = v9;
  v6[127] = *(v9 - 8);
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  memcpy(v6 + 77, a2, 0x58uLL);
  memcpy(v6 + 40, a3, 0xC0uLL);
  v6[132] = a3[24];
  memcpy(v6 + 64, a3 + 25, 0x68uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C6FE3C84(uint64_t a1)
{
  sub_1C754F2CC();
  v2 = v1[132];
  v3 = v1[125];
  sub_1C754F2BC();
  sub_1C754F2BC();
  if (*(v2 + 16) >= *v3)
  {
    v24 = v1[131];
    v25 = v1[129];
    v26 = v1[127];
    v27 = v1[126];
    v28 = v1[125];
    v29 = v1[122];
    type metadata accessor for FreeformStoryCompletionGenerator.Diagnostics();
    swift_allocObject();
    sub_1C6FB03C4();
    v1[133] = v30;
    memcpy(v1 + 88, v29, 0x41uLL);
    v31 = *(v26 + 32);
    v1[134] = v31;
    v31(v25, v24, v27);
    v32 = _s9GeneratorVMa(0);
    sub_1C6FB5E28(*(v28 + *(v32 + 24)) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, (v1 + 116));
    memcpy(v1 + 97, v1 + 88, 0x41uLL);
    v1[114] = type metadata accessor for FreeformStoryCompletionAsync(0);
    v1[115] = sub_1C6FE58DC();
    __swift_allocate_boxed_opaque_existential_0(v1 + 111);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v1[135] = v33;
    *v33 = v34;
    v33[1] = sub_1C6FE4010;
    OUTLINED_FUNCTION_20_3();

    return sub_1C6FAE48C();
  }

  else
  {
    _s9GeneratorVMa(0);
    v4 = sub_1C754FEEC();
    v5 = sub_1C75511BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C6F5C000, v4, v5, "Not enough assets to use adapter, using empty completion and empty story title", v6, 2u);
      OUTLINED_FUNCTION_109();
    }

    v7 = v1[131];
    v8 = v1[127];
    v9 = v1[126];

    v1[109] = &type metadata for FreeformStoryCompletionSync;
    v1[110] = sub_1C6FB5578();
    v1[106] = swift_allocObject();
    sub_1C70BBFD0();
    (*(v8 + 8))(v7, v9);
    v10 = *(v8 + 32);
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_21_3();
    v11 = OUTLINED_FUNCTION_1_16();
    v10(v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v1[137] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_0_9(v12);
    OUTLINED_FUNCTION_20_3();

    return sub_1C6FE46B0(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_1C6FE4010()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1088) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FE4110()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1000);
  __swift_destroy_boxed_opaque_existential_1((v0 + 928));
  sub_1C6F699F8((v0 + 888), v0 + 848);
  sub_1C6FE4598(v2, v0 + 616, v1);

  v3 = *(v0 + 1072);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_21_3();
  v4 = OUTLINED_FUNCTION_1_16();
  v3(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1096) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_9(v5);

  return sub_1C6FE46B0(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C6FE41F0()
{
  v1 = v0[133];
  v2 = v0[130];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  __swift_destroy_boxed_opaque_existential_1(v0 + 116);
  __swift_deallocate_boxed_opaque_existential_1((v0 + 111));
  sub_1C6FE4598(v5, (v0 + 77), v1);

  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v6, v4);
  OUTLINED_FUNCTION_13_10();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C6FE42E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1104) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FE43E8(uint64_t a1)
{
  v2 = v1[138];
  sub_1C754F2EC();
  if (v2)
  {
    v3 = v1[121];
    FreeformStoryGeneration.Montage.Uncurated.Story.cancel()();
    swift_willThrow();
    sub_1C6FE3B1C(v3);
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 106);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C6FE44E8()
{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[124];
  __swift_destroy_boxed_opaque_existential_1(v0 + 106);
  (*(v1 + 8))(v3, v2);
  OUTLINED_FUNCTION_13_10();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C6FE4598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_19_1();
  v7 = v3 + *(_s9GeneratorVMa(v6) + 20);
  result = type metadata accessor for StoryGenerationSession(0);
  v9 = *(v7 + *(result + 24));
  if (v9)
  {

    sub_1C755180C();
    v11 = *(a2 + 72);
    v10 = *(a2 + 80);
    sub_1C75504FC();

    MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C7598200);

    sub_1C716A8F8(v11, v10, v9, a3);

    sub_1C6FAFAAC(v9);
  }

  return result;
}

uint64_t sub_1C6FE46B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1248) = v8;
  *(v9 + 1240) = a8;
  *(v9 + 1232) = a7;
  *(v9 + 1224) = a4;
  *(v9 + 1216) = a3;
  *(v9 + 1208) = a2;
  *(v9 + 1200) = a1;
  v12 = sub_1C754F2FC();
  *(v9 + 1256) = v12;
  *(v9 + 1264) = *(v12 - 8);
  *(v9 + 1272) = swift_task_alloc();
  *(v9 + 1280) = swift_task_alloc();
  *(v9 + 1288) = swift_task_alloc();
  *(v9 + 1296) = swift_task_alloc();
  *(v9 + 1372) = *a5;
  memcpy((v9 + 16), a6, 0x130uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C6FE47D0(uint64_t a1)
{
  v16 = v1;
  sub_1C754F2CC();
  v2 = *(v1 + 1296);
  v3 = *(v1 + 1280);
  v12 = *(v1 + 1288);
  v13 = *(v1 + 1272);
  v4 = *(v1 + 1264);
  v11 = *(v1 + 1256);
  v5 = *(v1 + 1232);
  v6 = *(v1 + 1208);
  sub_1C754F2BC();
  sub_1C754F2BC();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F15C();
  v7 = _s9GeneratorVMa(0);
  *(v1 + 1304) = v7;
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_1C6FB5E28(v6, v1 + 1160);
  *(v1 + 1368) = *(v7 + 20);
  v8 = *(v4 + 32);
  v8(v3, v2, v11);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FE5984(v1 + 1160);
  *(v1 + 1312) = v14;
  memcpy((v1 + 320), (v1 + 16), 0x130uLL);
  v8(v13, v12, v11);
  v9 = swift_task_alloc();
  *(v1 + 1328) = v9;
  *v9 = v1;
  v9[1] = sub_1C6FE4A60;

  return sub_1C7049E94();
}

uint64_t sub_1C6FE4A60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1336) = v4;
  *(v2 + 1344) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FE4B68()
{
  v1 = *(v0 + 1208);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 64) + **(v3 + 64));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1352) = v4;
  *v4 = v5;
  v4[1] = sub_1C6FE4C90;

  return v7(v0 + 992, v2, v3);
}

uint64_t sub_1C6FE4C90()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 1360) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FE4D98()
{
  v25 = v0;
  v1 = *(v0 + 1248) + *(v0 + 1368);
  v2 = *(v0 + 1008);
  *(v0 + 928) = *(v0 + 992);
  *(v0 + 944) = v2;
  v3 = *(v0 + 1040);
  *(v0 + 960) = *(v0 + 1024);
  *(v0 + 976) = v3;
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    v4 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    sub_1C755180C();
    sub_1C75504FC();

    v24[0] = v5;
    v24[1] = v4;
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75981E0);
    sub_1C6FDE928(v0 + 928, v0 + 1056);
    sub_1C716A8FC();
  }

  v6 = *(v0 + 1360);
  v7 = *(v0 + 1336);
  v8 = *(v0 + 1320);
  v9 = *(v0 + 1312);
  v10 = *(v0 + 1224);
  v11 = *(v0 + 1216);
  v12 = *(v0 + 1200);
  v13 = (*(v0 + 1372) < 0x20u) & *(v0 + 1372);
  *(v12 + 352) = &type metadata for FreeformStoryCompletionSync;
  *(v12 + 360) = sub_1C6FB5578();
  v14 = swift_allocObject();
  *(v12 + 328) = v14;
  v15 = *(v0 + 976);
  v14[3] = *(v0 + 960);
  v14[4] = v15;
  v16 = *(v0 + 944);
  v14[1] = *(v0 + 928);
  v14[2] = v16;
  *v12 = v11;
  *(v12 + 8) = v10;
  *(v12 + 16) = v13;
  memcpy((v12 + 24), (v0 + 16), 0x130uLL);
  *(v12 + 368) = v7;
  *(v12 + 376) = v9;
  *(v12 + 384) = v8;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 16, v0 + 624);

  sub_1C754F2EC();
  if (v6)
  {
    OUTLINED_FUNCTION_3_10();
    v17 = sub_1C754FEEC();
    v18 = sub_1C75511BC();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_7_6();
      v19 = OUTLINED_FUNCTION_15_5();
      v24[0] = v19;
      *v7 = 136315138;
      *(v7 + 4) = sub_1C6F765A4(v10, v9, v24);
      OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v20, v21, "Cancelling music task before story creation for story %s");
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_14_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    OUTLINED_FUNCTION_1_16();
    sub_1C7550E1C();
    OUTLINED_FUNCTION_8_0();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
    sub_1C6FE3B1C(*(v0 + 1200));
    OUTLINED_FUNCTION_9_8();

    OUTLINED_FUNCTION_43();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 1120));

    OUTLINED_FUNCTION_43();
  }

  return v22();
}

uint64_t sub_1C6FE50EC()
{
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  OUTLINED_FUNCTION_3_10();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7_6();
    v11 = OUTLINED_FUNCTION_15_5();
    *(v1 + 4) = OUTLINED_FUNCTION_22_8(4.8149e-34, v11, v6);
    OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v7, v8, "Cancelling music task before story creation for story %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_1_16();
  sub_1C7550E1C();
  OUTLINED_FUNCTION_8_0();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t sub_1C6FE526C()
{
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  OUTLINED_FUNCTION_3_10();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7_6();
    v11 = OUTLINED_FUNCTION_15_5();
    *(v1 + 4) = OUTLINED_FUNCTION_22_8(4.8149e-34, v11, v6);
    OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v7, v8, "Cancelling music task before story creation for story %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_1_16();
  sub_1C7550E1C();
  OUTLINED_FUNCTION_8_0();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t sub_1C6FE53EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a1 + 368);
  v7 = *(v6 + 16) + 1;
  v8 = 72;
  do
  {
    if (!--v7)
    {
      _s9GeneratorVMa(0);
      v14 = sub_1C754FEEC();
      v15 = sub_1C75511BC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C6F5C000, v14, v15, "No montage story due to empty shot list, returning invalid", v16, 2u);
        OUTLINED_FUNCTION_109();
      }

      sub_1C6FE5888();
      result = swift_allocError();
      *a3 = result;
      goto LABEL_9;
    }

    v9 = *(v6 + v8);
    v8 += 104;
  }

  while (!*(v9 + 16));
  _s9GeneratorVMa(0);
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  memcpy(__src, (a1 + 24), 0x130uLL);
  v10 = *(a2 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  sub_1C6FDE884(__dst, v20);
  v11 = sub_1C70499E4(v6, __src, v10);
  LOBYTE(v10) = v12;
  memcpy(v27, __src, sizeof(v27));
  result = sub_1C6FE0DC0(v27);
  if (v10)
  {
    *a3 = v11;
LABEL_9:
    a3[392] = 1;
    return result;
  }

  sub_1C6FE3AE4(a1, v20);
  __src[0] = v20[0];
  __src[1] = v20[1];
  LOBYTE(__src[2]) = v21;
  memcpy(v25, v22, sizeof(v25));
  memcpy(&__src[3], v22, 0x130uLL);
  sub_1C6FB5E28(v23, &__src[41]);
  __src[46] = v11;
  v17 = v23[6];
  v18 = v23[7];
  sub_1C75504FC();
  sub_1C6FDE884(v25, &v19);

  sub_1C6FE3B1C(v20);
  __src[47] = v17;
  __src[48] = v18;
  result = memcpy(a3, __src, 0x188uLL);
  a3[392] = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence21StoryPromptAttributesV5MusicVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6FE5658(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_1C6FE5698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s9GeneratorVMa(uint64_t a1)
{
  result = qword_1EC215730;
  if (!qword_1EC215730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6FE57C0(uint64_t a1)
{
  result = type metadata accessor for StoryGenerationSession(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FreeformStoryGenerator(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C754FF1C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C6FE5888()
{
  result = qword_1EC215740;
  if (!qword_1EC215740)
  {
    result = swift_getWitnessTable(aU_33, &_s9GeneratorV19UncuratedStoryErrorON, v0, v1);
    atomic_store(result, &qword_1EC215740);
  }

  return result;
}

unint64_t sub_1C6FE58DC()
{
  result = qword_1EDD08AF8;
  if (!qword_1EDD08AF8)
  {
    v3 = type metadata accessor for FreeformStoryCompletionAsync(255);
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCompletionAsync, v3, v0, v1);
    atomic_store(result, &qword_1EDD08AF8);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1CCA5F8E0);
  }

  return result;
}

uint64_t sub_1C6FE5984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215748, &unk_1C755EED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s9GeneratorV19UncuratedStoryErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C6FE5A9C()
{
  result = qword_1EC215750;
  if (!qword_1EC215750)
  {
    result = swift_getWitnessTable(byte_1C755EF34, &_s9GeneratorV19UncuratedStoryErrorON, v0, v1);
    atomic_store(result, &qword_1EC215750);
  }

  return result;
}

uint64_t FeatureSurveyQuestion.analyticsFieldName.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t FeatureSurveyQuestion.question.getter()
{
  v1 = *(v0 + 72);
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C6FE5B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  return v10;
}

void *FeatureSurveyQuestion.deinit()
{

  return v0;
}

uint64_t FeatureSurveyQuestion.__deallocating_deinit()
{
  FeatureSurveyQuestion.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FE5C8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FeatureSurveyQuestion();
  result = sub_1C755183C();
  *a2 = result;
  return result;
}

PhotosIntelligence::MemoryCreationAvailabilityState::IneligibilityReasons __swiftcall MemoryCreationAvailabilityState.IneligibilityReasons.init(hardwareIneligible:languageIneligible:localeIneligible:useCaseDoesNotSupportCurrentRegion:deviceLanguageAndSiriLanguageDifferent:featuredContentNotAllowed:serverIneligible:notOptedIntoGreymatter:mdmAndParentalControlBlocking:mcDisabledOnServer:otherReason:)(Swift::Bool hardwareIneligible, Swift::Bool languageIneligible, Swift::Bool localeIneligible, Swift::Bool useCaseDoesNotSupportCurrentRegion, Swift::Bool deviceLanguageAndSiriLanguageDifferent, Swift::Bool featuredContentNotAllowed, Swift::Bool serverIneligible, Swift::Bool notOptedIntoGreymatter, Swift::Bool mdmAndParentalControlBlocking, Swift::Bool mcDisabledOnServer, Swift::Bool otherReason)
{
  *v11 = hardwareIneligible;
  v11[1] = languageIneligible;
  v11[2] = localeIneligible;
  v11[3] = useCaseDoesNotSupportCurrentRegion;
  v11[4] = deviceLanguageAndSiriLanguageDifferent;
  v11[5] = featuredContentNotAllowed;
  v11[6] = serverIneligible;
  v11[7] = notOptedIntoGreymatter;
  v11[8] = mdmAndParentalControlBlocking;
  v11[9] = mcDisabledOnServer;
  v11[10] = otherReason;
  result.mdmAndParentalControlBlocking = languageIneligible;
  result.hardwareIneligible = hardwareIneligible;
  return result;
}

Swift::String __swiftcall MemoryCreationAvailabilityState.IneligibilityReasons.description()()
{
  v1 = *v0;
  v25 = v0[10];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x5B20202020, 0xE500000000000000);
  if (v1)
  {
    v2 = 9215458;
  }

  else
  {
    v2 = 8756450;
  }

  MEMORY[0x1CCA5CD70](v2, 0xA300000000000000);
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v3, v4);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v5, v6);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v7, v8);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v9, v10);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](0xD000000000000036);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v11, v12);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](0xD000000000000036);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v13, v14);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v15, v16);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70](v17, v18);
  OUTLINED_FUNCTION_3_1();
  if (v25)
  {
    v20 = 0x1000000000000027;
  }

  else
  {
    v20 = 0;
  }

  if (v25)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v20, v21);

  v22 = 0;
  v23 = 0xE000000000000000;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

uint64_t sub_1C6FE6034()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F050;
  OUTLINED_FUNCTION_3_1();
  *(v1 + 32) = 0xD000000000000012;
  *(v1 + 40) = v2;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = v4;
  *(inited + 72) = sub_1C7550C7C();
  *(inited + 80) = 0x6563697665447369;
  *(inited + 88) = 0xEF656C6261706143;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 96) = v5;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = v6;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000022;
  *(inited + 136) = v8;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 144) = v9;
  *(inited + 152) = 0xD000000000000026;
  *(inited + 160) = v10;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = v12;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 192) = v13;
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = v14;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 216) = v15;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = v16;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 240) = v17;
  *(inited + 248) = 0xD00000000000001FLL;
  *(inited + 256) = v18;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 264) = v19;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = v20;
  *(inited + 288) = sub_1C7550C7C();
  *(inited + 296) = 0x616552726568746FLL;
  *(inited + 304) = 0xEB000000006E6F73;
  *(inited + 312) = sub_1C7550C7C();
  sub_1C6FEAF80();
  return sub_1C75504DC();
}

uint64_t sub_1C6FE6358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C7598B00 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C7598B20 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C7598B40 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000022 && 0x80000001C7598B60 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000026 && 0x80000001C7598B90 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001C7598BC0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C7598BE0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x80000001C7598C00 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001DLL && 0x80000001C7598C20 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C7598C40 == a2;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x616552726568746FLL && a2 == 0xEB000000006E6F73)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C7551DBC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C6FE66AC(char a1)
{
  result = 0x616552726568746FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 6:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1C6FE6808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FE6358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FE6830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FE66A4();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FE6858(uint64_t a1)
{
  v2 = sub_1C6FE9A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE6894(uint64_t a1)
{
  v2 = sub_1C6FE9A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MemoryCreationAvailabilityState.IneligibilityReasons.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, __int16 a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_124();
  a24 = v27;
  a25 = v28;
  v58 = v26;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215758, &qword_1C755F090);
  OUTLINED_FUNCTION_3_0();
  v33 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v48 - v35;
  OUTLINED_FUNCTION_15_13();
  v37 = v25[5];
  v52 = v25[6];
  v53 = v37;
  v38 = v25[7];
  v50 = v25[8];
  v51 = v38;
  v49 = v25[9];
  v39 = v25[10];
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_1C6FE9A34();
  sub_1C755200C();
  a15 = 0;
  v40 = v58;
  sub_1C7551CDC();
  if (!v40)
  {
    v42 = v55;
    v41 = v56;
    v43 = v54;
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_4_8(v57, v44);
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_4_8(v41, v45);
    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_4_8(v42, v46);
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_4_8(v43, v47);
    LOBYTE(a12) = 5;
    OUTLINED_FUNCTION_4_8(v53, &a12);
    a11 = 6;
    OUTLINED_FUNCTION_4_8(v52, &a11);
    a10 = 7;
    OUTLINED_FUNCTION_4_8(v51, &a10);
    v61 = 8;
    OUTLINED_FUNCTION_4_8(v50, &v61);
    v60 = 9;
    OUTLINED_FUNCTION_4_8(v49, &v60);
    v59 = 10;
    OUTLINED_FUNCTION_4_8(v39, &v59);
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_125();
}

PhotosIntelligence::MemoryCreationAvailabilityState::UnavailabilityReasons __swiftcall MemoryCreationAvailabilityState.UnavailabilityReasons.init(notEnoughStorage:modelAssetsUnavailable:siriAssetsUnavailable:policyLimited:regionalSafetyAssetPendingUpdate:otherReason:sharedLibraryStateNotSupported:)(Swift::Bool notEnoughStorage, Swift::Bool modelAssetsUnavailable, Swift::Bool siriAssetsUnavailable, Swift::Bool policyLimited, Swift::Bool regionalSafetyAssetPendingUpdate, Swift::Bool otherReason, Swift::Bool_optional sharedLibraryStateNotSupported)
{
  v7->value = notEnoughStorage;
  v7[1].value = modelAssetsUnavailable;
  v7[2].value = siriAssetsUnavailable;
  v7[3].value = policyLimited;
  v7[4].value = regionalSafetyAssetPendingUpdate;
  v7[5].value = otherReason;
  v7[6].value = sharedLibraryStateNotSupported.value;
  result.notEnoughStorage = notEnoughStorage;
  return result;
}

PhotosIntelligence::MemoryCreationAvailabilityState::UnavailabilityReasons __swiftcall MemoryCreationAvailabilityState.UnavailabilityReasons.copy(withSharedLibraryStateNotSupported:)(Swift::Bool withSharedLibraryStateNotSupported)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  *v1 = *v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[6] = withSharedLibraryStateNotSupported;
  result.notEnoughStorage = withSharedLibraryStateNotSupported;
  return result;
}

Swift::String __swiftcall MemoryCreationAvailabilityState.UnavailabilityReasons.description()()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = v0[6];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x5B20202020, 0xE500000000000000);
  if (v1)
  {
    v4 = 9215458;
  }

  else
  {
    v4 = 8756450;
  }

  MEMORY[0x1CCA5CD70](v4, 0xA300000000000000);
  MEMORY[0x1CCA5CD70](0xD000000000000039, 0x80000001C7598600);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD00000000000003CLL);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD00000000000003CLL);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x1CCA5CD70](0xD000000000000027, 0x80000001C75986C0);
  OUTLINED_FUNCTION_3_1();
  if (v2)
  {
    v6 = 0x1000000000000023;
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v6, v7);

  MEMORY[0x1CCA5CD70](0x5B202020200ALL, 0xE600000000000000);
  if (v3)
  {
    v8 = 9215458;
  }

  else
  {
    v8 = 8756450;
  }

  if (v3 == 2)
  {
    v9 = 0x6E757220746F4ELL;
  }

  else
  {
    v9 = v8;
  }

  if (v3 == 2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xA300000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v10);

  MEMORY[0x1CCA5CD70](0xD00000000000003DLL, 0x80000001C75986F0);
  v11 = 0;
  v12 = 0xE000000000000000;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1C6FE6DA4()
{
  v1 = *v0;
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  OUTLINED_FUNCTION_3_1();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = v7;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = v9;
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 96) = v10;
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = v11;
  *(inited + 120) = sub_1C7550C7C();
  sub_1C6FEAF80();
  v12 = sub_1C75504DC();
  if (v2 != 2)
  {
    sub_1C7550C7C();
    v13 = OUTLINED_FUNCTION_16_8();
    sub_1C6FC7E40(v1, 0xD00000000000001ELL, 0x80000001C7598CF0, v13);
  }

  return v12;
}

uint64_t static MemoryCreationAvailabilityState.UnavailabilityReasons.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0 && ((a1[4] ^ a2[4]) & 1) == 0 && ((a1[5] ^ a2[5]) & 1) == 0)
  {
    v4 = a1[6];
    v5 = a2[6];
    if (v4 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C6FE6FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C7598C60 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C7598C80 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001C7598CA0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x694C7963696C6F70 && a2 == 0xED0000646574696DLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000020 && 0x80000001C7598CC0 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x616552726568746FLL && a2 == 0xEB000000006E6F73;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ELL && 0x80000001C7598CF0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FE71FC(char a1)
{
  result = 0x694C7963696C6F70;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0x616552726568746FLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C6FE730C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FE6FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FE7334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FE71F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FE735C(uint64_t a1)
{
  v2 = sub_1C6FE9A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE7398(uint64_t a1)
{
  v2 = sub_1C6FE9A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MemoryCreationAvailabilityState.UnavailabilityReasons.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v37 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215768, &qword_1C755F098);
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v36 - v31;
  v33 = v23[1];
  v36[4] = v23[2];
  v36[5] = v33;
  v34 = v23[3];
  v36[2] = v23[4];
  v36[3] = v34;
  v36[1] = v23[5];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C6FE9A88();
  sub_1C755200C();
  v35 = v37;
  sub_1C7551CDC();
  if (!v35)
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_2_8();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_2_8();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_2_8();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_2_8();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_2_8();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_2_8();
    sub_1C7551C8C();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_125();
}

void __swiftcall MemoryCreationAvailabilityState.ProcessingIncompleteReasons.init(processingNotComputed:inconsistentMediaAnalysisImageVersion:graphNotBuilt:vuIndexIsNotFullClustered:thresholdNotMetForNumberOfCuratedAssets:fractionOfCuratedAssetsWithCaptions:fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex:fractionOfCuratedAssetsWithEmbeddingsInVectorIndex:fractionOfCuratedAssetsIndexedInVUClustering:)(PhotosIntelligence::MemoryCreationAvailabilityState::ProcessingIncompleteReasons *__return_ptr retstr, Swift::Bool processingNotComputed, Swift::Bool_optional inconsistentMediaAnalysisImageVersion, Swift::Bool_optional graphNotBuilt, Swift::Bool_optional vuIndexIsNotFullClustered, Swift::Bool_optional thresholdNotMetForNumberOfCuratedAssets, Swift::Double_optional fractionOfCuratedAssetsWithCaptions, Swift::Double_optional fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex, Swift::Double_optional fractionOfCuratedAssetsWithEmbeddingsInVectorIndex, Swift::Double_optional fractionOfCuratedAssetsIndexedInVUClustering)
{
  retstr->processingNotComputed = processingNotComputed;
  retstr->inconsistentMediaAnalysisImageVersion = inconsistentMediaAnalysisImageVersion;
  retstr->graphNotBuilt = graphNotBuilt;
  retstr->vuIndexIsNotFullClustered = vuIndexIsNotFullClustered;
  retstr->thresholdNotMetForNumberOfCuratedAssets = thresholdNotMetForNumberOfCuratedAssets;
  *(&retstr->fractionOfCuratedAssetsWithCaptions.value + 3) = *&fractionOfCuratedAssetsWithCaptions.is_nil;
  BYTE2(retstr->fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex.value) = fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex.is_nil;
  *(&retstr->fractionOfCuratedAssetsWithEmbeddingsInVectorIndex.value + 1) = *&fractionOfCuratedAssetsWithEmbeddingsInVectorIndex.is_nil;
  LOBYTE(retstr->fractionOfCuratedAssetsIndexedInVUClustering.value) = fractionOfCuratedAssetsIndexedInVUClustering.is_nil;
  *&retstr->fractionOfCuratedAssetsIndexedInVUClustering.is_nil = v10;
  BYTE2(retstr[1].fractionOfCuratedAssetsWithCaptions.value) = v11 & 1;
  *(&retstr[1].fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex.value + 1) = v12;
  LOBYTE(retstr[1].fractionOfCuratedAssetsWithEmbeddingsInVectorIndex.value) = v13 & 1;
}

Swift::String __swiftcall MemoryCreationAvailabilityState.ProcessingIncompleteReasons.description()()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_10_2();
    v2 = 0xD000000000000025;
  }

  else
  {
    HIDWORD(v59) = *(v0 + 64);
    v56 = *(v0 + 56);
    HIDWORD(v53) = *(v0 + 48);
    v50 = *(v0 + 40);
    HIDWORD(v47) = *(v0 + 32);
    v44 = *(v0 + 24);
    HIDWORD(v41) = *(v0 + 16);
    v38 = *(v0 + 8);
    HIDWORD(v35) = *(v0 + 4);
    sub_1C755180C();
    OUTLINED_FUNCTION_7_7();
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_37_9();

    OUTLINED_FUNCTION_7_7();
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_37_9();

    OUTLINED_FUNCTION_7_7();
    MEMORY[0x1CCA5CD70](0xD000000000000018);
    OUTLINED_FUNCTION_37_9();

    OUTLINED_FUNCTION_7_7();
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_37_9();

    OUTLINED_FUNCTION_7_7();
    MEMORY[0x1CCA5CD70]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215778, &qword_1C755F0A0);
    v3 = sub_1C75506EC();
    MEMORY[0x1CCA5CD70](v3);

    OUTLINED_FUNCTION_7_7();
    v4 = MEMORY[0x1CCA5CD70]();
    v12 = OUTLINED_FUNCTION_27_7(v4, v5, v6, v7, v8, v9, v10, v11, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v44, SHIDWORD(v44), SBYTE4(v41));
    MEMORY[0x1CCA5CD70](v12);

    OUTLINED_FUNCTION_7_7();
    v13 = MEMORY[0x1CCA5CD70]();
    v21 = OUTLINED_FUNCTION_27_7(v13, v14, v15, v16, v17, v18, v19, v20, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v51, SHIDWORD(v51), v62);
    MEMORY[0x1CCA5CD70](v21);

    OUTLINED_FUNCTION_7_7();
    v22 = MEMORY[0x1CCA5CD70]();
    v30 = OUTLINED_FUNCTION_27_7(v22, v23, v24, v25, v26, v27, v28, v29, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v58, SHIDWORD(v58), v63);
    MEMORY[0x1CCA5CD70](v30);

    OUTLINED_FUNCTION_7_7();
    MEMORY[0x1CCA5CD70]();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1C6FE79C0()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v47 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  OUTLINED_FUNCTION_3_1();
  *(v13 + 32) = 0xD000000000000015;
  *(v13 + 40) = v14;
  *(inited + 48) = sub_1C7550C7C();
  sub_1C6FEAF80();
  v15 = sub_1C75504DC();
  if (v1 != 2)
  {
    sub_1C7550C7C();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_9_9();
    v16 = OUTLINED_FUNCTION_1_17();
    sub_1C6FC7E40(v16, v17, v18, v19);
    v15 = v48;
  }

  if (v2 != 2)
  {
    sub_1C7550C7C();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_9_9();
    v20 = OUTLINED_FUNCTION_1_17();
    sub_1C6FC7E40(v20, 0xD00000000000001BLL, v21, v22);
    v15 = v48;
  }

  if (v3 != 2)
  {
    sub_1C7550C7C();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_9_9();
    v23 = OUTLINED_FUNCTION_1_17();
    sub_1C6FC7E40(v23, v24, v25, v26);
    v15 = v48;
  }

  if (v4 == 2)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1C7550C7C();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_9_9();
    v35 = OUTLINED_FUNCTION_1_17();
    sub_1C6FC7E40(v35, v36, v37, v38);
    v15 = v48;
    if (v6)
    {
LABEL_9:
      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  sub_1C7550F2C(v5);
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_9_9();
  v39 = OUTLINED_FUNCTION_1_17();
  sub_1C6FC7E40(v39, v40, v41, v42);
  v15 = v48;
  if (v8)
  {
LABEL_10:
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  sub_1C7550F2C(v7);
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_9_9();
  v43 = OUTLINED_FUNCTION_1_17();
  sub_1C6FC7E40(v43, v44, v45, v46);
  v15 = v48;
  if ((v10 & 1) == 0)
  {
LABEL_11:
    sub_1C7550F2C(v9);
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_9_9();
    v27 = OUTLINED_FUNCTION_1_17();
    sub_1C6FC7E40(v27, v28, v29, v30);
    v15 = v48;
  }

LABEL_12:
  if ((v47 & 1) == 0)
  {
    sub_1C7550F2C(v11);
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_9_9();
    v31 = OUTLINED_FUNCTION_1_17();
    sub_1C6FC7E40(v31, 0xD00000000000001BLL, v32, v33);
    return v48;
  }

  return v15;
}

BOOL static MemoryCreationAvailabilityState.ProcessingIncompleteReasons.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = a1[5];
  v12 = *(a1 + 48);
  v13 = a1[7];
  v14 = *(a1 + 64);
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *(a2 + 3);
  v18 = *(a2 + 4);
  if (v3 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v15 == 2 || ((v15 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 2 || ((v16 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  if (v5 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v17 == 2 || ((v17 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v6 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

    goto LABEL_24;
  }

  result = 0;
  if (v18 != 2 && ((v18 ^ v6) & 1) == 0)
  {
LABEL_24:
    if (v8)
    {
      if (!*(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (v7 == a2[1])
      {
        v19 = *(a2 + 16);
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    if (v10)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v9 == a2[3])
      {
        v20 = *(a2 + 32);
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v11 == a2[5])
      {
        v21 = *(a2 + 48);
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if ((v14 & 1) == 0)
    {
      if (v13 == a2[7])
      {
        v22 = *(a2 + 64);
      }

      else
      {
        v22 = 1;
      }

      return (v22 & 1) == 0;
    }

    return (a2[8] & 1) != 0;
  }

  return result;
}

uint64_t sub_1C6FE7E04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C7598D10 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000025 && 0x80000001C7598D30 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746F4E6870617267 && a2 == 0xED0000746C697542;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x80000001C7598D60 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000027 && 0x80000001C7598D80 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000023 && 0x80000001C7598DB0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000035 && 0x80000001C7598DE0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000032 && 0x80000001C7598E20 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000002CLL && 0x80000001C7598E60 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C7551DBC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C6FE80C8(char a1)
{
  result = 0x746F4E6870617267;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000035;
      break;
    case 7:
      result = 0xD000000000000032;
      break;
    case 8:
      result = 0xD00000000000002CLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1C6FE8214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FE7E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FE823C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FE80C0();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FE8264(uint64_t a1)
{
  v2 = sub_1C6FE9ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE82A0(uint64_t a1)
{
  v2 = sub_1C6FE9ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MemoryCreationAvailabilityState.ProcessingIncompleteReasons.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, __int16 a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_124();
  a24 = v27;
  a25 = v28;
  v50 = v26;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215780, &qword_1C755F0A8);
  OUTLINED_FUNCTION_3_0();
  v32 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v44 - v34;
  OUTLINED_FUNCTION_15_13();
  v48 = *(v25 + 8);
  v49 = *(v25 + 16);
  v46 = *(v25 + 24);
  v47 = *(v25 + 32);
  v44 = *(v25 + 40);
  v45 = *(v25 + 48);
  v36 = *(v25 + 56);
  v37 = *(v25 + 64);
  v38 = v30[3];
  v39 = v30;
  v41 = v40;
  __swift_project_boxed_opaque_existential_1(v39, v38);
  sub_1C6FE9ADC();
  sub_1C755200C();
  a15 = 0;
  v42 = v50;
  sub_1C7551CDC();
  if (v42)
  {
    (*(v32 + 8))(v35, v41);
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    sub_1C7551C8C();
    OUTLINED_FUNCTION_19_10();
    v50 = v35;
    sub_1C7551C8C();
    OUTLINED_FUNCTION_18_6();
    sub_1C7551C8C();
    OUTLINED_FUNCTION_17_10();
    v43 = v50;
    sub_1C7551C8C();
    LOBYTE(a12) = 5;
    OUTLINED_FUNCTION_13_11(v48, v49, &a12);
    a11 = 6;
    OUTLINED_FUNCTION_13_11(v46, v47, &a11);
    a10 = 7;
    OUTLINED_FUNCTION_13_11(v44, v45, &a10);
    v51 = 8;
    OUTLINED_FUNCTION_13_11(v36, v37, &v51);
    (*(v32 + 8))(v43, v41);
  }

  OUTLINED_FUNCTION_125();
}

void MemoryCreationAvailabilityState.description.getter()
{
  v1 = *(v0 + 64);
  switch(v1 >> 6)
  {
    case 1u:
      OUTLINED_FUNCTION_22_1();
      sub_1C755180C();
      OUTLINED_FUNCTION_20_11();
      MEMORY[0x1CCA5CD70](v8 + 40, v9 | 0x8000000000000000);
      countAndFlagsBits = MemoryCreationAvailabilityState.UnavailabilityReasons.description()()._countAndFlagsBits;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_22_1();
      sub_1C755180C();
      OUTLINED_FUNCTION_20_11();
      MEMORY[0x1CCA5CD70](v5 + 19, v6 | 0x8000000000000000);
      v7 = MemoryCreationAvailabilityState.ProcessingIncompleteReasons.description()()._countAndFlagsBits;
      MEMORY[0x1CCA5CD70](v7);

      break;
    case 3u:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      OUTLINED_FUNCTION_22_1();
      sub_1C755180C();
      OUTLINED_FUNCTION_20_11();
      MEMORY[0x1CCA5CD70](v2 + 30, v3 | 0x8000000000000000);
      countAndFlagsBits = MemoryCreationAvailabilityState.IneligibilityReasons.description()()._countAndFlagsBits;
LABEL_6:
      MEMORY[0x1CCA5CD70](countAndFlagsBits);

      break;
  }
}

Swift::String_optional __swiftcall MemoryCreationAvailabilityState.jsonDescription()()
{
  v1 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C754D76C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C754D75C();
  sub_1C754D77C();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C6FE9B30();
  v3 = sub_1C754D78C();
  v5 = v4;
  sub_1C75506CC();
  v6 = sub_1C75506AC();
  v8 = v7;
  sub_1C6FC1640(v3, v5);

  if (!v8)
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v6;
  v10 = v8;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int __swiftcall MemoryCreationAvailabilityState.asInt()()
{
  v1 = v0[4].u8[0];
  result = 1;
  switch(v1 >> 6)
  {
    case 1u:
      result = 2;
      break;
    case 2u:
      result = 4;
      break;
    case 3u:
      v3 = vorrq_s8(vorrq_s8(*v0, v0[2]), vorrq_s8(v0[1], v0[3]));
      if (vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
      {
        v4 = 0;
      }

      else
      {
        v4 = v1 == 192;
      }

      if (v4)
      {
        result = 0;
      }

      else
      {
        result = 3;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t static MemoryCreationAvailabilityState.== infix(_:_:)(uint64_t a1, __int128 *a2, uint8x8_t a3)
{
  a3.i32[0] = *a1;
  v3 = vmovl_u8(a3).u64[0];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 7);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *a2;
  v18 = *(a2 + 2);
  v19 = *(a2 + 3);
  v21 = *(a2 + 4);
  v20 = *(a2 + 5);
  v23 = *(a2 + 6);
  v22 = *(a2 + 7);
  v24 = *(a2 + 64);
  v25 = BYTE5(v17);
  switch(v16 >> 6)
  {
    case 1u:
      if ((v24 & 0xC0) != 0x40)
      {
        goto LABEL_22;
      }

      v27 = BYTE6(v17);
      LODWORD(v39) = vuzp1_s8((*&v3 & 0xFF01FF01FF01FF01), *&v17).u32[0];
      BYTE4(v39) = v4 & 1;
      BYTE5(v39) = v5 & 1;
      BYTE6(v39) = v6;
      LOBYTE(v31) = v17 & 1;
      v28 = vdupq_lane_s64(v17, 0);
      *v28.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_1C755F080), vshlq_u64(v28, xmmword_1C755F070))), 0x1000100010001);
      *(&v31 + 1) = vuzp1_s8(*v28.i8, *v28.i8).u32[0];
      BYTE5(v31) = v25 & 1;
      BYTE6(v31) = v27;
      v26 = static MemoryCreationAvailabilityState.UnavailabilityReasons.== infix(_:_:)(&v39, &v31);
      break;
    case 2u:
      if ((v24 & 0xC0) != 0x80)
      {
        goto LABEL_22;
      }

      LODWORD(v39) = vuzp1_s8(v3, *&v17).u32[0];
      BYTE4(v39) = v4;
      BYTE5(v39) = v5;
      BYTE6(v39) = v6;
      HIBYTE(v39) = v8;
      v40 = v9;
      v41 = v10;
      v42 = v11;
      v43 = v12;
      v44 = v13;
      v45 = v14;
      v46 = v15;
      v47 = v16 & 0x3F;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      v34 = v21;
      v35 = v20;
      v36 = v23;
      v37 = v22;
      v38 = v24 & 0x3F;
      v26 = static MemoryCreationAvailabilityState.ProcessingIncompleteReasons.== infix(_:_:)(&v39, &v31);
      break;
    case 3u:
      if (v16 != 192 || v10 | v9 | v11 | v12 | v13 | v14 | v15 | v3.u8[0] | (v3.u8[2] << 8) | (v3.u8[4] << 16) & 0xFFFFFFFF00FFFFFFLL | (v3.u8[6] << 24) | (v4 << 32) | (v5 << 40) | (v6 << 48) | (v7 << 56))
      {
        if (v24 <= 0xBF)
        {
          goto LABEL_22;
        }

        v29 = v24 == 192 && v17 == 1;
        if (!v29 || v18 | v19 | v21 | v20 | v23 | v22 | *(&v17 + 1))
        {
          goto LABEL_22;
        }
      }

      else if (v24 < 0xC0 || v18 | v17 | v19 | v21 | v20 | v23 | *(&v17 + 1) | v22 || v24 != 192)
      {
        goto LABEL_22;
      }

      v26 = 1;
      break;
    default:
      if (v24 > 0x3F)
      {
LABEL_22:
        v26 = 0;
      }

      else
      {
        LOBYTE(v39) = v3.i8[0];
        BYTE1(v39) = v3.i8[2];
        BYTE2(v39) = v3.i8[4];
        BYTE3(v39) = v3.i8[6];
        BYTE4(v39) = v4;
        BYTE5(v39) = v5;
        BYTE6(v39) = v6;
        HIBYTE(v39) = v8;
        LOWORD(v40) = v9;
        BYTE2(v40) = BYTE2(v9);
        *&v31 = v17;
        BYTE10(v31) = BYTE10(v17);
        WORD4(v31) = WORD4(v17);
        v26 = static MemoryCreationAvailabilityState.IneligibilityReasons.== infix(_:_:)(&v39, &v31);
      }

      break;
  }

  return v26 & 1;
}

uint64_t sub_1C6FE8D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616974696E696E75 && a2 == 0xED000064657A696CLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x626967696C656E69 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C7598E90 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C6FE8EC4(char a1)
{
  result = 0x616974696E696E75;
  switch(a1)
  {
    case 1:
      result = 0x626967696C656E69;
      break;
    case 2:
      result = 0x616C696176616E75;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6C62616C69617661;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FE8F98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C6FE9014(uint64_t a1)
{
  v2 = sub_1C6FE9BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE9050(uint64_t a1)
{
  v2 = sub_1C6FE9BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FE9094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FE8D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FE90BC(uint64_t a1)
{
  v2 = sub_1C6FE9B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE90F8(uint64_t a1)
{
  v2 = sub_1C6FE9B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FE9138(uint64_t a1)
{
  v2 = sub_1C6FE9D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE9174(uint64_t a1)
{
  v2 = sub_1C6FE9D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FE91B0(uint64_t a1)
{
  v2 = sub_1C6FE9C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE91EC(uint64_t a1)
{
  v2 = sub_1C6FE9C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FE9228(uint64_t a1)
{
  v2 = sub_1C6FE9CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE9264(uint64_t a1)
{
  v2 = sub_1C6FE9CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FE92A0(uint64_t a1)
{
  v2 = sub_1C6FE9E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FE92DC(uint64_t a1)
{
  v2 = sub_1C6FE9E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MemoryCreationAvailabilityState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v22 = v21;
  v68[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215798, &qword_1C755F0B0);
  OUTLINED_FUNCTION_3_0();
  v68[5] = v23;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v25);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2157A0, &qword_1C755F0B8);
  OUTLINED_FUNCTION_3_0();
  v72 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v28);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2157A8, &qword_1C755F0C0);
  OUTLINED_FUNCTION_3_0();
  v70 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v31);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2157B0, &qword_1C755F0C8);
  OUTLINED_FUNCTION_3_0();
  v68[8] = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v34);
  v68[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2157B8, &qword_1C755F0D0);
  OUTLINED_FUNCTION_3_0();
  v68[2] = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2157C0, &qword_1C755F0D8);
  OUTLINED_FUNCTION_3_0();
  v86 = v39;
  v87 = v38;
  OUTLINED_FUNCTION_27_0();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v68 - v42;
  v41.n128_u32[0] = *v20;
  v88 = vmovl_u8(v41.n128_u64[0]);
  v44 = *(v20 + 4);
  v45 = *(v20 + 5);
  v46 = *(v20 + 6);
  v47 = *(v20 + 7);
  v80 = *(v20 + 7);
  v48 = *(v20 + 16);
  v81 = *(v20 + 8);
  v49 = *(v20 + 32);
  v78 = *(v20 + 24);
  v79 = v48;
  v76 = v49;
  v50 = *(v20 + 48);
  v77 = *(v20 + 40);
  v75 = v50;
  v74 = *(v20 + 56);
  v51 = *(v20 + 64);
  v52 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1C6FE9B84();
  v85 = v43;
  sub_1C755200C();
  v53 = v51;
  v54 = v88.u16[3];
  v55 = v88.u16[2];
  v56 = v88.u16[1];
  v57 = v88.i8[0];
  v82 = v44;
  v83 = v45;
  v84 = v46;
  switch(v53 >> 6)
  {
    case 1u:
      LOBYTE(v89) = 2;
      sub_1C6FE9CD4();
      OUTLINED_FUNCTION_14_11(&type metadata for MemoryCreationAvailabilityState.UnavailableCodingKeys, &v89);
      v89 = vuzp1_s8((v88.i64[0] & 0xFF01FF01FF01FF01), (v88.i64[0] & 0xFF01FF01FF01FF01)).u32[0];
      v90 = v82 & 1;
      v91 = v83 & 1;
      v92 = v84;
      sub_1C6FE9D28();
      OUTLINED_FUNCTION_34_6();
      goto LABEL_8;
    case 2u:
      v63 = v53 & 0x3F;
      LOBYTE(v89) = 3;
      sub_1C6FE9C2C();
      OUTLINED_FUNCTION_14_11(&type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteCodingKeys, &v89);
      v89 = vuzp1_s8(*v88.i8, *v88.i8).u32[0];
      OUTLINED_FUNCTION_11_9();
      v93 = v81;
      v94 = v79;
      v95[0] = v78;
      v95[1] = v76;
      v95[2] = v77;
      v96[0] = v75;
      v96[1] = v74;
      v97 = v63;
      sub_1C6FE9C80();
      OUTLINED_FUNCTION_34_6();
LABEL_8:
      OUTLINED_FUNCTION_26_3();
      v67(v56, v46);
      (*(v86 + 8))(v44, v55);
      break;
    case 3u:
      if (v53 != 192 || v79 | v81 | v78 | v76 | v77 | v75 | v74 | v88.u8[0] | (v88.u8[2] << 8) | (v88.u8[4] << 16) & 0xFFFFFFFF00FFFFFFLL | (v88.u8[6] << 24) | (v44 << 32) | (v45 << 40) | (v46 << 48) | (v47 << 56))
      {
        LOBYTE(v89) = 4;
        sub_1C6FE9BD8();
        OUTLINED_FUNCTION_23_8(&type metadata for MemoryCreationAvailabilityState.AvailableCodingKeys, &v89);
        OUTLINED_FUNCTION_26_3();
        v65 = v55;
        v66 = v96;
      }

      else
      {
        LOBYTE(v89) = 0;
        sub_1C6FE9E24();
        OUTLINED_FUNCTION_23_8(&type metadata for MemoryCreationAvailabilityState.UninitializedCodingKeys, &v89);
        OUTLINED_FUNCTION_26_3();
        v65 = v55;
        v66 = v95;
      }

      v64(v65, *(v66 - 32));
      (*(v86 + 8))(v52, v54);
      break;
    default:
      LOBYTE(v89) = 1;
      sub_1C6FE9D7C();
      v58 = v68[7];
      v59 = v87;
      v60 = v85;
      sub_1C7551C6C();
      LOBYTE(v89) = v57;
      BYTE1(v89) = v56;
      BYTE2(v89) = v55;
      HIBYTE(v89) = v54;
      OUTLINED_FUNCTION_11_9();
      BYTE2(v93) = BYTE2(v81);
      LOWORD(v93) = v81;
      sub_1C6FE9DD0();
      v61 = v69;
      sub_1C7551D2C();
      OUTLINED_FUNCTION_26_3();
      v62(v58, v61);
      (*(v86 + 8))(v60, v59);
      break;
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C6FE9A34()
{
  result = qword_1EC215760;
  if (!qword_1EC215760)
  {
    result = swift_getWitnessTable(asc_1C755FC8C, &type metadata for MemoryCreationAvailabilityState.IneligibilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215760);
  }

  return result;
}

unint64_t sub_1C6FE9A88()
{
  result = qword_1EC215770;
  if (!qword_1EC215770)
  {
    result = swift_getWitnessTable(asc_1C755FC3C, &type metadata for MemoryCreationAvailabilityState.UnavailabilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215770);
  }

  return result;
}

unint64_t sub_1C6FE9ADC()
{
  result = qword_1EC215788;
  if (!qword_1EC215788)
  {
    result = swift_getWitnessTable(aI_24, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215788);
  }

  return result;
}

unint64_t sub_1C6FE9B30()
{
  result = qword_1EC215790;
  if (!qword_1EC215790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MemoryCreationAvailabilityState, &type metadata for MemoryCreationAvailabilityState, v0, v1);
    atomic_store(result, &qword_1EC215790);
  }

  return result;
}

unint64_t sub_1C6FE9B84()
{
  result = qword_1EC2157C8;
  if (!qword_1EC2157C8)
  {
    result = swift_getWitnessTable(byte_1C755FB9C, &type metadata for MemoryCreationAvailabilityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2157C8);
  }

  return result;
}

unint64_t sub_1C6FE9BD8()
{
  result = qword_1EC2157D0;
  if (!qword_1EC2157D0)
  {
    result = swift_getWitnessTable(aM_21, &type metadata for MemoryCreationAvailabilityState.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2157D0);
  }

  return result;
}

unint64_t sub_1C6FE9C2C()
{
  result = qword_1EC2157D8;
  if (!qword_1EC2157D8)
  {
    result = swift_getWitnessTable(byte_1C755FAFC, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2157D8);
  }

  return result;
}

unint64_t sub_1C6FE9C80()
{
  result = qword_1EC2157E0;
  if (!qword_1EC2157E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MemoryCreationAvailabilityState.ProcessingIncompleteReasons, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteReasons, v0, v1);
    atomic_store(result, &qword_1EC2157E0);
  }

  return result;
}

unint64_t sub_1C6FE9CD4()
{
  result = qword_1EC2157E8;
  if (!qword_1EC2157E8)
  {
    result = swift_getWitnessTable(asc_1C755FAAC, &type metadata for MemoryCreationAvailabilityState.UnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2157E8);
  }

  return result;
}

unint64_t sub_1C6FE9D28()
{
  result = qword_1EC2157F0;
  if (!qword_1EC2157F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MemoryCreationAvailabilityState.UnavailabilityReasons, &type metadata for MemoryCreationAvailabilityState.UnavailabilityReasons, v0, v1);
    atomic_store(result, &qword_1EC2157F0);
  }

  return result;
}

unint64_t sub_1C6FE9D7C()
{
  result = qword_1EC2157F8;
  if (!qword_1EC2157F8)
  {
    result = swift_getWitnessTable(asc_1C755FA5C, &type metadata for MemoryCreationAvailabilityState.IneligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2157F8);
  }

  return result;
}

unint64_t sub_1C6FE9DD0()
{
  result = qword_1EC215800;
  if (!qword_1EC215800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MemoryCreationAvailabilityState.IneligibilityReasons, &type metadata for MemoryCreationAvailabilityState.IneligibilityReasons, v0, v1);
    atomic_store(result, &qword_1EC215800);
  }

  return result;
}

unint64_t sub_1C6FE9E24()
{
  result = qword_1EC215808;
  if (!qword_1EC215808)
  {
    result = swift_getWitnessTable(byte_1C755FA0C, &type metadata for MemoryCreationAvailabilityState.UninitializedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215808);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MemoryCreationAvailabilityState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1C6FE9EA8(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return ((*a1 >> 7) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_memcpy11_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationAvailabilityState.IneligibilityReasons(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[11])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for MemoryCreationAvailabilityState.IneligibilityReasons(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationAvailabilityState.UnavailabilityReasons(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[7])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for MemoryCreationAvailabilityState.UnavailabilityReasons(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C6FEA044(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[65])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_1C6FEA090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationAvailabilityState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C6FEA200(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MemoryCreationAvailabilityState.ProcessingIncompleteReasons.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationAvailabilityState.ProcessingIncompleteReasons.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryMusicCurationDiagnostics.MoodCurationSource(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MemoryCreationAvailabilityState.UnavailabilityReasons.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MemoryCreationAvailabilityState.IneligibilityReasons.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationAvailabilityState.IneligibilityReasons.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C6FEA6EC()
{
  result = qword_1EC215810;
  if (!qword_1EC215810)
  {
    result = swift_getWitnessTable(aU_24, &type metadata for MemoryCreationAvailabilityState.IneligibilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215810);
  }

  return result;
}

unint64_t sub_1C6FEA744()
{
  result = qword_1EC215818;
  if (!qword_1EC215818)
  {
    result = swift_getWitnessTable(byte_1C755F5AC, &type metadata for MemoryCreationAvailabilityState.UnavailabilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215818);
  }

  return result;
}

unint64_t sub_1C6FEA79C()
{
  result = qword_1EC215820;
  if (!qword_1EC215820)
  {
    result = swift_getWitnessTable(aX_2, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215820);
  }

  return result;
}

unint64_t sub_1C6FEA7F4()
{
  result = qword_1EC215828;
  if (!qword_1EC215828)
  {
    result = swift_getWitnessTable(asc_1C755F76C, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215828);
  }

  return result;
}

unint64_t sub_1C6FEA84C()
{
  result = qword_1EC215830;
  if (!qword_1EC215830)
  {
    result = swift_getWitnessTable(asc_1C755F824, &type metadata for MemoryCreationAvailabilityState.UnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215830);
  }

  return result;
}

unint64_t sub_1C6FEA8A4()
{
  result = qword_1EC215838;
  if (!qword_1EC215838)
  {
    result = swift_getWitnessTable(aM_22, &type metadata for MemoryCreationAvailabilityState.IneligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215838);
  }

  return result;
}

unint64_t sub_1C6FEA8FC()
{
  result = qword_1EC215840;
  if (!qword_1EC215840)
  {
    result = swift_getWitnessTable(aE_23, &type metadata for MemoryCreationAvailabilityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215840);
  }

  return result;
}

unint64_t sub_1C6FEA954()
{
  result = qword_1EC215848;
  if (!qword_1EC215848)
  {
    result = swift_getWitnessTable(byte_1C755F904, &type metadata for MemoryCreationAvailabilityState.UninitializedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215848);
  }

  return result;
}

unint64_t sub_1C6FEA9AC()
{
  result = qword_1EC215850;
  if (!qword_1EC215850)
  {
    result = swift_getWitnessTable(byte_1C755F92C, &type metadata for MemoryCreationAvailabilityState.UninitializedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215850);
  }

  return result;
}

unint64_t sub_1C6FEAA04()
{
  result = qword_1EC215858;
  if (!qword_1EC215858)
  {
    result = swift_getWitnessTable(byte_1C755F84C, &type metadata for MemoryCreationAvailabilityState.IneligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215858);
  }

  return result;
}

unint64_t sub_1C6FEAA5C()
{
  result = qword_1EC215860;
  if (!qword_1EC215860)
  {
    result = swift_getWitnessTable(byte_1C755F874, &type metadata for MemoryCreationAvailabilityState.IneligibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215860);
  }

  return result;
}

unint64_t sub_1C6FEAAB4()
{
  result = qword_1EC215868;
  if (!qword_1EC215868)
  {
    result = swift_getWitnessTable(asc_1C755F794, &type metadata for MemoryCreationAvailabilityState.UnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215868);
  }

  return result;
}

unint64_t sub_1C6FEAB0C()
{
  result = qword_1EC215870;
  if (!qword_1EC215870)
  {
    result = swift_getWitnessTable(aU_25, &type metadata for MemoryCreationAvailabilityState.UnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215870);
  }

  return result;
}

unint64_t sub_1C6FEAB64()
{
  result = qword_1EC215878;
  if (!qword_1EC215878)
  {
    result = swift_getWitnessTable(byte_1C755F6DC, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215878);
  }

  return result;
}

unint64_t sub_1C6FEABBC()
{
  result = qword_1EC215880;
  if (!qword_1EC215880)
  {
    result = swift_getWitnessTable(asc_1C755F704, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215880);
  }

  return result;
}

unint64_t sub_1C6FEAC14()
{
  result = qword_1EC215888;
  if (!qword_1EC215888)
  {
    result = swift_getWitnessTable(aE_24, &type metadata for MemoryCreationAvailabilityState.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215888);
  }

  return result;
}

unint64_t sub_1C6FEAC6C()
{
  result = qword_1EC215890;
  if (!qword_1EC215890)
  {
    result = swift_getWitnessTable(asc_1C755F6B4, &type metadata for MemoryCreationAvailabilityState.AvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215890);
  }

  return result;
}

unint64_t sub_1C6FEACC4()
{
  result = qword_1EC215898;
  if (!qword_1EC215898)
  {
    result = swift_getWitnessTable(byte_1C755F954, &type metadata for MemoryCreationAvailabilityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215898);
  }

  return result;
}

unint64_t sub_1C6FEAD1C()
{
  result = qword_1EC2158A0;
  if (!qword_1EC2158A0)
  {
    result = swift_getWitnessTable(byte_1C755F97C, &type metadata for MemoryCreationAvailabilityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158A0);
  }

  return result;
}

unint64_t sub_1C6FEAD74()
{
  result = qword_1EC2158A8;
  if (!qword_1EC2158A8)
  {
    result = swift_getWitnessTable(byte_1C755F5D4, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158A8);
  }

  return result;
}

unint64_t sub_1C6FEADCC()
{
  result = qword_1EC2158B0;
  if (!qword_1EC2158B0)
  {
    result = swift_getWitnessTable(a5_13, &type metadata for MemoryCreationAvailabilityState.ProcessingIncompleteReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158B0);
  }

  return result;
}

unint64_t sub_1C6FEAE24()
{
  result = qword_1EC2158B8;
  if (!qword_1EC2158B8)
  {
    result = swift_getWitnessTable(aE_25, &type metadata for MemoryCreationAvailabilityState.UnavailabilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158B8);
  }

  return result;
}

unint64_t sub_1C6FEAE7C()
{
  result = qword_1EC2158C0;
  if (!qword_1EC2158C0)
  {
    result = swift_getWitnessTable(byte_1C755F544, &type metadata for MemoryCreationAvailabilityState.UnavailabilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158C0);
  }

  return result;
}

unint64_t sub_1C6FEAED4()
{
  result = qword_1EC2158C8;
  if (!qword_1EC2158C8)
  {
    result = swift_getWitnessTable(byte_1C755F464, &type metadata for MemoryCreationAvailabilityState.IneligibilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158C8);
  }

  return result;
}

unint64_t sub_1C6FEAF2C()
{
  result = qword_1EC2158D0;
  if (!qword_1EC2158D0)
  {
    result = swift_getWitnessTable(byte_1C755F48C, &type metadata for MemoryCreationAvailabilityState.IneligibilityReasons.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2158D0);
  }

  return result;
}

unint64_t sub_1C6FEAF80()
{
  result = qword_1EDD10100;
  if (!qword_1EDD10100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD10100);
  }

  return result;
}

BOOL static AlchemistOutput.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  switch((v2 >> 60) & 3)
  {
    case 1uLL:
      if ((v4 & 0x3000000000000000) == 0x1000000000000000)
      {
        type metadata accessor for CVBuffer(0);
        v21 = OUTLINED_FUNCTION_0_11();
        sub_1C6FEB208(v21, v22);
        v23 = OUTLINED_FUNCTION_103();
        sub_1C6FEB208(v23, v24);
        sub_1C6FEB250();
        v14 = sub_1C754E5BC();
        goto LABEL_20;
      }

      v35 = v3;
      goto LABEL_32;
    case 2uLL:
      if ((v4 & 0x3000000000000000) != 0x2000000000000000)
      {
        sub_1C6FEB1B0(*a1, v2 & 0xCFFFFFFFFFFFFFFFLL);
        goto LABEL_32;
      }

      v10 = OUTLINED_FUNCTION_0_11();
      sub_1C6FEB208(v10, v11);
      v12 = OUTLINED_FUNCTION_103();
      sub_1C6FEB208(v12, v13);
      v14 = MEMORY[0x1CCA5A2F0](v3, v2 & 0xCFFFFFFFFFFFFFFFLL, v5, v4 & 0xCFFFFFFFFFFFFFFFLL);
LABEL_20:
      v25 = v14;
      v26 = OUTLINED_FUNCTION_103();
      sub_1C6FEB22C(v26, v27);
      v28 = OUTLINED_FUNCTION_0_11();
      sub_1C6FEB22C(v28, v29);
      return v25 & 1;
    case 3uLL:
      v15 = v4 & 0x3000000000000000;
      if (v3 | v2 ^ 0x3000000000000000)
      {
        if (v15 == 0x3000000000000000 && v5 == 1 && v4 == 0x3000000000000000)
        {
          v33 = OUTLINED_FUNCTION_103();
          sub_1C6FEB22C(v33, v34);
          v20 = 1;
          sub_1C6FEB22C(1, 0x3000000000000000uLL);
          return v20;
        }

        goto LABEL_32;
      }

      if (v15 != 0x3000000000000000 || v5 != 0 || v4 != 0x3000000000000000)
      {
LABEL_32:
        v36 = OUTLINED_FUNCTION_0_11();
        sub_1C6FEB208(v36, v37);
        v38 = OUTLINED_FUNCTION_103();
        sub_1C6FEB22C(v38, v39);
        v40 = OUTLINED_FUNCTION_0_11();
        sub_1C6FEB22C(v40, v41);
        return 0;
      }

      v18 = OUTLINED_FUNCTION_103();
      sub_1C6FEB22C(v18, v19);
      sub_1C6FEB22C(0, 0x3000000000000000uLL);
      return 1;
    default:
      if ((v4 & 0x3000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v6 = OUTLINED_FUNCTION_103();
      sub_1C6FEB22C(v6, v7);
      v8 = OUTLINED_FUNCTION_0_11();
      sub_1C6FEB22C(v8, v9);
      return *&v3 == *&v5;
  }
}

uint64_t sub_1C6FEB1B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1C6FEB208(id result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 2)
  {
    return sub_1C6FEB1B0(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  if (v2 == 1)
  {
    return result;
  }

  return result;
}

void sub_1C6FEB22C(id a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 2)
  {
    sub_1C6FC1640(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else if (v2 == 1)
  {
  }
}

unint64_t sub_1C6FEB250()
{
  result = qword_1EC2158E0;
  if (!qword_1EC2158E0)
  {
    type metadata accessor for CVBuffer(255);
    result = swift_getWitnessTable(asc_1C755AE30, v3, v0, v1);
    atomic_store(result, &qword_1EC2158E0);
  }

  return result;
}

uint64_t AlchemistOutput.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  switch((v2 >> 60) & 3)
  {
    case 1uLL:
      MEMORY[0x1CCA5E460](2);
      type metadata accessor for CVBuffer(0);
      sub_1C6FEB250();
      result = sub_1C754E5CC();
      break;
    case 2uLL:
      MEMORY[0x1CCA5E460](4);
      v4 = OUTLINED_FUNCTION_0_11();

      result = MEMORY[0x1EEDC45B0](v4);
      break;
    case 3uLL:
      if (*v1 | v2 ^ 0x3000000000000000)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }

      result = MEMORY[0x1CCA5E460](v5);
      break;
    default:
      MEMORY[0x1CCA5E460](1);
      result = sub_1C7551F7C();
      break;
  }

  return result;
}

uint64_t AlchemistOutput.hashValue.getter()
{
  v3 = *v0;
  sub_1C7551F3C();
  AlchemistOutput.hash(into:)(v2);
  return sub_1C7551FAC();
}

uint64_t sub_1C6FEB3FC(uint64_t a1)
{
  v4 = *v1;
  sub_1C7551F3C();
  AlchemistOutput.hash(into:)(v3);
  return sub_1C7551FAC();
}

unint64_t sub_1C6FEB448()
{
  result = qword_1EC2158E8;
  if (!qword_1EC2158E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlchemistOutput, &type metadata for AlchemistOutput, v0, v1);
    atomic_store(result, &qword_1EC2158E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence15AlchemistOutputO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

void *sub_1C6FEB4E4(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0x3000000000000000;
  }

  return result;
}

uint64_t static PNParallaxSpatialPhotoProducer.enableInMemoryCache()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C7550D5C();
  OUTLINED_FUNCTION_67_3(v2);
  OUTLINED_FUNCTION_30();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  OUTLINED_FUNCTION_66_5(v3, v4, v5, v6, v3);
}

uint64_t sub_1C6FEB6A0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDD09330 != -1)
  {
    OUTLINED_FUNCTION_22_9(&qword_1EDD09330);
  }

  v1 = qword_1EDD09338;
  *(v0 + 16) = qword_1EDD09338;

  return MEMORY[0x1EEE6DFA0](sub_1C6FEB724, v1, 0);
}

uint64_t sub_1C6FEB724()
{
  OUTLINED_FUNCTION_42();
  sub_1C744D1D8();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C6FEB77C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_36_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_2_9();

  return sub_1C6FEB684();
}

uint64_t sub_1C6FEB80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_50_4();
  sub_1C6FF5260(v12, v13, &qword_1EC2158F8, &qword_1C755FF40);
  v14 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FF52C0(v5, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v16 + 8))(v5, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FF52C0(a3, &qword_1EC2158F8, &qword_1C755FF40);
    OUTLINED_FUNCTION_30();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();
  OUTLINED_FUNCTION_30();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;

  v20 = swift_task_create();

  sub_1C6FF52C0(a3, &qword_1EC2158F8, &qword_1C755FF40);

  return v20;
}

uint64_t sub_1C6FEBACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_50_4();
  sub_1C6FF5260(v12, v13, &qword_1EC2158F8, &qword_1C755FF40);
  v14 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FF52C0(v5, &qword_1EC2158F8, &qword_1C755FF40);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    v16 = OUTLINED_FUNCTION_57_3();
    v17(v16);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FF52C0(a3, &qword_1EC2158F8, &qword_1C755FF40);
    OUTLINED_FUNCTION_30();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();
  OUTLINED_FUNCTION_30();
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  v20 = swift_task_create();

  sub_1C6FF52C0(a3, &qword_1EC2158F8, &qword_1C755FF40);

  return v20;
}

uint64_t static PNParallaxSpatialPhotoProducer.prewarmGeneration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  result = [objc_opt_self() shouldExecuteAlchemistInBackground];
  if ((result & 1) == 0)
  {
    v3 = sub_1C7550D5C();
    OUTLINED_FUNCTION_67_3(v3);
    OUTLINED_FUNCTION_30();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    OUTLINED_FUNCTION_66_5(v4, v5, v6, v7, v4);
  }

  return result;
}

id PNParallaxSpatialPhotoProducer.generateSpatialPhotoScene(for:cacheKey:focalLengthPx:portraitNormalizedTime:landscapeNormalizedTime:isInteractive:progressHandler:isCanceledHandler:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17)
{
  v47 = 0;
  v46 = 0;
  if (qword_1EC213C88 != -1)
  {
    swift_once();
  }

  queue = qword_1EC2158F0;
  v31 = swift_allocObject();
  *(v31 + 16) = a7;
  *(v31 + 24) = a8;
  *(v31 + 32) = &v46;
  *(v31 + 40) = v17;
  *(v31 + 48) = a1;
  *(v31 + 56) = a2;
  *(v31 + 64) = a3;
  *(v31 + 72) = a9;
  *(v31 + 80) = a10;
  *(v31 + 88) = a11;
  *(v31 + 96) = a12;
  *(v31 + 104) = a13;
  *(v31 + 112) = a14;
  *(v31 + 120) = a15;
  *(v31 + 128) = a16;
  *(v31 + 136) = a17;
  *(v31 + 144) = a4 & 1;
  *(v31 + 152) = a5;
  *(v31 + 160) = a6;
  *(v31 + 168) = &v47;
  OUTLINED_FUNCTION_30();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1C6FF4B88;
  *(v32 + 24) = v31;
  aBlock[4] = sub_1C6F669AC;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6F66984;
  aBlock[3] = &block_descriptor_1;
  v33 = _Block_copy(aBlock);

  v34 = v17;
  v35 = a1;
  sub_1C75504FC();

  dispatch_sync(queue, v33);
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    v37 = v46;
    if (v46)
    {
    }

    else
    {
      v37 = v47;
      if (!v47)
      {
        sub_1C6FF4BE4();
        OUTLINED_FUNCTION_9_10();
        v38 = swift_allocError();
        OUTLINED_FUNCTION_3_11(xmmword_1C755FEA0, v38, v39);
      }

      swift_willThrow();
      v40 = v37;
      swift_unknownObjectRelease();
    }

    return v37;
  }

  return result;
}

void sub_1C6FEC25C(uint64_t (*a1)(__n128), uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t (*a18)(__n128), uint64_t a19, void **a20)
{
  v53 = a3;
  v54 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v32 = sub_1C754FF1C();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1(v34))
  {
    sub_1C754F85C();
    v37 = sub_1C754FEEC();
    v38 = sub_1C75511BC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C6F5C000, v37, v38, "ParallaxSpatialPhotoProducer request canceled, skipping generation.", v39, 2u);
      MEMORY[0x1CCA5F8E0](v39, -1, -1);
    }

    (*(v33 + 8))(v36, v32);
    sub_1C6FF4BE4();
    v40 = swift_allocError();
    *v41 = xmmword_1C755FEB0;
    *(v41 + 16) = 1;
  }

  else
  {
    v52 = a13;
    v42 = sub_1C755065C();
    v59 = a18;
    v60 = a19;
    aBlock = MEMORY[0x1E69E9820];
    v51 = a12;
    v56 = 1107296256;
    v57 = sub_1C6FEC620;
    v58 = &block_descriptor_123;
    v43 = _Block_copy(&aBlock);

    v59 = a1;
    v60 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v56 = 1107296256;
    v57 = sub_1C6FEC674;
    v58 = &block_descriptor_126;
    v44 = _Block_copy(&aBlock);

    aBlock = 0;
    v45 = [a4 _spatialPhotoSceneFor_cacheKey_focalLengthPx_portraitNormalizedTimeRect_landscapeNormalizedTimeRect_isInteractive_error_progressHandler_isCanceledHandler_];
    _Block_release(v44);
    _Block_release(v43);

    v46 = aBlock;
    if (v45)
    {
      *v53 = v45;
      v47 = v46;
      swift_unknownObjectRelease();
      return;
    }

    v48 = aBlock;
    v40 = sub_1C754DBEC();
  }

  swift_willThrow();
  v49 = *a20;
  *a20 = v40;
}

double sub_1C6FEC620(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

uint64_t sub_1C6FEC674(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id PNParallaxSpatialPhotoProducer.createSpatialPhotoSceneAnalyzer()()
{
  v0 = objc_allocWithZone(type metadata accessor for PXParallaxSpatialPhotoSceneAnalyzer());

  return [v0 init];
}

id sub_1C6FEC98C(__CVBuffer *a1, void *a2, uint64_t a3, int a4, uint64_t a5, void (**a6)(void, void, uint64_t), uint64_t (*a7)(void), uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17)
{
  v18 = v17;
  v208 = a8;
  v223 = a7;
  v217 = a6;
  v212 = a5;
  LODWORD(v213) = a4;
  v202 = a3;
  v204 = a11;
  v203 = a10;
  v200 = a2;
  swift_getObjectType();
  v26 = sub_1C754DF6C();
  v209 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v206 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v207 = &v182 - v29;
  v222 = sub_1C754FFEC();
  v214 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v221 = (&v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = sub_1C755009C();
  v201 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v218 = &v182 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v210 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v205 = &v182 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v224 = &v182 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v230 = &v182 - v41;
  v42 = sub_1C754FF1C();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v199 = &v182 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v182 - v49;
  Width = CVPixelBufferGetWidth(a1);
  v215 = a1;
  Height = CVPixelBufferGetHeight(a1);
  v53 = Width;
  v54 = Height;
  if (Width < 65 || Height < 65)
  {
    sub_1C6FF4BE4();
    swift_allocError();
    *v107 = v53;
    *(v107 + 8) = v54;
    *(v107 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v191 = a9;
    v193 = a12;
    v194 = a13;
    v195 = a14;
    v196 = a15;
    v197 = *&a16;
    v211 = v26;
    v184 = v17;
    v192 = a17;
    sub_1C754F73C();
    v56 = v55;
    v57 = sub_1C6FEDF10();
    v59 = v58;
    v185 = v57;
    v60 = fmax(fmin(sqrt(v57 * v56 * (v58 * v56) / (v53 * v54)), 1.0), 0.0);
    if (v60 > v56)
    {
      v61 = v60;
    }

    else
    {
      v61 = v56;
    }

    v62 = sqrt(fmin(10000000.0 / (v61 * v53 * (v61 * v54)), 1.0));
    v63 = round(v61 * v53 * v62);
    v64 = round(v61 * v54 * v62);
    strcpy(v229, ",bakingSize:");
    BYTE5(v229[1]) = 0;
    HIWORD(v229[1]) = -5120;
    v65 = objc_alloc(MEMORY[0x1E696AEC0]);
    v190 = v64;
    v189 = v63;
    v66 = [v65 initWithFormat:@"{%.2f, %.2f}", *&v63, *&v64];
    v67 = sub_1C755068C();
    v69 = v68;

    MEMORY[0x1CCA5CD70](v67, v69);

    v70 = v229[0];
    v71 = v229[1];
    v229[0] = v200;
    v229[1] = v202;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v70, v71);

    v227 = 32;
    v228 = 0xE100000000000000;
    v225 = 0;
    v226 = 0xE000000000000000;
    sub_1C6FB5E8C();
    v72 = sub_1C755155C();
    v74 = v73;

    sub_1C754F85C();
    sub_1C75504FC();
    v75 = sub_1C754FEEC();
    v76 = sub_1C75511BC();

    v77 = os_log_type_enabled(v75, v76);
    v186 = v42;
    v198 = v43;
    v183 = v45;
    v188 = v72;
    v187 = v74;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v229[0] = v202;
      *v78 = 136316674;
      *(v78 + 4) = sub_1C6F765A4(v72, v74, v229);
      *(v78 + 12) = 2048;
      v79 = v191;
      *(v78 + 14) = v191;
      *(v78 + 22) = 2080;
      v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v53, *&v54];
      v81 = sub_1C755068C();
      LODWORD(v200) = v76;
      v82 = v81;
      v84 = v83;

      v85 = sub_1C6F765A4(v82, v84, v229);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2080;
      v86 = objc_alloc(MEMORY[0x1E696AEC0]);
      v87 = [v86 initWithFormat:@"{%.2f, %.2f}", *&v185, *&v59];
      v88 = sub_1C755068C();
      v90 = v89;

      v91 = sub_1C6F765A4(v88, v90, v229);

      *(v78 + 34) = v91;
      *(v78 + 42) = 2048;
      *(v78 + 44) = v61;
      *(v78 + 52) = 2080;
      v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", v61 * v53, v61 * v54];
      v93 = sub_1C755068C();
      v95 = v94;

      v96 = sub_1C6F765A4(v93, v95, v229);

      *(v78 + 54) = v96;
      *(v78 + 62) = 2080;
      v97 = objc_alloc(MEMORY[0x1E696AEC0]);
      v98 = v190;
      v99 = v189;
      v100 = [v97 initWithFormat:@"{%.2f, %.2f}", *&v189, *&v190];
      v101 = sub_1C755068C();
      v103 = v102;

      v104 = sub_1C6F765A4(v101, v103, v229);

      *(v78 + 64) = v104;
      _os_log_impl(&dword_1C6F5C000, v75, v200, "SpatialPhotoProducer.spatialPhotoScene(for cacheKey:%s focalLengthPx:%f imageSize:%s deviceScreenSize:%s optimizedScale:%f optimizedBakingSize:%s finalBakingSize:%s", v78, 0x48u);
      v105 = v202;
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v105, -1, -1);
      MEMORY[0x1CCA5F8E0](v78, -1, -1);

      v185 = *(v198 + 8);
      (*&v185)(v50, v42);
      v106 = v208;
    }

    else
    {

      v185 = *(v43 + 8);
      (*&v185)(v50, v42);
      v106 = v208;
      v99 = v189;
      v79 = v191;
      v98 = v190;
    }

    LODWORD(v191) = v79 <= 0.0;
    if (v79 > 0.0)
    {
      v108 = v79;
      v109 = v108;
    }

    else
    {
      v109 = 0.0;
    }

    v110 = swift_allocObject();
    v202 = v110;
    *(v110 + 16) = 0;
    *&v190 = v110 + 16;
    v111 = swift_allocObject();
    *(v111 + 16) = 0;
    *&v189 = v111 + 16;
    v112 = dispatch_group_create();
    dispatch_group_enter(v112);
    v113 = sub_1C7550D5C();
    v114 = 1;
    __swift_storeEnumTagSinglePayload(v230, 1, 1, v113);
    v115 = swift_allocObject();
    *(v115 + 16) = 0;
    *(v115 + 24) = 0;
    v116 = v223;
    *(v115 + 32) = v112;
    *(v115 + 40) = v116;
    v117 = v216;
    *(v115 + 48) = v106;
    *(v115 + 56) = v117;
    v118 = v215;
    v119 = v188;
    *(v115 + 64) = v215;
    *(v115 + 72) = v119;
    *(v115 + 80) = v187;
    *(v115 + 88) = v109;
    *(v115 + 92) = LOBYTE(v191);
    *(v115 + 96) = v99;
    *(v115 + 104) = v98;
    v120 = v217;
    *(v115 + 112) = v212;
    *(v115 + 120) = v120;
    v121 = v204;
    *(v115 + 128) = v203;
    *(v115 + 136) = v121;
    v122 = v194;
    *(v115 + 144) = v193;
    *(v115 + 152) = v122;
    v123 = v196;
    *(v115 + 160) = v195;
    *(v115 + 168) = v123;
    v124 = v192;
    *(v115 + 176) = v197;
    *(v115 + 184) = v124;
    *(v115 + 192) = v213 & 1;
    *(v115 + 200) = v110;
    *(v115 + 208) = v111;
    v125 = v112;
    v126 = v106;

    v213 = v117;
    v127 = v118;

    v200 = v111;

    v197 = sub_1C6FEB80C(0, 0, v230, &unk_1C75600D8, v115);
    __swift_storeEnumTagSinglePayload(v224, 1, 1, v211);
    v212 = OBJC_IVAR___PNParallaxSpatialPhotoProducer_currentDownloadTask;
    v217 = (v214 + 13);
    v216 = (v214 + 1);
    v214 = (v201 + 8);
    LODWORD(v215) = *MEMORY[0x1E69E7F38];
    *&v203 = &v209[4];
    *&v204 = &v209[1];
    v128 = 0.0;
    v129 = &unk_1C7563720;
    v209 = v125;
    while (1)
    {
      v130 = v219;
      sub_1C755007C();
      v131 = v221;
      *v221 = 250;
      v132 = v222;
      (*v217)(v131, v215, v222);
      v133 = v218;
      sub_1C755008C();
      (*v216)(v131, v132);
      v134 = *v214;
      v135 = v220;
      (*v214)(v130, v220);
      sub_1C755121C();
      v134(v133, v135);
      if ((sub_1C754FFFC() & 1) == 0)
      {
        break;
      }

      v136 = *&v213[v212];
      os_unfair_lock_lock((v136 + 24));
      v137 = *(v136 + 16);
      v138 = v137;
      os_unfair_lock_unlock((v136 + 24));
      v230 = v138;
      if (v137)
      {
        v140 = v138;
        v141 = v114 | (v128 != sub_1C6FF3FDC());
        v142 = v211;
        if (v141)
        {
          v128 = sub_1C6FF3FDC();
          v143 = v205;
          sub_1C754DF5C();
          v144 = v224;
          sub_1C6FF52C0(v224, &unk_1EC219230, v129);
          __swift_storeEnumTagSinglePayload(v143, 0, 1, v142);
          v145 = v143;
          v125 = v209;
          sub_1C6FF51C8(v145, v144);
        }

        v146 = v210;
        sub_1C6FF5260(v224, v210, &unk_1EC219230, v129);
        if (__swift_getEnumTagSinglePayload(v146, 1, v142) == 1)
        {

          v139 = sub_1C6FF52C0(v146, &unk_1EC219230, v129);
          v114 = 0;
          v147 = v126;
        }

        else
        {
          v148 = v129;
          v149 = v207;
          (**&v203)(v207, v146, v142);
          v150 = v206;
          sub_1C754DF5C();
          sub_1C754DEAC();
          v152 = v151;
          v153 = **&v204;
          (**&v204)(v150, v142);
          if (v152 < 0.0 || v152 > 60.0)
          {

            v18 = v197;
            sub_1C7550E1C();
            sub_1C6FF4BE4();
            swift_allocError();
            *v179 = xmmword_1C755FEC0;
            *(v179 + 16) = 1;
            swift_willThrow();

            v153(v149, v142);
            sub_1C6FF52C0(v224, &unk_1EC219230, &unk_1C7563720);

LABEL_39:

            return v18;
          }

          v153(v149, v142);

          v114 = 0;
          v147 = v208;
          v125 = v209;
          v129 = v148;
        }
      }

      else
      {
        v147 = v126;
      }

      v126 = v147;
      if (v223(v139))
      {
        goto LABEL_31;
      }

      if (v137)
      {
        v155 = v230;
        v156 = sub_1C6FF4098();

        if (v156)
        {
LABEL_31:
          v157 = v199;
          sub_1C754F85C();
          v158 = sub_1C754FEEC();
          v159 = sub_1C75511BC();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            *v160 = 0;
            _os_log_impl(&dword_1C6F5C000, v158, v159, "SpatialPhotoProducer was canceled mid-generation, aborting.", v160, 2u);
            MEMORY[0x1CCA5F8E0](v160, -1, -1);
          }

          (*&v185)(v157, v186);
          sub_1C7550E1C();
          os_unfair_lock_lock((v136 + 24));
          v161 = *(v136 + 16);
          v18 = v200;
          if (v161)
          {

            *(v136 + 16) = 0;
            os_unfair_lock_unlock((v136 + 24));
          }

          else
          {
            os_unfair_lock_unlock((v136 + 24));
            sub_1C755122C();
          }

          sub_1C6FF4BE4();
          swift_allocError();
          *v176 = xmmword_1C755FEB0;
          *(v176 + 16) = 1;
          swift_willThrow();

          sub_1C6FF52C0(v224, &unk_1EC219230, &unk_1C7563720);

          goto LABEL_39;
        }
      }
    }

    v162 = v183;
    sub_1C754F85C();

    v163 = sub_1C754FEEC();
    v164 = sub_1C75511BC();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v229[0] = v166;
      *v165 = 136315394;
      v167 = *&v190;
      swift_beginAccess();
      v227 = *v167;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BC8, &unk_1C75600E0);
      v168 = sub_1C75506EC();
      v170 = sub_1C6F765A4(v168, v169, v229);

      *(v165 + 4) = v170;
      *(v165 + 12) = 2080;
      v171 = *&v189;
      swift_beginAccess();
      v227 = *v171;
      v172 = v227;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD0, &unk_1C756C740);
      v173 = sub_1C75506EC();
      v175 = sub_1C6F765A4(v173, v174, v229);

      *(v165 + 14) = v175;
      v125 = v209;
      _os_log_impl(&dword_1C6F5C000, v163, v164, "SpatialPhotoProducer.spatialPhotoScene result:%s generationError:%s", v165, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v166, -1, -1);
      MEMORY[0x1CCA5F8E0](v165, -1, -1);

      (*&v185)(v162, v186);
    }

    else
    {

      (*&v185)(v162, v186);
      v167 = *&v190;
    }

    swift_beginAccess();
    v18 = *v167;
    if (!*v167)
    {
      v178 = *&v189;
      swift_beginAccess();
      v18 = *v178;
      if (!v18)
      {
        sub_1C6FF4BE4();
        swift_allocError();
        *v180 = 0;
        *(v180 + 8) = 0;
        *(v180 + 16) = 1;
      }

      swift_willThrow();
      v181 = v18;

      sub_1C6FF52C0(v224, &unk_1EC219230, &unk_1C7563720);

      goto LABEL_39;
    }

    swift_unknownObjectRetain();
    sub_1C6FF52C0(v224, &unk_1EC219230, &unk_1C7563720);
  }

  return v18;
}

double sub_1C6FEDF10()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PFDeviceNativeScreenSize();
  if (result * v5 <= 0.0)
  {
    sub_1C754F85C();
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Unable to retrieve device screen size from MobileGestalt, falling back to default.", v8, 2u);
      MEMORY[0x1CCA5F8E0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 2048.0;
  }

  return result;
}

uint64_t sub_1C6FEE060(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 240) = v27;
  *(v16 + 248) = v28;
  *(v16 + 312) = v26;
  *(v16 + 224) = v24;
  *(v16 + 232) = v25;
  *(v16 + 208) = a7;
  *(v16 + 216) = a8;
  *(v16 + 192) = a5;
  *(v16 + 200) = a6;
  *(v16 + 176) = a3;
  *(v16 + 184) = a4;
  *(v16 + 160) = v22;
  *(v16 + 168) = v23;
  *(v16 + 144) = a1;
  *(v16 + 152) = a2;
  *(v16 + 136) = v21;
  *(v16 + 120) = v20;
  *(v16 + 104) = a15;
  *(v16 + 112) = a16;
  *(v16 + 88) = a13;
  *(v16 + 96) = a14;
  *(v16 + 80) = a12;
  v17 = sub_1C754FF1C();
  *(v16 + 256) = v17;
  *(v16 + 264) = *(v17 - 8);
  *(v16 + 272) = swift_task_alloc();
  *(v16 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FEE178, 0, 0);
}

uint64_t sub_1C6FEE178()
{
  if ((*(v0 + 88))())
  {
    sub_1C754F85C();
    v1 = sub_1C754FEEC();
    v2 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v2))
    {
      v3 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v3);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v4, v5, "ParallaxSpatialPhotoProducer request canceled before starting the request, skipping.");
      OUTLINED_FUNCTION_23_3();
    }

    v6 = OUTLINED_FUNCTION_57_0();
    v7(v6);
    sub_1C6FF4BE4();
    OUTLINED_FUNCTION_9_10();
    v8 = swift_allocError();
    *v9 = xmmword_1C755FEB0;
    *(v9 + 16) = 1;
    swift_willThrow();
    v10 = *(v0 + 248);
    OUTLINED_FUNCTION_54_4(v10 + 16);
    v11 = *(v10 + 16);
    *(v10 + 16) = v8;

    dispatch_group_leave(*(v0 + 80));

    OUTLINED_FUNCTION_43();

    return v12();
  }

  else
  {
    v14 = *(v0 + 136);
    *(v0 + 313) = [objc_opt_self() shouldExecuteAlchemistInBackground];
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_1C6FEE374;
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *(v0 + 120);
    v21 = *(v0 + 128);
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v24 = *(v0 + 96);

    return sub_1C6FEE768(v22, v20, v21, v14 | ((HIDWORD(v14) & 1) << 32), v16, v17, v23, v24, v18, v19);
  }
}

uint64_t sub_1C6FEE374()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v4;
  *(v2 + 304) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FEE478()
{
  v1 = *(v0 + 304);
  sub_1C6FF0624(*(v0 + 296), *(v0 + 312), 0, *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  if (v1)
  {
    v2 = v1;
    sub_1C754F85C();
    v3 = v1;
    v4 = sub_1C754FEEC();
    v5 = sub_1C755119C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_41_0();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1C6FF52C0(v7, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v15 = *(v0 + 313);

    v16 = OUTLINED_FUNCTION_49_3();
    v17(v16);
    if ((v15 & 1) == 0)
    {
      swift_willThrow();

      v24 = *(v0 + 248);
      OUTLINED_FUNCTION_54_4(v24 + 16);
      v25 = *(v24 + 16);
      *(v24 + 16) = v2;

      goto LABEL_9;
    }
  }

  v18 = *(v0 + 296);
  v19 = *(v0 + 313);
  v20 = *(v0 + 240);
  v21 = type metadata accessor for PXParallaxSpatialPhotoScene();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC18PhotosIntelligence27PXParallaxSpatialPhotoScene_scene] = v18;
  *(v0 + 64) = v22;
  *(v0 + 72) = v21;
  v23 = objc_msgSendSuper2((v0 + 64), sel_init);
  swift_beginAccess();
  *(v20 + 16) = v23;
  swift_unknownObjectRelease();
  if (v19 == 1)
  {
    sub_1C754F6DC();
    OUTLINED_FUNCTION_65_3("ParallaxSpatialPhotoProducer.isInBackground");
  }

LABEL_9:
  dispatch_group_leave(*(v0 + 80));

  OUTLINED_FUNCTION_43();

  return v26();
}

uint64_t sub_1C6FEE6C0()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 313))
  {
    sub_1C754F6DC();
    OUTLINED_FUNCTION_65_3("ParallaxSpatialPhotoProducer.isInBackground");
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  OUTLINED_FUNCTION_54_4(v2 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  dispatch_group_leave(*(v0 + 80));

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C6FEE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v11 + 632) = v10;
  *(v11 + 889) = v17;
  *(v11 + 624) = a8;
  *(v11 + 616) = a7;
  *(v11 + 608) = a6;
  *(v11 + 600) = a5;
  *(v11 + 592) = a10;
  *(v11 + 584) = a9;
  *(v11 + 576) = a4;
  *(v11 + 568) = a3;
  *(v11 + 560) = a2;
  *(v11 + 552) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  *(v11 + 640) = swift_task_alloc();
  *(v11 + 648) = swift_task_alloc();
  v12 = sub_1C754DD2C();
  *(v11 + 656) = v12;
  *(v11 + 664) = *(v12 - 8);
  *(v11 + 672) = swift_task_alloc();
  *(v11 + 680) = swift_task_alloc();
  v13 = sub_1C754E91C();
  *(v11 + 688) = v13;
  *(v11 + 696) = *(v13 - 8);
  *(v11 + 704) = swift_task_alloc();
  v14 = sub_1C754FF1C();
  *(v11 + 712) = v14;
  *(v11 + 720) = *(v14 - 8);
  *(v11 + 728) = swift_task_alloc();
  *(v11 + 736) = swift_task_alloc();
  *(v11 + 744) = swift_task_alloc();
  *(v11 + 752) = swift_task_alloc();
  *(v11 + 760) = swift_task_alloc();
  *(v11 + 768) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FEE9A0, 0, 0);
}

uint64_t sub_1C6FEE9A0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDD09330 != -1)
  {
    OUTLINED_FUNCTION_22_9(&qword_1EDD09330);
  }

  v1 = qword_1EDD09338;
  *(v0 + 776) = qword_1EDD09338;

  return MEMORY[0x1EEE6DFA0](sub_1C6FEEA24, v1, 0);
}

uint64_t sub_1C6FEEA24()
{
  OUTLINED_FUNCTION_42();
  v0[98] = sub_1C744D4F8(v0[70], v0[71]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C6FEEA90(uint64_t a1)
{
  v57 = v1;
  if (*(v1 + 784))
  {
    sub_1C754F85C();
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    v3 = sub_1C75511BC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v1 + 568);
      v5 = *(v1 + 560);
      v6 = OUTLINED_FUNCTION_41_0();
      v7 = swift_slowAlloc();
      v56 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1C6F765A4(v5, v4, &v56);
      _os_log_impl(&dword_1C6F5C000, v2, v3, "SpatialPhotoProducer.spatialPhotoScene cached scene found for cacheKey:%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v8 = OUTLINED_FUNCTION_49_3();
    v9(v8);
    OUTLINED_FUNCTION_0_12();

    OUTLINED_FUNCTION_51_2();

    __asm { BRAA            X2, X16 }
  }

  sub_1C754F85C();
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 760);
  v16 = *(v1 + 720);
  if (v14)
  {
    v17 = *(v1 + 568);
    v18 = *(v1 + 560);
    v19 = OUTLINED_FUNCTION_41_0();
    v20 = swift_slowAlloc();
    v56 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1C6F765A4(v18, v17, &v56);
    _os_log_impl(&dword_1C6F5C000, v12, v13, "SpatialPhotoProducer.spatialPhotoScene generating scene for cacheKey:%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v21 = *(v16 + 8);
  v22 = OUTLINED_FUNCTION_57_0();
  v21(v22);
  *(v1 + 792) = v21;
  if (*(v1 + 889) != 1)
  {
    v26 = v1 + 208;
    v27 = *(v1 + 632);
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_1C6FEFAAC;
    v30 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
    *(v1 + 208) = MEMORY[0x1E69E9820];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_1C6FF0BCC;
    *(v1 + 232) = &block_descriptor_87;
    *(v1 + 240) = v30;
LABEL_15:
    [v27 downloadModelIfNeededWithCompletionHandler_];
    goto LABEL_26;
  }

  if ([*(v1 + 632) allowBackgroundDownload])
  {
    sub_1C754F85C();
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_127();
      *v25 = 0;
      _os_log_impl(&dword_1C6F5C000, v23, v24, "ParallaxSpatialPhotoProducer background download allowed.", v25, 2u);
      OUTLINED_FUNCTION_109();
    }

    v26 = v1 + 336;
    v27 = *(v1 + 632);

    v28 = OUTLINED_FUNCTION_55();
    v21(v28);
    *(v1 + 144) = v1;
    *(v1 + 152) = sub_1C6FEF1E4;
    v29 = swift_continuation_init();
    *(v1 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
    *(v1 + 336) = MEMORY[0x1E69E9820];
    *(v1 + 344) = 1107296256;
    *(v1 + 352) = sub_1C6FF0BCC;
    *(v1 + 360) = &block_descriptor_102;
    *(v1 + 368) = v29;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_43_5();
  sub_1C75504DC();
  sub_1C755068C();
  v31 = OUTLINED_FUNCTION_63_4();
  v32(v31);
  sub_1C754E90C();
  v33 = OUTLINED_FUNCTION_47_7();
  v34(v33);
  OUTLINED_FUNCTION_69_7();
  OUTLINED_FUNCTION_42_6();

  sub_1C755068C();
  OUTLINED_FUNCTION_33_6();
  if (!(v37 ^ v38 | v36))
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v1 + 584) <= -9.22337204e18)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_26();
  if (!v37)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_46_5(v39);
  v40 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v40);

  v35 = MEMORY[0x1CCA5CD70](44, 0xE100000000000000);
  if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(v1 + 592) <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v35);
  }

  OUTLINED_FUNCTION_26();
  if (!v37)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_32_5(v41);
  v42 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v42);

  MEMORY[0x1CCA5CD70](125, 0xE100000000000000);
  v43 = OUTLINED_FUNCTION_68_3(v56);
  OUTLINED_FUNCTION_41_4(v43);

  *(v1 + 808) = [objc_allocWithZone(PNMADGenerationServiceWrapper) init];
  sub_1C70C03F8();

  *(v1 + 816) = sub_1C755048C();

  *(v1 + 80) = v1;
  OUTLINED_FUNCTION_15_14();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE8, &qword_1C7560108);
  OUTLINED_FUNCTION_14_12(v44);
  *(v1 + 280) = 1107296256;
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_53_5(v45, sel_requestAlchemistProcessingForPixelBuffer_options_progressHandler_completionHandler_, v46, v47, v48, v49, v50, v51, v54, v55);
LABEL_26:
  OUTLINED_FUNCTION_51_2();

  return MEMORY[0x1EEE6DEC8](v35);
}

uint64_t sub_1C6FEF1E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 800) = *(v3 + 176);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C6FEF2E4()
{
  OUTLINED_FUNCTION_43_5();
  sub_1C75504DC();
  sub_1C755068C();
  v2 = OUTLINED_FUNCTION_63_4();
  v3(v2);
  sub_1C754E90C();
  v4 = OUTLINED_FUNCTION_47_7();
  v5(v4);
  OUTLINED_FUNCTION_69_7();
  OUTLINED_FUNCTION_42_6();

  sub_1C755068C();
  OUTLINED_FUNCTION_33_6();
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v1 + 584) <= -9.22337204e18)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_26();
  if (!v8)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_46_5(v10);
  v11 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v11);

  v6 = MEMORY[0x1CCA5CD70](44, 0xE100000000000000);
  if ((v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v1 + 592) <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v6);
  }

  OUTLINED_FUNCTION_26();
  if (!v8)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_32_5(v12);
  v13 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v13);

  MEMORY[0x1CCA5CD70](125, 0xE100000000000000);
  v14 = OUTLINED_FUNCTION_68_3(v27);
  OUTLINED_FUNCTION_41_4(v14);

  *(v1 + 808) = [objc_allocWithZone(PNMADGenerationServiceWrapper) init];
  sub_1C70C03F8();

  *(v1 + 816) = sub_1C755048C();

  *(v1 + 80) = v1;
  OUTLINED_FUNCTION_15_14();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE8, &qword_1C7560108);
  OUTLINED_FUNCTION_14_12(v15);
  *(v1 + 280) = 1107296256;
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_53_5(v16, sel_requestAlchemistProcessingForPixelBuffer_options_progressHandler_completionHandler_, v17, v18, v19, v20, v21, v22, v25, v26);
  OUTLINED_FUNCTION_51_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1C6FEF5A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 824) = *(v3 + 112);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C6FEF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 816);

  type metadata accessor for Spatial3DAssetResourceUtils();
  static Spatial3DAssetResourceUtils.extractAlchemistResourcePath(from:)();
  v16 = *(v14 + 616);

  if (v16(v17))
  {

    sub_1C754F85C();
    v18 = sub_1C754FEEC();
    v19 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v19))
    {
      v20 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v20);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v21, v22, "ParallaxSpatialPhotoProducer request canceled, skipping scene analysis.");
      OUTLINED_FUNCTION_23_3();
    }

    v23 = *(v14 + 792);

    v24 = OUTLINED_FUNCTION_57_0();
    v23(v24);
    sub_1C6FF4BE4();
    OUTLINED_FUNCTION_9_10();
    v26 = swift_allocError();
    *v25 = xmmword_1C755FEB0;
LABEL_9:
    *(v25 + 16) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_0_12();
    v57 = *(v14 + 640);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, v57, v26, a11, a12, a13, a14);
  }

  v27 = *(v14 + 656);
  v28 = *(v14 + 648);
  sub_1C754DCFC();

  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    sub_1C6FF52C0(*(v14 + 648), &qword_1EC215BD8, &unk_1C7564890);
    sub_1C754F85C();
    v29 = sub_1C754FEEC();
    v30 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v30))
    {
      v31 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v31);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v32, v33, "Output file could not be converted to URL");
      OUTLINED_FUNCTION_23_3();
    }

    v34 = *(v14 + 792);

    v35 = OUTLINED_FUNCTION_57_0();
    v34(v35);
    sub_1C6FF4BE4();
    OUTLINED_FUNCTION_9_10();
    v26 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    goto LABEL_9;
  }

  (*(*(v14 + 664) + 32))(*(v14 + 680), *(v14 + 648), *(v14 + 656));
  v45 = OUTLINED_FUNCTION_90();
  v46(v45);
  sub_1C754F84C();
  swift_allocObject();
  v47 = sub_1C754F7CC();
  (*(*(v14 + 664) + 8))(*(v14 + 680), *(v14 + 656));
  *(v14 + 872) = v47;
  v48 = *(v14 + 568);
  v49 = *(v14 + 560);
  v50 = swift_task_alloc();
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;

  OUTLINED_FUNCTION_16_9();
  sub_1C754F77C();

  v51 = swift_task_alloc();
  *(v14 + 880) = v51;
  *v51 = v14;
  OUTLINED_FUNCTION_10_11(v51);
  OUTLINED_FUNCTION_17_1();

  return sub_1C744DF08(v52, v53, v54, v55);
}

uint64_t sub_1C6FEFAAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 832) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C6FEFBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 656);
  v11 = *(v9 + 640);
  v12 = *(v9 + 608);
  v13 = *(v9 + 600);
  v14 = *(v9 + 592);
  v15 = *(v9 + 584);
  v16 = *(v9 + 576);
  *(v9 + 888) = 1;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v10);
  OUTLINED_FUNCTION_30();
  v17 = swift_allocObject();
  *(v9 + 840) = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;

  v18 = swift_task_alloc();
  *(v9 + 848) = v18;
  *v18 = v9;
  v18[1] = sub_1C6FEFCF0;
  v19 = *(v9 + 640);
  v20 = *(v9 + 552);

  return AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(v20, v9 + 888, v16 | ((HIDWORD(v16) & 1) << 32), v15, v14, 0, v19, sub_1C6FF5238, a9);
}

uint64_t sub_1C6FEFCF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  v3[107] = v5;
  v3[108] = v0;

  sub_1C6FF52C0(v3[80], &qword_1EC215BD8, &unk_1C7564890);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C6FEFE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  if ((*(v14 + 616))())
  {
    sub_1C754F85C();
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v16))
    {
      v17 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v17);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v18, v19, "ParallaxSpatialPhotoProducer request canceled, skipping scene analysis.");
      OUTLINED_FUNCTION_23_3();
    }

    v20 = *(v14 + 856);
    v21 = *(v14 + 792);

    v22 = OUTLINED_FUNCTION_57_0();
    v21(v22);
    sub_1C6FF4BE4();
    OUTLINED_FUNCTION_9_10();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_3_11(xmmword_1C755FEB0, v23, v24);
    v48 = v25;
    swift_willThrow();

    goto LABEL_7;
  }

  sub_1C754F84C();
  swift_allocObject();
  v26 = sub_1C754F75C();
  v27 = *(v14 + 864);
  *(v14 + 872) = v26;
  v28 = *(v14 + 568);
  v29 = *(v14 + 560);
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;

  OUTLINED_FUNCTION_16_9();
  sub_1C754F77C();

  if (v27)
  {

    v48 = v27;
LABEL_7:
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_44_6();
    v47 = v31;

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, v47, v48, a11, a12, a13, a14);
  }

  v41 = swift_task_alloc();
  *(v14 + 880) = v41;
  *v41 = v14;
  OUTLINED_FUNCTION_10_11(v41);
  OUTLINED_FUNCTION_17_1();

  return sub_1C744DF08(v42, v43, v44, v45);
}

uint64_t sub_1C6FF00A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *v14;
  v16 = *v14;
  OUTLINED_FUNCTION_14();
  *v17 = v16;

  OUTLINED_FUNCTION_45_5();
  v31 = *(v18 + 872);
  OUTLINED_FUNCTION_45_5();
  v29 = *(v15 + 672);
  OUTLINED_FUNCTION_45_5();
  v30 = *(v19 + 648);
  OUTLINED_FUNCTION_45_5();

  OUTLINED_FUNCTION_17_1();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_1C6FF02DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  swift_willThrow();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_44_6();
  v25 = v14;
  v26 = v15;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, a11, a12, a13, a14);
}

uint64_t sub_1C6FF03AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 816);
  v16 = *(v14 + 808);
  swift_willThrow();

  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_44_6();
  v28 = v17;
  v29 = v18;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, a11, a12, a13, a14);
}

uint64_t sub_1C6FF048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  swift_willThrow();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_44_6();
  v25 = v14;
  v26 = v15;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, a11, a12, a13, a14);
}

uint64_t sub_1C6FF055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_44_6();
  v25 = v14;
  v26 = v15;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_1C6FF0624(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B20, &qword_1C7560078);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  if ((PFRectIsValid() & 1) != 0 || (result = PFRectIsValid(), result))
  {
    v31 = a2;
    if (a3 || (sub_1C754F6DC(), , result = sub_1C754F6BC(), !v11))
    {
      v27 = sub_1C754F70C();
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);

      if (PFRectIsValid())
      {

        sub_1C754F74C();

        if (v11)
        {

LABEL_13:
          v29 = v25;
          return sub_1C6FF52C0(v29, &qword_1EC215B20, &qword_1C7560078);
        }

        __swift_storeEnumTagSinglePayload(v22, 0, 1, v27);
        sub_1C6FF4DB4(v22, v25);
      }

      __swift_storeEnumTagSinglePayload(v19, 1, 1, v27);
      IsValid = PFRectIsValid();
      if (IsValid)
      {

        sub_1C754F74C();

        if (v11)
        {

          sub_1C6FF52C0(v19, &qword_1EC215B20, &qword_1C7560078);
          goto LABEL_13;
        }

        __swift_storeEnumTagSinglePayload(v16, 0, 1, v27);
        IsValid = sub_1C6FF4DB4(v16, v19);
      }

      MEMORY[0x1EEE9AC00](IsValid);
      *(&v30 - 2) = v25;
      *(&v30 - 1) = v19;
      sub_1C754F77C();

      sub_1C6FF52C0(v19, &qword_1EC215B20, &qword_1C7560078);
      v29 = v25;
      return sub_1C6FF52C0(v29, &qword_1EC215B20, &qword_1C7560078);
    }
  }

  return result;
}

uint64_t sub_1C6FF0BCC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_1C6FF0C30(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume(v5);
}

uint64_t sub_1C6FF0C30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_9_10();
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1C6FF0CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1C6FF0CE0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1C6FF0D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v5 = sub_1C754E7DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  if ((*(v6 + 88))(v9, v5) != *MEMORY[0x1E698A7F8])
  {
    return (*(v6 + 8))(v9, v5);
  }

  v10 = (*(v6 + 96))(v9, v5);
  return a3(v10, *v9 / v9[1]);
}

uint64_t sub_1C6FF0EBC()
{
  v1[2] = v0;
  v2 = sub_1C754E7CC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1C754E81C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BA8, &qword_1C75600B8);
  v1[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BB0, &qword_1C75600C0);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BB8, &qword_1C75600C8);
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v6 = sub_1C754FF1C();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_1C754E7AC();
  v1[28] = v7;
  v1[29] = *(v7 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FF1228, 0, 0);
}

uint64_t sub_1C6FF1228()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  *(v0 + 272) = sub_1C754E85C();
  sub_1C754E7BC();
  (*(v4 + 16))(v2, v1, v3);
  v5 = OUTLINED_FUNCTION_15_1();
  v7 = v6(v5);
  v8 = *MEMORY[0x1E698A780];
  *(v0 + 312) = *MEMORY[0x1E698A780];
  if (v7 == v8)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 264), *(v0 + 224));
    goto LABEL_3;
  }

  v11 = v7;
  if (v7 != *MEMORY[0x1E698A768])
  {
    if (v7 != *MEMORY[0x1E698A760])
    {
      v35 = *(v0 + 232);
      v36 = *MEMORY[0x1E698A770];
      sub_1C6FF4BE4();
      OUTLINED_FUNCTION_9_10();
      v37 = swift_allocError();
      v39 = (v35 + 8);
      v40 = *(v0 + 264);
      if (v11 == v36)
      {
        v41 = *(v0 + 224);
        OUTLINED_FUNCTION_3_11(xmmword_1C755FEE0, v37, v38);
        swift_willThrow();
        (*v39)(v40, v41);
      }

      else
      {
        v42 = *(v0 + 224);
        OUTLINED_FUNCTION_3_11(xmmword_1C755FED0, v37, v38);
        swift_willThrow();
        v43 = *v39;
        (*v39)(v40, v42);
        v44 = OUTLINED_FUNCTION_15_1();
        v43(v44);
      }

      OUTLINED_FUNCTION_19_11(*(v0 + 264));

      OUTLINED_FUNCTION_43();
      goto LABEL_4;
    }

    sub_1C754F85C();
    v28 = sub_1C754FEEC();
    v29 = sub_1C75511BC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_127();
      *v30 = 0;
      _os_log_impl(&dword_1C6F5C000, v28, v29, "ParallaxSpatialPhotoProducer model unavailable, but try anyway, likely sandboxing issue.", v30, 2u);
      OUTLINED_FUNCTION_109();
    }

    v31 = OUTLINED_FUNCTION_15_1();
    v32(v31);
    v33 = OUTLINED_FUNCTION_66_2();
    v34(v33);
LABEL_3:
    OUTLINED_FUNCTION_12_12();

    OUTLINED_FUNCTION_43();
LABEL_4:

    return v9();
  }

  sub_1C754F85C();
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();
  if (os_log_type_enabled(v12, v13))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_109();
  }

  v19 = *(v0 + 160);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = *(v0 + 16);

  *(v0 + 280) = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_49_3();
  v25(v24);
  *(v0 + 288) = [v23 reportDownloadDidStart];
  sub_1C754E83C();
  sub_1C7550DBC();
  (*(v20 + 8))(v21, v22);
  *(v0 + 316) = *MEMORY[0x1E698A7B8];
  *(v0 + 320) = *MEMORY[0x1E698A788];
  *(v0 + 324) = *MEMORY[0x1E698A798];
  *(v0 + 328) = *MEMORY[0x1E698A7B0];
  *(v0 + 332) = *MEMORY[0x1E698A7A0];
  *(v0 + 336) = *MEMORY[0x1E698A7C0];
  *(v0 + 340) = *MEMORY[0x1E698A7C8];
  *(v0 + 344) = *MEMORY[0x1E698A7A8];
  *(v0 + 348) = *MEMORY[0x1E698A790];
  *(v0 + 296) = 0;
  v26 = swift_task_alloc();
  *(v0 + 304) = v26;
  *v26 = v0;
  v27 = OUTLINED_FUNCTION_7_8(v26);

  return MEMORY[0x1EEE6D9C8](v27);
}

uint64_t sub_1C6FF17C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C6FF18AC()
{
  v129 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    if (sub_1C6FF4098())
    {
      sub_1C6FF4BE4();
      OUTLINED_FUNCTION_9_10();
      v3 = swift_allocError();
      OUTLINED_FUNCTION_3_11(xmmword_1C755FEB0, v3, v4);
      swift_willThrow();
    }

    else
    {
      v12 = *(v0 + 296);
      sub_1C7550E6C();
      v3 = v12;
      if (!v12)
      {
        sub_1C754F85C();
        v13 = sub_1C754FEEC();
        v14 = sub_1C75511BC();
        if (OUTLINED_FUNCTION_21_0(v14))
        {
          v15 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v15);
          OUTLINED_FUNCTION_6(&dword_1C6F5C000, v16, v17, "ParallaxSpatialPhotoProducer model download completed");
          OUTLINED_FUNCTION_23_3();
        }

        v19 = *(v0 + 280);
        v18 = *(v0 + 288);
        v126 = *(v0 + 264);
        v20 = *(v0 + 224);
        v21 = *(v0 + 232);
        v22 = *(v0 + 16);

        v23 = OUTLINED_FUNCTION_55();
        v19(v23);
        [v22 reportDownloadDidEnd:v18 success:1 error:0];

        (*(v21 + 8))(v126, v20);
        OUTLINED_FUNCTION_12_12();

        OUTLINED_FUNCTION_43();
        goto LABEL_31;
      }
    }

LABEL_28:
    sub_1C754F85C();
    v47 = v3;
    v48 = sub_1C754FEEC();
    v49 = sub_1C755119C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_41_0();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      v52 = v3;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      sub_1C6FF52C0(v51, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v59 = *(v0 + 280);
    v60 = *(v0 + 288);
    v61 = *(v0 + 232);
    v117 = *(v0 + 224);
    v121 = *(v0 + 264);
    v62 = *(v0 + 168);
    v63 = *(v0 + 152);
    v64 = *(v0 + 16);

    v59(v62, v63);
    v65 = sub_1C754DBDC();
    [v64 reportDownloadDidEnd:v60 success:0 error:v65];

    swift_willThrow();
    (*(v61 + 8))(v121, v117);
    OUTLINED_FUNCTION_19_11(*(v0 + 264));

    OUTLINED_FUNCTION_43();
LABEL_31:

    return v24();
  }

  v5 = *(v0 + 316);
  (*(*(v0 + 64) + 32))(*(v0 + 88), v1, v2);
  sub_1C754E7EC();
  v6 = OUTLINED_FUNCTION_15_1();
  v8 = v7(v6);
  if (v8 == v5)
  {
    goto LABEL_5;
  }

  if (v8 == *(v0 + 320) || v8 == *(v0 + 324))
  {
    sub_1C754F85C();
    v26 = OUTLINED_FUNCTION_58_4();
    v27(v26);
    v28 = sub_1C754FEEC();
    v29 = sub_1C755117C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_41_0();
      *v30 = 134349056;
      sub_1C754E80C();
      v32 = v31;
      v33 = OUTLINED_FUNCTION_57_3();
      v34(v33);
      *(v30 + 4) = v32;
      _os_log_impl(&dword_1C6F5C000, v28, v29, "ParallaxSpatialPhotoProducer model download progress %{public}f", v30, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v35 = OUTLINED_FUNCTION_57_3();
      v36(v35);
    }

    v37 = *(v0 + 288);
    v38 = *(v0 + 16);
    (*(v0 + 280))(*(v0 + 192), *(v0 + 152));
    sub_1C754E80C();
    sub_1C6FF4034(v39);
    sub_1C754E80C();
    [v38 reportDownloadProgress:v37 :?];
  }

  else
  {
    if (v8 == *(v0 + 328))
    {
      goto LABEL_18;
    }

    if (v8 == *(v0 + 332))
    {
      OUTLINED_FUNCTION_20_12();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      v3 = v9;
      v11 = xmmword_1C755FF10;
      goto LABEL_27;
    }

    if (v8 == *(v0 + 336))
    {
      v67 = *(v0 + 312);
      v68 = *(v0 + 240);
      v69 = *(v0 + 224);
      v70 = *(v0 + 232);
      sub_1C754E7BC();
      (*(v70 + 104))(v68, v67, v69);
      OUTLINED_FUNCTION_49_3();
      v71 = sub_1C754E79C();
      v72 = *(v70 + 8);
      v73 = OUTLINED_FUNCTION_15_1();
      v72(v73);
      if ((v71 & 1) == 0)
      {
        sub_1C754F85C();
        v96 = sub_1C754FEEC();
        v97 = sub_1C755119C();
        if (OUTLINED_FUNCTION_21_0(v97))
        {
          v98 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v98);
          OUTLINED_FUNCTION_6(&dword_1C6F5C000, v99, v100, "Error occured after download: model not available after download completed");
          OUTLINED_FUNCTION_23_3();
        }

        v101 = *(v0 + 280);
        v116 = *(v0 + 224);
        v119 = *(v0 + 248);
        v102 = *(v0 + 136);
        v123 = *(v0 + 128);
        v127 = *(v0 + 144);
        v103 = *(v0 + 64);
        v113 = *(v0 + 56);
        v115 = *(v0 + 88);

        v104 = OUTLINED_FUNCTION_57_0();
        v101(v104);
        sub_1C6FF4BE4();
        OUTLINED_FUNCTION_9_10();
        v3 = swift_allocError();
        OUTLINED_FUNCTION_3_11(xmmword_1C755FF00, v3, v105);
        swift_willThrow();
        (v72)(v119, v116);
        (*(v103 + 8))(v115, v113);
        (*(v102 + 8))(v127, v123);
        goto LABEL_28;
      }

      v74 = *(v0 + 288);
      v75 = *(v0 + 16);
      sub_1C754E80C();
      [v75 reportDownloadProgress:v74 :?];
      v76 = OUTLINED_FUNCTION_49_3();
      v72(v76);
    }

    else
    {
      if (v8 == *(v0 + 340) || v8 == *(v0 + 344))
      {
LABEL_5:
        OUTLINED_FUNCTION_20_12();
        OUTLINED_FUNCTION_9_10();
        v9 = swift_allocError();
        v3 = v9;
        v11 = xmmword_1C755FF20;
LABEL_27:
        OUTLINED_FUNCTION_3_11(v11, v9, v10);
        swift_willThrow();
        v43 = OUTLINED_FUNCTION_55();
        v44(v43);
        v45 = OUTLINED_FUNCTION_57_3();
        v46(v45);
        goto LABEL_28;
      }

      if (v8 == *(v0 + 348))
      {
LABEL_18:
        OUTLINED_FUNCTION_20_12();
        OUTLINED_FUNCTION_9_10();
        v9 = swift_allocError();
        v3 = v9;
        v11 = xmmword_1C755FEC0;
        goto LABEL_27;
      }

      sub_1C754F85C();
      v80 = OUTLINED_FUNCTION_58_4();
      v81(v80);
      v82 = sub_1C754FEEC();
      v83 = sub_1C755119C();
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 280);
      v86 = *(v0 + 184);
      v87 = *(v0 + 152);
      if (v84)
      {
        v118 = *(v0 + 152);
        v122 = *(v0 + 280);
        v88 = OUTLINED_FUNCTION_41_0();
        v114 = v86;
        v89 = swift_slowAlloc();
        v128 = v89;
        *v88 = 136446210;
        sub_1C754E7EC();
        v90 = sub_1C75506EC();
        v92 = v91;
        v93 = OUTLINED_FUNCTION_64_2();
        v94(v93);
        v95 = sub_1C6F765A4(v90, v92, &v128);

        *(v88 + 4) = v95;
        _os_log_impl(&dword_1C6F5C000, v82, v83, "ParallaxSpatialPhotoProducer model progress unsupported option %{public}s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        v122(v114, v118);
      }

      else
      {

        v106 = OUTLINED_FUNCTION_64_2();
        v107(v106);
        v85(v86, v87);
      }

      if (sub_1C754E7FC())
      {
        v108 = *(v0 + 32);
        v120 = *(v0 + 24);
        v124 = *(v0 + 48);
        sub_1C6FF4BE4();
        OUTLINED_FUNCTION_9_10();
        v3 = swift_allocError();
        OUTLINED_FUNCTION_3_11(xmmword_1C755FEF0, v3, v109);
        swift_willThrow();
        v110 = OUTLINED_FUNCTION_55();
        v125(v110);
        v111 = OUTLINED_FUNCTION_66_2();
        v112(v111);
        (*(v108 + 8))(v124, v120);
        goto LABEL_28;
      }

      (*(*(v0 + 32) + 8))(*(v0 + 48), *(v0 + 24));
    }
  }

  if (sub_1C6FF4098())
  {
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    v3 = v9;
    v11 = xmmword_1C755FEB0;
    goto LABEL_27;
  }

  v40 = *(v0 + 296);
  sub_1C7550E6C();
  if (v40)
  {
    v3 = v40;
    (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
    v41 = OUTLINED_FUNCTION_66_2();
    v42(v41);
    goto LABEL_28;
  }

  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  *(v0 + 296) = 0;
  v77 = swift_task_alloc();
  *(v0 + 304) = v77;
  *v77 = v0;
  v78 = OUTLINED_FUNCTION_7_8(v77);

  return MEMORY[0x1EEE6D9C8](v78);
}

uint64_t sub_1C6FF2484(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C6FF252C;

  return sub_1C6FF0EBC();
}

uint64_t sub_1C6FF252C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  OUTLINED_FUNCTION_45_5();
  v9 = *(v8 + 24);
  if (v2)
  {
    v10 = sub_1C754DBDC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v8 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v7 + 8);

  return v11();
}

id sub_1C6FF26E8()
{
  DownloadHandler = PFParallaxSpatialPhotoProducerGetDownloadHandler();

  return DownloadHandler;
}

id sub_1C6FF2714()
{
  v1 = sub_1C755001C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C755006C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(type metadata accessor for DownloadTask()) init];
  v10 = *&v0[OBJC_IVAR___PNParallaxSpatialPhotoProducer_currentDownloadTask];
  v23 = v9;
  v24 = v9;
  os_unfair_lock_lock((v10 + 24));
  sub_1C6FF4EF0((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  v11 = [v0 modelDownloadHandler];
  if (v11)
  {
    v12 = v11;
    sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
    v22 = sub_1C755126C();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v0;
    v14 = v23;
    v13[4] = v23;
    aBlock[4] = sub_1C6FF4F5C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6FD8F68;
    aBlock[3] = &block_descriptor_60;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v15 = v0;
    v16 = v14;

    sub_1C755003C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C6FF4E90(&qword_1EDD0D0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
    v20 = v5;
    sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
    sub_1C75515FC();
    v18 = v21;
    v17 = v22;
    MEMORY[0x1CCA5D7B0](0, v8, v4, v21);
    _Block_release(v18);
    swift_unknownObjectRelease();

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v20);
  }

  return v23;
}

id sub_1C6FF2B08(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1C755001C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C755006C();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 modelDownloadHandler];
  if (result)
  {
    v16 = result;
    sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
    v24 = v7;
    v25 = v10;
    v23 = sub_1C755126C();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v3;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1C6FF4ED8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6FD8F68;
    aBlock[3] = &block_descriptor_54;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v19 = v3;
    v20 = a1;

    sub_1C755003C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C6FF4E90(&qword_1EDD0D0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
    sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
    sub_1C75515FC();
    v21 = v23;
    MEMORY[0x1CCA5D7B0](0, v14, v9, v18);
    _Block_release(v18);
    swift_unknownObjectRelease();

    (*(v24 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v25);
  }

  return result;
}

id sub_1C6FF2EB4(void *a1, char a2, void *a3)
{
  v7 = sub_1C755001C();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C755006C();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR___PNParallaxSpatialPhotoProducer_currentDownloadTask];
  v26 = a1;
  os_unfair_lock_lock((v13 + 24));
  sub_1C6FF4E60((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  result = [v3 modelDownloadHandler];
  if (result)
  {
    v15 = result;
    sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
    v16 = sub_1C755126C();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v3;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2 & 1;
    *(v17 + 48) = a3;
    aBlock[4] = sub_1C6FF4E7C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6FD8F68;
    aBlock[3] = &block_descriptor_48;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v19 = v3;
    v20 = a1;
    v21 = a3;

    sub_1C755003C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C6FF4E90(&qword_1EDD0D0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
    sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
    sub_1C75515FC();
    MEMORY[0x1CCA5D7B0](0, v12, v9, v18);
    _Block_release(v18);
    swift_unknownObjectRelease();

    (*(v25 + 8))(v9, v7);
    return (*(v23 + 8))(v12, v24);
  }

  return result;
}

void sub_1C6FF3218(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    *a1 = 0;
  }
}

void sub_1C6FF3258(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    v9 = sub_1C754DBDC();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [a1 spatialPhotoProducer:a2 downloadTaskDidEnd:a3 success:a4 & 1 error:?];
}

uint64_t sub_1C6FF3370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return qword_1C7560148[a1];
  }

  else
  {
    return 1001;
  }
}

uint64_t sub_1C6FF33B4(uint64_t a1)
{
  v2 = sub_1C6FF4D58();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C6FF33F0(uint64_t a1)
{
  v2 = sub_1C6FF4D58();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C6FF3440()
{
  v7 = sub_1C755125C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C755124C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C755006C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
  sub_1C755003C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C6FF4E90(&qword_1EDD0FAA0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30, &qword_1C7576A80);
  sub_1C6F65C70(&qword_1EDD0FAE0, &unk_1EC215B30, &qword_1C7576A80);
  sub_1C75515FC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C75512AC();
  qword_1EC2158F0 = result;
  return result;
}

void __swiftcall PNParallaxSpatialPhotoProducer.init()(PNParallaxSpatialPhotoProducer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id PNParallaxSpatialPhotoProducer.init()()
{
  v0[OBJC_IVAR___PNParallaxSpatialPhotoProducer_allowBackgroundDownload] = 0;
  v1 = OBJC_IVAR___PNParallaxSpatialPhotoProducer_currentDownloadTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215978, &qword_1C755FF68);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = PNParallaxSpatialPhotoProducer;
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1C6FF3788(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  sub_1C6F774EC(a1, v12);
  sub_1C754F84C();
  v10 = swift_dynamicCast();
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1C755128C();
  }

  else
  {
    sub_1C6FF4BE4();
    swift_allocError();
    *v11 = xmmword_1C755FF30;
    *(v11 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1C6FF3A20(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v22 = sub_1C75500AC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v10 + OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD35PXParallaxSpatialPhotoSceneAnalyzer_queue);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22, v24);
  v28 = v27;
  LOBYTE(v27) = sub_1C75500CC();
  result = (*(v23 + 8))(v26, v22);
  if (v27)
  {
    result = sub_1C6FF3BEC(v10, a1);
    if (!v11)
    {
      v30 = result;

      sub_1C6FF0624(a1, a2 & 1, v30, a3, a4, a5, a6, a7, a8, a9, a10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6FF3BEC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD35PXParallaxSpatialPhotoSceneAnalyzer_queue_lastSceneAnalysis;
  v6 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD35PXParallaxSpatialPhotoSceneAnalyzer_queue_lastSceneAnalysis);
  if (v6)
  {

    v7 = sub_1C754F6CC();

    if (v7 == a2)
    {
      return v6;
    }
  }

  v6 = sub_1C754F6DC();

  v8 = sub_1C754F6BC();
  if (!v2)
  {
    v6 = v8;
    *(a1 + v5) = v8;
  }

  return v6;
}

id sub_1C6FF3CB0()
{
  v12 = sub_1C755125C();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C755124C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C755006C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v11 = OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD35PXParallaxSpatialPhotoSceneAnalyzer_queue;
  v10[1] = sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
  sub_1C755003C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C6FF4E90(&qword_1EDD0FAA0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30, &qword_1C7576A80);
  sub_1C6F65C70(&qword_1EDD0FAE0, &unk_1EC215B30, &qword_1C7576A80);
  sub_1C75515FC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v12);
  v5 = sub_1C75512AC();
  v6 = v13;
  *&v13[v11] = v5;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD35PXParallaxSpatialPhotoSceneAnalyzer_queue_lastSceneAnalysis] = 0;
  v7 = v6;
  v8 = type metadata accessor for PXParallaxSpatialPhotoSceneAnalyzer();
  v14.receiver = v7;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

double sub_1C6FF3FDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD12DownloadTask__progress);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

double sub_1C6FF4034(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD12DownloadTask__progress);

  os_unfair_lock_lock((v3 + 24));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 24));

  return result;
}

uint64_t sub_1C6FF4098()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD12DownloadTask__isCanceled);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  return v2;
}

double sub_1C6FF40E8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD12DownloadTask__isCanceled);

  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 20));

  return result;
}

double sub_1C6FF4144()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754F85C();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "SpatialPhotoProducer download task canceled.", v6, 2u);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_1C6FF40E8(1);
}

id sub_1C6FF42D8()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD12DownloadTask__progress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B10, &qword_1C7560068);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC18PhotosIntelligenceP33_A5661BF87DDC32E782519B9444AF90AD12DownloadTask__isCanceled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B18, &qword_1C7560070);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *&v0[v3] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DownloadTask();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C6FF440C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B28, qword_1C7560080);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B20, &qword_1C7560078);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_1C754F70C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  sub_1C6FF5260(a2, v12, &qword_1EC215B20, &qword_1C7560078);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C6FF52C0(v12, &qword_1EC215B20, &qword_1C7560078);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    sub_1C754F6FC();
    v20 = sub_1C754F7BC();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
    sub_1C754F79C();
    (*(v14 + 8))(v19, v13);
  }

  sub_1C6FF5260(v24, v9, &qword_1EC215B20, &qword_1C7560078);
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {
    return sub_1C6FF52C0(v9, &qword_1EC215B20, &qword_1C7560078);
  }

  (*(v14 + 32))(v16, v9, v13);
  sub_1C754F6FC();
  v22 = sub_1C754F7BC();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v22);
  sub_1C754F7AC();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1C6FF4730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215AF8, &qword_1C75818B0);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E69ADA00];
  *(inited + 16) = xmmword_1C755BAB0;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = *MEMORY[0x1E69AD9E0];
  type metadata accessor for MXISerializeCompressionAlgorithm(0);
  *(inited + 64) = v4;
  *(inited + 40) = v3;
  type metadata accessor for MXISerializeOption(0);
  sub_1C6FF4E90(&unk_1EC215B00, type metadata accessor for MXISerializeOption, byte_1C755ADA8);
  v5 = v2;
  v6 = v3;
  OUTLINED_FUNCTION_57_0();
  sub_1C75504DC();
  sub_1C754F83C();

  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C6FF4A9C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27PXParallaxSpatialPhotoScene_scene);
  a1[3] = sub_1C754F84C();
  *a1 = v3;
}

id sub_1C6FF4B44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1C6FF4BE4()
{
  result = qword_1EC215960;
  if (!qword_1EC215960)
  {
    result = swift_getWitnessTable(byte_1C7560024, &_s5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC215960);
  }

  return result;
}

uint64_t _s5ErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5ErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C6FF4D08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FF4D24(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

unint64_t sub_1C6FF4D58()
{
  result = qword_1EC215AF0;
  if (!qword_1EC215AF0)
  {
    result = swift_getWitnessTable(asc_1C755FFE4, &_s5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC215AF0);
  }

  return result;
}

uint64_t sub_1C6FF4DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B20, &qword_1C7560078);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FF4E90(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_66_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, 7);
}

uint64_t sub_1C6FF4F70()
{
  OUTLINED_FUNCTION_49_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;
  v2 = OUTLINED_FUNCTION_90();

  return v3(v2);
}

uint64_t sub_1C6FF5048(uint64_t a1)
{
  v3 = v2;
  v20 = *(v1 + 3);
  v21 = *(v1 + 2);
  v18 = *(v1 + 5);
  v19 = *(v1 + 4);
  v16 = *(v1 + 7);
  v17 = *(v1 + 6);
  v15 = *(v1 + 8);
  v13 = v1[13];
  v14 = v1[12];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[19];
  v9 = v1[20];
  v10 = v1[21];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1C6F739D4;

  return sub_1C6FEE060(v14, v13, v5, v6, v7, v8, v9, v10, a1, v21, v20, v19, v18, v17, v16, v15);
}

uint64_t sub_1C6FF51C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FF5260(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_2();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C6FF52C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_62_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FF531C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C6FF5410;

  return v5(v2 + 16);
}

uint64_t sub_1C6FF5410()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1C6FF5534()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_36_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C6FF55C4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_36_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

_OWORD *OUTLINED_FUNCTION_42_6()
{

  return sub_1C6FC7D4C();
}

id OUTLINED_FUNCTION_53_5(int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v11 a2];
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C6FEB80C(0, 0, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_68_3@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 488) = v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;
  sub_1C6F9ED18((v3 + 464), (v3 + 496));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_69_7()
{
  *(v0 + 424) = v3;
  *(v0 + 400) = v1;
  *(v0 + 408) = v2;
  sub_1C6F9ED18((v0 + 400), (v0 + 432));

  return swift_isUniquelyReferenced_nonNull_native();
}

void __swiftcall ECRPersonGroundingResult.init(visualIDs:contactIDs:names:phoneNumbers:emails:)(PhotosIntelligence::ECRPersonGroundingResult *__return_ptr retstr, Swift::OpaquePointer visualIDs, Swift::OpaquePointer contactIDs, Swift::OpaquePointer names, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer emails)
{
  retstr->visualIDs = visualIDs;
  retstr->contactIDs = contactIDs;
  retstr->names = names;
  retstr->phoneNumbers = phoneNumbers;
  retstr->emails = emails;
}

uint64_t sub_1C6FF585C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C6175736976 && a2 == 0xE900000000000073;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007344;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656D616ELL && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

uint64_t sub_1C6FF5A08(char a1)
{
  result = 0x44496C6175736976;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x73656D616ELL;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    case 4:
      result = 0x736C69616D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FF5AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FF585C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FF5ADC(uint64_t a1)
{
  v2 = sub_1C6FF5D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FF5B18(uint64_t a1)
{
  v2 = sub_1C6FF5D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ECRPersonGroundingResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C00, &unk_1C75601B0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v16 = v1[4];
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1C6FF5D60();
  sub_1C75504FC();
  sub_1C755200C();
  v21 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_1_5();
  if (v12)
  {
  }

  else
  {
    v13 = v18;

    v21 = v19;
    v20 = 1;
    OUTLINED_FUNCTION_1_5();
    v21 = v13;
    v20 = 2;
    OUTLINED_FUNCTION_1_5();
    v21 = v17;
    v20 = 3;
    OUTLINED_FUNCTION_1_5();
    v21 = v16;
    v20 = 4;
    OUTLINED_FUNCTION_1_5();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C6FF5D60()
{
  result = qword_1EC215C08;
  if (!qword_1EC215C08)
  {
    result = swift_getWitnessTable(asc_1C7560498, &type metadata for ECRPersonGroundingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215C08);
  }

  return result;
}

uint64_t ECRPersonGroundingResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C10, &qword_1C75601C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6FF5D60();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_13();
  v7 = OUTLINED_FUNCTION_2_10();
  v8(v7);
  *a2 = v9;
  a2[1] = v9;
  a2[2] = v9;
  a2[3] = v9;
  a2[4] = v9;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6FF60E4(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PersonGroundingProcessor.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t PersonGroundingProcessor.groundPerson(_:)()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v3;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v4 = swift_task_alloc();
  v5 = *v0;
  v1[4] = v4;
  v1[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C6FF62BC, 0, 0);
}

uint64_t sub_1C6FF62BC()
{
  v1 = [*(v0 + 40) photoAnalysisClient];
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(MEMORY[0x1E69BE620]);
    v4 = v2;
    v5 = [v3 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 32);
    v7 = sub_1C754FF1C();
    v8 = __swift_project_value_buffer(v7, qword_1EC219F58);
    (*(*(v7 - 8) + 16))(v6, v8, v7);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
    v10 = (v6 + *(v9 + 28));
    v11 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v12 = [v11 processName];

    v13 = sub_1C755068C();
    v15 = v14;

    *v10 = v13;
    v10[1] = v15;
    *(v6 + *(v9 + 32)) = v5;
    v16 = swift_task_alloc();
    *(v0 + 56) = v16;
    *v16 = v0;
    v16[1] = sub_1C6FF6538;
    v17 = *(v0 + 24);
    v18 = *(v0 + 16);

    return PhotoAnalysisMomentGraphService.requestPersonGrounding(for:)(v18, v17);
  }

  else
  {
    sub_1C6FF6744();
    swift_allocError();
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1C6FF6538(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v4 + 64) = v1;

  if (v1)
  {
    v7 = sub_1C6FF66D0;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1C6FF6658;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C6FF6658()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);

  sub_1C6FF6930(v1);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2(v3);
}

uint64_t sub_1C6FF66D0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);

  sub_1C6FF6930(v1);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1C6FF6744()
{
  result = qword_1EC215C18;
  if (!qword_1EC215C18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonGroundingProcessor.Error, &type metadata for PersonGroundingProcessor.Error, v0, v1);
    atomic_store(result, &qword_1EC215C18);
  }

  return result;
}

uint64_t sub_1C6FF6798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6FF683C;

  return PersonGroundingProcessor.groundPerson(_:)();
}

uint64_t sub_1C6FF683C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C6FF6930(uint64_t a1)
{
  v2 = type metadata accessor for PhotoAnalysisMomentGraphService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6FF6990()
{
  result = qword_1EC215C28;
  if (!qword_1EC215C28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonGroundingProcessor.Error, &type metadata for PersonGroundingProcessor.Error, v0, v1);
    atomic_store(result, &qword_1EC215C28);
  }

  return result;
}

uint64_t sub_1C6FF69E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C6FF6A24(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of PersonGroundingProcessorProtocol.groundPerson(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C6FF6BA8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C6FF6BA8()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for PersonGroundingProcessor.Error(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ECRPersonGroundingResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6FF6E2C()
{
  result = qword_1EC215C30;
  if (!qword_1EC215C30)
  {
    result = swift_getWitnessTable(asc_1C7560470, &type metadata for ECRPersonGroundingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215C30);
  }

  return result;
}

unint64_t sub_1C6FF6E84()
{
  result = qword_1EC215C38;
  if (!qword_1EC215C38)
  {
    result = swift_getWitnessTable(byte_1C75603E0, &type metadata for ECRPersonGroundingResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215C38);
  }

  return result;
}