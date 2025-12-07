uint64_t sub_1C7100C3C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1C741E414(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_43;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      if (v12 == v13 && (v12 = *(v6 + 3), v13 = *(v4 + 3), v12 == v13))
      {
        v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
        if (v14 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_14:
          v15 = v4;
          v14 = v7 == v4;
          v4 += 48;
          if (v14)
          {
            goto LABEL_16;
          }

LABEL_15:
          v16 = *v15;
          v17 = *(v15 + 2);
          *(v7 + 1) = *(v15 + 1);
          *(v7 + 2) = v17;
          *v7 = v16;
          goto LABEL_16;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_14;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 48;
      if (!v14)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 48;
    }
  }

  sub_1C741E414(a2, (a3 - a2) / 48, a4);
  v18 = &v4[48 * v9];
LABEL_22:
  v19 = 0;
  v20 = v6;
  v6 -= 48;
  while (1)
  {
    v10 = &v18[v19];
    if (&v18[v19] <= v4 || v20 <= v7)
    {
      break;
    }

    v22 = *(v10 - 4);
    v23 = *(v20 - 4);
    if (v22 == v23 && (v22 = *(v10 - 3), v23 = *(v20 - 3), v22 == v23))
    {
      v24 = *(v10 - 6) == *(v20 - 6) && *(v10 - 5) == *(v20 - 5);
      if (!v24 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_40:
        v28 = &v5[v19];
        v5 = &v5[v19 - 48];
        v18 += v19;
        if (v28 != v20)
        {
          v29 = *v6;
          v30 = *(v6 + 2);
          *(v5 + 1) = *(v6 + 1);
          *(v5 + 2) = v30;
          *v5 = v29;
        }

        goto LABEL_22;
      }
    }

    else if (v23 < v22)
    {
      goto LABEL_40;
    }

    if (v10 != &v5[v19])
    {
      v25 = &v5[v19 - 48];
      v26 = *(v10 - 3);
      v27 = *(v10 - 1);
      *(v25 + 1) = *(v10 - 2);
      *(v25 + 2) = v27;
      *v25 = v26;
    }

    v19 -= 48;
  }

LABEL_43:
  v31 = (v10 - v4) / 48;
  if (v20 != v4 || v20 >= &v4[48 * v31])
  {
    memmove(v20, v4, 48 * v31);
  }

  return 1;
}

uint64_t sub_1C7100F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7100F8C(uint64_t a1)
{
  v2 = type metadata accessor for EventSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7100FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static Spatial3DAssetResourceUtils.extractAlchemistResourcePath(from:)()
{
  sub_1C755068C();
  sub_1C755176C();
  sub_1C6FE1034();
  sub_1C6FCA5E0(v8);
  if (!v10[3])
  {
    v1 = v10;
LABEL_8:
    sub_1C6FB5FC8(v1, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1C755068C();
  sub_1C6FE3750();

  if (!v9)
  {
    v1 = v8;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

LABEL_9:
  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC2178A0);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Failed to extract alchemist resource", v5, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C7103924();
  OUTLINED_FUNCTION_9_10();
  v6 = swift_allocError();
  *v7 = xmmword_1C755FEB0;
  OUTLINED_FUNCTION_17_28(v6, v7);
  return swift_willThrow();
}

id static Spatial3DAssetResourceUtils.spatial3DAssetResource(for:resourceType:)(uint64_t a1, id a2)
{
  v3 = [objc_opt_self() assetResourcesForAsset:a1 includeDerivatives:1];
  sub_1C6F65BE8(0, &qword_1EC215670, 0x1E69786D8);
  v4 = sub_1C7550B5C();

  v13 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6FB6304();
  v6 = 0;
  v7 = &selRef_clsSceneClassifications;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA5DDD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v10 = MEMORY[0x1CCA5DDD0](0, a2);
      goto LABEL_16;
    }

    if ([v8 type] == a2 && (objc_msgSend(v9, v7[421]) & 1) != 0)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v7 = &selRef_clsSceneClassifications;
    }

    else
    {
    }

    ++v6;
  }

  a2 = v13;
  if (sub_1C6FB6304())
  {
    sub_1C6FB6330();
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    v10 = *(v13 + 32);
LABEL_16:
    v11 = v10;

    return v11;
  }

  return 0;
}

uint64_t static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71014D4()
{
  v52 = v0;
  if (qword_1EC213DE0 != -1)
  {
    OUTLINED_FUNCTION_8_27();
    swift_once();
  }

  v1 = qword_1EC217898;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v2 = v1;
  v0[15] = PerformanceMeasure.init(name:log:)();
  v3 = OUTLINED_FUNCTION_0_11();
  v5 = static Spatial3DAssetResourceUtils.spatial3DAssetResource(for:resourceType:)(v3, v4);
  v0[16] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[12];
    v8 = [objc_allocWithZone(MEMORY[0x1E6978708]) init];
    v0[17] = v8;
    [v8 setNetworkAccessAllowed_];
    if (v7)
    {
      v10 = v0[12];
      v9 = v0[13];
      OUTLINED_FUNCTION_30();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      v0[6] = sub_1C7106EC0;
      v0[7] = v11;
      v0[2] = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_7_30(COERCE_DOUBLE(1107296256));
      v0[4] = v12;
      v0[5] = &block_descriptor_7;
      v13 = _Block_copy(v0 + 2);
      sub_1C6F9EE84(v10, v9);

      [v8 setProgressHandler_];
      _Block_release(v13);
      sub_1C6F6E5B4(v10, v9);
    }

    v14 = v0[14];
    v15 = swift_task_alloc();
    v0[18] = v15;
    v15[2] = v6;
    v15[3] = v8;
    v15[4] = v14;
    v16 = swift_task_alloc();
    v0[19] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
    *v16 = v0;
    v16[1] = sub_1C7101910;
    OUTLINED_FUNCTION_41();
    v23 = 0xD000000000000031;
    v24 = v15;

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v23, v20, v21, v24, v22);
  }

  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v25 = v0[10];
  v26 = sub_1C754FF1C();
  __swift_project_value_buffer(v26, qword_1EC2178A0);
  v27 = v25;
  v28 = sub_1C754FEEC();
  sub_1C755117C();
  v29 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[10];
    v32 = v0[11];
    OUTLINED_FUNCTION_11_3();
    v33 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v33 = 136315394;
    v0[8] = v32;
    type metadata accessor for PHAssetResourceType(0);
    v34 = sub_1C75506EC();
    v36 = sub_1C6F765A4(v34, v35, &v51);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = sub_1C70CAC04(v31);
    v39 = v38;

    if (!v39)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE38](v17, v18, v19, v23, v20, v21, v24, v22);
    }

    v40 = sub_1C6F765A4(v37, v39, &v51);

    *(v33 + 14) = v40;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v41, v42, v43, v44, v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v45);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v46);
  }

  else
  {
    v47 = v0[10];
  }

  v48 = sub_1C754DD2C();
  OUTLINED_FUNCTION_28_11(v48);

  OUTLINED_FUNCTION_43();

  return v49();
}

uint64_t sub_1C7101910()
{
  OUTLINED_FUNCTION_42();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v2 = v7;
  *(v7 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7101A1C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);

  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v2();
}

void sub_1C7101A88()
{

  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 80);
  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EC2178A0);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C754FEEC();
  LOBYTE(v2) = sub_1C755119C();

  v7 = os_log_type_enabled(v6, v2);
  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  if (v7)
  {
    v10 = *(v0 + 80);
    v30 = *(v0 + 88);
    OUTLINED_FUNCTION_98();
    v32 = v11;
    v31 = v9;
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_23();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136315650;
    v15 = [v10 localIdentifier];
    v16 = sub_1C755068C();
    v18 = v17;

    v19 = sub_1C6F765A4(v16, v18, &v33);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v30;
    *(v12 + 22) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v13 = v21;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v22, v23, v24, v25, v12, 0x20u);
    sub_1C6FB5FC8(v13, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v26 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v26);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v27 = sub_1C754DD2C();
  OUTLINED_FUNCTION_28_11(v27);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

void static Spatial3DAssetResourceUtils.persistSpatial3DResult(asset:generatedContentURL:resourceType:)(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v63 = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v56 = v8;
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  if (qword_1EC213DE0 != -1)
  {
    OUTLINED_FUNCTION_8_27();
    swift_once();
  }

  v12 = qword_1EC217898;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v13 = v12;
  v14 = PerformanceMeasure.init(name:log:)();
  v61 = [a1 photoLibrary];
  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EC2178A0);
  v16 = a1;
  v17 = sub_1C754FEEC();
  v18 = sub_1C755118C();
  v19 = OUTLINED_FUNCTION_72();
  v21 = os_log_type_enabled(v19, v20);
  v60 = v14;
  v62 = v6;
  if (v21)
  {
    v55 = v4;
    OUTLINED_FUNCTION_13_3();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    v24 = sub_1C70CAC04(v16);
    v25 = v16;
    v27 = v26;
    v28 = v25;

    if (!v27)
    {
      __break(1u);
      return;
    }

    v29 = sub_1C6F765A4(v24, v27, aBlock);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Caching Spatial3D result for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v4 = v55;
    v6 = v62;
    v16 = v28;
  }

  else
  {
  }

  type metadata accessor for SpatialAnalyticsUtils();
  LOBYTE(aBlock[0]) = 0;
  v55 = v16;
  v30 = v63;
  static SpatialAnalyticsUtils.sendPersistEvent(asset:outputURL:spatialType:)();
  v54 = *(v6 + 16);
  v54(v11, v30, v4);
  v31 = sub_1C754FEEC();
  v32 = sub_1C755118C();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_13_3();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    sub_1C7106F84(v34, v35);
    v36 = sub_1C7551D8C();
    v37 = v4;
    v39 = v38;
    (*(v62 + 8))(v11, v37);
    v40 = sub_1C6F765A4(v36, v39, aBlock);
    v4 = v37;

    *(v33 + 4) = v40;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Persisting from temp file %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v6 = v62;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    (*(v6 + 8))(v11, v4);
  }

  v41 = v61;
  if (!v61)
  {
    goto LABEL_15;
  }

  v42 = v57;
  v54(v57, v63, v4);
  v43 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v44 = (v56 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v55;
  v47 = v58;
  *(v45 + 2) = v55;
  *(v45 + 3) = v47;
  (*(v6 + 32))(&v45[v43], v42, v4);
  *&v45[v44] = v59;
  aBlock[4] = sub_1C7106F04;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11_1();
  aBlock[2] = v48;
  aBlock[3] = &block_descriptor_10;
  v49 = _Block_copy(aBlock);
  v50 = v46;
  v51 = v41;

  aBlock[0] = 0;
  LODWORD(v44) = [v51 performChangesAndWait:v49 error:aBlock];
  _Block_release(v49);

  if (v44)
  {
    v52 = aBlock[0];

LABEL_15:
    sub_1C6F85170();

    return;
  }

  v53 = aBlock[0];
  sub_1C754DBEC();

  swift_willThrow();
  sub_1C6F85170();
}

void static Spatial3DAssetResourceUtils.cleanupTemporaryFile(at:)(uint64_t a1, uint64_t a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v47 - v10;
  v12 = [objc_opt_self() defaultManager];
  sub_1C754DCDC();
  v13 = sub_1C755065C();
  v14 = [v12 fileExistsAtPath_];

  if (!v14)
  {

    goto LABEL_5;
  }

  v15 = sub_1C755065C();

  v48[0] = 0;
  v16 = [v12 removeItemAtPath:v15 error:v48];

  if (v16)
  {
    v17 = v48[0];
LABEL_5:
    if (qword_1EC213DE8 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EC2178A0);
    (*(v5 + 16))(v11, a1, v3);
    v19 = sub_1C754FEEC();
    v20 = sub_1C755118C();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_13_3();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315138;
      sub_1C7106F84(v22, v23);
      v24 = sub_1C7551D8C();
      v26 = v25;
      v27 = OUTLINED_FUNCTION_0_11();
      v28(v27);
      v29 = sub_1C6F765A4(v24, v26, v48);

      *(v21 + 4) = v29;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Success removing file at %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v30 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v30);
    }

    else
    {

      (*(v5 + 8))(v11, v3);
    }

    return;
  }

  v31 = v48[0];
  v32 = sub_1C754DBEC();

  swift_willThrow();
  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v33 = sub_1C754FF1C();
  __swift_project_value_buffer(v33, qword_1EC2178A0);
  (*(v5 + 16))(v8, a1, v3);
  v34 = v32;
  v35 = sub_1C754FEEC();
  v36 = sub_1C755119C();

  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_11_3();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_23();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v39 = swift_slowAlloc();
    v47[0] = v39;
    v48[0] = v39;
    *v37 = 136315394;
    sub_1C7106F84(v39, v40);
    v41 = sub_1C7551D8C();
    v43 = v42;
    (*(v5 + 8))(v8, v3);
    v44 = sub_1C6F765A4(v41, v43, v48);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2112;
    v45 = v32;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v46;
    *v38 = v46;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "Error removing file at %s: %@", v37, 0x16u);
    sub_1C6FB5FC8(v38, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    __swift_destroy_boxed_opaque_existential_1(v47[0]);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    (*(v5 + 8))(v8, v3);
  }
}

