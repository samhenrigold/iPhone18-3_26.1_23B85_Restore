uint64_t sub_2172BFC10()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  *v4 = *v1;
  v3[64] = v5;
  v3[65] = v6;
  v3[66] = v0;

  if (v0)
  {
    v7 = v3[61];

    v8 = OUTLINED_FUNCTION_89_4();
    sub_2172CB1C4(v8, v9, v7);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2172BFD44(uint64_t a1)
{
  v113 = v1;
  v5 = *(v1 + 520);
  if (v5)
  {
    v2 = *(v1 + 192);
    sub_2177513F8();

    v6 = OUTLINED_FUNCTION_89_4();
    v7(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 496);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v83, v84, v85, v9);
      v9 = v86;
    }

    OUTLINED_FUNCTION_103();
    if (v11)
    {
      OUTLINED_FUNCTION_126_2(v10 > 1, v5);
      v9 = v87;
    }

    OUTLINED_FUNCTION_202_1();
    v12();
    v13 = OUTLINED_FUNCTION_87_0();
    v14(v13);
    *(v1 + 152) = v9;
  }

  else
  {
    v9 = *(v1 + 496);
  }

  v15 = *(*(v1 + 184) + 177);
  if (v15 == 1 || v15 == 4)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v15 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  v2 = *(v1 + 192);
  OUTLINED_FUNCTION_82_3(v17, v18, v19);

  v20 = OUTLINED_FUNCTION_89_4();
  v21(v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = OUTLINED_FUNCTION_17();
    sub_2172B1A50(v75, v76, v77, v9);
    v9 = v78;
  }

  OUTLINED_FUNCTION_103();
  if (v11)
  {
    v79 = OUTLINED_FUNCTION_11_1(v22);
    sub_2172B1A50(v79, v80, v81, v9);
    v9 = v82;
  }

  OUTLINED_FUNCTION_202_1();
  v23();
  v24 = OUTLINED_FUNCTION_87_0();
  v25(v24);
  *(v1 + 152) = v9;
LABEL_21:
  if (*(v1 + 106) == 1)
  {
    v26 = *(v1 + 184);
    if ((*(v26 + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_101_2(v26);
      v27 = sub_217752FC8();
      OUTLINED_FUNCTION_48_6(v27, v28);

      v29 = OUTLINED_FUNCTION_32_7();
      v106 = v30;
      (v30)(v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = OUTLINED_FUNCTION_17();
        sub_2172B1A50(v88, v89, v90, v9);
        v9 = v91;
      }

      OUTLINED_FUNCTION_162_0();
      if (v11)
      {
        v92 = OUTLINED_FUNCTION_11_1(v31);
        sub_2172B1A50(v92, v93, v94, v9);
        v9 = v95;
      }

      v32 = OUTLINED_FUNCTION_26_11();
      v2(v32);
      *(v1 + 152) = v9;
      if (v4 >= 301 && (v33 = [objc_opt_self() mainBundle], v34 = NSBundle.isMusicApp.getter(), v33, v34))
      {
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_149_0();
        v106();
        OUTLINED_FUNCTION_161_1();
        v107 = v36;
        if (v11)
        {
          v96 = OUTLINED_FUNCTION_57(v35);
          OUTLINED_FUNCTION_126_2(v96, v97);
          v9 = v98;
        }

        v37 = OUTLINED_FUNCTION_144_0();
        v3(v37);
        v38 = OUTLINED_FUNCTION_148();
        v39 = (v3)(v38);
        v47 = OUTLINED_FUNCTION_143_0(v39, v40, v41, v42, v43, v44, v45, v46, v99, v100, v101, v102, v103, v104, v105, v2, v1 + 160, v107);
        v48(v47);
        *(v1 + 152) = v9;
      }

      else
      {
        v49 = OUTLINED_FUNCTION_160_2();
        v50(v49);
      }
    }
  }

  v108 = *(v1 + 472);
  v51 = OUTLINED_FUNCTION_70_4();
  v109 = v52;
  v110 = v53;
  v111 = v54;
  v112 = v55;
  v57 = *(v56 + 16);
  Array<A>.appendQueryItems<A>(for:cloudResourceRequestKind:baseResourceType:)(v51, &v108, &v111, v57, *(v56 + 24));

  sub_2172CB1C4(v108, *(&v108 + 1), v109);
  if (dynamic_cast_existential_1_conditional(v57, v57, &protocol descriptor for CloudRequestable))
  {
    OUTLINED_FUNCTION_76_4();
    v60 = v59(v58 + 128, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);
    sub_21754383C(v60);
  }

  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_31_6(&qword_280BE7420);
  }

  v61 = *(v1 + 208);
  __swift_project_value_buffer(*(v1 + 192), qword_280BE7428);
  v62 = OUTLINED_FUNCTION_110_2();
  v63(v62);
  v64 = *(v1 + 152);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v71 = OUTLINED_FUNCTION_17();
    sub_2172B1A50(v71, v72, v73, v64);
  }

  OUTLINED_FUNCTION_159_0();
  if (v11)
  {
    v74 = OUTLINED_FUNCTION_57(v65);
    OUTLINED_FUNCTION_195_2(v74);
  }

  OUTLINED_FUNCTION_98_4();
  v66 = OUTLINED_FUNCTION_23_14();
  v67(v66);
  MusicAPI.Endpoint.applying(_:)();

  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v61, v68);

  OUTLINED_FUNCTION_0_2();

  return v69();
}

uint64_t sub_2172C0294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v19 = *(v18 + 344);

  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v19, v20);
  v21 = OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_134_2(v21);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2172C0384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v18 = OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_134_2(v18);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2172C045C()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v0[15] = v3;
  v0[16] = v1;
  sub_217751908();
  v0[17] = OUTLINED_FUNCTION_28_7();
  v4 = sub_217751928();
  v0[18] = v4;
  OUTLINED_FUNCTION_15_3(v4);
  v0[19] = v5;
  v0[20] = OUTLINED_FUNCTION_28_7();
  v0[21] = *(v2 + 16);
  v6 = sub_2177528F8();
  v0[22] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v0[23] = v7;
  v0[24] = OUTLINED_FUNCTION_28_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[25] = v8;
  *v8 = v9;
  v8[1] = sub_2172C05B4;
  OUTLINED_FUNCTION_39_3();

  return MusicCatalogResourceRequest.response()();
}

uint64_t sub_2172C05B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C06AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v11 = v10[24];
  v12 = v10[21];
  v13 = *(v10[16] + 24);
  v14 = OUTLINED_FUNCTION_29_9();
  type metadata accessor for MusicItemCollection(v14, v15, v16, v17);
  OUTLINED_FUNCTION_4_26();
  swift_getWitnessTable();
  sub_217752728();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v20 = v10[24];
  if (EnumTagSinglePayload == 1)
  {
    (*(v10[23] + 8))(v10[24], v10[22]);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_24_12();
    sub_2171FF238(v21, v22, MEMORY[0x277CC9AE0]);
    OUTLINED_FUNCTION_149_0();
    sub_217751618();
    sub_217751918();
    v23 = OUTLINED_FUNCTION_148();
    v24(v23);
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_29_9();
    type metadata accessor for MusicCatalogResourceResponse(v25, v26, v27, v28);
    OUTLINED_FUNCTION_6_0();
    (*(v29 + 8))(v10 + 2);

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v30 = v10[21];
    v31 = v10[15];
    type metadata accessor for MusicCatalogResourceResponse(0, v30, v13, v19);
    OUTLINED_FUNCTION_6_0();
    (*(v32 + 8))(v10 + 2);
    OUTLINED_FUNCTION_41_0();
    (*(v33 + 32))(v31, v20, v30);

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_234();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t sub_2172C08D8()
{
  OUTLINED_FUNCTION_30_0();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2172C0954()
{
  OUTLINED_FUNCTION_30_0();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[19] = *(v2 + 16);
  OUTLINED_FUNCTION_0();
  v0[20] = v5;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v6 = sub_2177528F8();
  v0[23] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v0[24] = v7;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[28] = v8;
  *v8 = v9;
  v8[1] = sub_2172C0AC4;
  OUTLINED_FUNCTION_39_3();

  return MusicCatalogResourceRequest.response()();
}

uint64_t sub_2172C0AC4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C0BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = v14[26];
  v16 = v14[27];
  v17 = v14[24];
  v60 = v14[23];
  v18 = v14[18];
  v19 = v14[19];
  v20 = v14[16];
  v21 = v14[17];
  v22 = swift_task_alloc();
  v22[2] = v19;
  v22[3] = *(v18 + 24);
  v22[4] = *(v18 + 32);
  v22[5] = v20;
  v22[6] = v21;
  v23 = OUTLINED_FUNCTION_25_6();
  v61 = v24;
  type metadata accessor for MusicItemCollection(v23, v25, v24, v26);
  swift_getWitnessTable();
  sub_217752198();

  (*(v17 + 16))(v15, v16, v60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v19);
  v28 = *(v17 + 8);
  v29 = v14[27];
  if (EnumTagSinglePayload == 1)
  {
    v30 = v14[25];
    v31 = v14[23];
    v32 = v14[19];
    v28(v14[26], v31);
    OUTLINED_FUNCTION_4_26();
    swift_getWitnessTable();
    sub_217752728();
    v28(v29, v31);
    v33 = OUTLINED_FUNCTION_219_0();
    type metadata accessor for MusicCatalogResourceResponse(v33, v34, v61, v35);
    OUTLINED_FUNCTION_6_0();
    (*(v36 + 8))(v14 + 2);
    if (__swift_getEnumTagSinglePayload(v30, 1, v32) == 1)
    {
      v28(v14[25], v14[23]);
      v37 = 1;
      goto LABEL_7;
    }

    v47 = v14[21];
    v48 = v14[19];
    v49 = v14[15];
    v50 = *(v14[20] + 32);
    v50(v47, v14[25], v48);
    v50(v49, v47, v48);
  }

  else
  {
    v38 = v14[22];
    v40 = v14[19];
    v39 = v14[20];
    v41 = v14[15];
    v28(v14[27], v14[23]);
    v42 = OUTLINED_FUNCTION_119_2();
    type metadata accessor for MusicCatalogResourceResponse(v42, v43, v61, v44);
    OUTLINED_FUNCTION_6_0();
    (*(v45 + 8))(v14 + 2);
    v46 = *(v39 + 32);
    OUTLINED_FUNCTION_149_0();
    v46();
    (v46)(v41, v38, v40);
  }

  v37 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v14[15], v37, 1, v14[19]);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_120_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, a11, a12, a13, a14);
}

uint64_t sub_2172C0EB4()
{
  OUTLINED_FUNCTION_30_0();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

BOOL sub_2172C0F40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  MusicItem.identifierSet.getter(a4, a5, v10);
  v7.rawValue._countAndFlagsBits = a2;
  v7.rawValue._object = a3;
  v8 = MusicIdentifierSet.contains(_:)(v7);
  memcpy(__dst, v10, 0x161uLL);
  sub_217269F50(__dst);
  return v8;
}

