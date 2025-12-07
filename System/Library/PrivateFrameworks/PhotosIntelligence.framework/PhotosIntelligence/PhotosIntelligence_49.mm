uint64_t sub_1C7305664()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 888) = v0;

  (*(v2[56] + 8))(v2[57], v2[55]);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t, __n128), void (*a19)(void (*)(uint64_t, uint64_t, __n128), uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_60_19();
  sub_1C754FE6C();
  OUTLINED_FUNCTION_51_20();
  sub_1C755130C();
  v31 = OUTLINED_FUNCTION_42_29();
  v32 = MEMORY[0x1E69E93E8];
  if (v31)
  {

    sub_1C754FEDC();

    v33 = OUTLINED_FUNCTION_15_1();
    if (v34(v33) == *v32)
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v29 + 496) + 8))(*(v29 + 512), *(v29 + 488));
      v35 = "";
    }

    OUTLINED_FUNCTION_96_0();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v36);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v37, v38, v39, v40, v41, v35);
    v42 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v42);
  }

  v43 = *(v29 + 760);

  v44 = OUTLINED_FUNCTION_49_3();
  v43(v44);
  v45 = sub_1C754FEEC();
  v46 = sub_1C755119C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v29 + 856);
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v47;
    _os_log_impl(&dword_1C6F5C000, v45, v46, "PhotosAlchemistGenerationArtificialDelay user default set, finished waiting for %lds", v48, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v49 = *(v29 + 888);
  v50 = *(v29 + 408);
  v51 = *(v29 + 416);
  sub_1C71072FC(*(v29 + 360), v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    OUTLINED_FUNCTION_21_48();

    swift_unknownObjectRelease();
    (*(v30 + 8))(a21, v32);
    v52 = OUTLINED_FUNCTION_43_30();
    v53(v52);
    sub_1C7030CDC(a24, &qword_1EC215BD8, &unk_1C7564890);
LABEL_27:
    OUTLINED_FUNCTION_11_57();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_38_4();

    return v123(v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  v132 = v49;
  v54 = OUTLINED_FUNCTION_46_26();
  v55(v54);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v56 = sub_1C754FE6C();
  v57 = sub_1C755131C();
  if (sub_1C755144C())
  {
    OUTLINED_FUNCTION_96_0();
    v58 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v58);
    v59 = sub_1C754FE2C();
    OUTLINED_FUNCTION_50_24(&dword_1C6F5C000, v56, v57, v59, "Persisting", "");
    v60 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v60);
  }

  v61 = *(v29 + 760);
  v62 = *(v29 + 728);
  v63 = *(v29 + 656);
  v64 = *(v29 + 632);

  v65 = OUTLINED_FUNCTION_323();
  v62(v65);
  OUTLINED_FUNCTION_41_33();
  v66 = sub_1C754FEBC();

  v61(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215AF8, &qword_1C75818B0);
  inited = swift_initStackObject();
  v68 = MEMORY[0x1E69ADA00];
  *(inited + 16) = xmmword_1C755BAB0;
  v69 = *v68;
  *(inited + 32) = *v68;
  v70 = *MEMORY[0x1E69AD9E8];
  type metadata accessor for MXISerializeCompressionAlgorithm(0);
  *(inited + 64) = v71;
  *(inited + 40) = v70;
  type metadata accessor for MXISerializeOption(0);
  OUTLINED_FUNCTION_27_37();
  sub_1C730A980(v72, v73, byte_1C755ADA8);
  v74 = v69;
  v75 = v70;
  OUTLINED_FUNCTION_62_19();
  sub_1C754F7EC();
  if (!v132)
  {

    sub_1C754FE6C();
    OUTLINED_FUNCTION_59_21();
    sub_1C754FEAC();
    v90 = sub_1C755130C();
    if (sub_1C755144C())
    {
      v91 = *(v29 + 496);
      v92 = *(v29 + 504);
      v93 = *(v29 + 488);

      sub_1C754FEDC();
      a23 = v66;

      if ((*(v91 + 88))(v92, v93) != *MEMORY[0x1E69E93E8])
      {
        (*(*(v29 + 496) + 8))(*(v29 + 504), *(v29 + 488));
      }

      OUTLINED_FUNCTION_49_21();
      v115 = *(v29 + 800);
      OUTLINED_FUNCTION_30_34();
      a24 = *(v29 + 624);
      v116 = *(v29 + 616);
      a21 = *(v29 + 576);
      a22 = *(v29 + 608);
      v117 = *(v29 + 568);
      a20 = *(v29 + 560);
      v118 = *(v29 + 424);
      a15 = *(v29 + 432);
      a13 = *(v29 + 416);
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      v119 = sub_1C754FE2C();
      OUTLINED_FUNCTION_65_20(&dword_1C6F5C000, v120, v90, v119, "Persisting");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      swift_unknownObjectRelease();
      (a18)(v92, a17);
      (*(v118 + 8))(a15, a13);
      (*(v117 + 8))(a21, a20);
      (*(v116 + 8))(a24, a22);
    }

    else
    {
      OUTLINED_FUNCTION_19_56();
      v96 = *(v29 + 616);
      a23 = *(v29 + 608);
      a24 = v97;
      v98 = *(v29 + 568);
      a21 = *(v29 + 560);
      a22 = *(v29 + 576);
      v99 = *(v29 + 424);
      a14 = *(v29 + 416);
      a15 = *(v29 + 432);

      swift_unknownObjectRelease();
      a19(a18, a17);
      (*(v99 + 8))(a15, a14);
      (*(v98 + 8))(a22, a21);
      (*(v96 + 8))(a24, a23);
    }

    goto LABEL_27;
  }

  v131 = *(v29 + 576);
  v76 = *(v29 + 568);
  v129 = *(v29 + 816);
  v130 = *(v29 + 560);
  v78 = *(v29 + 424);
  v77 = *(v29 + 432);
  v79 = *(v29 + 416);

  (*(v78 + 8))(v77, v79);
  (*(v76 + 8))(v131, v130);
  *(v29 + 320) = v132;
  v80 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_17_62();
  if (swift_dynamicCast())
  {
    v81 = OUTLINED_FUNCTION_16_51();
    if (v82(v81) == *MEMORY[0x1E698A8D8])
    {

      sub_1C730A2C4();
      OUTLINED_FUNCTION_9_10();
      v83 = swift_allocError();
      OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v83, v84);
      OUTLINED_FUNCTION_66_20(v85, v86, v87);

      swift_unknownObjectRelease();
      v88 = OUTLINED_FUNCTION_55();
      v89(v88);
    }

    else
    {
      v101 = *(v29 + 392);
      v102 = *(v29 + 400);
      v103 = *(v29 + 384);
      v104 = OUTLINED_FUNCTION_55();
      v105(v104);
      swift_unknownObjectRelease();

      (*(v101 + 8))(v102, v103);
    }
  }

  else
  {
    v94 = OUTLINED_FUNCTION_5_70();
    v95(v94);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_24_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_38_4();

  return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v129, v130, v131, v66, v132, a25, a26, a27, a28);
}

uint64_t sub_1C73061D8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 888);
  OUTLINED_FUNCTION_53_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_17_62();
  if (swift_dynamicCast())
  {
    v6 = OUTLINED_FUNCTION_16_51();
    v7(v6);
    OUTLINED_FUNCTION_15_59();
    if (v8)
    {

      sub_1C730A2C4();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v9, v10);
      OUTLINED_FUNCTION_66_20(v11, v12, v13);

      swift_unknownObjectRelease();
      v18 = OUTLINED_FUNCTION_9_70();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_9_70();
      v17(v16);
      swift_unknownObjectRelease();

      v18 = OUTLINED_FUNCTION_40_35();
    }

    v19(v18);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_70();
    v15(v14);
    swift_unknownObjectRelease();
  }

  v20 = OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_25_36(v20);

  OUTLINED_FUNCTION_43();

  return v21();
}

uint64_t sub_1C730648C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 824);
  OUTLINED_FUNCTION_53_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_17_62();
  if (swift_dynamicCast())
  {
    v5 = OUTLINED_FUNCTION_16_51();
    v6(v5);
    OUTLINED_FUNCTION_15_59();
    if (v7)
    {

      sub_1C730A2C4();
      OUTLINED_FUNCTION_9_10();
      v8 = swift_allocError();
      OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v8, v9);
      OUTLINED_FUNCTION_66_20(v10, v11, v12);

      swift_unknownObjectRelease();
      v17 = OUTLINED_FUNCTION_9_70();
    }

    else
    {
      v15 = OUTLINED_FUNCTION_9_70();
      v16(v15);
      swift_unknownObjectRelease();

      v17 = OUTLINED_FUNCTION_40_35();
    }

    v18(v17);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_70();
    v14(v13);
    swift_unknownObjectRelease();
  }

  v19 = OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_25_36(v19);

  OUTLINED_FUNCTION_43();

  return v20();
}

uint64_t static AlchemistServiceInterface.getMXIOutputURL(assetUUID:)(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  if (qword_1EC214010 != -1)
  {
    OUTLINED_FUNCTION_26_39();
    swift_once();
  }

  v6 = sub_1C754DD2C();
  __swift_project_value_buffer(v6, qword_1EC21A748);
  sub_1C754DCDC();
  v7 = sub_1C755065C();

  v8 = [v5 fileExistsAtPath_];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [v4 defaultManager];
  v10 = sub_1C754DC8C();
  v15[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v15];

  if (v11)
  {
    v12 = v15[0];
LABEL_6:
    v15[0] = a1;
    v15[1] = a2;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](6912109, 0xE300000000000000);
    sub_1C754DC9C();
  }

  v14 = v15[0];
  sub_1C754DBEC();

  return swift_willThrow();
}

uint64_t AlchemistServiceInterface.convert(asset:saveURL:configurationPreset:bakingSize:eventHandler:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 128) = v3;
  *(v0 + 136) = v4;
  *(v0 + 90) = v5;
  *(v0 + 112) = v6;
  *(v0 + 120) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = sub_1C754FE9C();
  *(v0 + 144) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 152) = v11;
  *(v0 + 160) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754DD2C();
  *(v0 + 168) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 176) = v13;
  *(v0 + 184) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FE4C();
  *(v0 + 192) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v0 + 200) = v15;
  *(v0 + 208) = OUTLINED_FUNCTION_281_1();
  *(v0 + 216) = swift_task_alloc();
  *(v0 + 224) = swift_task_alloc();
  *(v0 + 91) = *v2;
  v16 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C7306A70()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88(&qword_1EC214008);
  }

  v1 = sub_1C754FE8C();
  v0[29] = __swift_project_value_buffer(v1, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v2 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v3 = swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_55_25(v3);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v5, v6, v4, "RequestingImage", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v7 = v0[25];

  v8 = OUTLINED_FUNCTION_45_26();
  v9(v8);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v0[30] = OUTLINED_FUNCTION_28_28();
  v0[31] = *(v7 + 8);
  v0[32] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_49_3();
  v11(v10);
  type metadata accessor for Spatial3DAssetResourceUtils();
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_1C7306C2C;

  return static Spatial3DAssetResourceUtils.requestFullSizeImageURL(for:progressHandler:cancellationHandler:)();
}

uint64_t sub_1C7306C2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 272) = v0;

  if (v0)
  {
    v5 = sub_1C7306F20;
  }

  else
  {
    v5 = sub_1C7306D30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7306D30(uint64_t a1)
{
  v20 = v2;
  sub_1C754FE6C();
  OUTLINED_FUNCTION_51_20();
  sub_1C755130C();
  if (OUTLINED_FUNCTION_42_29())
  {

    sub_1C754FEDC();

    v3 = OUTLINED_FUNCTION_15_1();
    if (v4(v3) == *MEMORY[0x1E69E93E8])
    {
      v5 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v2 + 152) + 8))(*(v2 + 160), *(v2 + 144));
      v5 = "";
    }

    OUTLINED_FUNCTION_96_0();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v6);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v7, v8, v9, v10, v11, v5);
    v12 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v12);
  }

  v13 = *(v2 + 248);
  v14 = *(v2 + 91);
  v15 = *(v2 + 208);
  v16 = *(v2 + 192);

  v13(v15, v16);
  *(v2 + 280) = type metadata accessor for SpatialAnalyticsUtils();
  *(v2 + 288) = swift_initStackObject();
  *(v2 + 296) = sub_1C74A6724();
  v19 = 0;
  sub_1C74A62B0(&v19);
  *(v2 + 89) = v14;
  v17 = swift_task_alloc();
  *(v2 + 304) = v17;
  *v17 = v2;
  v17[1] = sub_1C7306FB0;

  return AlchemistServiceInterface.convert(imageURL:saveURL:configurationPreset:bakingSize:eventHandler:)();
}

uint64_t sub_1C7306F20()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_64_15();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7306FB0()
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
  *(v5 + 312) = v0;

  if (!v0)
  {
    *(v5 + 320) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73070B8()
{
  v10 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 96);
  v5 = *(v0 + 320);
  static SpatialAnalyticsUtils.sendGenerationEvent(asset:mxiScene:spatialType:)();

  v9 = 0;
  sub_1C74A62F4(&v9, v4);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_116();
  v7 = *(v0 + 320);

  return v6(v7);
}

uint64_t sub_1C73071E4()
{
  OUTLINED_FUNCTION_123();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_64_15();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t AlchemistServiceInterface.convert(imageData:saveURL:configurationPreset:bakingSize:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42();
  v11 = v10;
  *(v9 + 56) = v12;
  *(v9 + 64) = a9;
  *(v9 + 185) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = v15;
  *(v9 + 24) = v16;
  *(v9 + 32) = v17;
  *(v9 + 16) = v18;
  v19 = sub_1C754FE9C();
  *(v9 + 72) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v9 + 80) = v20;
  *(v9 + 88) = OUTLINED_FUNCTION_77();
  v21 = sub_1C754FE4C();
  *(v9 + 96) = v21;
  OUTLINED_FUNCTION_18(v21);
  *(v9 + 104) = v22;
  *(v9 + 112) = OUTLINED_FUNCTION_281_1();
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 186) = *v11;
  v23 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v23, v24, v25);
}

uint64_t sub_1C73073BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88(&qword_1EC214008);
  }

  v10 = sub_1C754FE8C();
  __swift_project_value_buffer(v10, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v11 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v12);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v13, v14, v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v19);
  }

  v20 = *(v9 + 104);

  v21 = OUTLINED_FUNCTION_45_26();
  v22(v21);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v9 + 136) = OUTLINED_FUNCTION_28_28();
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_40_35();
  v23(v24);
  v25 = sub_1C754DDCC();
  v26 = CGImageSourceCreateWithData(v25, 0);
  *(v9 + 144) = v26;

  if (v26)
  {
    v27 = sub_1C7309210(v26, 0);
    *(v9 + 152) = v27;
    v31 = v27;
    Width = CVPixelBufferGetWidth(v27);
    Height = CVPixelBufferGetHeight(v31);
    AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(v34, v26, Width, Height);
    v36 = v35;
    v37 = sub_1C754FE6C();
    sub_1C754FEAC();
    v38 = sub_1C755130C();
    v39 = sub_1C755144C();
    if (v39)
    {

      sub_1C754FEDC();

      v40 = OUTLINED_FUNCTION_61_0();
      if (v41(v40) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v9 + 80) + 8))(*(v9 + 88), *(v9 + 72));
        v42 = "";
      }

      OUTLINED_FUNCTION_96_0();
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v37, v38, v44, "Fetching", v42, v43, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v45 = *(v9 + 186);
    v46 = *(v9 + 112);
    v47 = *(v9 + 96);
    v48 = *(v9 + 185);

    (v23)(v46, v47);
    *(v9 + 184) = v45;
    v49 = swift_task_alloc();
    *(v9 + 160) = v49;
    *v49 = v9;
    v49[1] = sub_1C73077E4;
    v50 = *(v9 + 56);
    v51 = *(v9 + 40);
    v52 = *(v9 + 48);
    v53 = *(v9 + 32);

    return AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(v31, v9 + 184, v36 | ((HIDWORD(v36) & 1) << 32), v51, v52, v48 & 1, v53, v50, a9);
  }

  else
  {
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    *(v28 + 8) = 0x80000001C75AA500;
    *(v28 + 16) = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v29();
  }
}

uint64_t sub_1C73077E4()
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
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73078EC()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_116();
  v3 = *(v0 + 176);

  return v2(v3);
}

uint64_t sub_1C7307994()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlchemistServiceInterface.prewarm()()
{
  if (MTLCreateSystemDefaultDevice())
  {
    sub_1C754E85C();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1C754E84C();
    if (!v0)
    {

      if (qword_1EC214000 != -1)
      {
        OUTLINED_FUNCTION_0_136();
        swift_once();
      }

      v2 = sub_1C754FF1C();
      __swift_project_value_buffer(v2, qword_1EC21A718);
      v3 = sub_1C754FEEC();
      v4 = sub_1C755117C();
      if (os_log_type_enabled(v3, v4))
      {
        OUTLINED_FUNCTION_96_0();
        v5 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v5);
        _os_log_impl(&dword_1C6F5C000, v3, v4, "Prewarmed ALCService.", v1, 2u);
        v6 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v6);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_6_77(xmmword_1C7569120, v7, v8);
    swift_willThrow();
  }
}

uint64_t sub_1C7307BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  v6 = a1 == 1798647344 && a2 == 0xE400000000000000;
  if (v6 || (sub_1C7551DBC() & 1) != 0)
  {
    v7 = MEMORY[0x1E698A8B8];
    goto LABEL_20;
  }

  v8 = a1 == 27441 && a2 == 0xE200000000000000;
  if (v8 || (sub_1C7551DBC() & 1) != 0)
  {
    v7 = MEMORY[0x1E698A880];
    goto LABEL_20;
  }

  v9 = a1 == 27442 && a2 == 0xE200000000000000;
  if (v9 || (sub_1C7551DBC() & 1) != 0)
  {
    goto LABEL_19;
  }

  v14 = a1 == 27444 && a2 == 0xE200000000000000;
  if (v14 || (sub_1C7551DBC() & 1) != 0)
  {
    v7 = MEMORY[0x1E698A890];
  }

  else
  {
    v15 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
    if (!v15 && (sub_1C7551DBC() & 1) == 0)
    {
LABEL_19:
      v7 = MEMORY[0x1E698A888];
      goto LABEL_20;
    }

    v7 = MEMORY[0x1E698A8B0];
  }