uint64_t static Spatial3DAssetResourceUtils.requestFullSizeImageURL(for:progressHandler:cancellationHandler:)()
{
  OUTLINED_FUNCTION_42();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v7 = sub_1C754DD2C();
  v0[14] = v7;
  OUTLINED_FUNCTION_18(v7);
  v0[15] = v8;
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C710286C()
{
  v73 = v0;
  v1 = *(v0 + 72);
  v2 = [objc_opt_self() assetResourcesForAsset:v1 includeDerivatives:1];
  sub_1C6F65BE8(0, &qword_1EC215670, 0x1E69786D8);
  v3 = sub_1C7550B5C();

  if ([v1 hasAdjustments])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  v72[0] = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6FB6304();
  v6 = 0;
  v7 = &selRef_mergedPersonIdentifiers;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA5DDD0](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v10 = MEMORY[0x1CCA5DDD0](0, v1);
      goto LABEL_18;
    }

    if ([v8 type] == v4)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      v1 = v72;
      sub_1C755193C();
    }

    else
    {
    }

    ++v6;
  }

  v1 = v72[0];
  if (!sub_1C6FB6304())
  {

    sub_1C7103924();
    OUTLINED_FUNCTION_9_10();
    v31 = swift_allocError();
    *v32 = xmmword_1C755FEA0;
    OUTLINED_FUNCTION_17_28(v31, v32);
    swift_willThrow();

    OUTLINED_FUNCTION_43();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_27_19();
  v7 = v71;
  if (v3)
  {
    goto LABEL_39;
  }

  v10 = v1[4];
LABEL_18:
  v11 = v10;
  v7[17] = v10;

  v12 = [v11 privateFileURL];
  if (v12)
  {
    v13 = v12;
    sub_1C754DCCC();

    if (qword_1EC213DE8 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    v14 = v7[9];
    v15 = sub_1C754FF1C();
    __swift_project_value_buffer(v15, qword_1EC2178A0);
    v16 = v14;
    v17 = sub_1C754FEEC();
    LOBYTE(v14) = sub_1C755117C();

    if (os_log_type_enabled(v17, v14))
    {
      v18 = v7[9];
      OUTLINED_FUNCTION_13_3();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v20 = swift_slowAlloc();
      v72[0] = v20;
      *v19 = 136315138;
      v21 = [v18 localIdentifier];
      v22 = sub_1C755068C();
      v24 = v23;

      v25 = sub_1C6F765A4(v22, v24, v72);

      *(v19 + 4) = v25;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v26, v27, v28, v29, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v30 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v30);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    (*(v7[15] + 4))(v7[8], v7[16], v7[14]);

    OUTLINED_FUNCTION_43();
LABEL_25:
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v35 = v7[9];
  v36 = sub_1C754FF1C();
  __swift_project_value_buffer(v36, qword_1EC2178A0);
  v37 = v35;
  v38 = sub_1C754FEEC();
  v39 = sub_1C755117C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v7[9];
    OUTLINED_FUNCTION_13_3();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v42 = swift_slowAlloc();
    v72[0] = v42;
    *v41 = 136315138;
    v43 = [v40 localIdentifier];
    v44 = sub_1C755068C();
    v46 = v45;

    v47 = sub_1C6F765A4(v44, v46, v72);
    v7 = v71;

    *(v41 + 4) = v47;
    _os_log_impl(&dword_1C6F5C000, v38, v39, "Asset %s original not found locally, requesting over network", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v48 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v48);
  }

  v49 = v7[10];
  v50 = [objc_opt_self() defaultManager];
  v7[18] = v50;
  v51 = [objc_allocWithZone(MEMORY[0x1E6978708]) init];
  v7[19] = v51;
  [v51 setNetworkAccessAllowed_];
  if (v49)
  {
    v53 = v7[10];
    v52 = v7[11];
    v7[6] = v53;
    v7[7] = v52;
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_7_30(COERCE_DOUBLE(1107296256));
    v7[4] = v54;
    v7[5] = &block_descriptor_15;
    v56 = _Block_copy(v55);
    sub_1C6F9EE84(v53, v52);

    [v51 setProgressHandler_];
    _Block_release(v56);
    v53(0.0);
    sub_1C6F6E5B4(v53, v52);
  }

  v57 = v7[12];
  v58 = v7[13];
  v59 = swift_task_alloc();
  v7[20] = v59;
  *(v59 + 2) = v50;
  *(v59 + 3) = v11;
  *(v59 + 4) = v51;
  *(v59 + 5) = v57;
  *(v59 + 6) = v58;
  v60 = swift_task_alloc();
  v7[21] = v60;
  *v60 = v7;
  *(v60 + 1) = sub_1C7102F0C;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_129();

  return MEMORY[0x1EEE6DE38](v61, v62, v63, v64, v65, v66, v67, v68);
}

uint64_t sub_1C7102F0C()
{
  OUTLINED_FUNCTION_42();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v2 = v7;
  *(v7 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7103018()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7103088()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t static Spatial3DAssetResourceUtils.requestAndSaveCroppedImageURL(for:with:to:)()
{
  OUTLINED_FUNCTION_42();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[18] = v5;
  v1[19] = v6;
  v7 = sub_1C754DD2C();
  v1[24] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[25] = v8;
  v1[26] = *(v9 + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1C7103204()
{
  v76 = v0;
  v75[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_1C754DC8C();
  v0[17] = 0.0;
  v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v0 + 17];

  v4 = *(v0 + 17);
  if (v3)
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = *(v0 + 19);
    v8 = v4;
    sub_1C754DC9C();
    v9 = static Cropping.Utilities.normalizedSuggestedCropRect(for:targetSize:)(v7, v6, v5);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if (qword_1EC213DE8 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    v16 = *(v0 + 19);
    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC2178A0);
    v18 = v16;
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 19);
    if (v21)
    {
      OUTLINED_FUNCTION_98();
      v23 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v23 = 136446722;
      v24 = sub_1C70CAC04(v22);
      v26 = v25;

      if (!v26)
      {
        __break(1u);
        return;
      }

      v28 = *(v0 + 20);
      v27 = *(v0 + 21);
      v29 = sub_1C6F765A4(v24, v26, v75);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2082;
      *(v0 + 15) = v28;
      *(v0 + 16) = v27;
      type metadata accessor for CGSize(0);
      v30 = sub_1C75506EC();
      v32 = sub_1C6F765A4(v30, v31, v75);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2082;
      v0[8] = v9;
      v0[9] = v11;
      v0[10] = v13;
      v0[11] = v15;
      type metadata accessor for CGRect(0);
      v33 = sub_1C75506EC();
      v35 = sub_1C6F765A4(v33, v34, v75);

      *(v23 + 24) = v35;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Generating Spatial3D resource for %{public}s in background process at target size %{public}s with cropRect: %{public}s", v23, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v38 = *(v0 + 27);
    v37 = *(v0 + 28);
    v39 = *(v0 + 25);
    v40 = *(v0 + 26);
    v41 = *(v0 + 24);
    v72 = *(v0 + 23);
    v43 = v0[20];
    v42 = v0[21];
    v74 = *(v0 + 19);
    v71 = sub_1C7105A9C(v9, v11, v13, v15);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v73 = objc_opt_self();
    (*(v39 + 16))(v38, v37, v41);
    v45 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v46 = (v40 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v47 + v45;
    v49 = *(v39 + 32);
    v49(v48, v38, v41);
    *(v47 + v46) = v44;
    *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v72;
    *(v0 + 6) = sub_1C7106FEC;
    *(v0 + 7) = v47;
    OUTLINED_FUNCTION_9_31();
    *(v0 + 3) = 1107296256;
    *(v0 + 4) = sub_1C7106324;
    *(v0 + 5) = &block_descriptor_24;
    v51 = _Block_copy(v50);

    [v73 requestImageForAsset:v74 targetSize:1 contentMode:v71 options:v51 resultHandler:{v43, v42}];
    _Block_release(v51);
    swift_beginAccess();
    v52 = *(v44 + 16);
    if (!v52)
    {
      v58 = v49;
      v59 = sub_1C754FEEC();
      sub_1C755117C();
      v60 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v63, v64, v65, v66, v62, 2u);
        v67 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v67);
      }

      v68 = *(v0 + 28);
      v69 = *(v0 + 24);
      v70 = *(v0 + 18);

      v58(v70, v68, v69);

      OUTLINED_FUNCTION_43();
      goto LABEL_12;
    }

    v53 = *(v0 + 28);
    v55 = *(v0 + 24);
    v54 = *(v0 + 25);
    swift_willThrow();
    v56 = v52;

    (*(v54 + 8))(v53, v55);
  }

  else
  {
    v36 = v4;
    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();
LABEL_12:

  v57();
}

uint64_t sub_1C7103820()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC217898 = result;
  return result;
}

uint64_t sub_1C7103898()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2178A0);
  __swift_project_value_buffer(v0, qword_1EC2178A0);
  if (qword_1EC213DE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC217898;
  return sub_1C754FF2C();
}

unint64_t sub_1C7103924()
{
  result = qword_1EC2178B8;
  if (!qword_1EC2178B8)
  {
    result = swift_getWitnessTable(byte_1C756C700, &type metadata for Spatial3DAssetResourceUtils.Error, v0, v1);
    atomic_store(result, &qword_1EC2178B8);
  }

  return result;
}

double sub_1C7103978(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

void sub_1C71039CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C8, &qword_1C756C770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = sub_1C754DD2C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v20 = [objc_opt_self() defaultManager];
  v28 = sub_1C71073DC;
  v29 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C7103CA8;
  v27 = &block_descriptor_50;
  v14 = _Block_copy(&aBlock);

  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v15, v9, v5);
  *(v17 + v16) = v10;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v28 = sub_1C71073F8;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C71042E8;
  v27 = &block_descriptor_56;
  v18 = _Block_copy(&aBlock);

  v19 = v20;
  [v20 requestFileURLForAssetResource:v22 options:v23 urlReceivedHandler:v14 completionHandler:v18];
  _Block_release(v18);
  _Block_release(v14);
}

uint64_t sub_1C7103CA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C754DD2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1C754DCCC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C7103D9C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = sub_1C754DD2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = swift_projectBox();
  if (a1)
  {
    v48 = a1;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C8, &qword_1C756C770);
      return sub_1C7550C9C();
    }
  }

  swift_beginAccess();
  sub_1C71072FC(v18, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C6FB5FC8(v10, &qword_1EC215BD8, &unk_1C7564890);
LABEL_12:
    sub_1C7103924();
    v37 = swift_allocError();
    *v38 = xmmword_1C755FF30;
    *(v38 + 16) = 3;
    v47 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C8, &qword_1C756C770);
    return sub_1C7550C9C();
  }

  (*(v12 + 32))(v17, v10, v11);
  v20 = [objc_opt_self() defaultManager];
  sub_1C754DCDC();
  v21 = sub_1C755065C();

  v22 = [v20 fileExistsAtPath_];

  if (!v22)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_12;
  }

  if (qword_1EC213DE8 != -1)
  {
    swift_once();
  }

  v23 = sub_1C754FF1C();
  __swift_project_value_buffer(v23, qword_1EC2178A0);
  v46 = *(v12 + 16);
  v46(v14, v17, v11);
  v24 = sub_1C754FEEC();
  v25 = sub_1C755117C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v42 = v26;
    v27 = swift_slowAlloc();
    v44 = v27;
    v47 = v27;
    *v26 = 136315138;
    sub_1C7106F84(v27, v28);
    v43 = v25;
    v41 = sub_1C7551D8C();
    v45 = a2;
    v30 = v29;
    v31 = *(v12 + 8);
    v31(v14, v11);
    v32 = v31;
    v33 = sub_1C6F765A4(v41, v30, &v47);

    v34 = v42;
    *(v42 + 1) = v33;
    v35 = v34;
    _os_log_impl(&dword_1C6F5C000, v24, v43, "Resource found at %s", v34, 0xCu);
    v36 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1CCA5F8E0](v36, -1, -1);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
  }

  else
  {

    v40 = *(v12 + 8);
    v40(v14, v11);
    v32 = v40;
  }

  v46(v7, v17, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C8, &qword_1C756C770);
  sub_1C7550CAC();
  return v32(v17, v11);
}

void sub_1C71042E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t static Spatial3DAssetResourceUtils.findBestLocalImageURLs(asset:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v77 = a3;
  v78 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v76 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v73 - v9;
  v10 = 0x1E69786D8;
  v11 = [objc_opt_self() assetResourcesForAsset:a1 includeDerivatives:1];
  sub_1C6F65BE8(0, &qword_1EC215670, 0x1E69786D8);
  v12 = sub_1C7550B5C();

  v79 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C6FB6304();
  for (i = 0; v13 != i; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA5DDD0](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    v3 = v15;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_74:
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
      v40 = MEMORY[0x1CCA5DDD0](0, v10);
      goto LABEL_45;
    }

    if (([(SEL *)v15 isLocallyAvailable]& 1) != 0)
    {
      v10 = &v79;
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }
  }

  v16 = v79;
  if ([a1 hasAdjustments])
  {
    v17 = 5;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_1C6FB6304();
  v19 = 0;
  v20 = v16 & 0xC000000000000001;
  v3 = &off_1E82A3000;
  while (v18 != v19)
  {
    if (v20)
    {
      v21 = MEMORY[0x1CCA5DDD0](v19, v16);
    }

    else
    {
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_78;
      }

      v21 = *(v16 + 8 * v19 + 32);
    }

    v10 = v21;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_77;
    }

    if ([v21 type] == v17)
    {
      v22 = [v10 privateFileURL];
      if (v22)
      {
        v23 = v22;

        v24 = v74;
        sub_1C754DCCC();

        if (qword_1EC213DE8 != -1)
        {
          OUTLINED_FUNCTION_0_62();
          swift_once();
        }

        v25 = sub_1C754FF1C();
        __swift_project_value_buffer(v25, qword_1EC2178A0);
        v26 = v10;
        v27 = sub_1C754FEEC();
        v28 = sub_1C755118C();

        if (os_log_type_enabled(v27, v28))
        {
          OUTLINED_FUNCTION_11_3();
          v29 = swift_slowAlloc();
          OUTLINED_FUNCTION_20_23();
          v30 = swift_slowAlloc();
          *v29 = 134218242;
          *(v29 + 4) = v17;
          *(v29 + 12) = 2112;
          *(v29 + 14) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&dword_1C6F5C000, v27, v28, "Choosing resource (%ld): %@", v29, 0x16u);
          sub_1C6FB5FC8(v30, &qword_1EC215190, &qword_1C755C730);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          v26 = v27;
          v27 = v31;
        }

        v32 = v77;
        v33 = *(v76 + 32);
        v34 = v77;
        v35 = v24;
        goto LABEL_71;
      }

      break;
    }

    ++v19;
  }

  v36 = 0;
  v79 = MEMORY[0x1E69E7CC0];
  while (v18 != v36)
  {
    if (v20)
    {
      v37 = MEMORY[0x1CCA5DDD0](v36, v16);
    }

    else
    {
      if (v36 >= *(v16 + 16))
      {
        goto LABEL_76;
      }

      v37 = *(v16 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_75;
    }

    if ([v37 type] == 103)
    {
      v10 = &v79;
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v36;
  }

  v79 = sub_1C71CC8C0(v39);
  sub_1C71063C8(&v79);

  v10 = v79;
  if (!sub_1C6FB6304())
  {

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_27_19();
  if (&selRef_mergedPersonIdentifiers)
  {
    goto LABEL_79;
  }

  v40 = v10[4];
LABEL_45:
  v41 = v40;

  v42 = [v41 v3[264]];
  if (v42)
  {
    v43 = v42;
    sub_1C754DCCC();

    v44 = [v41 pixelWidth];
    v45 = [v41 pixelHeight];
    if (v45 >= v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v41 pixelWidth];
    v48 = [v41 pixelHeight];
    if (v48 <= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v48;
    }

    if (v49 < 1024 || v46 < 512)
    {
      if (qword_1EC213DE8 != -1)
      {
        OUTLINED_FUNCTION_0_62();
        swift_once();
      }

      v63 = sub_1C754FF1C();
      __swift_project_value_buffer(v63, qword_1EC2178A0);
      v64 = sub_1C754FEEC();
      v65 = sub_1C755118C();
      v66 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1C6F5C000, v64, v65, "Locally available resources are too small, return nil", v68, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v69 = v41;
      }

      else
      {
        v69 = v64;
        v64 = v41;
      }

      v70 = v78;
      (*(v76 + 8))(v75, v78);
      v71 = v77;
      v72 = 1;
    }

    else
    {
      if (qword_1EC213DE8 != -1)
      {
        OUTLINED_FUNCTION_0_62();
        swift_once();
      }

      v50 = sub_1C754FF1C();
      __swift_project_value_buffer(v50, qword_1EC2178A0);
      v51 = v41;
      v52 = sub_1C754FEEC();
      v53 = sub_1C755118C();
      v54 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_98();
        v56 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_23();
        v57 = swift_slowAlloc();
        *v56 = 134218498;
        *(v56 + 4) = [v51 pixelWidth];
        *(v56 + 12) = 2048;
        *(v56 + 14) = [v51 pixelHeight];

        *(v56 + 22) = 2112;
        *(v56 + 24) = v51;
        *v57 = v51;
        v58 = v51;
        _os_log_impl(&dword_1C6F5C000, v52, v53, "Choosing largestDerivative (%ldx%ld): %@", v56, 0x20u);
        sub_1C6FB5FC8(v57, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v59 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v59);
      }

      else
      {

        v52 = v51;
      }

      v32 = v77;
      v33 = *(v76 + 32);
      v34 = v77;
      v35 = v75;
LABEL_71:
      v70 = v78;
      v33(v34, v35, v78);
      v71 = v32;
      v72 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v71, v72, 1, v70);
  }

  else
  {

LABEL_60:
    v60 = v77;
    v61 = v78;

    return __swift_storeEnumTagSinglePayload(v60, 1, 1, v61);
  }
}

void static Spatial3DAssetResourceUtils.clearSpatial3DScene(for:with:)(void *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = [a1 photoLibrary];
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_30();
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    aBlock[4] = sub_1C7107090;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_11_1();
    aBlock[2] = v7;
    aBlock[3] = &block_descriptor_31;
    v8 = _Block_copy(aBlock);
    v9 = v5;
    v10 = a1;

    aBlock[0] = 0;
    v11 = [v9 performChangesAndWait:v8 error:aBlock];
    _Block_release(v8);

    if (v11)
    {
      v12 = aBlock[0];
    }

    else
    {
      v13 = aBlock[0];
      v14 = sub_1C754DBEC();

      swift_willThrow();
      if (qword_1EC213DE8 != -1)
      {
        OUTLINED_FUNCTION_0_62();
        swift_once();
      }

      v15 = sub_1C754FF1C();
      __swift_project_value_buffer(v15, qword_1EC2178A0);
      v16 = v10;
      v17 = v14;
      v18 = sub_1C754FEEC();
      v19 = sub_1C755119C();

      if (os_log_type_enabled(v18, v19))
      {
        OUTLINED_FUNCTION_11_3();
        v20 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_23();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v20 = 138412546;
        *(v20 + 4) = v16;
        *v28 = v16;
        *(v20 + 12) = 2080;
        swift_getErrorValue();
        v21 = v16;
        v22 = sub_1C7551EAC();
        v24 = sub_1C6F765A4(v22, v23, aBlock);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_1C6F5C000, v18, v19, "Failed to remove asset resource for asset %@: %s", v20, 0x16u);
        sub_1C6FB5FC8(v28, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v25 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v25);
      }

      sub_1C7103924();
      OUTLINED_FUNCTION_9_10();
      v26 = swift_allocError();
      *v27 = 0;
      v27[1] = 0;
      OUTLINED_FUNCTION_17_28(v26, v27);
      swift_willThrow();
    }
  }
}

void sub_1C7104EB0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() changeRequestForAsset_];
  [v3 deleteAssetResourceWithType_];
}