uint64_t sub_2172C0FC8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 240) = v4;
  *(v1 + 248) = v0;
  v5 = sub_217751428();
  *(v1 + 256) = v5;
  OUTLINED_FUNCTION_15_3(v5);
  *(v1 + 264) = v6;
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  v7 = swift_task_alloc();
  v9 = *v3;
  v8 = *(v3 + 8);
  *(v1 + 344) = v7;
  *(v1 + 352) = v9;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  *(v1 + 360) = v8;
  *(v1 + 368) = v10;
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  *(v1 + 376) = v11;
  *(v1 + 384) = v12;
  v14 = *(v3 + 48);
  *(v1 + 392) = v13;
  *(v1 + 400) = v14;
  *(v1 + 512) = *(v3 + 56);
  sub_2172CAEFC(v9, v8, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_2172C1114(uint64_t a1, __n128 a2, uint64_t a3)
{
  *(v3 + 136) = 0;
  *(v3 + 232) = MEMORY[0x277D84F90];
  v4 = *(v3 + 400);
  v5 = *(v3 + 360);
  *(v3 + 144) = 0xE000000000000000;
  v160 = (v3 + 16);
  switch(v4 >> 62)
  {
    case 1uLL:
      v61 = *(v3 + 376);
      v62 = *(v3 + 352);
      v63 = v62 == 25705 && v5 == 0xE200000000000000;
      if (v63 || (OUTLINED_FUNCTION_130_1(a1, a3, v62) & 1) != 0)
      {

        v65 = *(v3 + 368);
        v13 = *(v3 + 256);
        v66 = *(v3 + 264);
        MEMORY[0x21CEA23B0](0x73746E65746E6F63, 0xE800000000000000, v64);
        *(v3 + 152) = v65;
        *(v3 + 160) = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
        sub_2172CAFA8();
        v15 = v3 + 152;
        OUTLINED_FUNCTION_181_0();
        sub_217751ED8();
        OUTLINED_FUNCTION_117_4();
        OUTLINED_FUNCTION_232(v67, v68, v69);

        v16 = v66 + 16;
        v70 = OUTLINED_FUNCTION_20_6();
        v72 = v71(v70);
        OUTLINED_FUNCTION_137_0(v72, v73, v74, MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_50_4();
        if (!v23)
        {
LABEL_38:
          v25 = *(v3 + 272);
          v24 = *(v3 + 280);
LABEL_59:
          v113 = *(v3 + 256);
          v114 = *(v3 + 264);

          (*(v114 + 8))(v24, v113);
          *(v13 + 16) = v15;
          (*(v114 + 32))(v13 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v16, v25, v113);
          *(v3 + 232) = v13;
          goto LABEL_64;
        }

LABEL_77:
        v128 = OUTLINED_FUNCTION_11_1(v43);
        sub_2172B1A50(v128, v129, v130, v13);
        v13 = v131;
        goto LABEL_38;
      }

      if (qword_280BE8358 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_280BE8358);
      }

      v94 = sub_217751AF8();
      __swift_project_value_buffer(v94, qword_280C02570);
      sub_217751DE8();
      v95 = sub_217751AD8();
      v96 = sub_217752818();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v164 = v98;
        *v97 = 136446210;
        OUTLINED_FUNCTION_153_0();
        v99 = OUTLINED_FUNCTION_123_2();
        MEMORY[0x21CEA23B0](v99);

        v100 = sub_21729C0E8(v161, v162, &v164);

        *(v97 + 4) = v100;
        _os_log_impl(&dword_2171EE000, v95, v96, "Searching for content using %{public}s without a known resource type is unsupported.", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_28_4();
      }

      else
      {
      }

LABEL_62:

      break;
    case 2uLL:
      v27 = *(v3 + 384);
      v26 = *(v3 + 392);
      v29 = *(v3 + 368);
      v28 = *(v3 + 376);
      v30 = OUTLINED_FUNCTION_123_2();
      MEMORY[0x21CEA23B0](v30);
      v31 = OUTLINED_FUNCTION_123_2();
      sub_2172CB00C(v31, v32, v29, v28, v27, v26, v4);
      break;
    case 3uLL:
      v16 = *(v3 + 368);
      v33 = *(v3 + 352);
      v34 = v33 == 25705 && v5 == 0xE200000000000000;
      if (v34 || (OUTLINED_FUNCTION_130_1(a1, a3, v33) & 1) != 0)
      {

        v35 = 0;
        v36 = *(v3 + 264);
        v37 = -1;
        v38 = -1 << *(v16 + 32);
        if (-v38 < 64)
        {
          v37 = ~(-1 << -v38);
        }

        v39 = v37 & *(v16 + 64);
        v40 = (63 - v38) >> 6;
        v41 = (v36 + 16);
        v42 = v36 + 8;
        v15 = v36 + 32;
        v13 = MEMORY[0x277D84F90];
        while (v39)
        {
LABEL_26:
          v44 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v45 = v44 | (v35 << 6);
          v46 = (*(v16 + 56) + 16 * v45);
          v47 = v46[1];
          if (*(v47 + 16))
          {
            v149 = v15;
            v150 = v36;
            v153 = *(v3 + 296);
            v145 = *(v3 + 288);
            v147 = *(v3 + 256);
            v155 = *v46;
            v156 = v42;
            v151 = *(*(v16 + 48) + 24 * v45 + 8);
            v144 = *(*(v16 + 48) + 24 * v45);
            v158 = v41;

            sub_217751DE8();
            MEMORY[0x21CEA23B0](v144, v151);

            MEMORY[0x21CEA23B0](93, 0xE100000000000000, v48);
            *(v3 + 168) = v155;
            *(v3 + 176) = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
            sub_2172CAFA8();
            OUTLINED_FUNCTION_181_0();
            sub_217751ED8();
            OUTLINED_FUNCTION_117_4();
            sub_2177513F8();

            (*v158)(v145, v153, v147, v49);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = OUTLINED_FUNCTION_17();
              sub_2172B1A50(v54, v55, v56, v13);
              v13 = v57;
            }

            v51 = *(v13 + 16);
            v50 = *(v13 + 24);
            v148 = v51;
            v154 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v58 = OUTLINED_FUNCTION_57(v50);
              sub_2172B1A50(v58, v59, 1, v13);
              v13 = v60;
            }

            v146 = *(v3 + 296);
            v152 = *(v3 + 288);
            v52 = *(v3 + 256);

            (*(v150 + 8))(v146, v52);
            *(v13 + 16) = v154;
            v53 = v52;
            v15 = v149;
            (*(v150 + 32))(v13 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v148, v152, v53);
            v42 = v156;
            v41 = v158;
            v36 = v150;
            *(v3 + 232) = v13;
          }
        }

        while (1)
        {
          v43 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v43 >= v40)
          {

LABEL_64:
            *(v3 + 408) = v13;
            v115 = *(v3 + 248);
            switch(*(v3 + 512))
            {
              case 1:
                __swift_project_boxed_opaque_existential_1((v115 + 128), *(v115 + 152));
                v124 = OUTLINED_FUNCTION_85_3();
                v125(v124);

                sub_21754383C(v163);
                sub_217441D1C(*(v3 + 136), *(v3 + 144), *(v3 + 232), v115 + 128);

                goto LABEL_73;
              case 2:
                __swift_project_boxed_opaque_existential_1((v115 + 128), *(v115 + 152));
                OUTLINED_FUNCTION_47_6();
                v116 = swift_task_alloc();
                *(v3 + 448) = v116;
                *v116 = v3;
                v117 = sub_2172C233C;
                goto LABEL_69;
              case 3:
                __swift_project_boxed_opaque_existential_1((v115 + 128), *(v115 + 152));
                OUTLINED_FUNCTION_47_6();
                v116 = swift_task_alloc();
                *(v3 + 480) = v116;
                *v116 = v3;
                v117 = sub_2172C2684;
                goto LABEL_69;
              case 4:
                v118 = *(v3 + 240);

                __swift_project_boxed_opaque_existential_1((v115 + 128), *(v115 + 152));
                v119 = OUTLINED_FUNCTION_85_3();
                v120(v119);

                sub_21754383C(v163);
                v121 = *(v3 + 232);
                sub_2172CA838(v115 + 128, v160);
                sub_2173B6DA4(0xD000000000000015, 0x80000002177AB7F0, v121, 0, v160, v118);
LABEL_73:
                OUTLINED_FUNCTION_64_5();

                OUTLINED_FUNCTION_0_2();
                OUTLINED_FUNCTION_129_1();

                __asm { BRAA            X1, X16 }

                return;
              default:
                __swift_project_boxed_opaque_existential_1((v115 + 128), *(v115 + 152));
                OUTLINED_FUNCTION_47_6();
                v116 = swift_task_alloc();
                *(v3 + 416) = v116;
                *v116 = v3;
                v117 = sub_2172C1FA8;
LABEL_69:
                v116[1] = v117;
                OUTLINED_FUNCTION_20_6();
                OUTLINED_FUNCTION_129_1();

                __asm { BRAA            X2, X16 }

                return;
            }
          }

          v39 = *(v16 + 64 + 8 * v43);
          ++v35;
          if (v39)
          {
            v35 = v43;
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_77;
      }

      if (qword_280BE8358 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_280BE8358);
      }

      v76 = sub_217751AF8();
      __swift_project_value_buffer(v76, qword_280C02570);
      sub_217751DE8();
      v77 = sub_217751AD8();
      v78 = sub_217752818();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v164 = v80;
        *v79 = 136446210;
        OUTLINED_FUNCTION_153_0();
        v81 = OUTLINED_FUNCTION_123_2();
        MEMORY[0x21CEA23B0](v81);

        v82 = sub_21729C0E8(v161, v162, &v164);

        *(v79 + 4) = v82;
        _os_log_impl(&dword_2171EE000, v77, v78, "Filtering using %{public}s is not supported when filtering across multiple scopes.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_28_4();
      }

      else
      {
      }

      break;
    default:
      v6 = *(v3 + 376);
      v7 = *(v3 + 352);
      sub_217751DE8();
      v8 = OUTLINED_FUNCTION_35();
      MEMORY[0x21CEA23B0](v8);

      v11 = v7 == 25705 && v5 == 0xE200000000000000;
      if (!v11 && (OUTLINED_FUNCTION_130_1(v9, v10, *(v3 + 352)) & 1) == 0)
      {
        v83 = *(v3 + 392);
        v84 = *(v3 + 312);
        v85 = *(v3 + 264);
        v157 = *(v3 + 256);
        v159 = *(v3 + 304);

        v86 = OUTLINED_FUNCTION_123_2();
        MEMORY[0x21CEA23B0](v86);

        MEMORY[0x21CEA23B0](93, 0xE100000000000000, v87);
        *(v3 + 184) = v83;
        *(v3 + 192) = v4;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
        sub_2172CAFA8();
        v15 = v3 + 184;
        OUTLINED_FUNCTION_181_0();
        sub_217751ED8();
        OUTLINED_FUNCTION_117_4();
        OUTLINED_FUNCTION_20_6();
        sub_2177513F8();

        v89 = *(v85 + 16);
        v16 = v85 + 16;
        v90 = v89(v159, v84, v157, v88);
        OUTLINED_FUNCTION_137_0(v90, v91, v92, MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_50_4();
        if (v23)
        {
          v132 = OUTLINED_FUNCTION_11_1(v93);
          sub_2172B1A50(v132, v133, v134, v13);
          v13 = v135;
        }

        v25 = *(v3 + 304);
        v24 = *(v3 + 312);
        goto LABEL_59;
      }

      if (*(*(*(v3 + 248) + 168) + 16))
      {
        v161 = *(v3 + 368);
        v162 = v6;
        v12 = ResourceType.supportsFilteredByEquivalencies.getter();

        if (v12)
        {
          v13 = *(v3 + 256);
          v14 = *(v3 + 264);
          *(v3 + 216) = *(v3 + 392);
          *(v3 + 224) = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
          sub_2172CAFA8();
          v15 = v3 + 216;
          OUTLINED_FUNCTION_181_0();
          sub_217751ED8();
          OUTLINED_FUNCTION_117_4();
          sub_2177513F8();

          v16 = v14 + 16;
          v17 = OUTLINED_FUNCTION_132();
          v19 = v18(v17);
          OUTLINED_FUNCTION_137_0(v19, v20, v21, MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_50_4();
          if (v23)
          {
            v136 = OUTLINED_FUNCTION_11_1(v22);
            sub_2172B1A50(v136, v137, v138, v13);
            v13 = v139;
          }

          v25 = *(v3 + 336);
          v24 = *(v3 + 344);
          goto LABEL_59;
        }
      }

      else
      {
      }

      v75 = *(v4 + 16);
      if (v75)
      {
        if (v75 != 1)
        {
          v13 = *(v3 + 320);
          v101 = *(v3 + 328);
          v102 = *(v3 + 256);
          v103 = *(v3 + 264);
          *(v3 + 200) = *(v3 + 392);
          *(v3 + 208) = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
          sub_2172CAFA8();
          v15 = v3 + 200;
          OUTLINED_FUNCTION_181_0();
          sub_217751ED8();
          OUTLINED_FUNCTION_117_4();
          OUTLINED_FUNCTION_232(v104, v105, v106);

          v108 = *(v103 + 16);
          v16 = v103 + 16;
          v109 = v108(v13, v101, v102, v107);
          OUTLINED_FUNCTION_137_0(v109, v110, v111, MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_50_4();
          if (v23)
          {
            v140 = OUTLINED_FUNCTION_11_1(v112);
            sub_2172B1A50(v140, v141, v142, v13);
            v13 = v143;
          }

          v25 = *(v3 + 320);
          v24 = *(v3 + 328);
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_153_0();
        MEMORY[0x21CEA23B0]();
        MEMORY[0x21CEA23B0](v161, v162);
      }

      else
      {
      }

      goto LABEL_62;
  }

  v13 = MEMORY[0x277D84F90];
  goto LABEL_64;
}

uint64_t sub_2172C1FA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  *v4 = *v1;
  v3[53] = v5;
  v3[54] = v6;
  v3[55] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v19 = *(v18 + 248);
  v20 = OUTLINED_FUNCTION_25_0();
  sub_2177188E8(v20, v21);
  __swift_project_boxed_opaque_existential_1((v19 + 128), *(v19 + 152));
  v22 = OUTLINED_FUNCTION_16_1();
  v23(v22);

  sub_21754383C(a13);
  OUTLINED_FUNCTION_210_0();
  OUTLINED_FUNCTION_208_0();
  v24 = OUTLINED_FUNCTION_25_0();
  MEMORY[0x21CEA23B0](v24);
  OUTLINED_FUNCTION_140_2();
  if (v25)
  {
    OUTLINED_FUNCTION_208_0();
    v26 = OUTLINED_FUNCTION_124_2();
    MEMORY[0x21CEA23B0](v26);
    MEMORY[0x21CEA23B0](a9, a10);
  }

  sub_2172CA838(*(v18 + 248) + 128, v18 + 96);
  sub_217751DE8();
  OUTLINED_FUNCTION_113();
  sub_2173B6DA4(v27, v28, v29, 1, v30, v31);

  OUTLINED_FUNCTION_64_5();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_172_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2172C2288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_63_4();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2172C233C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  *v4 = *v1;
  v3[57] = v5;
  v3[58] = v6;
  v3[59] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C244C()
{
  v16 = v0;
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v1 = v0[31];
  v2 = OUTLINED_FUNCTION_132();
  sub_2177188E8(v2, v3);
  v4 = v1[19];
  v5 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v4);
  (*(v5 + 8))(v15, v4, v5);
  v6 = v15[4];

  sub_21754383C(v6);
  v7 = v0[18];
  v8 = v0[29];
  v9 = OUTLINED_FUNCTION_132();
  sub_217441DD4(v9, v10, v11, v7, v8, v12);

  OUTLINED_FUNCTION_64_5();

  OUTLINED_FUNCTION_0_2();

  return v13();
}

uint64_t sub_2172C25D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_63_4();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2172C2684()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  *v4 = *v1;
  v3[61] = v5;
  v3[62] = v6;
  v3[63] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C2794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v19 = *(v18 + 248);
  v20 = OUTLINED_FUNCTION_25_0();
  sub_2177188E8(v20, v21);
  __swift_project_boxed_opaque_existential_1((v19 + 128), *(v19 + 152));
  v22 = OUTLINED_FUNCTION_16_1();
  v23(v22);

  sub_21754383C(a13);
  OUTLINED_FUNCTION_210_0();
  OUTLINED_FUNCTION_208_0();
  v24 = OUTLINED_FUNCTION_25_0();
  MEMORY[0x21CEA23B0](v24);
  OUTLINED_FUNCTION_140_2();
  if (v25)
  {
    OUTLINED_FUNCTION_208_0();
    v26 = OUTLINED_FUNCTION_124_2();
    MEMORY[0x21CEA23B0](v26);
    MEMORY[0x21CEA23B0](a9, a10);
  }

  sub_2172CA838(*(v18 + 248) + 128, v18 + 56);
  sub_217751DE8();
  OUTLINED_FUNCTION_113();
  sub_2173B6DA4(v27, v28, v29, 1, v30, v31);

  OUTLINED_FUNCTION_64_5();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_172_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2172C2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_63_4();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2172C2A18@<X0>(void *a1@<X8>)
{
  result = v1[1];
  if (v1[6] >> 62 == 2)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *a1 = *v1;
    a1[1] = result;
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_2172C2A54()
{
  v1 = v0[2];
  v2 = MEMORY[0x277D84F90];
  switch(v0[6] >> 62)
  {
    case 1uLL:
      goto LABEL_7;
    case 2uLL:
      v7 = v0;
      v5 = *v0;
      v6 = v7[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2177586E0;
      *(v2 + 32) = v5;
      *(v2 + 40) = v6;
      *(v2 + 48) = v1 & 1;
      goto LABEL_4;
    case 3uLL:
      v8 = *(v1 + 16);
      if (!v8)
      {
        goto LABEL_7;
      }

      v2 = sub_2176F7758();
      sub_2176F8378();
      v10 = v9;
      sub_217751DE8();
      v11 = OUTLINED_FUNCTION_104_3();
      result = sub_2172303F0(v11);
      if (v10 == v8)
      {
        goto LABEL_7;
      }

      __break(1u);
      break;
    default:
      v3 = *(v0 + 32);
      v4 = v0[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2177586E0;
      *(v2 + 32) = v1;
      *(v2 + 40) = v4;
      *(v2 + 48) = v3 & 1;
LABEL_4:
      sub_217751DE8();
LABEL_7:
      result = v2;
      break;
  }

  return result;
}

uint64_t sub_2172C2BC4(void *__src, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v44, a2, 0x59uLL);
  memcpy(v45, __src, 0x59uLL);
  memcpy(v46, a2, sizeof(v46));
  if ((*(&__dst[3] + 1) & 0x8000000000000000) != 0)
  {
    if ((*(&v44[3] + 1) & 0x8000000000000000) != 0)
    {
      v36 = *(__dst + 8);
      v37 = *(&__dst[1] + 8);
      v38 = *(&__dst[2] + 8);
      v35 = *&__dst[0];
      v39 = *(&__dst[3] + 1) & 0x7FFFFFFFFFFFFFFFLL;
      v40 = __dst[4];
      v41 = *&__dst[5];
      v42 = BYTE8(__dst[5]);
      v29[0] = v44[0];
      v29[1] = v44[1];
      v29[2] = v44[2];
      v30 = *&v44[3];
      v31 = *(&v44[3] + 1) & 0x7FFFFFFFFFFFFFFFLL;
      v32 = v44[4];
      v33 = *&v44[5];
      v34 = BYTE8(v44[5]);
      v23 = type metadata accessor for MusicCatalogResourceRequest.Kind(0, a3, a4, a5);
      v24 = *(v23 - 8);
      v25 = *(v24 + 16);
      v25(v28, v44, v23);
      v25(v28, __dst, v23);
      v25(v28, v44, v23);
      v25(v28, __dst, v23);
      v19 = sub_2172C3F30(&v35, v29, a3, a4, a5);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(TupleTypeMetadata2 - 8) + 8))(v45, TupleTypeMetadata2);
      v27 = *(v24 + 8);
      v27(v44, v23);
      v27(__dst, v23);
      return v19 & 1;
    }

    goto LABEL_9;
  }

  if ((*(&v44[3] + 1) & 0x8000000000000000) != 0)
  {
LABEL_9:
    v16 = type metadata accessor for MusicCatalogResourceRequest.Kind(0, a3, a4, a5);
    v17 = *(*(v16 - 8) + 16);
    v17(&v35, v44, v16);
    v17(&v35, __dst, v16);
    v18 = swift_getTupleTypeMetadata2();
    (*(*(v18 - 8) + 8))(v45, v18);
    v19 = 0;
    return v19 & 1;
  }

  if (*&__dst[0] != *&v44[0] || *(&__dst[0] + 1) != *(&v44[0] + 1))
  {
    v11 = sub_217753058();
    v12 = type metadata accessor for MusicCatalogResourceRequest.Kind(0, a3, a4, a5);
    v13 = *(*(v12 - 8) + 16);
    v13(&v35, v44, v12);
    v13(&v35, __dst, v12);
    v14 = swift_getTupleTypeMetadata2();
    (*(*(v14 - 8) + 8))(v45, v14);
    return v11 & 1;
  }

  v20 = type metadata accessor for MusicCatalogResourceRequest.Kind(0, a3, a4, a5);
  v21 = *(*(v20 - 8) + 16);
  v21(&v35, v44, v20);
  v21(&v35, __dst, v20);
  v22 = swift_getTupleTypeMetadata2();
  (*(*(v22 - 8) + 8))(v45, v22);
  v19 = 1;
  return v19 & 1;
}

void sub_2172C3060(uint64_t a1, uint64_t *a2)
{
  if ((*(v2 + 56) & 0x8000000000000000) != 0)
  {
    MEMORY[0x21CEA3550](1);
    type metadata accessor for MusicCatalogResourceRequest.FilterContext(0, a2[2], a2[3], a2[4]);
    sub_2172C40E4(a1);
  }

  else
  {
    MEMORY[0x21CEA3550](0);

    sub_217751FF8();
  }
}

uint64_t sub_2172C3168(uint64_t *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_2177531E8();
  sub_2172C3060(v4, a1);
  return sub_217753238();
}

void sub_2172C31F4(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v35[0] = 44;
  v35[1] = 0xE100000000000000;
  v34 = v35;
  sub_217751DE8();
  OUTLINED_FUNCTION_188_0(sub_2171F87CC, v33, v6);
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v31 = v5;
    v32 = v4;
    v35[0] = MEMORY[0x277D84F90];
    sub_217275C90(0, v13, 0, v7, v8, v9, v10);
    v14 = 0;
    v15 = v35[0];
    v16 = v12 + 56;
    while (v14 < *(v12 + 16))
    {
      sub_217751DE8();
      v17 = OUTLINED_FUNCTION_37_4();
      v18 = MEMORY[0x21CEA2320](v17);
      v20 = v19;

      v35[0] = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_57(v21);
        sub_217275C90(v24, v22 + 1, 1, v25, v26, v27, v28);
        v15 = v35[0];
      }

      ++v14;
      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v16 += 32;
      if (v13 == v14)
      {

        v5 = v31;
        v4 = v32;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    sub_2172C3424();
    *a3 = v5;
    a3[1] = v4;
    a3[2] = v29;
    a3[3] = v30;
    a3[4] = 0;
    a3[5] = 0;
    a3[6] = 0x4000000000000000;
    sub_217751DE8();
  }
}

uint64_t sub_2172C338C(__n128 a1)
{
  switch(*(v1 + 48) >> 62)
  {
    case 2:
      sub_2172C3424();
      break;
    case 3:
      v2 = sub_217751DE8();
      sub_217442118(v2);
      break;
    default:

      break;
  }

  return OUTLINED_FUNCTION_20_6();
}

uint64_t sub_2172C384C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a2 + 16);
  if (v9 == 1)
  {
    goto LABEL_17;
  }

  if (!v9)
  {
    *a5 = v7;
    a5[1] = v8;
    a5[2] = a3;
    a5[3] = a4;
    a5[4] = 0;
    a5[5] = 0;
    a5[6] = 0x4000000000000000;

LABEL_19:

    goto LABEL_20;
  }

  if (!*(a4 + 16))
  {
LABEL_17:
    v48 = *(a2 + 32);
    v49 = *(a2 + 40);
    v50 = *(a2 + 48);
    *a5 = v7;
    a5[1] = v8;
    a5[2] = v48;
    a5[3] = v49;
    a5[4] = v50;
    a5[5] = a3;
    a5[6] = a4;

    sub_217751DE8();
LABEL_20:

    return sub_217751DE8();
  }

  v52 = *a1;
  v53 = a5;
  v54 = a1[1];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27720, &unk_21775A490);
  sub_2172CA7E4(v10, v11, v12);
  v13 = sub_217751DC8();
  v14 = (a2 + 48);
  v55 = a4;
  while (1)
  {
    v16 = *(v14 - 2);
    v15 = *(v14 - 1);
    v56 = v14;
    v17 = *v14;
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    v18 = OUTLINED_FUNCTION_178_0();
    v20 = sub_2176324F4(v18, v19, v17);
    if (__OFADD__(*(v13 + 16), (v21 & 1) == 0))
    {
      break;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277E0, &qword_21776B230);
    if (sub_217752CB8())
    {
      v24 = OUTLINED_FUNCTION_178_0();
      sub_2176324F4(v24, v25, v17);
      OUTLINED_FUNCTION_74_3();
      if (!v27)
      {
        goto LABEL_25;
      }

      v22 = v26;
    }

    if (v23)
    {

      OUTLINED_FUNCTION_218_0(v28, v29, v30, v31, v32, v33, v34, v35, v52, v53, v54, v55);
    }

    else
    {
      OUTLINED_FUNCTION_183_0(v13 + 8 * (v22 >> 6));
      v36 = *(v13 + 48) + 24 * v22;
      *v36 = v16;
      *(v36 + 8) = v15;
      *(v36 + 16) = v17;
      OUTLINED_FUNCTION_218_0(v37, v38, v39, v40, v41, v42, v43, v44, v52, v53, v54, v55);
      v45 = *(v13 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_24;
      }

      *(v13 + 16) = v47;
    }

    if (!--v9)
    {
      *v53 = v52;
      v53[1] = v54;
      v53[2] = v13;
      v53[3] = 0;
      v53[4] = 0;
      v53[5] = 0;
      v53[6] = 0xC000000000000000;
      goto LABEL_19;
    }

    v14 = v56 + 24;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_217753178();
  __break(1u);
  return result;
}