LABEL_20:
  v10 = *v7;
  v11 = sub_1C754E86C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a3, v10, v11);
}

uint64_t AlchemistServiceInterface.ConfigurationPreset.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7307DFC()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC21A710 = result;
  return result;
}

uint64_t sub_1C7307E64()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A718);
  __swift_project_value_buffer(v0, qword_1EC21A718);
  if (qword_1EC213FF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC21A710;
  return sub_1C754FF2C();
}

uint64_t sub_1C7307EF0()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C754FE8C();
  __swift_allocate_value_buffer(v4, qword_1EC21A730);
  __swift_project_value_buffer(v4, qword_1EC21A730);
  if (qword_1EC214000 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC21A718);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C754FE5C();
}

uint64_t sub_1C730802C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C754DD2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  __swift_allocate_value_buffer(v9, qword_1EC21A748);
  __swift_project_value_buffer(v2, qword_1EC21A748);
  v10 = NSTemporaryDirectory();
  sub_1C755068C();

  sub_1C754DC4C();

  v11 = [objc_opt_self() protectedTemporaryItemsSubdirectoryName];
  sub_1C755068C();

  sub_1C754DC9C();

  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_1C754DC9C();
  return (v12)(v8, v2);
}

uint64_t static AlchemistServiceInterface.outputDirectoryURL.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EC214010 != -1)
  {
    OUTLINED_FUNCTION_26_39();
    swift_once();
  }

  v3 = sub_1C754DD2C();
  v4 = __swift_project_value_buffer(v3, qword_1EC21A748);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

void sub_1C7308290(char *a1)
{
  v2 = sub_1C754E86C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C754E91C();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 104);
  v33 = *a1;
  v10(v8, **(&unk_1E82A1788 + v33), v6);
  sub_1C754E8EC();
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_1C755065C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = sub_1C754E8DC();
      sub_1C754E8CC();
      v14(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770, &unk_1C755C740);
  }

  v15 = sub_1C755065C();
  v16 = [v11 objectForKey_];

  if (v16)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = sub_1C754E8DC();
      sub_1C754E8AC();
      v17(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770, &unk_1C755C740);
  }

  v18 = sub_1C755065C();
  v19 = [v11 objectForKey_];

  if (v19)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v20 = sub_1C754E8DC();
      sub_1C754E89C();
      v20(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770, &unk_1C755C740);
  }

  v21 = sub_1C755065C();
  v22 = [v11 objectForKey_];

  if (v22)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = sub_1C754E8DC();
      sub_1C754E88C();
      v23(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770, &unk_1C755C740);
  }

  v24 = sub_1C755065C();
  v25 = [v11 stringForKey_];

  if (v25)
  {
    v26 = sub_1C755068C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_1C7307BAC(v26, v28, v4);

  v29 = sub_1C754E8DC();
  sub_1C754E87C();
  v29(&v36, 0);
  v30 = sub_1C755065C();
  v31 = [v11 objectForKey_];

  if (v31)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v33 != 2)
    {
      v32 = sub_1C754E8DC();
      sub_1C754E8BC();
      v32(&v36, 0);
    }
  }

  else
  {

    sub_1C7030CDC(&v36, &qword_1EC219770, &unk_1C755C740);
  }
}

uint64_t static AlchemistServiceInterface.imageURL(for:progressHandler:cancellationHandler:)()
{
  OUTLINED_FUNCTION_58_23();
  type metadata accessor for Spatial3DAssetResourceUtils();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return static Spatial3DAssetResourceUtils.requestFullSizeImageURL(for:progressHandler:cancellationHandler:)();
}

uint64_t AlchemistServiceInterface.convert(imageURL:saveURL:configurationPreset:bakingSize:eventHandler:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 177) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  v10 = sub_1C754FE9C();
  *(v0 + 64) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 72) = v11;
  *(v0 + 80) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754FE4C();
  *(v0 + 88) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 96) = v13;
  *(v0 + 104) = OUTLINED_FUNCTION_281_1();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  *(v0 + 178) = *v2;
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7308B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88(&qword_1EC214008);
  }

  v10 = sub_1C754FE8C();
  __swift_project_value_buffer(v10, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v11 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_55_25(v12);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v14, v15, v13, "Fetching", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v16 = *(v9 + 96);

  v17 = OUTLINED_FUNCTION_45_26();
  v18(v17);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v9 + 128) = OUTLINED_FUNCTION_28_28();
  v19 = *(v16 + 8);
  v20 = OUTLINED_FUNCTION_40_35();
  v19(v20);
  v21 = sub_1C754DC8C();
  v22 = CGImageSourceCreateWithURL(v21, 0);
  *(v9 + 136) = v22;

  if (v22)
  {
    v23 = sub_1C7309210(v22, 0);
    *(v9 + 144) = v23;
    v28 = v23;
    Width = CVPixelBufferGetWidth(v23);
    Height = CVPixelBufferGetHeight(v28);
    AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(v31, v22, Width, Height);
    v33 = v32;
    v34 = sub_1C754FE6C();
    sub_1C754FEAC();
    v35 = sub_1C755130C();
    v36 = sub_1C755144C();
    if (v36)
    {

      sub_1C754FEDC();

      v37 = OUTLINED_FUNCTION_61_0();
      if (v38(v37) == *MEMORY[0x1E69E93E8])
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v9 + 72) + 8))(*(v9 + 80), *(v9 + 64));
        v39 = "";
      }

      OUTLINED_FUNCTION_96_0();
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v34, v35, v41, "Fetching", v39, v40, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v42 = *(v9 + 178);
    v43 = *(v9 + 104);
    v44 = *(v9 + 88);
    v45 = *(v9 + 177);

    (v19)(v43, v44);
    *(v9 + 176) = v42;
    v46 = swift_task_alloc();
    *(v9 + 152) = v46;
    *v46 = v9;
    v46[1] = sub_1C7308FC4;
    v47 = *(v9 + 48);
    v48 = *(v9 + 32);
    v49 = *(v9 + 40);
    v50 = *(v9 + 24);

    return AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(v28, v9 + 176, v33 | ((HIDWORD(v33) & 1) << 32), v48, v49, v45 & 1, v50, v47, a9);
  }

  else
  {
    sub_1C755180C();

    v24 = sub_1C754DCEC();
    MEMORY[0x1CCA5CD70](v24);

    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000001C75AA520;
    *(v25 + 16) = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v26();
  }
}

uint64_t sub_1C7308FC4()
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
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73090CC()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_116();
  v3 = *(v0 + 168);

  return v2(v3);
}

uint64_t sub_1C7309174()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v1();
}

__CVBuffer *sub_1C7309210(CGImageSource *a1, CGColorSpace *a2)
{
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a1);
  if (PrimaryImageIndex >= CGImageSourceGetCount(a1))
  {
    sub_1C730A2C4();
    swift_allocError();
    *v14 = xmmword_1C755FF30;
    *(v14 + 16) = 2;
    swift_willThrow();
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A788, &qword_1C7581A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  v8 = *MEMORY[0x1E695F948];
  *(inited + 32) = *MEMORY[0x1E695F948];
  *(inited + 40) = 1;
  type metadata accessor for CIImageOption(0);
  sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption, aM_17);
  v9 = v8;
  v10 = sub_1C75504DC();
  sub_1C70C0638(v10);
  v3 = v11;

  objc_allocWithZone(MEMORY[0x1E695F658]);
  v12 = sub_1C730A12C(a1, PrimaryImageIndex, v3);
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (!v15)
    {
      sub_1C730A2C4();
      swift_allocError();
      *v22 = xmmword_1C755FEA0;
      *(v22 + 16) = 2;
      swift_willThrow();

      return v3;
    }

    v13 = v15;
  }

  v16 = a2;
  v17 = sub_1C755135C();
  if (v2)
  {

    return v3;
  }

  v18 = v17;
  result = [v12 extent];
  if (v20 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v21 < 9.22337204e18)
  {
    v3 = sub_1C7309C14(v20, v21, 0x42475241u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A790, &qword_1C7581A50);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1C755BAB0;
    v24 = *MEMORY[0x1E695F838];
    *(v23 + 32) = *MEMORY[0x1E695F838];
    *(v23 + 40) = v13;
    type metadata accessor for CIContextOption(0);
    type metadata accessor for CGColorSpace(0);
    sub_1C730A980(&qword_1EC214960, type metadata accessor for CIContextOption, aA8);
    v25 = v24;
    v26 = v13;
    v27 = sub_1C75504DC();
    sub_1C70C085C(v27);
    v29 = v28;

    v30 = objc_allocWithZone(MEMORY[0x1E695F620]);
    v31 = sub_1C730A208(v29);
    CVBufferSetAttachment(v3, *MEMORY[0x1E6965CE8], v26, kCVAttachmentMode_ShouldPropagate);
    [v31 render:v18 toCVPixelBuffer:v3];

    return v3;
  }

LABEL_22:
  __break(1u);
  return result;
}

void __swiftcall AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(Swift::Float_optional *__return_ptr retstr, CGImageSourceRef from, Swift::Int width, Swift::Int height)
{
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(from);
  v6 = CGImageSourceCopyPropertiesAtIndex(from, PrimaryImageIndex, 0);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1C755049C();
    }
  }

  if (qword_1EC214000 != -1)
  {
    OUTLINED_FUNCTION_0_136();
    swift_once();
  }

  v8 = sub_1C754FF1C();
  v9 = __swift_project_value_buffer(v8, qword_1EC21A718);
  v10 = sub_1C754FEEC();
  sub_1C755118C();
  v11 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_96_0();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v9, "Failed to get properties from image source, returning nil", v13, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }
}

unint64_t AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v5 = sub_1C754DD2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C754DC8C();
  v10 = CGImageSourceCreateWithURL(v9, 0);

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_61_0();
    AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(v13, v11, v12, a3);
    v15 = v14;

    return v15 | ((HIDWORD(v15) & 1) << 32);
  }

  else
  {
    if (qword_1EC214000 != -1)
    {
      OUTLINED_FUNCTION_0_136();
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC21A718);
    (*(v6 + 16))(v8, a1, v5);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      v22 = sub_1C754DCEC();
      v30[1] = a1;
      v24 = v23;
      (*(v6 + 8))(v8, v5);
      v25 = sub_1C6F765A4(v22, v24, &v31);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Failed to create image source image from %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1C755180C();

    v31 = 0xD000000000000029;
    v32 = 0x80000001C75AA540;
    v26 = sub_1C754DCEC();
    MEMORY[0x1CCA5CD70](v26);

    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    v27 = v31;
    v28 = v32;
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    return swift_willThrow();
  }
}

CVPixelBufferRef sub_1C7309C14(size_t a1, size_t a2, OSType a3)
{
  pixelBufferOut[9] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A798, &qword_1C7581A58);
  inited = swift_initStackObject();
  v7 = MEMORY[0x1E696CD98];
  *(inited + 16) = xmmword_1C755BAB0;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = v8;
  sub_1C755180C();

  pixelBufferOut[0] = 0x616572635F495341;
  pixelBufferOut[1] = 0xEB000000005F6574;
  OUTLINED_FUNCTION_323();
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  OUTLINED_FUNCTION_323();
  v11 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  v12 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v12);

  *(inited + 40) = 0x616572635F495341;
  *(inited + 48) = 0xEB000000005F6574;
  type metadata accessor for IOSurfacePropertyKey(0);
  sub_1C730A980(&qword_1EC214950, type metadata accessor for IOSurfacePropertyKey, byte_1C755B99C);
  sub_1C75504DC();
  v13 = sub_1C755048C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7A0, &unk_1C7581A60);
  v14 = swift_initStackObject();
  v15 = MEMORY[0x1E69660E8];
  *(v14 + 16) = xmmword_1C75604F0;
  v16 = *v15;
  *(v14 + 32) = *v15;
  v17 = MEMORY[0x1E69E6370];
  *(v14 + 40) = 1;
  v18 = *MEMORY[0x1E69660D8];
  *(v14 + 64) = v17;
  *(v14 + 72) = v18;
  type metadata accessor for CFDictionary(0);
  *(v14 + 104) = v19;
  *(v14 + 80) = v13;
  type metadata accessor for CFString(0);
  sub_1C730A980(&qword_1EC214578, type metadata accessor for CFString, byte_1C755AD64);
  v20 = v16;
  v21 = v18;
  v22 = v13;
  OUTLINED_FUNCTION_323();
  sub_1C75504DC();
  v23 = sub_1C755048C();

  pixelBufferOut[0] = 0;
  result = CVPixelBufferCreate(0, a1, a2, a3, v23, pixelBufferOut);
  v25 = pixelBufferOut[0];
  if (result)
  {
    v26 = result;
    if (qword_1EC214000 != -1)
    {
      OUTLINED_FUNCTION_0_136();
      swift_once();
    }

    v27 = sub_1C754FF1C();
    v28 = __swift_project_value_buffer(v27, qword_1EC21A718);
    v29 = sub_1C754FEEC();
    sub_1C755119C();
    v30 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = v26;
      _os_log_impl(&dword_1C6F5C000, v29, v28, "CVPixelBufferCreate failed with error code: %d", v32, 8u);
      v33 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v33);
    }

    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    v34 = swift_allocError();
    OUTLINED_FUNCTION_6_77(xmmword_1C755FEB0, v34, v35);
    swift_willThrow();
    goto LABEL_9;
  }

  if (pixelBufferOut[0])
  {
    v36 = pixelBufferOut[0];
LABEL_9:

    return v25;
  }

  __break(1u);
  return result;
}

id sub_1C730A064(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CIImageOption(0);
    sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption, aM_17);
    v4 = sub_1C755048C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithCVPixelBuffer:a1 options:v4];

  return v5;
}

id sub_1C730A12C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for CIImageOption(0);
    sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption, aM_17);
    v7 = sub_1C755048C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithCGImageSource:a1 index:a2 options:v7];

  return v8;
}

id sub_1C730A208(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_1C730A980(&qword_1EC214960, type metadata accessor for CIContextOption, aA8);
    v2 = sub_1C755048C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithOptions_];

  return v3;
}

unint64_t sub_1C730A2C4()
{
  result = qword_1EC21A760;
  if (!qword_1EC21A760)
  {
    result = swift_getWitnessTable(asc_1C7581A08, &unk_1F46C1458, v0, v1);
    atomic_store(result, &qword_1EC21A760);
  }

  return result;
}