void sub_1C7104F28(void *a1, uint64_t a2)
{
  v21 = [objc_opt_self() changeRequestForAsset_];
  v4 = sub_1C754DC8C();
  LODWORD(a2) = [v21 addAssetResourceWithType:a2 fromFileAtURL:v4];

  if (a2)
  {
    if (qword_1EC213DE8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, qword_1EC2178A0);
    v6 = a1;
    v7 = sub_1C754FEEC();
    v8 = sub_1C755117C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = sub_1C70CAC04(v6);
      v13 = v12;

      if (v13)
      {
        v14 = sub_1C6F765A4(v11, v13, &v22);

        *(v9 + 4) = v14;
        v15 = "Successfully added resource for %s";
LABEL_12:
        _os_log_impl(&dword_1C6F5C000, v7, v8, v15, v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x1CCA5F8E0](v10, -1, -1);
        MEMORY[0x1CCA5F8E0](v9, -1, -1);

        return;
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

  else
  {
    if (qword_1EC213DE8 != -1)
    {
      swift_once();
    }

    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EC2178A0);
    v6 = a1;
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v17 = sub_1C70CAC04(v6);
      v19 = v18;

      if (v19)
      {
        v20 = sub_1C6F765A4(v17, v19, &v22);

        *(v9 + 4) = v20;
        v15 = "Failed to add resource for %s";
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }
}

void sub_1C7105214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C0, &qword_1C756C750);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  v14 = swift_allocBox();
  v16 = v15;
  v17 = sub_1C754DD2C();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v41 = sub_1C71074DC;
  v42 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1C7103CA8;
  v40 = &block_descriptor_37;
  v18 = _Block_copy(&aBlock);

  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v9);
  *(v21 + v20) = v14;
  v41 = sub_1C710719C;
  v42 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v22 = v33;
  v39 = sub_1C71042E8;
  v40 = &block_descriptor_43;
  v23 = _Block_copy(&aBlock);

  v24 = [v34 requestFileURLForAssetResource:v35 options:v36 urlReceivedHandler:v18 completionHandler:v23];
  _Block_release(v23);
  _Block_release(v18);
  if (v22)
  {
    v25 = sub_1C7550D5C();
    v26 = v31;
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v25);
    sub_1C7550D1C();
    v27 = v32;

    v28 = sub_1C7550D0C();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    *(v29 + 16) = v28;
    *(v29 + 24) = v30;
    *(v29 + 32) = v22;
    *(v29 + 40) = v27;
    *(v29 + 48) = v24;
    sub_1C6FEB80C(0, 0, v26, &unk_1C756C760, v29);
  }
}

uint64_t sub_1C71055B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  swift_projectBox();
  v6 = sub_1C754DD2C();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_0_11();
  return sub_1C710736C(v7, v8);
}

uint64_t sub_1C71056AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C754DD2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = swift_projectBox();
  if (a1)
  {
    v20 = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C6F65BE8(0, &qword_1EC216D18, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C0, &qword_1C756C750);
      return sub_1C7550C9C();
    }
  }

  swift_beginAccess();
  sub_1C71072FC(v14, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C6FB5FC8(v6, &qword_1EC215BD8, &unk_1C7564890);
    sub_1C7103924();
    v16 = swift_allocError();
    *v17 = xmmword_1C7569120;
    *(v17 + 16) = 3;
    v19 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C0, &qword_1C756C750);
    return sub_1C7550C9C();
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v10, v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C0, &qword_1C756C750);
  sub_1C7550CAC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1C7105988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 40) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_1C7550D1C();
  *(v6 + 32) = sub_1C7550D0C();
  v8 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C7105A24, v8, v7);
}

uint64_t sub_1C7105A24()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v2(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

id sub_1C7105A9C(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v8 setDeliveryMode_];
  [v8 setVersion_];
  [v8 setNetworkAccessAllowed_];
  [v8 setResizeMode_];
  [v8 setDownloadPriority_];
  [v8 setSynchronous_];
  [v8 setNormalizedCropRect_];
  return v8;
}

void sub_1C7105B8C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v22 = a1;
    static Spatial3DAssetResourceUtils.saveImage(_:to:)(v22, a3);
  }

  else
  {
    if (qword_1EC213DE8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C754FF1C();
    __swift_project_value_buffer(v7, qword_1EC2178A0);
    v8 = a2;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      if (a2)
      {
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v11 + 4) = v14;
      *v12 = v15;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Image request failed: %@", v11, 0xCu);
      sub_1C6FB5FC8(v12, &qword_1EC215190, &qword_1C755C730);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD0, &unk_1C756C740);
    v16 = sub_1C755148C();
    v18 = v17;
    sub_1C7103924();
    v19 = swift_allocError();
    *v20 = v16;
    *(v20 + 8) = v18;
    *(v20 + 16) = 2;
    swift_beginAccess();
    v21 = *(a4 + 16);
    *(a4 + 16) = v19;
  }
}

void static Spatial3DAssetResourceUtils.saveImage(_:to:)(CGImage *a1, uint64_t a2)
{
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v43 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754F88C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C754DC8C();
  sub_1C754F87C();
  sub_1C754F86C();
  (*(v10 + 8))(v13, v8);
  v15 = sub_1C755065C();

  v16 = CGImageDestinationCreateWithURL(v14, v15, 1uLL, 0);

  if (!v16)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1C755180C();

    v44 = 0xD00000000000001ALL;
    v45 = 0x80000001C759F010;
    sub_1C7106F84(v33, v34);
    v35 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v35);

    v36 = v44;
    v37 = v45;
    sub_1C7103924();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    swift_willThrow();
    return;
  }

  CGImageDestinationAddImage(v16, a1, 0);
  if (!CGImageDestinationFinalize(v16))
  {
    sub_1C7103924();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v39 = 0xD00000000000001ALL;
    *(v39 + 8) = 0x80000001C759F030;
    *(v39 + 16) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1EC213DE8 != -1)
  {
    OUTLINED_FUNCTION_0_62();
    swift_once();
  }

  v17 = sub_1C754FF1C();
  __swift_project_value_buffer(v17, qword_1EC2178A0);
  v19 = v42;
  v18 = v43;
  v20 = v4;
  (*(v43 + 16))(v42, a2, v4);
  v21 = sub_1C754FEEC();
  v22 = sub_1C755118C();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_3();
    v23 = v18;
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v25 = swift_slowAlloc();
    v41 = v25;
    v44 = v25;
    *v24 = 136315138;
    sub_1C7106F84(v25, v26);
    v27 = sub_1C7551D8C();
    v28 = v20;
    v29 = v27;
    v31 = v30;
    (*(v23 + 8))(v19, v28);
    v32 = sub_1C6F765A4(v29, v31, &v44);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Wrote image successfully to %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

LABEL_9:
    return;
  }

  (*(v18 + 8))(v19, v4);
}

void sub_1C7106324(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C71063C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C7106444(v6);
  return sub_1C755193C();
}

void sub_1C7106444(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D4F0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7106614(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C7106524(0, v3, 1, a1);
  }
}

void sub_1C7106524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v17 = v7;
      v18 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 pixelWidth];
        v13 = [v11 pixelWidth];

        if (v13 >= v12)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v14 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v14;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v18 + 8;
      v7 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7106614(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v94 = v8 + 16;
      v95 = *(v8 + 2);
      while (v95 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v96 = v8;
        v97 = &v8[16 * v95];
        v98 = *v97;
        v99 = &v94[2 * v95];
        v100 = *(v99 + 1);
        sub_1C7106C84((*a3 + 8 * *v97), (*a3 + 8 * *v99), (*a3 + 8 * v100), v116);
        if (v5)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_120;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_121;
        }

        *v97 = v98;
        *(v97 + 1) = v100;
        v101 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_122;
        }

        v95 = *v94 - 1;
        sub_1C7423CF4(v99 + 16, v101, v99);
        *v94 = v95;
        v8 = v96;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_1C7420830();
    goto LABEL_96;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v104 = v8;
      v106 = v5;
      v11 = (*a3 + 8 * v7);
      v102 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v14 = *(*a3 + 8 * v10);
      v5 = v13;
      v112 = [v14 pixelWidth];
      v111 = [v5 pixelWidth];

      v108 = v9;
      v15 = v9 + 2;
      while (1)
      {
        v16 = v15;
        v17 = v10 + 1;
        if (v17 >= v6)
        {
          break;
        }

        LODWORD(v116) = v111 < v112;
        v18 = *(v12 - 1);
        v19 = *v12;
        v5 = v18;
        v20 = v17;
        v21 = [v19 pixelWidth];
        v22 = [v5 pixelWidth];

        v23 = v22 < v21;
        v10 = v20;
        v24 = !v23;
        v25 = v116 ^ v24;
        ++v12;
        v15 = v16 + 1;
        if ((v25 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v111 >= v112)
      {
        v8 = v104;
        v5 = v106;
        v9 = v108;
      }

      else
      {
        v9 = v108;
        if (v10 < v108)
        {
          goto LABEL_126;
        }

        if (v108 >= v10)
        {
          v8 = v104;
          v5 = v106;
        }

        else
        {
          if (v6 >= v16)
          {
            v26 = v16;
          }

          else
          {
            v26 = v6;
          }

          v27 = 8 * v26 - 8;
          v28 = v10;
          v29 = v108;
          v8 = v104;
          v5 = v106;
          v30 = v102;
          do
          {
            if (v29 != --v28)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v32 = *(v31 + v30);
              *(v31 + v30) = *(v31 + v27);
              *(v31 + v27) = v32;
            }

            ++v29;
            v27 -= 8;
            v30 += 8;
          }

          while (v29 < v28);
        }
      }
    }

    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v92;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      sub_1C6FB17EC(v48 > 1, v49 + 1, 1, v8);
      v8 = v93;
    }

    *(v8 + 2) = v50;
    v51 = v8 + 32;
    v52 = &v8[16 * v49 + 32];
    *v52 = v9;
    *(v52 + 1) = v10;
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v116 = v10;
    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        v54 = &v51[16 * v50 - 16];
        v55 = &v8[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(v8 + 4);
          v57 = *(v8 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_62:
          if (v59)
          {
            goto LABEL_111;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_114;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_119;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v50 < 2)
        {
          goto LABEL_113;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_77:
        if (v74)
        {
          goto LABEL_116;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_118;
        }

        if (v81 < v73)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v85 = v8;
        v86 = &v51[16 * v53 - 16];
        v87 = *v86;
        v88 = v53;
        v89 = &v51[16 * v53];
        v90 = *(v89 + 1);
        sub_1C7106C84((*a3 + 8 * *v86), (*a3 + 8 * *v89), (*a3 + 8 * v90), v114);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v90 < v87)
        {
          goto LABEL_106;
        }

        v5 = *(v85 + 2);
        if (v88 > v5)
        {
          goto LABEL_107;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v5)
        {
          goto LABEL_108;
        }

        v91 = v88;
        v50 = (v5 - 1);
        sub_1C7423CF4(v89 + 16, &v5[-v91 - 1], v89);
        v8 = v85;
        *(v85 + 2) = v5 - 1;
        v23 = v5 > 2;
        v5 = 0;
        if (!v23)
        {
          goto LABEL_91;
        }
      }

      v60 = &v51[16 * v50];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_109;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_110;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_112;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_115;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_123;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v116;
    if (v116 >= v6)
    {
      goto LABEL_94;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v34)
  {
    goto LABEL_42;
  }

  v105 = v8;
  v107 = v5;
  v35 = *a3;
  v36 = *a3 + 8 * v10 - 8;
  v109 = v9;
  v37 = v9 - v10;
  v113 = v34;
LABEL_35:
  v116 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    v44 = [v42 pixelWidth];
    v45 = [v43 pixelWidth];

    if (v45 >= v44)
    {
LABEL_40:
      v10 = v116 + 1;
      v36 += 8;
      --v37;
      if ((v116 + 1) == v113)
      {
        v10 = v113;
        v8 = v105;
        v5 = v107;
        v9 = v109;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v46;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_40;
    }
  }

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
}

uint64_t sub_1C7106C84(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 pixelWidth];
      v17 = [v15 pixelWidth];

      if (v17 >= v16)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v33 = v7;
  v34 = v4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = [v25 pixelWidth];
    v28 = [v26 pixelWidth];

    v29 = v5 + 1;
    if (v28 < v27)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      v4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    v4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

uint64_t sub_1C7106EC0(double a1)
{
  v2 = *(v1 + 16);
  v3 = a1;
  v5 = v3;
  v6 = 0;
  return v2(&v5, 0);
}

void sub_1C7106F04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C754DD2C();
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_12_28();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  sub_1C7104F28(v4, v5);
}

unint64_t sub_1C7106F84(uint64_t a1, uint64_t a2)
{
  result = qword_1EDD0CBD8;
  if (!qword_1EDD0CBD8)
  {
    v5 = sub_1C754DD2C();
    result = swift_getWitnessTable(MEMORY[0x1E6968FE0], v5, v2, v3);
    atomic_store(result, &qword_1EDD0CBD8);
  }

  return result;
}

void sub_1C7106FEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C754DD2C();
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_12_28();
  v3 = OUTLINED_FUNCTION_0_11();

  sub_1C7105B8C(v3, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence27Spatial3DAssetResourceUtilsC5ErrorO(uint64_t a1)
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

uint64_t sub_1C71070F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1C7107130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7107174(uint64_t result, unsigned int a2)
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

uint64_t sub_1C710719C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C0, &qword_1C756C750);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_12_28();
  v6 = *(v1 + v5);

  return sub_1C71056AC(a1, v1 + v4, v6);
}

uint64_t sub_1C7107234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C706CA78;

  return sub_1C7105988(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C71072FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C710736C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71073F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178C8, &qword_1C756C770);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_12_28();
  v6 = *(v1 + v5);

  return sub_1C7103D9C(a1, v1 + v4, v6);
}

uint64_t sub_1C71074E0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 304) = v4;
  *(v1 + 312) = v0;
  *(v1 + 288) = v5;
  *(v1 + 296) = v6;
  *(v1 + 272) = v7;
  *(v1 + 280) = v8;
  *(v1 + 264) = v9;
  *(v1 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8, &unk_1C756C900);
  OUTLINED_FUNCTION_15_3();
  *(v1 + 328) = v10;
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0, &qword_1C7583FA0);
  OUTLINED_FUNCTION_15_3();
  *(v1 + 352) = v11;
  *(v1 + 360) = swift_task_alloc();
  *(v1 + 368) = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  *(v1 + 376) = v12;
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  *(v1 + 145) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C7107680()
{
  v1 = *(v0 + 304);
  v3 = *(v1 + 24);
  v2 = (v1 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 304), v3);
  sub_1C754F1CC();
  if (sub_1C6FB6304() < 1)
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    v24 = sub_1C754FEEC();
    v25 = sub_1C755119C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C6F5C000, v24, v25, "performBatchSearch: searchQueryStrings.count is 0", v26, 2u);
      OUTLINED_FUNCTION_109();
    }

    v27 = *(v0 + 304);

    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E0, &qword_1C756C910);
    sub_1C710A0C0();
    sub_1C75504DC();
    goto LABEL_17;
  }

  v4 = *(v0 + 145);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = objc_opt_self();
  v10 = [v9 userQueryEmbeddingSearchRetrievalLimit];
  sub_1C6FB5E28(v6, v0 + 32);
  *(v0 + 16) = v4;
  *(v0 + 24) = v7;
  *(v0 + 88) = v8;
  *(v0 + 96) = v5;
  *(v0 + 104) = xmmword_1C756A560;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 700;
  *(v0 + 144) = 0;
  *(v0 + 72) = v10;
  *(v0 + 80) = 0;
  sub_1C75504FC();
  LODWORD(v9) = [v9 usePhotoKitBatchSPIForRetrieval];
  *(v0 + 148) = *(type metadata accessor for QueryAssetsRetrievalProcessor(0) + 28);
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  v13 = os_log_type_enabled(v11, v12);
  if (!v9)
  {
    if (v13)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v28, v29, "Use non-batch PhotoKit SPI for query retrieval");
      OUTLINED_FUNCTION_109();
    }

    v22 = sub_1C6FB6304();
    *(v0 + 416) = v22;
    if (v22)
    {
      v30 = *(v0 + 264);
      *(v0 + 424) = MEMORY[0x1E69E7CC8];
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1CCA5DDD0](0);
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v22);
        }

        v31 = *(v30 + 32);
      }

      *(v0 + 432) = v31;
      *(v0 + 440) = 1;
      __swift_project_boxed_opaque_existential_1((*(v0 + 312) + 24), *(*(v0 + 312) + 48));
      OUTLINED_FUNCTION_15_3();
      v36 = swift_task_alloc();
      v37 = OUTLINED_FUNCTION_17_29(v36);
      *v37 = v38;
      OUTLINED_FUNCTION_2_45(v37);
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X6, X16 }
    }

    v27 = *(v0 + 304);
    v2 = v27 + 3;
    sub_1C70DF138(v0 + 16);
LABEL_17:
    __swift_project_boxed_opaque_existential_1(v27, *v2);
    OUTLINED_FUNCTION_22_25();
    v32 = OUTLINED_FUNCTION_5_37();
    v33(v32);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X2, X16 }
  }

  if (v13)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v14, v15, "Use batch PhotoKit SPI for query retrieval");
    OUTLINED_FUNCTION_109();
  }

  v17 = *(v0 + 304);
  v16 = *(v0 + 312);
  v18 = *(v0 + 264);

  v19 = v16[6];
  v20 = v16[7];
  __swift_project_boxed_opaque_existential_1(v16 + 3, v19);
  (*(v20 + 24))(v18, v0 + 16, v17, v19, v20);
  __swift_project_boxed_opaque_existential_1(v17, *v2);
  sub_1C754F1CC();
  sub_1C7550DBC();
  *(v0 + 400) = MEMORY[0x1E69E7CC8];
  v21 = swift_task_alloc();
  *(v0 + 408) = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_6_41(v21);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6D9C8](v22);
}