uint64_t sub_2172C3AD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v79[0] = *a1;
  v79[1] = v5;
  v79[2] = v7;
  v79[3] = v8;
  v74 = v10;
  v75 = v9;
  v79[4] = v10;
  v79[5] = v9;
  v79[6] = v11;
  v79[7] = v13;
  v79[8] = v12;
  v79[9] = v14;
  v79[10] = v15;
  v79[11] = v17;
  v79[12] = v16;
  v79[13] = v18;
  switch(v11 >> 62)
  {
    case 1uLL:
      if (v18 >> 62 != 1)
      {
        goto LABEL_36;
      }

      v72 = v7;
      v73 = v8;
      v42 = v6 == v13 && v5 == v12;
      if (v42 || (v43 = OUTLINED_FUNCTION_83(), v45 = OUTLINED_FUNCTION_133_3(v43, v44), v8 = v73, (v45 & 1) != 0))
      {
        v24 = v8;
        v25 = v15;
        goto LABEL_34;
      }

      v70 = v14;
      v56 = v73;
      OUTLINED_FUNCTION_56_4(v13, v12, v70);
      v57 = OUTLINED_FUNCTION_83();
      v59 = v72;
      goto LABEL_37;
    case 2uLL:
      if (v18 >> 62 != 2)
      {
        goto LABEL_36;
      }

      v72 = v7;
      v73 = v8;
      if (v6 != v13 || v5 != v12)
      {
        v27 = OUTLINED_FUNCTION_133_3(v6, v5);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_56_4(v6, v5, v14);
      v63 = OUTLINED_FUNCTION_83();
      sub_2172CAEFC(v63, v64, v72, v73, v74, v75, v11);
      v41 = 1;
      goto LABEL_39;
    case 3uLL:
      if (v18 >> 62 != 3)
      {
        goto LABEL_36;
      }

      v72 = v7;
      v73 = v8;
      if (v6 != v13 || v5 != v12)
      {
        v29 = OUTLINED_FUNCTION_83();
        if ((OUTLINED_FUNCTION_133_3(v29, v30) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      OUTLINED_FUNCTION_52_6();
      sub_2172CAEFC(v31, v32, v33, v34, v35, v16, v18);
      v36 = OUTLINED_FUNCTION_83();
      sub_2172CAEFC(v36, v37, v72, v73, v74, v75, v11);
      v38 = OUTLINED_FUNCTION_20_6();
      sub_2172635A8(v38, v39);
      v41 = v40;
      goto LABEL_39;
    default:
      if (v18 >> 62 || (v6 == v13 ? (v19 = v5 == v12) : (v19 = 0), (v72 = v7, v73 = v8, !v19) && (v20 = OUTLINED_FUNCTION_83(), v22 = OUTLINED_FUNCTION_133_3(v20, v21), v7 = v72, v8 = v73, (v22 & 1) == 0)))
      {
LABEL_36:
        v53 = v12;
        v54 = v7;
        v55 = v14;
        v56 = v8;
        OUTLINED_FUNCTION_56_4(v13, v53, v55);
        v57 = OUTLINED_FUNCTION_83();
        v59 = v54;
LABEL_37:
        v60 = v56;
        goto LABEL_38;
      }

      v23 = v7 == v14 && v8 == v15;
      if (!v23 && (sub_217753058() & 1) == 0)
      {
LABEL_41:
        OUTLINED_FUNCTION_52_6();
        sub_2172CAEFC(v65, v66, v67, v68, v69, v16, v18);
        v57 = OUTLINED_FUNCTION_83();
        v59 = v72;
        v60 = v73;
LABEL_38:
        sub_2172CAEFC(v57, v58, v59, v60, v74, v75, v11);
        v41 = 0;
        goto LABEL_39;
      }

      v24 = OUTLINED_FUNCTION_212_0();
LABEL_34:
      v27 = sub_2172CA6C0(v24, v25);
LABEL_35:
      v71 = v11;
      v41 = v27;
      OUTLINED_FUNCTION_52_6();
      sub_2172CAEFC(v46, v47, v48, v49, v50, v16, v18);
      v51 = OUTLINED_FUNCTION_83();
      sub_2172CAEFC(v51, v52, v72, v73, v74, v75, v71);
LABEL_39:
      type metadata accessor for MusicCatalogResourceRequest.FilterContext.Filter(255, a3, a4, a5);
      OUTLINED_FUNCTION_81_2();
      swift_getTupleTypeMetadata2();
      OUTLINED_FUNCTION_6_0();
      (*(v61 + 8))(v79);
      return v41 & 1;
  }
}

uint64_t sub_2172C3DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  switch(*(v10 + 48) >> 62)
  {
    case 1:
      MEMORY[0x21CEA3550](1);
      OUTLINED_FUNCTION_106_3();
      sub_217751FF8();
      OUTLINED_FUNCTION_124_2();
      goto LABEL_10;
    case 2:
      MEMORY[0x21CEA3550](2);
      OUTLINED_FUNCTION_106_3();
      OUTLINED_FUNCTION_218();

      result = sub_217751FF8();
      break;
    case 3:
      MEMORY[0x21CEA3550](3);
      OUTLINED_FUNCTION_106_3();
      sub_217751FF8();
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_218();

      result = sub_21726A074(v13, v14);
      break;
    default:
      MEMORY[0x21CEA3550](0);
      OUTLINED_FUNCTION_106_3();
      sub_217751FF8();
      OUTLINED_FUNCTION_124_2();
      sub_217751FF8();
      OUTLINED_FUNCTION_167_2();
LABEL_10:
      OUTLINED_FUNCTION_218();

      result = sub_2172CA74C(v16, v17, v18);
      break;
  }

  return result;
}

uint64_t sub_2172C3EDC()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v13 = *v0;
  v14 = v2;
  v15 = v0[2];
  v16 = v1;
  OUTLINED_FUNCTION_238();
  sub_2172C3DB4(v12, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  return sub_217753238();
}

uint64_t sub_2172C3F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v44 = *(a1 + 72);
  v45 = *(a1 + 64);
  v43 = *(a1 + 80);
  v42 = *(a1 + 88);
  v13 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v46 = *(a2 + 56);
  v47 = *(a1 + 56);
  v40 = *(a2 + 72);
  v41 = *(a2 + 64);
  v39 = *(a2 + 80);
  v38 = *(a2 + 88);
  v62 = v6;
  v63 = v7;
  v51 = v9;
  v52 = v8;
  v64 = v8;
  v65 = v9;
  v49 = v11;
  v50 = v10;
  v66 = v10;
  v67 = v11;
  v48 = v12;
  v68 = v12;
  v55 = v13;
  v56 = v14;
  v57 = v16;
  v58 = v15;
  v59 = v17;
  v60 = v18;
  v61 = v19;
  sub_2172CAEFC(v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_215_0();
  sub_2172CAEFC(v20, v21, v22, v23, v24, v25, v26);
  LOBYTE(a5) = sub_2172C3AD0(&v62, &v55, a3, a4, a5);
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_215_0();
  sub_2172CB00C(v27, v28, v29, v30, v31, v32, v33);
  sub_2172CB00C(v6, v7, v52, v51, v50, v49, v48);
  v34 = 0;
  if ((a5 & 1) != 0 && v47 == v46)
  {
    v62 = v45;
    v63 = v44;
    v64 = v43;
    LOBYTE(v65) = v42;
    v55 = v41;
    v56 = v40;
    v57 = v39;
    LOBYTE(v58) = v38;
    sub_2172CB1B0(v45, v44, v43);
    v35 = OUTLINED_FUNCTION_93();
    sub_2172CB1B0(v35, v36, v39);
    v34 = static CloudResourceRequestKind.== infix(_:_:)(&v62, &v55);
    sub_2172CB1C4(v55, v56, v57);
    sub_2172CB1C4(v62, v63, v64);
  }

  return v34 & 1;
}

void sub_2172C40E4(uint64_t a1)
{
  v30 = *(v1 + 56);
  v27 = *(v1 + 64);
  v3 = *(v1 + 80);
  v29 = *(v1 + 72);
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_200();
  sub_2172CAEFC(v4, v5, v6, v7, v8, v9, v10);
  sub_2172C3DB4(a1, v11, v12, v13, v14, v15, v16, v17, v27, v29);
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_200();
  sub_2172CB00C(v18, v19, v20, v21, v22, v23, v24);
  MEMORY[0x21CEA3550](v30);
  if (!v3)
  {
    v25 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v25 = 2;
LABEL_5:
    MEMORY[0x21CEA3550](v25);
    OUTLINED_FUNCTION_96();
    return;
  }

  MEMORY[0x21CEA3550](1);
  MEMORY[0x21CEA3550](v28);
  OUTLINED_FUNCTION_96();

  sub_217751FF8();
}

uint64_t sub_2172C41E8()
{
  OUTLINED_FUNCTION_238();
  sub_2172C40E4(v1);
  return sub_217753238();
}

uint64_t sub_2172C4240(uint64_t a1)
{
  sub_2177531E8();
  sub_2172C3DB4(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0]);
  return sub_217753238();
}

uint64_t sub_2172C42AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  sub_2177531E8();
  a4(v7, a2);
  return sub_217753238();
}

void static MusicCatalogResourceRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_143();
  v10 = *(v8 + 8);
  if (*(v9 + 8))
  {
    if (!*(v8 + 8))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (*v1 != *v0)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = OUTLINED_FUNCTION_20_13();
    type metadata accessor for PartialMusicAsyncProperty(v11, v12, v13, v14);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_37_4();
    if (sub_217752448())
    {
      sub_217270404();
      if (v15)
      {
        OUTLINED_FUNCTION_237(v31);
        OUTLINED_FUNCTION_237(v30);
        OUTLINED_FUNCTION_187_0(v32);
        OUTLINED_FUNCTION_187_0(__src);
        v16 = OUTLINED_FUNCTION_20_13();
        v18 = type metadata accessor for MusicCatalogResourceRequest.Kind(v16, v17, v5, v3);
        OUTLINED_FUNCTION_79();
        v20 = v19;
        v21 = *(v19 + 16);
        v21(v28, v31, v18);
        v21(v28, v32, v18);
        v22 = sub_2172C2BC4(v30, __src, v7, v5, v3);
        memcpy(__dst, __src, 0x59uLL);
        v23 = *(v20 + 8);
        v23(__dst, v18);
        memcpy(v34, v30, 0x59uLL);
        v23(v34, v18);
        if (v22)
        {
          v24 = v1[19];
          v25 = v1[20];
          __swift_project_boxed_opaque_existential_1(v1 + 16, v24);
          v26 = *(v25 + 112);
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
          if (v26(v0 + 16, v27, v24, v25))
          {
            sub_217274164(v1[21], v0[21]);
          }
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_13();
}

uint64_t MusicCatalogResourceRequest.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = *v1;
    sub_217753208();
    MEMORY[0x21CEA3550](v3);
  }

  v4 = OUTLINED_FUNCTION_20_13();
  type metadata accessor for PartialMusicAsyncProperty(v4, v5, v6, v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_93();
  sub_217752438();
  sub_21727D208(a1, v1[3]);
  OUTLINED_FUNCTION_237(v19);
  OUTLINED_FUNCTION_237(v18);
  v8 = OUTLINED_FUNCTION_20_13();
  v12 = type metadata accessor for MusicCatalogResourceRequest.Kind(v8, v9, v10, v11);
  OUTLINED_FUNCTION_79();
  v14 = v13;
  (*(v13 + 16))(__dst, v19, v12);
  sub_2172C3060(a1, v12);
  memcpy(__dst, v18, 0x59uLL);
  (*(v14 + 8))(__dst, v12);
  v15 = v1[19];
  v16 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v15);
  (*(v16 + 120))(a1, v15, v16);
  sub_21728348C(a1, v1[21]);
  sub_217753208();
  return MEMORY[0x21CEA3550](*(v1 + 177));
}

uint64_t MusicCatalogResourceRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  MusicCatalogResourceRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2172C4750(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogResourceRequest.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2172C4794(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C47B8, 0, 0);
}

uint64_t sub_2172C48C0(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C48E4, 0, 0);
}