uint64_t sub_1C730A318()
{
  OUTLINED_FUNCTION_123();
  v7 = v6;
  OUTLINED_FUNCTION_58_23();
  *(v2 + 56) = v0;
  v8 = sub_1C75519BC();
  *(v2 + 64) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v2 + 72) = v9;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 40) = v5;
  *(v2 + 48) = v4;
  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  *(v2 + 32) = v7 & 1;
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C730A3F8()
{
  v1 = v0[9];
  sub_1C75519CC();
  sub_1C730A980(&qword_1EDD06868, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_59_21();
  sub_1C7551E5C();
  sub_1C730A980(&qword_1EDD06870, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C75519DC();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_15_1();
  v3(v2);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C730A580;
  v5 = v0[11];

  return MEMORY[0x1EEE6DE58](v5);
}

uint64_t sub_1C730A580()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_49_3();
  v6(v9);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C730A71C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C730A71C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

unint64_t sub_1C730A784()
{
  result = qword_1EC21A780;
  if (!qword_1EC21A780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlchemistServiceInterface.ConfigurationPreset, &type metadata for AlchemistServiceInterface.ConfigurationPreset, v0, v1);
    atomic_store(result, &qword_1EC21A780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlchemistServiceInterface(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AlchemistServiceInterface.ConfigurationPreset(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence25AlchemistServiceInterfaceV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C730A980(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void OUTLINED_FUNCTION_21_48()
{
  v3 = v0[100];
  *(v1 - 96) = v0[78];
  *(v1 - 88) = v0[51];
}

uint64_t OUTLINED_FUNCTION_24_33()
{
  *(v1 - 96) = *(v0 + 400);
}

uint64_t OUTLINED_FUNCTION_42_29()
{

  return sub_1C755144C();
}

void OUTLINED_FUNCTION_50_24(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

id OUTLINED_FUNCTION_53_28()
{
  *(v0 + 320) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_55_25(_WORD *a1)
{
  *a1 = 0;

  return sub_1C754FE2C();
}

uint64_t OUTLINED_FUNCTION_61_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_19()
{

  return sub_1C75504DC();
}

uint64_t OUTLINED_FUNCTION_64_15()
{
}

uint64_t OUTLINED_FUNCTION_66_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 88) = a1;

  return swift_willThrow();
}

uint64_t sub_1C730AB84(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[81] = v7;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a4;
  v8[76] = a2;
  v8[75] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  v8[82] = swift_task_alloc();
  v10 = sub_1C754DFFC();
  v8[83] = v10;
  OUTLINED_FUNCTION_18(v10);
  v8[84] = v11;
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v12 = sub_1C754F2FC();
  v8[89] = v12;
  OUTLINED_FUNCTION_18(v12);
  v8[90] = v13;
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v14 = sub_1C754F38C();
  v8[93] = v14;
  OUTLINED_FUNCTION_18(v14);
  v8[94] = v15;
  v8[95] = swift_task_alloc();
  memcpy(v8 + 42, a3, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C730AD78, 0, 0);
}

uint64_t sub_1C730AD78()
{
  v64 = v0;
  v1 = *(v0 + 632);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  __swift_project_boxed_opaque_existential_1(*(v0 + 632), v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  v2 = objc_opt_self();
  sub_1C731022C(v2);
  if (v3)
  {
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);
    sub_1C754DF7C();

    if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
    {
      v6 = *(v0 + 664);
      v7 = *(v0 + 656);
      sub_1C754DFEC();
      if (__swift_getEnumTagSinglePayload(v7, 1, v6) != 1)
      {
        sub_1C730BB50(*(v0 + 656));
      }
    }

    else
    {
      (*(*(v0 + 672) + 32))(*(v0 + 696), *(v0 + 656), *(v0 + 664));
    }

    (*(*(v0 + 672) + 32))(*(v0 + 704), *(v0 + 696), *(v0 + 664));
  }

  else
  {
    sub_1C754DFEC();
  }

  v61 = *(*(v0 + 672) + 16);
  v61(*(v0 + 688), *(v0 + 704), *(v0 + 664));
  v8 = sub_1C754FEEC();
  v9 = sub_1C75511BC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 672);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    __dst[0] = v60;
    *v12 = 136315138;
    sub_1C712A6F8();
    v59 = v9;
    v13 = sub_1C7551D8C();
    v15 = v14;
    v16 = *(v11 + 8);
    v17 = OUTLINED_FUNCTION_61_0();
    v16(v17);
    v18 = sub_1C6F765A4(v13, v15, __dst);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v8, v59, "Seeding prompt generation with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1CCA5F8E0](v60, -1, -1);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
  }

  else
  {

    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_61_0();
    v19(v20);
  }

  v21 = *(v0 + 736);
  v22 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 680);
  v61(v25, *(v0 + 704), *(v0 + 664));
  *(v0 + 560) = &type metadata for Random.Arc4Random;
  *(v0 + 568) = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v25, v0 + 536);
  memcpy(__dst, (v0 + 336), 0x50uLL);
  (*(v23 + 32))(v22, v21, v24);
  sub_1C730B7B0(v0 + 536, __dst, (v0 + 496), v22, __src);
  memcpy((v0 + 416), __src, 0x50uLL);
  sub_1C754F2DC();
  v26 = *(v0 + 648);
  v27 = *(v0 + 624);
  v28 = *(v0 + 616);
  v29 = *(v0 + 608);
  v30 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7571600;
  OUTLINED_FUNCTION_3_1();
  *(v32 + 32) = 0xD000000000000018;
  *(v32 + 40) = v33;
  *(v0 + 576) = v30;
  *(v0 + 584) = v29;
  sub_1C75504FC();
  *(inited + 48) = sub_1C755097C();
  *(inited + 56) = v34;
  OUTLINED_FUNCTION_3_1();
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = v35;
  *(v0 + 592) = *(v26 + OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_configuration);
  *(inited + 80) = sub_1C7551D8C();
  *(inited + 88) = v36;
  OUTLINED_FUNCTION_3_1();
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = v37;
  v38 = 1702195796;
  if (*(v0 + 416))
  {
    v39 = 1702195796;
  }

  else
  {
    v39 = 0x65736C6146;
  }

  if (*(v0 + 416))
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  *(inited + 112) = v39;
  *(inited + 120) = v40;
  *(inited + 128) = 0x6D726F6665657266;
  *(inited + 136) = 0xEF73746550736148;
  if (*(v0 + 417))
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v38 = 0x65736C6146;
    v41 = 0xE500000000000000;
  }

  *(inited + 144) = v38;
  *(inited + 152) = v41;
  OUTLINED_FUNCTION_3_1();
  *(inited + 160) = 0xD00000000000001FLL;
  *(inited + 168) = v42;
  v43 = *(v0 + 440);
  *(inited + 176) = *(v0 + 432);
  *(inited + 184) = v43;
  OUTLINED_FUNCTION_3_1();
  *(inited + 192) = 0xD00000000000001FLL;
  *(inited + 200) = v44;
  v45 = *(v0 + 464);
  *(inited + 208) = *(v0 + 456);
  *(inited + 216) = v45;
  OUTLINED_FUNCTION_3_1();
  *(inited + 224) = 0xD00000000000001FLL;
  *(inited + 232) = v46;
  v47 = *(v0 + 488);
  *(inited + 240) = *(v0 + 480);
  *(inited + 248) = v47;
  OUTLINED_FUNCTION_3_1();
  *(inited + 256) = 0xD000000000000015;
  *(inited + 264) = v48;
  *(inited + 272) = v28;
  *(inited + 280) = v27;
  OUTLINED_FUNCTION_3_1();
  *(inited + 288) = v50;
  *(inited + 296) = v49;
  *(inited + 304) = 0;
  *(inited + 312) = 0xE000000000000000;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C730BAFC(v0 + 416);
  v51 = sub_1C75504DC();
  sub_1C754F2EC();
  v52 = *(v0 + 760);
  v53 = *(v0 + 752);
  v54 = *(v0 + 744);
  v55 = *(v0 + 632);
  (*(*(v0 + 672) + 8))(*(v0 + 704), *(v0 + 664));
  OUTLINED_FUNCTION_0_137();
  OUTLINED_FUNCTION_18_0(v55, *(v56 + 24));
  sub_1C754F1AC();
  (*(v53 + 8))(v52, v54);

  v57 = *(v0 + 8);

  return v57(v51);
}

uint64_t sub_1C730B730(const void *a1)
{
  sub_1C754FEFC();
  memcpy((v1 + OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_configuration), a1, 0x59uLL);
  return v1;
}

void sub_1C730B7B0(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v15, a2, sizeof(v15));
  v11 = objc_opt_self();
  sub_1C7027A20(__dst, v14);
  LOBYTE(v11) = [v11 shufflePromptParameters];
  type metadata accessor for DynamicLifeContextGenerator(0);
  swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v15, 0, v11);
  v14[0] = 1;
  v12 = 1;
  sub_1C73CB6F0(v14, a1, a3, a4, &v12, __src);

  if (!v5)
  {
    memcpy(a5, __src, 0x50uLL);
  }
}

uint64_t GlobalTraitPromptGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t GlobalTraitPromptGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalTraitPromptGenerator(uint64_t a1)
{
  result = qword_1EDD090B8;
  if (!qword_1EDD090B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C730BA4C(uint64_t a1)
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

uint64_t sub_1C730BB50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t QueryDisambiguationSuggestionDataSource.description.getter()
{
  v1 = type metadata accessor for EventSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v0;
  v12 = *(*v0 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v32 = v1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v12, 0, v5, v6, v7, v8);
    v13 = v34;
    v14 = *(v3 + 80);
    v31 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v16 = *(v3 + 72);
    do
    {
      sub_1C7100F28(v15, v10);
      v17 = *v10;
      v18 = v10[1];
      sub_1C75504FC();
      sub_1C7100F8C(v10);
      v34 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6F7ED9C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v13 = v34;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v17;
      *(v25 + 40) = v18;
      v15 += v16;
      --v12;
    }

    while (v12);
    v11 = v31;
    v1 = v32;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75AA7E0);
  v26 = *(v13 + 16);

  v33 = v26;
  v27 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v27);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AA810);
  v28 = MEMORY[0x1CCA5D090](v11, v1);
  MEMORY[0x1CCA5CD70](v28);

  MEMORY[0x1CCA5CD70](32010, 0xE200000000000000);
  return v34;
}

PhotosIntelligence::QueryDisambiguationSuggestionType_optional __swiftcall QueryDisambiguationSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QueryDisambiguationSuggestionType.rawValue.getter()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1C730BEA0@<X0>(uint64_t *a1@<X8>)
{
  result = QueryDisambiguationSuggestionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C730BFBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
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

uint64_t sub_1C730C048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C730BFBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C730C074(uint64_t a1)
{
  v2 = sub_1C730C50C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C730C0B0(uint64_t a1)
{
  v2 = sub_1C730C50C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryDisambiguationSuggestionDataSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7A8, &qword_1C7581AD0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C730C50C();
  sub_1C75504FC();
  sub_1C755200C();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7B8, &qword_1C7581AD8);
  sub_1C730C560(&qword_1EC21A7C0, &qword_1EC21A7C8, protocol conformance descriptor for EventSuggestion, MEMORY[0x1E69E6300]);
  sub_1C7551D2C();

  return (*(v5 + 8))(v8, v3);
}

uint64_t QueryDisambiguationSuggestionDataSource.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C70414D8();
  return sub_1C7551FAC();
}

uint64_t QueryDisambiguationSuggestionDataSource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7D0, &qword_1C7581AE0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C730C50C();
  sub_1C7551FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7B8, &qword_1C7581AD8);
    sub_1C730C560(&qword_1EC21A7D8, &qword_1EC21A7E0, protocol conformance descriptor for EventSuggestion, MEMORY[0x1E69E6330]);
    sub_1C7551C1C();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C730C4C4(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C70414D8();
  return sub_1C7551FAC();
}

unint64_t sub_1C730C50C()
{
  result = qword_1EC21A7B0;
  if (!qword_1EC21A7B0)
  {
    result = swift_getWitnessTable(byte_1C7581DFC, &type metadata for QueryDisambiguationSuggestionDataSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A7B0);
  }

  return result;
}