uint64_t sub_1C7107C20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7107D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  isUniquelyReferenced_nonNull_native = *(v7 + 152);
  v9 = *(v7 + 176);
  if (v9 == 255)
  {
    v31 = *(v7 + 376);
    v30 = *(v7 + 384);
    v33 = *(v7 + 360);
    v32 = *(v7 + 368);
    v34 = *(v7 + 344);
    v35 = *(v7 + 352);
    v36 = *(v7 + 304);
    (*(*(v7 + 328) + 8))(*(v7 + 336), *(v7 + 320), a3, a4, a5, a6, a7);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_1C754F1AC();
    (*(v31 + 8))(v30, v32);
    (*(v35 + 8))(v33, v34);
    v37 = *(v7 + 304);
    sub_1C70DF138(v7 + 16);
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    OUTLINED_FUNCTION_22_25();
    v38 = OUTLINED_FUNCTION_5_37();
    v39(v38);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X2, X16 }
  }

  v10 = *(v7 + 160);
  v98 = *(v7 + 168);
  v99 = v10;
  if ((v9 & 1) == 0)
  {
    v42 = isUniquelyReferenced_nonNull_native[2];
    v43 = MEMORY[0x1E69E7CC0];
    v97 = *(v7 + 152);
    if (v42)
    {
      v95 = *(v7 + 176);
      *(v7 + 248) = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v42, 0, a4, a5, a6, a7);
      v43 = *(v7 + 248);
      v44 = isUniquelyReferenced_nonNull_native + 5;
      do
      {
        v45 = *(v44 - 1);
        v46 = *v44;
        *(v7 + 248) = v43;
        v48 = *(v43 + 16);
        v47 = *(v43 + 24);
        sub_1C75504FC();
        if (v48 >= v47 >> 1)
        {
          sub_1C6F7ED9C(v47 > 1, v48 + 1, 1, v49, v50, v51, v52);
          v43 = *(v7 + 248);
        }

        *(v43 + 16) = v48 + 1;
        v53 = v43 + 16 * v48;
        *(v53 + 32) = v45;
        *(v53 + 40) = v46;
        v44 += 4;
        --v42;
      }

      while (v42);
      LOBYTE(v9) = v95;
    }

    v54 = *(v7 + 400);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 256) = v54;
    sub_1C6FC2A2C();
    OUTLINED_FUNCTION_13_2();
    if (!__OFADD__(v57, v58))
    {
      v59 = v55;
      v60 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E8, &qword_1C756C918);
      if (sub_1C7551A2C())
      {
        sub_1C6FC2A2C();
        OUTLINED_FUNCTION_5_1();
        v13 = v97;
        if (!v62)
        {
          goto LABEL_31;
        }

        v59 = v61;
      }

      else
      {
        v13 = v97;
      }

      v73 = *(v7 + 256);
      if (v60)
      {
        v74 = OUTLINED_FUNCTION_16_22(v73[7]);
        *v75 = v43;
        *(v75 + 8) = 0;
        sub_1C6FDE438(v74, v76);
        v77 = v13;
        v78 = v99;
LABEL_43:
        sub_1C710A128(v77, v78, v98, v9);
        goto LABEL_46;
      }

      v73[(v59 >> 6) + 8] |= 1 << v59;
      v69 = v99;
      *(v73[6] + 8 * v59) = v99;
      v79 = v73[7] + 16 * v59;
      *v79 = v43;
      *(v79 + 8) = 0;
      v80 = v99;
      sub_1C710A128(v13, v99, v98, v9);
      v81 = v73[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (!v82)
      {
LABEL_45:
        v73[2] = v83;
LABEL_46:
        *(v7 + 400) = v73;
        v91 = swift_task_alloc();
        *(v7 + 408) = v91;
        *v91 = v7;
        OUTLINED_FUNCTION_6_41(v91);
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_94_1();

        return MEMORY[0x1EEE6D9C8](v55);
      }

      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v11 = isUniquelyReferenced_nonNull_native;
  v12 = v10;
  v13 = v11;
  v14 = sub_1C754FEEC();
  v15 = sub_1C755119C();

  if (os_log_type_enabled(v14, v15))
  {
    v94 = v11;
    v96 = isUniquelyReferenced_nonNull_native;
    v16 = *(v7 + 145);
    v17 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *(v7 + 240) = swift_slowAlloc();
    *v17 = 136315651;
    v18 = 0xE900000000000067;
    v19 = 0x6E69646465626D65;
    if (v16 != 1)
    {
      v19 = 0x6574656C706D6F63;
      v18 = 0xE800000000000000;
    }

    if (v16)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x617461646174656DLL;
    }

    if (v16)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE800000000000000;
    }

    v22 = sub_1C6F765A4(v20, v21, (v7 + 240));

    *(v17 + 4) = v22;
    *(v17 + 12) = 2085;
    v13 = v94;
    v23 = [v94 string];
    v24 = sub_1C755068C();
    v26 = v25;

    v27 = sub_1C6F765A4(v24, v26, (v7 + 240));

    *(v17 + 14) = v27;
    *(v17 + 22) = 2112;
    v10 = v99;
    v28 = v99;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v29;
    *v93 = v29;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "During %s batch search, query '%{sensitive}s' returned error %@", v17, 0x20u);
    sub_1C6FC15D8(v93);
    OUTLINED_FUNCTION_109();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    isUniquelyReferenced_nonNull_native = v96;
  }

  else
  {
  }

  v63 = *(v7 + 400);
  v64 = v10;
  swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 232) = v63;
  sub_1C6FC2A2C();
  OUTLINED_FUNCTION_13_2();
  if (__OFADD__(v66, v67))
  {
    goto LABEL_50;
  }

  v68 = v55;
  v69 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E8, &qword_1C756C918);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_1C6FC2A2C();
  OUTLINED_FUNCTION_5_1();
  if (v62)
  {
LABEL_40:
    v68 = v70;
LABEL_41:
    v73 = *(v7 + 232);
    if (v69)
    {
      v84 = OUTLINED_FUNCTION_16_22(v73[7]);
      *v85 = v99;
      *(v85 + 8) = 1;
      sub_1C6FDE438(v84, v86);
      v77 = isUniquelyReferenced_nonNull_native;
      v78 = v99;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_21_22(&v73[v68 >> 6]);
    *(v73[6] + 8 * v68) = v13;
    v87 = v73[7] + 16 * v68;
    *v87 = v99;
    *(v87 + 8) = v88;
    v89 = v13;
    sub_1C710A128(isUniquelyReferenced_nonNull_native, v99, v98, v9);
    v90 = v73[2];
    v82 = __OFADD__(v90, 1);
    v83 = v90 + 1;
    if (!v82)
    {
      goto LABEL_45;
    }

LABEL_51:
    __break(1u);
    return MEMORY[0x1EEE6D9C8](v55);
  }

LABEL_31:
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_94_1();

  return sub_1C7551E4C();
}

uint64_t sub_1C71083C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C71084C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[23];
  v9 = v7[24];
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v52 = v7[24];
    v7[27] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v10, 0, a4, a5, a6, a7);
    v11 = v7[27];
    v12 = (v8 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v7[27] = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      sub_1C75504FC();
      if (v16 >= v15 >> 1)
      {
        sub_1C6F7ED9C(v15 > 1, v16 + 1, 1, v17, v18, v19, v20);
        v11 = v7[27];
      }

      *(v11 + 16) = v16 + 1;
      v21 = v11 + 16 * v16;
      *(v21 + 32) = v14;
      *(v21 + 40) = v13;
      v12 += 4;
      --v10;
    }

    while (v10);
    v9 = v52;
  }

  v22 = v7[53];
  swift_isUniquelyReferenced_nonNull_native();
  v7[28] = v22;
  sub_1C6FC2A2C();
  OUTLINED_FUNCTION_13_2();
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_31;
  }

  v27 = v23;
  v28 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E8, &qword_1C756C918);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_14:
    v32 = v7[28];
    v33 = v7[54];
    if (v28)
    {
      v34 = v32[7] + 16 * v27;
      v35 = *v34;
      v36 = *(v34 + 8);
      *v34 = v11;
      *(v34 + 8) = 0;
      sub_1C6FDE438(v35, v36);

      swift_unknownObjectRelease();
LABEL_18:
      v41 = v7[55];
      if (v41 == v7[52])
      {
        v42 = v7[38];
        sub_1C70DF138((v7 + 2));
        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        sub_1C754F1AC();
        (*(v7[47] + 8))(v7[49], v7[46]);

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_17_1();

        __asm { BRAA            X2, X16 }
      }

      v7[53] = v32;
      v45 = v7[33];
      if ((v45 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1CCA5DDD0](v41);
      }

      else
      {
        if (v41 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_33:
          __break(1u);
          return;
        }

        v46 = *(v45 + 8 * v41 + 32);
      }

      v7[54] = v46;
      v7[55] = v41 + 1;
      if (!__OFADD__(v41, 1))
      {
        OUTLINED_FUNCTION_24_20();
        OUTLINED_FUNCTION_15_3();
        v47 = swift_task_alloc();
        v48 = OUTLINED_FUNCTION_17_29(v47);
        *v48 = v49;
        OUTLINED_FUNCTION_2_45(v48);
        OUTLINED_FUNCTION_12_29();
        OUTLINED_FUNCTION_17_1();

        __asm { BRAA            X6, X16 }
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v32[(v27 >> 6) + 8] |= 1 << v27;
    *(v32[6] + 8 * v27) = v33;
    v37 = v32[7] + 16 * v27;
    *v37 = v11;
    *(v37 + 8) = 0;

    swift_unknownObjectRelease();
    v38 = v32[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      v32[2] = v40;
      goto LABEL_18;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1C6FC2A2C();
  if ((v28 & 1) == (v30 & 1))
  {
    v27 = v29;
    goto LABEL_14;
  }

  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_17_1();

  sub_1C7551E4C();
}

void sub_1C71088CC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 456);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 208) = v1;
  sub_1C6FC2A2C();
  OUTLINED_FUNCTION_13_2();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = v3;
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E8, &qword_1C756C918);
  if (sub_1C7551A2C())
  {
    sub_1C6FC2A2C();
    OUTLINED_FUNCTION_5_1();
    if (!v10)
    {
      sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);

      sub_1C7551E4C();
      return;
    }

    v7 = v9;
  }

  v11 = *(v0 + 456);
  v12 = *(v0 + 208);
  v13 = *(v0 + 432);
  if (v8)
  {
    v14 = OUTLINED_FUNCTION_16_22(v12[7]);
    *v15 = v11;
    *(v15 + 8) = 1;
    sub_1C6FDE438(v14, v16);

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_22(&v12[v7 >> 6]);
  *(v12[6] + 8 * v7) = v13;
  v17 = v12[7] + 16 * v7;
  *v17 = v11;
  *(v17 + 8) = v18;

  v19 = v12[2];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12[2] = v21;
LABEL_12:
  v22 = *(v0 + 440);
  if (v22 == *(v0 + 416))
  {
    v23 = *(v0 + 304);
    sub_1C70DF138(v0 + 16);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_1C754F1AC();
    v24 = OUTLINED_FUNCTION_5_37();
    v25(v24);

    OUTLINED_FUNCTION_116();

    v26(v12);
    return;
  }

  *(v0 + 424) = v12;
  v27 = *(v0 + 264);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1CCA5DDD0](v22);
  }

  else
  {
    if (v22 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      __break(1u);
      return;
    }

    v28 = *(v27 + 8 * v22 + 32);
  }

  *(v0 + 432) = v28;
  *(v0 + 440) = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_15_3();
  v34 = (v29 + *v29);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_17_29(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_2_45(v31);
  v33 = OUTLINED_FUNCTION_12_29();

  v34(v33);
}

void sub_1C7108C18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v5 = a1 + 64;
  OUTLINED_FUNCTION_90_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = sub_1C75504FC();
  v12 = 0;
  v67 = a2;
  v59 = v10;
  v60 = v5;
  v61 = v11;
  if (!v8)
  {
    do
    {
LABEL_3:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_48;
      }

      if (v13 >= v10)
      {

        return;
      }

      v8 = *(v5 + 8 * v13);
      ++v12;
    }

    while (!v8);
    goto LABEL_6;
  }

LABEL_2:
  v13 = v12;