uint64_t sub_2172C49EC(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C4A10, 0, 0);
}

uint64_t sub_2172C4B18(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C4B3C, 0, 0);
}

uint64_t sub_2172C4C44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2172C4D24(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C4D48, 0, 0);
}

uint64_t sub_2172C4E54(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C4E78, 0, 0);
}

uint64_t sub_2172C4F80(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C4FA4, 0, 0);
}

uint64_t sub_2172C50AC(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C50D0, 0, 0);
}

uint64_t sub_2172C51D8(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C51FC, 0, 0);
}

uint64_t sub_2172C5308(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C532C, 0, 0);
}

uint64_t sub_2172C5434(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C5458, 0, 0);
}

uint64_t sub_2172C5564(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C5588, 0, 0);
}

uint64_t sub_2172C5690(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C56B4, 0, 0);
}

uint64_t sub_2172C57BC(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  return MEMORY[0x2822009F8](sub_2172C57E0, 0, 0);
}

uint64_t MusicItem<>.with(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[51] = a5;
  v6[52] = v5;
  v6[49] = a3;
  v6[50] = a4;
  v6[47] = a1;
  v6[48] = a2;
  OUTLINED_FUNCTION_35_1();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C591C()
{
  OUTLINED_FUNCTION_69_5();
  v12 = v0;
  MusicItem.identifierSet.getter(*(v0 + 392), *(v0 + 400), v0 + 16);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v1 = MusicIdentifierSet.isLibraryResource.getter();
  sub_217269F50(v0 + 16);
  *(v0 + 369) = v1 & 1;
  OUTLINED_FUNCTION_66_3();
  v10 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 424) = v3;
  *v3 = v4;
  v3[1] = sub_2172C5A6C;
  v5 = *(v0 + 408);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 376);

  return v10(v8, v6, v0 + 369, v7, v5);
}

uint64_t sub_2172C5A6C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 432) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t MusicItem<>.with(_:preferredSource:)()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v6;
  *(v1 + 80) = v4;
  *(v1 + 56) = v12;
  *(v1 + 64) = v8;
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_0();
  *(v1 + 104) = v14;
  *(v1 + 112) = OUTLINED_FUNCTION_28_7();
  *(v1 + 16) = v9;
  *(v1 + 24) = v7;
  *(v1 + 32) = v5;
  *(v1 + 40) = v3;
  v15 = type metadata accessor for MusicAsyncPropertyRequest(0, v1 + 16);
  *(v1 + 120) = v15;
  OUTLINED_FUNCTION_15_3(v15);
  *(v1 + 128) = v16;
  *(v1 + 136) = OUTLINED_FUNCTION_28_7();
  *(v1 + 160) = *v11;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

{
  OUTLINED_FUNCTION_182();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 32) = *v9;
  OUTLINED_FUNCTION_66_3();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_19(v11);
  *v12 = v13;
  v12[1] = sub_2172C6110;

  return v15(v8, v6, v0 + 32, v4, v2);
}

uint64_t sub_2172C5CD8()
{
  v14 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  (*(*(v0 + 104) + 16))(v3, *(v0 + 96), v7);
  v12 = v1;
  v13 = 0;
  sub_217751DE8();
  sub_21738F0D4(v3, v8, &v12, &v13, v7, v6, v5, v4, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 144) = v9;
  *v9 = v10;
  v9[1] = sub_2172C5DF8;

  return sub_21738F380();
}

uint64_t sub_2172C5DF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172C5EF0()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_201_0();
  v1(v0);

  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2172C5F60()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_201_0();
  v1(v0);

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2172C6110()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_2172C6248(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v2 == *(*v4 + 16) && v3 == *(*v4 + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_217753058() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_2172C62BC(uint64_t a1, uint64_t a2)
{
  sub_2172C3424();
  v3 = 0;
  v26 = v4;
  v27 = v5;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
LABEL_2:
  while (v3 != v6)
  {
    v8 = (v7 + 16 * v3);
    v9 = *v8;
    v10 = v8[1];
    ++v3;
    v11 = *(v27 + 16);
    if (v26)
    {

      v12 = OUTLINED_FUNCTION_20_6();
      sub_2172CA228(v12, v13, v14, v11, v15);
      v17 = v16;

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v18 = (v27 + 40);
      v19 = v11 + 1;
      while (--v19)
      {
        v20 = v18 + 2;
        if (*(v18 - 1) != v9 || *v18 != v10)
        {
          OUTLINED_FUNCTION_93_3();
          v22 = sub_217753058();
          v18 = v20;
          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }

LABEL_14:
      v23 = OUTLINED_FUNCTION_20_6();
      sub_2172C97D8(v23, v24);
    }
  }

  return v26;
}

uint64_t _MusicCatalogResourceRequestOption.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

uint64_t sub_2172C6464(uint64_t a1)
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

uint64_t sub_2172C64A4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775ABA8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776C120);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C65D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776C118);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6664()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AB88);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C66FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BFF0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BFE8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6824()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AB68);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C68BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BEC0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BEB8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C69E4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AB48);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BD60);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BD58);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6BAC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AB28);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C6C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BC08);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BC00);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6D6C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AB08);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C6E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BAD8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BAD0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C6F2C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AAE8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C6FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BAC0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776BAB8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C70EC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AAC8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C7184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B970);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B968);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C72AC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AAA8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C7344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B798);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C73D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B790);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C746C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AA88);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C7504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&dword_21776AE10);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776C3B0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C762C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AA70);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C76C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B668);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B660);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C77EC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AA50);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C7884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B4F8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B4F0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C79AC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AA30);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C7A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B240);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776B238);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7B6C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_9_14(&unk_21775AA10);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_17(v2);

  return v6(v4);
}

uint64_t sub_2172C7C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776AFF0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_173_0();
  v10 = v3;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_9_14(&unk_21776AFE8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_19(v5);

  return v8(v7);
}

uint64_t sub_2172C7D2C()
{
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_115_2(v2, v3);
  sub_21763246C(v4, v5);
  OUTLINED_FUNCTION_8_17();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F68, &unk_21775A9B0);
  if (OUTLINED_FUNCTION_235(v11))
  {
    v12 = OUTLINED_FUNCTION_212_0();
    sub_21763246C(v12, v13);
    OUTLINED_FUNCTION_74_3();
    if (!v15)
    {
      goto LABEL_14;
    }

    v9 = v14;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v0;
    OUTLINED_FUNCTION_218();
  }

  else
  {
    OUTLINED_FUNCTION_93_3();
    sub_2172C8CA8(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_218();

    return sub_217751DE8();
  }
}

void sub_2172C7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_75_3();
  sub_2176325CC();
  OUTLINED_FUNCTION_8_17();
  if (v14)
  {
    __break(1u);
LABEL_12:
    sub_217753178();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F60, &qword_21775A9A8);
  OUTLINED_FUNCTION_107_2();
  if (sub_217752CB8())
  {
    sub_2176325CC();
    OUTLINED_FUNCTION_166_0();
    if (!v18)
    {
      goto LABEL_12;
    }

    v15 = v17;
  }

  if (v16)
  {
    *(*(*v11 + 56) + 8 * v15) = v10;
    OUTLINED_FUNCTION_218();
  }

  else
  {
    OUTLINED_FUNCTION_157_2();
    OUTLINED_FUNCTION_218();

    sub_2172C8CF0(v19, v20, v21, v22);
  }
}

uint64_t sub_2172C7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_213_1();
  v13 = v12;
  v15 = v14;
  sub_217632668();
  OUTLINED_FUNCTION_8_17();
  if (v17)
  {
    __break(1u);
LABEL_12:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v18 = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B80, &qword_2177595A8);
  if (OUTLINED_FUNCTION_90_2(v19))
  {
    OUTLINED_FUNCTION_88_3();
    sub_217632668();
    if ((v18 & 1) != (v20 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v18)
  {
    OUTLINED_FUNCTION_13();

    return sub_2172CAD88(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_174_1();
    sub_2172C8D28(v25, v26, v27, v28, v13, v15, v29);
    sub_217751DE8();
    OUTLINED_FUNCTION_13();

    return sub_217751DE8();
  }
}

void sub_2172C8018()
{
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_115_2(v2, v3);
  sub_21763246C(v4, v5);
  OUTLINED_FUNCTION_8_17();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_217753178();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
  if (OUTLINED_FUNCTION_235(v11))
  {
    v12 = OUTLINED_FUNCTION_212_0();
    sub_21763246C(v12, v13);
    OUTLINED_FUNCTION_74_3();
    if (!v15)
    {
      goto LABEL_12;
    }

    v9 = v14;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v0;
    OUTLINED_FUNCTION_218();
  }

  else
  {
    OUTLINED_FUNCTION_93_3();
    sub_2172C8D88(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_218();

    sub_217751DE8();
  }
}

_OWORD *sub_2172C80EC(_OWORD *a1, uint64_t a2)
{
  sub_2176326D0(a2);
  OUTLINED_FUNCTION_8_17();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F90, &qword_21775ABE0);
  OUTLINED_FUNCTION_107_2();
  if (sub_217752CB8())
  {
    sub_2176326D0(a2);
    OUTLINED_FUNCTION_74_3();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v2;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1((v12[7] + 32 * v8));
    v13 = OUTLINED_FUNCTION_93();

    return sub_2172124CC(v13, v14);
  }

  else
  {
    sub_2172CB124(a2, v16);
    return sub_2172C8DD0(v8, v16, a1, v12);
  }
}

void sub_2172C826C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  a4(a2);
  OUTLINED_FUNCTION_8_17();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_217752CB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4(a2);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_217753178();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v7 + 56) + 32 * v15));
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_95_0();

    sub_2172124CC(v19, v20);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_157_2();
    sub_2172C8F00(v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_95_0();
  }
}

_OWORD *sub_2172C83B4(uint64_t a1, char a2)
{
  sub_217632798();
  OUTLINED_FUNCTION_8_17();
  if (v5)
  {
    __break(1u);
LABEL_14:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v6 = v3;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C20, &qword_217759620);
  if (sub_217752CB8())
  {
    sub_217632798();
    OUTLINED_FUNCTION_166_0();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v2 + 56) + 32 * v6));
    v10 = OUTLINED_FUNCTION_93();

    return sub_2172124CC(v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_212_0();

    return sub_2172C8E4C(v13, v14, v15);
  }
}

_OWORD *sub_2172C84AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_75_3();
  sub_2176327E4(v12 & 1);
  OUTLINED_FUNCTION_8_17();
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C80, &unk_217759680);
  OUTLINED_FUNCTION_107_2();
  if (sub_217752CB8())
  {
    sub_2176327E4(v10 & 1);
    OUTLINED_FUNCTION_74_3();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v11 + 56) + 32 * v16));
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_218();

    return sub_2172124CC(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_218();

    return sub_2172C8EB0(v24, v25, v26, v27, v28);
  }
}

uint64_t sub_2172C8720()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_213_1();
  v2 = v1;
  v4 = v3;
  sub_2176324F4(v5, v6, v7);
  OUTLINED_FUNCTION_8_17();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277E0, &qword_21776B230);
  if (OUTLINED_FUNCTION_90_2(v13))
  {
    v14 = OUTLINED_FUNCTION_89_4();
    sub_2176324F4(v14, v15, v16);
    OUTLINED_FUNCTION_165_1();
    if (!v18)
    {
      goto LABEL_14;
    }

    v11 = v17;
  }

  if (v12)
  {
    v19 = (*(*v0 + 56) + 16 * v11);
    *v19 = v4;
    v19[1] = v2;

    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_113();
    sub_2172C8F4C(v22, v23, v24, v25, v4, v2, v26);
    OUTLINED_FUNCTION_13();

    return sub_217751DE8();
  }
}

void sub_2172C8844()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_213_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_21763246C(v3, v1);
  OUTLINED_FUNCTION_8_17();
  if (v13)
  {
    __break(1u);
LABEL_14:
    sub_217753178();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
  if (OUTLINED_FUNCTION_90_2(v16))
  {
    sub_21763246C(v4, v2);
    OUTLINED_FUNCTION_165_1();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v0;
  if (v15)
  {
    v20 = *(v19 + 56) + 24 * v14;
    *v20 = v10;
    *(v20 + 8) = v8;
    *(v20 + 16) = v6;
    OUTLINED_FUNCTION_13();

    sub_21726A608(v21, v22, v23);
  }

  else
  {
    sub_2172C8F9C(v14, v4, v2, v10, v8, v6, v19);
    OUTLINED_FUNCTION_13();

    sub_217751DE8();
  }
}

void sub_2172C896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_213_1();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_217632AB4();
  OUTLINED_FUNCTION_8_17();
  if (v23)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = v21;
  v25 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F88, &unk_21775ABD0);
  if ((OUTLINED_FUNCTION_90_2(v26) & 1) == 0)
  {
    goto LABEL_5;
  }

  v27 = sub_217632AB4();
  if ((v25 & 1) != (v28 & 1))
  {
LABEL_13:
    sub_217753178();
    __break(1u);
    return;
  }

  v24 = v27;
LABEL_5:
  if (v25)
  {
    v29 = (*(*v12 + 56) + 32 * v24);
    *v29 = v20;
    v29[1] = v18;
    v29[2] = v16;
    v29[3] = v14;
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    sub_2172C8FEC(v31, v32, v33, v34, v35, v36, v37);
  }
}

void sub_2172C8A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_75_3();
  sub_217632AB4();
  OUTLINED_FUNCTION_8_17();
  if (v14)
  {
    __break(1u);
LABEL_14:
    sub_217753178();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F80, &qword_21775ABC8);
  OUTLINED_FUNCTION_107_2();
  if (sub_217752CB8())
  {
    sub_217632AB4();
    OUTLINED_FUNCTION_166_0();
    if (!v18)
    {
      goto LABEL_14;
    }

    v15 = v17;
  }

  if (v16)
  {
    *(*(*v11 + 56) + 8 * v15) = v10;
    OUTLINED_FUNCTION_218();
  }

  else
  {
    OUTLINED_FUNCTION_157_2();
    OUTLINED_FUNCTION_218();

    sub_2172C9034(v20, v21, v22, v23);
  }
}

void sub_2172C8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_21763246C(a5, a6);
  OUTLINED_FUNCTION_8_17();
  if (v15)
  {
    __break(1u);
LABEL_14:
    sub_217753178();
    __break(1u);
    return;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F98, &qword_21775AC08);
  if (sub_217752CB8())
  {
    sub_21763246C(a5, a6);
    OUTLINED_FUNCTION_165_1();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  if (v17)
  {
    v20 = (*(*v7 + 56) + 32 * v16);
    *v20 = a1;
    v20[1] = a2;
    v20[2] = a3;
    v20[3] = a4;
    OUTLINED_FUNCTION_95_0();
  }

  else
  {
    OUTLINED_FUNCTION_52_6();
    sub_2172C9078(v22, v23, v24, v25, v26, a3, a4, v27);
    OUTLINED_FUNCTION_95_0();

    sub_217751DE8();
  }
}

unint64_t sub_2172C8CA8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_2172C8CF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_65_5(a1, a2, a3, a4);
  *(v7 + result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_2172C8D28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = (a7[7] + 48 * result);
  v9 = a6[1];
  *v8 = *a6;
  v8[1] = v9;
  v8[2] = a6[2];
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_2172C8D88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_91_3(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

_OWORD *sub_2172C8DD0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2172124CC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_2172C8E4C(unint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(a3 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  result = sub_2172124CC(a2, (*(a3 + 56) + 32 * a1));
  v5 = *(a3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v7;
  }

  return result;
}

_OWORD *sub_2172C8EB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_65_5(a1, a2, a3, a4);
  *(v8 + v6) = v7 & 1;
  result = sub_2172124CC(v10, (*(v9 + 56) + 32 * v6));
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

_OWORD *sub_2172C8F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_65_5(a1, a2, a3, a4);
  *(v8 + v6) = v7;
  result = sub_2172124CC(v10, (*(v9 + 56) + 32 * v6));
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

void sub_2172C8F4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_91_3(a1, a7 + 8 * (a1 >> 6));
  v9 = v8[6] + 24 * v7;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  v13 = (v8[7] + 16 * v7);
  *v13 = v14;
  v13[1] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_192_0(v8, v18);
  }
}

void sub_2172C8F9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_91_3(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * v7);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * v7;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_192_0(v8, v18);
  }
}