uint64_t sub_1C730C560(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A7B8, &qword_1C7581AD8);
    v10 = sub_1C730C5E8(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C730C5E8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for EventSuggestion(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C730C630()
{
  result = qword_1EC21A7E8;
  if (!qword_1EC21A7E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryDisambiguationSuggestionType, &type metadata for QueryDisambiguationSuggestionType, v0, v1);
    atomic_store(result, &qword_1EC21A7E8);
  }

  return result;
}

unint64_t sub_1C730C688()
{
  result = qword_1EC21A7F0;
  if (!qword_1EC21A7F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryDisambiguationSuggestionDataSource, &type metadata for QueryDisambiguationSuggestionDataSource, v0, v1);
    atomic_store(result, &qword_1EC21A7F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDisambiguationSuggestionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QueryDisambiguationSuggestionDataSource.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C730C878()
{
  result = qword_1EC21A7F8;
  if (!qword_1EC21A7F8)
  {
    result = swift_getWitnessTable(aUp, &type metadata for QueryDisambiguationSuggestionDataSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A7F8);
  }

  return result;
}

unint64_t sub_1C730C8D0()
{
  result = qword_1EC21A800;
  if (!qword_1EC21A800)
  {
    result = swift_getWitnessTable(byte_1C7581D44, &type metadata for QueryDisambiguationSuggestionDataSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A800);
  }

  return result;
}

unint64_t sub_1C730C928()
{
  result = qword_1EC21A808;
  if (!qword_1EC21A808)
  {
    result = swift_getWitnessTable(byte_1C7581D6C, &type metadata for QueryDisambiguationSuggestionDataSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A808);
  }

  return result;
}

unint64_t sub_1C730C97C()
{
  result = qword_1EC21A810;
  if (!qword_1EC21A810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryDisambiguationSuggestionType, &type metadata for QueryDisambiguationSuggestionType, v0, v1);
    atomic_store(result, &qword_1EC21A810);
  }

  return result;
}

uint64_t AssetClusterer.CentroidCodebookOptions.distanceBlock.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AssetClusterer.CentroidCodebookOptions.init(seed:maxNumberOfAssetsToSample:maxNumberOfAssetsToCluster:minDistanceToCluster:distanceBlock:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t AssetClusterer.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t AssetClusterer.init(centroidCodebook:vectorFetchingBlock:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for AssetClusterer(0);
  OUTLINED_FUNCTION_2_96();
  sub_1C754FE7C();
  result = sub_1C6F699F8(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t type metadata accessor for AssetClusterer(uint64_t a1)
{
  result = qword_1EC21A828;
  if (!qword_1EC21A828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetClusterer.cluster(_:)(uint64_t a1)
{
  v144 = sub_1C754FE9C();
  OUTLINED_FUNCTION_3_0();
  v143 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v163 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v140 - v8;
  v10 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v164 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v140 - v22;
  v24 = *(type metadata accessor for AssetClusterer(0) + 24);
  sub_1C75504FC();
  sub_1C754FE3C();
  v155 = v1;
  v146 = v24;
  v25 = sub_1C754FE6C();
  v26 = sub_1C755131C();
  v27 = sub_1C755144C();
  v142 = v9;
  if (v27)
  {
    v28 = v10;
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(a1 + 16);

    v30 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v25, v26, v30, "cluster", "Asset count: %ld", v29, 0xCu);
    v10 = v28;
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  (*(v12 + 16))(v20, v23, v10);
  sub_1C754FECC();
  swift_allocObject();
  v31 = sub_1C754FEBC();
  v147 = *(v12 + 8);
  v148 = v12 + 8;
  v147(v23, v10);
  if (!*(a1 + 16))
  {
    v106 = sub_1C754FE6C();
    v107 = v164;
    sub_1C754FEAC();
    v108 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v109 = v163;
      sub_1C754FEDC();

      v110 = v143;
      v111 = v144;
      if ((*(v143 + 88))(v109, v144) == *MEMORY[0x1E69E93E8])
      {
        v112 = "[Error] Interval already ended";
      }

      else
      {
        (*(v110 + 8))(v109, v111);
        v112 = "";
      }

      v134 = swift_slowAlloc();
      *v134 = 0;
      v135 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v106, v108, v135, "cluster", v112, v134, 2u);
      OUTLINED_FUNCTION_109();
    }

    v147(v107, v10);

    return MEMORY[0x1E69E7CC0];
  }

  v141 = v10;
  v32 = sub_1C730D744(a1, 500);
  v151 = *(v32 + 16);
  if (!v151)
  {

    v34 = MEMORY[0x1E69E7CC8];
LABEL_58:
    v113 = sub_1C75504FC();
    sub_1C703FFB0(v113);
    v115 = v114;

    v116 = 0;
    v117 = *(v115 + 16);
    v55 = MEMORY[0x1E69E7CC0];
    while (v117 != v116)
    {
      if (v116 >= v117)
      {
        goto LABEL_88;
      }

      v118 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_89;
      }

      if (v34[2] && (v119 = sub_1C6FCABD0(*(v115 + 8 * v116 + 32)), (v120 & 1) != 0))
      {
        v121 = *(v34[7] + 8 * v119);
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          v55 = v124;
        }

        v123 = *(v55 + 16);
        v122 = *(v55 + 24);
        if (v123 >= v122 >> 1)
        {
          OUTLINED_FUNCTION_15(v122);
          sub_1C6FB226C();
          v55 = v125;
        }

        *(v55 + 16) = v123 + 1;
        *(v55 + 8 * v123 + 32) = v121;
        v116 = v118;
      }

      else
      {
        ++v116;
      }
    }

    v126 = sub_1C754FE6C();
    v127 = v145;
    sub_1C754FEAC();
    v128 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v129 = v142;
      sub_1C754FEDC();

      v130 = v143;
      v131 = v144;
      if ((*(v143 + 88))(v129, v144) == *MEMORY[0x1E69E93E8])
      {
        v132 = "[Error] Interval already ended";
      }

      else
      {
        (*(v130 + 8))(v129, v131);
        v132 = "";
      }

      v136 = swift_slowAlloc();
      *v136 = 0;
      v137 = v145;
      v138 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v126, v128, v138, "cluster", v132, v136, 2u);
      OUTLINED_FUNCTION_109();

      v133 = v137;
    }

    else
    {

      v133 = v127;
    }

    v147(v133, v141);

    return v55;
  }

  v33 = 0;
  v154 = v32 + 32;
  v34 = MEMORY[0x1E69E7CC8];
  v35 = v155[5];
  v152 = v155[6];
  v153 = v35;
  v149 = v32;
  v150 = v31;
  while (2)
  {
    if (v33 < *(v32 + 16))
    {
      v36 = *(v154 + 8 * v33);
      v156 = v33 + 1;
      v37 = sub_1C75504FC();
      v38 = v153(v37);
      v39 = 0;
      v40 = *(v36 + 16);
      v41 = (v36 + 40);
      v163 = (v36 + 40);
      v164 = MEMORY[0x1E69E7CC0];
LABEL_9:
      v42 = &v41[16 * v39++];
      while (v39 - v40 != 1)
      {
        if ((v39 - 1) >= *(v36 + 16))
        {
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (*(v38 + 16))
        {
          v43 = *(v42 - 1);
          v44 = *v42;
          sub_1C75504FC();
          v45 = sub_1C6F78124(v43, v44);
          if (v46)
          {
            v47 = *(*(v38 + 56) + 8 * v45);
            sub_1C75504FC();

            v48 = v164;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v162 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB2DBC();
              v48 = v52;
            }

            v51 = *(v48 + 2);
            v50 = *(v48 + 3);
            if (v51 >= v50 >> 1)
            {
              OUTLINED_FUNCTION_15(v50);
              sub_1C6FB2DBC();
              v48 = v53;
            }

            *(v48 + 2) = v51 + 1;
            v164 = v48;
            v41 = v163;
            *&v48[8 * v51 + 32] = v162;
            goto LABEL_9;
          }
        }

        ++v39;
        v42 += 2;
      }

      v54 = v155[3];
      v55 = v155[4];
      __swift_project_boxed_opaque_existential_1(v155, v54);
      v56 = v157;
      v57 = (*(v55 + 24))(v164, v54, v55);
      if (v56)
      {

        return v55;
      }

      v161 = v57;
      v157 = 0;

      v58 = 0;
      v59 = (v36 + 40);
      v162 = MEMORY[0x1E69E7CC0];
      v164 = (v36 + 40);
LABEL_23:
      v60 = &v59[16 * v58];
      while (v40 != v58)
      {
        if (v58 >= *(v36 + 16))
        {
          goto LABEL_83;
        }

        if (*(v38 + 16))
        {
          v62 = *(v60 - 1);
          v61 = *v60;
          sub_1C75504FC();
          sub_1C6F78124(v62, v61);
          if (v63)
          {
            v64 = v162;
            v65 = swift_isUniquelyReferenced_nonNull_native();
            v165 = v64;
            if ((v65 & 1) == 0)
            {
              sub_1C6F7ED9C(0, v64[2] + 1, 1, v66, v67, v68, v69);
              v64 = v165;
            }

            v71 = v64[2];
            v70 = v64[3];
            v72 = (v71 + 1);
            if (v71 >= v70 >> 1)
            {
              v74 = OUTLINED_FUNCTION_15(v70);
              v163 = v75;
              sub_1C6F7ED9C(v74, v75, 1, v76, v77, v78, v79);
              v72 = v163;
              v64 = v165;
            }

            ++v58;
            v64[2] = v72;
            v162 = v64;
            v73 = &v64[2 * v71];
            v73[4] = v62;
            v73[5] = v61;
            v59 = v164;
            goto LABEL_23;
          }
        }

        v60 += 2;
        ++v58;
      }

      v80 = v161;
      v160 = *(v161 + 16);
      if (v160)
      {
        v81 = 0;
        v82 = v162;
        v83 = v162[2];
        v158 = v161 + 32;
        v159 = v83;
        v84 = v162 + 5;
        while (v81 < *(v80 + 16))
        {
          if (v159 == v81)
          {
            goto LABEL_52;
          }

          if (v81 >= v82[2])
          {
            goto LABEL_85;
          }

          v85 = *(v158 + 8 * v81);
          v86 = *v84;
          v164 = *(v84 - 1);
          sub_1C75504FC();
          v163 = objc_autoreleasePoolPush();
          swift_isUniquelyReferenced_nonNull_native();
          v165 = v34;
          v87 = sub_1C6FCABD0(v85);
          if (__OFADD__(v34[2], (v88 & 1) == 0))
          {
            goto LABEL_86;
          }

          v89 = v87;
          v90 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A818, &qword_1C7581E50);
          v91 = sub_1C7551A2C();
          v34 = v165;
          if (v91)
          {
            v92 = sub_1C6FCABD0(v85);
            if ((v90 & 1) != (v93 & 1))
            {
              goto LABEL_91;
            }

            v89 = v92;
          }

          if ((v90 & 1) == 0)
          {
            v34[(v89 >> 6) + 8] |= 1 << v89;
            *(v34[6] + 8 * v89) = v85;
            *(v34[7] + 8 * v89) = MEMORY[0x1E69E7CC0];
            v94 = v34[2];
            v95 = __OFADD__(v94, 1);
            v96 = v94 + 1;
            if (v95)
            {
              goto LABEL_87;
            }

            v34[2] = v96;
          }

          v97 = v34[7];
          v98 = *(v97 + 8 * v89);
          v99 = swift_isUniquelyReferenced_nonNull_native();
          *(v97 + 8 * v89) = v98;
          if ((v99 & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v98 = v104;
            *(v97 + 8 * v89) = v104;
          }

          v101 = *(v98 + 16);
          v100 = *(v98 + 24);
          if (v101 >= v100 >> 1)
          {
            OUTLINED_FUNCTION_15(v100);
            sub_1C6FB1814();
            v98 = v105;
            *(v97 + 8 * v89) = v105;
          }

          ++v81;
          *(v98 + 16) = v101 + 1;
          v102 = v98 + 16 * v101;
          v103 = v163;
          *(v102 + 32) = v164;
          *(v102 + 40) = v86;
          objc_autoreleasePoolPop(v103);
          v84 += 2;
          v80 = v161;
          v82 = v162;
          if (v160 == v81)
          {
            goto LABEL_52;
          }
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

LABEL_52:

      v33 = v156;
      v32 = v149;
      if (v156 != v151)
      {
        continue;
      }

      goto LABEL_58;
    }

    break;
  }

  __break(1u);
LABEL_91:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C730D744(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = sub_1C730E42C(0, v4, a2);
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1C716D5B0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_27;
    }

    v6 = 0;
    while (1)
    {
      v7 = v4 >= v6;
      if (a2 > 0)
      {
        v7 = v6 >= v4;
      }

      if (v7)
      {
        break;
      }

      v8 = v6 + a2;
      if (__OFADD__(v6, a2))
      {
        v9 = ((v6 + a2) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v6 + a2;
      }

      if (__OFADD__(v6, a2))
      {
        goto LABEL_52;
      }

      if (v4 < v8)
      {
        v8 = v4;
      }

      v10 = v8 - v6;
      if (v8 < v6)
      {
        goto LABEL_53;
      }

      if (v6 < 0)
      {
        goto LABEL_54;
      }

      if (v4 == v10)
      {
        result = sub_1C75504FC();
        v11 = v3;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
        if (v8 != v6)
        {
          if (v10 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
            v11 = swift_allocObject();
            v14 = _swift_stdlib_malloc_size(v11);
            v11[2] = v10;
            v11[3] = 2 * ((v14 - 32) / 16);
          }

          result = swift_arrayInitWithCopy();
        }
      }

      v13 = *(v23 + 16);
      v12 = *(v23 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1C716D5B0(v12 > 1, v13 + 1, 1);
      }

      *(v23 + 16) = v13 + 1;
      *(v23 + 8 * v13 + 32) = v11;
      v6 = v9;
      if (!--v5)
      {
        while (1)
        {
LABEL_27:
          v15 = v4 >= v9;
          if (a2 > 0)
          {
            v15 = v9 >= v4;
          }

          if (v15)
          {
            return v23;
          }

          v16 = v9 + a2;
          v17 = __OFADD__(v9, a2) ? ((v9 + a2) >> 63) ^ 0x8000000000000000 : v9 + a2;
          if (__OFADD__(v9, a2))
          {
            break;
          }

          if (v4 < v16)
          {
            v16 = v4;
          }

          v18 = v16 - v9;
          if (v16 < v9)
          {
            goto LABEL_49;
          }

          if (v9 < 0)
          {
            goto LABEL_50;
          }

          if (v4 == v18)
          {
            result = sub_1C75504FC();
            v19 = v3;
          }

          else
          {
            v19 = MEMORY[0x1E69E7CC0];
            if (v16 != v9)
            {
              if (v18 >= 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
                v19 = swift_allocObject();
                v22 = _swift_stdlib_malloc_size(v19);
                v19[2] = v18;
                v19[3] = 2 * ((v22 - 32) / 16);
              }

              result = swift_arrayInitWithCopy();
            }
          }

          v21 = *(v23 + 16);
          v20 = *(v23 + 24);
          if (v21 >= v20 >> 1)
          {
            result = sub_1C716D5B0(v20 > 1, v21 + 1, 1);
          }

          *(v23 + 16) = v21 + 1;
          *(v23 + 8 * v21 + 32) = v19;
          v9 = v17;
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_56:
  __break(1u);
  return result;
}

void static AssetClusterer.centroidCodebook(assetUUIDs:options:vectorFetchingBlock:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v89 = a4;
  v90 = a3;
  v78 = a5;
  v73 = sub_1C754FE9C();
  OUTLINED_FUNCTION_3_0();
  v72 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  sub_1C754FE8C();
  OUTLINED_FUNCTION_3_0();
  v80 = v24;
  v81 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *a2;
  v86 = *(a2 + 8);
  v27 = *(a2 + 16);
  v84 = *(a2 + 24);
  v85 = v27;
  v28 = *(a2 + 40);
  v82 = *(a2 + 48);
  v83 = v28;
  OUTLINED_FUNCTION_2_96();
  sub_1C754FE7C();
  sub_1C75504FC();
  sub_1C754FE3C();
  v79 = v26;
  v29 = sub_1C754FE6C();
  v30 = sub_1C755131C();
  v31 = sub_1C755144C();
  v75 = v16;
  if (v31)
  {
    v32 = v12;
    v33 = v10;
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(a1 + 16);

    v35 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v29, v30, v35, "centroidCodebook", "Asset count: %ld", v34, 0xCu);
    v10 = v33;
    v12 = v32;
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  (*(v12 + 16))(v19, v22, v10);
  sub_1C754FECC();
  swift_allocObject();
  v91 = sub_1C754FEBC();
  v38 = *(v12 + 8);
  v37 = v12 + 8;
  v36 = v38;
  v77 = v10;
  v38(v22, v10);
  v39 = v87;
  v40 = v86;
  v93 = static AssetSampler.sample(assetUUIDs:maxNumberOfAssetsToSample:seed:)(a1, v85, v87, v86);
  sub_1C75504FC();
  v41 = v88;
  sub_1C70401E8();
  v42 = v41;
  if (v41)
  {
    goto LABEL_31;
  }

  v43 = v93;
  v44 = v90(v93);
  v76 = v37;
  v74 = v36;
  v88 = 0;
  if ((v40 & 1) == 0)
  {
    if (v39 <= 0xFF)
    {
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
    return;
  }

  LOBYTE(v39) = 42;
LABEL_8:
  type metadata accessor for Random();
  swift_allocObject();
  v45 = Random.init(randomSeed:)(v39);
  v92 = 1;
  v87 = type metadata accessor for AgglomerativeKMeans();
  swift_allocObject();

  v89 = v45;
  v90 = AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)();
  v42 = 0;
  v46 = *(v43 + 16);
  v47._rawValue = MEMORY[0x1E69E7CC0];
LABEL_9:
  v48 = (v43 + 40 + 16 * v42);
  while (v46 != v42)
  {
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (*(v44 + 16))
    {
      v49 = *(v48 - 1);
      v50 = *v48;
      sub_1C75504FC();
      v51 = sub_1C6F78124(v49, v50);
      if (v52)
      {
        v53 = *(*(v44 + 56) + 8 * v51);
        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2DBC();
          v47._rawValue = v56;
        }

        v55 = *(v47._rawValue + 2);
        v54 = *(v47._rawValue + 3);
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_15(v54);
          sub_1C6FB2DBC();
          v47._rawValue = v57;
        }

        ++v42;
        *(v47._rawValue + 2) = v55 + 1;
        *(v47._rawValue + v55 + 4) = v53;
        goto LABEL_9;
      }
    }

    v48 += 2;
    ++v42;
  }

  v58 = v90;
  AgglomerativeKMeans.fit(_:)(v47);
  if (v59)
  {
    (*(v80 + 8))(v79, v81);
  }

  else
  {

    v60 = v79;
    v61 = sub_1C754FE6C();
    v62 = v75;
    sub_1C754FEAC();
    v63 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v64 = v71;
      sub_1C754FEDC();

      v65 = v72;
      v66 = v73;
      if ((*(v72 + 88))(v64, v73) == *MEMORY[0x1E69E93E8])
      {
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v64, v66);
        v67 = "";
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v61, v63, v69, "centroidCodebook", v67, v68, 2u);
      OUTLINED_FUNCTION_109();
      v58 = v90;
    }

    v74(v62, v77);
    v70 = v78;
    v78[3] = v87;
    v70[4] = &protocol witness table for KMeans;

    *v70 = v58;
    (*(v80 + 8))(v60, v81);
  }
}

unint64_t sub_1C730E184()
{
  result = qword_1EC21A820;
  if (!qword_1EC21A820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetClusterer.Error, &type metadata for AssetClusterer.Error, v0, v1);
    atomic_store(result, &qword_1EC21A820);
  }

  return result;
}

unint64_t sub_1C730E200(uint64_t a1)
{
  result = sub_1C70912D4();
  if (v2 <= 0x3F)
  {
    result = sub_1C730E29C();
    if (v3 <= 0x3F)
    {
      result = sub_1C754FE8C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C730E29C()
{
  result = qword_1EC21A838;
  if (!qword_1EC21A838)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC21A838);
  }

  return result;
}

uint64_t sub_1C730E2E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1C730E324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetClusterer.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C730E42C(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t FreeformStoryRequestGenerator.Configuration.init(maximumNumberOfTokensForLifeContext:maxNumberOfTraitsToSelect:numberOfChaptersToGenerate:numberOfShotsPerChapter:shufflePromptParameters:computeNumberOfTokens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 48) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t FreeformStoryRequestGenerator.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FreeformStoryRequestGenerator.init(configuration:)(a1);
  return v2;
}

uint64_t FreeformStoryRequestGenerator.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 48);
  sub_1C754FEFC();
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  v6 = [objc_opt_self() globalAndPersonalTraitsSeed];
  if (!v6)
  {
    v28 = 0;
    MEMORY[0x1CCA5F900](&v28, 8);
    v22 = v28;
    *(v2 + 72) = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    v11 = sub_1C754FEEC();
    v23 = sub_1C75511BC();
    v24 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_13_3();
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_1C6F5C000, v11, v23, "Setting random number generator seed for shuffling traits and generating number of traits for storytelling adapter to focus on as %llu (random integer)", v26, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_7;
  }

  v7 = v6;
  sub_1C755103C();
  v8 = sub_1C755104C();
  v9 = sub_1C7551FCC();

  *(v2 + 72) = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  v10 = v7;
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();

  if (!os_log_type_enabled(v11, v12))
  {

LABEL_7:
    return v2;
  }

  OUTLINED_FUNCTION_13_3();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 138412290;
  *(v13 + 4) = v10;
  *v14 = v7;
  v15 = v10;
  OUTLINED_FUNCTION_7_65();
  _os_log_impl(v16, v17, v18, v19, v20, v21);
  sub_1C6FB5FC8(v14, &qword_1EC215190, &qword_1C755C730);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();

  return v2;
}

void *sub_1C730E76C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_14_53(v17);
  OUTLINED_FUNCTION_14_53(v16);
  v9 = objc_opt_self();
  sub_1C7027A20(v17, v15);
  LOBYTE(v9) = [v9 shufflePromptParameters];
  type metadata accessor for DynamicLifeContextGenerator(0);
  swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v16, 0, v9);
  v15[0] = 2;
  v10 = v5[2];
  v11 = v5[6];
  v12 = v5[7];
  v18 = 1;
  v13 = sub_1C73CD8BC(v15, v10, v11, v12, a2, a3, a4, &v18);

  return v13;
}

void sub_1C730E884(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_14_53(v14);
  OUTLINED_FUNCTION_14_53(v13);
  v9 = objc_opt_self();
  sub_1C7027A20(v14, v12);
  LOBYTE(v9) = [v9 shufflePromptParameters];
  type metadata accessor for DynamicLifeContextGenerator(0);
  swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v13, 0, v9);
  v12[0] = 2;
  v10 = 1;
  sub_1C73CB6F0(v12, a1, a2, a3, &v10, __src);

  if (!v4)
  {
    memcpy(a4, __src, 0x50uLL);
  }
}

void sub_1C730E9A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v183 = a3;
  v184 = a6;
  v181 = a7;
  v182 = a2;
  v179 = a1;
  v178 = type metadata accessor for LLMConfiguration(0);
  MEMORY[0x1EEE9AC00](v178);
  v180 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v186 = &v169 - v11;
  v189 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v191 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v188 = v14 - v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v187 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v185 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v169 - v21;
  v209 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v197 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v169 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_130();
  v192 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v169 - v33;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v194 = v36;
  v195 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_14_53(__src);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v39 = v196;
  sub_1C754F2CC();
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_1C754F1AC();
    v40 = v209;
    v41 = v197;