LABEL_6:
  v63 = v13;
  v64 = (v8 - 1) & v8;
  v14 = __clz(__rbit64(v8)) | (v13 << 6);
  memcpy(__dst, (*(v4 + 48) + 120 * v14), 0x78uLL);
  v15 = *(*(v4 + 56) + 8 * v14);
  v16 = sub_1C6FB6304();
  sub_1C6FCA6E4(__dst, v70);
  sub_1C75504FC();
  v17 = 0;
  v68 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v16 == v17)
    {

      v33 = sub_1C6FE375C();
      if (v33)
      {
        v34 = v33;
        v35 = v68;
        v36 = v68 + 64;
        OUTLINED_FUNCTION_90_1();
        v39 = v38 & v37;
        v41 = (v40 + 63) >> 6;
        sub_1C75504FC();
        v42 = 0;
        v66 = v41;
        if (v39)
        {
          goto LABEL_31;
        }

        while (1)
        {
LABEL_27:
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_47;
          }

          if (v43 >= v41)
          {
            break;
          }

          v39 = *(v36 + 8 * v43);
          ++v42;
          if (v39)
          {
            v42 = v43;
            while (1)
            {
LABEL_31:
              v44 = __clz(__rbit64(v39)) | (v42 << 6);
              v45 = (*(v35 + 48) + 16 * v44);
              v47 = *v45;
              v46 = v45[1];
              v48 = *(*(v35 + 56) + 8 * v44);
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRetain_n();
              swift_isUniquelyReferenced_nonNull_native();
              v70[0] = v34;
              sub_1C6F78124(v47, v46);
              OUTLINED_FUNCTION_13_2();
              if (__OFADD__(v50, v51))
              {
                goto LABEL_49;
              }

              v52 = v49;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
              v53 = sub_1C7551A2C();
              v34 = v70[0];
              if (v53)
              {
                sub_1C6F78124(v47, v46);
                a2 = v67;
                if ((v52 & 1) != (v54 & 1))
                {
                  goto LABEL_51;
                }

                if (v52)
                {
LABEL_37:

                  goto LABEL_38;
                }
              }

              else
              {
                a2 = v67;
                if (v52)
                {
                  goto LABEL_37;
                }
              }

              sub_1C6FCABE4();
LABEL_38:
              v39 &= v39 - 1;
              sub_1C739796C(v48);

              v35 = v68;
              v41 = v66;
              v36 = v68 + 64;
              if (!v39)
              {
                goto LABEL_27;
              }
            }
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_20_24();
        sub_1C6FC7AB4(v34, v55, v56);
        sub_1C6FDD548(__dst);
        *a3 = v70[0];
        v12 = v63;
        v4 = v61;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_20_24();
        sub_1C6FC7AB4(v68, v57, v58);
        sub_1C6FDD548(__dst);
        *a3 = v70[0];
        v12 = v63;
      }

      v10 = v59;
      v5 = v60;
      v8 = v64;
      if (!v64)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1CCA5DDD0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (*(a2 + 16) && (sub_1C6FC2A2C(), (v22 & 1) != 0))
    {
      v65 = *(*(a2 + 56) + 8 * v21);
      sub_1C75504FC();
      v23 = [v19 string];
      v24 = sub_1C755068C();
      v26 = v25;

      swift_isUniquelyReferenced_nonNull_native();
      v70[0] = v68;
      sub_1C6F78124(v24, v26);
      OUTLINED_FUNCTION_13_2();
      if (__OFADD__(v28, v29))
      {
        goto LABEL_50;
      }

      v69 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
      if (sub_1C7551A2C())
      {
        sub_1C6F78124(v24, v26);
        v31 = v69;
        a2 = v67;
        if ((v69 & 1) != (v30 & 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        a2 = v67;
        v31 = v69;
      }

      v32 = v70[0];
      if (v31)
      {
      }

      else
      {
        sub_1C6FCABE4();
      }

      v68 = v32;
      sub_1C73978C4(v65);

      v17 = v20;
      v4 = v61;
    }

    else
    {

      ++v17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_1C7551E4C();
  __break(1u);
}

PhotosIntelligence::QueryAssetsRetrievalResult __swiftcall QueryAssetsRetrievalResult.init(retrievalResultsByQueryToken:groundingDataBasedOnRetrievedAssetsByQueryToken:)(Swift::OpaquePointer retrievalResultsByQueryToken, Swift::OpaquePointer groundingDataBasedOnRetrievedAssetsByQueryToken)
{
  v2->_rawValue = retrievalResultsByQueryToken._rawValue;
  v2[1]._rawValue = groundingDataBasedOnRetrievedAssetsByQueryToken._rawValue;
  result.groundingDataByQueryToken = groundingDataBasedOnRetrievedAssetsByQueryToken;
  result.retrievalResultsByQueryToken = retrievalResultsByQueryToken;
  return result;
}

uint64_t QueryAssetsRetrievalType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void __swiftcall QueryAssetsRetrievalContext.init(type:queryTokens:consolidatedAssetUUIDsByMetadataTokenCategoryTypeString:needsEmbeddingRetrievalForPersonalEventQueryToken:shouldPerformPersonalEventMomentGrounding:sensitiveFlags:)(PhotosIntelligence::QueryAssetsRetrievalContext *__return_ptr retstr, PhotosIntelligence::QueryAssetsRetrievalType type, Swift::OpaquePointer queryTokens, Swift::OpaquePointer consolidatedAssetUUIDsByMetadataTokenCategoryTypeString, Swift::Bool needsEmbeddingRetrievalForPersonalEventQueryToken, Swift::Bool shouldPerformPersonalEventMomentGrounding, PhotosIntelligence::UserPromptSensitiveFlags_optional sensitiveFlags)
{
  v7 = *sensitiveFlags.value.sensitiveScenes._rawValue;
  v8 = *(sensitiveFlags.value.sensitiveScenes._rawValue + 4);
  retstr->type = *type;
  retstr->queryTokens = queryTokens;
  retstr->consolidatedAssetUUIDsByMetadataTokenCategoryTypeString = consolidatedAssetUUIDsByMetadataTokenCategoryTypeString;
  retstr->needsEmbeddingRetrievalForPersonalEventQueryToken = needsEmbeddingRetrievalForPersonalEventQueryToken;
  retstr->shouldPerformPersonalEventMomentGrounding = shouldPerformPersonalEventMomentGrounding;
  *(&retstr->sensitiveFlags.value.sensitiveScenes._rawValue + 6) = v7;
  *(&retstr->sensitiveFlags.value.skipTraits + 5) = v8;
}

uint64_t sub_1C710925C()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD28D18 = result;
  return result;
}

uint64_t sub_1C71092D8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28D00);
  __swift_project_value_buffer(v0, qword_1EDD28D00);
  if (qword_1EDD0D7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD28D18;
  return sub_1C754FF2C();
}

uint64_t QueryAssetsRetrievalProcessor.init(storyPhotoLibraryContext:storyAssetsFetcher:momentBasedGroundingAndAssetsFetchingProcessor:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = a1[2];
  v10 = *(type metadata accessor for QueryAssetsRetrievalProcessor(0) + 28);
  if (qword_1EDD0D7A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C754FF1C();
  v12 = __swift_project_value_buffer(v11, qword_1EDD28D00);
  (*(*(v11 - 8) + 16))(a4 + v10, v12, v11);
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  sub_1C6F699F8(a2, a4 + 24);

  return sub_1C6F699F8(a3, a4 + 64);
}

uint64_t type metadata accessor for QueryAssetsRetrievalProcessor(uint64_t a1)
{
  result = qword_1EDD0D798;
  if (!qword_1EDD0D798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 25);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  switch(*a2)
  {
    case 1:
      *(v2 + 160) = 1;
      *(v2 + 168) = v4;
      *(v2 + 176) = v3;
      *(v2 + 184) = v5;
      *(v2 + 185) = v6;
      *(v2 + 192) = v7;
      *(v2 + 200) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_19_22();
      *(v2 + 272) = v34;
      *v34 = v35;
      OUTLINED_FUNCTION_1_50(v34);

      result = QueryAssetsRetrievalProcessor.performPersonalEventQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)();
      break;
    case 2:
      *(v2 + 112) = 2;
      *(v2 + 120) = v4;
      *(v2 + 128) = v3;
      *(v2 + 136) = v5;
      *(v2 + 137) = v6;
      *(v2 + 144) = v7;
      *(v2 + 152) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_19_22();
      *(v2 + 288) = v22;
      *v22 = v23;
      v24 = OUTLINED_FUNCTION_1_50(v22);

      result = QueryAssetsRetrievalProcessor.performPublicEventQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v24, v25, v26, v27);
      break;
    case 3:
      *(v2 + 64) = 3;
      *(v2 + 72) = v4;
      *(v2 + 80) = v3;
      *(v2 + 88) = v5;
      *(v2 + 89) = v6;
      *(v2 + 96) = v7;
      *(v2 + 104) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_19_22();
      *(v2 + 304) = v28;
      *v28 = v29;
      v30 = OUTLINED_FUNCTION_1_50(v28);

      result = QueryAssetsRetrievalProcessor.performWhatQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v30, v31, v32, v33);
      break;
    case 4:
      *(v2 + 16) = 4;
      *(v2 + 24) = v4;
      *(v2 + 32) = v3;
      *(v2 + 40) = v5;
      *(v2 + 41) = v6;
      *(v2 + 48) = v7;
      *(v2 + 56) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_19_22();
      *(v2 + 320) = v16;
      *v16 = v17;
      v18 = OUTLINED_FUNCTION_1_50(v16);

      result = QueryAssetsRetrievalProcessor.performGenericLocationQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v18, v19, v20, v21);
      break;
    default:
      *(v2 + 208) = 0;
      *(v2 + 216) = v4;
      *(v2 + 224) = v3;
      *(v2 + 232) = v5;
      *(v2 + 233) = v6;
      *(v2 + 240) = v7;
      *(v2 + 248) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_19_22();
      *(v2 + 256) = v9;
      *v9 = v10;
      v11 = OUTLINED_FUNCTION_1_50(v9);

      result = QueryAssetsRetrievalProcessor.performMetadataQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v11, v12, v13, v14);
      break;
  }

  return result;
}

uint64_t sub_1C71097E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1C71098FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1C7109A14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1C7109B2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1C7109C44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 328) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

unint64_t sub_1C7109D88()
{
  result = qword_1EC2178D0;
  if (!qword_1EC2178D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAssetsRetrievalType, &type metadata for QueryAssetsRetrievalType, v0, v1);
    atomic_store(result, &qword_1EC2178D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryAssetsRetrievalType(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C7109ECC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1C7109F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7109FA0(uint64_t a1)
{
  result = sub_1C710A06C(319, qword_1EDD0D9C0, &protocol descriptor for FreeformStoryAssetsFetcher);
  if (v2 <= 0x3F)
  {
    result = sub_1C710A06C(319, &qword_1EDD0D1F8, &protocol descriptor for MomentBasedGroundingAndAssetsProvider);
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

uint64_t sub_1C710A06C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1C710A0C0()
{
  result = qword_1EC217320;
  if (!qword_1EC217320)
  {
    v3 = sub_1C6F65BE8(255, &qword_1EDD0CE30, 0x1E696AAB0);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EC217320);
  }

  return result;
}

double sub_1C710A128(void *result, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1C710A140(result, a2, a3, a4 & 1);
  }

  return v4;
}

double sub_1C710A140(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_20()
{
  v1 = *(v0 + 312);
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  return v2 + 16;
}

uint64_t sub_1C710A1F0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2178F0);
  __swift_project_value_buffer(v0, qword_1EC2178F0);
  return sub_1C754FEFC();
}

uint64_t AppleMusicUtils.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t AppleMusicUtils.fetchSongMetadataJsonString(forAdamIDs:options:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a1;
  v3[23] = a2;
  v3[24] = *v2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C710A33C()
{
  v31 = v0;
  v1 = [*(v0 + 192) photoAnalysisClient];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0 + 80;
    sub_1C755068C();
    v4 = sub_1C755068C();
    *(v0 + 104) = MEMORY[0x1E69E6158];
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    sub_1C6F9ED18((v0 + 80), (v0 + 144));
    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_45(isUniquelyReferenced_nonNull_native);

    sub_1C755068C();
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    *(v0 + 104) = sub_1C6FA7014();
    *(v0 + 80) = v7;
    sub_1C6F9ED18((v0 + 80), (v0 + 144));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_45(v8);

    *(v0 + 208) = v30[0];
    if (qword_1EC213DF0 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    v9 = sub_1C754FF1C();
    *(v0 + 216) = __swift_project_value_buffer(v9, qword_1EC2178F0);
    sub_1C75504FC();
    v10 = sub_1C754FEEC();
    v11 = sub_1C755118C();

    if (os_log_type_enabled(v10, v11))
    {
      v29 = *(v0 + 176);
      v12 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v12 = 136315394;

      v13 = sub_1C75504BC();
      v15 = v14;

      v16 = sub_1C6F765A4(v13, v15, v30);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = MEMORY[0x1CCA5D090](v29, MEMORY[0x1E69E6158]);
      v19 = sub_1C6F765A4(v17, v18, v30);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "[fetchSongMetadataJsonString] requestSongs with options: %s and adamIDs: %s", v12, 0x16u);
      swift_arrayDestroy();
      v3 = v0 + 80;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v20 = sub_1C7550B3C();
    *(v0 + 224) = v20;
    sub_1C75504FC();
    v21 = sub_1C755048C();
    *(v0 + 232) = v21;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1C710A844;
    v22 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910, &qword_1C756C928);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1C73A3188;
    *(v0 + 104) = &block_descriptor_8;
    *(v0 + 112) = v22;
    [v2 requestSongsForAdamIDs:v20 options:v21 reply:v3];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EC213DF0 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    v23 = sub_1C754FF1C();
    __swift_project_value_buffer(v23, qword_1EC2178F0);
    v24 = sub_1C754FEEC();
    v25 = sub_1C755119C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C6F5C000, v24, v25, "[fetchSongMetadataJsonString] photoAnalysisClientNotAvailable", v26, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C710AB38();
    swift_allocError();
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1C710A844()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1C710AAA8;
  }

  else
  {
    v2 = sub_1C710A954;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C710A954()
{
  v13 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755118C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_20_1();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1C6F765A4(v2, v3, &v12);
    _os_log_impl(&dword_1C6F5C000, v4, v5, "[fetchSongMetadataJsonString] requestSongs response: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v10 = *(v0 + 8);

  return v10(v2, v3);
}

uint64_t sub_1C710AAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[29];
  v5 = v3[28];
  v6 = v3[25];
  swift_willThrow();

  v7 = v3[1];

  return v7();
}

unint64_t sub_1C710AB38()
{
  result = qword_1EC217908;
  if (!qword_1EC217908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicUtils.Error, &type metadata for AppleMusicUtils.Error, v0, v1);
    atomic_store(result, &qword_1EC217908);
  }

  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall AppleMusicUtils.filterOutNotAppropriateSong(from:aboveThreshold:)(Swift::OpaquePointer from, Swift::Double aboveThreshold)
{
  v7 = 0;
  v8 = *(from._rawValue + 2);
  v9 = from._rawValue + 32;
  v68 = MEMORY[0x1E69E7CC0];
  v67 = from._rawValue + 32;
LABEL_2:
  v10 = &v9[192 * v7];
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_0_64();
      swift_once();
      goto LABEL_31;
    }

    memcpy(__dst, v10, sizeof(__dst));
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_35;
    }

    if ((__dst[21] & 1) != 0 || (v12 = __dst[20], *&__dst[20] <= aboveThreshold))
    {
      sub_1C7080654(__dst, v70);
      v21 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716E4AC(0, v68[2] + 1, 1);
        v21 = v72;
      }

      v9 = v67;
      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        sub_1C716E4AC(v23 > 1, v24 + 1, 1);
        v21 = v72;
      }

      v21[2] = v24 + 1;
      v68 = v21;
      memcpy(&v21[24 * v24 + 4], __dst, 0xC0uLL);
      v7 = v11;
      goto LABEL_2;
    }

    sub_1C7080654(__dst, v70);
    if (qword_1EC213DF0 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EC2178F0);
    sub_1C7080654(__dst, v70);
    v14 = sub_1C754FEEC();
    v15 = sub_1C755118C();
    sub_1C70806B0(__dst);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_20_1();
      v17 = OUTLINED_FUNCTION_20_1();
      v69 = v17;
      *v16 = 134218498;
      *(v16 + 4) = v12;
      *(v16 + 12) = 2048;
      *(v16 + 14) = aboveThreshold;
      *(v16 + 22) = 2080;
      memcpy(v70, __dst, sizeof(v70));
      v18 = StoryMusicCurationSong.description.getter();
      v20 = sub_1C6F765A4(v18, v19, &v69);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "Filtered out song above threshold: score %f > threshold %f: %s", v16, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    sub_1C70806B0(__dst);
    ++v7;
    v10 += 192;
  }

  if (v8)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v8, 0, v2, v3, v4, v5);
    v25 = __dst[0];
    v26 = (from._rawValue + 48);
    v27 = v68;
    do
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      __dst[0] = v25;
      v30 = *(v25 + 16);
      v31 = *(v25 + 24);
      sub_1C75504FC();
      if (v30 >= v31 >> 1)
      {
        sub_1C6F7ED9C(v31 > 1, v30 + 1, 1, v32, v33, v34, v35);
        v25 = __dst[0];
      }

      *(v25 + 16) = v30 + 1;
      v36 = v25 + 16 * v30;
      *(v36 + 32) = v29;
      *(v36 + 40) = v28;
      v26 += 24;
      --v8;
    }

    while (v8);
  }

  else
  {
    v27 = v68;
  }

  sub_1C706D154();
  v41 = v27[2];
  if (v41)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v41, 0, v37, v38, v39, v40);
    v42 = __dst[0];
    v43 = v27 + 6;
    do
    {
      v45 = *(v43 - 1);
      v44 = *v43;
      __dst[0] = v42;
      v46 = *(v42 + 16);
      v47 = *(v42 + 24);
      sub_1C75504FC();
      if (v46 >= v47 >> 1)
      {
        sub_1C6F7ED9C(v47 > 1, v46 + 1, 1, v48, v49, v50, v51);
        v42 = __dst[0];
      }

      *(v42 + 16) = v46 + 1;
      v52 = v42 + 16 * v46;
      *(v52 + 32) = v45;
      *(v52 + 40) = v44;
      v43 += 24;
      --v41;
    }

    while (v41);
  }

  sub_1C74C3924();
  v54 = v53;

  v8 = sub_1C71CD85C(v54);
  if (qword_1EC213DF0 != -1)
  {
    goto LABEL_36;
  }

LABEL_31:
  v55 = sub_1C754FF1C();
  __swift_project_value_buffer(v55, qword_1EC2178F0);
  sub_1C75504FC();
  v56 = sub_1C754FEEC();
  v57 = sub_1C755117C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = OUTLINED_FUNCTION_20_1();
    __dst[0] = v59;
    *v58 = 136315138;
    v60 = MEMORY[0x1CCA5D090](v8, MEMORY[0x1E69E6158]);
    v62 = sub_1C6F765A4(v60, v61, __dst);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1C6F5C000, v56, v57, "Filtered out NotAppropriateSongs: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v63 = v68;
  v64 = v8;
  result._1._rawValue = v64;
  result._0._rawValue = v63;
  return result;
}

void AppleMusicUtils.sortSongsOnMemoryAppropriateScore(from:)(uint64_t a1)
{
  v1 = a1;
  sub_1C75504FC();
  sub_1C710B5BC(&v1);
}

void AppleMusicUtils.sortSongs(from:usingOrderedSongIds:)(uint64_t a1, void *a2)
{
  v3 = a1;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C710B628(&v3, a2);
}

uint64_t AppleMusicUtils.fetchAugmentedMetadata(for:songType:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 88) = *a2;
  v4 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v4;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C710B16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[3];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, a4, a5, a6, a7);
    v10 = v26;
    v11 = *(v26 + 16);
    v12 = 16 * v11;
    v13 = (v8 + 48);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = v11 + 1;
      v17 = *(v26 + 24);
      sub_1C75504FC();
      if (v11 >= v17 >> 1)
      {
        sub_1C6F7ED9C(v17 > 1, v16, 1, v18, v19, v20, v21);
      }

      *(v26 + 16) = v16;
      v22 = v26 + v12;
      *(v22 + 32) = v15;
      *(v22 + 40) = v14;
      v12 += 16;
      v13 += 24;
      ++v11;
      --v9;
    }

    while (v9);
  }

  v7[5] = v10;
  v7[2] = v7[4];
  v23 = sub_1C75504DC();
  v7[6] = v23;
  v24 = swift_task_alloc();
  v7[7] = v24;
  *v24 = v7;
  v24[1] = sub_1C710B300;

  return AppleMusicUtils.fetchSongMetadataJsonString(forAdamIDs:options:)(v10, v23);
}

uint64_t sub_1C710B300(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[8] = a2;
  v5[9] = v2;

  if (v2)
  {

    v6 = sub_1C710B5A4;
  }

  else
  {
    v5[10] = a1;
    v6 = sub_1C710B440;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C710B440()
{
  v13 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 88);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001C759F2D0;
  MEMORY[0x1CCA5CD70](v1, v3);
  MEMORY[0x1CCA5CD70](32032, 0xE200000000000000);
  LOBYTE(v12[0]) = v4;
  v5 = static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(0xD00000000000001CLL, 0x80000001C759F2D0, 0xD000000000000017, 0x80000001C759F2F0, v12);
  v6 = *(v0 + 40);

  if (v2)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    AppleMusicUtils.sortSongs(from:usingOrderedSongIds:)(v5, v6);
    v10 = v9;

    v11 = *(v0 + 8);

    return v11(v10);
  }
}