void sub_2172C8FEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_91_3(a1, a7 + 8 * (a1 >> 6));
  *(v8[6] + v7) = v9;
  v10 = (v8[7] + 32 * v7);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_192_0(v8, v17);
  }
}

unint64_t sub_2172C9034(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_2172C9078(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_2172C90C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_2176F7698();
  sub_217751DE8();

  v5 = sub_2176F8038(&v7, v4 + 32, v2, a1);

  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_2172C9160(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AC8, &qword_21775A320);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AD0, &qword_2177590A0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2172C9244(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2172C9314(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C8, &unk_2177589A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_2172C93E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2176F77F4();
  v4 = sub_2176F8760(&v6, v3 + 32, v1, a1);
  sub_217751DE8();

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2172C9480(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  v12 = *(a2 + 16);
  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v14 = MEMORY[0x21CEA1DB0](*(a2 + 16));
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if (v16 > 4)
  {
    v17 = MEMORY[0x21CEA1DC0]();
    a6(a2 + 32, v12, v17 + 16, v17 + 32);
    *a1 = v18;
  }

  else if (v12 >= 2)
  {
    v19 = a7(a2 + 32, v12);
    v17 = 0;
    *a1 = v19;
  }

  else
  {
    v17 = 0;
    *a1 = v12;
  }

  return v17;
}

void sub_2172C9560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = MEMORY[0x277D84F90];
  sub_217275C90(0, a2 & ~(a2 >> 63), 0, a4, a5, a6, a7);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v10 = (a1 + 16 * i);
    v11 = *v10;
    v12 = v10[1];
    v13 = v23 + 5;
    v14 = v23[2] + 1;
    while (--v14)
    {
      if (v11 != *(v13 - 1) || v12 != *v13)
      {
        v13 += 2;
        if ((sub_217753058() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v16 = v23[2];
    v17 = v23[3];
    sub_217751DE8();
    if (v16 >= v17 >> 1)
    {
      sub_217275C90(v17 > 1, v16 + 1, 1, v18, v19, v20, v21);
    }

    v23[2] = v16 + 1;
    v22 = &v23[2 * v16];
    v22[4] = v11;
    v22[5] = v12;
  }

  __break(1u);
}

void sub_2172C969C(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  sub_217276568(0, a2 & ~(a2 >> 63), 0);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v5 = (a1 + 16 * i);
    v6 = *v5;
    v7 = v5[1];
    v8 = v14 + 5;
    v9 = v14[2] + 1;
    while (--v9)
    {
      if (v6 != *(v8 - 1) || v7 != *v8)
      {
        v8 += 2;
        if ((sub_217753058() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v11 = v14[2];
    v12 = v14[3];
    sub_217751DE8();
    if (v11 >= v12 >> 1)
    {
      sub_217276568(v12 > 1, v11 + 1, 1);
    }

    v14[2] = v11 + 1;
    v13 = &v14[2 * v11];
    v13[4] = v6;
    v13[5] = v7;
  }

  __break(1u);
}

void sub_2172C97D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_169_2(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_17();
    sub_217275C90(v10, v11, v12, v13, v14, v15, v16);
    v4 = *v3;
  }

  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_217275C90(v17 > 1, v18 + 1, 1, v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_176_2();
  if (!v3)
  {
    if (v18 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_128_2(v19);
  if (MEMORY[0x21CEA1D80](v3[2] & 0x3F) <= v18)
  {
    if (v18 <= 0xE && (v3[3] & 0x3F) == 0)
    {

      *v2 = 0;
      return;
    }

LABEL_15:
    v21 = MEMORY[0x21CEA1DB0](v18 + 1);
    OUTLINED_FUNCTION_189_2(v21);
    return;
  }

  sub_2172C9B98();
  if (*v2)
  {
    OUTLINED_FUNCTION_96_2(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_2172C98F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_169_2(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_17();
    sub_217276568(v6, v7, v8);
    v4 = *v3;
  }

  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_217276568(v9 > 1, v10 + 1, 1);
  }

  OUTLINED_FUNCTION_176_2();
  if (!v3)
  {
    if (v10 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_128_2(v11);
  if (MEMORY[0x21CEA1D80](v3[2] & 0x3F) <= v10)
  {
    if (v10 <= 0xE && (v3[3] & 0x3F) == 0)
    {

      *v2 = 0;
      return;
    }

LABEL_15:
    v13 = MEMORY[0x21CEA1DB0](v10 + 1);
    OUTLINED_FUNCTION_189_2(v13);
    return;
  }

  sub_2172C9B98();
  if (*v2)
  {
    OUTLINED_FUNCTION_96_2(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_2172C9A08()
{
  OUTLINED_FUNCTION_214();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v10 = v0[1];
  v8 = v0 + 1;
  v9 = v10;
  sub_217751DE8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = OUTLINED_FUNCTION_17();
    sub_2172763CC(v12, v13, v14);
    v9 = *v8;
  }

  v16 = *(v9 + 16);
  v15 = *(v9 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_2172763CC(v15 > 1, v16 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v16 + 1;
  v17 = v9 + 24 * v16;
  *(v17 + 32) = v7;
  *(v17 + 40) = v5;
  *(v17 + 48) = v3 & 1;
  v1[1] = v9;
  v18 = *v1;
  if (!*v1)
  {
    if (v16 <= 0xE)
    {
      goto LABEL_17;
    }

LABEL_15:
    v20 = MEMORY[0x21CEA1DB0](v16 + 1);
    OUTLINED_FUNCTION_189_2(v20);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_128_2(isUniquelyReferenced_nonNull_native);
  if (MEMORY[0x21CEA1D80](*(v18 + 16) & 0x3FLL) <= v16)
  {
    if (v16 <= 0xE && (*(v18 + 24) & 0x3FLL) == 0)
    {

      *v1 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_2172C9B98();
  if (*v1)
  {
    OUTLINED_FUNCTION_96_2(*v1);
LABEL_17:
    OUTLINED_FUNCTION_213();
    return;
  }

  __break(1u);
}

void *sub_2172C9B48(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172C9B98()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_217751A48();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_2172C9CA0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v4 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_2172C9D04(v3[1], a2, 0, v4, a3);

  *v3 = v5;
  return result;
}

uint64_t sub_2172C9D04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x21CEA1DB0](v8, a2);
  v11 = 0;
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 5)
  {
    v11 = MEMORY[0x21CEA1DC0]();
    sub_2172C9D8C(a1, v11 + 16, v11 + 32, a5);
  }

  return v11;
}

uint64_t sub_2172C9DD4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        v7 = sub_217753238();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_2177519B8();

        if (v8)
        {
          while (1)
          {
            sub_217751A18();
          }
        }

        v7 = sub_217751A08();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_2172C9EFC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();

        v7 = sub_217753238();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_2177519B8())
        {
          while (1)
          {
            sub_217751A18();
          }
        }

        v7 = sub_217751A08();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_2172CA014(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();

        v7 = sub_217753238();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_2177519B8())
        {
          while (1)
          {
            sub_217751A18();
          }
        }

        v7 = sub_217751A08();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_2172CA130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164_1();
  v8 = v7 + 8;
  while (a4 != v5)
  {
    OUTLINED_FUNCTION_216_0();
    v10 = v10 && v9 == v4;
    if (v10)
    {
      return v5;
    }

    OUTLINED_FUNCTION_138_0();
    if (sub_217753058())
    {
      return v5;
    }

    ++v5;
    v8 += 16;
  }

  return 0;
}

uint64_t sub_2172CA1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_164_1();
  v9 = v8 + 8;
  while (a5 != v6)
  {
    OUTLINED_FUNCTION_216_0();
    v11 = v11 && v10 == v5;
    if (v11)
    {
      return v6;
    }

    OUTLINED_FUNCTION_138_0();
    if (sub_217753058())
    {
      return v6;
    }

    ++v6;
    v9 += 24;
  }

  return 0;
}

void sub_2172CA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_136_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  v9 = v50;
  sub_217753238();
  OUTLINED_FUNCTION_105_5();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_127_2(v10);
    OUTLINED_FUNCTION_27_11(v12, v13, v14, v15, v16, v17, v18, v19, v32, v34, v36, v38, v40, v42, v44, v46, v48, v49, v50[0], v50[1], v50[2], v50[3], v51);
    if ((v8 & 1) == 0)
    {
      do
      {
        v20 = (v5 + 16 * v9);
        v21 = v20[1];
        if (*v20 == v7 && v21 == v6)
        {
          break;
        }

        if (OUTLINED_FUNCTION_196(*v20, v21))
        {
          break;
        }

        v23 = sub_217751A18();
        v9 = OUTLINED_FUNCTION_45_7(v23, v24, v25, v26, v27, v28, v29, v30, v33, v35, v37, v39, v41, v43, v45, v47);
      }

      while ((v31 & 1) == 0);
    }

    OUTLINED_FUNCTION_154_0();
  }
}

void sub_2172CA2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  v11 = v52;
  sub_217753238();
  OUTLINED_FUNCTION_105_5();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_127_2(v12);
    OUTLINED_FUNCTION_27_11(v14, v15, v16, v17, v18, v19, v20, v21, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52[0], v52[1], v52[2], v52[3], v53);
    if ((a7 & 1) == 0)
    {
      do
      {
        v22 = (a4 + 24 * v11);
        v23 = v22[1];
        if (*v22 == a1 && v23 == a2)
        {
          break;
        }

        if (OUTLINED_FUNCTION_196(*v22, v23))
        {
          break;
        }

        v25 = sub_217751A18();
        v11 = OUTLINED_FUNCTION_45_7(v25, v26, v27, v28, v29, v30, v31, v32, v35, v37, v39, v41, v43, v45, v47, v49);
      }

      while ((v33 & 1) == 0);
    }

    OUTLINED_FUNCTION_154_0();
  }
}

uint64_t sub_2172CA388(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v6 + 1;
    v7 = (v5 + 16 * v6);
    sub_2177531E8();
    sub_217751DE8();
    sub_217751FF8();
    result = sub_217753238();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_2177519B8();

    while (1)
    {
      v8 = sub_2177519F8();
      if (v9)
      {
        break;
      }

      v10 = (v5 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (sub_217753058() & 1) != 0)
      {
        return 0;
      }

      sub_217751A18();
    }

    sub_217751A08();
    result = 1;
    ++v6;
    v4 = a3;
    if (v14 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2172CA53C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v6 = result;
  v7 = 0;
  while (2)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v9 = (v6 + 16 * v7);
    sub_2177531E8();
    sub_217751DE8();
    sub_217751FF8();

    result = sub_217753238();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_2177519B8();
    while (1)
    {
      v10 = sub_2177519F8();
      if (v11)
      {
        break;
      }

      v12 = (v6 + 16 * v10);
      v13 = *v12 == *v9 && v12[1] == v9[1];
      if (v13 || (sub_217753058() & 1) != 0)
      {
        return 0;
      }

      sub_217751A18();
    }

    sub_217751A08();
    result = 1;
    ++v7;
    if (v8 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2172CA6C0(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_217753058() & 1) == 0)
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

uint64_t sub_2172CA74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x21CEA3550](v4, a2);
  if (v4)
  {
    v6 = a3 + 40;
    do
    {
      result = sub_217751FF8();
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_2172CA7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24F50;
  if (!qword_27CB24F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24F50);
  }

  return result;
}

unint64_t sub_2172CA928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24F58;
  if (!qword_27CB24F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24F58);
  }

  return result;
}

uint64_t sub_2172CA97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit24CloudResourceRequestKindO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2172CA9F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_2172CAA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActiveMonitoring(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for _MusicCatalogResourceRequestOption(_BYTE *result, int a2, int a3)
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

uint64_t sub_2172CABC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_2172CAC04(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2172CAC88(void *result, uint64_t a2)
{
  v2 = result[6] & 0xCFFFFFFFFFFFFFF8;
  v3 = result[7] & 7;
  result[4] &= 1uLL;
  result[6] = v2;
  result[7] = v3 | (a2 << 63);
  return result;
}

uint64_t sub_2172CACCC@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X6>, uint64_t a4@<X8>)
{
  if (a2)
  {

    v6 = OUTLINED_FUNCTION_167_2();
    v7 = a3(v6);
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_167_2();
    result = v14(v13);
    v7 = result;
    v9 = v15;
    v11 = 0;
  }

  *a4 = v7;
  *(a4 + 8) = v9 & 1;
  *(a4 + 16) = v11;
  return result;
}

unint64_t sub_2172CAE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5930;
  if (!qword_280BE5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5930);
  }

  return result;
}

uint64_t sub_2172CAE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172CAEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  switch(a7 >> 62)
  {
    case 1uLL:

      break;
    case 2uLL:
      break;
    case 3uLL:
      sub_217751DE8();
      break;
    default:

      sub_217751DE8();
      break;
  }

  return sub_217751DE8();
}

unint64_t sub_2172CAFA8()
{
  result = qword_27CB24F70;
  if (!qword_27CB24F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB27720, &unk_21775A490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24F70);
  }

  return result;
}

void sub_2172CB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;

  switch(v7)
  {
    case 1uLL:

      goto LABEL_7;
    case 2uLL:
      return;
    case 3uLL:

      break;
    default:

LABEL_7:

      break;
  }
}

uint64_t objectdestroy_62Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2172CB1B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    return sub_217751DE8();
  }

  return result;
}

double sub_2172CB1C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
  }

  return result;
}

uint64_t sub_2172CB230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAPI.Endpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172CB294(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2172CB2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAPI.Endpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172CB34C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2172CB3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2172CB3F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2172CB440(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 2 * -a2;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2172CB4AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 32) &= 1uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_2172CB4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A22CatalogResourceRequestV13FilterContextVyx_GSg(uint64_t a1)
{
  if ((*(a1 + 32) >> 1) > 0x80000000)
  {
    return -(*(a1 + 32) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172CB528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_2172CB568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2172CB5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2172CB600(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2172CB648(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 2 * -a2;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_11()
{
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 376), v0) + 2;

  return sub_21729C5E8(v2, v1 + 416);
}

unint64_t OUTLINED_FUNCTION_26_11()
{
  v4 = *(v3 + 200);
  *(v0 + 16) = v1;
  return v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_45_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_2177519F8();
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1, uint64_t a2)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2172CAEFC(a1, a2, a3, v6, v5, v4, v3);
}

void *OUTLINED_FUNCTION_58_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 + 16), 0x161uLL);
}

void *OUTLINED_FUNCTION_59_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);

  return memcpy((v9 + 16), __srca, 0x161uLL);
}

__n128 OUTLINED_FUNCTION_62_5@<Q0>(char a1@<W8>, __n128 a2@<Q1>)
{
  v4 = v3[65].n128_u8[8];
  v5 = v3[65].n128_u64[0];
  v6 = v3[62].n128_u64[1];
  v7 = v3[63].n128_u64[1] & 7 | 0x8000000000000000;
  v3[135] = a2;
  v3[136].n128_u64[0] = a1 & 1;
  v3[136].n128_u64[1] = v6;
  v3[137].n128_u64[0] = v2 & 0xCFFFFFFFFFFFFFF8;
  v3[137].n128_u64[1] = v7;
  result = v3[64];
  v3[138] = result;
  v3[139].n128_u64[0] = v5;
  v3[139].n128_u8[8] = v4;
  return result;
}

double OUTLINED_FUNCTION_63_4()
{
}

uint64_t OUTLINED_FUNCTION_64_5()
{
}

uint64_t OUTLINED_FUNCTION_82_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_90_2(uint64_t a1)
{

  return sub_217752CB8();
}