LABEL_17:
    (*(v194 + 8))(v38, v195);
    (*(v41 + 8))(a5, v40);
    return;
  }

  v176 = v29;
  v172 = v26;
  v173 = v38;
  v196 = 0;
  v42 = a4[3];
  v174 = a4;
  __swift_project_boxed_opaque_existential_1(a4, v42);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v171 = objc_opt_self();
  sub_1C731022C(v171);
  v177 = a5;
  v175 = v34;
  if (v43)
  {
    v44 = v186;
    sub_1C754DF7C();

    v45 = v189;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v189);
    v47 = v191;
    if (EnumTagSinglePayload == 1)
    {
      v48 = v185;
      sub_1C754DFEC();
      v49 = __swift_getEnumTagSinglePayload(v44, 1, v45);
      v50 = v193;
      if (v49 != 1)
      {
        sub_1C6FB5FC8(v44, &unk_1EC217A30, &unk_1C75687E0);
      }
    }

    else
    {
      v48 = v185;
      (*(v191 + 32))(v185, v44, v45);
      v50 = v193;
    }

    (*(v47 + 32))(v50, v48, v45);
  }

  else
  {
    v50 = v193;
    sub_1C754DFEC();
    v45 = v189;
    v47 = v191;
  }

  v51 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryRequestGenerator_logger;
  v52 = v187;
  v186 = *(v47 + 16);
  (v186)(v187, v50, v45);
  v185 = v51;
  v53 = sub_1C754FEEC();
  v54 = sub_1C75511BC();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_13_3();
    v55 = v52;
    v56 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v203[0] = v170;
    *v56 = 136315138;
    sub_1C712A6F8();
    v57 = sub_1C7551D8C();
    v58 = v47;
    v60 = v59;
    v187 = *(v58 + 8);
    v187(v55, v45);
    v61 = sub_1C6F765A4(v57, v60, v203);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_1C6F5C000, v53, v54, "Seeding prompt generation with %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v170);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    v187 = *(v47 + 8);
    v187(v52, v45);
  }

  v62 = v196;
  v63 = v188;
  v64 = v176;
  v65 = v193;
  (v186)(v188, v193, v45);
  v205 = &type metadata for Random.Arc4Random;
  v206 = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v63, v204);
  memcpy(v202, __src, sizeof(v202));
  v41 = v197;
  v66 = *(v197 + 32);
  v38 = v45;
  v40 = v209;
  v66(v64, v175, v209);
  sub_1C730E884(v204, v207, v64, v203);
  if (v62)
  {
    v187(v65, v38);
    __swift_destroy_boxed_opaque_existential_1(v207);
    __swift_destroy_boxed_opaque_existential_1(v204);
    (*(v41 + 8))(v192, v40);
LABEL_15:
    __swift_project_boxed_opaque_existential_1(v174, v174[3]);
    OUTLINED_FUNCTION_13_62();
    a5 = v177;
    goto LABEL_17;
  }

  memcpy(v201, v203, sizeof(v201));
  memcpy(v200, __src, sizeof(v200));
  v67 = v172;
  v66(v172, v192, v40);
  v68 = sub_1C730E76C(v200, v204, v207, v67);
  v70 = v69;
  isUniquelyReferenced_nonNull_native = sub_1C75507FC();
  if (isUniquelyReferenced_nonNull_native < 1)
  {
    v187 = v68;
  }

  else
  {
    *&v200[0] = 32;
    *(&v200[0] + 1) = 0xE100000000000000;
    MEMORY[0x1CCA5CD70](v68, v70);

    v70 = *(&v200[0] + 1);
    v187 = *&v200[0];
  }

  v192 = v70;
  v196 = 0;
  v72 = *(v183 + 16);
  if (v72)
  {
    v73 = v183 + 32;
    v74 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C6FB5E28(v73, v200);
      v75 = *(&v200[1] + 1);
      v76 = *&v200[2];
      __swift_project_boxed_opaque_existential_1(v200, *(&v200[1] + 1));
      v77 = (*(v76 + 32))(v75, v76);
      v79 = v78;
      __swift_destroy_boxed_opaque_existential_1(v200);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB1814();
        v74 = isUniquelyReferenced_nonNull_native;
      }

      v80 = *(v74 + 16);
      if (v80 >= *(v74 + 24) >> 1)
      {
        sub_1C6FB1814();
        v74 = isUniquelyReferenced_nonNull_native;
      }

      *(v74 + 16) = v80 + 1;
      v81 = v74 + 16 * v80;
      *(v81 + 32) = v77;
      *(v81 + 40) = v79;
      v73 += 40;
      --v72;
    }

    while (v72);
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  v199 = v74;
  v82 = v190;
  v83 = OUTLINED_FUNCTION_16_52(isUniquelyReferenced_nonNull_native);
  sub_1C75511BC();
  v84 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v84, v85))
  {
    OUTLINED_FUNCTION_13_3();
    v86 = swift_slowAlloc();
    *v86 = 134217984;
    *(v86 + 4) = *(v74 + 16);
    OUTLINED_FUNCTION_7_65();
    _os_log_impl(v87, v88, v89, v90, v91, v92);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  memcpy(v200, __src, sizeof(v200));
  sub_1C75504FC();
  sub_1C730FB8C(v200, v74);

  sub_1C706D154();
  v94 = sub_1C71CD85C(v93);
  swift_beginAccess();
  v199 = v94;

  v96 = OUTLINED_FUNCTION_16_52(v95);
  sub_1C75511BC();
  v97 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v97, v98))
  {
    OUTLINED_FUNCTION_13_3();
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = *(v94 + 16);
    OUTLINED_FUNCTION_7_65();
    _os_log_impl(v100, v101, v102, v103, v104, v105);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (*(v82 + 64) == 1)
  {
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_0(v204, v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C72AF5EC(&qword_1EDD06AA8, MEMORY[0x1E69E6318]);
    sub_1C72AF5EC(&qword_1EDD06A98, MEMORY[0x1E69E6338]);
    v82 = v190;
    sub_1C755062C();
    swift_endAccess();
  }

  v106 = v199;
  v107 = sub_1C75504FC();
  v108 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v107, 1, 1701736270);
  v110 = v109;

  v111 = [v171 storytellerSelectedTraitsCount];
  if (!v111)
  {
    v121 = *(v82 + 72);
    v113 = sub_1C7310290(v183, v121);

    if (v113 < 0)
    {
      __break(1u);
      return;
    }

    v122 = sub_1C75504FC();
    v115 = OUTLINED_FUNCTION_16_52(v122);
    v116 = sub_1C75511BC();
    v123 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v123, v124))
    {
      v119 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_78(v119, 3.8521e-34);
      v120 = "Asking storytelling adapter to focus on %ld traits out of %ld traits, based on distribution";
      goto LABEL_42;
    }

LABEL_43:

    goto LABEL_44;
  }

  v112 = v111;
  v113 = [v111 integerValue];

  v114 = sub_1C75504FC();
  v115 = OUTLINED_FUNCTION_16_52(v114);
  v116 = sub_1C75511BC();
  v117 = OUTLINED_FUNCTION_72();
  if (!os_log_type_enabled(v117, v118))
  {
    goto LABEL_43;
  }

  v119 = swift_slowAlloc();
  OUTLINED_FUNCTION_6_78(v119, 3.8521e-34);
  v120 = "Asking storytelling adapter to focus on %ld traits out of %ld traits, based on user default";
LABEL_42:
  _os_log_impl(&dword_1C6F5C000, v115, v116, v120, v119, 0x16u);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();

LABEL_44:
  v40 = v209;
  v125 = v182;
  if (*(v106 + 16) >= v113)
  {
    v126 = v113;
  }

  else
  {
    v126 = *(v106 + 16);
  }

  v127 = v184;
  v188 = v106;
  if (v184)
  {
    *(*(*(v184 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24) + 48) = v106;
    sub_1C75504FC();

    v128 = *(*(v127 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24);
    v129 = v192;
    *(v128 + 64) = v187;
    *(v128 + 72) = v129;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1C7581F90;
  OUTLINED_FUNCTION_3_1();
  *(v131 + 32) = 0xD000000000000018;
  *(v131 + 40) = v132;
  *&v200[0] = v179;
  *(&v200[0] + 1) = v125;
  sub_1C75504FC();
  *(v130 + 48) = sub_1C755097C();
  *(v130 + 56) = v133;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 64) = 0xD000000000000013;
  *(v130 + 72) = v134;
  *(v130 + 80) = v108;
  *(v130 + 88) = v110;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 96) = 0xD000000000000019;
  *(v130 + 104) = v135;
  *&v200[0] = v126;
  *(v130 + 112) = OUTLINED_FUNCTION_12_56();
  *(v130 + 120) = v136;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 128) = 0xD000000000000016;
  *(v130 + 136) = v137;
  *(v130 + 144) = 0x656761746E6F4DLL;
  *(v130 + 152) = 0xE700000000000000;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 160) = 0xD000000000000013;
  *(v130 + 168) = v138;
  v139 = v190;
  *&v200[0] = *(v190 + 32);
  *(v130 + 176) = OUTLINED_FUNCTION_12_56();
  *(v130 + 184) = v140;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 192) = 0xD000000000000013;
  *(v130 + 200) = v141;
  *&v200[0] = *(v139 + 40);
  *(v130 + 208) = OUTLINED_FUNCTION_12_56();
  *(v130 + 216) = v142;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 224) = 0xD000000000000013;
  *(v130 + 232) = v143;
  v144 = 1702195796;
  if (LOBYTE(v201[0]))
  {
    v145 = 1702195796;
  }

  else
  {
    v145 = 0x65736C6146;
  }

  if (LOBYTE(v201[0]))
  {
    v146 = 0xE400000000000000;
  }

  else
  {
    v146 = 0xE500000000000000;
  }

  *(v130 + 240) = v145;
  *(v130 + 248) = v146;
  *(v130 + 256) = 0x6D726F6665657266;
  *(v130 + 264) = 0xEF73746550736148;
  if (BYTE1(v201[0]))
  {
    v147 = 0xE400000000000000;
  }

  else
  {
    v144 = 0x65736C6146;
    v147 = 0xE500000000000000;
  }

  *(v130 + 272) = v144;
  *(v130 + 280) = v147;
  *(v130 + 288) = 0xD00000000000001FLL;
  *(v130 + 296) = 0x80000001C75958D0;
  v148 = v201[3];
  *(v130 + 304) = v201[2];
  *(v130 + 312) = v148;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 320) = v150;
  *(v130 + 328) = v149;
  v152 = *(v151 + 48);
  *(v130 + 336) = *(v151 + 40);
  *(v130 + 344) = v152;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 352) = v154;
  *(v130 + 360) = v153;
  v156 = *(v155 + 72);
  *(v130 + 368) = *(v155 + 64);
  *(v130 + 376) = v156;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C730BAFC(v201);
  v157 = sub_1C75504DC();
  if (v184)
  {
    sub_1C75504FC();
    sub_1C71619C4(v158);
  }

  type metadata accessor for LLMWrapperUtils();
  v159 = v196;
  v41 = v197;
  v160 = v181;
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  LOBYTE(v200[0]) = byte_1EC218F88;
  static LLMWrapperUtils.storytellerModelType(for:)(v198);
  type metadata accessor for LLMConfigurationProvider();
  v38 = v180;
  if (qword_1EDD0BCA8 != -1)
  {
    swift_once();
  }

  v161 = sub_1C754FF1C();
  v162 = __swift_project_value_buffer(v161, qword_1EDD0BCB0);
  v163 = static LLMConfigurationProvider.configuration(for:logger:)(v198, v38, v162);
  v164 = (v191 + 8);
  if (v159)
  {

    (*v164)(v193, v189);
    __swift_destroy_boxed_opaque_existential_1(v207);

    __swift_destroy_boxed_opaque_existential_1(v204);
    goto LABEL_15;
  }

  (*v164)(v193, v189, v163);
  __swift_destroy_boxed_opaque_existential_1(v207);
  v165 = &v38[*(v178 + 40)];
  v166 = v165[1];
  v200[0] = *v165;
  v200[1] = v166;
  v200[2] = v165[2];
  *(&v200[2] + 9) = *(v165 + 41);
  sub_1C731054C(v38, type metadata accessor for LLMConfiguration);

  *v160 = v157;
  v167 = v200[1];
  *(v160 + 8) = v200[0];
  *(v160 + 24) = v167;
  *(v160 + 40) = v200[2];
  *(v160 + 49) = *(&v200[2] + 9);
  __swift_destroy_boxed_opaque_existential_1(v204);
  __swift_project_boxed_opaque_existential_1(v174, v174[3]);
  v168 = v173;
  sub_1C754F1AC();
  (*(v194 + 8))(v168, v195);
  (*(v41 + 8))(v177, v40);
}

unint64_t static FreeformStoryRequestGenerator.numberOfTraitsToSelect(from:randomizer:)(uint64_t a1, void *a2)
{
  swift_getObjectType();

  return sub_1C7310290(a1, a2);
}