char *sub_1C710B5BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D5C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C710B6C4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C710B628(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D5C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C710B7B8(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

char *sub_1C710B6C4(uint64_t *a1)
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
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C710BAF4(v7, v8, a1, v4);
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
    return sub_1C710B8F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C710B7B8(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1C75504FC();
      sub_1C710C06C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1C710B9E0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

char *sub_1C710B8F0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 192 * a3 - 192;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if ((*(v10 + 344) & 1) != 0 || (*(v10 + 152) & 1) == 0 && *(v10 + 144) >= *(v10 + 336))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v12, (v10 + 192), sizeof(v12));
        memcpy((v10 + 192), v10, 0xC0uLL);
        result = memcpy(v10, v12, 0xC0uLL);
        v10 -= 192;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 192;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C710B9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 192 * a3;
    v7 = a1 - a3;
    while (2)
    {
      v18 = a3;
      v8 = v7;
      v9 = v6;
      do
      {
        v10 = sub_1C710DE98();
        if (v11)
        {
          break;
        }

        v12 = v10;
        result = sub_1C710DE98();
        if ((v14 & 1) != 0 || v12 >= result)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v9, sizeof(__dst));
        memcpy(v9, v9 - 192, 0xC0uLL);
        memcpy(v9 - 192, __dst, 0xC0uLL);
        v9 -= 192;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v18 + 1;
      v6 += 192;
      --v7;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C710BAF4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = *a3 + 192 * v6;
        if (*(v10 + 152))
        {
          v11 = 0;
        }

        else
        {
          v12 = v9 + 192 * v8;
          v11 = (*(v12 + 152) & 1) != 0 || *(v12 + 144) < *(v10 + 144);
        }

        v13 = v8 + 2;
        if (v5 <= v8 + 2)
        {
          v6 = v8 + 2;
        }

        else
        {
          v6 = v5;
        }

        v14 = 192 * v8;
        v15 = (v9 + 192 * v8 + 536);
        while (v13 < v5)
        {
          if (*v15)
          {
            if (v11)
            {
              v6 = v13;
              goto LABEL_24;
            }
          }

          else if (*(v15 - 24))
          {
            if (!v11)
            {
              v6 = v13;
              goto LABEL_32;
            }
          }

          else if (((v11 ^ (*(v15 - 25) >= *(v15 - 1))) & 1) == 0)
          {
            v6 = v13;
            break;
          }

          v15 += 24;
          ++v13;
        }

        if (!v11)
        {
          goto LABEL_32;
        }

LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_124;
        }

        if (v8 < v6)
        {
          v16 = 192 * v6 - 192;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              memcpy(__dst, (v19 + v14), sizeof(__dst));
              memmove((v19 + v14), (v19 + v16), 0xC0uLL);
              memcpy((v19 + v16), __dst, 0xC0uLL);
            }

            ++v18;
            v16 -= 192;
            v14 += 192;
          }

          while (v18 < v17);
          v5 = a3[1];
        }
      }

LABEL_32:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_123;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_125;
          }

          if (v8 + a4 >= v5)
          {
            v20 = v5;
          }

          else
          {
            v20 = v8 + a4;
          }

          if (v20 < v8)
          {
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
            return;
          }

          if (v6 != v20)
          {
            v21 = v7;
            v22 = *a3;
            v23 = *a3 + 192 * v6 - 192;
            v24 = v8 - v6;
            do
            {
              v25 = v24;
              v26 = v23;
              do
              {
                if ((*(v26 + 344) & 1) != 0 || (*(v26 + 152) & 1) == 0 && *(v26 + 144) >= *(v26 + 336))
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_127;
                }

                memcpy(__dst, (v26 + 192), sizeof(__dst));
                memcpy((v26 + 192), v26, 0xC0uLL);
                memcpy(v26, __dst, 0xC0uLL);
                v26 -= 192;
              }

              while (!__CFADD__(v25++, 1));
              ++v6;
              v23 += 192;
              --v24;
            }

            while (v6 != v20);
            v6 = v20;
            v7 = v21;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB17EC(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v8;
      v32[1] = v6;
      v75 = *result;
      if (!*result)
      {
        goto LABEL_130;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_71:
            if (v39)
            {
              goto LABEL_112;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_115;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_118;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_120;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v30 < 2)
          {
            goto LABEL_114;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_86:
          if (v54)
          {
            goto LABEL_117;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_119;
          }

          if (v61 < v53)
          {
            goto LABEL_100;
          }

LABEL_93:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_126;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v65 = v7;
          v66 = &v31[2 * v33 - 2];
          v67 = *v66;
          v68 = &v31[2 * v33];
          v69 = v68[1];
          sub_1C710C98C((*a3 + 192 * *v66), (*a3 + 192 * *v68), (*a3 + 192 * v69), v75);
          if (v4)
          {
            goto LABEL_105;
          }

          if (v69 < v67)
          {
            goto LABEL_107;
          }

          v70 = v65[2];
          if (v33 > v70)
          {
            goto LABEL_108;
          }

          *v66 = v67;
          v66[1] = v69;
          if (v33 >= v70)
          {
            goto LABEL_109;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v68 + 2, 16 * (v70 - 1 - v33));
          v7 = v65;
          v65[2] = v70 - 1;
          if (v70 <= 2)
          {
            goto LABEL_100;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_110;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_111;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_113;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_116;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_121;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_71;
      }

LABEL_100:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_131;
  }

  sub_1C710C854(&v78, *result, a3);
LABEL_105:
}

uint64_t sub_1C710C06C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v6 = a3[1];
  v127 = a5;
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v96 = v8 + 16;
      v95 = *(v8 + 2);
      for (i = v8; ; v8 = i)
      {
        if (v95 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v97 = *a3;
        if (!*a3)
        {
          goto LABEL_147;
        }

        v98 = &v8[16 * v95];
        v99 = *v98;
        v100 = v96;
        v101 = &v96[16 * v95];
        v102 = *(v101 + 1);
        v103 = (v97 + 192 * *v98);
        v104 = (v97 + 192 * *v101);
        v125 = (v97 + 192 * v102);
        v105 = v127;
        sub_1C75504FC();
        sub_1C710CB68(v103, v104, v125, v120, v105);
        if (v122)
        {
          break;
        }

        if (v102 < v99)
        {
          goto LABEL_135;
        }

        if (v95 - 2 >= *v100)
        {
          goto LABEL_136;
        }

        v96 = v100;
        *v98 = v99;
        *(v98 + 1) = v102;
        v106 = *v100 - v95;
        if (*v100 < v95)
        {
          goto LABEL_137;
        }

        v95 = *v100 - 1;
        sub_1C7423CF4(v101 + 16, v106, v101);
        *v100 = v95;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_144:
    v8 = sub_1C7420830();
    goto LABEL_109;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v116 = v5 + 5;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = v7;
      v110 = v9;
      v117 = *a3;
      v11 = sub_1C710DE98();
      v112 = v8;
      if (v12)
      {
        v118 = 0;
      }

      else
      {
        v13 = v11 < sub_1C710DE98();
        if (v14)
        {
          v13 = 0;
        }

        v118 = v13;
      }

      v15 = 192 * v9;
      v16 = 192 * v9 + 192;
      v17 = v10;
      for (j = v6; ; v6 = j)
      {
        v18 = v17 + 1;
        if (v17 + 1 >= v6)
        {
          break;
        }

        v19 = 0;
        v20 = v116;
        v21 = v117 + 192 * v18;
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        v120 = *(v117 + 192 * v17 + 8);
        v24 = v5[2];
        while (1)
        {
          if (v24 == v19)
          {
            goto LABEL_20;
          }

          v25 = *(v20 - 1) == v22 && *v20 == v23;
          if (v25 || (sub_1C7551DBC() & 1) != 0)
          {
            break;
          }

          ++v19;
          v20 += 2;
        }

        v26 = sub_1C710DE98();
        if (v27)
        {
LABEL_20:
          if (v118)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }

        if (((v118 ^ (v19 >= v26)) & 1) == 0)
        {
          break;
        }

LABEL_23:
        v16 += 192;
        ++v17;
        v5 = v127;
      }

      if (v118)
      {
LABEL_25:
        v28 = v110;
        if (v18 < v110)
        {
          goto LABEL_141;
        }

        if (v110 >= v18)
        {
          v7 = v17 + 1;
          v8 = v112;
          v9 = v110;
          goto LABEL_33;
        }

        do
        {
          if (v28 != v17)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_148;
            }

            memcpy(__dst, (v29 + v15), sizeof(__dst));
            memmove((v29 + v15), (v29 + v16), 0xC0uLL);
            memcpy((v29 + v16), __dst, 0xC0uLL);
          }

          ++v28;
          v16 -= 192;
          v15 += 192;
        }

        while (v28 < v17--);
      }

      v7 = v18;
      v9 = v110;
      v8 = v112;
    }

LABEL_33:
    v31 = a3[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v93;
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      sub_1C6FB17EC(v44 > 1, v45 + 1, 1, v8);
      v8 = v94;
    }

    *(v8 + 2) = v46;
    v47 = v8 + 32;
    v48 = &v8[16 * v45 + 32];
    *v48 = v9;
    *(v48 + 1) = v7;
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v45)
    {
      v5 = v127;
      v124 = v7;
      v119 = v8 + 32;
      while (1)
      {
        v49 = v46 - 1;
        v50 = &v47[16 * v46 - 16];
        v51 = &v8[16 * v46];
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_72:
          if (v55)
          {
            goto LABEL_126;
          }

          v67 = *v51;
          v66 = *(v51 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_129;
          }

          v71 = *(v50 + 1);
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_134;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v46 < 2)
        {
          goto LABEL_128;
        }

        v74 = *v51;
        v73 = *(v51 + 1);
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_87:
        if (v70)
        {
          goto LABEL_131;
        }

        v76 = *v50;
        v75 = *(v50 + 1);
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_133;
        }

        if (v77 < v69)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v49 - 1 >= v46)
        {
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
LABEL_136:
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
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v81 = *a3;
        if (!*a3)
        {
          goto LABEL_146;
        }

        v82 = v8;
        v83 = &v47[16 * v49 - 16];
        v84 = *v83;
        v85 = v49;
        v86 = &v47[16 * v49];
        v87 = *(v86 + 1);
        v88 = (v81 + 192 * *v83);
        v89 = (v81 + 192 * *v86);
        v90 = (v81 + 192 * v87);
        v91 = v127;
        sub_1C75504FC();
        sub_1C710CB68(v88, v89, v90, v120, v91);
        if (v122)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v87 < v84)
        {
          goto LABEL_121;
        }

        v92 = *(v82 + 2);
        if (v85 > v92)
        {
          goto LABEL_122;
        }

        *v83 = v84;
        *(v83 + 1) = v87;
        if (v85 >= v92)
        {
          goto LABEL_123;
        }

        v46 = v92 - 1;
        sub_1C7423CF4(v86 + 16, v92 - 1 - v85, v86);
        v8 = v82;
        *(v82 + 2) = v92 - 1;
        v5 = v127;
        v7 = v124;
        v47 = v119;
        if (v92 <= 2)
        {
          goto LABEL_103;
        }
      }

      v56 = &v47[16 * v46];
      v57 = *(v56 - 8);
      v58 = *(v56 - 7);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_124;
      }

      v61 = *(v56 - 6);
      v60 = *(v56 - 5);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_125;
      }

      v63 = *(v51 + 1);
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_127;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_130;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = *(v50 + 1);
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_138;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v5 = v127;
LABEL_103:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_107;
    }
  }

  v32 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_142;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v9)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v32)
  {
    goto LABEL_51;
  }

  v111 = v9;
  v113 = v8;
  v33 = *a3;
  v34 = *a3 + 192 * v7;
  v35 = v9 - v7;
  v120 = v32;
LABEL_42:
  v123 = v7;
  v36 = v35;
  v37 = v34;
  while (1)
  {
    v38 = sub_1C710DE98();
    if (v39 & 1) != 0 || (v40 = v38, v41 = sub_1C710DE98(), (v42) || v40 >= v41)
    {
LABEL_49:
      v7 = v123 + 1;
      v34 += 192;
      --v35;
      if ((v123 + 1) == v120)
      {
        v7 = v120;
        v9 = v111;
        v8 = v113;
        goto LABEL_51;
      }

      goto LABEL_42;
    }

    if (!v33)
    {
      break;
    }

    memcpy(__dst, v37, sizeof(__dst));
    memcpy(v37, v37 - 192, 0xC0uLL);
    memcpy(v37 - 192, __dst, 0xC0uLL);
    v37 -= 192;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_49;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_146:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_147:

  __break(1u);
LABEL_148:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_149:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_150:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1C710C854(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C710C98C((*a3 + 192 * *v4), (*a3 + 192 * *v9), (*a3 + 192 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C710C98C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 192;
  v9 = (a3 - a2) / 192;
  if (v8 < v9)
  {
    sub_1C741E6AC(a1, (a2 - a1) / 192, a4);
    v10 = &v4[192 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v17 = v7;
        goto LABEL_32;
      }

      if ((v6[152] & 1) != 0 || (v4[152] & 1) == 0 && *(v4 + 18) >= *(v6 + 18))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 192;
      if (!v13)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 += 192;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 192;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    memmove(v7, v12, 0xC0uLL);
    goto LABEL_12;
  }

  sub_1C741E6AC(a2, (a3 - a2) / 192, a4);
  v14 = &v4[192 * v9];
LABEL_17:
  v15 = 0;
  v16 = v14;
  v17 = v6;
  while (1)
  {
    v10 = &v16[v15];
    if (&v16[v15] <= v4 || v6 <= v7)
    {
      break;
    }

    if ((*(v10 - 40) & 1) == 0)
    {
      v14 = &v16[v15];
      if ((*(v6 - 40) & 1) != 0 || *(v6 - 6) < *(v14 - 6))
      {
        v6 -= 192;
        v19 = &v5[v15];
        v5 = &v5[v15 - 192];
        if (v19 != v17)
        {
          memmove(v5, v17 - 192, 0xC0uLL);
        }

        goto LABEL_17;
      }
    }

    if (v10 != &v5[v15])
    {
      memmove(&v5[v15 - 192], v10 - 192, 0xC0uLL);
    }

    v15 -= 192;
  }

LABEL_32:
  v20 = (v10 - v4) / 192;
  if (v17 != v4 || v17 >= &v4[192 * v20])
  {
    memmove(v17, v4, 192 * v20);
  }

  return 1;
}

uint64_t sub_1C710CB68(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 192;
  v10 = (a3 - a2) / 192;
  if (v9 < v10)
  {
    sub_1C741E6AC(a1, (a2 - a1) / 192, a4);
    v11 = &v5[192 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_32;
      }

      v13 = sub_1C710DE98();
      if (v14)
      {
        break;
      }

      v17 = v13;
      v18 = sub_1C710DE98();
      if ((v19 & 1) != 0 || v17 >= v18)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 192;
      if (!v16)
      {
        goto LABEL_9;
      }

LABEL_10:
      v8 += 192;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 192;
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, v15, 0xC0uLL);
    goto LABEL_10;
  }

  sub_1C741E6AC(a2, (a3 - a2) / 192, a4);
  v11 = &v5[192 * v10];
LABEL_17:
  for (v6 -= 192; v11 > v5 && v7 > v8; v6 -= 192)
  {
    v21 = sub_1C710DE98();
    if ((v22 & 1) == 0)
    {
      v23 = v21;
      v24 = sub_1C710DE98();
      if ((v25 & 1) == 0 && v23 < v24)
      {
        v26 = v7 - 192;
        v16 = v6 + 192 == v7;
        v7 -= 192;
        if (!v16)
        {
          memmove(v6, v26, 0xC0uLL);
          v7 = v26;
        }

        goto LABEL_17;
      }
    }

    if (v11 != v6 + 192)
    {
      memmove(v6, v11 - 192, 0xC0uLL);
    }

    v11 -= 192;
  }

LABEL_32:
  v27 = (v11 - v5) / 192;
  if (v7 != v5 || v7 >= &v5[192 * v27])
  {
    memmove(v7, v5, 192 * v27);
  }

  return 1;
}

unint64_t sub_1C710CD6C()
{
  result = qword_1EC217918;
  if (!qword_1EC217918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicUtils.Error, &type metadata for AppleMusicUtils.Error, v0, v1);
    atomic_store(result, &qword_1EC217918);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicUtils.Error(_BYTE *result, int a2, int a3)
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

char *sub_1C710CE7C(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  v10 = &selRef_clsSceneClassifications;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v11 = 136380931;
    v12 = a2;
    v13 = [v7 title];
    v14 = sub_1C755068C();
    v16 = v15;

    v17 = sub_1C6F765A4(v14, v16, v54);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v7 localIdentifier];
    v19 = sub_1C755068C();
    v21 = v20;

    v22 = v19;
    a2 = v12;
    v23 = sub_1C6F765A4(v22, v21, v54);

    *(v11 + 14) = v23;
    v10 = &selRef_clsSceneClassifications;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for Trip (%{private}s) %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_65();
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  v24 = sub_1C70A65EC();
  result = [objc_opt_self() fetchCuratedAssetsInAssetCollection:v7 options:v24];
  if (result)
  {
    v26 = result;
    if ([result count])
    {
      sub_1C70A51F4(v26, a2);
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v30 = AssetElectionResult.init(fetchResult:)(v28);

      sub_1C6F85170();

      return v30;
    }

    else
    {
      v31 = v7;
      v32 = sub_1C754FEEC();
      v33 = sub_1C755117C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        v35 = v54[0];
        *v34 = 136315138;
        v36 = [v31 v10[481]];
        v37 = v31;
        v38 = sub_1C755068C();
        v40 = v39;

        v41 = v38;
        v31 = v37;
        v42 = sub_1C6F765A4(v41, v40, v54);

        *(v34 + 4) = v42;
        v10 = &selRef_clsSceneClassifications;
        _os_log_impl(&dword_1C6F5C000, v32, v33, "Found 0 asset in trip %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_0_65();
        MEMORY[0x1CCA5F8E0](v34, -1, -1);
      }

      v43 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v44 = v26;
      v45 = AssetElectionResult.init(fetchResult:)(v44);
      v46 = [v31 v10[481]];
      v47 = sub_1C755068C();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217920, &unk_1C756CA30);
      sub_1C710D370();
      v50 = swift_allocError();
      *v51 = 3;
      *(v51 + 8) = v47;
      *(v51 + 16) = v49;
      *(v51 + 24) = 1;

      v52 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
      swift_beginAccess();
      v53 = *&v45[v52];
      *&v45[v52] = v50;

      sub_1C6F85170();

      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TripAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripAssetElector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C710D370()
{
  result = qword_1EC217928;
  if (!qword_1EC217928)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217920, &unk_1C756CA30);
    result = swift_getWitnessTable(byte_1C75866C0, v3, v0, v1);
    atomic_store(result, &qword_1EC217928);
  }

  return result;
}

uint64_t type metadata accessor for TripAssetElector(uint64_t a1)
{
  result = qword_1EC217930;
  if (!qword_1EC217930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C710D474()
{
  sub_1C70D4544();
  if (v0)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_44_12();
  if (!v1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_13_29();
  if (v1)
  {
    OUTLINED_FUNCTION_43_13();
  }

  else
  {
    OUTLINED_FUNCTION_28_12();
    sub_1C72DD028(v2, v3, v4, v5, v6);
  }
}

void *sub_1C710D4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    memcpy(__dst, (a1 + 32), sizeof(__dst));
    memcpy(a2, (a1 + 32), 0x90uLL);
    CGRectMake();
    return sub_1C6FD7F70();
  }

  else
  {
    sub_1C7116DE4(__dst);
    return memcpy(a2, __dst, 0x90uLL);
  }
}

unint64_t sub_1C710D570(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_115();
    v5 = sub_1C7491D64(0xFuLL, v3, v2);
    if ((v2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1C75517FC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v19[0] = v3;
        v19[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          OUTLINED_FUNCTION_47_12();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v7 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1C75518FC();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          OUTLINED_FUNCTION_47_12();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v4 == 0;
  return v9 | ((v4 == 0) << 32);
}

uint64_t sub_1C710D6E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  if (v1)
  {
    sub_1C6FD7F70();
  }

  v2 = OUTLINED_FUNCTION_42_15();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C710D7C4(uint64_t a1)
{
  v2 = sub_1C719D92C();
  v4 = v3;
  v6 = v5;
  result = sub_1C719D934(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_8;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v2 == result)
  {
    return 0;
  }

  else
  {
    return sub_1C719D474(v2, v4, 0, a1);
  }
}

uint64_t sub_1C710D844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48);
    *a2 = *(a1 + 32);
    result = sub_1C75504FC();
  }

  else
  {
    result = 0;
    v3 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = result;
  *(a2 + 16) = v3;
  return result;
}

void *sub_1C710D898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    memcpy(__dst, (a1 + 32), sizeof(__dst));
    memcpy(a2, (a1 + 32), 0x80uLL);
    CGRectMake();
    return sub_1C6FB7BB8(__dst, &v5);
  }

  else
  {
    sub_1C6FC0604(__dst);
    return memcpy(a2, __dst, 0x80uLL);
  }
}

uint64_t sub_1C710D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7114F90(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1C7115020(result, v5, 0, a1);
    v7 = 0;
  }

  v8 = type metadata accessor for PromptSuggestion(0);

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t sub_1C710DA14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 16);
  a2(0);
  if (v4)
  {
    sub_1C71154C8();
  }

  v5 = OUTLINED_FUNCTION_42_15();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C710DADC(uint64_t a1)
{
  result = sub_1C7114F90(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C71150D0(result, v3, 0, a1);
  }
}

double sub_1C710DB44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C6FB5E28(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    return OUTLINED_FUNCTION_50_11(a2);
  }

  return result;
}