double OUTLINED_FUNCTION_92_2()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 3192);

  return type metadata accessor for CloudResourceCollection(0, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_96_2@<X0>(uint64_t a1@<X8>)
{

  return sub_2172C9BF0((a1 + 16), a1 + 32, v2, v1);
}

uint64_t OUTLINED_FUNCTION_99_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_116_3()
{
  v1 = *(v0[23] + 24);
  v0[62] = v1;
  v0[19] = v1;
}

void OUTLINED_FUNCTION_126_2(uint64_t a1, uint64_t a2)
{

  sub_2172B1A50(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_127_2(uint64_t a1)
{
  v5 = v1 & a1;

  return MEMORY[0x28214E640](v5, v3, v2);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_130_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_131_3(uint64_t a1)
{

  return sub_217752728();
}

uint64_t OUTLINED_FUNCTION_132_1()
{

  return sub_217269F50(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t a1, uint64_t a2)
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_134_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_2177531E8();
}

void OUTLINED_FUNCTION_137_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_2172B1A50(0, 1, 1, a4);
}

void *OUTLINED_FUNCTION_168_1()
{
  v2 = (*(v0 + 3184) + 32);

  return memcpy((v0 + 2720), v2, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_169_2(uint64_t a1, uint64_t a2)
{

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_176_2()
{
  *(v4 + 16) = v1;
  v6 = v4 + 16 * v5;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v0 + 8) = v4;
}

void *OUTLINED_FUNCTION_187_0(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x59uLL);
}

void OUTLINED_FUNCTION_188_0(uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t x8_0@<X8>)
{

  sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, a3, a4, v6, v5, x8_0);
}

uint64_t OUTLINED_FUNCTION_189_2(uint64_t a1)
{

  return sub_2172C9CA0(a1, v2, v1);
}

void OUTLINED_FUNCTION_190_2()
{

  sub_2172BE0A0();
}

uint64_t OUTLINED_FUNCTION_191_1()
{
}

uint64_t OUTLINED_FUNCTION_193_1()
{
}

void OUTLINED_FUNCTION_194_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = *(v7 + 512);

  sub_2172CB00C(v9, a2, a3, a4, a5, a6, a7);
}

void OUTLINED_FUNCTION_195_2(uint64_t a1)
{

  sub_2172B1A50(a1, v1, 1, v2);
}

void OUTLINED_FUNCTION_218_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 56) + 16 * v12);
  *v15 = v14;
  v15[1] = a12;
}

void OUTLINED_FUNCTION_227_0(uint64_t a1@<X8>)
{

  sub_2172768E8(0, a1 + 1, 1);
}

void *OUTLINED_FUNCTION_228_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 + 960), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_229_0()
{
}

uint64_t OUTLINED_FUNCTION_230_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_2172C9480(va, v9, 0, 1, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_232(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_235(uint64_t a1)
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_236()
{

  return sub_2172CA838(v1 + 128, v0 + 3048);
}

void *OUTLINED_FUNCTION_237(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_240_0()
{
}

uint64_t CloudStation.AirTime.start.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t CloudStation.AirTime.end.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t CloudStation.AirTime.convertToStationAirTime()@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v69 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31();
  v61 = v5;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v6);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_31();
  v62 = v9;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10);
  v65 = &v59 - v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v64 = &v59 - v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v17);
  v67 = &v59 - v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  MEMORY[0x28223BE20](v25);
  v66 = &v59 - v26;
  v27 = v1[1];
  v28 = v1[2];
  v29 = v1[3];
  v63 = v28;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v30 = type metadata accessor for CloudFormatter(0);
  v31 = __swift_project_value_buffer(v30, qword_280BE8918);
  OUTLINED_FUNCTION_4_10(v24);
  if (v27)
  {
    v32 = v31;
    v33 = v29;
    v34 = *(v30 + 24);
    v60 = v32;
    v35 = *(v32 + v34);
    v36 = sub_217751F18();
    v37 = [v35 dateFromString_];

    if (v37)
    {
      sub_2177517C8();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v29 = v33;
    sub_2172CCAB0(v24);
    __swift_storeEnumTagSinglePayload(v21, v38, 1, v2);
    sub_217260E5C(v21, v24);
    v39 = v66;
    sub_217260E5C(v24, v66);
    v31 = v60;
  }

  else
  {
    sub_2172CCAB0(v24);
    v39 = v66;
    OUTLINED_FUNCTION_4_10(v66);
  }

  OUTLINED_FUNCTION_4_10(v16);
  v40 = v67;
  if (v29)
  {
    v41 = *(v31 + *(v30 + 24));
    v42 = sub_217751F18();
    v43 = [v41 dateFromString_];

    if (v43)
    {
      v44 = v64;
      sub_2177517C8();

      v45 = 0;
      v46 = v68;
    }

    else
    {
      v45 = 1;
      v46 = v68;
      v44 = v64;
    }

    v47 = v65;
    sub_2172CCAB0(v16);
    __swift_storeEnumTagSinglePayload(v44, v45, 1, v2);
    sub_217260E5C(v44, v16);
    sub_217260E5C(v16, v40);
  }

  else
  {
    sub_2172CCAB0(v16);
    OUTLINED_FUNCTION_4_10(v40);
    v46 = v68;
    v47 = v65;
  }

  sub_217260E5C(v39, v47);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v2);
  v49 = v69;
  if (EnumTagSinglePayload == 1)
  {
    sub_2172CCAB0(v40);
  }

  else
  {
    v50 = *(v69 + 32);
    v51 = OUTLINED_FUNCTION_5_3();
    v50(v51);
    v47 = v62;
    sub_217260E5C(v40, v62);
    if (__swift_getEnumTagSinglePayload(v47, 1, v2) != 1)
    {
      v55 = v61;
      (v50)(v61, v47, v2);
      v56 = v70;
      (v50)(v70, v46, v2);
      v57 = type metadata accessor for Station._AirTime(0);
      (v50)(v56 + *(v57 + 20), v55, v2);
      v53 = v56;
      v54 = 0;
      v52 = v57;
      return __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
    }

    (*(v49 + 8))(v46, v2);
  }

  sub_2172CCAB0(v47);
  v52 = type metadata accessor for Station._AirTime(0);
  v53 = v70;
  v54 = 1;
  return __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
}

uint64_t sub_2172CCAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CloudStation.AirTime.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2172CCBC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_2172CCC84(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_2172CCCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172CCBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172CCCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172CCEC8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172CCD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172CCEC8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudStation.AirTime.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA8, &qword_21775B0B8);
  OUTLINED_FUNCTION_0_0();
  v15 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(v1 + 16);
  v14[1] = *(v1 + 24);
  v14[2] = v9;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172CCEC8(v10, v11, v12);
  sub_2177532F8();
  v17 = 0;
  sub_217752EF8();
  if (!v2)
  {
    v16 = 1;
    sub_217752EF8();
  }

  return (*(v15 + 8))(v8, v4);
}

unint64_t sub_2172CCEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4D38;
  if (!qword_280BE4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D38);
  }

  return result;
}

uint64_t CloudStation.AirTime.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudStation.AirTime.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudStation.AirTime.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FB0, &qword_21775B0C0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172CCEC8(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = sub_217752E18();
    v11 = v10;
    v12 = sub_217752E18();
    v14 = v13;
    v17 = v12;
    v15 = OUTLINED_FUNCTION_5_3();
    v16(v15);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v17;
    a2[3] = v14;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2172CD2A0(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudStation.AirTime.hash(into:)(v4);
  return sub_217753238();
}

uint64_t Station._AirTime.convertToCloudStationAirTime()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v56 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_31();
  v51 = v6;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_31();
  v53 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v21 = type metadata accessor for CloudFormatter(0);
  v22 = __swift_project_value_buffer(v21, qword_280BE8918);
  v23 = *(v56 + 16);
  v54 = v2;
  v52 = v23;
  v23(v20, v2, v3);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v3);
  sub_2172610A0(v20, v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v3);
  v49 = v22;
  v50 = v21;
  if (EnumTagSinglePayload == 1)
  {
    sub_2172CCAB0(v20);
    sub_2172CCAB0(v17);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = v22;
    v28 = v56;
    (*(v56 + 32))(v9, v17, v3);
    v29 = *(v27 + *(v21 + 24));
    v30 = sub_2177517A8();
    v31 = [v29 stringFromDate_];
    v32 = v28;
    v33 = v31;

    v25 = sub_217751F48();
    v26 = v34;

    (*(v32 + 8))(v9, v3);
    sub_2172CCAB0(v20);
  }

  v35 = type metadata accessor for Station._AirTime(0);
  v52(v14, v54 + *(v35 + 20), v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v36 = v53;
  sub_2172610A0(v14, v53);
  if (__swift_getEnumTagSinglePayload(v36, 1, v3) == 1)
  {
    sub_2172CCAB0(v14);
    result = sub_2172CCAB0(v36);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v40 = v56;
    v41 = v25;
    v42 = v51;
    (*(v56 + 32))(v51, v36, v3);
    v43 = *(v49 + *(v50 + 24));
    v44 = sub_2177517A8();
    v45 = [v43 stringFromDate_];

    v38 = sub_217751F48();
    v39 = v46;

    v47 = v42;
    v25 = v41;
    (*(v40 + 8))(v47, v3);
    result = sub_2172CCAB0(v14);
  }

  v48 = v55;
  *v55 = v25;
  v48[1] = v26;
  v48[2] = v38;
  v48[3] = v39;
  return result;
}

unint64_t sub_2172CD6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FB8;
  if (!qword_27CB24FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FB8);
  }

  return result;
}

_BYTE *_s7AirTimeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2172CD820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FC0;
  if (!qword_27CB24FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FC0);
  }

  return result;
}

unint64_t sub_2172CD878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4D28;
  if (!qword_280BE4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D28);
  }

  return result;
}

unint64_t sub_2172CD8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4D30;
  if (!qword_280BE4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4D30);
  }

  return result;
}

void __swiftcall CloudSpatialOffset.init(timeStampInMilliseconds:offsetInMilliseconds:)(MusicKit::CloudSpatialOffset *__return_ptr retstr, Swift::Int_optional timeStampInMilliseconds, Swift::Int_optional offsetInMilliseconds)
{
  retstr->timeStampInMilliseconds.value = timeStampInMilliseconds.value;
  retstr->timeStampInMilliseconds.is_nil = timeStampInMilliseconds.is_nil;
  *(&retstr->offsetInMilliseconds.value + 7) = offsetInMilliseconds.value;
  BYTE6(retstr[1].timeStampInMilliseconds.value) = offsetInMilliseconds.is_nil;
}

uint64_t static CloudSpatialOffset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2172CD9B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002177AB850 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002177AB870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

unint64_t sub_2172CDA8C(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_2172CDACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172CD9B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172CDAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172CDCEC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172CDB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172CDCEC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudSpatialOffset.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FC8, &qword_21775B2E0);
  OUTLINED_FUNCTION_0_0();
  v14 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v13 = *(v1 + 16);
  v15 = *(v1 + 24);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172CDCEC(v9, v10, v11);
  sub_2177532F8();
  v17 = 0;
  sub_217752F28();
  if (!v2)
  {
    v16 = 1;
    sub_217752F28();
  }

  return (*(v14 + 8))(v8, v4);
}

unint64_t sub_2172CDCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FD0;
  if (!qword_27CB24FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FD0);
  }

  return result;
}

uint64_t CloudSpatialOffset.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_217753208();
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      return MEMORY[0x21CEA3550](v1);
    }
  }

  else
  {
    v4 = *v0;
    sub_217753208();
    MEMORY[0x21CEA3550](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_217753208();
}

uint64_t CloudSpatialOffset.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v2 != 1)
  {
    MEMORY[0x21CEA3550](v1);
  }

  sub_217753208();
  if (!v4)
  {
    MEMORY[0x21CEA3550](v3);
  }

  return sub_217753238();
}

uint64_t CloudSpatialOffset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FD8, &qword_21775B2E8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172CDCEC(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    v24 = 0;
    v14 = sub_217752E48();
    v16 = v15;
    v23 = 1;
    v18 = sub_217752E48();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    *a2 = v14;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v18;
    *(a2 + 24) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2172CE058(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v3 != 1)
  {
    MEMORY[0x21CEA3550](v2);
  }

  sub_217753208();
  if (!v5)
  {
    MEMORY[0x21CEA3550](v4);
  }

  return sub_217753238();
}

unint64_t sub_2172CE104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FE0;
  if (!qword_27CB24FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FE0);
  }

  return result;
}

uint64_t sub_2172CE158(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172CE178(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSpatialOffset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2172CE298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FE8;
  if (!qword_27CB24FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FE8);
  }

  return result;
}

unint64_t sub_2172CE2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FF0;
  if (!qword_27CB24FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FF0);
  }

  return result;
}

unint64_t sub_2172CE348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24FF8;
  if (!qword_27CB24FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24FF8);
  }

  return result;
}

double sub_2172CE3D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_128_3(a1);
    sub_2172E3D54();
  }

  else
  {
    *(a2 + 64) = 0;
    return OUTLINED_FUNCTION_71_5(a2);
  }

  return result;
}

double sub_2172CE414@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_128_3(a1);
    sub_2172E3D54();
  }

  else
  {
    *(a2 + 64) = 0;
    return OUTLINED_FUNCTION_71_5(a2);
  }

  return result;
}

double sub_2172CE450@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_128_3(a1);
    sub_2172E3D54();
  }

  else
  {
    *(a2 + 64) = 0;
    return OUTLINED_FUNCTION_71_5(a2);
  }

  return result;
}

double sub_2172CE48C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE4C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE4FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE534@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE56C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE5A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_128_3(a1);
    sub_2172E3D54();
  }

  else
  {
    *(a2 + 64) = 0;
    return OUTLINED_FUNCTION_71_5(a2);
  }

  return result;
}

double sub_2172CE5E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE618@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE650@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_128_3(a1);
    sub_2172E3D54();
  }

  else
  {
    *(a2 + 64) = 0;
    return OUTLINED_FUNCTION_71_5(a2);
  }

  return result;
}

double sub_2172CE68C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CE6C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_71_5(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

uint64_t sub_2172CE724()
{
  OUTLINED_FUNCTION_215_1();
  v1 = v0;
  v3 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  if (v3)
  {
    sub_2172E3D54();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v7, 1, v6);
}

double sub_2172CE81C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v2 = OUTLINED_FUNCTION_128_3(a1);
    sub_2172830F8(v2, v3);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_2172CE84C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_128_3(a1);
    sub_2172E3D54();
  }

  else
  {

    bzero(a2, 0x300uLL);
  }
}

double sub_2172CE8D4()
{
  OUTLINED_FUNCTION_214_1();
  if (v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    if (*(*(v2 + 56) + 16))
    {

      v5(v14, 0);
      v6 = OUTLINED_FUNCTION_188_1();
      sub_21725CF00(v6, v7);
LABEL_7:
      v12 = v14[1];
      *v0 = v14[0];
      *(v0 + 16) = v12;
      result = *&v15;
      *(v0 + 32) = v15;
      *(v0 + 48) = v16;
      return result;
    }
  }

  else if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_209_1();
    v8 = sub_2172E3D54();
    v1(v14, v8);
    OUTLINED_FUNCTION_29_5();
    sub_2171F0738(v9, v10, v11);
    goto LABEL_7;
  }

  return OUTLINED_FUNCTION_205();
}

void sub_2172CEB60()
{
  OUTLINED_FUNCTION_214_1();
  if (v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    if (*(*(v2 + 56) + 16))
    {

      v5(v13, 0);
      v6 = OUTLINED_FUNCTION_188_1();
      sub_21725CF00(v6, v7);
LABEL_7:
      v12 = v13[1];
      *v0 = v13[0];
      *(v0 + 16) = v12;
      *(v0 + 32) = v14[0];
      *(v0 + 41) = *(v14 + 9);
      return;
    }
  }

  else if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_209_1();
    v8 = sub_2172E3D54();
    v1(v13, v8);
    OUTLINED_FUNCTION_29_5();
    sub_2171F0738(v9, v10, v11);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_205();
  *(v0 + 56) = -1;
}

double sub_2172CED78@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_194_1(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

double sub_2172CEDB0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_194_1(a2);
  }

  OUTLINED_FUNCTION_128_3(a1);
  sub_2172E3D54();
  return result;
}

void sub_2172CEDE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v2 = OUTLINED_FUNCTION_128_3(a1);
    sub_217275AA0(v2, v3);
  }

  else
  {
    bzero(a2, 0x2EAuLL);
  }
}

uint64_t CloudAlbum.Attributes.artwork.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_2172E3D54();
}

void static CloudAlbum.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v205 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v203 = &v196 - v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v196 - v20;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_1();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v204 = (&v196 - v27);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_174_2();
  v29 = OUTLINED_FUNCTION_203_1();
  memcpy(v29, v5, 0x1B8uLL);
  v30 = OUTLINED_FUNCTION_202_2();
  memcpy(v30, v3, 0x1B8uLL);
  memcpy(v218, v5, 0x1B8uLL);
  memcpy(&v218[27] + 8, v3, 0x1B8uLL);
  memcpy(v222, v5, 0x1B8uLL);
  OUTLINED_FUNCTION_127_3(v222);
  if (v34)
  {
    OUTLINED_FUNCTION_226_1(v217);
    OUTLINED_FUNCTION_127_3(v217);
    if (v34)
    {
      v199 = v25;
      v200 = v16;
      v202 = v6;
      memcpy(v221, v218, 0x1B8uLL);
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_202_2();
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v31, v32, v33);
      goto LABEL_12;
    }