void sub_1C730FB8C(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v3 = type metadata accessor for TimeExtendedToken(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_78();
  v96 = (v5 - v6);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  v97 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v94 - v14;
  v16 = 0;
  v17 = *(a1 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = *(v17 + 16);
  while (v19 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = *(v4 + 72);
    sub_1C721AB4C(v17 + v20 + v21 * v16, v15);
    switch(v15[57])
    {
      case 5:

        goto LABEL_7;
      default:
        v22 = sub_1C7551DBC();

        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_7:
        if (v15[56] == 1)
        {
          sub_1C721AC04(v15, v97);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98[0] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C716DCA8(0, *(v18 + 16) + 1, 1);
            v18 = v98[0];
          }

          v26 = *(v18 + 16);
          v25 = *(v18 + 24);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            v28 = OUTLINED_FUNCTION_8_66(v25);
            v30 = v29;
            sub_1C716DCA8(v28, v29, 1);
            v27 = v30;
            v18 = v98[0];
          }

          ++v16;
          *(v18 + 16) = v27;
          sub_1C721AC04(v97, v18 + v20 + v26 * v21);
        }

        else
        {
LABEL_8:
          OUTLINED_FUNCTION_0_138();
          sub_1C731054C(v15, v23);
          ++v16;
        }

        break;
    }
  }

  v97 = v18;
  v31 = v94;
  v32 = *(v94 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v98[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v32, 0, v10, v11, v12, v13);
    v34 = v31 + 40;
    v36 = v97;
    v35 = v98[0];
    do
    {
      v37 = sub_1C75506FC();
      v39 = v38;
      v98[0] = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = OUTLINED_FUNCTION_8_66(v40);
        sub_1C6F7ED9C(v43, v41 + 1, 1, v44, v45, v46, v47);
        v35 = v98[0];
      }

      *(v35 + 16) = v41 + 1;
      v42 = v35 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v34 += 16;
      --v32;
    }

    while (v32);
  }

  else
  {
    v36 = v97;
  }

  sub_1C706D154();
  v53 = v52;
  v54 = *(v36 + 16);
  if (v54)
  {
    v98[0] = v33;
    sub_1C6F7ED9C(0, v54, 0, v48, v49, v50, v51);
    v55 = v98[0];
    v56 = v36 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v57 = *(v4 + 72);
    v58 = v96;
    do
    {
      sub_1C721AB4C(v56, v58);
      v59 = *v58;
      v60 = v58[1];
      sub_1C75504FC();
      OUTLINED_FUNCTION_0_138();
      sub_1C731054C(v58, v61);
      v98[0] = v55;
      v63 = *(v55 + 16);
      v62 = *(v55 + 24);
      if (v63 >= v62 >> 1)
      {
        v65 = OUTLINED_FUNCTION_8_66(v62);
        sub_1C6F7ED9C(v65, v63 + 1, 1, v66, v67, v68, v69);
        v58 = v96;
        v55 = v98[0];
      }

      *(v55 + 16) = v63 + 1;
      v64 = v55 + 16 * v63;
      *(v64 + 32) = v59;
      *(v64 + 40) = v60;
      v56 += v57;
      --v54;
    }

    while (v54);
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  v70 = 0;
  v71 = *(v55 + 16);
  v96 = (v55 + 32);
  v97 = v71;
  v95 = MEMORY[0x1E69E7CC0];
LABEL_29:
  while (v70 != v97)
  {
    if (v70 >= *(v55 + 16))
    {
      goto LABEL_48;
    }

    v72 = &v96[2 * v70];
    v74 = *v72;
    v73 = v72[1];
    ++v70;
    v75 = sub_1C75506FC();
    v77 = v76;
    if (*(v53 + 16))
    {
      v78 = v75;
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v79 = sub_1C7551FAC();
      v80 = ~(-1 << *(v53 + 32));
      while (1)
      {
        v81 = v79 & v80;
        if (((*(v53 + 56 + (((v79 & v80) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v79 & v80)) & 1) == 0)
        {
          break;
        }

        v82 = (*(v53 + 48) + 16 * v81);
        if (*v82 != v78 || v82[1] != v77)
        {
          v84 = sub_1C7551DBC();
          v79 = v81 + 1;
          if ((v84 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    v85 = v95;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v85;
    if ((v86 & 1) == 0)
    {
      sub_1C6F7ED9C(0, *(v85 + 16) + 1, 1, v87, v88, v89, v90);
      v85 = v99;
    }

    v92 = *(v85 + 16);
    v91 = *(v85 + 24);
    if (v92 >= v91 >> 1)
    {
      sub_1C6F7ED9C(v91 > 1, v92 + 1, 1, v87, v88, v89, v90);
      v85 = v99;
    }

    *(v85 + 16) = v92 + 1;
    v95 = v85;
    v93 = v85 + 16 * v92;
    *(v93 + 32) = v74;
    *(v93 + 40) = v73;
  }

  v98[0] = v94;
  sub_1C75504FC();
  sub_1C6FD2568(v95);
}

uint64_t FreeformStoryRequestGenerator.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryRequestGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FreeformStoryRequestGenerator.__deallocating_deinit()
{
  FreeformStoryRequestGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C731022C(void *a1)
{
  v1 = [a1 shufflePromptParametersSeed];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C7310290(uint64_t a1, id a2)
{
  result = *(a1 + 16);
  if (result >= 4)
  {
    v3 = 14;
    if (result < 0xE)
    {
      v3 = result;
    }

    v4 = result * 0.45 + 2.0;
    if (v4 == INFINITY)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 1.84467441e19)
      {
        v5 = v4;
        result = v3;
        if (v3 <= v4)
        {
          return result;
        }

        v6 = [a2 nextUnsignedIntegerLessThan_];
        v7 = __CFADD__(v6, v5);
        result = v6 + v5;
        if (!v7)
        {
          return result;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryRequestGenerator(uint64_t a1)
{
  result = qword_1EDD080A0;
  if (!qword_1EDD080A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73103A0(uint64_t a1)
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

uint64_t sub_1C73104AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1C73104EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C731054C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1C73105D0(_BYTE *result, int a2, int a3)
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

uint64_t SummarizationCLIPClusterer.__allocating_init(vectorFetchingBlock:clusterCreationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = (v8 + qword_1EC21A840);
  *v9 = a1;
  v9[1] = a2;
  v10 = (v8 + qword_1EC21A848);
  *v10 = a3;
  v10[1] = a4;
  return sub_1C754F55C();
}

uint64_t SummarizationCLIPClusterer.init(vectorFetchingBlock:clusterCreationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + qword_1EC21A840);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + qword_1EC21A848);
  *v6 = a3;
  v6[1] = a4;
  return sub_1C754F55C();
}

uint64_t sub_1C7310714(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AssetClusterer(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = v11 >> 1;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  v13 = v11 > 0x3E9;
  v14 = 500;
  if (!v13)
  {
    v14 = v12;
  }

  v35 = 1;
  LOBYTE(v36) = 0;
  v37 = 1000;
  v38 = v14;
  v39 = 1050253722;
  v40 = j___s18PhotosIntelligence15PairwiseMetricsO14cosineDistanceySfAA11FloatVectorV_AFtFZ;
  v41 = 0;
  v15 = *(v4 + qword_1EC21A840);
  v16 = *(v4 + qword_1EC21A840 + 8);
  static AssetClusterer.centroidCodebook(assetUUIDs:options:vectorFetchingBlock:)(a1, &v35, v15, v16, v42);
  if (!v3)
  {
    sub_1C6FB5E28(v42, v10);

    sub_1C754FE7C();
    *(v10 + 5) = v15;
    *(v10 + 6) = v16;
    v17 = AssetClusterer.cluster(_:)(a1);
    v20 = v17;
    v21 = *(v17 + 16);
    if (v21)
    {
      v30 = v10;
      v31 = 0;
      v32 = a2;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1C716EB64();
      v7 = v34;
      v33 = *(v4 + qword_1EC21A848);
      v22 = 32;
      do
      {
        v23 = v20;
        v24 = sub_1C75504FC();
        v33(&v35, v24);

        v25 = v35;
        v26 = v36;
        v34 = v7;
        v27 = *(v7 + 16);
        if (v27 >= *(v7 + 24) >> 1)
        {
          sub_1C716EB64();
          v7 = v34;
        }

        *(v7 + 16) = v27 + 1;
        v28 = v7 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        v22 += 8;
        --v21;
        v20 = v23;
      }

      while (v21);

      sub_1C7310A44(v30);
      __swift_destroy_boxed_opaque_existential_1(v42);
      a2 = v32;
    }

    else
    {

      sub_1C7310A44(v10);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v18 + 8))(a2);
  return v7;
}

uint64_t sub_1C7310A44(uint64_t a1)
{
  v2 = type metadata accessor for AssetClusterer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C7310AD0()
{

  return result;
}

uint64_t SummarizationCLIPClusterer.deinit()
{
  v0 = sub_1C754F56C();

  return v0;
}

uint64_t SummarizationCLIPClusterer.__deallocating_deinit()
{
  SummarizationCLIPClusterer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarizationCLIPClusterer(uint64_t a1)
{
  result = qword_1EC21A850;
  if (!qword_1EC21A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FreeformStoryCuratedChapter.curatedAssets.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  sub_1C6FBC6B8();
  swift_allocError();
  *v1 = 2;
  return swift_willThrow();
}

void *FreeformStoryCuratedChapter.init(uncuratedChapter:curationState:highlightInformationByCuratedAssetUUID:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  result = memcpy(a4, __src, 0x68uLL);
  *(a4 + 104) = v6;
  *(a4 + 112) = v7;
  *(a4 + 120) = a3;
  return result;
}

uint64_t FreeformStoryCuratedChapter.fallbackShot.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_12_57(a1);
  v2 = v1;
  sub_1C75504FC();

  return sub_1C75504FC();
}

__n128 FreeformStoryUncuratedChapter.init(title:role:shots:fallbackShot:id:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *a5;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *a8 = a6;
  *(a8 + 8) = a7;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = v8;
  *(a8 + 40) = a4;
  *(a8 + 48) = v9;
  *(a8 + 56) = *(a5 + 1);
  result = *(a5 + 3);
  *(a8 + 72) = result;
  return result;
}

uint64_t FreeformStoryUncuratedChapter.Role.description.getter()
{
  result = 0x706168432079654BLL;
  switch(*v0)
  {
    case 1:
      result = 0x6375646F72746E49;
      break;
    case 2:
      result = 0x656C616E6946;
      break;
    case 3:
      result = 0x432061207473754ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7310EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F7274756FLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
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

uint64_t sub_1C7310FF8(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x6F72746E69;
      break;
    case 2:
      result = 0x6F7274756FLL;
      break;
    case 3:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7311074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7310EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C731109C(uint64_t a1)
{
  v2 = sub_1C73116A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73110D8(uint64_t a1)
{
  v2 = sub_1C73116A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7311114(uint64_t a1)
{
  v2 = sub_1C731179C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7311150(uint64_t a1)
{
  v2 = sub_1C731179C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C731118C(uint64_t a1)
{
  v2 = sub_1C73117F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73111C8(uint64_t a1)
{
  v2 = sub_1C73117F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7311204(uint64_t a1)
{
  v2 = sub_1C73116F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7311240(uint64_t a1)
{
  v2 = sub_1C73116F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C731127C(uint64_t a1)
{
  v2 = sub_1C7311748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73112B8(uint64_t a1)
{
  v2 = sub_1C7311748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryUncuratedChapter.Role.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A860, &qword_1C7582090);
  OUTLINED_FUNCTION_3_0();
  v65 = v30;
  v66 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_36();
  v64 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A868, &qword_1C7582098);
  OUTLINED_FUNCTION_3_0();
  v62 = v34;
  v63 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_36();
  v61 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A870, &qword_1C75820A0);
  OUTLINED_FUNCTION_3_0();
  v59 = v38;
  v60 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_36();
  v58 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A878, &qword_1C75820A8);
  OUTLINED_FUNCTION_3_0();
  v56 = v42;
  v57 = v41;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v56 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A880, &qword_1C75820B0);
  OUTLINED_FUNCTION_3_0();
  v48 = v47;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v56 - v50;
  v52 = *v24;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C73116A0();
  sub_1C755200C();
  switch(v52)
  {
    case 1:
      a12 = 1;
      sub_1C731179C();
      v53 = v58;
      OUTLINED_FUNCTION_8_67(&type metadata for FreeformStoryUncuratedChapter.Role.IntroCodingKeys, &a12);
      v55 = v59;
      v54 = v60;
      goto LABEL_6;
    case 2:
      a13 = 2;
      sub_1C7311748();
      v53 = v61;
      OUTLINED_FUNCTION_8_67(&type metadata for FreeformStoryUncuratedChapter.Role.OutroCodingKeys, &a13);
      v55 = v62;
      v54 = v63;
      goto LABEL_6;
    case 3:
      a14 = 3;
      sub_1C73116F4();
      v53 = v64;
      OUTLINED_FUNCTION_8_67(&type metadata for FreeformStoryUncuratedChapter.Role.NormalCodingKeys, &a14);
      v55 = v65;
      v54 = v66;
LABEL_6:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      sub_1C73117F0();
      sub_1C7551C6C();
      (*(v56 + 8))(v45, v57);
      break;
  }

  (*(v48 + 8))(v51, v46);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C73116A0()
{
  result = qword_1EDD07FB0;
  if (!qword_1EDD07FB0)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for FreeformStoryUncuratedChapter.Role.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07FB0);
  }

  return result;
}

unint64_t sub_1C73116F4()
{
  result = qword_1EDD07F50;
  if (!qword_1EDD07F50)
  {
    result = swift_getWitnessTable(aQu_0, &type metadata for FreeformStoryUncuratedChapter.Role.NormalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F50);
  }

  return result;
}

unint64_t sub_1C7311748()
{
  result = qword_1EDD07F68;
  if (!qword_1EDD07F68)
  {
    result = swift_getWitnessTable(byte_1C7582BF8, &type metadata for FreeformStoryUncuratedChapter.Role.OutroCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F68);
  }

  return result;
}

unint64_t sub_1C731179C()
{
  result = qword_1EDD07F80;
  if (!qword_1EDD07F80)
  {
    result = swift_getWitnessTable(byte_1C7582BA8, &type metadata for FreeformStoryUncuratedChapter.Role.IntroCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F80);
  }

  return result;
}

unint64_t sub_1C73117F0()
{
  result = qword_1EDD07F98;
  if (!qword_1EDD07F98)
  {
    result = swift_getWitnessTable(aAv, &type metadata for FreeformStoryUncuratedChapter.Role.KeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F98);
  }

  return result;
}

void FreeformStoryUncuratedChapter.Role.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  a23 = v25;
  a24 = v26;
  v94 = v24;
  v28 = v27;
  v90 = v29;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A888, &qword_1C75820B8);
  OUTLINED_FUNCTION_3_0();
  v89 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_36();
  v92 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A890, &qword_1C75820C0);
  OUTLINED_FUNCTION_3_0();
  v86 = v34;
  v87 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_36();
  v88 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A898, &qword_1C75820C8);
  OUTLINED_FUNCTION_3_0();
  v84 = v38;
  v85 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v77 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8A0, &qword_1C75820D0);
  OUTLINED_FUNCTION_3_0();
  v83 = v43;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v77 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8A8, &unk_1C75820D8);
  OUTLINED_FUNCTION_3_0();
  v91 = v48;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v77 - v50;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C73116A0();
  v52 = v94;
  sub_1C7551FFC();
  if (v52)
  {
    goto LABEL_9;
  }

  v80 = v42;
  v81 = v46;
  v82 = v41;
  v53 = v92;
  v54 = v93;
  v94 = v28;
  v55 = v51;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v57 == v58 >> 1)
  {
LABEL_8:
    v69 = v91;
    v70 = sub_1C75518EC();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v72 = &type metadata for FreeformStoryUncuratedChapter.Role;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v55, v47);
    v28 = v94;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
    OUTLINED_FUNCTION_125();
    return;
  }

  v79 = 0;
  if (v57 < (v58 >> 1))
  {
    v59 = *(v56 + v57);
    sub_1C6FD80C8();
    v61 = v60;
    v63 = v62;
    swift_unknownObjectRelease();
    if (v61 == v63 >> 1)
    {
      v64 = v90;
      v65 = v91;
      v78 = v59;
      v66 = v59;
      v67 = v89;
      switch(v66)
      {
        case 1:
          a12 = 1;
          sub_1C731179C();
          v73 = v82;
          OUTLINED_FUNCTION_53_0(&type metadata for FreeformStoryUncuratedChapter.Role.IntroCodingKeys, &a12);
          swift_unknownObjectRelease();
          v75 = v84;
          v74 = v85;
          goto LABEL_18;
        case 2:
          a13 = 2;
          sub_1C7311748();
          v73 = v88;
          OUTLINED_FUNCTION_53_0(&type metadata for FreeformStoryUncuratedChapter.Role.OutroCodingKeys, &a13);
          swift_unknownObjectRelease();
          v75 = v86;
          v74 = v87;
LABEL_18:
          (*(v75 + 8))(v73, v74);
          goto LABEL_19;
        case 3:
          a14 = 3;
          sub_1C73116F4();
          v76 = v79;
          sub_1C7551B4C();
          if (v76)
          {
            (*(v65 + 8))(v55, v47);
            swift_unknownObjectRelease();
            v28 = v94;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v67 + 8))(v53, v54);
LABEL_19:
          (*(v65 + 8))(v55, v47);
          *v64 = v78;
          __swift_destroy_boxed_opaque_existential_1(v94);
          break;
        default:
          a11 = 0;
          sub_1C73117F0();
          v68 = v81;
          OUTLINED_FUNCTION_53_0(&type metadata for FreeformStoryUncuratedChapter.Role.KeyCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v83 + 8))(v68, v80);
          goto LABEL_19;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t FreeformStoryUncuratedChapter.fallbackShot.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_12_57(a1);
  v2 = v1;
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t FreeformStoryUncuratedChapter.requiredAssets.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t FreeformStoryUncuratedChapter.forbiddenAssets.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

void FreeformStoryUncuratedChapter.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if ([*(v0 + 64) fetchedObjects])
  {
    OUTLINED_FUNCTION_19_1();
    sub_1C6FDEC1C();
    v5 = sub_1C7550B5C();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75AAA20);
  MEMORY[0x1CCA5CD70](v1, v2);
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_26_40();
  sub_1C73E68E8(v3);
  OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_26_40();
  v6 = MEMORY[0x1CCA5D090](v4, &type metadata for FreeformStoryShot);
  MEMORY[0x1CCA5CD70](v6);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  v7 = FreeformStoryShot.description.getter();
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](2112041, 0xE300000000000000);
  v8 = sub_1C6FB6304();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v9)
    {

      v21 = MEMORY[0x1CCA5D090](v10, MEMORY[0x1E69E6158]);
      v23 = v22;

      MEMORY[0x1CCA5CD70](v21, v23);

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA5DDD0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v14 = sub_1C70CAC04(v11);
    v16 = v15;

    ++v9;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v10 = v19;
      }

      v17 = *(v10 + 16);
      if (v17 >= *(v10 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_53();
        v10 = v20;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v9 = v13;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

PhotosIntelligence::FreeformStoryUncuratedChapter::CodingKeys_optional __swiftcall FreeformStoryUncuratedChapter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 25705 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_42_0(25705, 0xE200000000000000) & 1) != 0))
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x656C746974 && object == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_42_0(0x656C746974, 0xE500000000000000) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 1701605234 && object == 0xE400000000000000;
      if (v9 || (OUTLINED_FUNCTION_42_0(1701605234, 0xE400000000000000) & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v10 = countAndFlagsBits == 0x73746F6873 && object == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_42_0(0x73746F6873, 0xE500000000000000) & 1) != 0)
        {

          v7 = 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_18_46();
          if (countAndFlagsBits == v11 && object == v12)
          {

            v7 = 4;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_42_0(v11, v12);

            if (v14)
            {
              v7 = 4;
            }

            else
            {
              v7 = 5;
            }
          }
        }
      }
    }
  }

  *v3 = v7;
  return result;
}

uint64_t FreeformStoryUncuratedChapter.CodingKeys.stringValue.getter()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 1701605234;
      break;
    case 3:
      result = 0x73746F6873;
      break;
    case 4:
      result = OUTLINED_FUNCTION_18_46();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7312480(uint64_t a1)
{
  v2 = sub_1C7314C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73124BC(uint64_t a1)
{
  v2 = sub_1C7314C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryUncuratedChapter.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v30 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8B0, &qword_1C75820E8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *(v0 + 16);
  v28 = *(v0 + 24);
  v29 = v10;
  v36 = *(v0 + 32);
  v11 = *(v0 + 40);
  v26 = *(v0 + 48);
  v27 = v11;
  v12 = *(v0 + 56);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = v14;
  v24 = v13;
  v25 = v12;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C7314C7C();
  sub_1C755200C();
  LOBYTE(v31) = 0;
  v15 = v30;
  sub_1C7551CCC();
  if (!v15)
  {
    v16 = v26;
    v17 = v27;
    v18 = v25;
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    LOBYTE(v31) = v36;
    sub_1C7314CD0();
    OUTLINED_FUNCTION_11_58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v31 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8B8, &qword_1C75820F0);
    sub_1C7314DCC(&qword_1EDD06B88, sub_1C7314D24, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_11_58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v31 = v16;
    v32 = v18;
    v19 = v22;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    sub_1C7314D24();
    sub_1C75504FC();
    v20 = v19;
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_11_58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v21 = v33;
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

void FreeformStoryUncuratedChapter.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8C0, &qword_1C75820F8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C7314C7C();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_22_51();
    v6 = sub_1C7551BBC();
    v8 = v7;
    v19 = v6;
    LOBYTE(v23[0]) = 1;
    OUTLINED_FUNCTION_22_51();
    v9 = sub_1C7551BBC();
    v20 = v10;
    v18 = v9;
    sub_1C7314D78();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8B8, &qword_1C75820F0);
    LOBYTE(v22[0]) = 3;
    sub_1C7314DCC(&qword_1EC21A8D0, sub_1C7314E44, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_22_51();
    sub_1C7551C1C();
    v11 = v23[0];
    sub_1C7314E44();
    OUTLINED_FUNCTION_22_51();
    sub_1C7551C1C();
    v12 = OUTLINED_FUNCTION_5_71();
    v13(v12);
    v16 = v35;
    v17 = v34;
    v14 = v37;
    v15 = v36;
    v21 = v33;
    v22[0] = v19;
    v22[1] = v8;
    v22[2] = v18;
    v22[3] = v20;
    LOBYTE(v22[4]) = 1;
    v22[5] = v11;
    v22[6] = v33;
    v22[7] = v34;
    v22[8] = v35;
    v22[9] = v36;
    v22[10] = v37;
    v22[11] = 0;
    v22[12] = 0;
    memcpy(v4, v22, 0x68uLL);
    sub_1C6FC061C(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v23[0] = v19;
    v23[1] = v8;
    v23[2] = v18;
    v23[3] = v20;
    v24 = 1;
    v25 = v11;
    v26 = v21;
    v27 = v17;
    v28 = v16;
    v29 = v15;
    v30 = v14;
    v31 = 0;
    v32 = 0;
    sub_1C70552E0(v23);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7312B58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t sub_1C7312C1C(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x64657461727563;
  }
}

uint64_t sub_1C7312C50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C75AAB10 == a2)
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

uint64_t sub_1C7312CEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_1C7312D74(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a2;
  v23 = a4;
  v19 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A968, &qword_1C7582D48);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A970, &qword_1C7582D50);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A978, &qword_1C7582D58);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7315BFC();
  sub_1C755200C();
  if (v23)
  {
    v25 = 1;
    sub_1C7315C50();
    sub_1C7551C6C();
    v14 = v20;
    sub_1C7551CCC();
    (*(v18 + 8))(v6, v14);
  }

  else
  {
    v24 = 0;
    sub_1C7315CA4();
    sub_1C7551C6C();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C7551D2C();
    (*(v17 + 8))(v9, v7);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1C73130B4(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A948, &qword_1C7582D28);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A950, &qword_1C7582D30);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A958, &unk_1C7582D38);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7315BFC();
  v11 = v38;
  sub_1C7551FFC();
  if (v11)
  {
    goto LABEL_10;
  }

  v32 = v4;
  v33 = v6;
  v38 = a1;
  v12 = v37;
  sub_1C7551C5C();
  result = sub_1C6FD80E0();
  if (v15 == v16 >> 1)
  {
    goto LABEL_8;
  }

  v31 = 0;
  if (v15 < (v16 >> 1))
  {
    v17 = *(v14 + v15);
    sub_1C6FD80C8();
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    if (v19 == v21 >> 1)
    {
      v40 = v17;
      if (v17)
      {
        v42 = 1;
        sub_1C7315C50();
        v10 = v9;
        v22 = v31;
        sub_1C7551B4C();
        v23 = v36;
        if (!v22)
        {
          v10 = sub_1C7551BBC();
          swift_unknownObjectRelease();
          (*(v35 + 8))(v3, v12);
          (*(v23 + 8))(v9, v7);
LABEL_15:
          __swift_destroy_boxed_opaque_existential_1(v38);
          return v10;
        }
      }

      else
      {
        v41 = 0;
        sub_1C7315CA4();
        v27 = v33;
        v10 = v9;
        v28 = v31;
        sub_1C7551B4C();
        v23 = v36;
        if (!v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
          v29 = v32;
          sub_1C7551C1C();
          swift_unknownObjectRelease();
          (*(v34 + 8))(v27, v29);
          (*(v23 + 8))(v9, v7);
          v10 = v39;
          goto LABEL_15;
        }
      }

      (*(v23 + 8))(v9, v7);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

LABEL_8:
    v24 = sub_1C75518EC();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v26 = &type metadata for FreeformStoryCuratedChapter.CodableCurationState;
    v10 = v9;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v9, v7);
LABEL_9:
    a1 = v38;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73136D8@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStoryUncuratedChapter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C731370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7312B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7313734(uint64_t a1)
{
  v2 = sub_1C7315BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7313770(uint64_t a1)
{
  v2 = sub_1C7315BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73137B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7312C50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73137DC(uint64_t a1)
{
  v2 = sub_1C7315CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7313818(uint64_t a1)
{
  v2 = sub_1C7315CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7313858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7312CEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C7313884(uint64_t a1)
{
  v2 = sub_1C7315C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73138C0(uint64_t a1)
{
  v2 = sub_1C7315C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73138FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C73130B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

id FreeformStoryCuratedChapter.curationState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_1C6FBC70C(v2);
}

void FreeformStoryCuratedChapter.curationState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1C6FBC718(*(v1 + 104));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
}

void FreeformStoryCuratedChapter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8E0, &qword_1C7582100);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1C713E08C(v26);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v35 = v28;
    v36 = v30;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1C7314E98();
    sub_1C7551FFC();
    sub_1C7314EEC();
    sub_1C7551C1C();
    memcpy(v46, v45, sizeof(v46));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FE8, &qword_1C756D850);
    sub_1C7315048(&qword_1EC21A8F0, sub_1C7314F40, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C7551C1C();
    v31 = v38[0];
    LOBYTE(v37[0]) = 1;
    sub_1C7314F94();
    sub_1C7551C1C();
    sub_1C7313D60(v38[0], v39, v36, &v43);
    v32 = OUTLINED_FUNCTION_1_2();
    v33(v32);

    sub_1C7314FE8();
    v34 = v43;
    v47 = v44;
    OUTLINED_FUNCTION_27_38(v37);
    v37[13] = v34;
    LOBYTE(v37[14]) = v47;
    v37[15] = v31;
    memcpy(v35, v37, 0x80uLL);
    sub_1C6FB7BB8(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_27_38(v38);
    v40 = v34;
    v41 = v47;
    v42 = v31;
    sub_1C6FBC664(v38);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C7313D60(uint64_t a1@<X0>, char a2@<W2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    sub_1C6FBC6B8();
    v7 = swift_allocError();
    *v8 = 1;
LABEL_3:
    *a4 = v7;
    *(a4 + 8) = a2 & 1;
    return;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [a3 librarySpecificFetchOptions];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = sub_1C6FCA158(a1, v12, v13);

  if (v15)
  {
    type metadata accessor for FreeformStoryDiagnosticsUtils();
    v16 = sub_1C734A78C(v15, a1, a3);
    if (!v4)
    {
      v7 = v16;

      objc_autoreleasePoolPop(v11);
      goto LABEL_3;
    }
  }

  sub_1C6FBC6B8();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();

  objc_autoreleasePoolPop(v11);
}

void FreeformStoryCuratedChapter.description.getter()
{
  v1 = *(v0 + 16);
  v45 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v48 = *(v0 + 104);
  v4 = *(v0 + 112);
  if ([*(v0 + 64) fetchedObjects])
  {
    OUTLINED_FUNCTION_19_1();
    sub_1C6FDEC1C();
    v5 = sub_1C7550B5C();

    if (v4)
    {
LABEL_3:
      v6 = v48;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75AAA70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      sub_1C75519EC();
      sub_1C6FBC718(v48);
      v46 = 0;
      v49 = 0xE000000000000000;
      goto LABEL_22;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v44 = v3;
  v43 = v2;
  v42 = v1;
  if ([v48 fetchedObjects])
  {
    OUTLINED_FUNCTION_19_1();
    sub_1C6FDEC1C();
    v7 = sub_1C7550B5C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1C755180C();

  sub_1C6FB6304();
  v8 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](0x2973746573736120, 0xEA0000000000203ALL);
  v9 = sub_1C6FB6304();
  v10 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA5DDD0](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_38;
    }

    v14 = sub_1C70CAC04(v11);
    v16 = v15;

    ++v10;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v47 = v19;
      }

      v17 = *(v47 + 16);
      if (v17 >= *(v47 + 24) >> 1)
      {
        sub_1C6FB1814();
        v47 = v20;
      }

      *(v47 + 16) = v17 + 1;
      v18 = v47 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v10 = v13;
    }
  }

  v21 = MEMORY[0x1CCA5D090](v47, MEMORY[0x1E69E6158]);
  v23 = v22;

  MEMORY[0x1CCA5CD70](v21, v23);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  sub_1C6FBC718(v48);
  v46 = 0x4164657461727563;
  v49 = 0xEF28207374657373;
  v3 = v44;
  v2 = v43;
  v1 = v42;
LABEL_22:
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C75AAA90);
  MEMORY[0x1CCA5CD70](v1, v45);
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_26_40();
  sub_1C73E68E8(v2);
  OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_26_40();
  v24 = MEMORY[0x1CCA5D090](v3, &type metadata for FreeformStoryShot);
  MEMORY[0x1CCA5CD70](v24);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  v25 = FreeformStoryShot.description.getter();
  MEMORY[0x1CCA5CD70](v25);

  MEMORY[0x1CCA5CD70](2112041, 0xE300000000000000);
  v26 = sub_1C6FB6304();
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v26 == v27)
    {

      v39 = MEMORY[0x1CCA5D090](v28, MEMORY[0x1E69E6158]);
      v41 = v40;

      MEMORY[0x1CCA5CD70](v39, v41);

      MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
      MEMORY[0x1CCA5CD70](v46, v49);

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1CCA5DDD0](v27, v5);
    }

    else
    {
      if (v27 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v29 = *(v5 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v32 = sub_1C70CAC04(v29);
    v34 = v33;

    ++v27;
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v28 = v37;
      }

      v35 = *(v28 + 16);
      if (v35 >= *(v28 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_53();
        v28 = v38;
      }

      *(v28 + 16) = v35 + 1;
      v36 = v28 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v34;
      v27 = v31;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

PhotosIntelligence::FreeformStoryCuratedChapter::CodingKeys_optional __swiftcall FreeformStoryCuratedChapter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  OUTLINED_FUNCTION_10_2();
  v6 = v4 == 0xD000000000000010 && v5 == object;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_42_0(0xD000000000000010, v5) & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = v7 == 0x6E6F697461727563 && object == 0xED00006574617453;
    if (v10 || (OUTLINED_FUNCTION_42_0(0x6E6F697461727563, 0xED00006574617453) & 1) != 0)
    {

      v9 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_10_2();
      if (v7 == 0xD000000000000026 && v11 == object)
      {

        v9 = 2;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_42_0(0xD000000000000026, v11);

        if (v13)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }
    }
  }

  *v3 = v9;
  return result;
}

unint64_t FreeformStoryCuratedChapter.CodingKeys.stringValue.getter()
{
  v1 = 0x6E6F697461727563;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C7314660(uint64_t a1)
{
  v2 = sub_1C7314E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C731469C(uint64_t a1)
{
  v2 = sub_1C7314E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryCuratedChapter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v45 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A908, &qword_1C7582108);
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v43 - v31;
  memcpy(v51, v23, 0x68uLL);
  v33 = *(v23 + 104);
  v34 = *(v23 + 112);
  v43 = *(v23 + 120);
  v44 = v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C6FC061C(v51, v50);
  sub_1C7314E98();
  sub_1C755200C();
  OUTLINED_FUNCTION_27_38(v50);
  sub_1C716A2A8();
  v35 = v45;
  sub_1C7551D2C();
  if (v35)
  {
    memcpy(v49, v50, sizeof(v49));
    sub_1C70552E0(v49);
    (*(v29 + 8))(v32, v27);
  }

  else
  {
    v36 = v29;
    memcpy(v49, v50, sizeof(v49));
    sub_1C70552E0(v49);
    v46 = v44;
    LOBYTE(v47) = v34;
    sub_1C6FBC70C(v44);
    sub_1C73149F0(&v46);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1C6FBC718(v46);
    v46 = v38;
    v47 = v40;
    v48 = v42 & 1;
    sub_1C7314FF4();
    sub_1C7551D2C();
    sub_1C7314FE8();
    v46 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FE8, &qword_1C756D850);
    sub_1C7315048(&qword_1EC21A910, sub_1C73150CC, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C7551D2C();
    (*(v36 + 8))(v32, 0);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C73149F0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    swift_getErrorValue();
    sub_1C7551EAC();
  }

  else
  {
    v3 = [v2 fetchedObjects];
    if (v3)
    {
      v4 = v3;
      sub_1C6FDEC1C();
      v5 = sub_1C7550B5C();

      v6 = sub_1C6FB6304();
      v7 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v6 == v7)
        {

          return;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1CCA5DDD0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = v8;
        v11 = [v10 uuid];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1C755068C();
          v20 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v21 = v17;
          }

          v15 = *(v21 + 16);
          if (v15 >= *(v21 + 24) >> 1)
          {
            sub_1C6FB1814();
            v21 = v18;
          }

          *(v21 + 16) = v15 + 1;
          v16 = v21 + 16 * v15;
          *(v16 + 32) = v13;
          *(v16 + 40) = v20;
          v7 = v9;
        }

        else
        {

          ++v7;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      sub_1C6FBC6B8();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C7314C50@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStoryCuratedChapter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C7314C7C()
{
  result = qword_1EDD07FC8[0];
  if (!qword_1EDD07FC8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.CodingKeys, &type metadata for FreeformStoryUncuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, qword_1EDD07FC8);
  }

  return result;
}

unint64_t sub_1C7314CD0()
{
  result = qword_1EDD07F38;
  if (!qword_1EDD07F38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.Role, &type metadata for FreeformStoryUncuratedChapter.Role, v0, v1);
    atomic_store(result, &qword_1EDD07F38);
  }

  return result;
}

unint64_t sub_1C7314D24()
{
  result = qword_1EDD0AAE8;
  if (!qword_1EDD0AAE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot, &type metadata for FreeformStoryShot, v0, v1);
    atomic_store(result, &qword_1EDD0AAE8);
  }

  return result;
}

unint64_t sub_1C7314D78()
{
  result = qword_1EC21A8C8;
  if (!qword_1EC21A8C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.Role, &type metadata for FreeformStoryUncuratedChapter.Role, v0, v1);
    atomic_store(result, &qword_1EC21A8C8);
  }

  return result;
}

uint64_t sub_1C7314DCC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A8B8, &qword_1C75820F0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7314E44()
{
  result = qword_1EC21A8D8;
  if (!qword_1EC21A8D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot, &type metadata for FreeformStoryShot, v0, v1);
    atomic_store(result, &qword_1EC21A8D8);
  }

  return result;
}

unint64_t sub_1C7314E98()
{
  result = qword_1EDD08D08;
  if (!qword_1EDD08D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCuratedChapter.CodingKeys, &type metadata for FreeformStoryCuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08D08);
  }

  return result;
}

unint64_t sub_1C7314EEC()
{
  result = qword_1EC21A8E8;
  if (!qword_1EC21A8E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter, &type metadata for FreeformStoryUncuratedChapter, v0, v1);
    atomic_store(result, &qword_1EC21A8E8);
  }

  return result;
}

unint64_t sub_1C7314F40()
{
  result = qword_1EC21A8F8;
  if (!qword_1EC21A8F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HighlightInformation, &type metadata for HighlightInformation, v0, v1);
    atomic_store(result, &qword_1EC21A8F8);
  }

  return result;
}

unint64_t sub_1C7314F94()
{
  result = qword_1EC21A900;
  if (!qword_1EC21A900)
  {
    result = swift_getWitnessTable(aYd_0, &type metadata for FreeformStoryCuratedChapter.CodableCurationState, v0, v1);
    atomic_store(result, &qword_1EC21A900);
  }

  return result;
}

unint64_t sub_1C7314FF4()
{
  result = qword_1EDD08CB0;
  if (!qword_1EDD08CB0)
  {
    result = swift_getWitnessTable(aQ_19, &type metadata for FreeformStoryCuratedChapter.CodableCurationState, v0, v1);
    atomic_store(result, &qword_1EDD08CB0);
  }

  return result;
}

uint64_t sub_1C7315048(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216FE8, &qword_1C756D850);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73150CC()
{
  result = qword_1EC21A918;
  if (!qword_1EC21A918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HighlightInformation, &type metadata for HighlightInformation, v0, v1);
    atomic_store(result, &qword_1EC21A918);
  }

  return result;
}

unint64_t sub_1C7315124()
{
  result = qword_1EC21A920;
  if (!qword_1EC21A920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.Role, &type metadata for FreeformStoryUncuratedChapter.Role, v0, v1);
    atomic_store(result, &qword_1EC21A920);
  }

  return result;
}

unint64_t sub_1C731517C()
{
  result = qword_1EC21A928;
  if (!qword_1EC21A928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.CodingKeys, &type metadata for FreeformStoryUncuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A928);
  }

  return result;
}

unint64_t sub_1C73151D4()
{
  result = qword_1EDD07FB8;
  if (!qword_1EDD07FB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.CodingKeys, &type metadata for FreeformStoryUncuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07FB8);
  }

  return result;
}