uint64_t sub_1C710DB90@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = OUTLINED_FUNCTION_42_15();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

double sub_1C710DC34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_50_11(a2);
  }

  sub_1C6F774EC(a1 + 32, a2);
  return result;
}

void *sub_1C710DC4C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result[2])
  {
    v4 = result[4];
    v3 = result[5];
    v6 = result[6];
    v5 = result[7];
    v7 = result[8];
    v8 = result[9];
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    result = sub_1C75504FC();
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

void sub_1C710DCE0()
{
  sub_1C70D4544();
  if (v0)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_44_12();
  if (!v1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_13_29();
  if (v1)
  {
    OUTLINED_FUNCTION_43_13();
  }

  else
  {
    OUTLINED_FUNCTION_28_12();
    sub_1C72DDCD4(v2, v3, v4, v5, v6);
  }
}

void sub_1C710DD48()
{
  sub_1C70D4544();
  if (v0)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_44_12();
  if (!v1)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_13_29();
  if (v1)
  {
    OUTLINED_FUNCTION_43_13();
  }

  else
  {
    OUTLINED_FUNCTION_28_12();
    sub_1C72DDD74(v2, v3, v4, v5, v6);
  }
}

uint64_t sub_1C710DDB0(uint64_t a1)
{
  v2 = sub_1C719D92C();
  v4 = v3;
  v6 = v5;
  result = sub_1C719D934(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_9;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  if (v2 == result)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1C719D870(v2, v4, 0, a1);
  }

  return v11 | ((v2 == v10) << 16);
}

uint64_t sub_1C710DE50(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C755095C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C710DE98()
{
  OUTLINED_FUNCTION_115();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  while (v4 != v2)
  {
    v6 = *(v5 - 1) == v1 && *v5 == v0;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {
      return v2;
    }

    ++v2;
    v5 += 2;
  }

  return 0;
}

uint64_t sub_1C710DF20(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = *(a2 + 16);
  while (1)
  {
    if (v8 == v7)
    {
      return 0;
    }

    sub_1C71154C8();
    if (*v6 == *a1 && v6[1] == a1[1])
    {
      break;
    }

    v10 = sub_1C7551DBC();
    sub_1C7115520(v6, type metadata accessor for PromptSuggestion);
    if (v10)
    {
      return v7;
    }

    ++v7;
  }

  sub_1C7115520(v6, type metadata accessor for PromptSuggestion);
  return v7;
}

uint64_t sub_1C710E08C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE800000000000000;
    v7 = 0x6B6361626C6C6166;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xEA00000000007375;
        v7 = 0x7361676550736D67;
        break;
      case 2:
        v7 = 0x626D696854736D67;
        v6 = 0xEA0000000000656CLL;
        break;
      case 3:
        v7 = 0x7665446E4F736D67;
        v6 = 0xEB00000000656369;
        break;
      default:
        break;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6B6361626C6C6166;
    switch(a1)
    {
      case 1:
        v8 = 0xEA00000000007375;
        v9 = 0x7361676550736D67;
        break;
      case 2:
        v9 = 0x626D696854736D67;
        v8 = 0xEA0000000000656CLL;
        break;
      case 3:
        v9 = 0x7665446E4F736D67;
        v8 = 0xEB00000000656369;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_1C7551DBC();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C710E258(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x676E6967617473;
  }

  else
  {
    v5 = 0x7972726163;
  }

  if (a1)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  while (1)
  {
    v7 = *(v4 + v3) ? 0x676E6967617473 : 0x7972726163;
    v8 = *(v4 + v3) ? 0xE700000000000000 : 0xE500000000000000;
    if (v7 == v5 && v8 == v6)
    {
      break;
    }

    v10 = sub_1C7551DBC();

    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

PhotosIntelligence::PromptSuggestionAnalyticsPayload::SourcePayloadContainer __swiftcall PromptSuggestionAnalyticsPayload.SourcePayloadContainer.init(source:payload:errorCode:)(PhotosIntelligence::PromptSuggestion::Source source, Swift::OpaquePointer payload, Swift::Int errorCode)
{
  *v3 = *source;
  *(v3 + 8) = payload;
  *(v3 + 16) = errorCode;
  result.errorCode = errorCode;
  result.localPayload = payload;
  result.source = source;
  return result;
}

void *sub_1C710E384()
{
  v1 = OUTLINED_FUNCTION_59_7();
  v2 = *v0;
  v3 = *(v0 + 1);
  MEMORY[0x1CCA5CD70](v1, 0xE900000000000074);
  v40 = v2;
  sub_1C73E6820(v2);
  MEMORY[0x1CCA5CD70](0x646F43726F727245, 0xE900000000000065);
  v4 = sub_1C755104C();
  v5 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v4, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

  v7 = v5;
  v8 = v3 + 64;
  OUTLINED_FUNCTION_11();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v41 = v3;
  sub_1C75504FC();
  v14 = 0;
  v38 = v13;
  v39 = v3 + 64;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_6:
      v16 = (*(v41 + 48) + 16 * (__clz(__rbit64(v11)) | (v15 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v11 &= v11 - 1;
      sub_1C75504FC();
      v19 = OUTLINED_FUNCTION_59_7();
      MEMORY[0x1CCA5CD70](v19, 0xE900000000000074);
      v20 = 0xE400000000000000;
      v21 = 1701736270;
      switch(v40)
      {
        case 1:
          v20 = 0xE600000000000000;
          v21 = 0x636961736F4DLL;
          break;
        case 2:
          v20 = 0xE600000000000000;
          v21 = 0x686372616553;
          break;
        case 3:
          v20 = 0xE90000000000006CLL;
          v21 = 0x616369736D696857;
          break;
        case 4:
          v20 = 0xEA00000000006C61;
          v21 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      MEMORY[0x1CCA5CD70](v21, v20);

      MEMORY[0x1CCA5CD70](v17, v18);
      v22 = sub_1C755104C();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6F78124(0, 0xE000000000000000);
      OUTLINED_FUNCTION_13_2();
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v27 = v23;
      v28 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
      if (sub_1C7551A2C())
      {
        v29 = sub_1C6F78124(0, 0xE000000000000000);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_25;
        }

        v27 = v29;
      }

      if (v28)
      {
        v31 = v7[7];
        v32 = *(v31 + 8 * v27);
        *(v31 + 8 * v27) = v22;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v7[v27 >> 6]);
        v33 = (v7[6] + 16 * v27);
        *v33 = 0;
        v33[1] = 0xE000000000000000;
        *(v7[7] + 8 * v27) = v22;
        v34 = v7[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_24;
        }

        v7[2] = v36;
      }

      v14 = v15;
      v13 = v38;
      v8 = v39;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return v7;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C710E700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7961506C61636F6CLL && a2 == 0xEC00000064616F6CLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
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

uint64_t sub_1C710E818(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0x7961506C61636F6CLL;
  }

  return 0x646F43726F727265;
}

uint64_t sub_1C710E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C710E700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C710E8A8(uint64_t a1)
{
  v2 = sub_1C710EAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C710E8E4(uint64_t a1)
{
  v2 = sub_1C710EAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestionAnalyticsPayload.SourcePayloadContainer.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217940, &qword_1C756CA80);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_34_1(v26);
  sub_1C710EAF0();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  sub_1C710EB44();
  sub_1C7551D2C();
  if (!v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217948, &qword_1C756CA88);
    sub_1C710EDFC(&unk_1EDD0D080);
    sub_1C7551D2C();
    sub_1C7551D0C();
  }

  v28 = OUTLINED_FUNCTION_295();
  v29(v28);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C710EAF0()
{
  result = qword_1EDD0D480;
  if (!qword_1EDD0D480)
  {
    result = swift_getWitnessTable(byte_1C756D1E4, &type metadata for PromptSuggestionAnalyticsPayload.SourcePayloadContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D480);
  }

  return result;
}

unint64_t sub_1C710EB44()
{
  result = qword_1EDD0B060;
  if (!qword_1EDD0B060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.Source, &type metadata for PromptSuggestion.Source, v0, v1);
    atomic_store(result, &qword_1EDD0B060);
  }

  return result;
}

void PromptSuggestionAnalyticsPayload.SourcePayloadContainer.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217950, &qword_1C756CA90);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34_1(v26);
  sub_1C710EAF0();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1C710EDA8();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217948, &qword_1C756CA88);
    sub_1C710EDFC(&unk_1EDD06C08);
    OUTLINED_FUNCTION_60_7();
    sub_1C7551C1C();
    v30 = sub_1C7551BFC();
    v31 = OUTLINED_FUNCTION_6_35();
    v32(v31);
    *v28 = a14;
    *(v28 + 8) = v33;
    *(v28 + 16) = v30;
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C710EDA8()
{
  result = qword_1EDD0F0B8;
  if (!qword_1EDD0F0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.Source, &type metadata for PromptSuggestion.Source, v0, v1);
    atomic_store(result, &qword_1EDD0F0B8);
  }

  return result;
}

unint64_t sub_1C710EDFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217948, &qword_1C756CA88);
    v10[0] = v8;
    v10[1] = v7;
    result = swift_getWitnessTable(v6, v9, v10);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C710EEA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001C759F4C0 == a2)
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

uint64_t sub_1C710EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C710EEA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C710EF6C(uint64_t a1)
{
  v2 = sub_1C710F0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C710EFA8(uint64_t a1)
{
  v2 = sub_1C710F0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestionAnalyticsPayload.CommonPayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217958, &qword_1C756CA98);
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_34_1(v23);
  sub_1C710F0F0();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  sub_1C7551D0C();
  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C710F0F0()
{
  result = qword_1EDD0D498;
  if (!qword_1EDD0D498)
  {
    result = swift_getWitnessTable("%В'<!\b", &type metadata for PromptSuggestionAnalyticsPayload.CommonPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D498);
  }

  return result;
}

void PromptSuggestionAnalyticsPayload.CommonPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217960, &qword_1C756CAA0);
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_34_1(v24);
  sub_1C710F0F0();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (!v20)
  {
    v33 = sub_1C7551BFC();
    (*(v29 + 8))(v32, v27);
    *v26 = v33;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_125();
}

PhotosIntelligence::PromptSuggestionAnalyticsPayload __swiftcall PromptSuggestionAnalyticsPayload.init(payloadContainers:commonPayload:)(Swift::OpaquePointer payloadContainers, PhotosIntelligence::PromptSuggestionAnalyticsPayload::CommonPayload commonPayload)
{
  v3 = *commonPayload.numberOfPhotosTakenInLast30Days;
  v2->_rawValue = payloadContainers._rawValue;
  v2[1]._rawValue = v3;
  result.commonPayload = commonPayload;
  result.sourceContainers = payloadContainers;
  return result;
}

PhotosIntelligence::PromptSuggestionAnalyticsPayload::SourcePayloadContainer_optional __swiftcall PromptSuggestionAnalyticsPayload.sourceContainer(for:)(PhotosIntelligence::PromptSuggestion::Source isUniquelyReferenced_nonNull_native)
{
  v3 = v1;
  v4 = 0;
  v5 = *isUniquelyReferenced_nonNull_native;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2 + 32;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v8 + 24 * v4);
  while (v7 != v4)
  {
    if (v4 >= *(v6 + 16))
    {
      __break(1u);
      goto _$s18PhotosIntelligence32PromptSuggestionAnalyticsPayloadV15sourceContainer3forAC06SourcefH0VSgAA0cD0V0J0O_tF;
    }

    ++v4;
    v11 = v10 + 24;
    v12 = *v10;
    v10 += 24;
    if (v12 == v5)
    {
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716E4CC(0, *(v9 + 16) + 1, 1);
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C716E4CC(v18 > 1, v19 + 1, 1);
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 24 * v19;
      *(v20 + 32) = v5;
      *(v20 + 40) = v13;
      *(v20 + 48) = v14;
      goto LABEL_2;
    }
  }

  sub_1C710D844(v9, v3);

_$s18PhotosIntelligence32PromptSuggestionAnalyticsPayloadV15sourceContainer3forAC06SourcefH0VSgAA0cD0V0J0O_tF:
  result.value.errorCode = v16;
  result.value.localPayload._rawValue = v15;
  result.is_nil = v17;
  result.value.source = isUniquelyReferenced_nonNull_native;
  return result;
}