LABEL_8:
    memcpy(v217, v218, sizeof(v217));
    v35 = OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_225_0(v35, v221);
    v36 = OUTLINED_FUNCTION_202_2();
    OUTLINED_FUNCTION_225_0(v36, v221);
    v37 = &unk_27CB25008;
    v38 = &unk_21778F850;
    v39 = v217;
LABEL_9:
    sub_2171F0738(v39, v37, v38);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_226_1(v216);
  OUTLINED_FUNCTION_127_3(v216);
  if (v34)
  {
    goto LABEL_8;
  }

  v199 = v25;
  v200 = v16;
  v202 = v6;
  OUTLINED_FUNCTION_226_1(v207);
  OUTLINED_FUNCTION_226_1(v217);
  memcpy(v221, v218, 0x1B8uLL);
  OUTLINED_FUNCTION_203_1();
  sub_2172E3D54();
  OUTLINED_FUNCTION_202_2();
  sub_2172E3D54();
  sub_2172A92BC();
  v41 = v40;
  sub_2171F0738(v207, &qword_27CB25000, &unk_21776EA00);
  memcpy(v208, v218, sizeof(v208));
  sub_2171F0738(v208, &qword_27CB25000, &unk_21776EA00);
  if ((v41 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v42 = v5[56];
  v43 = v3[56];
  if (v42)
  {
    if (!v43)
    {
      goto LABEL_10;
    }

    v44 = v5[55] == v3[55] && v42 == v43;
    if (!v44 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v43)
  {
    goto LABEL_10;
  }

  v45 = type metadata accessor for CloudAlbum.Attributes(0);
  v201 = v3;
  v46 = v5;
  v47 = *(v206 + 48);
  v48 = &unk_27CB277C0;
  v198 = v46;
  OUTLINED_FUNCTION_148_0();
  v49 = v201;
  OUTLINED_FUNCTION_148_0();
  v50 = OUTLINED_FUNCTION_188_1();
  v51 = v202;
  OUTLINED_FUNCTION_133(v50, v52, v202);
  if (v34)
  {
    OUTLINED_FUNCTION_135_1(v0 + v47);
    if (v34)
    {
      v197 = v8;
      v53 = v51;
      sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_5_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_135_1(v0 + v47);
  if (v54)
  {
    v55 = OUTLINED_FUNCTION_25_0();
    v56(v55);
LABEL_29:
    v37 = &qword_27CB24840;
    v38 = &unk_217758DD0;
    v39 = v0;
    goto LABEL_9;
  }

  v57 = v205;
  (*(v8 + 32))(v205, v0 + v47, v51);
  OUTLINED_FUNCTION_6_15();
  sub_2172DEFE8(v58);
  OUTLINED_FUNCTION_201_2();
  LOBYTE(v48) = sub_217751F08();
  v197 = v8;
  v59 = *(v8 + 8);
  v59(v57, v51);
  v53 = v51;
  v59(v21, v51);
  v49 = v201;
  sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_31:
  v60 = v45[7];
  v61 = v198;
  v62 = *(v49 + v60);
  if (*(v198 + v60))
  {
    if (!v62)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_21727208C();
    OUTLINED_FUNCTION_196_2();
    if ((v48 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v62)
  {
    goto LABEL_10;
  }

  v63 = v45[8];
  v64 = *(v49 + v63);
  if (*(v61 + v63))
  {
    if (!v64)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_21727208C();
    OUTLINED_FUNCTION_196_2();
    if ((v48 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v64)
  {
    goto LABEL_10;
  }

  v65 = *(v206 + 48);
  v66 = v204;
  OUTLINED_FUNCTION_148_0();
  v67 = v201;
  v68 = v66;
  sub_2172E3D54();
  v69 = OUTLINED_FUNCTION_188_1();
  v70 = v53;
  OUTLINED_FUNCTION_133(v69, v71, v53);
  if (v34)
  {
    OUTLINED_FUNCTION_135_1(v66 + v65);
    if (v34)
    {
      v72 = v53;
      sub_2171F0738(v66, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_51;
    }

LABEL_49:
    v37 = &qword_27CB24840;
    v38 = &unk_217758DD0;
    v39 = v68;
    goto LABEL_9;
  }

  v73 = v203;
  sub_2172E3D54();
  OUTLINED_FUNCTION_135_1(v68 + v65);
  v75 = v197;
  if (v74)
  {
    (*(v197 + 8))(v73, v53);
    goto LABEL_49;
  }

  v76 = v205;
  (*(v197 + 32))(v205, v68 + v65, v53);
  OUTLINED_FUNCTION_6_15();
  sub_2172DEFE8(v77);
  v78 = v68;
  LOBYTE(v68) = sub_217751F08();
  v197 = v75;
  v79 = v70;
  v80 = *(v75 + 8);
  v80(v76, v79);
  v72 = v79;
  v80(v73, v79);
  v67 = v201;
  sub_2171F0738(v78, &unk_27CB277C0, &qword_217758DC0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_51:
  OUTLINED_FUNCTION_198_1();
  if (v83)
  {
    if (!v81)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v82);
    v86 = v34 && v84 == v85;
    if (!v86 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v81)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_198_1();
  if (v89)
  {
    if (!v87)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v88);
    v92 = v34 && v90 == v91;
    if (!v92 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v87)
  {
    goto LABEL_10;
  }

  v93 = v45[12];
  v94 = *(v67 + v93);
  if (*(v61 + v93))
  {
    if (!v94)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_217262A00();
    OUTLINED_FUNCTION_196_2();
    if ((v68 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v94)
  {
    goto LABEL_10;
  }

  v95 = (v61 + v45[13]);
  memcpy(v214, v95, sizeof(v214));
  v204 = v45;
  v96 = (v67 + v45[13]);
  memcpy(v215, v96, sizeof(v215));
  v97 = v95[1];
  *v208 = *v95;
  *&v208[16] = v97;
  v98 = v95[3];
  *&v208[32] = v95[2];
  *&v208[48] = v98;
  v99 = v214[8];
  if (!v214[8])
  {
    if (!v215[8])
    {
      v100 = v197;
      v117 = v95[1];
      v218[0] = *v95;
      v218[1] = v117;
      v118 = v95[3];
      v218[2] = v95[2];
      v218[3] = v118;
      *&v218[4] = 0;
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v119, v120, v121);
      goto LABEL_82;
    }

LABEL_79:
    v113 = v95[1];
    v218[0] = *v95;
    v218[1] = v113;
    v114 = v95[3];
    v218[2] = v95[2];
    v218[3] = v114;
    v115 = v96[1];
    *(&v218[4] + 8) = *v96;
    *(&v218[5] + 8) = v115;
    v116 = v96[3];
    *(&v218[6] + 8) = v96[2];
    *(&v218[7] + 8) = v116;
    *&v218[4] = v214[8];
    *(&v218[8] + 1) = v215[8];
    OUTLINED_FUNCTION_225_0(v214, v216);
    OUTLINED_FUNCTION_225_0(v215, v216);
    v37 = &unk_27CB25018;
    v38 = &unk_21775B500;
LABEL_80:
    v39 = v218;
    goto LABEL_9;
  }

  if (!v215[8])
  {
    goto LABEL_79;
  }

  v100 = v197;
  v101 = v96[1];
  v216[0] = *v96;
  v216[1] = v101;
  v102 = v96[3];
  v216[2] = v96[2];
  v216[3] = v102;
  *&v216[4] = v215[8];
  memcpy(v220, v216, sizeof(v220));
  v103 = v95[1];
  v218[55] = *v95;
  v218[56] = v103;
  v104 = v95[3];
  v218[57] = v95[2];
  v218[58] = v104;
  v219 = v214[8];
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_148_0();
  sub_2172A9570();
  v106 = v105;
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v107, v108, v109);
  v218[0] = *v208;
  v218[1] = *&v208[16];
  v218[2] = *&v208[32];
  v218[3] = *&v208[48];
  *&v218[4] = v99;
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v110, v111, v112);
  if ((v106 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_82:
  v122 = v204[14];
  v123 = *(v67 + v122);
  if (*(v198 + v122))
  {
    if (!v123)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_217262CB4();
    OUTLINED_FUNCTION_196_2();
    if ((&qword_27CB25010 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v123)
  {
    goto LABEL_10;
  }

  v124 = v204[15];
  v125 = *(v201 + v124);
  if (*(v198 + v124))
  {
    if (!v125)
    {
      goto LABEL_10;
    }

    sub_217270790();
    if ((v126 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v125)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_8();
  if (v34)
  {
    if (v127 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v127 == 2 || ((v127 ^ v128) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_8();
  if (v34)
  {
    if (v129 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v129 == 2 || ((v129 ^ v130) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_8();
  if (v34)
  {
    if (v131 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v131 == 2 || ((v131 ^ v132) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_8();
  if (v34)
  {
    if (v133 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v133 == 2 || ((v133 ^ v134) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_8();
  if (v34)
  {
    if (v135 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v135 == 2 || ((v135 ^ v136) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_8();
  if (v34)
  {
    if (v137 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v137 == 2 || ((v137 ^ v138) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_7();
  if (v141)
  {
    if (!v139)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v140);
    v144 = v34 && v142 == v143;
    if (!v144 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v139)
  {
    goto LABEL_10;
  }

  v145 = v204[23];
  v146 = *(v201 + v145);
  if (*(v198 + v145))
  {
    if (!v146)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_2172711A8();
    OUTLINED_FUNCTION_196_2();
    if ((&qword_27CB25010 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v146)
  {
    goto LABEL_10;
  }

  v147 = v198 + v204[24];
  memcpy(v208, v147, 0x78uLL);
  v148 = v201 + v204[24];
  memcpy(v216, v148, 0x78uLL);
  v149 = *v208;
  v150 = *&v208[8];
  memcpy(v213, (v147 + 16), sizeof(v213));
  v151 = v216[0];
  memcpy(v212, v148 + 16, sizeof(v212));
  if (!*&v208[8])
  {
    if (!*(&v216[0] + 1))
    {
      v218[0] = *v208;
      OUTLINED_FUNCTION_221_1();
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_148_0();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v154, v155, v156);
      goto LABEL_151;
    }

    OUTLINED_FUNCTION_173_1();
    OUTLINED_FUNCTION_173_1();
    goto LABEL_149;
  }

  v218[0] = *v208;
  OUTLINED_FUNCTION_221_1();
  memcpy(v207, v218, 0x78uLL);
  if (!*(&v151 + 1))
  {
    memcpy(v211, v218, sizeof(v211));
    OUTLINED_FUNCTION_173_1();
    OUTLINED_FUNCTION_173_1();
    OUTLINED_FUNCTION_173_1();
    sub_2172848C0(v211);
LABEL_149:
    *&v218[0] = v149;
    *(&v218[0] + 1) = v150;
    memcpy(&v218[1], v213, 0x68uLL);
    *(&v218[7] + 8) = v151;
    memcpy(&v218[8] + 8, v212, 0x68uLL);
    v37 = &qword_27CB24AE8;
    v38 = &unk_2177590C0;
    goto LABEL_80;
  }

  memcpy(&v211[16], v148 + 16, 0x68uLL);
  *v211 = v151;
  OUTLINED_FUNCTION_190_3();
  OUTLINED_FUNCTION_190_3();
  OUTLINED_FUNCTION_190_3();
  static PlayParameters.== infix(_:_:)(v207, v211);
  v153 = v152;
  memcpy(v209, v211, sizeof(v209));
  sub_2172848C0(v209);
  memcpy(v210, v207, sizeof(v210));
  sub_2172848C0(v210);
  *v211 = v149;
  *&v211[8] = v150;
  memcpy(&v211[16], v213, 0x68uLL);
  sub_2171F0738(v211, &qword_27CB244D0, &unk_21775D620);
  if ((v153 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_151:
  OUTLINED_FUNCTION_31_7();
  if (v159)
  {
    if (!v157)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v158);
    v162 = v34 && v160 == v161;
    if (!v162 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v157)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_7();
  if (v165)
  {
    if (!v163)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v164);
    v168 = v34 && v166 == v167;
    if (!v168 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v163)
  {
    goto LABEL_10;
  }

  v169 = v204[27];
  v170 = (v198 + v169);
  v171 = *(v198 + v169 + 8);
  v172 = (v201 + v169);
  v173 = *(v201 + v169 + 8);
  if (v171)
  {
    if (!v173)
    {
      goto LABEL_10;
    }

LABEL_175:
    OUTLINED_FUNCTION_31_7();
    if (v176)
    {
      if (!v174)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_59_0(v175);
      v179 = v34 && v177 == v178;
      if (!v179 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v174)
    {
      goto LABEL_10;
    }

    v180 = *(v206 + 48);
    v181 = v199;
    OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_148_0();
    v68 = v181;
    v182 = OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_133(v182, v183, v72);
    if (v34)
    {
      OUTLINED_FUNCTION_133(v181 + v180, 1, v72);
      if (v34)
      {
        sub_2171F0738(v181, &unk_27CB277C0, &qword_217758DC0);
LABEL_193:
        OUTLINED_FUNCTION_31_7();
        if (v192 && v190)
        {
          OUTLINED_FUNCTION_59_0(v191);
          if (v34)
          {
            v195 = v193 == v194;
          }

          else
          {
            v195 = 0;
          }

          if (!v195)
          {
            sub_217753058();
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      sub_2172E3D54();
      OUTLINED_FUNCTION_133(v181 + v180, 1, v72);
      if (!v184)
      {
        v185 = v205;
        (*(v100 + 32))(v205, v181 + v180, v72);
        OUTLINED_FUNCTION_6_15();
        sub_2172DEFE8(v186);
        v187 = v200;
        OUTLINED_FUNCTION_25_0();
        v188 = sub_217751F08();
        v189 = *(v100 + 8);
        v189(v185, v72);
        v189(v187, v72);
        sub_2171F0738(v181, &unk_27CB277C0, &qword_217758DC0);
        if ((v188 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_193;
      }

      (*(v100 + 8))(v200, v72);
    }

    goto LABEL_49;
  }

  if (*v170 != *v172)
  {
    LOBYTE(v173) = 1;
  }

  if ((v173 & 1) == 0)
  {
    goto LABEL_175;
  }

LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172CFF68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7261566F69647561 && a2 == 0xED000073746E6169;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163697373616C63 && a2 == 0xEC0000006C72556CLL;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C69706D6F437369 && a2 == 0xED00006E6F697461;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000002177AB8B0 == a2;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x80000002177AA7E0 == a2;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C65726572507369 && a2 == 0xEC00000065736165;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x656C676E69537369 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                      if (v23 || (sub_217753058() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                        if (v24 || (sub_217753058() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                          if (v25 || (sub_217753058() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x614C64726F636572 && a2 == 0xEB000000006C6562;
                                            if (v26 || (sub_217753058() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                              if (v27 || (sub_217753058() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                                                if (v28 || (sub_217753058() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 6516853 && a2 == 0xE300000000000000;
                                                  if (v29 || (sub_217753058() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 7107189 && a2 == 0xE300000000000000;
                                                    if (v30 || (sub_217753058() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v32 = sub_217753058();

                                                      if (v32)
                                                      {
                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        return 27;
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

uint64_t sub_2172D0798(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      return 0x614E747369747261;
    case 2:
      return 0x7255747369747261;
    case 3:
      v3 = 0x546F69647561;
      goto LABEL_16;
    case 4:
      return 0x7261566F69647561;
    case 5:
      return 0x6163697373616C63;
    case 6:
      return 0x52746E65746E6F63;
    case 7:
      return 0x6867697279706F63;
    case 8:
      return 0xD000000000000010;
    case 9:
    case 10:
      return 0x6169726F74696465;
    case 11:
      return 0x6D614E65726E6567;
    case 12:
      return 0x6C69706D6F437369;
    case 13:
      v4 = 0x706D6F437369;
      goto LABEL_20;
    case 14:
      return 0xD000000000000014;
    case 15:
      return 0xD000000000000013;
    case 16:
      return 0x6C65726572507369;
    case 17:
      v4 = 0x676E69537369;
LABEL_20:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      break;
    case 18:
      result = 1701667182;
      break;
    case 19:
      result = 0x73726566666FLL;
      break;
    case 20:
      v3 = 0x615079616C70;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 21:
      result = 0x614C64726F636572;
      break;
    case 22:
      result = 0x44657361656C6572;
      break;
    case 23:
      result = 0x756F436B63617274;
      break;
    case 24:
      result = 6516853;
      break;
    case 25:
      result = 7107189;
      break;
    case 26:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172D0ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172CFF68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172D0B04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172D0790();
  *a1 = result;
  return result;
}

uint64_t sub_2172D0B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172DEE60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172D0B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172DEE60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAlbum.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25020, &qword_21775B508);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_2172DEE60(v6, v7, v8);
  sub_2177532F8();
  memcpy(v30, v2, sizeof(v30));
  memcpy(v29, v2, sizeof(v29));
  v28[447] = 0;
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DEEB4();
  OUTLINED_FUNCTION_66_4();
  sub_217752F38();
  memcpy(v28, v29, 0x1B8uLL);
  sub_2171F0738(v28, &qword_27CB25000, &unk_21776EA00);
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_201_2();
    v10(v9);
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    v11 = type metadata accessor for CloudAlbum.Attributes(0);
    v22[0] = 2;
    sub_2177516D8();
    OUTLINED_FUNCTION_6_15();
    sub_2172DEFE8(v12);
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_208_1(v11[7]);
    v21[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF02C();
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_208_1(v11[8]);
    v21[0] = 4;
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v22[0] = 5;
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v11[10]);
    v22[0] = 6;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v11[11]);
    v22[0] = 7;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    v27 = *&v2[v11[12]];
    v26[79] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_2172DF764(&unk_280BE23A0);
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v15 = v11[13];
    memcpy(v26, &v2[v15], 0x48uLL);
    memcpy(v25, &v2[v15], sizeof(v25));
    v24[79] = 9;
    sub_2172E3D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF104();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    memcpy(v24, v25, 0x48uLL);
    sub_2171F0738(v24, &qword_27CB25010, &qword_21775B4F8);
    OUTLINED_FUNCTION_208_1(v11[14]);
    v21[0] = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_2172DF238(&qword_280BE23B0);
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_208_1(v11[15]);
    v21[0] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_57_5(12);
    OUTLINED_FUNCTION_57_5(13);
    OUTLINED_FUNCTION_57_5(14);
    OUTLINED_FUNCTION_57_5(15);
    OUTLINED_FUNCTION_57_5(16);
    OUTLINED_FUNCTION_57_5(17);
    OUTLINED_FUNCTION_143_1(v11[22]);
    v22[0] = 18;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    v23 = *&v2[v11[23]];
    v22[127] = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DF398();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v16 = v11[24];
    memcpy(v22, &v2[v16], 0x78uLL);
    memcpy(v21, &v2[v16], sizeof(v21));
    v20[127] = 20;
    v17 = sub_2172E3D54();
    sub_2172DF550(v17, v18, v19);
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    memcpy(v20, v21, 0x78uLL);
    sub_2171F0738(v20, &qword_27CB244D0, &unk_21775D620);
    OUTLINED_FUNCTION_143_1(v11[25]);
    OUTLINED_FUNCTION_37_5(21);
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v11[26]);
    OUTLINED_FUNCTION_37_5(22);
    sub_217752EF8();
    OUTLINED_FUNCTION_37_5(23);
    sub_217752F28();
    OUTLINED_FUNCTION_143_1(v11[28]);
    OUTLINED_FUNCTION_37_5(24);
    sub_217752EF8();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v11[30]);
    OUTLINED_FUNCTION_37_5(26);
    sub_217752EF8();
    v13 = OUTLINED_FUNCTION_201_2();
    v14(v13);
  }

  OUTLINED_FUNCTION_170();
}

void CloudAlbum.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v49 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v48 = v9 - v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  memcpy(v55, v0, sizeof(v55));
  v17 = v0[54];
  memcpy(v56, v0, sizeof(v56));
  v57 = v17;
  OUTLINED_FUNCTION_127_3(v56);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v54, v55, sizeof(v54));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v3);
    sub_217751DE8();
    sub_217265A08(v3, v17);
  }

  if (v0[56])
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v19 = type metadata accessor for CloudAlbum.Attributes(0);
  sub_2172E3D54();
  OUTLINED_FUNCTION_135_1(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_110_3();
    v21(v20, v16, v4);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_6_15();
    v23 = sub_2172DEFE8(v22);
    OUTLINED_FUNCTION_147(v23);
    v24 = OUTLINED_FUNCTION_25_0();
    v25(v24);
  }

  if (*(v0 + v19[7]))
  {
    OUTLINED_FUNCTION_119();
    sub_217281490();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v19[8]))
  {
    OUTLINED_FUNCTION_119();
    sub_217281490();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_2172E3D54();
  OUTLINED_FUNCTION_135_1(v13);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_110_3();
    v27(v26, v13, v4);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_6_15();
    v29 = sub_2172DEFE8(v28);
    OUTLINED_FUNCTION_147(v29);
    v30 = OUTLINED_FUNCTION_25_0();
    v31(v30);
  }

  OUTLINED_FUNCTION_153_1();
  if (v13)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_111_3();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_153_1();
  if (v13)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_111_3();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v19[12]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v32 = v0 + v19[13];
  if (*(v32 + 8))
  {
    v33 = *(v32 + 1);
    v54[0] = *v32;
    v54[1] = v33;
    v34 = *(v32 + 3);
    v54[2] = *(v32 + 2);
    v54[3] = v34;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)(v3);
    sub_217751DE8();
    v35 = OUTLINED_FUNCTION_185_0();
    sub_217265A08(v35, v36);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v19[14]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v37 = *(v0 + v19[15]);
  if (v37)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_152_2();
  if (!v18)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v18)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v18)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v18)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v18)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v18)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_153_1();
  if (v37)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_111_3();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v19[23]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217280F7C();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v38 = (v0 + v19[24]);
  v39 = *v38;
  v40 = v38[1];
  memcpy(v53, v38 + 2, sizeof(v53));
  if (v40)
  {
    memcpy(&v50[2], v38 + 2, 0x68uLL);
    v50[0] = v39;
    v50[1] = v40;
    OUTLINED_FUNCTION_119();
    v51[0] = v39;
    v51[1] = v40;
    memcpy(v52, v53, sizeof(v52));
    sub_2172DF5A4(v51, v54);
    PlayParameters.hash(into:)(v3);
    memcpy(v54, v50, 0x78uLL);
    sub_2172848C0(v54);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_153_1();
  if (v40)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_111_3();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_153_1();
  if (v40)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_111_3();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v1 + v19[27] + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    MEMORY[0x21CEA3550](v39);
  }

  OUTLINED_FUNCTION_153_1();
  if (v40)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_111_3();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v41 = v48;
  sub_2172E3D54();
  OUTLINED_FUNCTION_135_1(v41);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_103_3();
    v42();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_6_15();
    v44 = sub_2172DEFE8(v43);
    OUTLINED_FUNCTION_147(v44);
    v45 = OUTLINED_FUNCTION_25_0();
    v46(v45);
  }

  if (*(v1 + v19[30] + 8))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t CloudAlbum.Attributes.hashValue.getter()
{
  sub_2177531E8();
  CloudAlbum.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudAlbum.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v124 = v24;
  v27 = v26;
  v120 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v114 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_174_2();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25060, &qword_21775B520);
  OUTLINED_FUNCTION_0_0();
  v39 = v38;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_87_2();
  v126 = type metadata accessor for CloudAlbum.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v125 = (v43 - v42);
  v44 = v27[3];
  v123 = v27;
  v45 = OUTLINED_FUNCTION_160(v27, v44);
  sub_2172DEE60(v45, v46, v47);
  v122 = v25;
  v48 = v124;
  sub_2177532C8();
  if (v48)
  {
    v124 = v48;
    v49 = 0;
    v50 = 0;
    LODWORD(v51) = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    HIDWORD(v114) = 0;
    OUTLINED_FUNCTION_13_13();
  }

  else
  {
    v124 = v36;
    v118 = v33;
    v119 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    OUTLINED_FUNCTION_213_2();
    sub_2172DF600();
    v49 = v121;
    sub_217752E58();
    v57 = v125;
    memcpy(v125, v129, 0x1B8uLL);
    OUTLINED_FUNCTION_100_4(1);
    *(v57 + 55) = sub_217752E18();
    *(v57 + 56) = v58;
    v59 = sub_2177516D8();
    LOBYTE(v127[0]) = 2;
    OUTLINED_FUNCTION_6_15();
    v61 = sub_2172DEFE8(v60);
    sub_217752E58();
    v117 = v61;
    v51 = v126;
    sub_2172E21DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25028, &qword_21775B510);
    v128[0] = 3;
    sub_2172DF68C();
    OUTLINED_FUNCTION_149_2();
    sub_217752E58();
    *&v57[v51[7]] = v127[0];
    v128[0] = 4;
    OUTLINED_FUNCTION_149_2();
    sub_217752E58();
    *&v57[v51[8]] = v127[0];
    LOBYTE(v127[0]) = 5;
    v53 = v124;
    sub_217752E58();
    v54 = v119;
    sub_2172E21DC();
    OUTLINED_FUNCTION_100_4(6);
    v62 = sub_217752E18();
    v50 = v59;
    v63 = &v57[v51[10]];
    *v63 = v62;
    v63[1] = v64;
    OUTLINED_FUNCTION_100_4(7);
    v52 = v122;
    v65 = sub_217752E18();
    v66 = &v57[v51[11]];
    *v66 = v65;
    v66[1] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v128[0] = 8;
    sub_2172DF764(&unk_280BE2398);
    sub_217752E58();
    v124 = 0;
    *&v125[v126[12]] = v127[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF7DC();
    v68 = v124;
    sub_217752E58();
    v124 = v68;
    if (v68)
    {
      v69 = OUTLINED_FUNCTION_38_4();
      v70(v69);
      a10 = 0;
      OUTLINED_FUNCTION_17_9();
      OUTLINED_FUNCTION_4_27();
      v116 = v71;
      LODWORD(v117) = 0;
    }

    else
    {
      memcpy(&v125[v126[13]], v128, 0x48uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
      v72 = sub_2172DF238(&qword_280BE23A8);
      OUTLINED_FUNCTION_78_2(v72);
      v124 = 0;
      *&v125[v126[14]] = v127[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
      v73 = sub_2172DF950(&unk_280BE2318);
      OUTLINED_FUNCTION_78_2(v73);
      v124 = 0;
      *&v125[v126[15]] = v127[0];
      OUTLINED_FUNCTION_100_4(12);
      v74 = sub_217752E28();
      v124 = 0;
      v125[v126[16]] = v74;
      OUTLINED_FUNCTION_45_8(13);
      v75 = sub_217752E28();
      v124 = 0;
      v125[v126[17]] = v75;
      OUTLINED_FUNCTION_45_8(14);
      v76 = sub_217752E28();
      v124 = 0;
      v125[v126[18]] = v76;
      OUTLINED_FUNCTION_45_8(15);
      v77 = sub_217752E28();
      v124 = 0;
      v125[v126[19]] = v77;
      OUTLINED_FUNCTION_45_8(16);
      v78 = sub_217752E28();
      v124 = 0;
      v125[v126[20]] = v78;
      OUTLINED_FUNCTION_45_8(17);
      v79 = sub_217752E28();
      v124 = 0;
      v125[v126[21]] = v79;
      OUTLINED_FUNCTION_45_8(18);
      v80 = sub_217752E18();
      v124 = 0;
      OUTLINED_FUNCTION_219_1(v80, v81, v126[22]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
      v82 = sub_2172DF9B8();
      v83 = OUTLINED_FUNCTION_78_2(v82);
      v124 = 0;
      *&v125[v126[23]] = v127[0];
      sub_2172DFAC8(v83, v84, v85);
      v52 = v122;
      v86 = v124;
      sub_217752E58();
      v124 = v86;
      if (!v86)
      {
        memcpy(&v125[v126[24]], v127, 0x78uLL);
        OUTLINED_FUNCTION_58_6(21);
        v90 = sub_217752E18();
        v124 = 0;
        OUTLINED_FUNCTION_219_1(v90, v91, v126[25]);
        OUTLINED_FUNCTION_58_6(22);
        v92 = sub_217752E18();
        v124 = 0;
        OUTLINED_FUNCTION_219_1(v92, v93, v126[26]);
        OUTLINED_FUNCTION_58_6(23);
        v94 = sub_217752E48();
        v124 = 0;
        v95 = &v125[v126[27]];
        *v95 = v94;
        v95[8] = v96 & 1;
        OUTLINED_FUNCTION_58_6(24);
        v97 = sub_217752E18();
        v124 = 0;
        OUTLINED_FUNCTION_219_1(v97, v98, v126[28]);
        v52 = v122;
        v99 = v124;
        sub_217752E58();
        v124 = v99;
        if (!v99)
        {
          sub_2172E21DC();
          OUTLINED_FUNCTION_58_6(26);
          v105 = sub_217752E18();
          v124 = 0;
          v106 = v105;
          v108 = v107;
          v109 = OUTLINED_FUNCTION_38_4();
          v110(v109);
          v111 = &v125[v126[30]];
          *v111 = v106;
          *(v111 + 1) = v108;
          sub_2172E1E1C();
          __swift_destroy_boxed_opaque_existential_1(v123);
          v112 = OUTLINED_FUNCTION_173();
          sub_2172E1E74(v112, v113);
          goto LABEL_43;
        }

        v100 = OUTLINED_FUNCTION_38_4();
        v101(v100);
        __swift_destroy_boxed_opaque_existential_1(v123);
        LODWORD(v123) = 0;
        OUTLINED_FUNCTION_4_27();
        OUTLINED_FUNCTION_22_12(v102);
        OUTLINED_FUNCTION_178_1(v103);
        v115 = v104;
        v55 = v125;
        goto LABEL_6;
      }

      v87 = OUTLINED_FUNCTION_38_4();
      v88(v87);
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      v49 = 1;
      OUTLINED_FUNCTION_4_27();
      OUTLINED_FUNCTION_22_12(v89);
    }
  }

  v55 = v125;
  __swift_destroy_boxed_opaque_existential_1(v123);
  if (!v49)
  {
    LODWORD(v123) = 0;
    v115 = 0;
    if (v50)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v49 = 0;
  v115 = 0;
  LODWORD(v123) = 0;
LABEL_6:
  memcpy(v129, v55, 0x1B8uLL);
  sub_2171F0738(v129, &qword_27CB25000, &unk_21776EA00);
  if (v50)
  {
LABEL_7:
  }

LABEL_8:
  v56 = v126;
  if (v51)
  {

    if ((v52 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v52)
  {
LABEL_10:
    if (v53)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  if (v53)
  {
LABEL_11:
    sub_2171F0738(&v55[v56[9]], &unk_27CB277C0, &qword_217758DC0);
    if ((v54 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v54)
  {
LABEL_12:
    if (HIDWORD(v114))
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  OUTLINED_FUNCTION_191_2();
  if ((v114 & 0x100000000) != 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_191_2();
    if ((v116 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v116)
  {
LABEL_14:
    if (a10)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:

  if (a10)
  {
LABEL_15:
    memcpy(v129, &v55[v56[13]], 0x48uLL);
    sub_2171F0738(v129, &qword_27CB25010, &qword_21775B4F8);
    if ((v117 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v117)
  {
LABEL_16:
    if (v118)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:

  if (v118)
  {
LABEL_17:

    if ((v119 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v119)
  {
LABEL_18:
    if (v120)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  OUTLINED_FUNCTION_191_2();
  if (v120)
  {
LABEL_19:

    if ((v121 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v121)
  {
LABEL_20:
    if (v122)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  memcpy(v129, &v55[v56[24]], 0x78uLL);
  sub_2171F0738(v129, &qword_27CB244D0, &unk_21775D620);
  if (v122)
  {
LABEL_21:
    OUTLINED_FUNCTION_191_2();
    if ((v49 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v49)
  {
LABEL_22:
    if (v115)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  OUTLINED_FUNCTION_191_2();
  if (v115)
  {
LABEL_23:
    OUTLINED_FUNCTION_191_2();
    if ((v123 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (v123)
  {
LABEL_42:
    sub_2171F0738(&v55[v56[29]], &unk_27CB277C0, &qword_217758DC0);
  }

LABEL_43:
  OUTLINED_FUNCTION_170();
}