unint64_t sub_1C731522C()
{
  result = qword_1EDD07FC0;
  if (!qword_1EDD07FC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter.CodingKeys, &type metadata for FreeformStoryUncuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07FC0);
  }

  return result;
}

unint64_t sub_1C7315284()
{
  result = qword_1EC21A930;
  if (!qword_1EC21A930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCuratedChapter.CodingKeys, &type metadata for FreeformStoryCuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A930);
  }

  return result;
}

unint64_t sub_1C73152DC()
{
  result = qword_1EDD08CF8;
  if (!qword_1EDD08CF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCuratedChapter.CodingKeys, &type metadata for FreeformStoryCuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CF8);
  }

  return result;
}

unint64_t sub_1C7315334()
{
  result = qword_1EDD08D00;
  if (!qword_1EDD08D00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCuratedChapter.CodingKeys, &type metadata for FreeformStoryCuratedChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08D00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryUncuratedChapter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C7315478(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C73154B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7315524(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C7315564(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *sub_1C73155E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7315704(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73157E0()
{
  result = qword_1EC21A938;
  if (!qword_1EC21A938)
  {
    result = swift_getWitnessTable(aAe_0, &unk_1F46C1EA0, v0, v1);
    atomic_store(result, &qword_1EC21A938);
  }

  return result;
}

unint64_t sub_1C7315838()
{
  result = qword_1EC21A940;
  if (!qword_1EC21A940)
  {
    result = swift_getWitnessTable(aIc_0, &type metadata for FreeformStoryUncuratedChapter.Role.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A940);
  }

  return result;
}

unint64_t sub_1C7315890()
{
  result = qword_1EDD07F88;
  if (!qword_1EDD07F88)
  {
    result = swift_getWitnessTable(byte_1C7582A00, &type metadata for FreeformStoryUncuratedChapter.Role.KeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F88);
  }

  return result;
}

unint64_t sub_1C73158E8()
{
  result = qword_1EDD07F90;
  if (!qword_1EDD07F90)
  {
    result = swift_getWitnessTable(aM_7, &type metadata for FreeformStoryUncuratedChapter.Role.KeyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F90);
  }

  return result;
}

unint64_t sub_1C7315940()
{
  result = qword_1EDD07F70;
  if (!qword_1EDD07F70)
  {
    result = swift_getWitnessTable(aAq_1, &type metadata for FreeformStoryUncuratedChapter.Role.IntroCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F70);
  }

  return result;
}

unint64_t sub_1C7315998()
{
  result = qword_1EDD07F78;
  if (!qword_1EDD07F78)
  {
    result = swift_getWitnessTable(aYm_0, &type metadata for FreeformStoryUncuratedChapter.Role.IntroCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F78);
  }

  return result;
}

unint64_t sub_1C73159F0()
{
  result = qword_1EDD07F58;
  if (!qword_1EDD07F58)
  {
    result = swift_getWitnessTable(byte_1C7582960, &type metadata for FreeformStoryUncuratedChapter.Role.OutroCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F58);
  }

  return result;
}

unint64_t sub_1C7315A48()
{
  result = qword_1EDD07F60;
  if (!qword_1EDD07F60)
  {
    result = swift_getWitnessTable(byte_1C7582988, &type metadata for FreeformStoryUncuratedChapter.Role.OutroCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F60);
  }

  return result;
}

unint64_t sub_1C7315AA0()
{
  result = qword_1EDD07F40;
  if (!qword_1EDD07F40)
  {
    result = swift_getWitnessTable(byte_1C7582910, &type metadata for FreeformStoryUncuratedChapter.Role.NormalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F40);
  }

  return result;
}

unint64_t sub_1C7315AF8()
{
  result = qword_1EDD07F48;
  if (!qword_1EDD07F48)
  {
    result = swift_getWitnessTable(byte_1C7582938, &type metadata for FreeformStoryUncuratedChapter.Role.NormalCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07F48);
  }

  return result;
}

unint64_t sub_1C7315B50()
{
  result = qword_1EDD07FA0;
  if (!qword_1EDD07FA0)
  {
    result = swift_getWitnessTable(byte_1C7582A50, &type metadata for FreeformStoryUncuratedChapter.Role.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07FA0);
  }

  return result;
}

unint64_t sub_1C7315BA8()
{
  result = qword_1EDD07FA8;
  if (!qword_1EDD07FA8)
  {
    result = swift_getWitnessTable(byte_1C7582A78, &type metadata for FreeformStoryUncuratedChapter.Role.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD07FA8);
  }

  return result;
}

unint64_t sub_1C7315BFC()
{
  result = qword_1EDD08CD8;
  if (!qword_1EDD08CD8)
  {
    result = swift_getWitnessTable(aQ_20, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CD8);
  }

  return result;
}

unint64_t sub_1C7315C50()
{
  result = qword_1EC21A960;
  if (!qword_1EC21A960)
  {
    result = swift_getWitnessTable(byte_1C758300C, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A960);
  }

  return result;
}

unint64_t sub_1C7315CA4()
{
  result = qword_1EDD08CF0;
  if (!qword_1EDD08CF0)
  {
    result = swift_getWitnessTable(byte_1C7582FBC, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CuratedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryCuratedChapter.CodableCurationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7315DE4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7315E94()
{
  result = qword_1EC21A980;
  if (!qword_1EC21A980)
  {
    result = swift_getWitnessTable(asc_1C7582E24, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A980);
  }

  return result;
}

unint64_t sub_1C7315EEC()
{
  result = qword_1EC21A988;
  if (!qword_1EC21A988)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CuratedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A988);
  }

  return result;
}

unint64_t sub_1C7315F44()
{
  result = qword_1EC21A990;
  if (!qword_1EC21A990)
  {
    result = swift_getWitnessTable(byte_1C7582F94, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A990);
  }

  return result;
}

unint64_t sub_1C7315F9C()
{
  result = qword_1EDD08CE0;
  if (!qword_1EDD08CE0)
  {
    result = swift_getWitnessTable(byte_1C7582E4C, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CuratedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CE0);
  }

  return result;
}

unint64_t sub_1C7315FF4()
{
  result = qword_1EDD08CE8;
  if (!qword_1EDD08CE8)
  {
    result = swift_getWitnessTable(byte_1C7582E74, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CuratedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CE8);
  }

  return result;
}

unint64_t sub_1C731604C()
{
  result = qword_1EDD08CB8;
  if (!qword_1EDD08CB8)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CB8);
  }

  return result;
}

unint64_t sub_1C73160A4()
{
  result = qword_1EDD08CC0;
  if (!qword_1EDD08CC0)
  {
    result = swift_getWitnessTable(aUi, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.FailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CC0);
  }

  return result;
}

unint64_t sub_1C73160FC()
{
  result = qword_1EDD08CC8;
  if (!qword_1EDD08CC8)
  {
    result = swift_getWitnessTable(byte_1C7582F04, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CC8);
  }

  return result;
}

unint64_t sub_1C7316154()
{
  result = qword_1EDD08CD0;
  if (!qword_1EDD08CD0)
  {
    result = swift_getWitnessTable(byte_1C7582F2C, &type metadata for FreeformStoryCuratedChapter.CodableCurationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08CD0);
  }

  return result;
}

uint64_t QuerySortOrder.rawValue.getter()
{
  v1 = 0x7473726966;
  if (*v0 != 1)
  {
    v1 = 1953718636;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

__n128 QueryAnnotation.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:promptBindings:llmQULatency:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a6;
  v11 = *(a7 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = a5;
  *(a9 + 26) = v10;
  result = *a7;
  v13 = *(a7 + 16);
  *(a9 + 32) = *a7;
  *(a9 + 48) = v13;
  *(a9 + 64) = v11;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10 & 1;
  return result;
}

uint64_t QueryAttributePropertyKey.rawValue.getter()
{
  result = 0x614E6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 0x55556E6F73726570;
      break;
    case 2:
      result = 0x67416E6F73726570;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 1702125924;
      break;
    case 5:
      result = 1952540791;
      break;
    case 6:
      result = 0x747241636973756DLL;
      break;
    case 7:
      result = 0x746954636973756DLL;
      break;
    case 8:
      result = 0x6E6547636973756DLL;
      break;
    case 9:
      result = 1685024621;
      break;
    case 0xA:
      result = 0x656E696665646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t QueryAttribute.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:expansionDateComponentsValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

PhotosIntelligence::QuerySortOrder_optional __swiftcall QuerySortOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C731641C@<X0>(uint64_t *a1@<X8>)
{
  result = QuerySortOrder.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::QueryAttributePropertyKey_optional __swiftcall QueryAttributePropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7316580@<X0>(uint64_t *a1@<X8>)
{
  result = QueryAttributePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t QueryAttribute.attributeKey.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t QueryAttribute.substring.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C73166FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12_58();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_6_2(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_6_2(0x65676E6172, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0x6E69727473627573 && a2 == 0xE900000000000067;
      if (v9 || (OUTLINED_FUNCTION_6_2(0x6E69727473627573, 0xE900000000000067) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000015 && 0x80000001C75AABC0 == a2;
        if (v10 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, 0x80000001C75AABC0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000013 && 0x80000001C75AABE0 == a2;
          if (v11 || (OUTLINED_FUNCTION_6_2(0xD000000000000013, 0x80000001C75AABE0) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001DLL && 0x80000001C75AAC00 == a2)
          {

            return 5;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_6_2(0xD00000000000001DLL, 0x80000001C75AAC00);

            if (v13)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C73168A0()
{
  result = OUTLINED_FUNCTION_12_58();
  switch(v1)
  {
    case 1:
      result = 0x65676E6172;
      break;
    case 2:
      result = 0x6E69727473627573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C731697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73166FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73169B0(uint64_t a1)
{
  v2 = sub_1C7316EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73169EC(uint64_t a1)
{
  v2 = sub_1C7316EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryAttribute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A998, &qword_1C75830B0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C7316EDC();
  OUTLINED_FUNCTION_14_54();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    LOBYTE(v33) = 0;
    OUTLINED_FUNCTION_5_72();
    v16 = sub_1C7551BBC();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9A0, &qword_1C75830B8);
    v19 = sub_1C7317280(&unk_1EC21A9A8);
    OUTLINED_FUNCTION_1_104(v19);
    v30 = v33;
    v29 = v34;
    LOBYTE(v33) = 2;
    OUTLINED_FUNCTION_5_72();
    v20 = sub_1C7551BBC();
    v31 = v21;
    v28 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v22 = sub_1C72DD364(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_1_104(v22);
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158, &unk_1C7569450);
    LOBYTE(v32[0]) = 4;
    v23 = sub_1C73172D8(&unk_1EC21A9B0);
    OUTLINED_FUNCTION_1_104(v23);
    v26 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9B8, &qword_1C75830C0);
    v42 = 5;
    sub_1C7317368(&unk_1EC21A9C0);
    OUTLINED_FUNCTION_5_72();
    sub_1C7551C1C();
    v24 = OUTLINED_FUNCTION_2_10();
    v25(v24);
    v32[0] = v16;
    v32[1] = v18;
    v32[2] = v30;
    v32[3] = v29;
    v32[4] = v28;
    v32[5] = v31;
    v32[6] = v27;
    v32[7] = v26;
    v32[8] = a10;
    memcpy(v14, v32, 0x48uLL);
    sub_1C7316F30(v32, &v33);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v33 = v16;
    v34 = v18;
    v35 = v30;
    v36 = v29;
    v37 = v28;
    v38 = v31;
    v39 = v27;
    v40 = v26;
    v41 = a10;
    sub_1C7316F68(&v33);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7316EDC()
{
  result = qword_1EDD0F3E0[0];
  if (!qword_1EDD0F3E0[0])
  {
    result = swift_getWitnessTable(aIj, &unk_1F46C2440, v0, v1);
    atomic_store(result, qword_1EDD0F3E0);
  }

  return result;
}

void QueryAttribute.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9C8, &unk_1C75830C8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_60();
  v7 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v8 = sub_1C7316EDC();
  OUTLINED_FUNCTION_13_63(&unk_1F46C2440, v9, v8);
  OUTLINED_FUNCTION_121();
  sub_1C7551CCC();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9A0, &qword_1C75830B8);
    v10 = sub_1C7317280(&unk_1EC21A9D0);
    OUTLINED_FUNCTION_0_139(v10);
    OUTLINED_FUNCTION_421();
    sub_1C7551CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v11 = sub_1C72DD364(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_0_139(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158, &unk_1C7569450);
    v12 = sub_1C73172D8(&unk_1EC21A9D8);
    OUTLINED_FUNCTION_0_139(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9B8, &qword_1C75830C0);
    v13 = sub_1C7317368(&unk_1EC21A9E0);
    OUTLINED_FUNCTION_0_139(v13);
  }

  (*(v5 + 8))(v1, v7);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7317280(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A9A0, &qword_1C75830B8);
    result = OUTLINED_FUNCTION_109_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C73172D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217158, &unk_1C7569450);
    sub_1C73173F8(v4);
    v6 = OUTLINED_FUNCTION_11_59();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7317368(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A9B8, &qword_1C75830C0);
    sub_1C73173F8(v4);
    v6 = OUTLINED_FUNCTION_11_59();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C73173F8(uint64_t a1)
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

uint64_t QueryAttribute.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1C755180C();
  v8 = OUTLINED_FUNCTION_12_58();
  MEMORY[0x1CCA5CD70](v8, 0xEE00203A79654B65);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x3A65676E61720A2CLL, 0xE900000000000020);
  v9 = OUTLINED_FUNCTION_121();
  v11 = sub_1C7318768(v9, v10);
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](0x7274736275730A2CLL, 0xED0000203A676E69);
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75AAB30);
  v12 = MEMORY[0x1CCA5D090](v6, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v12);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75AAB50);
  v13 = sub_1C754DF6C();
  v14 = MEMORY[0x1CCA5D090](v5, v13);
  MEMORY[0x1CCA5CD70](v14);

  MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AAB70);
  v15 = sub_1C754DABC();
  v16 = MEMORY[0x1CCA5D090](v7, v15);
  MEMORY[0x1CCA5CD70](v16);

  return 0;
}

void static QueryAttribute.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v18 = a1[7];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (v12 || (sub_1C7551DBC()) && (v2 == v8 ? (v13 = v3 == v7) : (v13 = 0), v13 && (v4 == v9 ? (v14 = v6 == v10) : (v14 = 0), (v14 || (sub_1C7551DBC()) && (sub_1C70020D4(v5, v11) & 1) != 0 && (sub_1C7003AB0(v18), (v15))))
  {
    OUTLINED_FUNCTION_110_0();

    sub_1C7003AF8(v16);
  }

  else
  {
    OUTLINED_FUNCTION_110_0();
  }
}

uint64_t QueryAnnotation.query.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t QueryAnnotation.promptBindings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1C717FBD4(v2, v3);
}

uint64_t QueryAnnotation.encodeToJSONData()()
{
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C7318800();
  v1 = sub_1C754D78C();

  return v1;
}

void static QueryAnnotation.makeFrom(data:)(void *a3@<X8>)
{
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C7318854();
  sub_1C754D71C();

  if (!v3)
  {
    memcpy(a3, __src, 0x51uLL);
  }
}

void QueryAnnotation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x203A7972657571, 0xE700000000000000);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x6269727474610A2CLL, 0xEF7B203A73657475);
  v6 = MEMORY[0x1CCA5D090](v3, &type metadata for QueryAttribute);
  MEMORY[0x1CCA5CD70](v6);

  MEMORY[0x1CCA5CD70](0x69725473690A2C7DLL, 0xEB00000000203A70);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v8);

  MEMORY[0x1CCA5CD70](0x546C6C4173690A2CLL, 0xED0000203A656D69);
  if (v5)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v10);

  MEMORY[0x1CCA5CD70](0x724F74726F730A2CLL, 0xED0000203A726564);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75AABA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215778, &qword_1C755F0A0);
  v11 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](44, 0xE100000000000000);
  OUTLINED_FUNCTION_110_0();
}

uint64_t sub_1C7317B84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x706972547369 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D69546C6C417369 && a2 == 0xE900000000000065;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x74614C55516D6C6CLL && a2 == 0xEC00000079636E65)
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

uint64_t sub_1C7317DCC(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x706972547369;
      break;
    case 3:
      result = 0x6D69546C6C417369;
      break;
    case 4:
      result = 0x6564724F74726F73;
      break;
    case 5:
      result = 0x694274706D6F7270;
      break;
    case 6:
      result = 0x74614C55516D6C6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7317EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7317B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7317EE4(uint64_t a1)
{
  v2 = sub_1C73188A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7317F20(uint64_t a1)
{
  v2 = sub_1C73188A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryAnnotation.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9E8, &qword_1C75830D8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_60();
  v11 = *(v0 + 40);
  v12 = *(v0 + 32);
  v8 = v4[3];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v9 = sub_1C73188A8();
  OUTLINED_FUNCTION_13_63(&type metadata for QueryAnnotation.CodingKeys, v10, v9);
  OUTLINED_FUNCTION_121();
  sub_1C7551CCC();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9F0, &qword_1C75830E0);
    sub_1C73188FC(&unk_1EDD06BB0);
    OUTLINED_FUNCTION_10_66();
    OUTLINED_FUNCTION_421();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_421();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_421();
    sub_1C7551CDC();
    sub_1C7042568();
    OUTLINED_FUNCTION_10_66();
    OUTLINED_FUNCTION_421();
    sub_1C7551D2C();
    sub_1C717FBD4(v12, v11);
    sub_1C73189BC();
    OUTLINED_FUNCTION_10_66();
    OUTLINED_FUNCTION_421();
    sub_1C7551CBC();
    sub_1C7318A10(v12, v11);
    OUTLINED_FUNCTION_421();
    sub_1C7551C9C();
  }

  (*(v6 + 8))(v2, v8);
  OUTLINED_FUNCTION_125();
}

void QueryAnnotation.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AA00, &qword_1C75830E8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C73188A8();
  OUTLINED_FUNCTION_14_54();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v42) = 0;
    OUTLINED_FUNCTION_5_72();
    v11 = sub_1C7551BBC();
    v40 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9F0, &qword_1C75830E0);
    LOBYTE(v41[0]) = 1;
    sub_1C73188FC(&unk_1EDD06BA8);
    OUTLINED_FUNCTION_5_72();
    sub_1C7551C1C();
    v39 = v42;
    LOBYTE(v42) = 2;
    OUTLINED_FUNCTION_5_72();
    v13 = sub_1C7551BCC();
    LOBYTE(v42) = 3;
    OUTLINED_FUNCTION_5_72();
    LODWORD(v37) = sub_1C7551BCC();
    LOBYTE(v41[0]) = 4;
    sub_1C70422E8();
    OUTLINED_FUNCTION_5_72();
    sub_1C7551C1C();
    v36 = v13;
    v14 = v42;
    LOBYTE(v41[0]) = 5;
    sub_1C7318AC8();
    OUTLINED_FUNCTION_5_72();
    sub_1C7551BAC();
    v33 = v14;
    v32 = v11;
    v34 = v42;
    v35 = v43;
    v15 = v45;
    v38 = v44;
    v16 = v46;
    OUTLINED_FUNCTION_5_72();
    v17 = sub_1C7551B8C();
    v19 = v18;
    v30 = v15;
    LOBYTE(v15) = v36 & 1;
    v31 = v36 & 1;
    v36 = v37 & 1;
    v20 = *(v7 + 8);
    v37 = v16;
    v21 = v17;
    v20(v10, v5);
    v22 = v32;
    v41[0] = v32;
    v23 = v40;
    v24 = v39;
    v41[1] = v40;
    v41[2] = v39;
    LOBYTE(v41[3]) = v15;
    BYTE1(v41[3]) = v36;
    BYTE2(v41[3]) = v33;
    OUTLINED_FUNCTION_17_63();
    v41[4] = v26;
    v41[5] = v25;
    v27 = v30;
    v41[6] = v38;
    v41[7] = v30;
    v41[8] = v37;
    v41[9] = v21;
    LOBYTE(v41[10]) = v19 & 1;
    memcpy(v4, v41, 0x51uLL);
    sub_1C7318B1C(v41, &v42);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v42 = v22;
    v43 = v23;
    v44 = v24;
    LOBYTE(v45) = v31;
    BYTE1(v45) = v36;
    BYTE2(v45) = v33;
    OUTLINED_FUNCTION_17_63();
    v46 = v29;
    v47 = v28;
    v48 = v38;
    v49 = v27;
    v50 = v37;
    v51 = v21;
    v52 = v19 & 1;
    sub_1C70476BC(&v42);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7318768(uint64_t a1, uint64_t a2)
{
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](3943982, 0xE300000000000000);
  sub_1C75519EC();
  return 0;
}