void sub_1C710F3F4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x80000001C759F4C0;
  *(inited + 48) = sub_1C755104C();
  sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
  v3 = sub_1C75504DC();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_14_27();
  sub_1C711514C(v3, v4, 0, v5, v6);
  v7 = 0;
  v8 = *(v1 + 16);
  v9 = v1 + 48;
  while (v8 != v7)
  {
    if (v7 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    ++v7;
    v10 = sub_1C710E384();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_27();
    sub_1C711514C(v10, v11, 0, v12, v13);
    v9 += 24;
  }
}

uint64_t sub_1C710F564(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C759F4E0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61506E6F6D6D6F63 && a2 == 0xED000064616F6C79)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C710F63C(char a1)
{
  if (a1)
  {
    return 0x61506E6F6D6D6F63;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C710F68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C710F564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C710F6B4(uint64_t a1)
{
  v2 = sub_1C7114D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C710F6F0(uint64_t a1)
{
  v2 = sub_1C7114D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestionAnalyticsPayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217968, &qword_1C756CAA8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_34_1(v22);
  sub_1C7114D58();
  sub_1C75504FC();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217970, &qword_1C756CAB0);
  sub_1C7114E54(&unk_1EDD06AE8);
  sub_1C7551D2C();

  if (!v20)
  {
    sub_1C7114E00();
    sub_1C7551D2C();
  }

  v24 = OUTLINED_FUNCTION_295();
  v25(v24);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestionAnalyticsPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217978, &qword_1C756CAB8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34_1(v22);
  sub_1C7114D58();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217970, &qword_1C756CAB0);
    sub_1C7114E54(&unk_1EDD06AE0);
    OUTLINED_FUNCTION_60_7();
    sub_1C7551C1C();
    sub_1C7114F1C();
    sub_1C7551C1C();
    v26 = OUTLINED_FUNCTION_6_35();
    v27(v26);
    *v24 = a10;
    v24[1] = a10;
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C710FB00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v42 = sub_1C754DF6C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v34 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179D0, &unk_1C756D260);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v34 - v10;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v40 = (v6 + 16);
  v35 = v6;
  v36 = (v6 + 32);
  v43 = a1;
  result = sub_1C75504FC();
  v18 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(*(v43 + 48) + (v20 | (v18 << 6)));
    v22 = type metadata accessor for PromptSuggestionPersistedBundle(0) - 8;
    v23 = &v11[*(v41 + 48)];
    sub_1C71154C8();
    *v11 = v21;
    v24 = &v23[*(v22 + 28)];
    v25 = v42;
    (*v40)(v5, v24, v42);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v25);
    sub_1C6FD7FC8(v11, &qword_1EC2179D0, &unk_1C756D260);
    if (__swift_getEnumTagSinglePayload(v5, 1, v25) == 1)
    {
      result = sub_1C6FD7FC8(v5, &unk_1EC219230, &unk_1C7563720);
    }

    else
    {
      v26 = *v36;
      v27 = v34;
      v28 = v42;
      (*v36)(v34, v5, v42);
      v26(v37, v27, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB3608(0, *(v39 + 16) + 1, 1, v39);
        v39 = v32;
      }

      v30 = *(v39 + 16);
      v29 = *(v39 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C6FB3608(v29 > 1, v30 + 1, 1, v39);
        v39 = v33;
      }

      v31 = v39;
      *(v39 + 16) = v30 + 1;
      result = (v26)(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v37, v42);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      sub_1C742499C(v39, v38);
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C710FF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C759F500 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001C759F520 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000024 && 0x80000001C759F540 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

unint64_t sub_1C7110070(char a1)
{
  result = 0x6556616D65686373;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1C711011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C710FF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7110144(uint64_t a1)
{
  v2 = sub_1C7116AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7110180(uint64_t a1)
{
  v2 = sub_1C7116AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C71101BC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179B8, &qword_1C756D248);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116AE8();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = 1;
    sub_1C7551BFC();
    v13 = 2;
    sub_1C7551B9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179B0, &qword_1C756D240);
    v11[15] = 0;
    sub_1C7116BF8();
    sub_1C7551BAC();
    if (!v12)
    {
      type metadata accessor for PromptSuggestionPersistedBundle(0);
      sub_1C708039C();
      sub_1C75504DC();
    }

    v11[14] = 3;
    v9 = COERCE_DOUBLE(sub_1C7551B8C());
    if (v10)
    {
      v2 = 1.0;
    }

    else
    {
      v2 = v9;
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

uint64_t sub_1C7110468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179A8, &qword_1C756D238);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116AE8();
  sub_1C755200C();
  v17 = a3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179B0, &qword_1C756D240);
  sub_1C7116B3C();
  sub_1C7551D2C();
  if (!v4)
  {
    v15 = 1;
    sub_1C7551D0C();
    v14 = 2;
    sub_1C7551D0C();
    v13 = 3;
    sub_1C7551CEC();
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1C7110660(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1C71101BC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1C71106B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144657461647075 && a2 == 0xEA00000000006574)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C711078C(char a1)
{
  if (a1)
  {
    return 0x6144657461647075;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_1C71107D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179C8, &qword_1C756D258);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116CF8();
  sub_1C755200C();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988, &unk_1C756CAE0);
  sub_1C7116D4C(&unk_1EDD06B90);
  sub_1C7551D2C();
  if (!v2)
  {
    type metadata accessor for PromptSuggestionPersistedBundle(0);
    v10[6] = 1;
    sub_1C754DF6C();
    sub_1C7116CB4(&qword_1EDD0F9E8);
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C71109EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1C754DF6C();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179C0, &qword_1C756D250);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116CF8();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988, &unk_1C756CAE0);
  v28 = 0;
  sub_1C7116D4C(&unk_1EDD0D030);
  v14 = v26;
  sub_1C7551C1C();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_1C7116CB4(&qword_1EDD100B8);
  sub_1C7551C1C();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_1C71154C8();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1C7115520(v16, type metadata accessor for PromptSuggestionPersistedBundle);
}

uint64_t sub_1C7110D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71106B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7110DC0(uint64_t a1)
{
  v2 = sub_1C7116CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7110DFC(uint64_t a1)
{
  v2 = sub_1C7116CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7110E68()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder;
  if (*(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder);
  }

  else
  {
    v3 = v0;
    sub_1C754DBCC();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v2 = sub_1C754DBBC();
    sub_1C754DB9C();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C7110EEC()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    sub_1C754DB8C();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v2 = sub_1C754DB7C();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t PromptSuggestionCache.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v1 = swift_allocObject();
  PromptSuggestionCache.init(photoLibrary:)();
  return v1;
}

void PromptSuggestionCache.init(photoLibrary:)()
{
  OUTLINED_FUNCTION_124();
  v46 = v1;
  v2 = v0;
  v4 = v3;
  v47[1] = *MEMORY[0x1E69E9840];
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v43 = v6;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v42 = v8 - v7;
  v9 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  swift_defaultActor_initialize();
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  *(v0 + 112) = sub_1C755146C();
  *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder) = 0;
  *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder) = 0;
  v47[0] = 0;
  v45 = v4;
  v22 = [v4 urlForApplicationDataFolderIdentifier:1 error:v47];
  v23 = v47[0];
  if (!v22)
  {
    v36 = v47[0];
    v37 = sub_1C754DBEC();

    v46 = v37;
    swift_willThrow();
    goto LABEL_8;
  }

  v24 = v22;
  sub_1C754DCCC();
  v25 = v23;

  sub_1C754DC9C();
  sub_1C754DC9C();
  v26 = [objc_opt_self() defaultManager];
  v27 = sub_1C754DCEC();
  if ((sub_1C71153E8(v27, v28, v26) & 1) == 0)
  {
    v41 = v18;
    sub_1C754DCEC();
    v29 = sub_1C755065C();

    v47[0] = 0;
    v30 = [v26 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:v47];

    if (v30)
    {
      v31 = v47[0];
      v18 = v41;
      goto LABEL_5;
    }

    v38 = v47[0];
    v39 = sub_1C754DBEC();

    v46 = v39;
    swift_willThrow();

    v40 = *(v11 + 8);
    v40(v15, v9);
    v40(v41, v9);
    v40(v21, v9);
LABEL_8:

    type metadata accessor for PromptSuggestionCache(0);
    swift_defaultActor_destroy();

    OUTLINED_FUNCTION_90();
    swift_deallocPartialClassInstance();
    goto LABEL_9;
  }

LABEL_5:
  v32 = *(v11 + 16);
  v32(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_cacheFileURL, v18, v9);
  v32(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_analyticsFileURL, v15, v9);
  v33 = *(v2 + 112);
  v34 = v42;
  sub_1C754FF2C();

  v35 = *(v11 + 8);
  v35(v15, v9);
  v35(v18, v9);
  v35(v21, v9);
  (*(v43 + 32))(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_logger, v34, v44);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void sub_1C7111490()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v13 = *v5;
  v14 = *(v1 + 112);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v15 = v14;
  PerformanceMeasure.init(name:log:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217980, &qword_1C756CAD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v13;
  *(inited + 40) = v3;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988, &unk_1C756CAE0);
  sub_1C708039C();
  sub_1C75504DC();
  sub_1C754DF5C();
  sub_1C7111644();
  (*(v8 + 8))(v12, v6);

  sub_1C6F85170();

  OUTLINED_FUNCTION_125();
}

void sub_1C7111644()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v68 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v67 = (v56 - v18);
  if (!v9[2] && (v5 & 1) == 0 && !v7)
  {
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    v21 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_96_0();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_58_8(v23);
      _os_log_impl(&dword_1C6F5C000, v19, v20, "No changes to write", v5, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_30;
  }

  v24 = sub_1C7113C14(v17);
  if (v1)
  {
LABEL_30:
    OUTLINED_FUNCTION_125();
    return;
  }

  v60 = v0;
  v61 = 0;
  v59 = v7;
  v58 = v5;
  v65 = v10;
  v66 = v3;
  v64 = v12;
  if (v25)
  {
    v57 = v24;
    v26 = v25;
  }

  else
  {
    sub_1C708039C();
    v26 = sub_1C75504DC();
    v57 = 0;
  }

  v27 = v9 + 8;
  OUTLINED_FUNCTION_11();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v33 = 0;
  v56[1] = v26;
  v62 = v9 + 8;
  v63 = v9;
  if (!v30)
  {
    while (1)
    {
LABEL_12:
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v34 >= v32)
      {
        break;
      }

      v30 = v27[v34];
      ++v33;
      if (v30)
      {
        v33 = v34;
        goto LABEL_16;
      }
    }

    if (v58)
    {
      v55 = v57;
    }

    else
    {
      v55 = v59;
    }

    sub_1C7113F68(v55, v26, 4, 1.0);

    goto LABEL_30;
  }

LABEL_16:
  while (1)
  {
    v35 = __clz(__rbit64(v30)) | (v33 << 6);
    v36 = *(v9[6] + v35);
    v37 = *(v9[7] + 8 * v35);
    v38 = *(v65 + 20);
    sub_1C754DF6C();
    OUTLINED_FUNCTION_12();
    v40 = v67;
    (*(v39 + 16))(v67 + v38, v66);
    *v40 = v37;
    OUTLINED_FUNCTION_3_46();
    sub_1C71154C8();
    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C6FCABE8();
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v46 = v42;
    v47 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F8, &qword_1C755CBF0);
    if (sub_1C7551A2C())
    {
      v48 = sub_1C6FCABE8();
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_34;
      }

      v46 = v48;
    }

    if (v47)
    {
      OUTLINED_FUNCTION_66_12();
      sub_1C7115464(v68, v50);
      OUTLINED_FUNCTION_0_66();
      sub_1C7115520(v67, v51);
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v26 + 8 * (v46 >> 6));
      *(*(v26 + 48) + v46) = v36;
      OUTLINED_FUNCTION_66_12();
      OUTLINED_FUNCTION_17_30();
      sub_1C7115578();
      sub_1C7115520(v67, isUniquelyReferenced_nonNull_native);
      v52 = *(v26 + 16);
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_33;
      }

      *(v26 + 16) = v54;
    }

    v30 &= v30 - 1;
    v27 = v62;
    v9 = v63;
    if (!v30)
    {
      goto LABEL_12;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7111A24()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v6);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C754DF6C();
  OUTLINED_FUNCTION_15_3();
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_15_3();
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7111B80, v0, 0);
}

void sub_1C7111B80()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 48) + 112);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v3 = v2;
  v4 = PerformanceMeasure.init(name:log:)();
  if (*(v1 + 16))
  {
    v64 = *(v0 + 88);
    v5 = *(v0 + 16);
    v8 = *(v5 + 64);
    v7 = v5 + 64;
    v6 = v8;
    v9 = -1;
    v10 = -1 << *(*(v0 + 16) + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & v6;
    v12 = (63 - v10) >> 6;
    v65 = (*(v0 + 72) + 32);
    v63 = *(v0 + 16);
    sub_1C75504FC();
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC8];
    if (v11)
    {
      while (1)
      {
LABEL_9:
        v17 = *(v0 + 56);
        v16 = *(v0 + 64);
        v18 = __clz(__rbit64(v11)) | (v13 << 6);
        v66 = *(*(v63 + 48) + v18);
        v19 = *(*(v63 + 56) + 8 * v18);
        sub_1C6FD7F70();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v16);
        v22 = *(v0 + 56);
        v21 = *(v0 + 64);
        if (EnumTagSinglePayload == 1)
        {
          sub_1C75504FC();
          sub_1C754DF5C();
          if (__swift_getEnumTagSinglePayload(v22, 1, v21) != 1)
          {
            sub_1C6FD7FC8(*(v0 + 56), &unk_1EC219230, &unk_1C7563720);
          }
        }

        else
        {
          (*v65)(*(v0 + 80), *(v0 + 56), *(v0 + 64));
          sub_1C75504FC();
        }

        v23 = *(v0 + 112);
        v24 = *(v0 + 80);
        v25 = *(v0 + 64);
        *v23 = v19;
        (*v65)(&v23[*(v64 + 20)], v24, v25);
        OUTLINED_FUNCTION_3_46();
        sub_1C71154C8();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FCABE8();
        OUTLINED_FUNCTION_13_2();
        if (__OFADD__(v28, v29))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v30 = v26;
        v31 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F8, &qword_1C755CBF0);
        if (sub_1C7551A2C())
        {
          v32 = sub_1C6FCABE8();
          if ((v31 & 1) != (v33 & 1))
          {

            sub_1C7551E4C();
            return;
          }

          v30 = v32;
        }

        v34 = *(v0 + 112);
        if (v31)
        {
          OUTLINED_FUNCTION_65_10();
          sub_1C7115464(v35, v36);
          OUTLINED_FUNCTION_0_66();
          sub_1C7115520(v34, v37);
        }

        else
        {
          OUTLINED_FUNCTION_1_3(v14 + 8 * (v30 >> 6));
          *(*(v14 + 48) + v30) = v66;
          OUTLINED_FUNCTION_65_10();
          OUTLINED_FUNCTION_17_30();
          sub_1C7115578();
          sub_1C7115520(v34, v30);
          v38 = *(v14 + 16);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_41;
          }

          *(v14 + 16) = v40;
        }

        v11 &= v11 - 1;
        if (!v11)
        {
          goto LABEL_5;
        }
      }
    }

    while (1)
    {
LABEL_5:
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v15);
      ++v13;
      if (v11)
      {
        v13 = v15;
        goto LABEL_9;
      }
    }

    sub_1C75504FC();
    v41 = sub_1C754FEEC();
    sub_1C75511BC();
    v42 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_1C7113C14(v4);
    v14 = v44;
    if (!v44)
    {
      sub_1C708039C();
      v14 = sub_1C75504DC();
    }

    sub_1C75504FC();
    v41 = sub_1C754FEEC();
    sub_1C75511BC();
    v45 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v45, v46))
    {
LABEL_29:

      goto LABEL_30;
    }
  }

  v47 = swift_slowAlloc();
  *v47 = 134218240;
  v48 = sub_1C71121B8(v14);
  *(v47 + 14) = OUTLINED_FUNCTION_51_10(v48);

  OUTLINED_FUNCTION_8_1();
  _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
LABEL_30:

  sub_1C7113F68(*(v0 + 24), v14, 4, *(v0 + 40));

  v54 = sub_1C754FEEC();
  sub_1C75511BC();
  v55 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v57, v58, v59, v60, v61, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  v62();
}

uint64_t sub_1C71121B8(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28, &qword_1C756CB00);
  OUTLINED_FUNCTION_76(v8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_61_1();
  if (*(a1 + 16) && (sub_1C6FCABE8(), (v10 & 1) != 0))
  {
    OUTLINED_FUNCTION_3_46();
    sub_1C71154C8();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v11, 1, v3);
  v12 = OUTLINED_FUNCTION_56_9();
  if (__swift_getEnumTagSinglePayload(v12, v13, v3))
  {
    sub_1C6FD7FC8(v1, &qword_1EC216D28, &qword_1C756CB00);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_295();
    sub_1C71154C8();
    sub_1C6FD7FC8(v1, &qword_1EC216D28, &qword_1C756CB00);
    v15 = *v7;
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_66();
    sub_1C7115520(v7, v16);
    v14 = *(v15 + 16);
  }

  return v14;
}