unint64_t sub_1C7318800()
{
  result = qword_1EDD0B8E0;
  if (!qword_1EDD0B8E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAnnotation, &type metadata for QueryAnnotation, v0, v1);
    atomic_store(result, &qword_1EDD0B8E0);
  }

  return result;
}

unint64_t sub_1C7318854()
{
  result = qword_1EDD0B8D8;
  if (!qword_1EDD0B8D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAnnotation, &type metadata for QueryAnnotation, v0, v1);
    atomic_store(result, &qword_1EDD0B8D8);
  }

  return result;
}

unint64_t sub_1C73188A8()
{
  result = qword_1EDD0F2F8;
  if (!qword_1EDD0F2F8)
  {
    result = swift_getWitnessTable(byte_1C7583720, &type metadata for QueryAnnotation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F2F8);
  }

  return result;
}

unint64_t sub_1C73188FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A9F0, &qword_1C75830E0);
    v4();
    v6 = OUTLINED_FUNCTION_11_59();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7318968()
{
  result = qword_1EDD0BFA8[0];
  if (!qword_1EDD0BFA8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAttribute, &type metadata for QueryAttribute, v0, v1);
    atomic_store(result, qword_1EDD0BFA8);
  }

  return result;
}

unint64_t sub_1C73189BC()
{
  result = qword_1EC21A9F8;
  if (!qword_1EC21A9F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptBindings, &type metadata for PromptBindings, v0, v1);
    atomic_store(result, &qword_1EC21A9F8);
  }

  return result;
}

uint64_t sub_1C7318A10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C7318A74()
{
  result = qword_1EDD0BFA0;
  if (!qword_1EDD0BFA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAttribute, &type metadata for QueryAttribute, v0, v1);
    atomic_store(result, &qword_1EDD0BFA0);
  }

  return result;
}

unint64_t sub_1C7318AC8()
{
  result = qword_1EC21AA08;
  if (!qword_1EC21AA08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptBindings, &type metadata for PromptBindings, v0, v1);
    atomic_store(result, &qword_1EC21AA08);
  }

  return result;
}

unint64_t sub_1C7318B58()
{
  result = qword_1EC21AA10;
  if (!qword_1EC21AA10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuerySortOrder, &type metadata for QuerySortOrder, v0, v1);
    atomic_store(result, &qword_1EC21AA10);
  }

  return result;
}

unint64_t sub_1C7318BB0()
{
  result = qword_1EC21AA18;
  if (!qword_1EC21AA18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAttributePropertyKey, &type metadata for QueryAttributePropertyKey, v0, v1);
    atomic_store(result, &qword_1EC21AA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QuerySortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QueryAttributePropertyKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C7318DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C7318DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence14PromptBindingsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C7318E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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